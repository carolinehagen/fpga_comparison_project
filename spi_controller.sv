// SPI Controller (Master Mode)
// 5-state FSM: IDLE -> ASSERT_CS -> LOAD_SHIFT_REG -> TRANSFER -> DONE
// Supports configurable clock polarity (CPOL) and phase (CPHA)
// Mode 0 (CPOL=0, CPHA=0) by default via parameters

module spi_controller #(
    parameter int DATA_WIDTH      = 8,    // Transfer width in bits
    parameter int CLK_DIV         = 4,    // SCLK = clk / (2 * CLK_DIV)
    parameter int CS_SETUP_CYCLES = 2,    // Cycles CS stays low before LOAD_SHIFT_REG
    parameter bit CPOL            = 1'b0, // Clock polarity
    parameter bit CPHA            = 1'b0  // Clock phase
) (
    input  logic                  clk,
    input  logic                  rst_n,

    // User interface (start == tx_valid in the FSM diagram)
    input  logic                  start,
    input  logic [DATA_WIDTH-1:0] tx_data,
    output logic [DATA_WIDTH-1:0] rx_data,
    output logic                  busy,
    output logic                  done,    // == rx_valid in the FSM diagram

    // SPI bus
    output logic                  sclk,
    output logic                  mosi,
    input  logic                  miso,
    output logic                  cs_n     // Active-low chip select
);

    // ---------------------------------------------------------------------------
    // State definitions (matches FSM diagram in §3.3 of the report)
    // ---------------------------------------------------------------------------
    typedef enum logic [2:0] {
        IDLE,
        ASSERT_CS,
        LOAD_SHIFT_REG,
        TRANSFER,
        DONE_STATE
    } state_t;

    state_t state, next_state;

    // FSM Moore outputs from the diagram
    logic clk_en;
    logic cs;            // diagram signal: 1 = asserted (drives cs_n low)
    logic rx_valid;
    logic bit_cntr_en;

    // FSM transition signals from the diagram
    logic cs_delay_up;
    logic shift_reg_loaded;
    logic bit_cntr_up;

    // ---------------------------------------------------------------------------
    // CS-setup delay counter — runs only in ASSERT_CS
    // ---------------------------------------------------------------------------
    localparam int CS_DLY_W = (CS_SETUP_CYCLES <= 1) ? 1 : $clog2(CS_SETUP_CYCLES);
    logic [CS_DLY_W-1:0] cs_delay_cnt;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cs_delay_cnt <= '0;
        end else if (state == ASSERT_CS) begin
            cs_delay_cnt <= cs_delay_cnt + 1'b1;
        end else begin
            cs_delay_cnt <= '0;
        end
    end

    assign cs_delay_up = (cs_delay_cnt == CS_SETUP_CYCLES - 1);

    // ---------------------------------------------------------------------------
    // Shift-register load — one-cycle pulse in LOAD_SHIFT_REG
    // ---------------------------------------------------------------------------
    logic [DATA_WIDTH-1:0] shift_reg_tx, shift_reg_rx;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            shift_reg_tx     <= '0;
            shift_reg_loaded <= 1'b0;
        end else if (state == LOAD_SHIFT_REG) begin
            shift_reg_tx     <= tx_data;
            shift_reg_loaded <= 1'b1;
        end else begin
            shift_reg_loaded <= 1'b0;
        end
    end

    // ---------------------------------------------------------------------------
    // SCLK divider — toggles only when clk_en is asserted in TRANSFER
    // ---------------------------------------------------------------------------
    logic [$clog2(CLK_DIV)-1:0] clk_cnt;
    logic                       sclk_r;
    logic                       sclk_en;    // about to go active edge
    logic                       sclk_fall;  // about to go idle edge

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            clk_cnt <= '0;
            sclk_r  <= CPOL;
        end else if (clk_en && state == TRANSFER) begin
            if (clk_cnt == CLK_DIV - 1) begin
                clk_cnt <= '0;
                sclk_r  <= ~sclk_r;
            end else begin
                clk_cnt <= clk_cnt + 1'b1;
            end
        end else begin
            clk_cnt <= '0;
            sclk_r  <= CPOL;
        end
    end

    assign sclk_en   = (clk_cnt == CLK_DIV - 1) && (sclk_r == CPOL);
    assign sclk_fall = (clk_cnt == CLK_DIV - 1) && (sclk_r != CPOL);
    assign sclk      = sclk_r;

    // ---------------------------------------------------------------------------
    // Bit counter and shift-register data path
    // bit_cntr_en gates counting/shifting; the diagram shows it asserted in
    // TRANSFER (treated as a labeling fix — see notes in the report).
    // ---------------------------------------------------------------------------
    logic [$clog2(DATA_WIDTH)-1:0] bit_cnt;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            bit_cnt      <= DATA_WIDTH - 1;
            shift_reg_rx <= '0;
            mosi         <= 1'b0;
        end else if (state == LOAD_SHIFT_REG) begin
            bit_cnt <= DATA_WIDTH - 1;
            // For CPHA=0, present the MSB on entry to TRANSFER
            if (!CPHA)
                mosi <= tx_data[DATA_WIDTH-1];
        end else if (bit_cntr_en) begin
            if (CPHA == 0) begin
                // Sample on rising edge, shift on falling edge
                if (sclk_en) begin
                    shift_reg_rx <= {shift_reg_rx[DATA_WIDTH-2:0], miso};
                    if (bit_cnt != 0)
                        bit_cnt <= bit_cnt - 1'b1;
                end
                if (sclk_fall && bit_cnt != 0) begin
                    mosi <= shift_reg_tx[bit_cnt - 1];
                end
            end else begin
                // CPHA=1: shift on rising edge, sample on falling edge
                if (sclk_en) begin
                    mosi <= shift_reg_tx[bit_cnt];
                end
                if (sclk_fall) begin
                    shift_reg_rx <= {shift_reg_rx[DATA_WIDTH-2:0], miso};
                    if (bit_cnt != 0)
                        bit_cnt <= bit_cnt - 1'b1;
                end
            end
        end
    end

    // bit_cntr_up: last bit has just been sampled
    assign bit_cntr_up = (state == TRANSFER) && (bit_cnt == 0) &&
                         ((CPHA == 1'b0 && sclk_en) ||
                          (CPHA == 1'b1 && sclk_fall));

    // ---------------------------------------------------------------------------
    // FSM state register
    // ---------------------------------------------------------------------------
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= IDLE;
        else        state <= next_state;
    end

    // ---------------------------------------------------------------------------
    // FSM next-state logic (transitions exactly as drawn in the diagram)
    // ---------------------------------------------------------------------------
    always_comb begin
        next_state = state;
        case (state)
            IDLE:           if (start)            next_state = ASSERT_CS;
            ASSERT_CS:      if (cs_delay_up)      next_state = LOAD_SHIFT_REG;
            LOAD_SHIFT_REG: if (shift_reg_loaded) next_state = TRANSFER;
            TRANSFER:       if (bit_cntr_up)      next_state = DONE_STATE;
            DONE_STATE:                           next_state = IDLE;
            default:                              next_state = IDLE;
        endcase
    end

    // ---------------------------------------------------------------------------
    // Moore outputs (per FSM diagram)
    //   IDLE           : clk_en=0, cs=0, rx_valid=0, bit_cntr_en=0
    //   ASSERT_CS      : clk_en=1, cs=1, rx_valid=0, bit_cntr_en=0
    //   LOAD_SHIFT_REG : clk_en=0, cs=1, rx_valid=0, bit_cntr_en=0
    //   TRANSFER       : clk_en=1, cs=1, rx_valid=0, bit_cntr_en=1
    //   DONE           : clk_en=0, cs=0, rx_valid=1, bit_cntr_en=0
    // ---------------------------------------------------------------------------
    always_comb begin
        clk_en      = 1'b0;
        cs          = 1'b0;
        rx_valid    = 1'b0;
        bit_cntr_en = 1'b0;
        case (state)
            IDLE:           begin clk_en = 1'b0; cs = 1'b0; rx_valid = 1'b0; bit_cntr_en = 1'b0; end
            ASSERT_CS:      begin clk_en = 1'b1; cs = 1'b1; rx_valid = 1'b0; bit_cntr_en = 1'b0; end
            LOAD_SHIFT_REG: begin clk_en = 1'b0; cs = 1'b1; rx_valid = 1'b0; bit_cntr_en = 1'b0; end
            TRANSFER:       begin clk_en = 1'b1; cs = 1'b1; rx_valid = 1'b0; bit_cntr_en = 1'b1; end
            DONE_STATE:     begin clk_en = 1'b0; cs = 1'b0; rx_valid = 1'b1; bit_cntr_en = 1'b0; end
            default:        begin clk_en = 1'b0; cs = 1'b0; rx_valid = 1'b0; bit_cntr_en = 1'b0; end
        endcase
    end

    // External chip-select pin is active-low
    assign cs_n = ~cs;

    // ---------------------------------------------------------------------------
    // Latch received data on entry to DONE
    // ---------------------------------------------------------------------------
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            rx_data <= '0;
        else if (state == TRANSFER && next_state == DONE_STATE)
            rx_data <= {shift_reg_rx[DATA_WIDTH-2:0], miso};
    end

    assign done = rx_valid;
    assign busy = (state != IDLE);

endmodule

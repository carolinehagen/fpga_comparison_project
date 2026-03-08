// SPI Controller (Master Mode)
// Supports configurable clock polarity (CPOL) and phase (CPHA)
// Mode 0 (CPOL=0, CPHA=0) by default via parameters

module spi_controller #(
    parameter int DATA_WIDTH  = 8,       // Transfer width in bits
    parameter int CLK_DIV     = 4,       // SCLK = clk / (2 * CLK_DIV)
    parameter bit CPOL        = 1'b0,    // Clock polarity
    parameter bit CPHA        = 1'b0     // Clock phase
) (
    input  logic                  clk,
    input  logic                  rst_n,

    // User interface
    input  logic                  start,       // Pulse to begin transfer
    input  logic [DATA_WIDTH-1:0] tx_data,     // Data to transmit
    output logic [DATA_WIDTH-1:0] rx_data,     // Data received
    output logic                  busy,         // Transfer in progress
    output logic                  done,         // Pulses high for one cycle when done

    // SPI bus
    output logic                  sclk,
    output logic                  mosi,
    input  logic                  miso,
    output logic                  cs_n          // Active-low chip select
);

    // ---------------------------------------------------------------------------
    // Internal signals
    // ---------------------------------------------------------------------------
    typedef enum logic [1:0] {
        IDLE,
        TRANSFER,
        DONE_STATE
    } state_t;

    state_t                  state;
    logic [$clog2(CLK_DIV)-1:0] clk_cnt;
    logic                    sclk_en;    // Gated clock enable (rising edge of sclk)
    logic                    sclk_fall;  // Falling edge of sclk
    logic                    sclk_r;     // Registered sclk

    logic [$clog2(DATA_WIDTH)-1:0] bit_cnt;
    logic [DATA_WIDTH-1:0]   shift_reg_tx;
    logic [DATA_WIDTH-1:0]   shift_reg_rx;

    // ---------------------------------------------------------------------------
    // Clock divider — generates sclk_en (rising) and sclk_fall (falling)
    // ---------------------------------------------------------------------------
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            clk_cnt <= '0;
            sclk_r  <= CPOL;
        end else if (state == TRANSFER) begin
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

    assign sclk_en   = (clk_cnt == CLK_DIV - 1) && (sclk_r == CPOL);   // about to go active
    assign sclk_fall = (clk_cnt == CLK_DIV - 1) && (sclk_r != CPOL);   // about to go idle
    assign sclk      = sclk_r;

    // ---------------------------------------------------------------------------
    // FSM + shift register
    // ---------------------------------------------------------------------------
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state        <= IDLE;
            bit_cnt      <= '0;
            shift_reg_tx <= '0;
            shift_reg_rx <= '0;
            cs_n         <= 1'b1;
            mosi         <= 1'b0;
            done         <= 1'b0;
        end else begin
            done <= 1'b0; // default: de-assert

            case (state)
                IDLE: begin
                    cs_n    <= 1'b1;
                    bit_cnt <= DATA_WIDTH - 1;
                    if (start) begin
                        shift_reg_tx <= tx_data;
                        cs_n         <= 1'b0;
                        state        <= TRANSFER;
                        // For CPHA=0 present first bit immediately
                        if (!CPHA)
                            mosi <= tx_data[DATA_WIDTH-1];
                    end
                end

                TRANSFER: begin
                    // Sample on leading edge (CPHA=0) or trailing edge (CPHA=1)
                    if (CPHA == 0) begin
                        // Shift out on falling edge, sample on rising edge
                        if (sclk_en) begin
                            // Rising edge: sample MISO
                            shift_reg_rx <= {shift_reg_rx[DATA_WIDTH-2:0], miso};
                            if (bit_cnt == 0) begin
                                state <= DONE_STATE;
                            end else begin
                                bit_cnt <= bit_cnt - 1'b1;
                            end
                        end
                        if (sclk_fall) begin
                            // Falling edge: shift out next bit
                            mosi <= shift_reg_tx[bit_cnt - 1];
                        end
                    end else begin
                        // CPHA=1: shift out on rising edge, sample on falling edge
                        if (sclk_en) begin
                            // Rising edge: shift out
                            mosi <= shift_reg_tx[bit_cnt];
                        end
                        if (sclk_fall) begin
                            // Falling edge: sample MISO
                            shift_reg_rx <= {shift_reg_rx[DATA_WIDTH-2:0], miso};
                            if (bit_cnt == 0) begin
                                state <= DONE_STATE;
                            end else begin
                                bit_cnt <= bit_cnt - 1'b1;
                            end
                        end
                    end
                end

                DONE_STATE: begin
                    cs_n     <= 1'b1;
                    mosi     <= 1'b0;
                    rx_data  <= shift_reg_rx;
                    done     <= 1'b1;
                    state    <= IDLE;
                end

                default: state <= IDLE;
            endcase
        end
    end

    assign busy = (state != IDLE);

endmodule

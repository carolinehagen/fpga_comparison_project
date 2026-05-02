// SPI Controller — Triple Modular Redundancy (TMR) Wrapper
// Instantiates three identical spi_controller cores and majority-votes
// every output: sclk, mosi, cs_n, busy, done, and rx_data.
// A single upset in any one core is masked; the two healthy cores always win.

module spi_controller_tmr #(
    parameter int DATA_WIDTH = 8,
    parameter int CLK_DIV    = 4,
    parameter bit CPOL       = 1'b0,
    parameter bit CPHA       = 1'b0
) (
    input  logic                  clk,
    input  logic                  rst_n,

    // User interface (same as spi_controller)
    input  logic                  start,
    input  logic [DATA_WIDTH-1:0] tx_data,
    output logic [DATA_WIDTH-1:0] rx_data,
    output logic                  busy,
    output logic                  done,

    // SPI bus
    output logic                  sclk,
    output logic                  mosi,
    input  logic                  miso,
    output logic                  cs_n,

    // Fault indicators — high when a core disagrees with the majority
    output logic [2:0]            fault
);

    // ---------------------------------------------------------------------------
    // Per-core output buses
    // Attributes prevent synthesis from merging the three cores via structural
    // equivalence: Vivado=DONT_TOUCH, Synplify=syn_keep, Efinity/Quartus=keep.
    // ---------------------------------------------------------------------------
    (* DONT_TOUCH = "true", syn_keep = 1, keep = 1 *)
    logic [2:0]                  sclk_v, mosi_v, cs_n_v, busy_v, done_v;
    (* DONT_TOUCH = "true", syn_keep = 1, keep = 1 *)
    logic [DATA_WIDTH-1:0]       rx_data_v [3];

    // ---------------------------------------------------------------------------
    // Three core instances
    // ---------------------------------------------------------------------------
    genvar i;
    generate
        for (i = 0; i < 3; i++) begin : gen_cores
            (* DONT_TOUCH = "true", syn_keep = 1, syn_preserve = 1, syn_noprune = 1, keep = 1 *)
            spi_controller #(
                .DATA_WIDTH (DATA_WIDTH),
                .CLK_DIV    (CLK_DIV),
                .CPOL       (CPOL),
                .CPHA       (CPHA)
            ) u_spi (
                .clk     (clk),
                .rst_n   (rst_n),
                .start   (start),
                .tx_data (tx_data),
                .rx_data (rx_data_v[i]),
                .busy    (busy_v[i]),
                .done    (done_v[i]),
                .sclk    (sclk_v[i]),
                .mosi    (mosi_v[i]),
                .miso    (miso),
                .cs_n    (cs_n_v[i])
            );
        end
    endgenerate

    // ---------------------------------------------------------------------------
    // Majority vote — 1-bit signals
    // ---------------------------------------------------------------------------
    // maj(a,b,c) = (a&b) | (b&c) | (a&c)
    `define MAJ3(a,b,c) (((a)&(b)) | ((b)&(c)) | ((a)&(c)))

    assign sclk  = `MAJ3(sclk_v[0],  sclk_v[1],  sclk_v[2]);
    assign mosi  = `MAJ3(mosi_v[0],  mosi_v[1],  mosi_v[2]);
    assign cs_n  = `MAJ3(cs_n_v[0],  cs_n_v[1],  cs_n_v[2]);
    assign busy  = `MAJ3(busy_v[0],  busy_v[1],  busy_v[2]);
    assign done  = `MAJ3(done_v[0],  done_v[1],  done_v[2]);

    // ---------------------------------------------------------------------------
    // Majority vote — DATA_WIDTH-bit rx_data
    // ---------------------------------------------------------------------------
    // Bit-wise majority across the three copies
    genvar b;
    generate
        for (b = 0; b < DATA_WIDTH; b++) begin : gen_rx_vote
            assign rx_data[b] = `MAJ3(rx_data_v[0][b],
                                      rx_data_v[1][b],
                                      rx_data_v[2][b]);
        end
    endgenerate

    // ---------------------------------------------------------------------------
    // Fault detection — flag any core whose outputs disagree with the majority
    // ---------------------------------------------------------------------------
    always_comb begin
        for (int k = 0; k < 3; k++) begin
            fault[k] = (sclk_v[k]    != sclk)
                     | (mosi_v[k]    != mosi)
                     | (cs_n_v[k]    != cs_n)
                     | (busy_v[k]    != busy)
                     | (done_v[k]    != done)
                     | (rx_data_v[k] != rx_data);
        end
    end

    `undef MAJ3

endmodule

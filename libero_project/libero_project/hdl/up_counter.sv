module up_counter #(
    parameter int WIDTH = 8
) (
    input  logic             clk,
    input  logic             rst,    // synchronous active-high reset
    input  logic             en,     // count enable
    output logic [WIDTH-1:0] count,
    output logic             count_up  // asserted when count is at MAX
);

    localparam logic [WIDTH-1:0] MAX_COUNT = '1;

    always_ff @(posedge clk) begin
        if (rst)
            count <= '0;
        else if (en)
            count <= count + 1'b1;
    end

    assign count_up = (count == MAX_COUNT);

endmodule

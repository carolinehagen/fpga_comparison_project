
//
// Verific Verilog Description of module spi_controller
//

module spi_controller (clk, rst_n, start, tx_data, rx_data, busy, 
            done, sclk, mosi, miso, cs_n) /* verific EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(11)
    input rst_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(12)
    input start /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(15)
    input [7:0]tx_data /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(16)
    output [7:0]rx_data /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(17)
    output busy /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(18)
    output done /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(19)
    output sclk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(22)
    output mosi /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(23)
    input miso /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(24)
    output cs_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(25)
    
    wire n21;
    wire [1:0]n18_2;
    wire n88;
    wire n98;
    wire n87;
    wire [1:0]clk_cnt;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(38)
    wire [1:0]state;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(37)
    wire [2:0]bit_cnt;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(43)
    wire [7:0]shift_reg_tx;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(44)
    wire [7:0]shift_reg_rx;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(45)
    
    wire \~n211 , \~busy , ceg_net22, n296, ceg_net10, ceg_net11, 
        ceg_net12, n282, ceg_net14, ceg_net25, n292, n284, n280, 
        n278, n276, n274, n272, n320, n322, \~equal_6/n3 ;
    wire [1:0]n18;
    
    wire n101, n102, n103, n104, n105, n106, n107, n108, n109, 
        n110, n111;
    
    EFX_LUT4 LUT__153 (.I0(state[0]), .I1(state[1]), .O(\~busy )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__153.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__154 (.I0(state[1]), .I1(state[0]), .O(\~equal_6/n3 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__154.LUTMASK = 16'h4444;
    EFX_FF \sclk~FF  (.D(n21), .CE(\~n211 ), .CLK(clk), .SR(rst_n), 
           .Q(sclk)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \sclk~FF .CLK_POLARITY = 1'b1;
    defparam \sclk~FF .CE_POLARITY = 1'b0;
    defparam \sclk~FF .SR_POLARITY = 1'b0;
    defparam \sclk~FF .D_POLARITY = 1'b1;
    defparam \sclk~FF .SR_SYNC = 1'b0;
    defparam \sclk~FF .SR_VALUE = 1'b0;
    defparam \sclk~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_cnt[0]~FF  (.D(n18_2[0]), .CE(1'b1), .CLK(clk), .SR(rst_n), 
           .Q(clk_cnt[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \clk_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \clk_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \clk_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \clk_cnt[0]~FF .SR_SYNC = 1'b0;
    defparam \clk_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \clk_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \state[0]~FF  (.D(\~busy ), .CE(ceg_net22), .CLK(clk), .SR(rst_n), 
           .Q(state[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \state[0]~FF .CE_POLARITY = 1'b0;
    defparam \state[0]~FF .SR_POLARITY = 1'b0;
    defparam \state[0]~FF .D_POLARITY = 1'b1;
    defparam \state[0]~FF .SR_SYNC = 1'b0;
    defparam \state[0]~FF .SR_VALUE = 1'b0;
    defparam \state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bit_cnt[0]~FF  (.D(n296), .CE(ceg_net10), .CLK(clk), .SR(rst_n), 
           .Q(bit_cnt[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \bit_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \bit_cnt[0]~FF .CE_POLARITY = 1'b0;
    defparam \bit_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \bit_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \bit_cnt[0]~FF .SR_SYNC = 1'b0;
    defparam \bit_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \bit_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_tx[0]~FF  (.D(tx_data[0]), .CE(ceg_net11), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_tx[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_tx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_tx[0]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_tx[0]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_tx[0]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_tx[0]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_tx[0]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_tx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_rx[0]~FF  (.D(miso), .CE(ceg_net12), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_rx[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_rx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_rx[0]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_rx[0]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_rx[0]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_rx[0]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_rx[0]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_rx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[0]~FF  (.D(n282), .CE(ceg_net14), .CLK(clk), .SR(1'b0), 
           .Q(rx_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[0]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[0]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[0]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mosi~FF  (.D(n88), .CE(ceg_net25), .CLK(clk), .SR(rst_n), 
           .Q(mosi)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \mosi~FF .CLK_POLARITY = 1'b1;
    defparam \mosi~FF .CE_POLARITY = 1'b0;
    defparam \mosi~FF .SR_POLARITY = 1'b0;
    defparam \mosi~FF .D_POLARITY = 1'b1;
    defparam \mosi~FF .SR_SYNC = 1'b0;
    defparam \mosi~FF .SR_VALUE = 1'b0;
    defparam \mosi~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \done~FF  (.D(n98), .CE(1'b1), .CLK(clk), .SR(rst_n), .Q(done)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \done~FF .CLK_POLARITY = 1'b1;
    defparam \done~FF .CE_POLARITY = 1'b1;
    defparam \done~FF .SR_POLARITY = 1'b0;
    defparam \done~FF .D_POLARITY = 1'b1;
    defparam \done~FF .SR_SYNC = 1'b0;
    defparam \done~FF .SR_VALUE = 1'b0;
    defparam \done~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cs_n~FF  (.D(n87), .CE(state[0]), .CLK(clk), .SR(rst_n), 
           .Q(cs_n)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \cs_n~FF .CLK_POLARITY = 1'b1;
    defparam \cs_n~FF .CE_POLARITY = 1'b0;
    defparam \cs_n~FF .SR_POLARITY = 1'b0;
    defparam \cs_n~FF .D_POLARITY = 1'b1;
    defparam \cs_n~FF .SR_SYNC = 1'b0;
    defparam \cs_n~FF .SR_VALUE = 1'b1;
    defparam \cs_n~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_tx[1]~FF  (.D(tx_data[1]), .CE(ceg_net11), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_tx[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_tx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_tx[1]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_tx[1]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_tx[1]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_tx[1]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_tx[1]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_tx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_tx[2]~FF  (.D(tx_data[2]), .CE(ceg_net11), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_tx[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_tx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_tx[2]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_tx[2]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_tx[2]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_tx[2]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_tx[2]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_tx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_tx[3]~FF  (.D(tx_data[3]), .CE(ceg_net11), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_tx[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_tx[3]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_tx[3]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_tx[3]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_tx[3]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_tx[3]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_tx[3]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_tx[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_tx[4]~FF  (.D(tx_data[4]), .CE(ceg_net11), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_tx[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_tx[4]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_tx[4]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_tx[4]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_tx[4]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_tx[4]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_tx[4]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_tx[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_tx[5]~FF  (.D(tx_data[5]), .CE(ceg_net11), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_tx[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_tx[5]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_tx[5]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_tx[5]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_tx[5]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_tx[5]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_tx[5]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_tx[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_tx[6]~FF  (.D(tx_data[6]), .CE(ceg_net11), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_tx[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_tx[6]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_tx[6]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_tx[6]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_tx[6]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_tx[6]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_tx[6]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_tx[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_tx[7]~FF  (.D(tx_data[7]), .CE(ceg_net11), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_tx[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_tx[7]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_tx[7]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_tx[7]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_tx[7]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_tx[7]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_tx[7]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_tx[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_rx[1]~FF  (.D(shift_reg_rx[0]), .CE(ceg_net12), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_rx[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_rx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_rx[1]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_rx[1]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_rx[1]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_rx[1]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_rx[1]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_rx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_rx[2]~FF  (.D(shift_reg_rx[1]), .CE(ceg_net12), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_rx[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_rx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_rx[2]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_rx[2]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_rx[2]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_rx[2]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_rx[2]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_rx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_rx[3]~FF  (.D(shift_reg_rx[2]), .CE(ceg_net12), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_rx[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_rx[3]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_rx[3]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_rx[3]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_rx[3]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_rx[3]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_rx[3]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_rx[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_rx[4]~FF  (.D(shift_reg_rx[3]), .CE(ceg_net12), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_rx[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_rx[4]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_rx[4]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_rx[4]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_rx[4]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_rx[4]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_rx[4]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_rx[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_rx[5]~FF  (.D(shift_reg_rx[4]), .CE(ceg_net12), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_rx[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_rx[5]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_rx[5]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_rx[5]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_rx[5]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_rx[5]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_rx[5]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_rx[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_rx[6]~FF  (.D(shift_reg_rx[5]), .CE(ceg_net12), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_rx[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_rx[6]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_rx[6]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_rx[6]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_rx[6]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_rx[6]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_rx[6]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_rx[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \shift_reg_rx[7]~FF  (.D(shift_reg_rx[6]), .CE(ceg_net12), .CLK(clk), 
           .SR(rst_n), .Q(shift_reg_rx[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \shift_reg_rx[7]~FF .CLK_POLARITY = 1'b1;
    defparam \shift_reg_rx[7]~FF .CE_POLARITY = 1'b0;
    defparam \shift_reg_rx[7]~FF .SR_POLARITY = 1'b0;
    defparam \shift_reg_rx[7]~FF .D_POLARITY = 1'b1;
    defparam \shift_reg_rx[7]~FF .SR_SYNC = 1'b0;
    defparam \shift_reg_rx[7]~FF .SR_VALUE = 1'b0;
    defparam \shift_reg_rx[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[1]~FF  (.D(n292), .CE(ceg_net14), .CLK(clk), .SR(1'b0), 
           .Q(rx_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[1]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[1]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[1]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[2]~FF  (.D(n284), .CE(ceg_net14), .CLK(clk), .SR(1'b0), 
           .Q(rx_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[2]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[2]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[2]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[3]~FF  (.D(n280), .CE(ceg_net14), .CLK(clk), .SR(1'b0), 
           .Q(rx_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[3]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[3]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[3]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[4]~FF  (.D(n278), .CE(ceg_net14), .CLK(clk), .SR(1'b0), 
           .Q(rx_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[4]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[4]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[4]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[5]~FF  (.D(n276), .CE(ceg_net14), .CLK(clk), .SR(1'b0), 
           .Q(rx_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[5]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[5]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[5]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[6]~FF  (.D(n274), .CE(ceg_net14), .CLK(clk), .SR(1'b0), 
           .Q(rx_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[6]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[6]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[6]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[7]~FF  (.D(n272), .CE(ceg_net14), .CLK(clk), .SR(1'b0), 
           .Q(rx_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[7]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[7]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[7]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bit_cnt[1]~FF  (.D(n320), .CE(ceg_net10), .CLK(clk), .SR(rst_n), 
           .Q(bit_cnt[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \bit_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \bit_cnt[1]~FF .CE_POLARITY = 1'b0;
    defparam \bit_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \bit_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \bit_cnt[1]~FF .SR_SYNC = 1'b0;
    defparam \bit_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \bit_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \bit_cnt[2]~FF  (.D(n322), .CE(ceg_net10), .CLK(clk), .SR(rst_n), 
           .Q(bit_cnt[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \bit_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \bit_cnt[2]~FF .CE_POLARITY = 1'b0;
    defparam \bit_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \bit_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \bit_cnt[2]~FF .SR_SYNC = 1'b0;
    defparam \bit_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \bit_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \state[1]~FF  (.D(\~equal_6/n3 ), .CE(ceg_net22), .CLK(clk), 
           .SR(rst_n), .Q(state[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \state[1]~FF .CE_POLARITY = 1'b0;
    defparam \state[1]~FF .SR_POLARITY = 1'b0;
    defparam \state[1]~FF .D_POLARITY = 1'b1;
    defparam \state[1]~FF .SR_SYNC = 1'b0;
    defparam \state[1]~FF .SR_VALUE = 1'b0;
    defparam \state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \clk_cnt[1]~FF  (.D(n18[1]), .CE(1'b1), .CLK(clk), .SR(rst_n), 
           .Q(clk_cnt[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \clk_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \clk_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \clk_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \clk_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \clk_cnt[1]~FF .SR_SYNC = 1'b0;
    defparam \clk_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \clk_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__155 (.I0(sclk), .I1(\~equal_6/n3 ), .O(n21)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam LUT__155.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__156 (.I0(clk_cnt[1]), .I1(clk_cnt[0]), .I2(\~equal_6/n3 ), 
            .O(\~n211 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__156.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__157 (.I0(clk_cnt[0]), .I1(\~equal_6/n3 ), .O(n18_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(60)
    defparam LUT__157.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__158 (.I0(sclk), .I1(clk_cnt[0]), .I2(clk_cnt[1]), .O(n101)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__158.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__159 (.I0(bit_cnt[0]), .I1(bit_cnt[1]), .I2(bit_cnt[2]), 
            .O(n102)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__159.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__160 (.I0(n102), .I1(n101), .I2(start), .I3(state[0]), 
            .O(n103)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h770f */ ;
    defparam LUT__160.LUTMASK = 16'h770f;
    EFX_LUT4 LUT__161 (.I0(state[1]), .I1(n103), .O(ceg_net22)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(15)
    defparam LUT__161.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__162 (.I0(state[0]), .I1(bit_cnt[0]), .O(n296)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__162.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__163 (.I0(n102), .I1(n101), .I2(state[0]), .I3(state[1]), 
            .O(ceg_net10)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hffb0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(37)
    defparam LUT__163.LUTMASK = 16'hffb0;
    EFX_LUT4 LUT__164 (.I0(state[1]), .I1(start), .O(n87)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__164.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__165 (.I0(n87), .I1(state[0]), .O(ceg_net11)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;
    defparam LUT__165.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__166 (.I0(\~equal_6/n3 ), .I1(n101), .O(ceg_net12)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(37)
    defparam LUT__166.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__167 (.I0(shift_reg_rx[0]), .I1(rx_data[0]), .I2(state[0]), 
            .O(n282)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__167.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__168 (.I0(rst_n), .I1(state[1]), .O(ceg_net14)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(12)
    defparam LUT__168.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__169 (.I0(bit_cnt[0]), .I1(bit_cnt[1]), .I2(bit_cnt[2]), 
            .O(n104)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__169.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__170 (.I0(shift_reg_tx[6]), .I1(shift_reg_tx[4]), .I2(bit_cnt[0]), 
            .I3(bit_cnt[1]), .O(n105)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h503f */ ;
    defparam LUT__170.LUTMASK = 16'h503f;
    EFX_LUT4 LUT__171 (.I0(shift_reg_tx[5]), .I1(shift_reg_tx[7]), .I2(bit_cnt[0]), 
            .I3(n105), .O(n106)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;
    defparam LUT__171.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__172 (.I0(shift_reg_tx[3]), .I1(shift_reg_tx[1]), .I2(bit_cnt[0]), 
            .I3(bit_cnt[1]), .O(n107)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__172.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__173 (.I0(shift_reg_tx[2]), .I1(shift_reg_tx[0]), .I2(bit_cnt[1]), 
            .I3(bit_cnt[0]), .O(n108)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__173.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__174 (.I0(n108), .I1(n104), .I2(n107), .I3(state[0]), 
            .O(n109)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__174.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__175 (.I0(state[0]), .I1(tx_data[7]), .I2(state[1]), 
            .O(n110)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__175.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__176 (.I0(n106), .I1(n104), .I2(n109), .I3(n110), .O(n88)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4f00 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__176.LUTMASK = 16'h4f00;
    EFX_LUT4 LUT__177 (.I0(sclk), .I1(clk_cnt[0]), .I2(clk_cnt[1]), .O(n111)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__177.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__178 (.I0(start), .I1(n111), .I2(state[1]), .I3(state[0]), 
            .O(ceg_net25)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(15)
    defparam LUT__178.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__179 (.I0(state[0]), .I1(state[1]), .O(n98)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__179.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__180 (.I0(shift_reg_rx[1]), .I1(rx_data[1]), .I2(state[0]), 
            .O(n292)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__180.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__181 (.I0(shift_reg_rx[2]), .I1(rx_data[2]), .I2(state[0]), 
            .O(n284)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__181.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__182 (.I0(shift_reg_rx[3]), .I1(rx_data[3]), .I2(state[0]), 
            .O(n280)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__182.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__183 (.I0(shift_reg_rx[4]), .I1(rx_data[4]), .I2(state[0]), 
            .O(n278)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__183.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__184 (.I0(shift_reg_rx[5]), .I1(rx_data[5]), .I2(state[0]), 
            .O(n276)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__184.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__185 (.I0(shift_reg_rx[6]), .I1(rx_data[6]), .I2(state[0]), 
            .O(n274)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__185.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__186 (.I0(shift_reg_rx[7]), .I1(rx_data[7]), .I2(state[0]), 
            .O(n272)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__186.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__187 (.I0(bit_cnt[0]), .I1(bit_cnt[1]), .I2(state[0]), 
            .O(n320)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__187.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__188 (.I0(n104), .I1(state[0]), .O(n322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__188.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__189 (.I0(clk_cnt[0]), .I1(clk_cnt[1]), .I2(\~equal_6/n3 ), 
            .O(n18[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(60)
    defparam LUT__189.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__190 (.I0(\~busy ), .O(busy)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(148)
    defparam LUT__190.LUTMASK = 16'h5555;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_402166ff_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_402166ff_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_402166ff_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_402166ff_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_402166ff_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_402166ff_23
// module not written out since it is a black box. 
//


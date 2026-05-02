
//
// Verific Verilog Description of module spi_controller_tmr
//

module spi_controller_tmr (clk, rst_n, start, tx_data, rx_data, busy, 
            done, sclk, mosi, miso, cs_n, fault) /* verific EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(12)
    input rst_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(13)
    input start /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(16)
    input [7:0]tx_data /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(17)
    output [7:0]rx_data /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(18)
    output busy /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(19)
    output done /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(20)
    output sclk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(23)
    output mosi /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(24)
    input miso /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(25)
    output cs_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(26)
    output [2:0]fault /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(29)
    
    wire [7:0]\rx_data_v[0]  /* verific syn_keep=1 */ ;
    wire [2:0]done_v /* verific syn_keep=1 */ ;
    wire [2:0]mosi_v /* verific syn_keep=1 */ ;
    wire [2:0]cs_n_v /* verific syn_keep=1 */ ;
    wire [2:0]sclk_v /* verific syn_keep=1 */ ;
    wire [7:0]\rx_data_v[1]  /* verific syn_keep=1 */ ;
    wire [7:0]\rx_data_v[2]  /* verific syn_keep=1 */ ;
    wire \busy_v[2]  /* verific syn_keep=1 */ ;
    wire \busy_v[1]  /* verific syn_keep=1 */ ;
    wire \busy_v[0]  /* verific syn_keep=1 */ ;
    wire [7:0]\gen_cores[0].u_spi/shift_reg_rx ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(45)
    wire [1:0]\gen_cores[0].u_spi/state ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(37)
    wire [7:0]\gen_cores[0].u_spi/shift_reg_tx ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(44)
    wire [2:0]\gen_cores[0].u_spi/bit_cnt ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(43)
    wire [1:0]\gen_cores[0].u_spi/clk_cnt ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(38)
    wire [1:0]\gen_cores[1].u_spi/clk_cnt ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(38)
    wire [1:0]\gen_cores[1].u_spi/state ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(37)
    wire [2:0]\gen_cores[1].u_spi/bit_cnt ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(43)
    wire [7:0]\gen_cores[1].u_spi/shift_reg_tx ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(44)
    wire [7:0]\gen_cores[1].u_spi/shift_reg_rx ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(45)
    wire [1:0]\gen_cores[2].u_spi/clk_cnt ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(38)
    wire [1:0]\gen_cores[2].u_spi/state ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(37)
    wire [2:0]\gen_cores[2].u_spi/bit_cnt ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(43)
    wire [7:0]\gen_cores[2].u_spi/shift_reg_tx ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(44)
    wire [7:0]\gen_cores[2].u_spi/shift_reg_rx ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(45)
    
    wire \gen_cores[0].u_spi/n431 , \~busy_v[0] , ceg_net52, \gen_cores[0].u_spi/n385 , 
        \gen_cores[0].u_spi/n296 , ceg_net28, \~gen_cores[0].u_spi/n405 , 
        \gen_cores[0].u_spi/n88 , ceg_net61, \gen_cores[0].u_spi/n87 ;
    wire [1:0]\gen_cores[0].u_spi/n18 ;
    
    wire \gen_cores[0].u_spi/n21 , \~gen_cores[0].u_spi/n211 , \gen_cores[0].u_spi/n320 , 
        \gen_cores[0].u_spi/n322 , \~gen_cores[0].u_spi/equal_6/n3 , \gen_cores[1].u_spi/n21 , 
        \~gen_cores[1].u_spi/n211 ;
    wire [1:0]\gen_cores[1].u_spi/n18 ;
    
    wire \~busy_v[1] , ceg_net55, \gen_cores[1].u_spi/n296 , ceg_net29, 
        \gen_cores[1].u_spi/n385 , \gen_cores[1].u_spi/n431 , \gen_cores[1].u_spi/n88 , 
        ceg_net62, \~gen_cores[1].u_spi/n405 , \gen_cores[1].u_spi/n87 , 
        \gen_cores[1].u_spi/n320 , \gen_cores[1].u_spi/n322 , \~gen_cores[1].u_spi/equal_6/n3 , 
        \gen_cores[2].u_spi/n21 , \~gen_cores[2].u_spi/n211 ;
    wire [1:0]\gen_cores[2].u_spi/n18 ;
    
    wire \~busy_v[2] , ceg_net58, \gen_cores[2].u_spi/n296 , ceg_net30, 
        \gen_cores[2].u_spi/n385 , \gen_cores[2].u_spi/n336 , \gen_cores[2].u_spi/n88 , 
        ceg_net63, \~gen_cores[2].u_spi/n405 , \gen_cores[2].u_spi/n87 , 
        \gen_cores[2].u_spi/n320 , \gen_cores[2].u_spi/n322 , \~gen_cores[2].u_spi/equal_6/n3 , 
        n246, n247, n248, n249, n250, n251, n252, n253, n254, 
        n255, n256, n257, n258, n259, n260, n261, n262, n263, 
        n264, n265, n266, n267, n268, n269, n270, n271, n272, 
        n273, n274, n275, n276, n277, n278, n279, n280, n281, 
        n282, n283, n284, n285, n286, n287, n288, n289, n290, 
        n291, n292, n293, n294, n295, n296, n297, n298, n299, 
        n300, n301, n302, n303, n304, n305, n306, n307, n308, 
        n309, n310, n311, n312, n313, n314, n315, n316, n317, 
        n318, n319, n320, n321, n322, n323, n324, n325, n326;
    
    EFX_LUT4 LUT__461 (.I0(\rx_data_v[0] [6]), .I1(\rx_data_v[1] [6]), .I2(\rx_data_v[2] [6]), 
            .O(rx_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8e8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(91)
    defparam LUT__461.LUTMASK = 16'he8e8;
    EFX_FF \rx_data_v[0][0]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [0]), 
           .CE(\~gen_cores[0].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[0] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[0][0]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[0][0]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[0][0]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[0][0]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[0][0]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[0][0]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[0][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_rx[0]~FF  (.D(miso), .CE(\gen_cores[0].u_spi/n431 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_rx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/state[0]~FF  (.D(\~busy_v[0] ), .CE(ceg_net52), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/state[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/state[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/state[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_tx[0]~FF  (.D(tx_data[0]), .CE(\gen_cores[0].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_tx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_tx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[0]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/bit_cnt[0]~FF  (.D(\gen_cores[0].u_spi/n296 ), 
           .CE(ceg_net28), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/bit_cnt [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \done_v[0]~FF  (.D(\~gen_cores[0].u_spi/n405 ), .CE(1'b1), .CLK(clk), 
           .SR(rst_n), .Q(done_v[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \done_v[0]~FF .CLK_POLARITY = 1'b1;
    defparam \done_v[0]~FF .CE_POLARITY = 1'b1;
    defparam \done_v[0]~FF .SR_POLARITY = 1'b0;
    defparam \done_v[0]~FF .D_POLARITY = 1'b1;
    defparam \done_v[0]~FF .SR_SYNC = 1'b0;
    defparam \done_v[0]~FF .SR_VALUE = 1'b0;
    defparam \done_v[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mosi_v[0]~FF  (.D(\gen_cores[0].u_spi/n88 ), .CE(ceg_net61), 
           .CLK(clk), .SR(rst_n), .Q(mosi_v[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \mosi_v[0]~FF .CLK_POLARITY = 1'b1;
    defparam \mosi_v[0]~FF .CE_POLARITY = 1'b0;
    defparam \mosi_v[0]~FF .SR_POLARITY = 1'b0;
    defparam \mosi_v[0]~FF .D_POLARITY = 1'b1;
    defparam \mosi_v[0]~FF .SR_SYNC = 1'b0;
    defparam \mosi_v[0]~FF .SR_VALUE = 1'b0;
    defparam \mosi_v[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cs_n_v[0]~FF  (.D(\gen_cores[0].u_spi/n87 ), .CE(\gen_cores[0].u_spi/state [0]), 
           .CLK(clk), .SR(rst_n), .Q(cs_n_v[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \cs_n_v[0]~FF .CLK_POLARITY = 1'b1;
    defparam \cs_n_v[0]~FF .CE_POLARITY = 1'b0;
    defparam \cs_n_v[0]~FF .SR_POLARITY = 1'b0;
    defparam \cs_n_v[0]~FF .D_POLARITY = 1'b1;
    defparam \cs_n_v[0]~FF .SR_SYNC = 1'b0;
    defparam \cs_n_v[0]~FF .SR_VALUE = 1'b1;
    defparam \cs_n_v[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/clk_cnt[0]~FF  (.D(\gen_cores[0].u_spi/n18 [0]), 
           .CE(1'b1), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/clk_cnt [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sclk_v[0]~FF  (.D(\gen_cores[0].u_spi/n21 ), .CE(\~gen_cores[0].u_spi/n211 ), 
           .CLK(clk), .SR(rst_n), .Q(sclk_v[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \sclk_v[0]~FF .CLK_POLARITY = 1'b1;
    defparam \sclk_v[0]~FF .CE_POLARITY = 1'b0;
    defparam \sclk_v[0]~FF .SR_POLARITY = 1'b0;
    defparam \sclk_v[0]~FF .D_POLARITY = 1'b1;
    defparam \sclk_v[0]~FF .SR_SYNC = 1'b0;
    defparam \sclk_v[0]~FF .SR_VALUE = 1'b0;
    defparam \sclk_v[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_tx[1]~FF  (.D(tx_data[1]), .CE(\gen_cores[0].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_tx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_tx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[1]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_tx[2]~FF  (.D(tx_data[2]), .CE(\gen_cores[0].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_tx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_tx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[2]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[2]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[2]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[2]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[2]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_tx[3]~FF  (.D(tx_data[3]), .CE(\gen_cores[0].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_tx [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_tx[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[3]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[3]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[3]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[3]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[3]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_tx[4]~FF  (.D(tx_data[4]), .CE(\gen_cores[0].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_tx [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_tx[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[4]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[4]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[4]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[4]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[4]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_tx[5]~FF  (.D(tx_data[5]), .CE(\gen_cores[0].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_tx [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_tx[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[5]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[5]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[5]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[5]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[5]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_tx[6]~FF  (.D(tx_data[6]), .CE(\gen_cores[0].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_tx [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_tx[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[6]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[6]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[6]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[6]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[6]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_tx[7]~FF  (.D(tx_data[7]), .CE(\gen_cores[0].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_tx [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_tx[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[7]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[7]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[7]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_tx[7]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[7]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_tx[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_rx[1]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [0]), 
           .CE(\gen_cores[0].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_rx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_rx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[1]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_rx[2]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [1]), 
           .CE(\gen_cores[0].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_rx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_rx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[2]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[2]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[2]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[2]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[2]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_rx[3]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [2]), 
           .CE(\gen_cores[0].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_rx [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_rx[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[3]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[3]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[3]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[3]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[3]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_rx[4]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [3]), 
           .CE(\gen_cores[0].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_rx [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_rx[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[4]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[4]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[4]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[4]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[4]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_rx[5]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [4]), 
           .CE(\gen_cores[0].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_rx [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_rx[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[5]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[5]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[5]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[5]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[5]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_rx[6]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [5]), 
           .CE(\gen_cores[0].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_rx [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_rx[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[6]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[6]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[6]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[6]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[6]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_rx[7]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [6]), 
           .CE(\gen_cores[0].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_rx [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_rx[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[7]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[7]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[7]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[7]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[7]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[0][1]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [1]), 
           .CE(\~gen_cores[0].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[0] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[0][1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[0][1]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[0][1]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[0][1]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[0][1]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[0][1]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[0][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[0][2]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [2]), 
           .CE(\~gen_cores[0].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[0] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[0][2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[0][2]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[0][2]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[0][2]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[0][2]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[0][2]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[0][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[0][3]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [3]), 
           .CE(\~gen_cores[0].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[0] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[0][3]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[0][3]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[0][3]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[0][3]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[0][3]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[0][3]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[0][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[0][4]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [4]), 
           .CE(\~gen_cores[0].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[0] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[0][4]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[0][4]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[0][4]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[0][4]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[0][4]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[0][4]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[0][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[0][5]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [5]), 
           .CE(\~gen_cores[0].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[0] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[0][5]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[0][5]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[0][5]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[0][5]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[0][5]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[0][5]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[0][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[0][6]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [6]), 
           .CE(\~gen_cores[0].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[0] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[0][6]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[0][6]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[0][6]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[0][6]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[0][6]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[0][6]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[0][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[0][7]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [7]), 
           .CE(\~gen_cores[0].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[0] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[0][7]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[0][7]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[0][7]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[0][7]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[0][7]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[0][7]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[0][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/bit_cnt[1]~FF  (.D(\gen_cores[0].u_spi/n320 ), 
           .CE(ceg_net28), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/bit_cnt [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/bit_cnt[2]~FF  (.D(\gen_cores[0].u_spi/n322 ), 
           .CE(ceg_net28), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/bit_cnt [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/state[1]~FF  (.D(\~gen_cores[0].u_spi/equal_6/n3 ), 
           .CE(ceg_net52), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/state[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/state[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/state[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/clk_cnt[1]~FF  (.D(\gen_cores[0].u_spi/n18 [1]), 
           .CE(1'b1), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/clk_cnt [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \gen_cores[0].u_spi/clk_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/clk_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/clk_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/clk_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/clk_cnt[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/clk_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/clk_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sclk_v[1]~FF  (.D(\gen_cores[1].u_spi/n21 ), .CE(\~gen_cores[1].u_spi/n211 ), 
           .CLK(clk), .SR(rst_n), .Q(sclk_v[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \sclk_v[1]~FF .CLK_POLARITY = 1'b1;
    defparam \sclk_v[1]~FF .CE_POLARITY = 1'b0;
    defparam \sclk_v[1]~FF .SR_POLARITY = 1'b0;
    defparam \sclk_v[1]~FF .D_POLARITY = 1'b1;
    defparam \sclk_v[1]~FF .SR_SYNC = 1'b0;
    defparam \sclk_v[1]~FF .SR_VALUE = 1'b0;
    defparam \sclk_v[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/clk_cnt[0]~FF  (.D(\gen_cores[1].u_spi/n18 [0]), 
           .CE(1'b1), .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/clk_cnt [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \gen_cores[1].u_spi/clk_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/clk_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/clk_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/clk_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/clk_cnt[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/clk_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/clk_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/state[0]~FF  (.D(\~busy_v[1] ), .CE(ceg_net55), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/state[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/state[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/state[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/bit_cnt[0]~FF  (.D(\gen_cores[1].u_spi/n296 ), 
           .CE(ceg_net29), .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/bit_cnt [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/bit_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/bit_cnt[0]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/bit_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/bit_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/bit_cnt[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/bit_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/bit_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_tx[0]~FF  (.D(tx_data[0]), .CE(\gen_cores[1].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_tx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_tx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[0]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_rx[0]~FF  (.D(miso), .CE(\gen_cores[1].u_spi/n431 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_rx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_rx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[0]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[1][0]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [0]), 
           .CE(\~gen_cores[1].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[1] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[1][0]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[1][0]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[1][0]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[1][0]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[1][0]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[1][0]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[1][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mosi_v[1]~FF  (.D(\gen_cores[1].u_spi/n88 ), .CE(ceg_net62), 
           .CLK(clk), .SR(rst_n), .Q(mosi_v[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \mosi_v[1]~FF .CLK_POLARITY = 1'b1;
    defparam \mosi_v[1]~FF .CE_POLARITY = 1'b0;
    defparam \mosi_v[1]~FF .SR_POLARITY = 1'b0;
    defparam \mosi_v[1]~FF .D_POLARITY = 1'b1;
    defparam \mosi_v[1]~FF .SR_SYNC = 1'b0;
    defparam \mosi_v[1]~FF .SR_VALUE = 1'b0;
    defparam \mosi_v[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \done_v[1]~FF  (.D(\~gen_cores[1].u_spi/n405 ), .CE(1'b1), .CLK(clk), 
           .SR(rst_n), .Q(done_v[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \done_v[1]~FF .CLK_POLARITY = 1'b1;
    defparam \done_v[1]~FF .CE_POLARITY = 1'b1;
    defparam \done_v[1]~FF .SR_POLARITY = 1'b0;
    defparam \done_v[1]~FF .D_POLARITY = 1'b1;
    defparam \done_v[1]~FF .SR_SYNC = 1'b0;
    defparam \done_v[1]~FF .SR_VALUE = 1'b0;
    defparam \done_v[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cs_n_v[1]~FF  (.D(\gen_cores[1].u_spi/n87 ), .CE(\gen_cores[1].u_spi/state [0]), 
           .CLK(clk), .SR(rst_n), .Q(cs_n_v[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \cs_n_v[1]~FF .CLK_POLARITY = 1'b1;
    defparam \cs_n_v[1]~FF .CE_POLARITY = 1'b0;
    defparam \cs_n_v[1]~FF .SR_POLARITY = 1'b0;
    defparam \cs_n_v[1]~FF .D_POLARITY = 1'b1;
    defparam \cs_n_v[1]~FF .SR_SYNC = 1'b0;
    defparam \cs_n_v[1]~FF .SR_VALUE = 1'b1;
    defparam \cs_n_v[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_tx[1]~FF  (.D(tx_data[1]), .CE(\gen_cores[1].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_tx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_tx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[1]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_tx[2]~FF  (.D(tx_data[2]), .CE(\gen_cores[1].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_tx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_tx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[2]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[2]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[2]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[2]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[2]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_tx[3]~FF  (.D(tx_data[3]), .CE(\gen_cores[1].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_tx [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_tx[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[3]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[3]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[3]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[3]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[3]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_tx[4]~FF  (.D(tx_data[4]), .CE(\gen_cores[1].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_tx [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_tx[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[4]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[4]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[4]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[4]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[4]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_tx[5]~FF  (.D(tx_data[5]), .CE(\gen_cores[1].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_tx [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_tx[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[5]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[5]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[5]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[5]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[5]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_tx[6]~FF  (.D(tx_data[6]), .CE(\gen_cores[1].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_tx [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_tx[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[6]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[6]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[6]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[6]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[6]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_tx[7]~FF  (.D(tx_data[7]), .CE(\gen_cores[1].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_tx [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_tx[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[7]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[7]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[7]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_tx[7]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[7]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_tx[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_rx[1]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [0]), 
           .CE(\gen_cores[1].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_rx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_rx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[1]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_rx[2]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [1]), 
           .CE(\gen_cores[1].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_rx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_rx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[2]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[2]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[2]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[2]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[2]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_rx[3]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [2]), 
           .CE(\gen_cores[1].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_rx [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_rx[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[3]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[3]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[3]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[3]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[3]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_rx[4]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [3]), 
           .CE(\gen_cores[1].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_rx [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_rx[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[4]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[4]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[4]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[4]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[4]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_rx[5]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [4]), 
           .CE(\gen_cores[1].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_rx [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_rx[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[5]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[5]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[5]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[5]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[5]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_rx[6]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [5]), 
           .CE(\gen_cores[1].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_rx [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_rx[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[6]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[6]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[6]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[6]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[6]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/shift_reg_rx[7]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [6]), 
           .CE(\gen_cores[1].u_spi/n431 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/shift_reg_rx [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/shift_reg_rx[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[7]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[7]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[7]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/shift_reg_rx[7]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[7]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/shift_reg_rx[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[1][1]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [1]), 
           .CE(\~gen_cores[1].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[1] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[1][1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[1][1]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[1][1]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[1][1]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[1][1]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[1][1]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[1][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[1][2]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [2]), 
           .CE(\~gen_cores[1].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[1] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[1][2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[1][2]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[1][2]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[1][2]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[1][2]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[1][2]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[1][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[1][3]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [3]), 
           .CE(\~gen_cores[1].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[1] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[1][3]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[1][3]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[1][3]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[1][3]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[1][3]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[1][3]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[1][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[1][4]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [4]), 
           .CE(\~gen_cores[1].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[1] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[1][4]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[1][4]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[1][4]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[1][4]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[1][4]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[1][4]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[1][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[1][5]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [5]), 
           .CE(\~gen_cores[1].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[1] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[1][5]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[1][5]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[1][5]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[1][5]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[1][5]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[1][5]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[1][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[1][6]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [6]), 
           .CE(\~gen_cores[1].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[1] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[1][6]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[1][6]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[1][6]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[1][6]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[1][6]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[1][6]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[1][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[1][7]~FF  (.D(\gen_cores[1].u_spi/shift_reg_rx [7]), 
           .CE(\~gen_cores[1].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[1] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[1][7]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[1][7]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[1][7]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[1][7]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[1][7]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[1][7]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[1][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/bit_cnt[1]~FF  (.D(\gen_cores[1].u_spi/n320 ), 
           .CE(ceg_net29), .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/bit_cnt [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/bit_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/bit_cnt[1]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/bit_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/bit_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/bit_cnt[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/bit_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/bit_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/bit_cnt[2]~FF  (.D(\gen_cores[1].u_spi/n322 ), 
           .CE(ceg_net29), .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/bit_cnt [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/bit_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/bit_cnt[2]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/bit_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/bit_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/bit_cnt[2]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/bit_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/bit_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/state[1]~FF  (.D(\~gen_cores[1].u_spi/equal_6/n3 ), 
           .CE(ceg_net55), .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[1].u_spi/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/state[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/state[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/state[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[1].u_spi/clk_cnt[1]~FF  (.D(\gen_cores[1].u_spi/n18 [1]), 
           .CE(1'b1), .CLK(clk), .SR(rst_n), .Q(\gen_cores[1].u_spi/clk_cnt [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \gen_cores[1].u_spi/clk_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/clk_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/clk_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[1].u_spi/clk_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[1].u_spi/clk_cnt[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[1].u_spi/clk_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[1].u_spi/clk_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \sclk_v[2]~FF  (.D(\gen_cores[2].u_spi/n21 ), .CE(\~gen_cores[2].u_spi/n211 ), 
           .CLK(clk), .SR(rst_n), .Q(sclk_v[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \sclk_v[2]~FF .CLK_POLARITY = 1'b1;
    defparam \sclk_v[2]~FF .CE_POLARITY = 1'b0;
    defparam \sclk_v[2]~FF .SR_POLARITY = 1'b0;
    defparam \sclk_v[2]~FF .D_POLARITY = 1'b1;
    defparam \sclk_v[2]~FF .SR_SYNC = 1'b0;
    defparam \sclk_v[2]~FF .SR_VALUE = 1'b0;
    defparam \sclk_v[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/clk_cnt[0]~FF  (.D(\gen_cores[2].u_spi/n18 [0]), 
           .CE(1'b1), .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/clk_cnt [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \gen_cores[2].u_spi/clk_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/clk_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/clk_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/clk_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/clk_cnt[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/clk_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/clk_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/state[0]~FF  (.D(\~busy_v[2] ), .CE(ceg_net58), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/state[0]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/state[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/state[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/state[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/state[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/bit_cnt[0]~FF  (.D(\gen_cores[2].u_spi/n296 ), 
           .CE(ceg_net30), .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/bit_cnt [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/bit_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/bit_cnt[0]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/bit_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/bit_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/bit_cnt[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/bit_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/bit_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_tx[0]~FF  (.D(tx_data[0]), .CE(\gen_cores[2].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_tx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_tx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[0]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_rx[0]~FF  (.D(miso), .CE(\gen_cores[2].u_spi/n336 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_rx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_rx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[0]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[2][0]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [0]), 
           .CE(\~gen_cores[2].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[2] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[2][0]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[2][0]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[2][0]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[2][0]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[2][0]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[2][0]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[2][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mosi_v[2]~FF  (.D(\gen_cores[2].u_spi/n88 ), .CE(ceg_net63), 
           .CLK(clk), .SR(rst_n), .Q(mosi_v[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \mosi_v[2]~FF .CLK_POLARITY = 1'b1;
    defparam \mosi_v[2]~FF .CE_POLARITY = 1'b0;
    defparam \mosi_v[2]~FF .SR_POLARITY = 1'b0;
    defparam \mosi_v[2]~FF .D_POLARITY = 1'b1;
    defparam \mosi_v[2]~FF .SR_SYNC = 1'b0;
    defparam \mosi_v[2]~FF .SR_VALUE = 1'b0;
    defparam \mosi_v[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \done_v[2]~FF  (.D(\~gen_cores[2].u_spi/n405 ), .CE(1'b1), .CLK(clk), 
           .SR(rst_n), .Q(done_v[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \done_v[2]~FF .CLK_POLARITY = 1'b1;
    defparam \done_v[2]~FF .CE_POLARITY = 1'b1;
    defparam \done_v[2]~FF .SR_POLARITY = 1'b0;
    defparam \done_v[2]~FF .D_POLARITY = 1'b1;
    defparam \done_v[2]~FF .SR_SYNC = 1'b0;
    defparam \done_v[2]~FF .SR_VALUE = 1'b0;
    defparam \done_v[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cs_n_v[2]~FF  (.D(\gen_cores[2].u_spi/n87 ), .CE(\gen_cores[2].u_spi/state [0]), 
           .CLK(clk), .SR(rst_n), .Q(cs_n_v[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \cs_n_v[2]~FF .CLK_POLARITY = 1'b1;
    defparam \cs_n_v[2]~FF .CE_POLARITY = 1'b0;
    defparam \cs_n_v[2]~FF .SR_POLARITY = 1'b0;
    defparam \cs_n_v[2]~FF .D_POLARITY = 1'b1;
    defparam \cs_n_v[2]~FF .SR_SYNC = 1'b0;
    defparam \cs_n_v[2]~FF .SR_VALUE = 1'b1;
    defparam \cs_n_v[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_tx[1]~FF  (.D(tx_data[1]), .CE(\gen_cores[2].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_tx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_tx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[1]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_tx[2]~FF  (.D(tx_data[2]), .CE(\gen_cores[2].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_tx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_tx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[2]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[2]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[2]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[2]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[2]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_tx[3]~FF  (.D(tx_data[3]), .CE(\gen_cores[2].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_tx [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_tx[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[3]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[3]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[3]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[3]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[3]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_tx[4]~FF  (.D(tx_data[4]), .CE(\gen_cores[2].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_tx [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_tx[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[4]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[4]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[4]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[4]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[4]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_tx[5]~FF  (.D(tx_data[5]), .CE(\gen_cores[2].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_tx [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_tx[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[5]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[5]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[5]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[5]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[5]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_tx[6]~FF  (.D(tx_data[6]), .CE(\gen_cores[2].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_tx [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_tx[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[6]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[6]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[6]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[6]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[6]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_tx[7]~FF  (.D(tx_data[7]), .CE(\gen_cores[2].u_spi/n385 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_tx [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_tx[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[7]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[7]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[7]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_tx[7]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[7]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_tx[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_rx[1]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [0]), 
           .CE(\gen_cores[2].u_spi/n336 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_rx [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_rx[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[1]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_rx[2]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [1]), 
           .CE(\gen_cores[2].u_spi/n336 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_rx [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_rx[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[2]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[2]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[2]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[2]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[2]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_rx[3]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [2]), 
           .CE(\gen_cores[2].u_spi/n336 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_rx [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_rx[3]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[3]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[3]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[3]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[3]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[3]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_rx[4]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [3]), 
           .CE(\gen_cores[2].u_spi/n336 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_rx [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_rx[4]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[4]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[4]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[4]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[4]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[4]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_rx[5]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [4]), 
           .CE(\gen_cores[2].u_spi/n336 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_rx [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_rx[5]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[5]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[5]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[5]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[5]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[5]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_rx[6]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [5]), 
           .CE(\gen_cores[2].u_spi/n336 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_rx [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_rx[6]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[6]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[6]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[6]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[6]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[6]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/shift_reg_rx[7]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [6]), 
           .CE(\gen_cores[2].u_spi/n336 ), .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/shift_reg_rx [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/shift_reg_rx[7]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[7]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[7]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[7]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/shift_reg_rx[7]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[7]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/shift_reg_rx[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[2][1]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [1]), 
           .CE(\~gen_cores[2].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[2] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[2][1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[2][1]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[2][1]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[2][1]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[2][1]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[2][1]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[2][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[2][2]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [2]), 
           .CE(\~gen_cores[2].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[2] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[2][2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[2][2]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[2][2]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[2][2]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[2][2]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[2][2]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[2][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[2][3]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [3]), 
           .CE(\~gen_cores[2].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[2] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[2][3]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[2][3]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[2][3]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[2][3]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[2][3]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[2][3]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[2][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[2][4]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [4]), 
           .CE(\~gen_cores[2].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[2] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[2][4]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[2][4]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[2][4]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[2][4]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[2][4]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[2][4]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[2][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[2][5]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [5]), 
           .CE(\~gen_cores[2].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[2] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[2][5]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[2][5]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[2][5]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[2][5]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[2][5]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[2][5]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[2][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[2][6]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [6]), 
           .CE(\~gen_cores[2].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[2] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[2][6]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[2][6]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[2][6]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[2][6]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[2][6]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[2][6]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[2][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data_v[2][7]~FF  (.D(\gen_cores[2].u_spi/shift_reg_rx [7]), 
           .CE(\~gen_cores[2].u_spi/n405 ), .CLK(clk), .SR(1'b0), .Q(\rx_data_v[2] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data_v[2][7]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data_v[2][7]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data_v[2][7]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data_v[2][7]~FF .D_POLARITY = 1'b1;
    defparam \rx_data_v[2][7]~FF .SR_SYNC = 1'b1;
    defparam \rx_data_v[2][7]~FF .SR_VALUE = 1'b0;
    defparam \rx_data_v[2][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/bit_cnt[1]~FF  (.D(\gen_cores[2].u_spi/n320 ), 
           .CE(ceg_net30), .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/bit_cnt [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/bit_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/bit_cnt[1]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/bit_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/bit_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/bit_cnt[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/bit_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/bit_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/bit_cnt[2]~FF  (.D(\gen_cores[2].u_spi/n322 ), 
           .CE(ceg_net30), .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/bit_cnt [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/bit_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/bit_cnt[2]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/bit_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/bit_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/bit_cnt[2]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/bit_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/bit_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/state[1]~FF  (.D(\~gen_cores[2].u_spi/equal_6/n3 ), 
           .CE(ceg_net58), .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[2].u_spi/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/state[1]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/state[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/state[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/state[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/state[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[2].u_spi/clk_cnt[1]~FF  (.D(\gen_cores[2].u_spi/n18 [1]), 
           .CE(1'b1), .CLK(clk), .SR(rst_n), .Q(\gen_cores[2].u_spi/clk_cnt [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \gen_cores[2].u_spi/clk_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/clk_cnt[1]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/clk_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[2].u_spi/clk_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[2].u_spi/clk_cnt[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[2].u_spi/clk_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[2].u_spi/clk_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__462 (.I0(\rx_data_v[0] [5]), .I1(\rx_data_v[1] [5]), .I2(\rx_data_v[2] [5]), 
            .O(rx_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8e8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(91)
    defparam LUT__462.LUTMASK = 16'he8e8;
    EFX_LUT4 LUT__463 (.I0(\rx_data_v[0] [4]), .I1(\rx_data_v[1] [4]), .I2(\rx_data_v[2] [4]), 
            .O(rx_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8e8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(91)
    defparam LUT__463.LUTMASK = 16'he8e8;
    EFX_LUT4 LUT__464 (.I0(\rx_data_v[0] [3]), .I1(\rx_data_v[1] [3]), .I2(\rx_data_v[2] [3]), 
            .O(rx_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8e8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(91)
    defparam LUT__464.LUTMASK = 16'he8e8;
    EFX_LUT4 LUT__465 (.I0(\rx_data_v[0] [2]), .I1(\rx_data_v[1] [2]), .I2(\rx_data_v[2] [2]), 
            .O(rx_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8e8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(91)
    defparam LUT__465.LUTMASK = 16'he8e8;
    EFX_LUT4 LUT__466 (.I0(\rx_data_v[0] [1]), .I1(\rx_data_v[1] [1]), .I2(\rx_data_v[2] [1]), 
            .O(rx_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8e8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(91)
    defparam LUT__466.LUTMASK = 16'he8e8;
    EFX_LUT4 LUT__467 (.I0(\rx_data_v[0] [0]), .I1(\rx_data_v[1] [0]), .I2(\rx_data_v[2] [0]), 
            .O(rx_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8e8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(91)
    defparam LUT__467.LUTMASK = 16'he8e8;
    EFX_LUT4 LUT__468 (.I0(\~busy_v[2] ), .I1(\~busy_v[1] ), .I2(\~busy_v[0] ), 
            .O(busy)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1717 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(79)
    defparam LUT__468.LUTMASK = 16'h1717;
    EFX_LUT4 LUT__469 (.I0(done_v[2]), .I1(done_v[1]), .I2(done_v[0]), 
            .O(done)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8e8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(80)
    defparam LUT__469.LUTMASK = 16'he8e8;
    EFX_LUT4 LUT__470 (.I0(sclk_v[2]), .I1(sclk_v[1]), .I2(sclk_v[0]), 
            .O(sclk)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8e8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(76)
    defparam LUT__470.LUTMASK = 16'he8e8;
    EFX_LUT4 LUT__471 (.I0(mosi_v[2]), .I1(mosi_v[1]), .I2(mosi_v[0]), 
            .O(mosi)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8e8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(77)
    defparam LUT__471.LUTMASK = 16'he8e8;
    EFX_LUT4 LUT__472 (.I0(cs_n_v[2]), .I1(cs_n_v[1]), .I2(cs_n_v[0]), 
            .O(cs_n)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8e8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(78)
    defparam LUT__472.LUTMASK = 16'he8e8;
    EFX_LUT4 LUT__473 (.I0(rx_data[3]), .I1(\rx_data_v[2] [3]), .O(n246)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__473.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__474 (.I0(\rx_data_v[0] [2]), .I1(\rx_data_v[1] [2]), .I2(\rx_data_v[2] [2]), 
            .O(n247)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__474.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__475 (.I0(\rx_data_v[0] [1]), .I1(\rx_data_v[1] [1]), .I2(\rx_data_v[2] [1]), 
            .O(n248)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__475.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__476 (.I0(\rx_data_v[0] [7]), .I1(\rx_data_v[1] [7]), .I2(\rx_data_v[2] [7]), 
            .O(n249)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__476.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__477 (.I0(\rx_data_v[0] [0]), .I1(\rx_data_v[1] [0]), .I2(\rx_data_v[2] [0]), 
            .O(n250)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__477.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__478 (.I0(n247), .I1(n248), .I2(n249), .I3(n250), .O(n251)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__478.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__479 (.I0(\rx_data_v[0] [4]), .I1(\rx_data_v[1] [4]), .I2(\rx_data_v[2] [4]), 
            .O(n252)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__479.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__480 (.I0(done_v[2]), .I1(done_v[1]), .I2(done_v[0]), 
            .O(n253)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__480.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__481 (.I0(\rx_data_v[0] [5]), .I1(\rx_data_v[1] [5]), .I2(\rx_data_v[2] [5]), 
            .O(n254)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__481.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__482 (.I0(\~busy_v[2] ), .I1(\~busy_v[1] ), .I2(\~busy_v[0] ), 
            .O(n255)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__482.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__483 (.I0(n252), .I1(n253), .I2(n254), .I3(n255), .O(n256)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__483.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__484 (.I0(mosi_v[2]), .I1(mosi_v[1]), .I2(mosi_v[0]), 
            .O(n257)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__484.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__485 (.I0(cs_n_v[2]), .I1(cs_n_v[1]), .I2(cs_n_v[0]), 
            .O(n258)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__485.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__486 (.I0(sclk_v[2]), .I1(sclk_v[1]), .I2(sclk_v[0]), 
            .O(n259)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__486.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__487 (.I0(\rx_data_v[0] [6]), .I1(\rx_data_v[1] [6]), .I2(\rx_data_v[2] [6]), 
            .O(n260)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__487.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__488 (.I0(n257), .I1(n258), .I2(n259), .I3(n260), .O(n261)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__488.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__489 (.I0(n246), .I1(n251), .I2(n256), .I3(n261), .O(fault[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fff */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(105)
    defparam LUT__489.LUTMASK = 16'h7fff;
    EFX_LUT4 LUT__490 (.I0(rx_data[3]), .I1(\rx_data_v[1] [3]), .O(n262)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9999 */ ;
    defparam LUT__490.LUTMASK = 16'h9999;
    EFX_LUT4 LUT__491 (.I0(\rx_data_v[0] [2]), .I1(\rx_data_v[2] [2]), .I2(\rx_data_v[1] [2]), 
            .O(n263)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__491.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__492 (.I0(cs_n_v[2]), .I1(cs_n_v[0]), .I2(cs_n_v[1]), 
            .O(n264)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__492.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__493 (.I0(\rx_data_v[0] [1]), .I1(\rx_data_v[2] [1]), .I2(\rx_data_v[1] [1]), 
            .O(n265)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__493.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__494 (.I0(sclk_v[2]), .I1(sclk_v[0]), .I2(sclk_v[1]), 
            .O(n266)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__494.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__495 (.I0(n263), .I1(n264), .I2(n265), .I3(n266), .O(n267)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__495.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__496 (.I0(\rx_data_v[0] [6]), .I1(\rx_data_v[2] [6]), .I2(\rx_data_v[1] [6]), 
            .O(n268)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__496.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__497 (.I0(done_v[2]), .I1(done_v[0]), .I2(done_v[1]), 
            .O(n269)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__497.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__498 (.I0(\rx_data_v[0] [0]), .I1(\rx_data_v[2] [0]), .I2(\rx_data_v[1] [0]), 
            .O(n270)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__498.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__499 (.I0(mosi_v[2]), .I1(mosi_v[0]), .I2(mosi_v[1]), 
            .O(n271)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__499.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__500 (.I0(n268), .I1(n269), .I2(n270), .I3(n271), .O(n272)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__500.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__501 (.I0(\rx_data_v[0] [5]), .I1(\rx_data_v[2] [5]), .I2(\rx_data_v[1] [5]), 
            .O(n273)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__501.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__502 (.I0(\rx_data_v[0] [4]), .I1(\rx_data_v[2] [4]), .I2(\rx_data_v[1] [4]), 
            .O(n274)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__502.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__503 (.I0(\~busy_v[2] ), .I1(\~busy_v[0] ), .I2(\~busy_v[1] ), 
            .O(n275)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__503.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__504 (.I0(\rx_data_v[0] [7]), .I1(\rx_data_v[2] [7]), .I2(\rx_data_v[1] [7]), 
            .O(n276)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__504.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__505 (.I0(n273), .I1(n274), .I2(n275), .I3(n276), .O(n277)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__505.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__506 (.I0(n262), .I1(n267), .I2(n272), .I3(n277), .O(fault[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fff */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(105)
    defparam LUT__506.LUTMASK = 16'h7fff;
    EFX_LUT4 LUT__507 (.I0(mosi_v[2]), .I1(mosi_v[1]), .I2(mosi_v[0]), 
            .O(n278)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__507.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__508 (.I0(n278), .I1(\rx_data_v[0] [1]), .I2(\rx_data_v[1] [1]), 
            .I3(\rx_data_v[2] [1]), .O(n279)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8aa2 */ ;
    defparam LUT__508.LUTMASK = 16'h8aa2;
    EFX_LUT4 LUT__509 (.I0(\~busy_v[2] ), .I1(\~busy_v[1] ), .I2(\~busy_v[0] ), 
            .O(n280)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__509.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__510 (.I0(sclk_v[2]), .I1(sclk_v[1]), .I2(sclk_v[0]), 
            .O(n281)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__510.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__511 (.I0(\rx_data_v[0] [0]), .I1(\rx_data_v[1] [0]), .I2(\rx_data_v[2] [0]), 
            .O(n282)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__511.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__512 (.I0(cs_n_v[2]), .I1(cs_n_v[1]), .I2(cs_n_v[0]), 
            .O(n283)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__512.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__513 (.I0(n280), .I1(n281), .I2(n282), .I3(n283), .O(n284)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__513.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__514 (.I0(\rx_data_v[0] [5]), .I1(\rx_data_v[1] [5]), .I2(\rx_data_v[2] [5]), 
            .O(n285)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__514.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__515 (.I0(\rx_data_v[0] [3]), .I1(\rx_data_v[1] [3]), .I2(\rx_data_v[2] [3]), 
            .O(n286)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__515.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__516 (.I0(\rx_data_v[0] [4]), .I1(\rx_data_v[1] [4]), .I2(\rx_data_v[2] [4]), 
            .O(n287)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__516.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__517 (.I0(n285), .I1(n286), .I2(n287), .O(n288)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__517.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__518 (.I0(\rx_data_v[0] [2]), .I1(\rx_data_v[1] [2]), .I2(\rx_data_v[2] [2]), 
            .O(n289)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__518.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__519 (.I0(done_v[2]), .I1(done_v[1]), .I2(done_v[0]), 
            .O(n290)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he7e7 */ ;
    defparam LUT__519.LUTMASK = 16'he7e7;
    EFX_LUT4 LUT__520 (.I0(\rx_data_v[0] [6]), .I1(\rx_data_v[1] [6]), .I2(\rx_data_v[2] [6]), 
            .O(n291)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__520.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__521 (.I0(\rx_data_v[0] [7]), .I1(\rx_data_v[1] [7]), .I2(\rx_data_v[2] [7]), 
            .O(n292)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbdbd */ ;
    defparam LUT__521.LUTMASK = 16'hbdbd;
    EFX_LUT4 LUT__522 (.I0(n289), .I1(n290), .I2(n291), .I3(n292), .O(n293)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__522.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__523 (.I0(n279), .I1(n284), .I2(n288), .I3(n293), .O(fault[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fff */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(105)
    defparam LUT__523.LUTMASK = 16'h7fff;
    EFX_LUT4 LUT__524 (.I0(\gen_cores[0].u_spi/state [0]), .I1(rst_n), .I2(\gen_cores[0].u_spi/state [1]), 
            .O(\~gen_cores[0].u_spi/n405 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__524.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__525 (.I0(\gen_cores[0].u_spi/state [1]), .I1(\gen_cores[0].u_spi/state [0]), 
            .O(\~gen_cores[0].u_spi/equal_6/n3 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__525.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__526 (.I0(sclk_v[0]), .I1(\~gen_cores[0].u_spi/equal_6/n3 ), 
            .O(\gen_cores[0].u_spi/n21 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam LUT__526.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__527 (.I0(\gen_cores[0].u_spi/n21 ), .I1(\gen_cores[0].u_spi/clk_cnt [0]), 
            .I2(\gen_cores[0].u_spi/clk_cnt [1]), .O(\gen_cores[0].u_spi/n431 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(54)
    defparam LUT__527.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__528 (.I0(\gen_cores[0].u_spi/state [0]), .I1(\gen_cores[0].u_spi/state [1]), 
            .O(\~busy_v[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__528.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__529 (.I0(\gen_cores[0].u_spi/bit_cnt [0]), .I1(\gen_cores[0].u_spi/bit_cnt [1]), 
            .I2(\gen_cores[0].u_spi/bit_cnt [2]), .O(n294)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__529.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__530 (.I0(sclk_v[0]), .I1(\gen_cores[0].u_spi/clk_cnt [0]), 
            .I2(\gen_cores[0].u_spi/clk_cnt [1]), .I3(n294), .O(n295)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__530.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__531 (.I0(n295), .I1(start), .I2(\gen_cores[0].u_spi/state [1]), 
            .I3(\gen_cores[0].u_spi/state [0]), .O(ceg_net52)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(16)
    defparam LUT__531.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__532 (.I0(\~busy_v[0] ), .I1(start), .O(\gen_cores[0].u_spi/n385 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(54)
    defparam LUT__532.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__533 (.I0(\gen_cores[0].u_spi/state [0]), .I1(\gen_cores[0].u_spi/bit_cnt [0]), 
            .O(\gen_cores[0].u_spi/n296 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__533.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__534 (.I0(\gen_cores[0].u_spi/state [1]), .I1(sclk_v[0]), 
            .I2(\gen_cores[0].u_spi/clk_cnt [1]), .I3(\gen_cores[0].u_spi/clk_cnt [0]), 
            .O(n296)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__534.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__535 (.I0(n294), .I1(n296), .I2(\~busy_v[0] ), .O(ceg_net28)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0b0b */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(37)
    defparam LUT__535.LUTMASK = 16'h0b0b;
    EFX_LUT4 LUT__536 (.I0(\gen_cores[0].u_spi/shift_reg_tx [4]), .I1(\gen_cores[0].u_spi/shift_reg_tx [6]), 
            .I2(\gen_cores[0].u_spi/bit_cnt [1]), .I3(\gen_cores[0].u_spi/bit_cnt [0]), 
            .O(n297)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__536.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__537 (.I0(\gen_cores[0].u_spi/bit_cnt [0]), .I1(\gen_cores[0].u_spi/bit_cnt [1]), 
            .I2(\gen_cores[0].u_spi/bit_cnt [2]), .O(n298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__537.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__538 (.I0(\gen_cores[0].u_spi/shift_reg_tx [5]), .I1(\gen_cores[0].u_spi/shift_reg_tx [7]), 
            .I2(\gen_cores[0].u_spi/bit_cnt [0]), .I3(\gen_cores[0].u_spi/bit_cnt [1]), 
            .O(n299)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__538.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__539 (.I0(n297), .I1(n299), .I2(n298), .I3(\~gen_cores[0].u_spi/equal_6/n3 ), 
            .O(n300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__539.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__540 (.I0(\gen_cores[0].u_spi/shift_reg_tx [1]), .I1(\gen_cores[0].u_spi/shift_reg_tx [3]), 
            .I2(\gen_cores[0].u_spi/bit_cnt [0]), .I3(\gen_cores[0].u_spi/bit_cnt [1]), 
            .O(n301)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__540.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__541 (.I0(\gen_cores[0].u_spi/shift_reg_tx [0]), .I1(\gen_cores[0].u_spi/shift_reg_tx [2]), 
            .I2(\gen_cores[0].u_spi/bit_cnt [1]), .I3(\gen_cores[0].u_spi/bit_cnt [0]), 
            .O(n302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__541.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__542 (.I0(n301), .I1(n302), .I2(n298), .I3(\~gen_cores[0].u_spi/equal_6/n3 ), 
            .O(n303)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__542.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__543 (.I0(\~busy_v[0] ), .I1(tx_data[7]), .I2(n300), 
            .I3(n303), .O(\gen_cores[0].u_spi/n88 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__543.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__544 (.I0(\gen_cores[0].u_spi/state [1]), .I1(\gen_cores[0].u_spi/clk_cnt [0]), 
            .I2(\gen_cores[0].u_spi/clk_cnt [1]), .I3(sclk_v[0]), .O(n304)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__544.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__545 (.I0(\gen_cores[0].u_spi/state [1]), .I1(start), .I2(n304), 
            .I3(\gen_cores[0].u_spi/state [0]), .O(ceg_net61)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f11 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(16)
    defparam LUT__545.LUTMASK = 16'h0f11;
    EFX_LUT4 LUT__546 (.I0(\gen_cores[0].u_spi/state [1]), .I1(start), .O(\gen_cores[0].u_spi/n87 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__546.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__547 (.I0(\gen_cores[0].u_spi/clk_cnt [0]), .I1(\~gen_cores[0].u_spi/equal_6/n3 ), 
            .O(\gen_cores[0].u_spi/n18 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(60)
    defparam LUT__547.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__548 (.I0(\gen_cores[0].u_spi/clk_cnt [0]), .I1(\gen_cores[0].u_spi/clk_cnt [1]), 
            .I2(\~gen_cores[0].u_spi/equal_6/n3 ), .O(\~gen_cores[0].u_spi/n211 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__548.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__549 (.I0(\gen_cores[0].u_spi/bit_cnt [0]), .I1(\gen_cores[0].u_spi/bit_cnt [1]), 
            .I2(\gen_cores[0].u_spi/state [0]), .O(\gen_cores[0].u_spi/n320 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__549.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__550 (.I0(n298), .I1(\gen_cores[0].u_spi/state [0]), .O(\gen_cores[0].u_spi/n322 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__550.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__551 (.I0(\gen_cores[0].u_spi/clk_cnt [0]), .I1(\gen_cores[0].u_spi/clk_cnt [1]), 
            .I2(\~gen_cores[0].u_spi/equal_6/n3 ), .O(\gen_cores[0].u_spi/n18 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(60)
    defparam LUT__551.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__552 (.I0(\gen_cores[1].u_spi/state [1]), .I1(\gen_cores[1].u_spi/state [0]), 
            .O(\~gen_cores[1].u_spi/equal_6/n3 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__552.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__553 (.I0(sclk_v[1]), .I1(\~gen_cores[1].u_spi/equal_6/n3 ), 
            .O(\gen_cores[1].u_spi/n21 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam LUT__553.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__554 (.I0(\gen_cores[1].u_spi/clk_cnt [0]), .I1(\gen_cores[1].u_spi/clk_cnt [1]), 
            .I2(\~gen_cores[1].u_spi/equal_6/n3 ), .O(\~gen_cores[1].u_spi/n211 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__554.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__555 (.I0(\gen_cores[1].u_spi/clk_cnt [0]), .I1(\~gen_cores[1].u_spi/equal_6/n3 ), 
            .O(\gen_cores[1].u_spi/n18 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(60)
    defparam LUT__555.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__556 (.I0(\gen_cores[1].u_spi/state [0]), .I1(\gen_cores[1].u_spi/state [1]), 
            .O(\~busy_v[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__556.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__557 (.I0(\gen_cores[1].u_spi/bit_cnt [0]), .I1(\gen_cores[1].u_spi/bit_cnt [1]), 
            .I2(\gen_cores[1].u_spi/bit_cnt [2]), .O(n305)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__557.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__558 (.I0(sclk_v[1]), .I1(\gen_cores[1].u_spi/clk_cnt [0]), 
            .I2(\gen_cores[1].u_spi/clk_cnt [1]), .I3(n305), .O(n306)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__558.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__559 (.I0(n306), .I1(start), .I2(\gen_cores[1].u_spi/state [1]), 
            .I3(\gen_cores[1].u_spi/state [0]), .O(ceg_net55)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(16)
    defparam LUT__559.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__560 (.I0(\gen_cores[1].u_spi/state [0]), .I1(\gen_cores[1].u_spi/bit_cnt [0]), 
            .O(\gen_cores[1].u_spi/n296 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__560.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__561 (.I0(n305), .I1(sclk_v[1]), .I2(\gen_cores[1].u_spi/clk_cnt [1]), 
            .I3(\gen_cores[1].u_spi/clk_cnt [0]), .O(n307)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__561.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__562 (.I0(n307), .I1(\gen_cores[1].u_spi/state [0]), .I2(\gen_cores[1].u_spi/state [1]), 
            .O(ceg_net29)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(37)
    defparam LUT__562.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__563 (.I0(\~busy_v[1] ), .I1(start), .O(\gen_cores[1].u_spi/n385 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(54)
    defparam LUT__563.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__564 (.I0(\gen_cores[1].u_spi/n21 ), .I1(\gen_cores[1].u_spi/clk_cnt [0]), 
            .I2(\gen_cores[1].u_spi/clk_cnt [1]), .O(\gen_cores[1].u_spi/n431 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(54)
    defparam LUT__564.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__565 (.I0(\gen_cores[1].u_spi/state [0]), .I1(rst_n), .I2(\gen_cores[1].u_spi/state [1]), 
            .O(\~gen_cores[1].u_spi/n405 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__565.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__566 (.I0(\gen_cores[1].u_spi/shift_reg_tx [4]), .I1(\gen_cores[1].u_spi/shift_reg_tx [6]), 
            .I2(\gen_cores[1].u_spi/bit_cnt [1]), .I3(\gen_cores[1].u_spi/bit_cnt [0]), 
            .O(n308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__566.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__567 (.I0(\gen_cores[1].u_spi/bit_cnt [0]), .I1(\gen_cores[1].u_spi/bit_cnt [1]), 
            .I2(\gen_cores[1].u_spi/bit_cnt [2]), .O(n309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__567.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__568 (.I0(\gen_cores[1].u_spi/shift_reg_tx [5]), .I1(\gen_cores[1].u_spi/shift_reg_tx [7]), 
            .I2(\gen_cores[1].u_spi/bit_cnt [0]), .I3(\gen_cores[1].u_spi/bit_cnt [1]), 
            .O(n310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__568.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__569 (.I0(n308), .I1(n310), .I2(n309), .I3(\~gen_cores[1].u_spi/equal_6/n3 ), 
            .O(n311)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__569.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__570 (.I0(\gen_cores[1].u_spi/shift_reg_tx [1]), .I1(\gen_cores[1].u_spi/shift_reg_tx [3]), 
            .I2(\gen_cores[1].u_spi/bit_cnt [0]), .I3(\gen_cores[1].u_spi/bit_cnt [1]), 
            .O(n312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__570.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__571 (.I0(\gen_cores[1].u_spi/shift_reg_tx [0]), .I1(\gen_cores[1].u_spi/shift_reg_tx [2]), 
            .I2(\gen_cores[1].u_spi/bit_cnt [1]), .I3(\gen_cores[1].u_spi/bit_cnt [0]), 
            .O(n313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__571.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__572 (.I0(n312), .I1(n313), .I2(n309), .I3(\~gen_cores[1].u_spi/equal_6/n3 ), 
            .O(n314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__572.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__573 (.I0(\~busy_v[1] ), .I1(tx_data[7]), .I2(n311), 
            .I3(n314), .O(\gen_cores[1].u_spi/n88 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__573.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__574 (.I0(\gen_cores[1].u_spi/state [1]), .I1(\gen_cores[1].u_spi/clk_cnt [0]), 
            .I2(\gen_cores[1].u_spi/clk_cnt [1]), .I3(sclk_v[1]), .O(n315)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__574.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__575 (.I0(\gen_cores[1].u_spi/state [1]), .I1(start), .I2(n315), 
            .I3(\gen_cores[1].u_spi/state [0]), .O(ceg_net62)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f11 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(16)
    defparam LUT__575.LUTMASK = 16'h0f11;
    EFX_LUT4 LUT__576 (.I0(\gen_cores[1].u_spi/state [1]), .I1(start), .O(\gen_cores[1].u_spi/n87 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__576.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__577 (.I0(\gen_cores[1].u_spi/bit_cnt [0]), .I1(\gen_cores[1].u_spi/bit_cnt [1]), 
            .I2(\gen_cores[1].u_spi/state [0]), .O(\gen_cores[1].u_spi/n320 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__577.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__578 (.I0(n309), .I1(\gen_cores[1].u_spi/state [0]), .O(\gen_cores[1].u_spi/n322 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__578.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__579 (.I0(\gen_cores[1].u_spi/clk_cnt [0]), .I1(\gen_cores[1].u_spi/clk_cnt [1]), 
            .I2(\~gen_cores[1].u_spi/equal_6/n3 ), .O(\gen_cores[1].u_spi/n18 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(60)
    defparam LUT__579.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__580 (.I0(\gen_cores[2].u_spi/state [1]), .I1(\gen_cores[2].u_spi/state [0]), 
            .O(\~gen_cores[2].u_spi/equal_6/n3 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__580.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__581 (.I0(sclk_v[2]), .I1(\~gen_cores[2].u_spi/equal_6/n3 ), 
            .O(\gen_cores[2].u_spi/n21 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam LUT__581.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__582 (.I0(\gen_cores[2].u_spi/clk_cnt [0]), .I1(\gen_cores[2].u_spi/clk_cnt [1]), 
            .I2(\~gen_cores[2].u_spi/equal_6/n3 ), .O(\~gen_cores[2].u_spi/n211 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__582.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__583 (.I0(\gen_cores[2].u_spi/clk_cnt [0]), .I1(\~gen_cores[2].u_spi/equal_6/n3 ), 
            .O(\gen_cores[2].u_spi/n18 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(60)
    defparam LUT__583.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__584 (.I0(\gen_cores[2].u_spi/state [0]), .I1(\gen_cores[2].u_spi/state [1]), 
            .O(\~busy_v[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__584.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__585 (.I0(\gen_cores[2].u_spi/bit_cnt [0]), .I1(\gen_cores[2].u_spi/bit_cnt [1]), 
            .I2(\gen_cores[2].u_spi/bit_cnt [2]), .O(n316)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__585.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__586 (.I0(sclk_v[2]), .I1(\gen_cores[2].u_spi/state [0]), 
            .I2(\gen_cores[2].u_spi/clk_cnt [1]), .I3(\gen_cores[2].u_spi/clk_cnt [0]), 
            .O(\gen_cores[2].u_spi/n336 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(54)
    defparam LUT__586.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__587 (.I0(start), .I1(\gen_cores[2].u_spi/state [0]), .I2(\gen_cores[2].u_spi/state [1]), 
            .O(n317)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0d0d */ ;
    defparam LUT__587.LUTMASK = 16'h0d0d;
    EFX_LUT4 LUT__588 (.I0(\gen_cores[2].u_spi/n336 ), .I1(n316), .I2(n317), 
            .O(ceg_net58)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(16)
    defparam LUT__588.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__589 (.I0(\gen_cores[2].u_spi/state [0]), .I1(\gen_cores[2].u_spi/bit_cnt [0]), 
            .O(\gen_cores[2].u_spi/n296 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__589.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__590 (.I0(n316), .I1(sclk_v[2]), .I2(\gen_cores[2].u_spi/clk_cnt [1]), 
            .I3(\gen_cores[2].u_spi/clk_cnt [0]), .O(n318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__590.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__591 (.I0(n318), .I1(\gen_cores[2].u_spi/state [0]), .I2(\gen_cores[2].u_spi/state [1]), 
            .O(ceg_net30)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(37)
    defparam LUT__591.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__592 (.I0(\~busy_v[2] ), .I1(start), .O(\gen_cores[2].u_spi/n385 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(54)
    defparam LUT__592.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__593 (.I0(\gen_cores[2].u_spi/state [0]), .I1(rst_n), .I2(\gen_cores[2].u_spi/state [1]), 
            .O(\~gen_cores[2].u_spi/n405 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__593.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__594 (.I0(\gen_cores[2].u_spi/shift_reg_tx [4]), .I1(\gen_cores[2].u_spi/shift_reg_tx [6]), 
            .I2(\gen_cores[2].u_spi/bit_cnt [1]), .I3(\gen_cores[2].u_spi/bit_cnt [0]), 
            .O(n319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__594.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__595 (.I0(\gen_cores[2].u_spi/bit_cnt [0]), .I1(\gen_cores[2].u_spi/bit_cnt [1]), 
            .I2(\gen_cores[2].u_spi/bit_cnt [2]), .O(n320)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__595.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__596 (.I0(\gen_cores[2].u_spi/shift_reg_tx [5]), .I1(\gen_cores[2].u_spi/shift_reg_tx [7]), 
            .I2(\gen_cores[2].u_spi/bit_cnt [0]), .I3(\gen_cores[2].u_spi/bit_cnt [1]), 
            .O(n321)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__596.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__597 (.I0(n319), .I1(n321), .I2(n320), .I3(\~gen_cores[2].u_spi/equal_6/n3 ), 
            .O(n322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__597.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__598 (.I0(\gen_cores[2].u_spi/shift_reg_tx [1]), .I1(\gen_cores[2].u_spi/shift_reg_tx [3]), 
            .I2(\gen_cores[2].u_spi/bit_cnt [0]), .I3(\gen_cores[2].u_spi/bit_cnt [1]), 
            .O(n323)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__598.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__599 (.I0(\gen_cores[2].u_spi/shift_reg_tx [0]), .I1(\gen_cores[2].u_spi/shift_reg_tx [2]), 
            .I2(\gen_cores[2].u_spi/bit_cnt [1]), .I3(\gen_cores[2].u_spi/bit_cnt [0]), 
            .O(n324)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__599.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__600 (.I0(n323), .I1(n324), .I2(n320), .I3(\~gen_cores[2].u_spi/equal_6/n3 ), 
            .O(n325)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__600.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__601 (.I0(\~busy_v[2] ), .I1(tx_data[7]), .I2(n322), 
            .I3(n325), .O(\gen_cores[2].u_spi/n88 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__601.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__602 (.I0(\gen_cores[2].u_spi/state [1]), .I1(\gen_cores[2].u_spi/clk_cnt [0]), 
            .I2(\gen_cores[2].u_spi/clk_cnt [1]), .I3(sclk_v[2]), .O(n326)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__602.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__603 (.I0(\gen_cores[2].u_spi/state [1]), .I1(start), .I2(n326), 
            .I3(\gen_cores[2].u_spi/state [0]), .O(ceg_net63)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f11 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(16)
    defparam LUT__603.LUTMASK = 16'h0f11;
    EFX_LUT4 LUT__604 (.I0(\gen_cores[2].u_spi/state [1]), .I1(start), .O(\gen_cores[2].u_spi/n87 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__604.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__605 (.I0(\gen_cores[2].u_spi/bit_cnt [0]), .I1(\gen_cores[2].u_spi/bit_cnt [1]), 
            .I2(\gen_cores[2].u_spi/state [0]), .O(\gen_cores[2].u_spi/n320 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__605.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__606 (.I0(n320), .I1(\gen_cores[2].u_spi/state [0]), .O(\gen_cores[2].u_spi/n322 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__606.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__607 (.I0(\gen_cores[2].u_spi/clk_cnt [0]), .I1(\gen_cores[2].u_spi/clk_cnt [1]), 
            .I2(\~gen_cores[2].u_spi/equal_6/n3 ), .O(\gen_cores[2].u_spi/n18 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(60)
    defparam LUT__607.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__611 (.I0(\~busy_v[2] ), .O(\busy_v[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__611.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__460 (.I0(\rx_data_v[0] [7]), .I1(\rx_data_v[1] [7]), .I2(\rx_data_v[2] [7]), 
            .O(rx_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he8e8 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(91)
    defparam LUT__460.LUTMASK = 16'he8e8;
    EFX_LUT4 LUT__612 (.I0(\~busy_v[1] ), .O(\busy_v[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__612.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__613 (.I0(\~busy_v[0] ), .O(\busy_v[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__613.LUTMASK = 16'h5555;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_79ea6378_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_79ea6378_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_79ea6378_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_79ea6378_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_79ea6378_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_79ea6378_30
// module not written out since it is a black box. 
//


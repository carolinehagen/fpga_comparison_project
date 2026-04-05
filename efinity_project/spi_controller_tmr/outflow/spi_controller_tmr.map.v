
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
    
    wire [2:0]\gen_cores[0].u_spi/bit_cnt ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(43)
    wire [7:0]\gen_cores[0].u_spi/shift_reg_rx ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(45)
    wire [1:0]\gen_cores[0].u_spi/state ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(37)
    wire [7:0]\gen_cores[0].u_spi/shift_reg_tx ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(44)
    wire [1:0]\gen_cores[0].u_spi/clk_cnt ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(38)
    
    wire \~gen_cores[0].u_spi/n405 , \gen_cores[0].u_spi/n296 , ceg_net10, 
        \gen_cores[0].u_spi/n88 , ceg_net21, \gen_cores[0].u_spi/n87 , 
        \gen_cores[0].u_spi/n431 , \~busy_v[0] , ceg_net20, \gen_cores[0].u_spi/n385 , 
        \gen_cores[0].u_spi/n21 , \~gen_cores[0].u_spi/n211 ;
    wire [1:0]\gen_cores[0].u_spi/n18 ;
    
    wire \gen_cores[0].u_spi/n320 , \gen_cores[0].u_spi/n322 , \~gen_cores[0].u_spi/equal_6/n3 , 
        n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, 
        n103, n104;
    
    assign fault[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(29)
    assign fault[0] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(29)
    assign fault[2] = 1'b0 /* verific EFX_ATTRIBUTE_CELL_NAME=GND */ ;
    EFX_LUT4 LUT__150 (.I0(\gen_cores[0].u_spi/state [0]), .I1(rst_n), .I2(\gen_cores[0].u_spi/state [1]), 
            .O(\~gen_cores[0].u_spi/n405 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__150.LUTMASK = 16'h4040;
    EFX_FF \done~FF  (.D(\~gen_cores[0].u_spi/n405 ), .CE(1'b1), .CLK(clk), 
           .SR(rst_n), .Q(done)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \done~FF .CLK_POLARITY = 1'b1;
    defparam \done~FF .CE_POLARITY = 1'b1;
    defparam \done~FF .SR_POLARITY = 1'b0;
    defparam \done~FF .D_POLARITY = 1'b1;
    defparam \done~FF .SR_SYNC = 1'b0;
    defparam \done~FF .SR_VALUE = 1'b0;
    defparam \done~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/bit_cnt[0]~FF  (.D(\gen_cores[0].u_spi/n296 ), 
           .CE(ceg_net10), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/bit_cnt [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \mosi~FF  (.D(\gen_cores[0].u_spi/n88 ), .CE(ceg_net21), .CLK(clk), 
           .SR(rst_n), .Q(mosi)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \mosi~FF .CLK_POLARITY = 1'b1;
    defparam \mosi~FF .CE_POLARITY = 1'b0;
    defparam \mosi~FF .SR_POLARITY = 1'b0;
    defparam \mosi~FF .D_POLARITY = 1'b1;
    defparam \mosi~FF .SR_SYNC = 1'b0;
    defparam \mosi~FF .SR_VALUE = 1'b0;
    defparam \mosi~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \cs_n~FF  (.D(\gen_cores[0].u_spi/n87 ), .CE(\gen_cores[0].u_spi/state [0]), 
           .CLK(clk), .SR(rst_n), .Q(cs_n)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b1, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \cs_n~FF .CLK_POLARITY = 1'b1;
    defparam \cs_n~FF .CE_POLARITY = 1'b0;
    defparam \cs_n~FF .SR_POLARITY = 1'b0;
    defparam \cs_n~FF .D_POLARITY = 1'b1;
    defparam \cs_n~FF .SR_SYNC = 1'b0;
    defparam \cs_n~FF .SR_VALUE = 1'b1;
    defparam \cs_n~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[0]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [0]), .CE(\~gen_cores[0].u_spi/n405 ), 
           .CLK(clk), .SR(1'b0), .Q(rx_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[0]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[0]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[0]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/shift_reg_rx[0]~FF  (.D(miso), .CE(\gen_cores[0].u_spi/n431 ), 
           .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/shift_reg_rx [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/shift_reg_rx[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/state[0]~FF  (.D(\~busy_v[0] ), .CE(ceg_net20), 
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
    EFX_FF \sclk~FF  (.D(\gen_cores[0].u_spi/n21 ), .CE(\~gen_cores[0].u_spi/n211 ), 
           .CLK(clk), .SR(rst_n), .Q(sclk)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \sclk~FF .CLK_POLARITY = 1'b1;
    defparam \sclk~FF .CE_POLARITY = 1'b0;
    defparam \sclk~FF .SR_POLARITY = 1'b0;
    defparam \sclk~FF .D_POLARITY = 1'b1;
    defparam \sclk~FF .SR_SYNC = 1'b0;
    defparam \sclk~FF .SR_VALUE = 1'b0;
    defparam \sclk~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/clk_cnt[0]~FF  (.D(\gen_cores[0].u_spi/n18 [0]), 
           .CE(1'b1), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/clk_cnt [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .CE_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/clk_cnt[0]~FF .SR_SYNC_PRIORITY = 1'b1;
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
    EFX_FF \rx_data[1]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [1]), .CE(\~gen_cores[0].u_spi/n405 ), 
           .CLK(clk), .SR(1'b0), .Q(rx_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[1]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[1]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[1]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[2]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [2]), .CE(\~gen_cores[0].u_spi/n405 ), 
           .CLK(clk), .SR(1'b0), .Q(rx_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[2]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[2]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[2]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[3]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [3]), .CE(\~gen_cores[0].u_spi/n405 ), 
           .CLK(clk), .SR(1'b0), .Q(rx_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[3]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[3]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[3]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[4]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [4]), .CE(\~gen_cores[0].u_spi/n405 ), 
           .CLK(clk), .SR(1'b0), .Q(rx_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[4]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[4]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[4]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[5]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [5]), .CE(\~gen_cores[0].u_spi/n405 ), 
           .CLK(clk), .SR(1'b0), .Q(rx_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[5]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[5]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[5]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[6]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [6]), .CE(\~gen_cores[0].u_spi/n405 ), 
           .CLK(clk), .SR(1'b0), .Q(rx_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[6]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[6]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[6]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rx_data[7]~FF  (.D(\gen_cores[0].u_spi/shift_reg_rx [7]), .CE(\~gen_cores[0].u_spi/n405 ), 
           .CLK(clk), .SR(1'b0), .Q(rx_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \rx_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \rx_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \rx_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \rx_data[7]~FF .D_POLARITY = 1'b1;
    defparam \rx_data[7]~FF .SR_SYNC = 1'b1;
    defparam \rx_data[7]~FF .SR_VALUE = 1'b0;
    defparam \rx_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/bit_cnt[1]~FF  (.D(\gen_cores[0].u_spi/n320 ), 
           .CE(ceg_net10), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/bit_cnt [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/bit_cnt[2]~FF  (.D(\gen_cores[0].u_spi/n322 ), 
           .CE(ceg_net10), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/bit_cnt [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .CLK_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .CE_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .SR_POLARITY = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .D_POLARITY = 1'b1;
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .SR_SYNC = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .SR_VALUE = 1'b0;
    defparam \gen_cores[0].u_spi/bit_cnt[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \gen_cores[0].u_spi/state[1]~FF  (.D(\~gen_cores[0].u_spi/equal_6/n3 ), 
           .CE(ceg_net20), .CLK(clk), .SR(rst_n), .Q(\gen_cores[0].u_spi/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(145)
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
    EFX_LUT4 LUT__151 (.I0(\gen_cores[0].u_spi/bit_cnt [0]), .I1(\gen_cores[0].u_spi/state [0]), 
            .O(\gen_cores[0].u_spi/n296 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__151.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__152 (.I0(sclk), .I1(\gen_cores[0].u_spi/clk_cnt [0]), 
            .I2(\gen_cores[0].u_spi/clk_cnt [1]), .O(n93)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__152.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__153 (.I0(\gen_cores[0].u_spi/bit_cnt [2]), .I1(\gen_cores[0].u_spi/bit_cnt [0]), 
            .I2(\gen_cores[0].u_spi/bit_cnt [1]), .I3(n93), .O(n94)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfe00 */ ;
    defparam LUT__153.LUTMASK = 16'hfe00;
    EFX_LUT4 LUT__154 (.I0(n94), .I1(\gen_cores[0].u_spi/state [0]), .I2(\gen_cores[0].u_spi/state [1]), 
            .O(ceg_net10)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf4f4 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(37)
    defparam LUT__154.LUTMASK = 16'hf4f4;
    EFX_LUT4 LUT__155 (.I0(\gen_cores[0].u_spi/shift_reg_tx [6]), .I1(\gen_cores[0].u_spi/shift_reg_tx [4]), 
            .I2(\gen_cores[0].u_spi/bit_cnt [1]), .O(n95)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__155.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__156 (.I0(\gen_cores[0].u_spi/shift_reg_tx [7]), .I1(\gen_cores[0].u_spi/shift_reg_tx [5]), 
            .I2(\gen_cores[0].u_spi/bit_cnt [1]), .O(n96)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__156.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__157 (.I0(\gen_cores[0].u_spi/bit_cnt [0]), .I1(\gen_cores[0].u_spi/bit_cnt [1]), 
            .I2(\gen_cores[0].u_spi/bit_cnt [2]), .O(n97)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he1e1 */ ;
    defparam LUT__157.LUTMASK = 16'he1e1;
    EFX_LUT4 LUT__158 (.I0(n96), .I1(n95), .I2(\gen_cores[0].u_spi/bit_cnt [0]), 
            .I3(n97), .O(n98)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__158.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__159 (.I0(\gen_cores[0].u_spi/shift_reg_tx [2]), .I1(\gen_cores[0].u_spi/shift_reg_tx [0]), 
            .I2(\gen_cores[0].u_spi/bit_cnt [1]), .O(n99)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__159.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__160 (.I0(\gen_cores[0].u_spi/shift_reg_tx [3]), .I1(\gen_cores[0].u_spi/shift_reg_tx [1]), 
            .I2(\gen_cores[0].u_spi/bit_cnt [1]), .O(n100)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__160.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__161 (.I0(n100), .I1(n99), .I2(n97), .I3(\gen_cores[0].u_spi/bit_cnt [0]), 
            .O(n101)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0c0a */ ;
    defparam LUT__161.LUTMASK = 16'h0c0a;
    EFX_LUT4 LUT__162 (.I0(\gen_cores[0].u_spi/state [0]), .I1(tx_data[7]), 
            .I2(\gen_cores[0].u_spi/state [1]), .O(n102)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__162.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__163 (.I0(n101), .I1(n98), .I2(\gen_cores[0].u_spi/state [0]), 
            .I3(n102), .O(\gen_cores[0].u_spi/n88 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__163.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__164 (.I0(sclk), .I1(\gen_cores[0].u_spi/clk_cnt [0]), 
            .I2(\gen_cores[0].u_spi/clk_cnt [1]), .O(n103)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__164.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__165 (.I0(start), .I1(n103), .I2(\gen_cores[0].u_spi/state [1]), 
            .I3(\gen_cores[0].u_spi/state [0]), .O(ceg_net21)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf305 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(16)
    defparam LUT__165.LUTMASK = 16'hf305;
    EFX_LUT4 LUT__166 (.I0(\gen_cores[0].u_spi/state [1]), .I1(start), .O(\gen_cores[0].u_spi/n87 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__166.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__167 (.I0(\gen_cores[0].u_spi/state [1]), .I1(\gen_cores[0].u_spi/state [0]), 
            .O(\~gen_cores[0].u_spi/equal_6/n3 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__167.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__168 (.I0(n93), .I1(\~gen_cores[0].u_spi/equal_6/n3 ), 
            .O(\gen_cores[0].u_spi/n431 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(49)
    defparam LUT__168.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__169 (.I0(\gen_cores[0].u_spi/bit_cnt [0]), .I1(\gen_cores[0].u_spi/bit_cnt [1]), 
            .I2(\gen_cores[0].u_spi/bit_cnt [2]), .I3(n93), .O(n104)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__169.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__170 (.I0(start), .I1(n104), .I2(\gen_cores[0].u_spi/state [1]), 
            .I3(\gen_cores[0].u_spi/state [0]), .O(ceg_net20)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(16)
    defparam LUT__170.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__171 (.I0(\~busy_v[0] ), .I1(start), .O(\gen_cores[0].u_spi/n385 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller_tmr.sv(49)
    defparam LUT__171.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__172 (.I0(sclk), .I1(\~gen_cores[0].u_spi/equal_6/n3 ), 
            .O(\gen_cores[0].u_spi/n21 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(64)
    defparam LUT__172.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__173 (.I0(\gen_cores[0].u_spi/clk_cnt [1]), .I1(\gen_cores[0].u_spi/clk_cnt [0]), 
            .I2(\~gen_cores[0].u_spi/equal_6/n3 ), .O(\~gen_cores[0].u_spi/n211 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7070 */ ;
    defparam LUT__173.LUTMASK = 16'h7070;
    EFX_LUT4 LUT__174 (.I0(\gen_cores[0].u_spi/clk_cnt [0]), .I1(\~gen_cores[0].u_spi/equal_6/n3 ), 
            .O(\gen_cores[0].u_spi/n18 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(60)
    defparam LUT__174.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__175 (.I0(\gen_cores[0].u_spi/bit_cnt [0]), .I1(\gen_cores[0].u_spi/bit_cnt [1]), 
            .I2(\gen_cores[0].u_spi/state [0]), .O(\gen_cores[0].u_spi/n320 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h9f9f */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__175.LUTMASK = 16'h9f9f;
    EFX_LUT4 LUT__176 (.I0(n97), .I1(\gen_cores[0].u_spi/state [0]), .O(\gen_cores[0].u_spi/n322 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(144)
    defparam LUT__176.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__177 (.I0(\gen_cores[0].u_spi/clk_cnt [0]), .I1(\gen_cores[0].u_spi/clk_cnt [1]), 
            .I2(\~gen_cores[0].u_spi/equal_6/n3 ), .O(\gen_cores[0].u_spi/n18 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(60)
    defparam LUT__177.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__181 (.I0(\~busy_v[0] ), .O(busy)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/spi_controller.sv(148)
    defparam LUT__181.LUTMASK = 16'h5555;
    EFX_LUT4 LUT__149 (.I0(\gen_cores[0].u_spi/state [0]), .I1(\gen_cores[0].u_spi/state [1]), 
            .O(\~busy_v[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__149.LUTMASK = 16'h1111;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_3009ad32_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_3009ad32_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_3009ad32_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_3009ad32_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_3009ad32_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_3009ad32_22
// module not written out since it is a black box. 
//


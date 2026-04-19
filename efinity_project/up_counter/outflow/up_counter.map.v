
//
// Verific Verilog Description of module up_counter
//

module up_counter (clk, rst, en, count, count_up) /* verific EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(4)
    input rst /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(5)
    input en /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(6)
    output [7:0]count /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(7)
    output count_up /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(8)
    
    wire [7:0]n6;
    wire [7:0]n6_2;
    
    wire \add_10/n2 , \add_10/n4 , \add_10/n10 , \add_10/n6 , \add_10/n12 , 
        \add_10/n8 ;
    wire [7:0]n6n7_q;
    wire [7:0]n6n8_q;
    wire [7:0]n6n9_q;
    wire [7:0]n6n10_q;
    wire [7:0]n6n11_q;
    wire [7:0]n6_2n12_q;
    wire [7:0]n6n13_q;
    
    wire n39_q, n40_q, n39, n40;
    
    EFX_LUT4 LUT__83 (.I0(n6_2n12_q[2]), .I1(n6n13_q[1]), .I2(count[0]), 
            .I3(n6n11_q[3]), .O(n39)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0800 */ ;
    defparam LUT__83.LUTMASK = 16'h0800;
    EFX_LUT4 LUT__84 (.I0(n6n10_q[4]), .I1(n6n9_q[5]), .I2(n6n8_q[6]), 
            .I3(n6n7_q[7]), .O(n40)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__84.LUTMASK = 16'h8000;
    EFX_FF \count[2]~FF  (.D(n6_2n12_q[2]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(count[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \count[2]~FF .CE_POLARITY = 1'b1;
    defparam \count[2]~FF .SR_POLARITY = 1'b1;
    defparam \count[2]~FF .D_POLARITY = 1'b1;
    defparam \count[2]~FF .SR_SYNC = 1'b1;
    defparam \count[2]~FF .SR_VALUE = 1'b0;
    defparam \count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[1]~FF  (.D(n6n13_q[1]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(count[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \count[1]~FF .CE_POLARITY = 1'b1;
    defparam \count[1]~FF .SR_POLARITY = 1'b1;
    defparam \count[1]~FF .D_POLARITY = 1'b1;
    defparam \count[1]~FF .SR_SYNC = 1'b1;
    defparam \count[1]~FF .SR_VALUE = 1'b0;
    defparam \count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[0]~FF  (.D(count[0]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(count[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \count[0]~FF .CE_POLARITY = 1'b1;
    defparam \count[0]~FF .SR_POLARITY = 1'b1;
    defparam \count[0]~FF .D_POLARITY = 1'b0;
    defparam \count[0]~FF .SR_SYNC = 1'b1;
    defparam \count[0]~FF .SR_VALUE = 1'b0;
    defparam \count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[3]~FF  (.D(n6n11_q[3]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(count[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \count[3]~FF .CE_POLARITY = 1'b1;
    defparam \count[3]~FF .SR_POLARITY = 1'b1;
    defparam \count[3]~FF .D_POLARITY = 1'b1;
    defparam \count[3]~FF .SR_SYNC = 1'b1;
    defparam \count[3]~FF .SR_VALUE = 1'b0;
    defparam \count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[4]~FF  (.D(n6n10_q[4]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(count[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \count[4]~FF .CE_POLARITY = 1'b1;
    defparam \count[4]~FF .SR_POLARITY = 1'b1;
    defparam \count[4]~FF .D_POLARITY = 1'b1;
    defparam \count[4]~FF .SR_SYNC = 1'b1;
    defparam \count[4]~FF .SR_VALUE = 1'b0;
    defparam \count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[5]~FF  (.D(n6n9_q[5]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(count[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \count[5]~FF .CE_POLARITY = 1'b1;
    defparam \count[5]~FF .SR_POLARITY = 1'b1;
    defparam \count[5]~FF .D_POLARITY = 1'b1;
    defparam \count[5]~FF .SR_SYNC = 1'b1;
    defparam \count[5]~FF .SR_VALUE = 1'b0;
    defparam \count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[6]~FF  (.D(n6n8_q[6]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(count[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \count[6]~FF .CE_POLARITY = 1'b1;
    defparam \count[6]~FF .SR_POLARITY = 1'b1;
    defparam \count[6]~FF .D_POLARITY = 1'b1;
    defparam \count[6]~FF .SR_SYNC = 1'b1;
    defparam \count[6]~FF .SR_VALUE = 1'b0;
    defparam \count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[7]~FF  (.D(n6n7_q[7]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(count[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \count[7]~FF .CE_POLARITY = 1'b1;
    defparam \count[7]~FF .SR_POLARITY = 1'b1;
    defparam \count[7]~FF .D_POLARITY = 1'b1;
    defparam \count[7]~FF .SR_SYNC = 1'b1;
    defparam \count[7]~FF .SR_VALUE = 1'b0;
    defparam \count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \add_10/i1  (.I0(n6n13_q[1]), .I1(count[0]), .CI(1'b0), .O(n6[1]), 
            .CO(\add_10/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(17)
    defparam \add_10/i1 .I0_POLARITY = 1'b1;
    defparam \add_10/i1 .I1_POLARITY = 1'b0;
    EFX_ADD \add_10/i2  (.I0(n6_2n12_q[2]), .I1(1'b0), .CI(\add_10/n2 ), 
            .O(n6_2[2]), .CO(\add_10/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(17)
    defparam \add_10/i2 .I0_POLARITY = 1'b1;
    defparam \add_10/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \add_10/i7  (.I0(n6n7_q[7]), .I1(1'b0), .CI(\add_10/n12 ), 
            .O(n6[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(17)
    defparam \add_10/i7 .I0_POLARITY = 1'b1;
    defparam \add_10/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \add_10/i5  (.I0(n6n9_q[5]), .I1(1'b0), .CI(\add_10/n8 ), 
            .O(n6[5]), .CO(\add_10/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(17)
    defparam \add_10/i5 .I0_POLARITY = 1'b1;
    defparam \add_10/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \add_10/i3  (.I0(n6n11_q[3]), .I1(1'b0), .CI(\add_10/n4 ), 
            .O(n6[3]), .CO(\add_10/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(17)
    defparam \add_10/i3 .I0_POLARITY = 1'b1;
    defparam \add_10/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \add_10/i6  (.I0(n6n8_q[6]), .I1(1'b0), .CI(\add_10/n10 ), 
            .O(n6[6]), .CO(\add_10/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(17)
    defparam \add_10/i6 .I0_POLARITY = 1'b1;
    defparam \add_10/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \add_10/i4  (.I0(n6n10_q[4]), .I1(1'b0), .CI(\add_10/n6 ), 
            .O(n6[4]), .CO(\add_10/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(17)
    defparam \add_10/i4 .I0_POLARITY = 1'b1;
    defparam \add_10/i4 .I1_POLARITY = 1'b1;
    EFX_LUT4 LUT__85 (.I0(n39_q), .I1(n40_q), .O(count_up)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(20)
    defparam LUT__85.LUTMASK = 16'h8888;
    EFX_FF \count[1]~FF_frt_8  (.D(n6[7]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(n6n7_q[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[1]~FF_frt_8 .CLK_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_8 .CE_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_8 .SR_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_8 .D_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_8 .SR_SYNC = 1'b1;
    defparam \count[1]~FF_frt_8 .SR_VALUE = 1'b0;
    defparam \count[1]~FF_frt_8 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[1]~FF_frt_7  (.D(n6[6]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(n6n8_q[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[1]~FF_frt_7 .CLK_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_7 .CE_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_7 .SR_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_7 .D_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_7 .SR_SYNC = 1'b1;
    defparam \count[1]~FF_frt_7 .SR_VALUE = 1'b0;
    defparam \count[1]~FF_frt_7 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[1]~FF_frt_6  (.D(n6[5]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(n6n9_q[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[1]~FF_frt_6 .CLK_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_6 .CE_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_6 .SR_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_6 .D_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_6 .SR_SYNC = 1'b1;
    defparam \count[1]~FF_frt_6 .SR_VALUE = 1'b0;
    defparam \count[1]~FF_frt_6 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[1]~FF_frt_5  (.D(n6[4]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(n6n10_q[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[1]~FF_frt_5 .CLK_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_5 .CE_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_5 .SR_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_5 .D_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_5 .SR_SYNC = 1'b1;
    defparam \count[1]~FF_frt_5 .SR_VALUE = 1'b0;
    defparam \count[1]~FF_frt_5 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[1]~FF_frt_4  (.D(n6[3]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(n6n11_q[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[1]~FF_frt_4 .CLK_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_4 .CE_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_4 .SR_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_4 .D_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_4 .SR_SYNC = 1'b1;
    defparam \count[1]~FF_frt_4 .SR_VALUE = 1'b0;
    defparam \count[1]~FF_frt_4 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[1]~FF_frt_3  (.D(n6_2[2]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(n6_2n12_q[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[1]~FF_frt_3 .CLK_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_3 .CE_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_3 .SR_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_3 .D_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_3 .SR_SYNC = 1'b1;
    defparam \count[1]~FF_frt_3 .SR_VALUE = 1'b0;
    defparam \count[1]~FF_frt_3 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[1]~FF_frt_2  (.D(n6[1]), .CE(en), .CLK(clk), .SR(rst), 
           .Q(n6n13_q[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[1]~FF_frt_2 .CLK_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_2 .CE_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_2 .SR_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_2 .D_POLARITY = 1'b1;
    defparam \count[1]~FF_frt_2 .SR_SYNC = 1'b1;
    defparam \count[1]~FF_frt_2 .SR_VALUE = 1'b0;
    defparam \count[1]~FF_frt_2 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[2]~FF_frt_1  (.D(n39), .CE(en), .CLK(clk), .SR(rst), 
           .Q(n39_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[2]~FF_frt_1 .CLK_POLARITY = 1'b1;
    defparam \count[2]~FF_frt_1 .CE_POLARITY = 1'b1;
    defparam \count[2]~FF_frt_1 .SR_POLARITY = 1'b1;
    defparam \count[2]~FF_frt_1 .D_POLARITY = 1'b1;
    defparam \count[2]~FF_frt_1 .SR_SYNC = 1'b1;
    defparam \count[2]~FF_frt_1 .SR_VALUE = 1'b0;
    defparam \count[2]~FF_frt_1 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[4]~FF_frt_0  (.D(n40), .CE(en), .CLK(clk), .SR(rst), 
           .Q(n40_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1, INIT_VALUE=1'b0 */ ;   // /home/hagen/school/fpga_comparison_project/up_counter.sv(18)
    defparam \count[4]~FF_frt_0 .CLK_POLARITY = 1'b1;
    defparam \count[4]~FF_frt_0 .CE_POLARITY = 1'b1;
    defparam \count[4]~FF_frt_0 .SR_POLARITY = 1'b1;
    defparam \count[4]~FF_frt_0 .D_POLARITY = 1'b1;
    defparam \count[4]~FF_frt_0 .SR_SYNC = 1'b1;
    defparam \count[4]~FF_frt_0 .SR_VALUE = 1'b0;
    defparam \count[4]~FF_frt_0 .SR_SYNC_PRIORITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_5e966cdb_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5e966cdb_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5e966cdb_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_5e966cdb_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_5e966cdb_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_5e966cdb_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_5e966cdb_2
// module not written out since it is a black box. 
//


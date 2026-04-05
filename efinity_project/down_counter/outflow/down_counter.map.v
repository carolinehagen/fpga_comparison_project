
//
// Verific Verilog Description of module down_counter
//

module down_counter (clk, rst, en, count, count_up) /* verific EFX_ATTRIBUTE_NETLIST__EFINITY_VERSION=2025.2.288.2.10 */ ;
    input clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(4)
    input rst /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(5)
    input en /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(6)
    output [7:0]count /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(7)
    output count_up /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(8)
    
    wire [7:0]n5;
    
    wire \sub_4/add_2/n2 , \sub_4/add_2/n4 , \sub_4/add_2/n14 , \sub_4/add_2/n12 , 
        \sub_4/add_2/n10 , \sub_4/add_2/n8 , \sub_4/add_2/n6 , n43, 
        n41_q, n42_q, n41, n42;
    
    EFX_LUT4 LUT__90 (.I0(n5[2]), .I1(n5[1]), .I2(n5[0]), .I3(n5[3]), 
            .O(n41)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__90.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__91 (.I0(n5[4]), .I1(n5[5]), .I2(n5[6]), .I3(n5[7]), 
            .O(n42)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__91.LUTMASK = 16'h0001;
    EFX_FF \count[2]~FF  (.D(n5[2]), .CE(en), .CLK(clk), .SR(rst), .Q(count[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(16)
    defparam \count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \count[2]~FF .CE_POLARITY = 1'b1;
    defparam \count[2]~FF .SR_POLARITY = 1'b1;
    defparam \count[2]~FF .D_POLARITY = 1'b1;
    defparam \count[2]~FF .SR_SYNC = 1'b1;
    defparam \count[2]~FF .SR_VALUE = 1'b0;
    defparam \count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[1]~FF  (.D(n5[1]), .CE(en), .CLK(clk), .SR(rst), .Q(count[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(16)
    defparam \count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \count[1]~FF .CE_POLARITY = 1'b1;
    defparam \count[1]~FF .SR_POLARITY = 1'b1;
    defparam \count[1]~FF .D_POLARITY = 1'b1;
    defparam \count[1]~FF .SR_SYNC = 1'b1;
    defparam \count[1]~FF .SR_VALUE = 1'b0;
    defparam \count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[0]~FF  (.D(n5[0]), .CE(en), .CLK(clk), .SR(rst), .Q(count[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(16)
    defparam \count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \count[0]~FF .CE_POLARITY = 1'b1;
    defparam \count[0]~FF .SR_POLARITY = 1'b1;
    defparam \count[0]~FF .D_POLARITY = 1'b1;
    defparam \count[0]~FF .SR_SYNC = 1'b1;
    defparam \count[0]~FF .SR_VALUE = 1'b0;
    defparam \count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[3]~FF  (.D(n5[3]), .CE(en), .CLK(clk), .SR(rst), .Q(count[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(16)
    defparam \count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \count[3]~FF .CE_POLARITY = 1'b1;
    defparam \count[3]~FF .SR_POLARITY = 1'b1;
    defparam \count[3]~FF .D_POLARITY = 1'b1;
    defparam \count[3]~FF .SR_SYNC = 1'b1;
    defparam \count[3]~FF .SR_VALUE = 1'b0;
    defparam \count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[4]~FF  (.D(n5[4]), .CE(en), .CLK(clk), .SR(rst), .Q(count[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(16)
    defparam \count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \count[4]~FF .CE_POLARITY = 1'b1;
    defparam \count[4]~FF .SR_POLARITY = 1'b1;
    defparam \count[4]~FF .D_POLARITY = 1'b1;
    defparam \count[4]~FF .SR_SYNC = 1'b1;
    defparam \count[4]~FF .SR_VALUE = 1'b0;
    defparam \count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[5]~FF  (.D(n5[5]), .CE(en), .CLK(clk), .SR(rst), .Q(count[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(16)
    defparam \count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \count[5]~FF .CE_POLARITY = 1'b1;
    defparam \count[5]~FF .SR_POLARITY = 1'b1;
    defparam \count[5]~FF .D_POLARITY = 1'b1;
    defparam \count[5]~FF .SR_SYNC = 1'b1;
    defparam \count[5]~FF .SR_VALUE = 1'b0;
    defparam \count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[6]~FF  (.D(n5[6]), .CE(en), .CLK(clk), .SR(rst), .Q(count[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(16)
    defparam \count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \count[6]~FF .CE_POLARITY = 1'b1;
    defparam \count[6]~FF .SR_POLARITY = 1'b1;
    defparam \count[6]~FF .D_POLARITY = 1'b1;
    defparam \count[6]~FF .SR_SYNC = 1'b1;
    defparam \count[6]~FF .SR_VALUE = 1'b0;
    defparam \count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[7]~FF  (.D(n5[7]), .CE(en), .CLK(clk), .SR(rst), .Q(count[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(16)
    defparam \count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \count[7]~FF .CE_POLARITY = 1'b1;
    defparam \count[7]~FF .SR_POLARITY = 1'b1;
    defparam \count[7]~FF .D_POLARITY = 1'b1;
    defparam \count[7]~FF .SR_SYNC = 1'b1;
    defparam \count[7]~FF .SR_VALUE = 1'b0;
    defparam \count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \sub_4/add_2/i1  (.I0(count[0]), .I1(1'b0), .CI(n43), .O(n5[0]), 
            .CO(\sub_4/add_2/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(15)
    defparam \sub_4/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \sub_4/add_2/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_4/add_2/i2  (.I0(count[1]), .I1(1'b1), .CI(\sub_4/add_2/n2 ), 
            .O(n5[1]), .CO(\sub_4/add_2/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(15)
    defparam \sub_4/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \sub_4/add_2/i2 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_4/add_2/i8  (.I0(count[7]), .I1(1'b1), .CI(\sub_4/add_2/n14 ), 
            .O(n5[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(15)
    defparam \sub_4/add_2/i8 .I0_POLARITY = 1'b1;
    defparam \sub_4/add_2/i8 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_4/add_2/i7  (.I0(count[6]), .I1(1'b1), .CI(\sub_4/add_2/n12 ), 
            .O(n5[6]), .CO(\sub_4/add_2/n14 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(15)
    defparam \sub_4/add_2/i7 .I0_POLARITY = 1'b1;
    defparam \sub_4/add_2/i7 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_4/add_2/i6  (.I0(count[5]), .I1(1'b1), .CI(\sub_4/add_2/n10 ), 
            .O(n5[5]), .CO(\sub_4/add_2/n12 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(15)
    defparam \sub_4/add_2/i6 .I0_POLARITY = 1'b1;
    defparam \sub_4/add_2/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_4/add_2/i5  (.I0(count[4]), .I1(1'b1), .CI(\sub_4/add_2/n8 ), 
            .O(n5[4]), .CO(\sub_4/add_2/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(15)
    defparam \sub_4/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \sub_4/add_2/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_4/add_2/i4  (.I0(count[3]), .I1(1'b1), .CI(\sub_4/add_2/n6 ), 
            .O(n5[3]), .CO(\sub_4/add_2/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(15)
    defparam \sub_4/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \sub_4/add_2/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_4/add_2/i3  (.I0(count[2]), .I1(1'b1), .CI(\sub_4/add_2/n4 ), 
            .O(n5[2]), .CO(\sub_4/add_2/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(15)
    defparam \sub_4/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \sub_4/add_2/i3 .I1_POLARITY = 1'b1;
    EFX_LUT4 LUT__92 (.I0(n41_q), .I1(n42_q), .O(count_up)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(18)
    defparam LUT__92.LUTMASK = 16'h1111;
    EFX_ADD \sub_4/add_2/i1__AUX_ADD_CI  (.I0(1'b1), .I1(1'b1), .CI(1'b0), 
            .CO(n43)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(15)
    defparam \sub_4/add_2/i1__AUX_ADD_CI .I0_POLARITY = 1'b1;
    defparam \sub_4/add_2/i1__AUX_ADD_CI .I1_POLARITY = 1'b1;
    EFX_FF \count[2]~FF_frt_1  (.D(n41), .CE(en), .CLK(clk), .SR(rst), 
           .Q(n41_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(16)
    defparam \count[2]~FF_frt_1 .CLK_POLARITY = 1'b1;
    defparam \count[2]~FF_frt_1 .CE_POLARITY = 1'b1;
    defparam \count[2]~FF_frt_1 .SR_POLARITY = 1'b1;
    defparam \count[2]~FF_frt_1 .D_POLARITY = 1'b0;
    defparam \count[2]~FF_frt_1 .SR_SYNC = 1'b1;
    defparam \count[2]~FF_frt_1 .SR_VALUE = 1'b0;
    defparam \count[2]~FF_frt_1 .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count[4]~FF_frt_0  (.D(n42), .CE(en), .CLK(clk), .SR(rst), 
           .Q(n42_q)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /home/hagen/school/fpga_comparison_project/down_counter.sv(16)
    defparam \count[4]~FF_frt_0 .CLK_POLARITY = 1'b1;
    defparam \count[4]~FF_frt_0 .CE_POLARITY = 1'b1;
    defparam \count[4]~FF_frt_0 .SR_POLARITY = 1'b1;
    defparam \count[4]~FF_frt_0 .D_POLARITY = 1'b0;
    defparam \count[4]~FF_frt_0 .SR_SYNC = 1'b1;
    defparam \count[4]~FF_frt_0 .SR_VALUE = 1'b0;
    defparam \count[4]~FF_frt_0 .SR_SYNC_PRIORITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_6278f67a_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_6278f67a_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_6278f67a_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_6278f67a_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_6278f67a_1
// module not written out since it is a black box. 
//


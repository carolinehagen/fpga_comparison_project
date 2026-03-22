set_device -family {RTG4} -die {RT4G150L} -speed {STD}
read_verilog -mode system_verilog {/home/hagen/school/fpga_comparison_project/libero_project/libero_project/hdl/down_counter.sv}
set_top_level {down_counter}
map_netlist
check_constraints {/home/hagen/school/fpga_comparison_project/libero_project/libero_project/constraint/synthesis_sdc_errors.log}
write_fdc {/home/hagen/school/fpga_comparison_project/libero_project/libero_project/designer/down_counter/synthesis.fdc}

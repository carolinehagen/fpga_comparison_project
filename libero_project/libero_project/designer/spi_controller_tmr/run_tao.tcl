set_device -family {RTG4} -die {RT4G150L} -speed {STD}
read_verilog -mode system_verilog {/home/hagen/school/fpga_comparison_project/libero_project/libero_project/hdl/spi_controller.sv}
read_verilog -mode system_verilog {/home/hagen/school/fpga_comparison_project/libero_project/libero_project/hdl/spi_controller_tmr.sv}
set_top_level {spi_controller_tmr}
map_netlist
check_constraints {/home/hagen/school/fpga_comparison_project/libero_project/libero_project/constraint/synthesis_sdc_errors.log}
write_fdc {/home/hagen/school/fpga_comparison_project/libero_project/libero_project/designer/spi_controller_tmr/synthesis.fdc}

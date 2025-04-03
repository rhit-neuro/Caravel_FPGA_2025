set_property SRC_FILE_INFO {cfile:c:/Xilinx/CaravelFPGA/Caravel_FPGA_2025/CARAVEL/CARAVEL.srcs/sources_1/ip/clk_fix_1/clk_fix.xdc rfile:../../../CARAVEL.srcs/sources_1/ip/clk_fix_1/clk_fix.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1

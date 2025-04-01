set_property SRC_FILE_INFO {cfile:/home/beandog/senior-design/Caravel_FPGA_2025/CARAVEL/CARAVEL.gen/sources_1/ip/clk_fix/clk_fix.xdc rfile:../../../CARAVEL.gen/sources_1/ip/clk_fix/clk_fix.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100

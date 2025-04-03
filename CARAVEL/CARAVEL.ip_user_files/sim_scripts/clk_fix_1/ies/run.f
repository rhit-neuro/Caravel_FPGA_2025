-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../CARAVEL.srcs/sources_1/ip/clk_fix_1/clk_fix_clk_wiz.v" \
  "../../../../CARAVEL.srcs/sources_1/ip/clk_fix_1/clk_fix.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


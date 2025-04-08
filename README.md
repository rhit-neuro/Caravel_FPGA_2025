# Caravel FPGA 2025
See [this link](https://github.com/efabless/Caravel_on_FPGA) to original repo by Efabless.
## Adding VexRiscv Core:
- Generated compatible VexRiscv core using [this SpinalHDL](https://github.com/SpinalHDL/VexRiscv) repo. The file used is found [here](SpinalHDL_Scala_files/VexRiscvCachedWishboneForSim.scala) and was run from [this folder](https://github.com/SpinalHDL/VexRiscv/tree/master/src/main/scala/vexriscv/demo) using the SinalHDL instructions.
- The generated verilog VexRiscv core was imported into a Vivado project containing all of the verilog from [this folder](CARAVEL/CARAVEL.srcs/sources_1/imports/src).
## Configuring the original repo for Nexys A7:
- We did not have a Cmod Artix 7-35T FPGA or QSPI SST26VF080A Flash module, so we used the Nexys A7-100T Digilent board as it has an integrated QSPI flash connected directly to FPGA fabric.
- The Cmod Artix 7-35T has a 12MHz oscillator but our Nexys A7-100T has a 100MHz oscillator, so we used Vivado Clock wizard to generate a clk_fix part to convert clocks as seen [here](CARAVEL/CARAVEL.srcs/sources_1/imports/src/caravel.v).
- The clock pin to the Nexys QSPI flash is not accessable using the I/O planner and instead must be set with the STARTUPE2 primative. Our configuration of STARTUPE2 is found [here](CARAVEL/CARAVEL.srcs/sources_1/imports/src/caravel.v).
- Since we are using a different FPGA, we had to make our own configuration file. Our configuration file is found [here](CARAVEL/CARAVEL.srcs/constrs_1/new/CARVEL.xdc).
- We used the Raspberry Pi Pico method of flashing the QSPI flash as described by the original repo. However, we had to alter some of the code for compatability with our flash. The updated code is found [here](Micropython_scripts/flash).
## Loading Caravel and Flashing the QSPI Flash
The steps are similar to those described in the original repo:
- We did not make our own program, we used the hex file from the original repo found [here](hex_file/debug_gpio.hex) and [here](Micropython_scripts/debug_gpio.hex) with minor changes to work with our specific flash modules.
- We used Vivado to program the FPGA with Caravel as described by the original repo.
- Our hardware connections are changed to the following:
	- No need to connect an external flash
	- FPGA PMOD JC1 (mprj_io[1]/SDO) will be connected to pin 6 in Raspberry pi pico (MISO/ SPIO RX)
	- FPGA PMOD JC2 (mprj_io[2]/SDI) will be connected to pin 5 in Raspberry pi pico (MOSI/ SPIO TX)
	- FPGA PMOD JC3 (mprj_io[3]/CSB) will be connected to pin 7 in Raspberry pi pico (SPIO CSn)
	- FPGA PMOD JC4 (mprj_io[4]/SCK) will be connected to pin 4 in Raspberry pi pico (SPIO SCK)
- We followed the original repo instructions for setting up the Raspberry Pi Pico.
## Original Repo Step 2: Caravel implementation on FPGA
- At this point Caravel should be flashing LED0 on the Nexys FPGA, proving that Caravel is running.
- We did not verify that step 2 works, this is left for future groups.

 # Userspace Implementation
 ![architecture-2425.png](https://github.com/rhit-neuro/Caravel_FPGA_2025/blob/main/architecture-2425.PNG)
## 24-25_npu
Our current userspace implementation [24-25_npu](https://github.com/rhit-neuro/24-25_npu) exists as a submodule in this repo and can be installed into the caravel userspace by simply importing the files and instantiating TopLevel.v in __user_project_wrapper.v

### Important notes for future users
- Copying files into the project is not advised, in this case it is easier to import without copying which allows for updating [24-25_npu](https://github.com/rhit-neuro/24-25_npu) without re-importing files.
- Wishbone can only be driven by a single module (wbs_ack_o and wbs_dat_o). For current LED testing, we are allowing debug_regs.v to control these two lines, however that will need to be changed for testing the userspace.

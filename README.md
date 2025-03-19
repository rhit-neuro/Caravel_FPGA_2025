# Caravel FPGA 2025

This repo would be much more appropriate as a fork of [Caravel_on_FPGA](https://github.com/efabless/Caravel_on_FPGA) but as it was created during the initial stages of testing is not setup in that way.

## Reaching this point

This section details what the minimum steps required to go from the base [Caravel_on_FPGA](https://github.com/efabless/Caravel_on_FPGA) repo to a version usable in this project.

1. Downloading files and importing to a project.

    To use caravel, the verilog files found in:
    ```console
    Caravel_on_FPGA/Caravel/src
    ```
    are required, and the project should be set with ``` caravel.v ``` as the top level.

2. Adding a CPU 
    To synthesize this repo and run code, you must add one of a specific set of CPUs to the project. Todo this

    a. Generate the verilog code for a VexRiscv processor using scala to compile from the [VexRiscv](https://github.com/SpinalHDL/VexRiscv) repo. You may choose any configuration you like as they will all generate with the same IO, currently a minimal processor is inserted.

    b. Insert your processor. In ``` caravel/chip_core/soc/core ``` you will instantiate your ``` cpu.v ``` module, by default the instantiation comes with a broken IP and is generated at around line 8400 of the ``` mgmt_core.v ``` module. The IO connections from the generated processor and what is in by default will not match, however they do match 1 for 1. 
    ### Note at step b
    Currently the interupt lines are not correctly connected and will need to be in future implementation.

3. Setting up IO
    
    At this point you will be able to synthesize caravel with the provided userspace but will not be able to generate a bitstream until IO is set. [update this once we understand IO]



## Known issues with out implementation
- Unable to run code, tried manually loading into instruction cache unsuccessfully
- mproj_io, the top level visibility of this is still unclear. We do not know if it should be visible or how it maps in comparison with the rest of the scalar IO.
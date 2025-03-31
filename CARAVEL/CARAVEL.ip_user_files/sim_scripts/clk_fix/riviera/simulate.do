onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+clk_fix -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clk_fix xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {clk_fix.udo}

run -all

endsim

quit -force

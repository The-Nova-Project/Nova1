onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib xlx_design_subsystem_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {xlx_design_subsystem.udo}

run -all

quit -force

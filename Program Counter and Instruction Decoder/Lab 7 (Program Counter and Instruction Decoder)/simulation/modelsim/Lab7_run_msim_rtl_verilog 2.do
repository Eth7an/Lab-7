transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 7\ (Program\ Counter\ and\ Instruction\ Decoder) {C:/intelFPGA_lite/Lab 7 (Program Counter and Instruction Decoder)/Lab7.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 7\ (Program\ Counter\ and\ Instruction\ Decoder) {C:/intelFPGA_lite/Lab 7 (Program Counter and Instruction Decoder)/ProgramCounter.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 7\ (Program\ Counter\ and\ Instruction\ Decoder) {C:/intelFPGA_lite/Lab 7 (Program Counter and Instruction Decoder)/InstructionDecoder.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 7\ (Program\ Counter\ and\ Instruction\ Decoder) {C:/intelFPGA_lite/Lab 7 (Program Counter and Instruction Decoder)/ALU.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 7\ (Program\ Counter\ and\ Instruction\ Decoder) {C:/intelFPGA_lite/Lab 7 (Program Counter and Instruction Decoder)/Mux.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 7\ (Program\ Counter\ and\ Instruction\ Decoder) {C:/intelFPGA_lite/Lab 7 (Program Counter and Instruction Decoder)/ROM.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Lab\ 7\ (Program\ Counter\ and\ Instruction\ Decoder) {C:/intelFPGA_lite/Lab 7 (Program Counter and Instruction Decoder)/Lab7_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  Lab7_testbench

add wave *
view structure
view signals
run -all

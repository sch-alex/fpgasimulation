if [file exists work] {vdel -all}
vlib work
vlog top.sv
vsim  top -sv_seed 1
run -all
quit







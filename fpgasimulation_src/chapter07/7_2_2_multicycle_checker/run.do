if [file exists work] {vdel -all}
vlib work
vlog -f compile.f
vsim  top -assertdebug;
log -r /*
run 400
do wave.do


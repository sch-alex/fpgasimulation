if [file exists "work"] {vdel -all}
vlib work
vlog -f compile_sv.f 
vsim top  -assertdebug
onbreak {resume}
log -r /*
run -all
quit -f





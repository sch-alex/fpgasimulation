if [file exists work] {vdel -all}
vlib work
vlog -f compile.f
vcom cache_vhd_pkg.vhd
vcom -coverExcludeDefault -cover s tiny_cache.vhd
vsim -coverage top
set NoQuitOnFinish 1
set NumericStdNoWarnings 1
set StdArithNoWarnings 1
onbreak {resume};
run -all
coverage report -code s -details -file coverage.txt
quit 

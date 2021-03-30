if [file exists work] {vdel -all}
vlib work
vlog -f compile.f
vcom ../../tiny_cache/cache_vhd_pkg.vhd
vcom -coverExcludeDefault -cover b ../../tiny_cache/tiny_cache.vhd
vsim -coverage top
set NoQuitOnFinish 1
set NumericStdNoWarnings 1
set StdArithNoWarnings 1
onbreak {resume};
run -all
coverage report -details -file coverage.txt


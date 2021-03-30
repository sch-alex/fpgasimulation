if [file exists work] {vdel -all}
vlib work
vlog -f compile.f
vlog -coverExcludeDefault -cover c tiny_cache.v
vsim -coverage top
set NoQuitOnFinish 1
set NumericStdNoWarnings 1
set StdArithNoWarnings 1
onbreak {resume};
run -all
coverage report -details -file coverage.txt

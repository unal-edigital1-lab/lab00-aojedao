transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/alejo/Documents/UN/Digital/Lab/lab00-aojedao/hdl/src {C:/Users/alejo/Documents/UN/Digital/Lab/lab00-aojedao/hdl/src/SumadorDe4Bits.v}
vlog -vlog01compat -work work +incdir+C:/Users/alejo/Documents/UN/Digital/Lab/lab00-aojedao/hdl/src {C:/Users/alejo/Documents/UN/Digital/Lab/lab00-aojedao/hdl/src/sum1bcc.v}

vlog -vlog01compat -work work +incdir+C:/Users/alejo/Documents/UN/Digital/Lab/lab00-aojedao/hdl/src {C:/Users/alejo/Documents/UN/Digital/Lab/lab00-aojedao/hdl/src/Testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all

transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {full_adder.vo}

vlog -vlog01compat -work work +incdir+C:/Users/xxxau/Desktop/ComArch/Week10_2 {C:/Users/xxxau/Desktop/ComArch/Week10_2/full_adder_testbench.v}
vlog -vlog01compat -work work +incdir+C:/Users/xxxau/Desktop/ComArch/Week10_2 {C:/Users/xxxau/Desktop/ComArch/Week10_2/full_adder.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  testbench

do C:/Users/xxxau/Desktop/ComArch/Week10_2/Tcl_script.tcl

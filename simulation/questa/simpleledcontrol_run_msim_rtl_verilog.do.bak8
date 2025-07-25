transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Projects/My_projects/Simple_LED_Control/RTL {C:/intelFPGA_lite/Projects/My_projects/Simple_LED_Control/RTL/simpleledcontrol.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/Projects/My_projects/Simple_LED_Control/tb {C:/intelFPGA_lite/Projects/My_projects/Simple_LED_Control/tb/tb_simpleledcontrol.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_simpleledcontrol

do C:/intelFPGA_lite/Projects/My_projects/Simple_LED_Control/simulation/run_simpleled.do

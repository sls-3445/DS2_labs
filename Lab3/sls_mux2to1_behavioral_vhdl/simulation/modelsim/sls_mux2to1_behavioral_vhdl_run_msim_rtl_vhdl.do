transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/sls3445/Documents/DS2_Labs/Lab3/sls_mux2to1_behavioral_vhdl/sls_mux2to1_behavioral_vhdl.vhd}

vcom -93 -work work {C:/Users/sls3445/Documents/DS2_Labs/Lab3/sls_mux2to1_behavioral_vhdl/sls_mux2to1_behavioral_vhdl_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  sls_mux2to1_behavioral_vhdl_tb

add wave *
view structure
view signals
run -all

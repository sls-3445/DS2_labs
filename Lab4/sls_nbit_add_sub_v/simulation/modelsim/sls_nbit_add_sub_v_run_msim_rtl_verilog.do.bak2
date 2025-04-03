transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/sls3445/Documents/DS2_Labs/Lab4/sls_nbit_add_sub_v {C:/Users/sls3445/Documents/DS2_Labs/Lab4/sls_nbit_add_sub_v/sls_nbit_add_sub_v.v}

vlog -vlog01compat -work work +incdir+C:/Users/sls3445/Documents/DS2_Labs/Lab4/sls_nbit_add_sub_v {C:/Users/sls3445/Documents/DS2_Labs/Lab4/sls_nbit_add_sub_v/sls_nbit_add_sub_v_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  sls_nbit_add_sub_v_tb

add wave *
view structure
view signals
run -all

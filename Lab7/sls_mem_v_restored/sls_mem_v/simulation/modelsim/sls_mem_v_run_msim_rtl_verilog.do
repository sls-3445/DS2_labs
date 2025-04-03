transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_mem_v {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_mem_v/sls_mem_fpga_emulation.v}
vlog -vlog01compat -work work +incdir+C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_mem_v {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_mem_v/sls_mem_cu_v.v}
vlog -vlog01compat -work work +incdir+C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_mem_v {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_mem_v/sls_rom_v.v}
vlog -vlog01compat -work work +incdir+C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_mem_v {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_mem_v/sls_ram_v.v}
vlog -vlog01compat -work work +incdir+C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_8bit_upcnt_v {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_8bit_upcnt_v/sls_8bit_upcnt_v.v}
vlog -vlog01compat -work work +incdir+C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_4bit_reg_v {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_4bit_reg_v/sls_4bit_reg_v.v}
vlog -vlog01compat -work work +incdir+C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_mem_v {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_mem_v/sls_mem_v.v}

vlog -vlog01compat -work work +incdir+C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_mem_v {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_v_restored/sls_mem_v/sls_mem_v_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  sls_mem_v_tb

add wave *
view structure
view signals
run -all

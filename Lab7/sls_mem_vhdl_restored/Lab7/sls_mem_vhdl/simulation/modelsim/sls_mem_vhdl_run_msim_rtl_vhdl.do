transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_vhdl_restored/Lab7/sls_mem_vhdl/sls_ram_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_vhdl_restored/sls_package.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_vhdl_restored/Lab7/sls_mem_vhdl/sls_rom_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_vhdl_restored/Lab7/sls_8bit_upcnt_vhdl/sls_8bit_upcnt_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_vhdl_restored/Lab7/sls_4bit_reg_vhdl/sls_4bit_reg_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_vhdl_restored/Lab7/sls_mem_vhdl/sls_mem_fpga_emulation_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_vhdl_restored/Lab7/sls_mem_vhdl/sls_mem_cu_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_vhdl_restored/Lab7/sls_mem_vhdl/sls_mem_vhdl.vhd}

vcom -93 -work work {C:/Users/sls3445/Documents/DS2_Labs/Lab7/sls_mem_vhdl_restored/Lab7/sls_mem_vhdl/sls_mem_vhdl_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  sls_mem_vhdl_tb

add wave *
view structure
view signals
run -all

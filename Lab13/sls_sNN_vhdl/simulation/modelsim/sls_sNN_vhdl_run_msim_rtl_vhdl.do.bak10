transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_PSRM_package.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_16bit_signed_add_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_signed_comparator.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_16bit_signed_mult_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/pixData_rom_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/olw_rom_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/oldatain_ram_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/olAddrsCnt_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/hlw_rom_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/hlAddrsCnt_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_nbit_reg_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_package.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_nbit_mux2to1_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_simpleneuron_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_signis_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_nbit_mux4to1_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_sNN_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_sNN_DP_vhdl.vhd}
vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_sNN_CU_vhdl.vhd}

vcom -2008 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_vhdl/sls_sNN_vhdl_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  sls_sNN_vhdl_tb

add wave *
view structure
view signals
run -all

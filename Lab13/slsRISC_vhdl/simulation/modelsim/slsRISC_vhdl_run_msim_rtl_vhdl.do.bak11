transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_RISC_package.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_package.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_nbit_upcnt_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_nbit_mux2to1_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_MM_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_alu_package.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_8bit_add_sub_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_8bit_4loc_stack_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_8bit_sr_unit_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_8bit_arith_unit_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/slsRISC_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/slsRISC_DP_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/slsRISC_CU_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_nbit_reg_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_nbit_mux4to1_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_IW2ASCII_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_8bit_logic_unit_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_8bit_const_unit_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/sls_8bit_alu_struc_vhdl.vhd}

vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab9/slsRISC_vhdl/slsRISC_vhdl_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  slsRISC_vhdl_tb

add wave *
view structure
view signals
run -all

transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/Documents/School/Year_2.2/EEEE_220/Labs_from_desktop/Lab9/dxpRISC_vNMMIOP_vhdl_restored/dxp_package.vhd}
vcom -93 -work work {Z:/Documents/School/Year_2.2/EEEE_220/Labs_from_desktop/Lab9/dxpRISC_vNMMIOP_vhdl_restored/dxp_8bit_alu_beh_vhdl.vhd}
vcom -93 -work work {Z:/Documents/School/Year_2.2/EEEE_220/Labs_from_desktop/Lab9/dxpRISC_vNMMIOP_vhdl_restored/dxp_MM_vNMMIOP_vhdl.vhd}
vcom -93 -work work {Z:/Documents/School/Year_2.2/EEEE_220/Labs_from_desktop/Lab9/dxpRISC_vNMMIOP_vhdl_restored/dxp_IW2ASCII_vhdl.vhd}
vcom -93 -work work {Z:/Documents/School/Year_2.2/EEEE_220/Labs_from_desktop/Lab9/dxpRISC_vNMMIOP_vhdl_restored/dxpRISC_vNMMIOP_vhdl.vhd}
vcom -93 -work work {Z:/Documents/School/Year_2.2/EEEE_220/Labs_from_desktop/Lab9/dxpRISC_vNMMIOP_vhdl_restored/dxpRISC_vNMMIOP_DP_vhdl.vhd}
vcom -93 -work work {Z:/Documents/School/Year_2.2/EEEE_220/Labs_from_desktop/Lab9/dxpRISC_vNMMIOP_vhdl_restored/dxpRISC_vNMMIOP_CU_vhdl.vhd}
vcom -93 -work work {Z:/Documents/School/Year_2.2/EEEE_220/Labs_from_desktop/Lab9/dxpRISC_vNMMIOP_vhdl_restored/dxp_nbit_reg_vhdl.vhd}
vcom -93 -work work {Z:/Documents/School/Year_2.2/EEEE_220/Labs_from_desktop/Lab9/dxpRISC_vNMMIOP_vhdl_restored/dxp_nbit_mux4to1_vhdl.vhd}
vcom -93 -work work {Z:/Documents/School/Year_2.2/EEEE_220/Labs_from_desktop/Lab9/dxpRISC_vNMMIOP_vhdl_restored/dxp_nbit_mux2to1_vhdl.vhd}
vcom -93 -work work {Z:/Documents/School/Year_2.2/EEEE_220/Labs_from_desktop/Lab9/dxpRISC_vNMMIOP_vhdl_restored/dxp_nbit_cntup_vhdl.vhd}
vcom -93 -work work {Z:/Documents/School/Year_2.2/EEEE_220/Labs_from_desktop/Lab9/dxpRISC_vNMMIOP_vhdl_restored/dxp_8bit_4loc_stack_vhdl.vhd}

vcom -93 -work work {Z:/Documents/School/Year_2.2/EEEE_220/Labs_from_desktop/Lab9/dxpRISC_vNMMIOP_vhdl_restored/dxpRISC_vNMMIOP_vhdl_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  dxpRISC_vNMMIOP_vhdl_tb

add wave *
view structure
view signals
run -all

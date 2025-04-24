transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/pixData_rom_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/olw_rom_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/oldatain_ram_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/olAddrsCnt_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/hlw_rom_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/hlAddrsCnt_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/dxp_signed_comparator.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/dxp_16bit_signed_add_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/sls_xor2.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/sls_SSRM_package.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/sls_not.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/sls_nbit_mux2to1_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/sls_nbit_add_sub_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/sls_nbit_2sc_out_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/sls_nbitSFR_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/sls_dff_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/sls_and2.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/slow_clock_generator.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/dxp_package.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/dxp_nbit_reg_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/sls_SSRM_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/sls_nbit_2sc_in_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/dxp_sNN_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/dxp_sNN_DP_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/dxp_sNN_CU_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/dxp_simpleneuron_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/dxp_signis_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/dxp_nbit_mux4to1_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/dxp_nbit_mux2to1_vhdl.vhd}

vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab13/sls_sNN_SSRM_new/dxp_sNN_vhdl_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  dxp_sNN_vhdl_tb

add wave *
view structure
view signals
run -all

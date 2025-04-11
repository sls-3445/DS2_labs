transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab11/sls_SSRM_vhdl/sls_xor2.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab11/sls_SSRM_vhdl/sls_not.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab11/sls_SSRM_vhdl/sls_nbitSFR_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab11/sls_SSRM_vhdl/sls_nbit_mux2to1_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab11/sls_SSRM_vhdl/sls_nbit_add_sub_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab11/sls_SSRM_vhdl/sls_dff_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab11/sls_SSRM_vhdl/sls_and2.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab11/sls_SSRM_vhdl/sls_nbit_2sc_out_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab11/sls_SSRM_vhdl/sls_SSRM_package.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab11/sls_SSRM_vhdl/sls_nbit_2sc_in_vhdl.vhd}
vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab11/sls_SSRM_vhdl/sls_SSRM_vhdl.vhd}

vcom -93 -work work {C:/Users/sls3445/Documents/DS2_labs/Lab11/sls_SSRM_vhdl/sls_SSRM_vhdl_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  sls_SSRM_vhdl_tb

add wave *
view structure
view signals
run -all

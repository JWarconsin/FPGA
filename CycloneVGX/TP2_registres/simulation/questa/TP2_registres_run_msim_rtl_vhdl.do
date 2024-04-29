transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/FPGA/FPGA/CycloneVGX/TP2_registres/shift_register_SISO8.vhd}

vcom -93 -work work {C:/FPGA/FPGA/CycloneVGX/TP2_registres/tb_shift_register_SISO8.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  tb_shift_register_SISO8

add wave *
view structure
view signals
run -all

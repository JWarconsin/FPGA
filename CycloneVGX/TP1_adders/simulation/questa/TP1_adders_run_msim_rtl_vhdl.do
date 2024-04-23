transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/FPGA/FPGA/CycloneVGX/TP1_adders/full_adder_4b.vhd}
vcom -93 -work work {C:/FPGA/FPGA/CycloneVGX/TP1_adders/half_adder.vhd}
vcom -93 -work work {C:/FPGA/FPGA/CycloneVGX/TP1_adders/full_adder.vhd}
vcom -93 -work work {C:/FPGA/FPGA/CycloneVGX/TP1_adders/toplevel.vhd}

vcom -93 -work work {C:/FPGA/FPGA/CycloneVGX/TP1_adders/tb_full_adder_4b.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  tb_full_adder_4b

add wave *
view structure
view signals
run -all

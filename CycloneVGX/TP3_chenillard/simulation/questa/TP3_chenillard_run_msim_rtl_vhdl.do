transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/FPGA/FPGA/CycloneVGX/TP3_chenillard/chenillard.vhd}


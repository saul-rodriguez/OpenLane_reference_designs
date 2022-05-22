# User config
set ::env(DESIGN_NAME) core_cells


#################
#General setup  #
#################
set script_dir [file dirname [file normalize [info script]]]
set ::env(VERILOG_FILES) "\
    $script_dir/src/core_cells.v"    
set ::env(VERILOG_FILES_BLACKBOX) "\
    $script_dir/src/counter.v"
set ::env(EXTRA_LEFS) "\   
    $script_dir/macros/counter.lef"
set ::env(EXTRA_GDS_FILES) "\   
    $script_dir/macros/counter.gds"
set ::env(CLOCK_PERIOD) "10.0"
set ::env(CLOCK_PORT) "clk"
set ::env(DESIGN_IS_CORE) 1
set ::env(CLOCK_TREE_SYNTH) 1
set ::enc(SYNTH_MAX_FANOUT) 5
 
##############
# Floor plan #
##############
set ::env(FP_SIZING) "absolute"
set ::env(DIE_AREA) "0 0 500 500"

######################
# Power grid routing #
######################
set ::env(FP_PDN_CORE_RING) 1
set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]
set ::env(SYNTH_USE_PG_PINS_DEFINES) "USE_POWER_PINS"
set ::env(MAGIC_ZEROIZE_ORIGIN) 0

# Power ring parameters
set ::env(FP_PDN_CORE_RING_VWIDTH) 3 
set ::env(FP_PDN_CORE_RING_HWIDTH) $::env(FP_PDN_CORE_RING_VWIDTH) 
set ::env(FP_PDN_CORE_RING_VOFFSET) 14 
set ::env(FP_PDN_CORE_RING_HOFFSET) $::env(FP_PDN_CORE_RING_VOFFSET) 
set ::env(FP_PDN_CORE_RING_VSPACING) 1.7 
set ::env(FP_PDN_CORE_RING_HSPACING) $::env(FP_PDN_CORE_RING_VSPACING) 

set ::env(FP_PDN_VSPACING) [expr 5*$::env(FP_PDN_CORE_RING_VWIDTH)]
set ::env(FP_PDN_HSPACING) [expr 5*$::env(FP_PDN_CORE_RING_HWIDTH)]

# vertical and horizontal power stripes
set ::env(FP_PDN_VWIDTH) 3 
set ::env(FP_PDN_HWIDTH) 3 
set ::env(FP_PDN_VOFFSET) 0 
set ::env(FP_PDN_HOFFSET) $::env(FP_PDN_VOFFSET) 
set ::env(FP_PDN_VPITCH) 180 
set ::env(FP_PDN_HPITCH) $::env(FP_PDN_VPITCH) 

#set ::env(FP_PDN_CHECK_NODES) 0

##########################
# Cell & Macro Placement #
##########################
set ::env(MACRO_PLACEMENT_CFG) $::env(DESIGN_DIR)/macro_placement.cfg
set ::env(FP_PDN_MACRO_HOOKS) "\
    c1 vccd1 vssd1,\
    c2 vccd1 vssd1"
set ::env(PL_TARGET_DENSITY) 0.35

# The following is because there ARE std cells in the core.
#set ::env(SYNTH_TOP_LEVEL) 1
set ::env(PL_RANDOM_GLB_PLACEMENT) 1

#set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 0
#set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 0
#set ::env(PL_RESIZER_BUFFER_INPUT_PORTS) 0
#set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS) 0

#set ::env(FP_PDN_ENABLE_RAILS) 0
#set ::env(DIODE_INSERTION_STRATEGY) 0
#set ::env(FILL_INSERTION) 0
#set ::env(TAP_DECAP_INSERTION) 0

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}


# User config
set ::env(DESIGN_NAME) counter

# General Setup
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]
set ::env(CLOCK_PERIOD) "10.0"
set ::env(CLOCK_PORT) "clk"
set ::env(DESIGN_IS_CORE) 0


# Floorplan config
set ::env(FP_SIZING) "relative"
set ::env(FP_CORE_UTIL) 1.5
set ::env(FP_ASPECT_RATIO) 2.0
set ::env(FP_PDN_CORE_RING) 0

# Global routing
set ::env(RT_MAX_LAYER) {met4}
set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]

#Placement config
set ::env(PL_RANDOM_GLB_PLACEMENT) 1
set ::env(PL_TARGET_DENSITY) 0.2

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}


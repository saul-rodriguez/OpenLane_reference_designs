#!/usr/bin/env openroad
set ::env(PL_ESTIMATE_PARASITICS) {1};
set ::env(OR_SCRIPT_4) {openlane/scripts/openroad/layer_adjustments.tcl};
set ::env(TECH_METAL_LAYERS) {li1  met1  met2  met3  met4  met5};
set ::env(GLB_RT_MACRO_EXTENSION) {0};
set ::env(STA_PRE_CTS) {1};
set ::env(RT_MIN_LAYER) {met1};
set ::env(SAVE_DEF) {./out.def};
set ::env(PL_TARGET_DENSITY) {0.35};
set ::env(PL_BASIC_PLACEMENT) {0};
set ::env(CELL_PAD_EXCLUDE) {sky130_fd_sc_hd__tap* sky130_fd_sc_hd__decap* sky130_ef_sc_hd__decap* sky130_fd_sc_hd__fill*};
set ::env(DESIGN_NAME) {core_cells};
set ::env(OR_SCRIPT_2) {openlane/scripts/openroad/set_rc.tcl};
set ::env(SCRIPTS_DIR) {openlane/scripts};
set ::env(PL_SKIP_INITIAL_PLACEMENT) {0};
set ::env(STA_LEF) {./tmp/merged.nom.lef};
set ::env(MERGED_LEF_UNPADDED) {./tmp/merged.unpadded.nom.lef};
set ::env(RT_MAX_LAYER) {met5};
set ::env(PL_ROUTABILITY_DRIVEN) {1};
set ::env(CLOCK_PORT) {clk};
set ::env(GLB_RT_ADJUSTMENT) {0.3};
set ::env(PL_TIME_DRIVEN) {1};
set ::env(CELL_PAD) {4};
set ::env(OR_SCRIPT_3) {openlane/scripts/openroad/set_routing_layers.tcl};
set ::env(CURRENT_SDC) {./tmp/floorplan/3-initial_fp.sdc};
set ::env(RUN_STANDALONE) {1};
set ::env(OR_SCRIPT_0) {openlane/scripts/openroad/replace.tcl};
set ::env(WIRE_RC_LAYER) {met1};
set ::env(CURRENT_NETLIST) {./results/synthesis/core_cells.v};
set ::env(GLB_RT_LAYER_ADJUSTMENTS) {0.99,0,0,0,0,0};
set ::env(LIB_SYNTH_COMPLETE) {pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib};
set ::env(OR_SCRIPT_1) {./tmp/floorplan/3-initial_fp.sdc};
set ::env(CURRENT_DEF) {./in.def};
set ::env(OR_SCRIPT_5) {openlane/scripts/openroad/sta.tcl};
source $::env(OR_SCRIPT_0)
    
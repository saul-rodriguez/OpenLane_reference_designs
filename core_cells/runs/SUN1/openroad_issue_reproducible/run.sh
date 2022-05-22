#!/bin/sh
dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cd $dir;
export PL_ESTIMATE_PARASITICS='1';
export OR_SCRIPT_4='openlane/scripts/openroad/layer_adjustments.tcl';
export TECH_METAL_LAYERS='li1  met1  met2  met3  met4  met5';
export GLB_RT_MACRO_EXTENSION='0';
export STA_PRE_CTS='1';
export RT_MIN_LAYER='met1';
export SAVE_DEF='./out.def';
export PL_TARGET_DENSITY='0.35';
export PL_BASIC_PLACEMENT='0';
export CELL_PAD_EXCLUDE='sky130_fd_sc_hd__tap* sky130_fd_sc_hd__decap* sky130_ef_sc_hd__decap* sky130_fd_sc_hd__fill*';
export DESIGN_NAME='core_cells';
export OR_SCRIPT_2='openlane/scripts/openroad/set_rc.tcl';
export SCRIPTS_DIR='openlane/scripts';
export PL_SKIP_INITIAL_PLACEMENT='0';
export STA_LEF='./tmp/merged.nom.lef';
export MERGED_LEF_UNPADDED='./tmp/merged.unpadded.nom.lef';
export RT_MAX_LAYER='met5';
export PL_ROUTABILITY_DRIVEN='1';
export CLOCK_PORT='clk';
export GLB_RT_ADJUSTMENT='0.3';
export PL_TIME_DRIVEN='1';
export CELL_PAD='4';
export OR_SCRIPT_3='openlane/scripts/openroad/set_routing_layers.tcl';
export CURRENT_SDC='./tmp/floorplan/3-initial_fp.sdc';
export RUN_STANDALONE='1';
export OR_SCRIPT_0='openlane/scripts/openroad/replace.tcl';
export WIRE_RC_LAYER='met1';
export CURRENT_NETLIST='./results/synthesis/core_cells.v';
export GLB_RT_LAYER_ADJUSTMENTS='0.99,0,0,0,0,0';
export LIB_SYNTH_COMPLETE='pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib';
export OR_SCRIPT_1='./tmp/floorplan/3-initial_fp.sdc';
export CURRENT_DEF='./in.def';
export OR_SCRIPT_5='openlane/scripts/openroad/sta.tcl';
OPENROAD_BIN=${OPENROAD_BIN:-openroad}
$OPENROAD_BIN -exit $OR_SCRIPT_0
    
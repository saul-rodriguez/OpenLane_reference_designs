
if { [info exist ::env(MAGIC_EXT_USE_GDS)] && $::env(MAGIC_EXT_USE_GDS) } {
	gds read $::env(CURRENT_GDS)
} else {
	lef read /home/saul/installs/openlane/OpenLane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef
	if {  [info exist ::env(EXTRA_LEFS)] } {
		set lefs_in $::env(EXTRA_LEFS)
		foreach lef_file $lefs_in {
			lef read $lef_file
		}
	}
	def read /openlane/designs/core_cells/runs/SUN3/results/routing/core_cells.def
}
load core_cells -dereference
cd /openlane/designs/core_cells/runs/SUN3/results/signoff/
extract do local
extract no capacitance
extract no coupling
extract no resistance
extract no adjust
if { ! 0 } {
	extract unique
}
# extract warn all
extract

ext2spice lvs
ext2spice -o /openlane/designs/core_cells/runs/SUN3/results/signoff/core_cells.spice core_cells.ext
feedback save /openlane/designs/core_cells/runs/SUN3/logs/signoff/34-ext2spice.feedback.txt
# exec cp core_cells.spice /openlane/designs/core_cells/runs/SUN3/results/signoff/core_cells.spice


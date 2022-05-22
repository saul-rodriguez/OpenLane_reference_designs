
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
	def read /openlane/designs/core/runs/SUN1/results/routing/core.def
}
load core -dereference
cd /openlane/designs/core/runs/SUN1/results/signoff/
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
ext2spice -o /openlane/designs/core/runs/SUN1/results/signoff/core.spice core.ext
feedback save /openlane/designs/core/runs/SUN1/logs/signoff/27-ext2spice.feedback.txt
# exec cp core.spice /openlane/designs/core/runs/SUN1/results/signoff/core.spice


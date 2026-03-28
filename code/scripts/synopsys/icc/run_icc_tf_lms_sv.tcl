set script_dir [file dirname [file normalize [info script]]]
set project_root [file normalize [file join $script_dir .. .. ..]]
set top_name tf_lms_sv

set pdk_root [file join $project_root pdk Tool PDK PDK_45nm]
set tech_tf  [file join $pdk_root ncsu_basekit techfile FreePDK45.tf]
set std_lef  [file join $pdk_root osu_soc lib files gscl45nm.lef]

set netlist  [file join $project_root artifacts dc out ultra ${top_name}_syn.v]
set sdc_file [file join $project_root artifacts dc out ultra ${top_name}_syn.sdc]

set work_root [file join $project_root artifacts icc default work]
set design_mw [file join $work_root ${top_name}_mw]
set out_dir   [file join $project_root artifacts icc default out]
set rpt_dir   [file join $project_root artifacts icc default reports]

file mkdir $work_root
file delete -force $design_mw
file delete -force $out_dir
file delete -force $rpt_dir
file mkdir $out_dir
file mkdir $rpt_dir

# Create a Milkyway design library from the FreePDK45 techfile and standard-cell LEF.
create_mw_lib -technology $tech_tf -mw_reference_library {} $design_mw
open_mw_lib $design_mw
read_lef $std_lef

# Import synthesized gate-level netlist.
import_designs $netlist -format verilog -top $top_name
current_design $top_name
link

if {[file exists $sdc_file]} {
    read_sdc $sdc_file
}

# Basic floorplan assumptions for a small digital block.
initialize_floorplan -core_utilization 0.60 -start_first_row -left_io2core 10 -bottom_io2core 10 -right_io2core 10 -top_io2core 10

create_fp_placement
legalize_placement

report_design_physical > [file join $rpt_dir physical.rpt]
report_timing -max_paths 10 > [file join $rpt_dir timing_pre_cts.rpt]

save_mw_cel -as ${top_name}_placed

write_def -output [file join $out_dir ${top_name}_placed.def]
write_verilog -output [file join $out_dir ${top_name}_placed.v]

quit

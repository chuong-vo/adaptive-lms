set script_dir [file dirname [file normalize [info script]]]
set project_root [file normalize [file join $script_dir .. .. ..]]
set top_name tf_lms_sv

set pdk_root [file join $project_root pdk freepdk45_mflowgen]
set tech_tf  [file join $pdk_root rtk-tech.tf]
set ref_libs [list [file join $pdk_root stdcells.mwlib]]
set lib_tt   [file join $pdk_root stdcells.db]

set ddc_file [file join $project_root artifacts dc out mflow45 ${top_name}.ddc]
set sdc_file [file join $project_root artifacts dc out mflow45 ${top_name}_syn.sdc]

set work_root [file join $project_root artifacts icc mflow45_sanity work]
set design_mw [file join $work_root ${top_name}_mw]
set out_dir   [file join $project_root artifacts icc mflow45_sanity out]
set rpt_dir   [file join $project_root artifacts icc mflow45_sanity reports]

file mkdir $work_root
file delete -force $design_mw
file delete -force $out_dir
file delete -force $rpt_dir
file mkdir $out_dir
file mkdir $rpt_dir

set_app_var search_path [list $project_root $pdk_root]
set_app_var target_library [list $lib_tt]
set_app_var link_library [list "*" $lib_tt]

create_mw_lib \
    -technology $tech_tf \
    -mw_reference_library $ref_libs \
    -bus_naming_style {[%d]} \
    -open \
    $design_mw

import_designs -format ddc -cel $top_name $ddc_file
read_sdc -version Latest $sdc_file

save_mw_cel -design $top_name
save_mw_cel -design $top_name -as design_setup

report_clock
report_clock -skew
set_zero_interconnect_delay_mode true
report_timing
report_constraint -all
set_zero_interconnect_delay_mode false

create_floorplan \
    -core_utilization 0.60 \
    -flip_first_row \
    -left_io2core 20 \
    -bottom_io2core 20 \
    -right_io2core 20 \
    -top_io2core 20

create_fp_placement

redirect -file [file join $rpt_dir physical_init.rpt] { report_design_physical }
redirect -file [file join $rpt_dir timing_init.rpt] { report_timing -max_paths 10 }
redirect -file [file join $rpt_dir constraints_init.rpt] { report_constraint -all }
check_physical_design -stage pre_place_opt

save_mw_cel -design $top_name -as floorplan_init
write_verilog [file join $out_dir ${top_name}_init.v]
write_def -output [file join $out_dir ${top_name}_init.def]

quit

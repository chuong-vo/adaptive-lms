set script_dir [file dirname [file normalize [info script]]]
set project_root [file normalize [file join $script_dir .. .. ..]]
set top_name tf_lms_sv

set pdk_root [file join $project_root pdk Tool PDK Nangate45_icc icc_lab]
set lib_root [file join $pdk_root logical_lib]
set tech_tf  [file join $pdk_root tech NangateOpenCellLibrary.tf]
set tlu_max  [file join $pdk_root tluplus NangateOpenCellLibrary.tluplus]
set tlu_map  [file join $pdk_root tluplus NangateOpenCellLibrary.map]
set lib_tt   [file join $lib_root NangateOpenCellLibrary_typical.db]
set lib_ff   [file join $lib_root NangateOpenCellLibrary_fast.db]
set lib_ss   [file join $lib_root NangateOpenCellLibrary_slow.db]

set ref_libs [list \
    [file join $pdk_root physical_lib NangateOpenCellLibrary] \
    [file join $pdk_root physical_lib RF_2P_ADV64_16] \
    [file join $pdk_root physical_lib tpz] \
]

set netlist  [file join $project_root artifacts dc out nangate ${top_name}_syn.v]
set ddc_file [file join $project_root artifacts dc out nangate ${top_name}.ddc]
set sdc_file [file join $project_root artifacts dc out nangate ${top_name}_syn.sdc]

set work_root [file join $project_root artifacts icc nangate work]
set design_mw [file join $work_root ${top_name}_mw]
set out_dir   [file join $project_root artifacts icc nangate out]
set rpt_dir   [file join $project_root artifacts icc nangate reports]

file mkdir $work_root
file delete -force $design_mw
file delete -force $out_dir
file delete -force $rpt_dir
file mkdir $out_dir
file mkdir $rpt_dir

set_app_var search_path [list $project_root $lib_root]
set_app_var target_library [list $lib_tt]
set_app_var link_library [list "*" $lib_tt $lib_ff $lib_ss]

create_mw_lib \
    -technology $tech_tf \
    -mw_reference_library $ref_libs \
    -bus_naming_style {[%d]} \
    -open \
    $design_mw

import_designs -format ddc -cel $top_name $ddc_file
set_tlu_plus_files -max_tluplus $tlu_max -tech2itf_map $tlu_map
read_sdc -version Latest $sdc_file

save_mw_cel -design $top_name
save_mw_cel -design $top_name -as design_setup

# Core-only floorplan for a synthesized digital block without IO pad planning.
create_floorplan \
    -core_utilization 0.60 \
    -flip_first_row \
    -left_io2core 20 \
    -bottom_io2core 20 \
    -right_io2core 20 \
    -top_io2core 20

create_fp_placement

report_clock
report_clock -skew
set_zero_interconnect_delay_mode true
report_timing
report_constraint -all
set_zero_interconnect_delay_mode false

redirect -file [file join $rpt_dir physical_init.rpt] { report_design_physical }
redirect -file [file join $rpt_dir timing_init.rpt] { report_timing -max_paths 10 }

check_physical_design -stage pre_place_opt
place_opt -power

save_mw_cel -design $top_name
save_mw_cel -design $top_name -as placement

redirect -file [file join $rpt_dir timing_place.rpt] { report_timing -max_paths 10 }
redirect -file [file join $rpt_dir constraints_place.rpt] { report_constraint -all }
redirect -file [file join $rpt_dir power_place.rpt] { report_power }

check_clock_tree
set_fix_hold [all_clocks]
clock_opt -fix_hold_all_clocks -no_clock_route

save_mw_cel -design $top_name
save_mw_cel -design $top_name -as cts

redirect -file [file join $rpt_dir clock_cts.rpt] { report_clock }
redirect -file [file join $rpt_dir clock_skew_cts.rpt] { report_clock -skew }
redirect -file [file join $rpt_dir clock_tree_cts.rpt] { report_clock_tree -summary }
redirect -file [file join $rpt_dir timing_cts.rpt] { report_timing -max_paths 10 }
redirect -file [file join $rpt_dir constraints_cts.rpt] { report_constraint -all }

set_route_zrt_common_options \
    -post_detail_route_redundant_via_insertion high \
    -concurrent_redundant_via_mode insert_at_high_cost \
    -concurrent_redundant_via_effort_level high

route_zrt_group -all_clock_nets
route_zrt_auto
verify_zrt_route
route_zrt_detail -incremental true -initial_drc_from_input true

save_mw_cel -design $top_name
save_mw_cel -design $top_name -as route

redirect -file [file join $rpt_dir timing_route.rpt] { report_timing -max_paths 10 }
redirect -file [file join $rpt_dir constraints_route.rpt] { report_constraint -all }
redirect -file [file join $rpt_dir power_route.rpt] { report_power }
redirect -file [file join $rpt_dir physical_route.rpt] { report_design_physical }

write_verilog [file join $out_dir ${top_name}_pr.v]
write_sdf -version 1.0 -context verilog -load_delay net [file join $out_dir ${top_name}_pr.sdf]
write_def -output [file join $out_dir ${top_name}_pr.def]

quit

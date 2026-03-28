set script_dir [file dirname [file normalize [info script]]]
set project_root [file normalize [file join $script_dir .. .. ..]]
set top_name tf_lms_sv

set rtl_dir    [file join $project_root src sv rtl]
set constr_dir [file join $project_root constraints]
set pdk_root [file join $project_root pdk Tool PDK PDK_45nm]
set lib_db   [file join $pdk_root osu_soc lib files gscl45nm.db]
set out_dir  [file join $project_root artifacts dc out ultra_clean]
set rpt_dir  [file join $project_root artifacts dc reports ultra_clean]
set work_dir [file join $project_root artifacts dc work ultra_clean]

set_app_var search_path [list \
    $rtl_dir \
    [file join $pdk_root osu_soc lib files] \
]

set_app_var target_library [list $lib_db]
set_app_var link_library   [list "*" $lib_db]

file mkdir $work_dir
define_design_lib WORK -path $work_dir

analyze -format sverilog [file join $rtl_dir adaptation_lms.sv]
elaborate $top_name
current_design $top_name

link
check_design

source [file join $constr_dir tf_lms_sv.sdc]

set_max_fanout 32 [current_design]
set_max_transition 0.5 [current_design]
set_max_capacitance 0.2 [current_design]
set_fix_hold [get_clocks clk]

uniquify
compile_ultra -no_autoungroup

file delete -force $out_dir
file delete -force $rpt_dir
file mkdir $out_dir
file mkdir $rpt_dir

write -format verilog -hierarchy -output [file join $out_dir ${top_name}_syn.v]
write -format ddc -hierarchy -output [file join $out_dir ${top_name}.ddc]
write_sdc [file join $out_dir ${top_name}_syn.sdc]

report_qor             > [file join $rpt_dir qor.rpt]
report_area -hierarchy > [file join $rpt_dir area.rpt]
report_timing -max_paths 10 > [file join $rpt_dir timing.rpt]
report_timing -delay min -max_paths 10 > [file join $rpt_dir timing_hold.rpt]
report_constraint -all_violators > [file join $rpt_dir constraints.rpt]
report_cell            > [file join $rpt_dir cells.rpt]
report_power           > [file join $rpt_dir power.rpt]

quit

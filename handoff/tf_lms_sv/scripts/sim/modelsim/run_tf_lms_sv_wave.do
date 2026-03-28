set script_dir [file dirname [file normalize [info script]]]
set project_root [file normalize [file join $script_dir .. .. ..]]
set rtl_file [file join $project_root src sv rtl adaptation_lms.sv]
set tb_file [file join $project_root src sv tb tf_lms_sv_wave_tb.sv]
set sim_dir [file join $project_root artifacts sim]
set work_dir [file join $sim_dir work]

file mkdir $sim_dir
transcript file [file join $sim_dir transcript]
transcript on

if {[file exists $work_dir]} {
    vdel -lib $work_dir -all
}
vlib $work_dir
vmap work $work_dir

vlog -sv $rtl_file $tb_file

vsim -wlf [file join $sim_dir vsim.wlf] work.tf_lms_sv_wave_tb

quietly WaveActivateNextPane {} 0
view wave

add wave -noupdate -divider {Testbench IO}
add wave -noupdate -radix binary sim:/tf_lms_sv_wave_tb/clock
add wave -noupdate -radix binary sim:/tf_lms_sv_wave_tb/reset_n
add wave -noupdate -radix binary sim:/tf_lms_sv_wave_tb/adapt_en
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/xin
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dxin
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/yout
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/err

add wave -noupdate -divider {Top-Level Internal}
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/x_1
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/x_N
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/e_t
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/y_o
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/e

add wave -noupdate -divider {Core Filter}
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/cflt/y_out_t1
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/cflt/y_out_t2
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/cflt/y_out_t3
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/cflt/y_out_t4
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/cflt/y_out

add wave -noupdate -divider {Tap1 Adaptation Path}
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/cflt/tap1/xnin_ue
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/cflt/tap1/xnin_ue_scaled
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/cflt/tap1/new_coeff_true
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/cflt/tap1/coeff16
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/cflt/tap1/coeff8
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/cflt/tap1/y_out16
add wave -noupdate -radix hex sim:/tf_lms_sv_wave_tb/dut/cflt/tap1/y_out

catch {configure wave -namecolwidth 260}
catch {configure wave -valuecolwidth 100}
catch {configure wave -justifyvalue left}
catch {configure wave -signalnamewidth 1}
catch {configure wave -timelineunits ns}
update

run -all
wave zoom full

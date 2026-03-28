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
    catch {vdel -lib $work_dir -all}
}
vlib $work_dir
vmap work $work_dir

vlog -sv $rtl_file $tb_file
vsim -wlf [file join $sim_dir vsim.wlf] work.tf_lms_sv_wave_tb

quietly WaveActivateNextPane {} 0
view wave

add wave -noupdate -divider {Report View}
add wave -noupdate -color White      -radix binary sim:/tf_lms_sv_wave_tb/clock
add wave -noupdate -color Silver     -radix binary sim:/tf_lms_sv_wave_tb/reset_n
add wave -noupdate -color Yellow     -radix binary sim:/tf_lms_sv_wave_tb/adapt_en
add wave -noupdate -color Cyan       -radix hex    sim:/tf_lms_sv_wave_tb/xin
add wave -noupdate -color Orange     -radix hex    sim:/tf_lms_sv_wave_tb/dxin
add wave -noupdate -color Magenta    -radix hex    sim:/tf_lms_sv_wave_tb/dut/x_1
add wave -noupdate -color Green      -radix hex    sim:/tf_lms_sv_wave_tb/dut/x_N
add wave -noupdate -color Gold       -radix hex    sim:/tf_lms_sv_wave_tb/dut/e_t
add wave -noupdate -color DodgerBlue -radix hex    sim:/tf_lms_sv_wave_tb/yout
add wave -noupdate -color Red        -radix hex    sim:/tf_lms_sv_wave_tb/err
add wave -noupdate -color Lime       -radix hex    sim:/tf_lms_sv_wave_tb/dut/cflt/tap1/coeff8

catch {configure wave -namecolwidth 260}
catch {configure wave -valuecolwidth 100}
catch {configure wave -justifyvalue left}
catch {configure wave -signalnamewidth 1}
catch {configure wave -timelineunits ns}
update

run -all
wave zoom full

proc view_delay_fill {} {
    wave zoom range 350ns 700ns
    puts "Zoomed to delay-line fill region: 350ns to 700ns"
}

proc view_adapt_toggle {} {
    wave zoom range 3350ns 3850ns
    puts "Zoomed to adaptation toggle region: 3350ns to 3850ns"
}

proc view_prng_toggle {} {
    wave zoom range 5550ns 6150ns
    puts "Zoomed to pseudo-random toggle region: 5550ns to 6150ns"
}

puts ""
puts "Waveform ready. Use one of these commands in the Transcript pane:"
puts "  view_delay_fill"
puts "  view_adapt_toggle"
puts "  view_prng_toggle"
puts ""
puts "Suggested screenshots for Chapter 3:"
puts "  1. view_delay_fill   -> show x_N and e_t appearing after delay"
puts "  2. view_adapt_toggle -> show err=0 and coeff hold when adapt_en=0"
puts "  3. view_prng_toggle  -> show behavior with pseudo-random stimulus"

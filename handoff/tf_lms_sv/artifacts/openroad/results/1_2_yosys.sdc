create_clock -name clk -period 20 [get_ports clock]

set non_clock_inputs [all_inputs -no_clocks]

set_input_delay 2 -clock clk $non_clock_inputs
set_output_delay 2 -clock clk [all_outputs]

set_clock_uncertainty 0.2 [get_clocks clk]
set_clock_transition 0.1 [get_clocks clk]

set_input_transition 0.1 $non_clock_inputs
set_load 0.05 [all_outputs]
set_false_path -from [get_ports reset]

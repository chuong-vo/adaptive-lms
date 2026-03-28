current_design tf_lms_sv

set clk_name clk
set clk_port_name clock
set clk_period 20.0
set clk_io_pct 0.1

set clk_port [get_ports $clk_port_name]
set data_inputs [get_ports {xin dxin adapt_en}]

create_clock -name $clk_name -period $clk_period $clk_port

set_input_delay [expr {$clk_period * $clk_io_pct}] -clock $clk_name $data_inputs
set_output_delay [expr {$clk_period * $clk_io_pct}] -clock $clk_name [all_outputs]

set_false_path -from [get_ports reset]

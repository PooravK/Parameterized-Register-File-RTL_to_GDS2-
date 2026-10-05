create_clock -name clk -period 5 [get_ports clk]

set_input_delay 1 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]

set_output_delay 1 -clock clk [all_outputs]

set_clock_uncertainty 0.05 [get_clocks clk]

set_input_transition 0.05 [remove_from_collection  [all_inputs] [get_ports clk]]

set_load 0.025 [all_outputs]

# 200 mhz clock
# 1 ns io delay
# 0.05 ns uncertainity 

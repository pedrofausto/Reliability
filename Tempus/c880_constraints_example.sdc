# Needs: Duty Cycle Clock Slew Clock Jitter Clock skew (slide 69) Setup and Hold Time.


#setOpCond PwcV162T125_STD_CELL_7RF -library PwcV162T125_STD_CELL_7RF
#set_wire_load_mode enclosed
#set_wire_load_model -name 1KCELLS_4MZWB -library PwcV162T125_STD_CELL_7RF
#set_driving_cell -lib_cell INVX1 -library slow -pin Y [all_inputs]

create_clock -period 40 -waveform {0 20} -name CLK
#create_clock -name CLK -period 50.0 -waveform {0 25.0} [get_ports {top_clock_i}]
#create_generated_clock -name MEMCLK -source [get_ports {top_clock_i}] -multiply_by 2 -duty_cycle 50 [get_ports {top_clock_mem_i}]

#set_dont_touch_network [get_clocks "CLK"]
#set_dont_touch_network [get_clocks "MEMCLK"]

#Main Clock definitions
#set_clock_transition -rise 1 [get_clocks "CLK"]
#set_clock_transition -fall 1 [get_clocks "CLK"]

#set_clock_uncertainty -setup 0.1 [get_clocks "CLK"]
#set_clock_uncertainty -hold 0.1 [get_clocks "CLK"]

#set_clock_latency -early -late -source 5.0 [get_clocks "CLK"]
#set_clock_latency -early -late -source 5.0 [get_clocks "MEMCLK"]

#Memory Clock definitions
#set_clock_transition -rise 1 [get_clocks "MEMCLK"]
#set_clock_transition -fall 1 [get_clocks "MEMCLK"]

#set_clock_uncertainty -hold 0.1 [get_clocks "MEMCLK"]
#set_clock_uncertainty -setup 0.1 [get_clocks "MEMCLK"]

#set_max_capacitance 1000 [get_ports *]
#set_max_fanout 20 [all_inputs]
#set_input_transition -min 1 -rise [get_ports {id0 id1 id2 id3 id4 id5 id6 id7 id8 id9 id10 id11 id12 id13 id14 id15 id16 id17 id18 id19 id20 id21 id22 id23 id24 id25 id26 id27 id28 id29 id30 id31 ic0 ic1 ic2 ic3 ic4 ic5 ic6 ic7 r}]
#set_input_transition -max 10 -rise [get_ports {id0 id1 id2 id3 id4 id5 id6 id7 id8 id9 id10 id11 id12 id13 id14 id15 id16 id17 id18 id19 id20 id21 id22 id23 id24 id25 id26 id27 id28 id29 id30 id31 ic0 ic1 ic2 ic3 ic4 ic5 ic6 ic7 r}]
#set_input_transition -min 1 -fall [get_ports {id0 id1 id2 id3 id4 id5 id6 id7 id8 id9 id10 id11 id12 id13 id14 id15 id16 id17 id18 id19 id20 id21 id22 id23 id24 id25 id26 id27 id28 id29 id30 id31 ic0 ic1 ic2 ic3 ic4 ic5 ic6 ic7 r}]
#set_input_transition -max 10 -fall [get_ports {id0 id1 id2 id3 id4 id5 id6 id7 id8 id9 id10 id11 id12 id13 id14 id15 id16 id17 id18 id19 id20 id21 id22 id23 id24 id25 id26 id27 id28 id29 id30 id31 ic0 ic1 ic2 ic3 ic4 ic5 ic6 ic7 r}]


#set_input_delay -clock [get_clocks "CLK"] 1000 [get_ports {top_reset_i top_p0_y_i top_p1_y_i top_p2_y_i top_p3_y_i top_pht_i top_ea_b_i}]
#set_input_delay -network_latency_included -clock MEMCLK 1000 [all_inputs]
set_output_delay -network_latency_included -clock CLK 1.0 [all_outputs]


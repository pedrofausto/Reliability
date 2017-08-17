read_lib -typ LIBRARY
read_verilog FILE
set_top_module TOP
read_sdc CONSTRAINT
set_analysis_mode -analysisType single
report_timing -format {instance cell arc load slew delay arrival required} -nworst NUMBER
report_analysis_coverage
report_clocks
update_timing -full
create_spice_deck -run_path_simulation

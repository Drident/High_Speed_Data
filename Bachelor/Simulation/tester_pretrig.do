onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Rst / Clk}
add wave -noupdate /maincircuit_tb/I_tester/testInfo
add wave -noupdate -color Gray60 -label clk /maincircuit_tb/clk
add wave -noupdate -color Gray60 -label rst /maincircuit_tb/rst
add wave -noupdate /maincircuit_tb/fpga_sck
add wave -noupdate -divider Signals
add wave -noupdate -color Gold -label meas_1mhz /maincircuit_tb/meas_1mhz
add wave -noupdate -divider Signals
add wave -noupdate -radix binary /maincircuit_tb/I_dut/fpga_m
add wave -noupdate -divider out
add wave -noupdate -color {Orange Red} /maincircuit_tb/I_dut/fram_sclk
add wave -noupdate -color {Orange Red} /maincircuit_tb/I_dut/fram_ncs
add wave -noupdate -divider pretrig
add wave -noupdate /maincircuit_tb/I_dut/U_12/count_pre
add wave -noupdate -radix binary /maincircuit_tb/I_dut/U_12/preTriggerValue
add wave -noupdate /maincircuit_tb/I_tester/counter_test
add wave -noupdate -radix binary /maincircuit_tb/I_tester/pretrigVal
add wave -noupdate /maincircuit_tb/I_dut/acq_pretrig
add wave -noupdate -radix unsigned /maincircuit_tb/I_dut/U_1/count_preTrig
add wave -noupdate /maincircuit_tb/I_dut/U_1/memoryTrig
add wave -noupdate /maincircuit_tb/I_dut/U_1/Trigg
add wave -noupdate -divider count_done
add wave -noupdate -color Magenta /maincircuit_tb/I_dut/U_1/memoryTrig
add wave -noupdate -color Magenta /maincircuit_tb/I_dut/U_1/count_preTrig
add wave -noupdate -color Magenta /maincircuit_tb/I_dut/U_1/count
add wave -noupdate -color Magenta -radix binary /maincircuit_tb/I_dut/U_1/preTriggVal
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2314358 ps} 0} {{Cursor 2} {495127580474 ps} 0} {{Cursor 3} {5352266355 ps} 0} {{Cursor 4} {137604148669 ps} 0} {{Cursor 5} {5353262890 ps} 0} {{Cursor 6} {718750 ps} 0}
quietly wave cursor active 6
configure wave -namecolwidth 359
configure wave -valuecolwidth 141
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {597014 ps} {1091606 ps}

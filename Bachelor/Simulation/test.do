onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Rst / Clk}
add wave -noupdate /maincircuit_tb/I_tester/testInfo
add wave -noupdate -color Gray60 -label clk /maincircuit_tb/clk
add wave -noupdate -color Gray60 -label rst /maincircuit_tb/rst
add wave -noupdate /maincircuit_tb/fpga_sck
add wave -noupdate -divider Signals
add wave -noupdate -color Gold -label meas_1mhz /maincircuit_tb/meas_1mhz
add wave -noupdate /maincircuit_tb/I_dut/done
add wave -noupdate /maincircuit_tb/I_dut/U_1/count_memory
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {81555180420 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 227
configure wave -valuecolwidth 100
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
configure wave -timelineunits ms
update
WaveRestoreZoom {8191703684 ps} {8191944483 ps}

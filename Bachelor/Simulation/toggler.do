onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Rst / Clk}
add wave -noupdate /maincircuit_tb/I_tester/testInfo
add wave -noupdate -color Gray60 -label clk /maincircuit_tb/clk
add wave -noupdate -color Gray60 -label rst /maincircuit_tb/rst
add wave -noupdate -divider Signals
add wave -noupdate -color Gold -label meas_1mhz /maincircuit_tb/meas_1mhz
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {313550031345 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {628716299964 ps}

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Control
add wave -noupdate -color Gray60 /counteruniversal_tb/clock
add wave -noupdate -color Gray60 /counteruniversal_tb/reset
add wave -noupdate -divider Inputs
add wave -noupdate -color Gold /counteruniversal_tb/enable
add wave -noupdate -color Gold /counteruniversal_tb/down_nUp
add wave -noupdate -color Gold /counteruniversal_tb/load
add wave -noupdate -color Gold /counteruniversal_tb/loadValue
add wave -noupdate -divider Outputs
add wave -noupdate -color {Dark Orchid} /counteruniversal_tb/countOut
add wave -noupdate -color {Dark Orchid} /counteruniversal_tb/targetReached
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {22 ps} 0}
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
configure wave -gridperiod 1000000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {952 ps}

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Gold -expand -subitemconfig {/lut_tb/inputs(1) {-color Gold -height 15} /lut_tb/inputs(2) {-color Gold -height 15} /lut_tb/inputs(3) {-color Gold -height 15} /lut_tb/inputs(4) {-color Gold -height 15} /lut_tb/inputs(5) {-color Gold -height 15}} /lut_tb/inputs
add wave -noupdate -color {Dark Orchid} -expand -subitemconfig {/lut_tb/outputs(1) {-color {Dark Orchid} -height 15} /lut_tb/outputs(2) {-color {Dark Orchid} -height 15} /lut_tb/outputs(3) {-color {Dark Orchid} -height 15} /lut_tb/outputs(4) {-color {Dark Orchid} -height 15}} /lut_tb/outputs
add wave -noupdate /lut_tb/c_lut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {13000 ps} 0}
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
WaveRestoreZoom {0 ps} {74462 ps}
run 70 ns

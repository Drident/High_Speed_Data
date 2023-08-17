onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /dac124s085controller_tb/reset
add wave -noupdate /dac124s085controller_tb/clock
add wave -noupdate /dac124s085controller_tb/sclkEn
add wave -noupdate -divider Inputs
add wave -noupdate /dac124s085controller_tb/startConv
add wave -noupdate /dac124s085controller_tb/amplitudeA
add wave -noupdate /dac124s085controller_tb/amplitudeB
add wave -noupdate /dac124s085controller_tb/amplitudeC
add wave -noupdate /dac124s085controller_tb/amplitudeD
add wave -noupdate -divider Internals
add wave -noupdate /dac124s085controller_tb/I_DUT/startSequence
add wave -noupdate /dac124s085controller_tb/I_DUT/updateSequenceCounter
add wave -noupdate -radix unsigned -radixshowbase 0 /dac124s085controller_tb/I_DUT/sequenceCounter
add wave -noupdate /dac124s085controller_tb/I_DUT/updateDacId
add wave -noupdate -radix unsigned -radixshowbase 0 /dac124s085controller_tb/I_DUT/dacId
add wave -noupdate /dac124s085controller_tb/I_DUT/shiftRegister
add wave -noupdate -divider SPI
add wave -noupdate /dac124s085controller_tb/SYNC_n
add wave -noupdate /dac124s085controller_tb/SCLK
add wave -noupdate /dac124s085controller_tb/DIN
add wave -noupdate -divider {DAC outputs}
add wave -noupdate /dac124s085controller_tb/VOUTA
add wave -noupdate /dac124s085controller_tb/VOUTB
add wave -noupdate /dac124s085controller_tb/VOUTC
add wave -noupdate /dac124s085controller_tb/VOUTD
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9999 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 143
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ns} {105 us}

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Rst / Clk}
add wave -noupdate /maincircuit_tb/I_tester/testInfo
add wave -noupdate -color Gray60 -label clk /maincircuit_tb/clk
add wave -noupdate -color Gray60 -label rst /maincircuit_tb/rst
add wave -noupdate /maincircuit_tb/fpga_sck
add wave -noupdate -color Gold -label meas_1mhz /maincircuit_tb/meas_1mhz
add wave -noupdate -divider in
add wave -noupdate -radix binary /maincircuit_tb/I_dut/fpga_m
add wave -noupdate -radix decimal /maincircuit_tb/I_dut/fpga_mosi
add wave -noupdate /maincircuit_tb/I_dut/acq_trig
add wave -noupdate /maincircuit_tb/I_dut/acq_pretrig
add wave -noupdate -divider out
add wave -noupdate -color Cyan /maincircuit_tb/I_dut/adc_sclk
add wave -noupdate -color Cyan /maincircuit_tb/I_dut/adc_nsc
add wave -noupdate -color Cyan /maincircuit_tb/I_dut/fram_sclk
add wave -noupdate -color Cyan -subitemconfig {/maincircuit_tb/I_dut/fram_ncs(3) {-color Cyan} /maincircuit_tb/I_dut/fram_ncs(2) {-color Cyan} /maincircuit_tb/I_dut/fram_ncs(1) {-color Cyan} /maincircuit_tb/I_dut/fram_ncs(0) {-color Cyan}} /maincircuit_tb/I_dut/fram_ncs
add wave -noupdate -color Cyan /maincircuit_tb/I_dut/fpga_miso
add wave -noupdate -color Cyan /maincircuit_tb/I_dut/fram_sdi
add wave -noupdate -divider Signals
add wave -noupdate -color Orange /maincircuit_tb/I_dut/done
add wave -noupdate -color Orange -radix decimal /maincircuit_tb/I_dut/U_1/count_memory
add wave -noupdate -color Magenta /maincircuit_tb/I_dut/U_1/count_preTrig
add wave -noupdate -color Orange /maincircuit_tb/I_dut/U_1/preTriggVal
add wave -noupdate -color Orange /maincircuit_tb/I_dut/Memory
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2888879 ps} 0} {{Cursor 2} {34370441 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 359
configure wave -valuecolwidth 40
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {8702430 ps}

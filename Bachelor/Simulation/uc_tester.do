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
add wave -noupdate -radix binary /maincircuit_tb/I_dut/fpga_m
add wave -noupdate -radix decimal /maincircuit_tb/I_dut/U_1/count_memory
add wave -noupdate -divider ADC_TO_FRAM
add wave -noupdate /maincircuit_tb/I_dut/U_6/ncs_adc
add wave -noupdate /maincircuit_tb/I_dut/U_6/adc_clock
add wave -noupdate /maincircuit_tb/I_dut/U_6/sdi
add wave -noupdate -divider FRAM_WRITE_READ
add wave -noupdate /maincircuit_tb/I_dut/U_4/SCLK_OUT
add wave -noupdate /maincircuit_tb/I_dut/U_4/NCs
add wave -noupdate /maincircuit_tb/I_dut/U_4/SDI
add wave -noupdate -divider ADC_WRITE_rEAD
add wave -noupdate /maincircuit_tb/I_dut/U_0/NCs
add wave -noupdate -divider out
add wave -noupdate /maincircuit_tb/I_dut/adc_sclk
add wave -noupdate /maincircuit_tb/I_dut/adc_nsc
add wave -noupdate /maincircuit_tb/I_dut/fram_sclk
add wave -noupdate -expand /maincircuit_tb/I_dut/fram_ncs
add wave -noupdate -divider in
add wave -noupdate -radix decimal /maincircuit_tb/I_dut/fpga_mosi
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2888879 ps} 0} {{Cursor 2} {34370441 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 359
configure wave -valuecolwidth 38
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
WaveRestoreZoom {0 ps} {10088592 ps}

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Reset and clock}
add wave -noupdate /selectiondecoderram_tb/reset
add wave -noupdate /selectiondecoderram_tb/clock
add wave -noupdate -divider {UART in}
add wave -noupdate /selectiondecoderram_tb/I_tb/commandString
add wave -noupdate -radix ascii -radixshowbase 0 /selectiondecoderram_tb/charIn
add wave -noupdate /selectiondecoderram_tb/charEn
add wave -noupdate /selectiondecoderram_tb/charReady
add wave -noupdate -divider {RAM fill}
add wave -noupdate /selectiondecoderram_tb/I_DUT/charEn_delayed
add wave -noupdate -radix unsigned -radixshowbase 0 /selectiondecoderram_tb/I_DUT/characterCounter
add wave -noupdate /selectiondecoderram_tb/I_DUT/charIn
add wave -noupdate /selectiondecoderram_tb/I_DUT/isHexDataRecord
add wave -noupdate /selectiondecoderram_tb/I_DUT/hexValue
add wave -noupdate /selectiondecoderram_tb/I_DUT/recordBaseAddress
add wave -noupdate /selectiondecoderram_tb/I_DUT/writeAddress
add wave -noupdate /selectiondecoderram_tb/I_DUT/writeToRam
add wave -noupdate /selectiondecoderram_tb/I_DUT/I_ram/ramContent
add wave -noupdate -divider {Selection out}
add wave -noupdate -radix binary -childformat {{/selectiondecoderram_tb/command(1) -radix binary} {/selectiondecoderram_tb/command(2) -radix binary} {/selectiondecoderram_tb/command(3) -radix binary} {/selectiondecoderram_tb/command(4) -radix binary} {/selectiondecoderram_tb/command(5) -radix binary}} -radixshowbase 0 -expand -subitemconfig {/selectiondecoderram_tb/command(1) {-height 17 -radix binary -radixshowbase 0} /selectiondecoderram_tb/command(2) {-height 17 -radix binary -radixshowbase 0} /selectiondecoderram_tb/command(3) {-height 17 -radix binary -radixshowbase 0} /selectiondecoderram_tb/command(4) {-height 17 -radix binary -radixshowbase 0} /selectiondecoderram_tb/command(5) {-height 17 -radix binary -radixshowbase 0}} /selectiondecoderram_tb/command
add wave -noupdate /selectiondecoderram_tb/endOfCommand
add wave -noupdate -radix hexadecimal -radixshowbase 0 /selectiondecoderram_tb/value
add wave -noupdate /selectiondecoderram_tb/valueEn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 279
configure wave -valuecolwidth 59
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
WaveRestoreZoom {0 ns} {39900 ns}

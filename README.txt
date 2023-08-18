High Speed Data Logger

Configuration & code STM32:
	-TB_2023_Logger >> cube >> work >> STM32CubeIDE-high_speed >> .project
	
Configuration & code FPGA:
	-Bachelor >> bachelor.bat

Configuration PCB:
	-TB_2023_Logger >> PCB/PCB>>BalEv_v1

Materiel need :
	-The pcb, a Power supply, a Waveform Generator & a SD_card

Program need to read data:
	-Matlab

Program need to modify project:
	-STM32CubeIDE, Altium, HDL designer, IceCube2, Diamond Programmer
	
How to use:
	-Power on the pcp (3.3 v on the board need 4.5 [v])
	-Prepare the channels to a signal generator
	-Write de value in the INIT.txt on the sd_card
	-Push the Button Wake up
	-if the led is red, restart the system with th arm button, else wait.
	-Led blue will be flash until the aquisition is over
	-Led green, acqu is done you can read the SD card on matlab or restart a sequence. 
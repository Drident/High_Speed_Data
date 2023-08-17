--
-- VHDL Architecture Bachelor.ADC_Write.STUDENT_V3
--
-- Created:
--          by - christop.grobety.UNKNOWN (WE2332207)
--          at - 15:30:17 05.07.2023
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE STUDENT_V3 OF ADC_Write IS
	signal count: unsigned(5 downto 0);
	signal go : std_uLogic;
	signal MISO_IN : std_uLogic;
	signal clockOut : std_uLogic;
	signal clockGO : std_uLogic;
BEGIN
	spiMS: process(m, SDO)
	  begin
	    if m = "0010" then
			NCS <= '0';
			--MISO_IN <= SDO(SDO'high);
		else
			NCS <= '1';
			--MISO_IN <= '0';
	    end if;
	  end process spiMS;

	colckSwitch: process(FPGA_clock)
		begin
			if unsigned(m) <= "0010" then
				clockOut <= FPGA_clock;
			else
				clockOut <= '1';
			end if ;
		end process colckSwitch;
	AW_CLOCK <= clockOut;
	--MISO <= MISO_IN;
END ARCHITECTURE STUDENT_V3;


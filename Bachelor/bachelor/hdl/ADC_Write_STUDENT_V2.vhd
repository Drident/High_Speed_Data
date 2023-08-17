--
-- VHDL Architecture Bachelor.ADC_Write.STUDENT_V2
--
-- Created:
--          by - christop.grobety.UNKNOWN (WE2332207)
--          at - 09:05:42 22.06.2023
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE STUDENT_V2 OF ADC_Write IS
	signal count: unsigned(5 downto 0);
	signal go : std_uLogic;
	signal MISO_IN : std_uLogic;
	signal clockOut : std_uLogic;
	signal clockGO : std_uLogic;
BEGIN
	spiMS: process(m, SDO)
	  begin
	    if m < "0100" and m > "0000" then
			NCS <= '0';
			MISO_IN <= SDO(SDO'high);
		else
			NCS <= '1';
			MISO_IN <= '0';
	    end if;
	  end process spiMS;

	colckCounter: process(reset, clock)
		begin
			if reset = '1' then
				count <= (others => '0');
				go <= '0' ;
			elsif rising_edge(clock) then
				 if unsigned(m) <= "0010" and unsigned(m) >= "0001" 
				 								and count /= 17 then 
				 	if FPGA_clock = '1' and go = '0' then
				 		count <= count +1 ;
				 		go <= '1';
				 	elsif FPGA_clock = '0' then
				 		go <= '0';
				 	end if;
				 elsif unsigned(m) = "0000" or unsigned(m) > "0010" then
				 	count <= (others => '0');
				 end if;
			end if ;
		end process colckCounter;

	colckSwitch: process(FPGA_clock)
		begin
			if unsigned(m) <= "0010" and unsigned(m) >= "0001" 
				 								and count /= 17 then
				clockOut <= FPGA_clock;
			else
				clockOut <= '1';
			end if ;
		end process colckSwitch;
	AW_CLOCK <= clockOut;
	MISO <= MISO_IN;
END ARCHITECTURE STUDENT_V2;


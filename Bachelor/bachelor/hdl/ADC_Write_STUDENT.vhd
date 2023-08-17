--
-- VHDL Architecture Bachelor.ADC_Write.STUDENT
--
-- Created:
--          by - christop.grobety.UNKNOWN (WE2332207)
--          at - 11:24:45 31.05.2023
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE STUDENT OF ADC_Write IS
	signal count: unsigned(5 downto 0);
	signal go : std_uLogic;
	signal MISO_IN : std_uLogic;
	signal clockOut : std_uLogic;
	signal clockGO : std_uLogic;
BEGIN
	spiMS: process(m)
	  begin
	    if m < "0100" and m > "0000" then
			NCS <= '0';
		else
			NCS <= '1';
	    end if;
	  end process spiMS;

	clock_start : process(clock,reset)
	begin
		if reset = '1' then
			clockOut<= '1';
			MISO_IN <= '0';
			count <= (others => '0');
			clockGO <= '0';
		elsif rising_edge(clock) then
			if clockGO = '1' and count /= 16 then
				MISO_IN <= '0';
				if count < 1 then
					MISO_IN <= '1';
				end if ;
				count <= count+1;
				clockOut <= '1';
			else 
				count <= (others => '0');
				clockGO <= '0';
			end if ;
		elsif falling_edge(clock) then
			if m = "0001" and count /= 16  then
				clockOut <= '0';
				clockGO <= '1';
			end if ;
		end if;
	end process clock_start;
	AW_CLOCK <= clockOut;
	MISO <= MISO_IN;
END ARCHITECTURE STUDENT;


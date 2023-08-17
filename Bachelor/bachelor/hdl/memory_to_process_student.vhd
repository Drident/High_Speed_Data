--
-- VHDL Architecture Bachelor.memory_to_process.student
--
-- Created:
--          by - christop.grobety.UNKNOWN (WE2332207)
--          at - 10:24:22 07.06.2023
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
LIBRARY Common;
  USE Common.CommonLib.all;
ARCHITECTURE student OF memory_to_process IS
	signal count: unsigned((memory_size-1) downto 0);
	signal count_memory: unsigned((memory_size-1) downto 0);
	signal start_bit: std_uLogic;
	signal stmClk_old: std_uLogic;
	signal MISO_OUT: std_ulogic;
	signal done_int: std_uLogic := '0';
BEGIN
	sendAdd : process(reset, clock)
	begin
		if reset = '1' then
			start_bit <= '0';
			MISO_OUT <= '0';
			stmClk_old <= stmClk;
 			count_memory <= "1000000000000000001";
	    count <= (others => '0');
		elsif rising_edge(clock) then

			stmClk_old <= stmClk;
			if m = "1011" then
			  if stmClk='1' and stmClk_old = '0' then
			    MISO_OUT <= count_memory(count_memory'HIGH);
			    count_memory <= SHIFT_LEFT(count_memory,1);
			  end if;
			else
				count_memory <= memoryAdd;

			  -- React on rising_edge(stmClk)
			  --if stmClk='1' and stmClk_old = '0' then
			  	--MISO_OUT <= not MISO_OUT;
			  --end if;
	    end if;
		end if ;
	end process sendAdd;
	
	MISO <= MISO_OUT;
END ARCHITECTURE student;


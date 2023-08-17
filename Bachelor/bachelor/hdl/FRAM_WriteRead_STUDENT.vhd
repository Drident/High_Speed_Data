--
-- VHDL Architecture Bachelor.FRAM_WriteRead.STUDENT
--
-- Created:
--          by - christop.grobety.UNKNOWN (WE2332207)
--          at - 11:24:18 31.05.2023
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE STUDENT OF FRAM_WriteRead IS
	signal go 		 		   : std_uLogic;
	signal count 			   : unsigned(7 downto 0);
	signal countValue 		   : unsigned(7 downto 0);
	signal sclk_in	 		   : std_uLogic_vector(3 downto 0);
	constant value_8           : natural := 8;
	constant value_32          : natural := 32;
BEGIN
	spiMS: process(MOSI,m)
	  begin
	    if m = "0100" then 
			NCs <= "1110";
			SDI <= (others => '0');
			SDI(SDI'high-3) <= MOSI;
	    elsif m = "0101" then
	    	NCs <= "1101";
	    	SDI <= (others => '0');
	    	SDI(SDI'high-2) <= MOSI;
	    elsif m = "0110" then
	    	NCs <= "1011";
	    	SDI <= (others => '0');
	    	SDI(SDI'high-1) <= MOSI;
	    elsif m = "0111" then
	    	NCs <= "0111";
	    	SDI <= (others => '0');
	    	SDI(SDI'high) <= MOSI;
	    elsif m = "1000" then
	    	NCs <= (others => '0');
	    	SDI(SDI'high) <= MOSI;
	    	SDI(SDI'high-1) <= MOSI;
	    	SDI(SDI'high-2) <= MOSI;
	    	SDI(SDI'high-3) <= MOSI;
	    else
	    	NCs <= (others => '1');
			SDI <= (others => '0');
	    end if;
	  end process spiMS;

	colckFRAM: process(reset, clock)
		begin
			if reset = '1' then
				sclk_in <= (others => '0');
				count <= (others => '0');
				go <= '0';
			elsif rising_edge(clock) then
				if go = '1' and  unsigned(m) <= "1000" and unsigned(m) >= "0100" then
					sclk_in <= (others => '1');
					count <= count +1;
				else
					go <= '0'; 
					count <= (others => '0');
				end if ;
			elsif falling_edge(clock) then
				if m = "1000" and count < value_32 then
					sclk_in <= (others => '0');
					go <= '1'; 
				elsif unsigned(m)< "1000" and unsigned(m)>= "0100" then
					sclk_in <= (others => '0');
					go <= '1'; 
				else
					sclk_in <= (others => '1');
				end if ;
			end if;
		end process colckFRAM;

	SCLK_OUT<= sclk_in;
END ARCHITECTURE STUDENT;


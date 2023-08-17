--
-- VHDL Architecture Bachelor.FRAM_WriteRead.STUDEBT_V2
--
-- Created:
--          by - christop.grobety.UNKNOWN (WE2332207)
--          at - 08:32:03 22.06.2023
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE STUDENT_V2 OF FRAM_WriteRead IS
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

	colckCounter: process(reset, clock)
		begin
			if reset = '1' then
				count <= (others => '0');
				go <= '0' ;
			elsif rising_edge(clock) then
				 if unsigned(m) = "1000" and count <= value_32 then
				 	if FPGA_clock = '1' and go = '0' then
				 		count <= count +1 ;
				 		go <= '1';
				 	elsif FPGA_clock = '0' then
				 		go <= '0';
				 	end if;
				 elsif unsigned(m) > "1000" or unsigned(m) < "0100" then
				 	count <= (others => '0');
				 end if;
			end if ;
		end process colckCounter;

	colckSwitch: process(FPGA_clock)
		begin
			if unsigned(m) = "1000" and count <= value_32 then
				sclk_in(sclk_in'high) <= FPGA_clock;
				sclk_in(sclk_in'high-1) <= FPGA_clock;
				sclk_in(sclk_in'high-2) <= FPGA_clock;
				sclk_in(sclk_in'high-3) <= FPGA_clock;
			elsif unsigned(m) < "1000" and unsigned(m) >= "0100" then
				sclk_in(sclk_in'high) <= FPGA_clock;
				sclk_in(sclk_in'high-1) <= FPGA_clock;
				sclk_in(sclk_in'high-2) <= FPGA_clock;
				sclk_in(sclk_in'high-3) <= FPGA_clock;				
			else
				sclk_in <= (others =>'1');
			end if ;
		end process colckSwitch;

	SCLK_OUT<= sclk_in;
END ARCHITECTURE STUDENT_V2;


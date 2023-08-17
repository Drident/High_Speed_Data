--
-- VHDL Architecture Bachelor.MAIN_MUX.STUDENT
--
-- Created:
--          by - christop.grobety.UNKNOWN (WE2332207)
--          at - 13:08:20 31.05.2023
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE STUDENT OF MAIN_MUX IS
BEGIN
	mux: process(FW_NCS_F,AF_CLOCK,AF_CLOCK_ADC,FW_CLOCK,AW_CLOCK,
									AW_NCS_A,AF_NCS_A,M,AF_MISO)
	-- WARNING IF ERROR IN PHYSIC -> SWITCH CASE METHODE ALEX
	begin
		case M is
			-- init
			when "0000" =>	
				ADC_CLOCK <=  '1';
				FR_CLOCK <= (others => '1');
				ADC_NCS <= '1';
				FR_NCS <= (others => '1');
				FRAM_SDI <= (others => '0');
				MISO <= '1';		
			-- Read/Write ADC
			when "0010" =>	
				ADC_CLOCK <= AW_CLOCK;
				FR_CLOCK <= (others => '1');
				ADC_NCS <= AW_NCS_A;
				--FR_NCS <= (others => '1');
				--FRAM_SDI <= (others => '0');
				MISO <= '1';

			-- ADC to FRAM
			when "1010" =>
				ADC_CLOCK <= AF_CLOCK_ADC;
				FR_CLOCK <= AF_CLOCK;
				ADC_NCS <= AF_NCS_A;
				FR_NCS <= AF_NCS_F;
				FRAM_SDI <= AF_FRAM_SDI;
				MISO <= '1';

			-- ADC to FRAM
			when "1011" =>
				ADC_CLOCK <= '1';
				FR_CLOCK <= (others => '1');
				ADC_NCS <= '1';
				FR_NCS <= (others => '1');
				FRAM_SDI <= (others => '0');
				MISO <= AF_MISO;
				
			-- read/write FRAM
			when others =>
				MISO <= '1';
				if M <= "1000" and M >="0100" then
					--ADC_CLOCK <= '0';
					FR_CLOCK <= FW_CLOCK;
					ADC_NCS <= '1';
					FR_NCS <= FW_NCS_F;
					FRAM_SDI <= FW_FRAM_SDI;
				else
					--FR_NCS <= (others => '1');
					ADC_NCS <= '1';
					ADC_CLOCK <=  '1';
					--FR_CLOCK <= (others => '1');
					FR_CLOCK <= (others => '1');
					FRAM_SDI <= (others => '0');
				end if;
			end case;
	end process mux;
	--MISO <= '1';
END ARCHITECTURE STUDENT;


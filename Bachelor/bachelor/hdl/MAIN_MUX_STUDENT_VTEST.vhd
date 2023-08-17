--
-- VHDL Architecture Bachelor.MAIN_MUX.STUDENT_VTEST
--
-- Created:
--          by - christop.grobety.UNKNOWN (WE2332207)
--          at - 11:47:48 28.06.2023
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE STUDENT_VTEST OF MAIN_MUX IS
BEGIN
	mux: process(FW_NCS_F,AF_CLOCK,AF_CLOCK_ADC,FW_CLOCK,AW_CLOCK,
									AW_NCS_A,AF_NCS_A,M,AF_MISO)
	-- WARNING IF ERROR IN PHYSIC -> SWITCH CASE METHODE ALEX
	begin
			FR_CLOCK <= FW_CLOCK;
			FR_NCS <= FW_NCS_F;
			FRAM_SDI <= FW_FRAM_SDI;
			
			ADC_NCS <= '1';
			ADC_CLOCK <=  '0';
			MISO <= '1'; -- floating miso
	end process mux;	

END ARCHITECTURE STUDENT_VTEST;


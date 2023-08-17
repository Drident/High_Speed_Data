--
-- VHDL Architecture Bachelor.PRETRIG_VALUE.STUDENT
--
-- Created:
--          by - christop.grobety.UNKNOWN (WE2332207)
--          at - 13:12:09 05.06.2023
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
ARCHITECTURE STUDENT OF PRETRIG_VALUE IS
  signal count_pre: unsigned(3 downto 0);
  signal valuePreTrig_int: unsigned(7 downto 0);
  signal valuePreTrig: unsigned(7 downto 0);
  signal stmClk_old: std_uLogic;
BEGIN
  value_of_preTrig: process(reset, clock)
  begin
    if reset = '1' then
      count_pre <= (others => '0');
      valuePreTrig_int <= "11110000";
      stmClk_old <= stmClk;

    elsif rising_edge(clock) then
      stmClk_old <= stmClk;
      if preTrigger = '1' then
        if stmClk='1' and stmClk_old = '0' then
          valuePreTrig_int <= SHIFT_LEFT(valuePreTrig_int,1);
          valuePreTrig_int(0) <= MOSI;
        end if;
      end if;
    end if;
  end process value_of_preTrig;

preTriggerValue <= valuePreTrig_int;
END ARCHITECTURE STUDENT;


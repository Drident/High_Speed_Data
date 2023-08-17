--
-- VHDL Architecture Bachelor.cont_done.v3_test
--
-- Created:
--          by - christop.grobety.UNKNOWN (WE2332207)
--          at - 10:21:22 20.07.2023
--
-- using Mentor Graphics HDL Designer(TM) 2019.2 (Build 5)
--
LIBRARY Common;
  USE Common.CommonLib.all;

ARCHITECTURE v3_test OF cont_done IS
    signal memoryTrig, memoryTrigTest : unsigned((memory_size-1) downto 0);
    signal count_memory: unsigned((memory_size-1) downto 0);
    signal count_preTrig: unsigned((memory_size-1) downto 0);
    signal done_wait : unsigned(3 downto 0);
    constant wait_time          : natural := 4;
    signal Trigg_in : std_uLogic ;
    --signal Trigg: std_uLogic ;
    
BEGIN
  done_Counter: process(reset, clock)
  begin
    if reset = '1' then
      count_preTrig <= (others => '0');
      count_memory <= (others => '0');
      done_wait <= (others => '0');
      done <= '0';
      Memory <= (others => '0');
      memoryTrig  <= (others => '1');
      --Trigg <= '0';

    elsif rising_edge(clock) then
      if go = '1' then
          count_memory <= count_memory+1 ;  
          if count_preTrig /= memoryTrigTest and Trigg_in = '1' then
            count_preTrig <= count_preTrig+1;
          end if ;
      elsif count_preTrig = memoryTrigTest and done = '0' then
          done <= '1';
          Memory <= count_memory;
      elsif done = '1' then
          count_preTrig <= (others => '0');
          count_memory <= (others => '0');
          done_wait <= done_wait+1 ;
          if done_wait = wait_time then
            done_wait <= (others => '0');
            done <= '0';
          end if;
      end if;
    end if;
  end process done_Counter;

trigg_set: process(M, Trigg)
  begin
    if M /= "1010" then
      Trigg_in <= '0';
      memoryTrigTest <= resize((memoryTrig/to_unsigned(100,memoryTrig'length))
                                            *preTriggVal,memoryTrig'length);
    elsif M = "1010" and Trigg = '1' then
      Trigg_in <= '1';
    end if ;
  end process trigg_set;
END ARCHITECTURE v3_test;


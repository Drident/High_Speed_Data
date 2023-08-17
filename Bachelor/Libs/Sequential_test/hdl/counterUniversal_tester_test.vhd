LIBRARY std;
  USE std.textio.ALL;

LIBRARY ieee;
  USE ieee.std_logic_textio.ALL;

LIBRARY Common_test;
  USE Common_test.testutils.all;

ARCHITECTURE test OF counterUniversal_tester IS

  constant clockFrequency: real := 66.0E6;
  constant clockPeriod: time := (1.0/clockFrequency) * 1 sec;
  signal sClock: std_uLogic := '1';

BEGIN
  ------------------------------------------------------------------------------
                                                              -- clock and reset
  sClock <= not sClock after clockPeriod/2;
  clock <= transport sClock after clockPeriod*9/10;
  reset <= '1', '0' after 2*clockPeriod;

  ------------------------------------------------------------------------------
  process
  begin
    -- Default values
    load <= '0';
    enable <= '0';
    down_nUp <= '0';
    loadValue <= to_unsigned(1, loadValue'length);
    wait until falling_edge(reset);

    write(output,
      lf & lf & lf &
      "----------------------------------------------------------------" & lf &
      "-- Starting testbench" & lf &
      "--" &
      lf & lf
    );

    -- Set target, count should stay 1
    write(output, lf & 
      "Count should stay 1" & lf
    );
    wait for 100*clockPeriod;
      -- assert countOut is 1
    assert countOut = 1
      report "Incorrect output at launch - should be 1"
      severity error;
    assert countOut /= 1
      report "Correct output at launch"
      severity note;
    wait for 10*clockPeriod;

    -- Count until target of 100 twice
    write(output, lf & 
      "Count should reach 100" & lf
    );
    enable <= '1';
    wait for 99*clockPeriod;
      -- assert is 100
    assert countOut = 100
      report "Incorrect output - should be 100"
      severity error;
    assert countOut /= 100
      report "Correct output"
      severity note;
    wait for 10*clockPeriod;

    -- Reload
    write(output, lf & 
      "Count should reload to 1" & lf
    );
    load <= '1';
    wait for clockPeriod;
    load <= '0';
      -- assert count is 1
    assert countOut = 1
      report "Incorrect output - should be 1"
      severity error;
    assert countOut /= 1
      report "Correct output"
      severity note;
    wait for 10*clockPeriod;

    -- Reload without enable
    write(output, lf & 
      "Count should reload even w.o. enable" & lf
    );
    wait for 200*clockPeriod;
    enable <= '0';
    load <= '1';
    wait for clockPeriod;
    load <= '0';
      -- assert count is 1
    assert countOut = 1
      report "Incorrect output - should be 1"
      severity error;
    assert countOut /= 1
      report "Correct output"
      severity note;
    wait for 10*clockPeriod;

    -- Count overflow
    write(output, lf & 
      "Count should overflow with reached in the end" & lf
    );
    enable <= '1';
    wait for (2**c_bitNb - 1) * clockPeriod;
      -- assert count is 1
    assert countOut = 1
      report "Incorrect output - should be 1"
      severity error;
    assert countOut /= 1
      report "Correct output"
      severity note;
      -- assert reached is 1
    assert targetReached = '1'
      report "Target should be reached"
      severity error;
    assert targetReached /= '1'
      report "Target reached"
      severity note;

    -- Count in reverse
    write(output, lf & 
      "Reverse count" & lf
    );
    down_nUp <= '1';
    wait for clockPeriod;
      -- assert count is max
    assert countOut = 2**c_bitNb - 1
      report "Incorrect output - should be (others=>'1')"
      severity error;
    assert countOut /= 2**c_bitNb - 1
      report "Correct output"
      severity note;
      -- assert reached is 1
    assert targetReached = '1'
      report "Target should be reached"
      severity error;
    assert targetReached /= '1'
      report "Target reached"
      severity note;
    wait for 10*clockPeriod;

    -- End
    write(output,
      lf & lf & lf &
      "----------------------------------------------------------------" & lf &
      "-- Testbench end" & lf &
      "--" &
      lf & lf
    );
    wait;
  end process;

END ARCHITECTURE test;

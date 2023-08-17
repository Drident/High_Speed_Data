LIBRARY Common_test;
  USE Common_test.testUtils.all;

ARCHITECTURE test OF interlock_tester IS

  constant clockFrequency : real := 100.0E6;
  constant clockPeriod     : time := 1.0/clockFrequency * 1 sec;
  signal clock_int         : std_ulogic := '1';
                                                                      -- command
  signal sendCommand, commandSent: std_uLogic;
  signal commandString : string(1 to 32) := (others => '-');
  signal commandDelay : time := 2*commandNb*clockPeriod;
  signal commandInterval : time := 10*clockPeriod;

BEGIN
  ------------------------------------------------------------------------------
                                                             -- reset and clock
  reset <= '1', '0' after 3*clockPeriod;
  clock_int <= not clock_int after clockPeriod/2;
  clock <= transport clock_int after clockPeriod*9/10;

  ------------------------------------------------------------------------------
                                                                -- test sequence
  process
  begin
    sendCommand <= '0';
    wait for commandInterval;
                                               -- simulate write and read on LCD
    print("Selecting LCD");
    commandString <= pad("sel LCD", commandString'length);
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
    commandString <= pad("wr 1234 89AB", commandString'length);
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
    commandString <= pad("rd 5678", commandString'length);
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
                                          -- deselect components (for interlock)
    print("Deselecting components");
    commandString <= pad("sel none", commandString'length);
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
                                                            -- end of simulation
    print(cr & cr);
    assert false
      report "End of simulation"
      severity failure;
    wait;
  end process;
  --============================================================================
                                                              -- send characters
  sendLine: process
    variable commandRight: natural;
  begin

    commandSent <= '0';
    charEn <= '0';
    charIn <= to_unsigned(character'pos(' '), charIn'length);

    wait until rising_edge(sendCommand);

    commandRight := commandString'right;
    while commandString(commandRight) = ' ' loop
      commandRight := commandRight-1;
    end loop;

    for index in commandString'left to commandRight loop
      charIn <= to_unsigned(character'pos(commandString(index)), charIn'length);
      charEn <= '1', '0' after clockPeriod;
      wait for commandDelay;
    end loop;

    charIn <= to_unsigned(character'pos(cr), charIn'length);
    charEn <= '1', '0' after clockPeriod;
    wait for commandDelay;

    commandSent <= '1';
    wait for 1 ns;

  end process sendLine;

END ARCHITECTURE test;


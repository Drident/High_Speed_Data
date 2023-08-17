LIBRARY Common_test;
  USE Common_test.testUtils.all;

ARCHITECTURE test OF selectionDecoderRam_tester IS

  constant clockFrequency : real := 100.0E6;
  constant clockPeriod     : time := 1.0/clockFrequency * 1 sec;
  signal clock_int         : std_ulogic := '1';
                                                                      -- command
  signal sendCommand, commandSent: std_uLogic;
  signal commandString : string(1 to 9+2*commandLength+2) := (others => ' ');
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
                                                             -- fill command RAM
    print("Filling command RAM");
    commandString <= ":1400000076657273696F6E0D000000000000000000000000D9";
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
    commandString <= ":1400140073616D706C696E670D000000000000000000000070";
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
    commandString <= ":1400280072656C6179730D0000000000000000000000000027";
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
    commandString <= ":14003C006D656D526561640D000000000000000000000000E8";
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
    commandString <= ":140050006D656D57726974650D000000000000000000000045";
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
    commandString <= pad(":00000001FF", commandString'length);
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;

    ----------------------------------------------------------------------------
                                                      -- test unexisting command
    print("Trying hello world");
    commandString <= pad("Hello world", commandString'length);
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
                                                            -- test bare command
    print("Asking for version");
    commandString <= pad("version", commandString'length);
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
                                                            -- test bare command
    print("Asking for version");
    commandString <= pad("versi*n", commandString'length);
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
                                          -- test command with boolean parameter
    print("Turning relays on");
    commandString <= pad("relays 1", commandString'length);
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
                                           -- test command with single parameter
    print("Setting sampling rate");
    commandString <= pad("sampling 12C0", commandString'length);
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
                                        -- test command with multiple parameters
    wait for commandInterval;
    commandString <= pad("memWrite 1234 5678", commandString'length);
    sendCommand <= '1', '0' after 1 ns;
    wait until commandSent = '1';
    wait for commandInterval;
                                       -- test command with early end of command
    wait for commandInterval;
    commandString <= pad("memWrite 1234" & lf & "5678 9ABC", commandString'length);
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

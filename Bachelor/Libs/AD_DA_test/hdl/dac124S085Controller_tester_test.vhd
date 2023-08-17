ARCHITECTURE test OF dac124S085Controller_tester IS
                                                              -- reset and clock
  constant clockPeriod: time := (1.0/clockFrequency) * 1 sec;
  signal clock_int: std_ulogic := '1';
                                                                    -- SPI clock
  constant spiPeriod: time := (1.0/spiFrequency) * 1 sec;
  signal sclkEn_int : std_ulogic := '1';
                                                                     -- sampling
  constant samplingPeriod: time := (1.0/samplingRate) * 1 sec;
  signal samplingEn : std_ulogic := '1';

BEGIN
  ------------------------------------------------------------------------------
                                                              -- reset and clock
  reset <= '1', '0' after 2*clockPeriod;

  clock_int <= not clock_int after clockPeriod/2;
  clock <= transport clock_int after clockPeriod*9/10;
                                                                    -- SPI clock
  sclkEn_int <= '0' after clockPeriod when sclkEn_int = '1'
    else '1' after spiPeriod/2-clockPeriod;
  sclkEn <= sclkEn_int;
                                                                     -- sampling
  samplingEn <= '0' after clockPeriod when samplingEn = '1'
    else '1' after samplingPeriod-clockPeriod;
  startConv <= samplingEn;

  ------------------------------------------------------------------------------
                                                                -- test sequence
  process
  begin
    amplitudeA <= (others => '0');
    amplitudeB <= (others => '0');
    amplitudeC <= (others => '0');
    amplitudeD <= (others => '0');
                                                               -- write values
    for index in 1 to 20 loop
      wait for samplingPeriod;
      amplitudeA <= to_unsigned(index, amplitudeA'length);
      amplitudeB <= to_unsigned(2*index, amplitudeB'length);
      amplitudeC <= to_unsigned(3*index, amplitudeC'length);
      amplitudeD <= to_unsigned(4*index, amplitudeD'length);
    end loop;
                                                          -- end of simulation
    wait;
  end process;

END ARCHITECTURE test;

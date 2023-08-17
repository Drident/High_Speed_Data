LIBRARY Common;
  USE Common.CommonLib.ALL;

ARCHITECTURE RTL OF dac124S085controller IS
                                                                    -- DAC clock
  signal sclk_int : std_ulogic;
                                                       -- single sample sequence
  constant idLength: positive := 2;
  constant opLength: positive := 2;
  constant sequenceLength: positive := idLength + opLength + dacBitNb;
  signal sequenceCounter: unsigned(requiredBitNb(sequenceLength+1)-1 downto 0);
  signal updateSequenceCounter: std_ulogic;
                                                           -- 4 samples sequence
  signal startSequence: std_ulogic;
  signal dacId: unsigned(requiredBitNb(dacNb-1)-1 downto 0);
  signal updateDacId: std_ulogic;
                                                               -- shift register
  constant opWriteReg       : unsigned(opLength-1 downto 0) := "00";
  constant opWriteAndUpdate : unsigned(opLength-1 downto 0) := "01";
  constant opWriteAllUpdate : unsigned(opLength-1 downto 0) := "10";
  constant opPowerDown      : unsigned(opLength-1 downto 0) := "11";
  signal shiftRegister: unsigned(sequenceLength+1-1 downto 0);

BEGIN
                                                                    -- DAC clock
  builfSpiClock: process(reset, clock)
  begin
    if reset = '1' then
      sclk_int <=  '0';
    elsif rising_edge(clock) then
      if sclkEn = '1' then
        sclk_int <= not sclk_int;
      end if;
    end if;
  end process builfSpiClock;

  SCLK <= sclk_int;
                                                       -- single sample sequence
  startSequence <= '1' when startConv = '1'
    else '1' when (dacId > 0) and (updateDacId = '1')
    else '0';

  updateSequenceCounter <= '1' when (sclkEn = '1') and (sclk_int = '0')
    else '0';

  countSequence: process(reset, clock)
  begin
    if reset = '1' then
      sequenceCounter <= (others => '0');
    elsif rising_edge(clock) then
      if startSequence = '1' then
        sequenceCounter <= to_unsigned(
          sequenceLength+1, sequenceCounter'length
        );
      elsif updateSequenceCounter = '1' then
        if sequenceCounter > 0 then
          sequenceCounter <= sequenceCounter - 1;
        end if;
      end if;
    end if;
  end process countSequence;

  SYNC_n <= not '1' when
    (sequenceCounter < sequenceLength+1) and (sequenceCounter > 0)
    else not '0';
                                                           -- 4 samples sequence
  updateDacId <= '1' when
    (sequenceCounter = 1) and (updateSequenceCounter = '1') and (dacId > 0)
    else '0';

  selectDac: process(reset, clock)
  begin
    if reset = '1' then
      dacId <= (others => '0');
    elsif rising_edge(clock) then
      if startConv = '1' then
        dacId <= to_unsigned(dacNb-1, dacId'length);
      elsif updateDacId = '1' then
        dacId <= dacId - 1;
      end if;
    end if;
  end process selectDac;
                                                               -- shift register

  dataShiftRegister: process(reset, clock)
  begin
    if reset = '1' then
      shiftRegister <= (others => '0');
    elsif rising_edge(clock) then
      if startSequence = '1' then
        case to_integer(dacId-1) is
          when 3 => shiftRegister <= '0' & dacId-1 & opWriteAndUpdate & amplitudeD;
          when 2 => shiftRegister <= '0' & dacId-1 & opWriteAndUpdate & amplitudeC;
          when 1 => shiftRegister <= '0' & dacId-1 & opWriteAndUpdate & amplitudeB;
          when 0 => shiftRegister <= '0' & dacId-1 & opWriteAndUpdate & amplitudeA;
          when others => null;
        end case;
      elsif updateSequenceCounter = '1' then
        shiftRegister(shiftRegister'high downto 1) <= shiftRegister(shiftRegister'high-1 downto 0);
      end if;
    end if;
  end process dataShiftRegister;

  DIN <= shiftRegister(shiftRegister'high);

END ARCHITECTURE RTL;

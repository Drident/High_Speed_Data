library Common;
  use Common.CommonLib.all;
library Memory;

ARCHITECTURE RTL OF selectionDecoderRam IS
                                                                  -- command RAM
  constant ramAddressBitNb: positive := requiredBitNb(commandNb*commandLength-1);
  constant ramDataBitNb: positive := characterBitNb;
  signal ramAddress : unsigned(ramAddressBitNb-1 downto 0);
  signal ramData : std_ulogic_vector(ramDataBitNb-1 downto 0);
  signal ramEn: std_ulogic;

  COMPONENT bram
  GENERIC (
    addressBitNb : positive := 8;
    dataBitNb    : positive := 8;
    initFile     : string   := "bramInit.txt"
  );
  PORT (
    clock     : IN     std_ulogic;
    en        : IN     std_ulogic;
    writeEn   : IN     std_ulogic;
    addressIn : IN     std_ulogic_vector (addressBitNb-1 DOWNTO 0);
    dataIn    : IN     std_ulogic_vector (dataBitNb-1 DOWNTO 0);
    dataOut   : OUT    std_ulogic_vector (dataBitNb-1 DOWNTO 0)
  );
  END COMPONENT;

  FOR ALL : bram USE ENTITY Memory.bram;
                                                              -- command decoder
  constant charLf: positive := character'pos(lf);
  constant charCr: positive := character'pos(cr);
  constant charEsc: positive := character'pos(esc);
  constant charSp: positive := character'pos(' ');
  constant charA: positive := character'pos('A');
  constant charZ: positive := character'pos('Z');
  constant uppercaseBitId : natural := 5;
  signal charReg: unsigned(charIn'range);
  signal charFromRam: unsigned(charIn'range);
  signal isEndOfCommand, isEarlyEndOfCommand: std_ulogic;
  signal characterCounter: unsigned(requiredBitNb(commandLength-1)+1-1 downto 0);
  signal readAddress : unsigned(ramAddressBitNb-1 downto 0);
  signal commandId, commandIdDelayed: unsigned(requiredBitNb(commandNb)-1 downto 0);
  signal commandMatches, matchingDone: std_ulogic_vector(command'range);
                                                               -- number decoder
  constant hexDigitBitNb : positive := 4;
  signal isHexDigit, isEndOfWord, isNumber: std_ulogic;
  signal hexDigit: unsigned(hexDigitBitNb-1 downto 0);
  signal decodedValue: unsigned(valueBitNb-1 downto 0);
                                                                   -- RAM update
  constant hexValueBitNb : positive := 8;
  constant startCodeId : natural := 0;
  constant baseAddressId : natural := 3;
  constant recordTypeId : natural := 7;
  constant hexRecordStart: positive := character'pos(':');
  constant endOfFile: positive := character'pos('1');
  signal charEn_delayed: std_ulogic;
  signal isHexDataRecord: std_ulogic;
  signal recordBaseAddress, writeAddress : unsigned(ramAddressBitNb-1 downto 0);
  signal hexValue: unsigned(hexValueBitNb-1 downto 0);
  signal writeToRam: std_ulogic;

BEGIN

  ramAddress <= readAddress when isHexDataRecord = '0'
    else writeAddress;

  I_ram : bram
    GENERIC MAP (
       addressBitNb => ramAddressBitNb,
       dataBitNb    => ramDataBitNb,
       initFile     => ""
    )
    PORT MAP (
       clock   => clock,
       en      => ramEn,
       writeEn => writeToRam,
       addressIn => std_ulogic_vector(ramAddress),
       dataIn  => std_ulogic_vector(resize(hexValue, ramDataBitNb)),
       dataOut => ramData
    );

  ------------------------------------------------------------------------------
                                                                   -- RAM update
  delayCharEn: process(reset, clock)
  begin
    if reset = '1' then
      charEn_delayed <= '0';
    elsif rising_edge(clock) then
      charEn_delayed <= charEn;
    end if;
  end process delayCharEn;

  checkForHexDataRecord: process(reset, clock)
  begin
    if reset = '1' then
      isHexDataRecord <= '0';
    elsif rising_edge(clock) then
      if (charEn_delayed = '1') and (characterCounter = startCodeId) then
        if charin = hexRecordStart then
          isHexDataRecord <= '1';
        else
          isHexDataRecord <= '0';
        end if;
      end if;
      if (charEn_delayed = '1') and (characterCounter = recordTypeId+1) then
        if charin = endOfFile then
          isHexDataRecord <= '0';
        end if;
      end if;
    end if;
  end process checkForHexDataRecord;

  updateHexValue: process(reset, clock)
  begin
    if reset = '1' then
      hexValue <= (others => '0');
    elsif rising_edge(clock) then
      if charEn = '1' then
        hexValue <= shift_left(hexValue, hexDigit'length);
        hexValue(hexDigit'range) <= hexDigit;
      end if;
    end if;
  end process updateHexValue;

  storeShortBaseAddress: if recordBaseAddress'length < hexValue'length generate
    storeBaseAddress: process(reset, clock)
    begin
      if reset = '1' then
        recordBaseAddress <= (others => '0');
      elsif rising_edge(clock) then
        if charEn_delayed = '1' then
          if (characterCounter = baseAddressId+3) then
            recordBaseAddress <= hexValue(recordBaseAddress'range);
          end if;
        end if;
      end if;
    end process storeBaseAddress;
  end generate storeShortBaseAddress;

  storeLongBaseAddress: if recordBaseAddress'length >= hexValue'length generate
    storeBaseAddress: process(reset, clock)
    begin
      if reset = '1' then
        recordBaseAddress <= (others => '0');
      elsif rising_edge(clock) then
        if charEn_delayed = '1' then
          if
            (characterCounter = baseAddressId+1) or
            (characterCounter = baseAddressId+3)
          then
            recordBaseAddress <= shift_left(recordBaseAddress, hexValue'length);
            recordBaseAddress(hexValue'range) <= hexValue;
          end if;
        end if;
      end if;
    end process storeBaseAddress;
  end generate storeLongBaseAddress;

  buildWriteCommand: process(isHexDataRecord, characterCounter, charEn_delayed)
  begin
    writeToRam <= '0';
    if isHexDataRecord = '1' then
      if characterCounter > recordTypeId+1 then
        writeToRam <= charEn_delayed and not(characterCounter(0));
      end if;
    end if;
  end process buildWriteCommand;

  writeAddress <= recordBaseAddress + (characterCounter-10)/2;

  ------------------------------------------------------------------------------
                                                              -- store character
  findEndOfCommand: process(charEn, charIn, characterCounter)
  begin
    isEndOfCommand <= '0';
    if (charEn = '1') and (characterCounter+1 /= 0) then
      if (charIn = charLf) or (charIn = charCr) then
        isEndOfCommand <= '1';
      end if;
    end if;
  end process ;

  endOfCommand <= isEndOfCommand;

  storeChar: process(reset, clock)
  begin
    if reset = '1' then
      charReg <= (others => '0');
    elsif rising_edge(clock) then
      if charEn = '1' then
        if isEndOfCommand = '1' then
          charReg <= (others => '0');
        else
          if caseSensitive then
            charReg <= charIn;
          else
            charReg <= charIn;
            if (charA <= charIn) and (charIn <= charZ) then
              charReg(uppercaseBitId) <= '1';
            end if;
          end if;
        end if;
      end if;
    end if;
  end process storeChar;

  ------------------------------------------------------------------------------
                                                              -- command decoder
  countChars: process(reset, clock)
  begin
    if reset = '1' then
      characterCounter <= (others => '1');
    elsif rising_edge(clock) then
      if charEn = '1' then
                                            -- set to max value between commands
        if isEndOfCommand = '1' then 
          characterCounter <= (others => '1');
                                            -- eat out further end of line chars
        elsif (characterCounter+1 = 0) then
          if (charIn /= charLf) and (charIn /= charCr) then
            characterCounter <= (others => '0');
          end if;
                                      -- increment at each new command character
        else
          characterCounter <= characterCounter + 1;
        end if;
      end if;
    end if;
  end process countChars;

  countCommands: process(reset, clock)
  begin
    if reset = '1' then
      commandId <= (others => '1');
      commandIdDelayed <= (others => '1');
    elsif rising_edge(clock) then
      if commandId+1 = 0 then
        if (charEn = '1') and (isEndOfCommand = '0') then
          commandId <= (others => '0');
        end if;
      else
        if commandId < commandNb-1 then
            commandId <= commandId + 1;
        else
            commandId <= (others => '1');
        end if;
      end if;
      commandIdDelayed <= commandId;
    end if;
  end process countCommands;

  charReady <= '1' when commandId+1 = 0
    else '0';

  readAddress <= resize(
    commandLength*resize(commandId, commandLength+characterCounter'length)
      + characterCounter,
    ramAddress'length
  );

  ramEn <= '1' when commandId+1 /= 0
    else '0';

  ramDataToChar: process(ramData)
  begin
    charFromRam <= unsigned(ramData);
    if (charA <= unsigned(ramData)) and (unsigned(ramData) <= charZ) then
      charFromRam(uppercaseBitId) <= '1';
    end if;
  end process ramDataToChar;

  checkForMatch: process(reset, clock)
  begin
    if reset = '1' then
      commandMatches <= (others => '0');
      matchingDone  <= (others => '0');
      isEarlyEndOfCommand <= '0';
    elsif rising_edge(clock) then
      isEarlyEndOfCommand <= '0';
      if (charEn = '1') and (characterCounter+1 = 0) then
        commandMatches <= (others => '1');
        matchingDone <= (others => '0');
      elsif commandIdDelayed+1 /= 0 then
        if charFromRam = charCr then
          matchingDone(to_integer(commandIdDelayed+1)) <= '1';
        elsif charFromRam = charLf then
          if commandMatches(to_integer(commandIdDelayed+1)) = '1' then
            isEarlyEndOfCommand <= '1';
          end if;
        elsif charFromRam /= charEsc then
          if matchingDone(to_integer(commandIdDelayed+1)) = '0' then
            if charReg /= charFromRam then
              commandMatches(to_integer(commandIdDelayed+1)) <= '0';
            end if;
          end if;
        end if;
      end if;
    end if;
  end process checkForMatch;

  buildCommandControls: process(
    isHexDataRecord,
    isEndOfCommand, isEarlyEndOfCommand,
    commandMatches
  )
  begin
    command <= (others => '0');
    if isHexDataRecord = '0' then
      if (isEndOfCommand = '1') or (isEarlyEndOfCommand = '1') then
        command <= commandMatches;
      end if;
    end if;
  end process buildCommandControls;

  ------------------------------------------------------------------------------
                                                               -- number decoder
  decodeHexDigit: process(charIn)
  begin
    isHexDigit <= '0';
    hexDigit <= (others => '0');
    if (charIn >= 16#30#) and (charIn <= 16#39#) then
      isHexDigit <= '1';
      hexDigit <= charIn(hexDigit'range);
    elsif (charIn >= 16#41#) and (charIn <= 16#46#) then
      isHexDigit <= '1';
      hexDigit <= charIn(hexDigit'range) + 9;
    end if;
  end process decodeHexDigit;

  isEndOfWord <= '1' when (charIn = charSp)
      or (charIn = charLf) or (charIn = charCr)
    else '0';

  decodeNumber: process(reset, clock)
  begin
    if reset = '1' then
      decodedValue <= (others => '0');
    elsif rising_edge(clock) then
      if charEn = '1' then
        if isEndOfWord = '0' then
          decodedValue <= shift_left(decodedValue, hexDigit'length);
          decodedValue(hexDigit'range) <= hexDigit;
        else
          decodedValue <= (others => '0');
        end if;
      end if;
    end if;
  end process decodeNumber;

  value <= decodedValue;

  checkIfIsNumber: process(reset, clock)
  begin
    if reset = '1' then
      isNumber <= '1';
    elsif rising_edge(clock) then
      if charEn = '1' then
        if isEndOfWord = '0' then
          if isHexDigit = '0' then
            isNumber <= '0';
          end if;
        else
          isNumber <= '1';
        end if;
      end if;
    end if;
  end process checkIfIsNumber;

  valueEn <= '1' when (charEn = '1') and (isEndOfWord = '1')
      and (isNumber = '1')
    else '0';

END ARCHITECTURE RTL;

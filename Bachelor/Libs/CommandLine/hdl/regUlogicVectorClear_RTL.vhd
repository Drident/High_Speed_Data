ARCHITECTURE RTL OF regUlogicVectorClear IS

BEGIN

  updateRegister: process(reset, clock)
  begin
    if reset = '1' then
      regValue <= std_ulogic_vector(to_unsigned(initialValue, regValue'length));
    elsif rising_edge(clock) then
      if clear = '1' then
        regValue <= (others => '0');
      elsif en = '1' then
        regValue <= commandValue;
      end if;
    end if;
  end process updateRegister;

END ARCHITECTURE RTL;

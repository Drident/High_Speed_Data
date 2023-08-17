-- Example FSM to control the VGA signals
-- VGA data can be started (default), stopped, source can be changed and
--  the intensity set.

-- Intensity synced with pos and buttons debounced

Library Common;

ARCHITECTURE rtl OF displayController IS

  type state_type is (s_started, s_stopped);
  signal current_state, next_state : state_type;

  signal lsig_inhibit, lsig_source : std_ulogic;
  signal lsig_button3_delay, lsig_intensity : std_ulogic;

  COMPONENT debouncer
    GENERIC( 
        counterBitNb : positive   := 18;
        invertInput  : std_ulogic := '0'
    );
    PORT( 
        clock     : IN     std_ulogic;
        input     : IN     std_ulogic;
        reset     : IN     std_ulogic;
        debounced : OUT    std_ulogic
    );
  END COMPONENT;

  -- Debounced button4 and button3
  signal lsig_btn3_debounced, lsig_btn4_debounced : std_ulogic;
    -- For arnd. 20 ms debounce -> arnd. 19 bits
  constant c_buttonDebounceBitNb : positive := 19;

BEGIN

  debouncer_btn3_inst : debouncer
    GENERIC MAP( 
        counterBitNb => c_buttonDebounceBitNb,
        invertInput  => '0'
    )
    PORT MAP ( 
        clock     => clk,
        input     => button3,
        reset     => rst,
        debounced => lsig_btn3_debounced
    );

  debouncer_btn4_inst : debouncer
    GENERIC MAP ( 
        counterBitNb => c_buttonDebounceBitNb,
        invertInput  => '0'
    )
    PORT MAP ( 
        clock     => clk,
        input     => button4,
        reset     => rst,
        debounced => lsig_btn4_debounced
    );

  -- Output Signals
  -----------------
  intensity_on <= lsig_intensity;
  source_sel <= lsig_source;
  inhibitRgb <= lsig_inhibit;

  source_sel_proc : process(rst, clk)
  begin
    if rst = '1' then
      lsig_source <= '0';
      lsig_button3_delay <= '0';
    elsif rising_edge(clk) then
      lsig_button3_delay <= lsig_btn3_debounced;
      if lsig_btn3_debounced = '1' and lsig_button3_delay = '0' then
        lsig_source <= not lsig_source;
      end if;
    end if;
  end process source_sel_proc;

  intensity_synchro_proc : process(rst, clk)
  begin
    if rst = '1' then
      lsig_intensity <= '0';
    elsif rising_edge(clk) then
      if posX = 0 and posY = 0 then
        lsig_intensity <= lsig_btn4_debounced;
      end if;
    end if;
  end process;

  -- Commands
  -----------

  commands_state_proc: process (clk, rst)
  begin
    if rst = '1' then
      current_state <= s_started;
    elsif rising_edge(clk) then
      current_state <= next_state;
    end if;
  end process commands_state_proc;

  commands_nextstate_proc: process(current_state, start, stop, posX, posY)
  begin
    -- Fix current_state seen as clock by synthetizer
    next_state <= current_state;

    lsig_inhibit <= '0';

    case current_state is

      when s_started     =>
        -- No need to debounce start and stop
        if stop = '1' and posX = 0 and posY = 0 then
          next_state <= s_stopped;
        end if;

      when s_stopped     =>
        lsig_inhibit <= '1';
        if start = '1' and posX = 0 and posY = 0 then
          next_state <= s_started;
        end if;

      when others => null;

    end case;
  end process commands_nextstate_proc;

END ARCHITECTURE rtl;

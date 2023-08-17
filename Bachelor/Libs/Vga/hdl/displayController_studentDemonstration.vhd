-- Example FSM to control the VGA signals
-- VGA data can be started (default), stopped, source can be changed and
--  the intensity set.

-- Intentionnaly, to show the students, the intensity is not in sync with
--  the begin of the frame.
-- Also, the source selection is not debounced

ARCHITECTURE studentDemonstration OF displayController IS

  type state_type is (s_started, s_stopped);
  signal current_state, next_state : state_type;

  signal lsig_inhibit, lsig_source, lsig_button3_delay : std_ulogic;

BEGIN

  -- Output Signals
  -----------------
  intensity_on <= button4;
  source_sel <= lsig_source;
  inhibitRgb <= lsig_inhibit;

  source_sel_proc : process(rst, clk)
  begin
    if rst = '1' then
      lsig_source <= '0';
      lsig_button3_delay <= '0';
    elsif rising_edge(clk) then
      lsig_button3_delay <= button3;
      if button3 = '1' and lsig_button3_delay = '0' then
        lsig_source <= not lsig_source;
      end if;
    end if;
  end process source_sel_proc;

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

  commands_nextstate_proc: process(current_state, start, stop)
  begin
    -- Fix current_state seen as clock by synthetizer
    next_state <= current_state;

    lsig_inhibit <= '0';

    case current_state is

      when s_started     =>
        if stop = '1' then
          next_state <= s_stopped;
        end if;

      when s_stopped     =>
        lsig_inhibit <= '1';
        if start = '1' then
          next_state <= s_started;
        end if;

      when others => null;

    end case;
  end process commands_nextstate_proc;

END ARCHITECTURE studentDemonstration;

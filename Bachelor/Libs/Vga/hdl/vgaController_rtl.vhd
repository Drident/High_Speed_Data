
ARCHITECTURE rtl OF vgaController IS

  constant c_hSync_target : positive := g_hSync;
  constant c_hBackporch_target : positive := c_hSync_target + g_hBackPorch;
  constant c_hActivep_target : positive := c_hBackporch_target + g_hResolution;
  constant c_hFrontporch_target : positive := c_hActivep_target + g_hFrontPorch;
  
  constant c_vSync_target : positive := g_vSync;
  constant c_vBackporch_target : positive := c_vSync_target + g_vBackPorch;
  constant c_vActivep_target : positive := c_vBackporch_target + g_vResolution;
  constant c_vFrontporch_target : positive := c_vActivep_target + g_vFrontPorch;

  signal lsig_dataEnable, lsig_dataEnableV, lsig_dataEnableH : std_ulogic;
  signal lsig_hSync, lsig_vSync: std_ulogic;
  signal lsig_hSync_delay, lsig_vSync_delay: std_ulogic;

  type state_type is (s_sync, s_backPorch, s_frontPorch, s_activePixel);
  signal current_state_hSync, next_state_hSync : state_type;
  signal current_state_vSync, next_state_vSync : state_type;

  signal lvec_hCount : unsigned(requiredBitNb(g_hFrontPorch + g_hResolution + g_hBackPorch + g_hSync) downto 0);
  signal lvec_vCount : unsigned(requiredBitNb(g_vFrontPorch + g_vResolution + g_vBackPorch + g_vSync) downto 0);

  signal lsig_rst_hCount, lsig_rst_vCount, lsig_en_vCount : std_ulogic;

  signal lvec_posX : unsigned(g_posXBitNb - 1 downto 0);
  signal lvec_posY : unsigned(g_posYBitNb - 1 downto 0);
  signal lvec_posXY : unsigned(lvec_posX'length + lvec_posY'length - 1 downto 0);

BEGIN

  -- Output Signals
  -----------------

  -- dataEnable
  dataEnable      <= lsig_dataEnable;
  lsig_dataEnable <= lsig_dataEnableH and lsig_dataEnableV;

  -- xSync signals according to the defined polarity
  hSync <= lsig_hSync when g_hSyncPol else not lsig_hSync;
  vSync <= lsig_vSync when g_vSyncPol else not lsig_vSync;

  -- position
  posX <= lvec_posX;
  posY <= lvec_posY;
  posXY <= lvec_posXY;

  -- Data Generator
  -----------------

  data_gen: process(rst, lsig_dataEnable, pixelData)
  begin
    if rst = '1' then
      rgb <= (others => '0');
    elsif lsig_dataEnable = '1' then
      rgb <= pixelData;
    else
      rgb <= (others => '0');
    end if;
  end process data_gen;

  -- Intensity
  -----------

  intensity_sel : process(rst, clk)
  begin
    if rst = '1' then
      intensity <= '0';
    elsif rising_edge(clk) then
      intensity <= intensity_on;
    end if;
  end process intensity_sel;


  -- Counters
  -----------

  counter_proc: process(clk, rst)
  begin
    if rst = '1' then
      lsig_hSync_delay <= '0';
      lsig_vSync_delay <= '0';
      lvec_hCount <= (others => '0');
      lvec_vCount <= (others => '0');
      lvec_posXY <= (others=>'0');
      lvec_posX        <= (others => '0');
      lvec_posY        <= (others => '0');
    elsif rising_edge(clk) then
      lsig_hSync_delay <= lsig_hSync;
      lsig_vSync_delay <= lsig_vSync;
      lvec_hCount <= lvec_hCount + 1;
      if lsig_rst_hCount = '1' then
        lvec_hCount <= (others => '0');
      end if;
      if lsig_rst_vCount = '1' then
        lvec_vCount <= (others => '0');
      elsif lsig_en_vCount = '1' then
        lvec_vCount <= lvec_vCount + 1;
      end if;
      
      if lsig_dataEnableH = '1' and lsig_dataEnableV = '1' and next_state_hSync /= s_frontPorch then
        lvec_posX <= lvec_posX + 1;
      elsif lsig_hSync = '0' and lsig_hSync_delay = '1' then
        lvec_posX <= (others => '0');
      end if;
      if lsig_hSync = '0' and lsig_hSync_delay = '1' and lsig_dataEnableV = '1' and lvec_posXY /= 0 then
        lvec_posY <= lvec_posY + 1;
      elsif lsig_vSync = '0' and lsig_vSync_delay = '1' then
        lvec_posY <= (others => '0');
      end if;
      if lsig_dataEnableH = '1' and lsig_dataEnableV = '1' and next_state_hSync /= s_frontPorch then
        lvec_posXY <= lvec_posXY + 1;
      elsif lsig_hSync = '0' and lsig_hSync_delay = '1' and lsig_dataEnableV = '1' and lvec_posXY /= 0 then
        lvec_posXY <= lvec_posXY + 1;
      elsif lsig_vSync = '0' and lsig_vSync_delay = '1' then
        lvec_posXY <= (others => '0');
      end if;

    end if;
  end process counter_proc;

  -- hSync
  --------

  hSync_state_proc: process (clk, rst)
  begin
    if rst = '1' then
      current_state_hSync <= s_sync;
    elsif rising_edge(clk) then
      current_state_hSync <= next_state_hSync;
    end if;
  end process hSync_state_proc;

  hSync_nextstate_proc: process(current_state_hSync, lvec_hCount)
  begin
    next_state_hSync <= current_state_hSync;
    lsig_hSync       <= '1';
    lsig_dataEnableH <= '0';
    lsig_rst_hCount  <= '0';
    lsig_en_vCount   <= '0';
    case current_state_hSync is
      when s_sync        =>
        lsig_hSync <= '0';
        if lvec_hCount >= c_hSync_target then
          next_state_hSync <= s_backPorch;
        end if;
      when s_backPorch   =>
        if lvec_hCount >= c_hBackporch_target then
          next_state_hSync <= s_activePixel;
        end if;
      when s_activePixel =>
        lsig_dataEnableH <= '1';
        if lvec_hCount >= c_hActivep_target then
          next_state_hSync <= s_frontPorch;
        end if;
      when s_frontPorch  =>
        -- since is clocked, need to be set one clock prior the reset
        if lvec_hCount = c_hFrontporch_target - 1 then
          lsig_en_vCount  <= '1';
        elsif lvec_hCount >= c_hFrontporch_target then
          lsig_rst_hCount <= '1';
          next_state_hSync <= s_sync;
        end if;
      when others =>
        next_state_hSync <= s_sync;
    end case;
  end process hSync_nextstate_proc;

  -- vSync
  --------

  vSync_state_proc: process (clk, rst)
  begin
    if rst = '1' then
      current_state_vSync <= s_sync;
    elsif rising_edge(clk) then
      current_state_vSync <= next_state_vSync;
    end if;
  end process vSync_state_proc;

  vSync_nextstate_proc: process(current_state_vSync, lvec_vCount)
  begin
    next_state_vSync <= current_state_vSync;
    lsig_vSync       <= '1';
    lsig_dataEnableV <= '0';
    lsig_rst_vCount  <= '0';
    case current_state_vSync is
      when s_sync        =>
        lsig_vSync <= '0';
        if lvec_vCount >= c_vSync_target then
          next_state_vSync <= s_backPorch;
        end if;
      when s_backPorch   =>
        if lvec_vCount >= c_vBackporch_target then
          next_state_vSync <= s_activePixel;
        end if;
      when s_activePixel =>
        lsig_dataEnableV <= '1';
        if lvec_vCount >= c_vActivep_target then
          next_state_vSync <= s_frontPorch;
        end if;
      when s_frontPorch  =>
        if lvec_vCount >= c_vFrontporch_target then
          lsig_rst_vCount <= '1';
          next_state_vSync <= s_sync;
        end if;
      when others =>
        next_state_vSync <= s_sync;
    end case;
  end process vSync_nextstate_proc;

END ARCHITECTURE rtl;

library sb_ice40_components_syn;
  use sb_ice40_components_syn.components.all;

 

ARCHITECTURE rtl OF ice40_sbIoOd IS
BEGIN
  ODInst : SB_IO_OD     
    generic map (
      NEG_TRIGGER => '0',      -- FF's are rising edge
      PIN_TYPE    => "011001"  -- 01 => output en, 10 => out = DOUT0, 01 = DIN0 clocked
    ) 
    port map ( 
      DOUT1 => open,           -- Output on falling edge
      DOUT0 =>  rgbWr,         -- Output on rising edge
      CLOCKENABLE => '0',      -- No clock needed w. PIN_TYPE
      LATCHINPUTVALUE => '0',  -- Input clocked, not latched
      INPUTCLK => clk,         -- No clock needed w. PIN_TYPE
      DIN1 => open,            -- Input on falling edge
      DIN0 => rgbRd,           -- Input value, rising clocked
      OUTPUTENABLE => '1',     -- Output always EN w. PIN_TYPE
      OUTPUTCLK => '0',        -- No clock needed w. PIN_TYPE
      PACKAGEPIN  => rgbPin    -- User’s Pin signal name
    );
END ARCHITECTURE rtl;


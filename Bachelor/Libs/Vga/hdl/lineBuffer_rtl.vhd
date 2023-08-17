architecture rtl of lineBuffer is

  type line_array_type is array (natural range <>) of std_logic_vector((g_hResolution*g_bitNb)-1 downto 0);
  signal lineBuffer : line_array_type(g_lineBufferNb-1 downto 0);

begin

-- Output MS-bit of MS-buffer
pixelData <= lineBuffer(lineBuffer'high)(lineBuffer(lineBuffer'high)'high-1 downto lineBuffer(lineBuffer'high)'high-g_bitNb) when inhibitRgb = '0' else (others=>'0');

buffer_proc: process(clk, rst)
begin
  if rst = '1' then
    -- init buffer to zero
    lineBuffer <= (others => (others => '0'));
  elsif rising_edge(clk) then
    if lineDataLoad = '1' then
      -- buffer load new value
      lineBuffer(lineBuffer'high downto lineBuffer'low+1) <= lineBuffer(lineBuffer'high-1 downto lineBuffer'low);
      lineBuffer(lineBuffer'low) <= lineData;
    elsif dataShift = '1' then
      -- ROL the register
      lineBuffer(lineBuffer'high) <= lineBuffer(lineBuffer'high)(lineBuffer(lineBuffer'high)'high-1 downto lineBuffer(lineBuffer'high)'low) & lineBuffer(lineBuffer'high)(lineBuffer(lineBuffer'high)'high);
    end if;
  end if;
end process buffer_proc;

end architecture rtl;
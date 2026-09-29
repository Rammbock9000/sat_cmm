library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity mcm is
  port (
    x: in signed(15 downto 0);
    s: in std_logic_vector(1 downto 0);
    y_0: out signed(23 downto 0);
    y_1: out signed(23 downto 0)
);
end entity;
architecture mcm of mcm is
    signal s_bottom_resize: signed(15 downto 0);
    signal x_and_bottom: signed(15 downto 0);
    signal x_and_bottom_resize: signed(16 downto 0);
    signal x_and_bottom_resize_shift: signed(16 downto 0);
    signal x_bottom_mux: signed(16 downto 0);
    signal x_bottom_resize: signed(23 downto 0);

    signal x_and_1: signed(15 downto 0);
    signal x_and_2: signed(15 downto 0);
    signal s_top_1_resize: signed(15 downto 0);
    signal s_top_2_resize: signed(15 downto 0);
    signal x_and_2_resize: signed(23 downto 0);
    signal x_and_2_shift: signed(23 downto 0);
    signal x_and_1_resize: signed(23 downto 0);
    signal x_add_1: signed(23 downto 0);
    signal x_resize: signed(23 downto 0);
    signal x_shift_7: signed(23 downto 0);

begin
    -- top data path
    s_top_1_resize <= (others => not s(0));
    s_top_2_resize <= (others => s(1));
    x_and_1 <= x and s_top_1_resize;
    x_and_2 <= x_and_1 and s_top_2_resize;
    x_and_2_resize <= resize(x_and_2, 24);
    x_and_2_shift <= shift_left(x_and_2_resize, 2);
    x_and_1_resize <= resize(x_and_1, 24);
    x_add_1 <= x_and_1_resize - x_and_2_shift;
    x_resize <= resize(x, 24);
    x_shift_7 <= shift_left(x_resize, 7);
    y_0 <= x_add_1 + x_shift_7;

    -- bottom data path
    s_bottom_resize <= (others => s(0) or s(1));
    x_and_bottom <= x and s_bottom_resize;
    x_and_bottom_resize <= resize(x_and_bottom, 17);
    x_and_bottom_resize_shift <= shift_left(x_and_bottom_resize, 1);
    x_bottom_mux <= x_and_bottom_resize_shift when s(1) = '1' else x_and_bottom_resize;
    x_bottom_resize <= resize(x_bottom_mux, 24);
    y_1 <= shift_left(x_bottom_resize, 4);
end architecture;



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_d: std_logic_vector(1 downto 0);
  signal x_0_signed: signed(15 downto 0);
  signal x_1_signed: signed(15 downto 0);
  signal x_0_mcm_0: signed(23 downto 0);
  signal x_0_mcm_1: signed(23 downto 0);
  signal x_1_mcm_0: signed(23 downto 0);
  signal x_1_mcm_1: signed(23 downto 0);
  signal y_0_signed: signed(23 downto 0);
  signal y_1_signed: signed(23 downto 0);
begin
  process (clk)
  begin
    if rising_edge(clk) then
      -- config select register
      config_select_d <= config_select;
      -- input node 0 with id 0
      x_0_signed <= signed(x_0);
      -- input node 1 with id 1
      x_1_signed <= signed(x_1);
      -- output node 0
      y_0 <= std_logic_vector(y_0_signed);
      -- output node 1
      y_1 <= std_logic_vector(y_1_signed);
    end if;
  end process;
  -- mcm
  mcm_0 : entity work.mcm
    port map (
      x => x_0_signed,
      s => config_select_d(1 downto 0),
      y_0 => x_0_mcm_0,
      y_1 => x_0_mcm_1
    );
  mcm_1 : entity work.mcm
    port map (
      x => x_1_signed,
      s => config_select_d(1 downto 0),
      y_0 => x_1_mcm_0,
      y_1 => x_1_mcm_1
    );
  -- output add/sub
  y_0_signed <= x_0_mcm_0 - x_1_mcm_1;
  y_1_signed <= x_1_mcm_0 + x_0_mcm_1;
end architecture;

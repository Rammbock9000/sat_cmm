library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity mcm is
  generic (W: integer := 16);
  port (
    x: in signed(W-1 downto 0);
    s: in std_logic_vector(1 downto 0);
    y_0: out signed(W+8 downto 0);
    y_1: out signed(W+8 downto 0)
);
end entity;
architecture mcm of mcm is
  signal x_resize_1: signed(W downto 0);
  signal x_resize_3: signed(W+2 downto 0);
  signal x_resize_4: signed(W+3 downto 0);
  signal x_shift_1: signed(W downto 0);
  signal x_shift_3: signed(W+2 downto 0);
  signal x_shift_4: signed(W+3 downto 0);

  signal x_mux_1: signed(W downto 0);
  signal x_mux_1_resize: signed(W+8 downto 0);
  signal x_mux_1_shift: signed(W+8 downto 0);
  signal x_mux_4: signed(W+3 downto 0);

  signal x_add_1: signed(W+2 downto 0);

  signal x_mux_4_resize: signed(W+6 downto 0);
  signal x_mux_4_shift: signed(W+6 downto 0);
  signal x_resize_6: signed(W+6 downto 0);
  signal x_add_2: signed(W+6 downto 0);

  signal x_add_1_resize: signed(W+3 downto 0);
  signal x_add_1_shift: signed(W+3 downto 0);
  signal x_mux_add_1: signed(W+3 downto 0);
  signal x_mux_add_1_resize: signed(W+8 downto 0);
  signal x_mux_add_1_mux: signed(W+8 downto 0);

  signal x_add_2_resize: signed(W+8 downto 0);
  signal x_add_2_shift: signed(W+8 downto 0);
  signal x_mux_add_2: signed(W+8 downto 0);
  signal x_mux_add_2_shift: signed(W+8 downto 0);

  signal x_add_3: signed(W+8 downto 0);
  signal s_0_resize: signed(W+8 downto 0);
begin
  x_resize_1 <= resize(x, x_resize_1'length);
  x_resize_3 <= resize(x, x_resize_3'length);
  x_shift_1 <= shift_left(x_resize_1, 1);
  x_shift_3 <= shift_left(x_resize_3, 3);
  x_add_1 <= x_shift_3 - x_resize_3;

  x_resize_4 <= resize(x, x_resize_4'length);
  x_shift_4 <= shift_left(x_resize_4, 4);
  x_mux_4 <= x_shift_4 when s(1) = '0' else x_resize_4;
  x_mux_4_resize <= resize(x_mux_4, x_mux_4_resize'length);
  x_mux_4_shift <= shift_left(x_mux_4_resize, 2);
  x_resize_6 <= resize(x, x_resize_6'length);
  x_add_2 <= x_mux_4_shift + x_resize_6;

  x_add_1_resize <= resize(x_add_1, x_add_1_resize'length);
  x_add_1_shift <= shift_left(x_add_1_resize, 1);
  x_mux_add_1 <= x_add_1_shift when s(1) = '0' else not x_add_1_resize;
  x_mux_add_1_resize <= resize(x_mux_add_1, x_mux_add_1_resize'length);

  x_mux_1 <= x_shift_1 when s(1) = '1' else x_resize_1;
  x_mux_1_resize <= resize(x_mux_1, x_mux_1_resize'length);
  x_mux_1_shift <= shift_left(x_mux_1_resize, 7);
  
  x_add_2_resize <= resize(x_add_2, x_add_2_resize'length);
  x_add_2_shift <= shift_left(x_add_2_resize, 3);
  x_mux_add_2 <= x_add_2_shift when s(1) = '1' else x_add_2_resize;

  x_mux_add_1_mux <= x_add_2_shift when s(0) = '0' else x_mux_add_1_resize;
  x_add_3 <= signed(unsigned(x_mux_1_shift) + unsigned(x_mux_add_1_mux) + unsigned(s(0 downto 0) and s(1 downto 1)));

  s_0_resize <= (others => s(0));
  y_1 <= x_add_3 and s_0_resize;

  x_mux_add_2_shift <= shift_left(x_mux_add_2, 2);
  y_0 <= x_mux_add_2_shift when s(0) = '1' else x_add_3;

end architecture;



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
    y_1: out std_logic_vector(24 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_d: std_logic_vector(1 downto 0);
  signal x_0_signed: signed(15 downto 0);
  signal x_1_signed: signed(15 downto 0);
  signal x_0_mcm_0: signed(24 downto 0);
  signal x_0_mcm_1: signed(24 downto 0);
  signal x_1_mcm_0: signed(24 downto 0);
  signal x_1_mcm_1: signed(24 downto 0);
  signal y_0_signed: signed(24 downto 0);
  signal y_1_signed: signed(24 downto 0);
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

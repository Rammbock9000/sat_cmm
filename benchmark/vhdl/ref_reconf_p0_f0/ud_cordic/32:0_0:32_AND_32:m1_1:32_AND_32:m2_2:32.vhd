library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity mcm is
  port (
    x: in signed(15 downto 0);
    s: in std_logic_vector(1 downto 0);
    y_0: out signed(21 downto 0);
    y_1: out signed(21 downto 0)
);
end entity;
architecture mcm of mcm is
    signal x_resize: signed(21 downto 0);

    signal s_0_resize: signed(15 downto 0);
    signal x_and: signed(15 downto 0);
    signal x_and_resize: signed(21 downto 0);
    signal x_and_shift: signed(21 downto 0);
begin
  
  x_resize <= resize(x, 22);
  y_0 <= shift_left(x_resize, 5);

  s_0_resize <= (others => s(0) or s(1));
  x_and <= x and s_0_resize;
  x_and_resize <= resize(x_and, 22);
  x_and_shift <= shift_left(x_and_resize, 1);
  y_1 <= x_and_shift when s(1) = '1' else x_and_resize;

end architecture;



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(21 downto 0);
    y_1: out std_logic_vector(21 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_d: std_logic_vector(1 downto 0);
  signal x_0_signed: signed(15 downto 0);
  signal x_1_signed: signed(15 downto 0);
  signal x_0_mcm_0: signed(21 downto 0);
  signal x_0_mcm_1: signed(21 downto 0);
  signal x_1_mcm_0: signed(21 downto 0);
  signal x_1_mcm_1: signed(21 downto 0);
  signal y_0_signed: signed(21 downto 0);
  signal y_1_signed: signed(21 downto 0);
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

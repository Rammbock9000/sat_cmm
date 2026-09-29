library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(3 downto 0);
    y_0: out std_logic_vector(20 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(3 downto 0);
  signal config_select_1: std_logic_vector(3 downto 0);
  signal config_select_2: std_logic_vector(3 downto 0);
  signal config_select_3: std_logic_vector(3 downto 0);
  signal config_select_4: std_logic_vector(3 downto 0);
  signal config_select_5: std_logic_vector(3 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(19 downto 0);
  signal c_2_0_4_False_resize: signed(19 downto 0);
  signal c_2_0_4_False_shift: signed(19 downto 0);
  signal c_2_0_1_False_resize: signed(19 downto 0);
  signal c_2_0_1_False_shift: signed(19 downto 0);
  signal c_2_0_2_False_resize: signed(19 downto 0);
  signal c_2_0_2_False_shift: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(20 downto 0);
  signal c_4_3_0_False_resize: signed(20 downto 0);
  signal c_4_3_0_False_shift: signed(20 downto 0);
  signal c_4_3_2_False_resize: signed(20 downto 0);
  signal c_4_3_2_False_shift: signed(20 downto 0);
  signal c_4_3_1_False_resize: signed(20 downto 0);
  signal c_4_3_1_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_resize: signed(20 downto 0);
begin
  config_select_0 <= config_select;
  process(clk)
  begin
    if rising_edge(clk) then
      config_select_1 <= config_select_0;
      config_select_2 <= config_select_1;
      config_select_3 <= config_select_2;
      config_select_4 <= config_select_3;
      config_select_5 <= config_select_4;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 5
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_5);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[-1], [3], [-1], [-1], [-1], [-1], [-1], [3], [-1], [3], [3], [3], [3], [3], [-1], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "0000",
    '0' when "0001",
    '1' when "0010",
    '1' when "0011",
    '1' when "0100",
    '1' when "0101",
    '1' when "0110",
    '0' when "0111",
    '1' when "1000",
    '0' when "1001",
    '0' when "1010",
    '0' when "1011",
    '0' when "1100",
    '0' when "1101",
    '1' when "1110",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[4], [16], [1], [2], [4], [2], [1], [4], [1], [2], [2], [1], [2], [4], [4], [16]]
  c_2_0_4_False_resize <= resize(c_0, 20);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  c_2_0_1_False_resize <= resize(c_0, 20);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_2_False_resize <= resize(c_0, 20);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "00" when "0001",
    "00" when "1111",
    "01" when "1010",
    "01" when "0011",
    "01" when "1100",
    "01" when "1001",
    "01" when "0101",
    "10" when "1110",
    "10" when "0100",
    "10" when "0111",
    "10" when "1101",
    "10" when "0000",
    "11" when "0110",
    "11" when "0010",
    "11" when "1000",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_4_False_shift;
        when "01" => c_2 <= c_2_0_1_False_shift;
        when "10" => c_2 <= c_2_0_2_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-5], [-13], [-2], [-3], [-5], [-3], [-2], [-1], [0], [1], [1], [4], [5], [7], [3], [19]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "0000",
    '1' when "0001",
    '1' when "0010",
    '1' when "0011",
    '1' when "0100",
    '1' when "0101",
    '1' when "0110",
    '1' when "0111",
    '0' when "1000",
    '1' when "1001",
    '1' when "1010",
    '0' when "1011",
    '0' when "1100",
    '0' when "1101",
    '0' when "1110",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 20,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[-20], [-13], [-8], [-6], [-5], [-3], [-2], [-1], [0], [1], [2], [4], [5], [7], [12], [19]]
  c_4_3_0_False_resize <= c_3;
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_3_2_False_resize <= c_3;
  c_4_3_2_False_shift <= shift_left(c_4_3_2_False_resize, 2);
  c_4_3_1_False_resize <= c_3;
  c_4_3_1_False_shift <= shift_left(c_4_3_1_False_resize, 1);
  with config_select_3 select c_4_sel <= 
    "00" when "1001",
    "00" when "1111",
    "00" when "0101",
    "00" when "1000",
    "00" when "1011",
    "00" when "0001",
    "00" when "0100",
    "00" when "0111",
    "00" when "1101",
    "00" when "0110",
    "00" when "1100",
    "01" when "0000",
    "01" when "0010",
    "01" when "1110",
    "10" when "1010",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_3_0_False_shift;
        when "01" => c_4 <= c_4_3_2_False_shift;
        when others => c_4 <= c_4_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 5 and associated fundamentals [[-20], [-13], [-8], [-6], [-5], [-3], [-2], [-1], [0], [1], [2], [4], [5], [7], [12], [19]]
  c_5_resize <= c_4;
  c_5 <= shift_left(c_5_resize, 0);
end architecture;

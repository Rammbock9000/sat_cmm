library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(26 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(1 downto 0);
  signal config_select_1: std_logic_vector(1 downto 0);
  signal config_select_2: std_logic_vector(1 downto 0);
  signal config_select_3: std_logic_vector(1 downto 0);
  signal config_select_4: std_logic_vector(1 downto 0);
  signal config_select_5: std_logic_vector(1 downto 0);
  signal config_select_6: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(25 downto 0);
  signal c_3_i0_resize: signed(25 downto 0);
  signal c_3_i1_resize: signed(25 downto 0);
  signal c_3_i0_shift: signed(25 downto 0);
  signal c_3_i1_shift: signed(25 downto 0);
  signal c_3_arith: signed(25 downto 0);
  signal c_3_oshift: signed(25 downto 0);
  signal c_4: signed(30 downto 0);
  signal c_4_1_12_False_resize: signed(30 downto 0);
  signal c_4_1_12_False_shift: signed(30 downto 0);
  signal c_4_1_0_False_resize: signed(30 downto 0);
  signal c_4_1_0_False_shift: signed(30 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(26 downto 0);
  signal c_5_i0_resize: signed(26 downto 0);
  signal c_5_i1_resize: signed(26 downto 0);
  signal c_5_i0_shift: signed(26 downto 0);
  signal c_5_i1_shift: signed(26 downto 0);
  signal c_5_arith: signed(26 downto 0);
  signal c_5_oshift: signed(26 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(30 downto 0);
  signal c_6_3_1_False_resize: signed(30 downto 0);
  signal c_6_3_1_False_shift: signed(30 downto 0);
  signal c_6_3_6_False_resize: signed(30 downto 0);
  signal c_6_3_6_False_shift: signed(30 downto 0);
  signal c_6_3_0_False_resize: signed(30 downto 0);
  signal c_6_3_0_False_shift: signed(30 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(26 downto 0);
  signal c_7_i0_resize: signed(26 downto 0);
  signal c_7_i1_resize: signed(26 downto 0);
  signal c_7_i0_shift: signed(26 downto 0);
  signal c_7_i1_shift: signed(26 downto 0);
  signal c_7_arith: signed(26 downto 0);
  signal c_7_oshift: signed(26 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(26 downto 0);
  signal c_8_resize: signed(26 downto 0);
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
      config_select_6 <= config_select_5;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 8
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_8);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[7], [9], [7]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 3,
      s_y_i => 0,
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
      c_1 <= c_1_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [8], [1]]
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[446], [560], [446]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 26,
      s_x_i => 6,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[28672], [9], [7]]
  c_4_1_12_False_resize <= resize(c_1, 31);
  c_4_1_12_False_shift <= shift_left(c_4_1_12_False_resize, 12);
  c_4_1_0_False_resize <= resize(c_1, 31);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_12_False_shift;
        when others => c_4 <= c_4_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[30456], [-2231], [-1777]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 31,
      w_y_i => 26,
      w_o => 27,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[28544], [1120], [446]]
  c_6_3_1_False_resize <= resize(c_3, 31);
  c_6_3_1_False_shift <= shift_left(c_6_3_1_False_resize, 1);
  c_6_3_6_False_resize <= resize(c_3, 31);
  c_6_3_6_False_shift <= shift_left(c_6_3_6_False_resize, 6);
  c_6_3_0_False_resize <= resize(c_3, 31);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_1_False_shift;
        when "01" => c_6 <= c_6_3_6_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[-1912], [-1111], [-1331]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 31,
      w_y_i => 27,
      w_o => 27,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_5,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 8 and associated fundamentals [[1912], [1111], [1331]]
  c_8_resize <= c_7;
  c_8 <= -shift_left(c_8_resize, 0);
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
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
  signal config_select_7: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_0_0_False_resize: signed(20 downto 0);
  signal c_1_0_0_False_shift: signed(20 downto 0);
  signal c_1_0_5_False_resize: signed(20 downto 0);
  signal c_1_0_5_False_shift: signed(20 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_0_1_False_resize: signed(21 downto 0);
  signal c_2_0_1_False_shift: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(16 downto 0);
  signal c_4_0_1_False_resize: signed(16 downto 0);
  signal c_4_0_1_False_shift: signed(16 downto 0);
  signal c_4_0_0_False_resize: signed(16 downto 0);
  signal c_4_0_0_False_shift: signed(16 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_0_0_False_resize: signed(21 downto 0);
  signal c_5_0_0_False_shift: signed(21 downto 0);
  signal c_5_0_6_False_resize: signed(21 downto 0);
  signal c_5_0_6_False_shift: signed(21 downto 0);
  signal c_5_0_2_False_resize: signed(21 downto 0);
  signal c_5_0_2_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(24 downto 0);
  signal c_8_0_0_False_resize: signed(24 downto 0);
  signal c_8_0_0_False_shift: signed(24 downto 0);
  signal c_8_0_9_False_resize: signed(24 downto 0);
  signal c_8_0_9_False_shift: signed(24 downto 0);
  signal c_8_0_5_False_resize: signed(24 downto 0);
  signal c_8_0_5_False_shift: signed(24 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_0_4_False_resize: signed(19 downto 0);
  signal c_9_0_4_False_shift: signed(19 downto 0);
  signal c_9_0_3_False_resize: signed(19 downto 0);
  signal c_9_0_3_False_shift: signed(19 downto 0);
  signal c_9_0_0_False_resize: signed(19 downto 0);
  signal c_9_0_0_False_shift: signed(19 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_i0_resize: signed(24 downto 0);
  signal c_10_i1_resize: signed(24 downto 0);
  signal c_10_i0_shift: signed(24 downto 0);
  signal c_10_i1_shift: signed(24 downto 0);
  signal c_10_arith: signed(24 downto 0);
  signal c_10_oshift: signed(24 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(24 downto 0);
  signal c_11_3_4_False_resize: signed(24 downto 0);
  signal c_11_3_4_False_shift: signed(24 downto 0);
  signal c_11_6_1_False_resize: signed(24 downto 0);
  signal c_11_6_1_False_shift: signed(24 downto 0);
  signal c_11_6_9_False_resize: signed(24 downto 0);
  signal c_11_6_9_False_shift: signed(24 downto 0);
  signal c_11_6_0_False_resize: signed(24 downto 0);
  signal c_11_6_0_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(26 downto 0);
  signal c_13_3_0_False_resize: signed(26 downto 0);
  signal c_13_3_0_False_shift: signed(26 downto 0);
  signal c_13_6_4_False_resize: signed(26 downto 0);
  signal c_13_6_4_False_shift: signed(26 downto 0);
  signal c_13_10_4_False_resize: signed(26 downto 0);
  signal c_13_10_4_False_shift: signed(26 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_3_2_False_resize: signed(23 downto 0);
  signal c_14_3_2_False_shift: signed(23 downto 0);
  signal c_14_3_0_False_resize: signed(23 downto 0);
  signal c_14_3_0_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(24 downto 0);
  signal c_16_3_4_False_resize: signed(24 downto 0);
  signal c_16_3_4_False_shift: signed(24 downto 0);
  signal c_16_10_1_False_resize: signed(24 downto 0);
  signal c_16_10_1_False_shift: signed(24 downto 0);
  signal c_16_10_0_False_resize: signed(24 downto 0);
  signal c_16_10_0_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(25 downto 0);
  signal c_18_12_0_False_resize: signed(25 downto 0);
  signal c_18_12_0_False_shift: signed(25 downto 0);
  signal c_18_15_3_False_resize: signed(25 downto 0);
  signal c_18_15_3_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_resize: signed(25 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_15_0_False_resize: signed(25 downto 0);
  signal c_20_15_0_False_shift: signed(25 downto 0);
  signal c_20_17_0_False_resize: signed(25 downto 0);
  signal c_20_17_0_False_shift: signed(25 downto 0);
  signal c_20_12_1_False_resize: signed(25 downto 0);
  signal c_20_12_1_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_resize: signed(25 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_15_0_False_resize: signed(25 downto 0);
  signal c_22_15_0_False_shift: signed(25 downto 0);
  signal c_22_17_0_False_resize: signed(25 downto 0);
  signal c_22_17_0_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_resize: signed(25 downto 0);
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
      config_select_7 <= config_select_6;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_19);
    end if;
  end process;
  -- output node 1 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 2 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_23);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [32], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 21);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_5_False_resize <= resize(c_0, 21);
  c_1_0_5_False_shift <= shift_left(c_1_0_5_False_resize, 5);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[2], [1], [64], [2]]
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 22);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_1_False_shift;
        when others => c_2 <= c_2_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [31], [-63], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 22,
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
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [2], [2], [2]]
  c_4_0_1_False_resize <= resize(c_0, 17);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  c_4_0_0_False_resize <= resize(c_0, 17);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_1_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[64], [1], [64], [4]]
  c_5_0_0_False_resize <= resize(c_0, 22);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_6_False_resize <= resize(c_0, 22);
  c_5_0_6_False_shift <= shift_left(c_5_0_6_False_resize, 6);
  c_5_0_2_False_resize <= resize(c_0, 22);
  c_5_0_2_False_shift <= shift_left(c_5_0_2_False_resize, 2);
  with config_select_1 select c_5_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_0_False_shift;
        when "01" => c_5 <= c_5_0_6_False_shift;
        when others => c_5 <= c_5_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[65], [1], [66], [-2]]
  with config_select_2 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[-517], [39], [-591], [19]]
  with config_select_3 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_7_sub_sel,
      x_i => c_3,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[32], [512], [1], [512]]
  c_8_0_0_False_resize <= resize(c_0, 25);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_9_False_resize <= resize(c_0, 25);
  c_8_0_9_False_shift <= shift_left(c_8_0_9_False_resize, 9);
  c_8_0_5_False_resize <= resize(c_0, 25);
  c_8_0_5_False_shift <= shift_left(c_8_0_5_False_resize, 5);
  with config_select_1 select c_8_sel <= 
    "00" when "10",
    "01" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_0_False_shift;
        when "01" => c_8 <= c_8_0_9_False_shift;
        when others => c_8 <= c_8_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[1], [16], [16], [8]]
  c_9_0_4_False_resize <= resize(c_0, 20);
  c_9_0_4_False_shift <= shift_left(c_9_0_4_False_resize, 4);
  c_9_0_3_False_resize <= resize(c_0, 20);
  c_9_0_3_False_shift <= shift_left(c_9_0_3_False_resize, 3);
  c_9_0_0_False_resize <= resize(c_0, 20);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  with config_select_1 select c_9_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_0_4_False_shift;
        when "01" => c_9 <= c_9_0_3_False_shift;
        when others => c_9 <= c_9_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 10 and associated fundamentals [[28], [448], [65], [480]]
  with config_select_2 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
      w_o => 25,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[48], [512], [132], [-2]]
  c_11_3_4_False_resize <= resize(c_3, 25);
  c_11_3_4_False_shift <= shift_left(c_11_3_4_False_resize, 4);
  c_11_6_1_False_resize <= resize(c_6, 25);
  c_11_6_1_False_shift <= shift_left(c_11_6_1_False_resize, 1);
  c_11_6_9_False_resize <= resize(c_6, 25);
  c_11_6_9_False_shift <= shift_left(c_11_6_9_False_resize, 9);
  c_11_6_0_False_resize <= resize(c_6, 25);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_3_4_False_shift;
        when "01" => c_11 <= c_11_6_1_False_shift;
        when "10" => c_11 <= c_11_6_9_False_shift;
        when others => c_11 <= c_11_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[565], [473], [723], [17]]
  with config_select_4 select c_12_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 26,
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
      sub_i => c_12_sub_sel,
      x_i => c_11,
      y_i => c_7,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[448], [31], [1056], [3]]
  c_13_3_0_False_resize <= resize(c_3, 27);
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  c_13_6_4_False_resize <= resize(c_6, 27);
  c_13_6_4_False_shift <= shift_left(c_13_6_4_False_resize, 4);
  c_13_10_4_False_resize <= resize(c_10, 27);
  c_13_10_4_False_shift <= shift_left(c_13_10_4_False_resize, 4);
  with config_select_3 select c_13_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_3_0_False_shift;
        when "01" => c_13 <= c_13_6_4_False_shift;
        when others => c_13 <= c_13_10_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[3], [124], [-252], [3]]
  c_14_3_2_False_resize <= resize(c_3, 24);
  c_14_3_2_False_shift <= shift_left(c_14_3_2_False_resize, 2);
  c_14_3_0_False_resize <= resize(c_3, 24);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_3_2_False_shift;
        when others => c_14 <= c_14_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 15 and associated fundamentals [[445], [155], [804], [6]]
  with config_select_4 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[48], [448], [130], [480]]
  c_16_3_4_False_resize <= resize(c_3, 25);
  c_16_3_4_False_shift <= shift_left(c_16_3_4_False_resize, 4);
  c_16_10_1_False_resize <= c_10;
  c_16_10_1_False_shift <= shift_left(c_16_10_1_False_resize, 1);
  c_16_10_0_False_resize <= c_10;
  c_16_10_0_False_shift <= shift_left(c_16_10_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_3_4_False_shift;
        when "01" => c_16 <= c_16_10_1_False_shift;
        when others => c_16 <= c_16_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[613], [935], [851], [941]]
  with config_select_4 select c_17_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_17_sub_sel,
      x_i => c_16,
      y_i => c_7,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[565], [473], [723], [48]]
  c_18_12_0_False_resize <= c_12;
  c_18_12_0_False_shift <= shift_left(c_18_12_0_False_resize, 0);
  c_18_15_3_False_resize <= c_15;
  c_18_15_3_False_shift <= shift_left(c_18_15_3_False_resize, 3);
  with config_select_5 select c_18_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_12_0_False_shift;
        when others => c_18 <= c_18_15_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 19 and associated fundamentals [[565], [473], [723], [48]]
  c_19_resize <= c_18;
  c_19 <= shift_left(c_19_resize, 0);
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[445], [935], [851], [34]]
  c_20_15_0_False_resize <= c_15;
  c_20_15_0_False_shift <= shift_left(c_20_15_0_False_resize, 0);
  c_20_17_0_False_resize <= c_17;
  c_20_17_0_False_shift <= shift_left(c_20_17_0_False_resize, 0);
  c_20_12_1_False_resize <= c_12;
  c_20_12_1_False_shift <= shift_left(c_20_12_1_False_resize, 1);
  with config_select_5 select c_20_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_15_0_False_shift;
        when "01" => c_20 <= c_20_17_0_False_shift;
        when others => c_20 <= c_20_12_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 21 and associated fundamentals [[445], [935], [851], [34]]
  c_21_resize <= c_20;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'mux' in stage 5 with id 22 and associated fundamentals [[613], [155], [804], [941]]
  c_22_15_0_False_resize <= c_15;
  c_22_15_0_False_shift <= shift_left(c_22_15_0_False_resize, 0);
  c_22_17_0_False_resize <= c_17;
  c_22_17_0_False_shift <= shift_left(c_22_17_0_False_resize, 0);
  with config_select_5 select c_22_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_15_0_False_shift;
        when others => c_22 <= c_22_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 23 and associated fundamentals [[613], [155], [804], [941]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
end architecture;

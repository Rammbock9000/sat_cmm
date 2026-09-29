library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
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
  signal c_1: signed(15 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(20 downto 0);
  signal c_3_2_0_False_resize: signed(20 downto 0);
  signal c_3_2_0_False_shift: signed(20 downto 0);
  signal c_3_2_2_False_resize: signed(20 downto 0);
  signal c_3_2_2_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_1_1_False_resize: signed(18 downto 0);
  signal c_4_1_1_False_shift: signed(18 downto 0);
  signal c_4_2_0_False_resize: signed(18 downto 0);
  signal c_4_2_0_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(18 downto 0);
  signal c_6_i0_resize: signed(18 downto 0);
  signal c_6_i1_resize: signed(18 downto 0);
  signal c_6_i0_shift: signed(18 downto 0);
  signal c_6_i1_shift: signed(18 downto 0);
  signal c_6_arith: signed(18 downto 0);
  signal c_6_oshift: signed(18 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_2_1_False_resize: signed(23 downto 0);
  signal c_7_2_1_False_shift: signed(23 downto 0);
  signal c_7_2_6_False_resize: signed(23 downto 0);
  signal c_7_2_6_False_shift: signed(23 downto 0);
  signal c_7_2_0_False_resize: signed(23 downto 0);
  signal c_7_2_0_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_2_0_False_resize: signed(22 downto 0);
  signal c_8_2_0_False_shift: signed(22 downto 0);
  signal c_8_6_4_False_resize: signed(22 downto 0);
  signal c_8_6_4_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_10_0_5_False_resize: signed(20 downto 0);
  signal c_10_0_5_False_shift: signed(20 downto 0);
  signal c_10_0_0_False_resize: signed(20 downto 0);
  signal c_10_0_0_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(17 downto 0);
  signal c_11_0_0_False_resize: signed(17 downto 0);
  signal c_11_0_0_False_shift: signed(17 downto 0);
  signal c_11_0_2_False_resize: signed(17 downto 0);
  signal c_11_0_2_False_shift: signed(17 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(21 downto 0);
  signal c_13_2_1_False_resize: signed(21 downto 0);
  signal c_13_2_1_False_shift: signed(21 downto 0);
  signal c_13_6_3_False_resize: signed(21 downto 0);
  signal c_13_6_3_False_shift: signed(21 downto 0);
  signal c_13_1_0_False_resize: signed(21 downto 0);
  signal c_13_1_0_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(21 downto 0);
  signal c_15_1_6_False_resize: signed(21 downto 0);
  signal c_15_1_6_False_shift: signed(21 downto 0);
  signal c_15_1_0_False_resize: signed(21 downto 0);
  signal c_15_1_0_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(18 downto 0);
  signal c_16_1_2_False_resize: signed(18 downto 0);
  signal c_16_1_2_False_shift: signed(18 downto 0);
  signal c_16_1_3_False_resize: signed(18 downto 0);
  signal c_16_1_3_False_shift: signed(18 downto 0);
  signal c_16_6_0_False_resize: signed(18 downto 0);
  signal c_16_6_0_False_shift: signed(18 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(17 downto 0);
  signal c_18_2_0_False_resize: signed(17 downto 0);
  signal c_18_2_0_False_shift: signed(17 downto 0);
  signal c_18_1_0_False_resize: signed(17 downto 0);
  signal c_18_1_0_False_shift: signed(17 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(23 downto 0);
  signal c_20_9_0_False_resize: signed(23 downto 0);
  signal c_20_9_0_False_shift: signed(23 downto 0);
  signal c_20_9_2_False_resize: signed(23 downto 0);
  signal c_20_9_2_False_shift: signed(23 downto 0);
  signal c_20_19_0_False_resize: signed(23 downto 0);
  signal c_20_19_0_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_resize: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_5_2_False_resize: signed(23 downto 0);
  signal c_22_5_2_False_shift: signed(23 downto 0);
  signal c_22_19_2_False_resize: signed(23 downto 0);
  signal c_22_19_2_False_shift: signed(23 downto 0);
  signal c_22_14_0_False_resize: signed(23 downto 0);
  signal c_22_14_0_False_shift: signed(23 downto 0);
  signal c_22_19_0_False_resize: signed(23 downto 0);
  signal c_22_19_0_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_resize: signed(23 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_17_0_False_resize: signed(23 downto 0);
  signal c_24_17_0_False_shift: signed(23 downto 0);
  signal c_24_9_0_False_resize: signed(23 downto 0);
  signal c_24_9_0_False_shift: signed(23 downto 0);
  signal c_24_5_0_False_resize: signed(23 downto 0);
  signal c_24_5_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_resize: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_14_0_False_resize: signed(23 downto 0);
  signal c_26_14_0_False_shift: signed(23 downto 0);
  signal c_26_19_1_False_resize: signed(23 downto 0);
  signal c_26_19_1_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_resize: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_17_0_False_resize: signed(23 downto 0);
  signal c_28_17_0_False_shift: signed(23 downto 0);
  signal c_28_5_0_False_resize: signed(23 downto 0);
  signal c_28_5_0_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_resize: signed(23 downto 0);
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
  -- output node 0 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 1 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 2 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 3 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 4 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_29);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[3], [5], [3], [5]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[3], [20], [3], [20]]
  c_3_2_0_False_resize <= resize(c_2, 21);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  c_3_2_2_False_resize <= resize(c_2, 21);
  c_3_2_2_False_shift <= shift_left(c_3_2_2_False_resize, 2);
  with config_select_2 select c_3_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_2_0_False_shift;
        when others => c_3 <= c_3_2_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[2], [5], [3], [2]]
  c_4_1_1_False_resize <= resize(c_1, 19);
  c_4_1_1_False_shift <= shift_left(c_4_1_1_False_resize, 1);
  c_4_2_0_False_resize <= c_2;
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "00",
    "0" when "11",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_1_False_shift;
        when others => c_4 <= c_4_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[14], [75], [15], [82]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 23,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 6 and associated fundamentals [[7], [7], [7], [7]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[3], [10], [192], [10]]
  c_7_2_1_False_resize <= resize(c_2, 24);
  c_7_2_1_False_shift <= shift_left(c_7_2_1_False_resize, 1);
  c_7_2_6_False_resize <= resize(c_2, 24);
  c_7_2_6_False_shift <= shift_left(c_7_2_6_False_resize, 6);
  c_7_2_0_False_resize <= resize(c_2, 24);
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_2_1_False_shift;
        when "01" => c_7 <= c_7_2_6_False_shift;
        when others => c_7 <= c_7_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[112], [5], [3], [112]]
  c_8_2_0_False_resize <= resize(c_2, 23);
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  c_8_6_4_False_resize <= resize(c_6, 23);
  c_8_6_4_False_shift <= shift_left(c_8_6_4_False_resize, 4);
  with config_select_2 select c_8_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_2_0_False_shift;
        when others => c_8 <= c_8_6_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 9 and associated fundamentals [[227], [20], [198], [234]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[1], [32], [32], [1]]
  c_10_0_5_False_resize <= resize(c_0, 21);
  c_10_0_5_False_shift <= shift_left(c_10_0_5_False_resize, 5);
  c_10_0_0_False_resize <= resize(c_0, 21);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  with config_select_1 select c_10_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_0_5_False_shift;
        when others => c_10 <= c_10_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[4], [4], [1], [1]]
  c_11_0_0_False_resize <= resize(c_0, 18);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  c_11_0_2_False_resize <= resize(c_0, 18);
  c_11_0_2_False_shift <= shift_left(c_11_0_2_False_resize, 2);
  with config_select_1 select c_11_sel <= 
    "0" when "10",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_0_0_False_shift;
        when others => c_11 <= c_11_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 12 and associated fundamentals [[72], [192], [240], [24]]
  with config_select_2 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 3,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[56], [10], [1], [1]]
  c_13_2_1_False_resize <= resize(c_2, 22);
  c_13_2_1_False_shift <= shift_left(c_13_2_1_False_resize, 1);
  c_13_6_3_False_resize <= resize(c_6, 22);
  c_13_6_3_False_shift <= shift_left(c_13_6_3_False_resize, 3);
  c_13_1_0_False_resize <= resize(c_1, 22);
  c_13_1_0_False_shift <= shift_left(c_13_1_0_False_resize, 0);
  with config_select_2 select c_13_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_2_1_False_shift;
        when "01" => c_13 <= c_13_6_3_False_shift;
        when others => c_13 <= c_13_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 14 and associated fundamentals [[40], [212], [242], [-22]]
  with config_select_3 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_14_sub_sel,
      x_i => c_13,
      y_i => c_12,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[64], [64], [1], [64]]
  c_15_1_6_False_resize <= resize(c_1, 22);
  c_15_1_6_False_shift <= shift_left(c_15_1_6_False_resize, 6);
  c_15_1_0_False_resize <= resize(c_1, 22);
  c_15_1_0_False_shift <= shift_left(c_15_1_0_False_resize, 0);
  with config_select_2 select c_15_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_1_6_False_shift;
        when others => c_15 <= c_15_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[7], [4], [7], [8]]
  c_16_1_2_False_resize <= resize(c_1, 19);
  c_16_1_2_False_shift <= shift_left(c_16_1_2_False_resize, 2);
  c_16_1_3_False_resize <= resize(c_1, 19);
  c_16_1_3_False_shift <= shift_left(c_16_1_3_False_resize, 3);
  c_16_6_0_False_resize <= c_6;
  c_16_6_0_False_shift <= shift_left(c_16_6_0_False_resize, 0);
  with config_select_2 select c_16_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_1_2_False_shift;
        when "01" => c_16 <= c_16_1_3_False_shift;
        when others => c_16 <= c_16_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 17 and associated fundamentals [[249], [252], [11], [248]]
  with config_select_3 select c_17_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 2,
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
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[1], [1], [3], [1]]
  c_18_2_0_False_resize <= c_2(17 downto 0);
  c_18_2_0_False_shift <= shift_left(c_18_2_0_False_resize, 0);
  c_18_1_0_False_resize <= resize(c_1, 18);
  c_18_1_0_False_shift <= shift_left(c_18_1_0_False_resize, 0);
  with config_select_2 select c_18_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_2_0_False_shift;
        when others => c_18 <= c_18_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[73], [191], [237], [23]]
  with config_select_3 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 18,
      w_o => 24,
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
      sub_i => c_19_sub_sel,
      x_i => c_12,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[227], [80], [237], [234]]
  c_20_9_0_False_resize <= c_9;
  c_20_9_0_False_shift <= shift_left(c_20_9_0_False_resize, 0);
  c_20_9_2_False_resize <= c_9;
  c_20_9_2_False_shift <= shift_left(c_20_9_2_False_resize, 2);
  c_20_19_0_False_resize <= c_19;
  c_20_19_0_False_shift <= shift_left(c_20_19_0_False_resize, 0);
  with config_select_4 select c_20_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_9_0_False_shift;
        when "01" => c_20 <= c_20_9_2_False_shift;
        when others => c_20 <= c_20_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 21 and associated fundamentals [[227], [80], [237], [234]]
  c_21_resize <= c_20;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[40], [191], [60], [92]]
  c_22_5_2_False_resize <= resize(c_5, 24);
  c_22_5_2_False_shift <= shift_left(c_22_5_2_False_resize, 2);
  c_22_19_2_False_resize <= c_19;
  c_22_19_2_False_shift <= shift_left(c_22_19_2_False_resize, 2);
  c_22_14_0_False_resize <= c_14;
  c_22_14_0_False_shift <= shift_left(c_22_14_0_False_resize, 0);
  c_22_19_0_False_resize <= c_19;
  c_22_19_0_False_shift <= shift_left(c_22_19_0_False_resize, 0);
  with config_select_4 select c_22_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_5_2_False_shift;
        when "01" => c_22 <= c_22_19_2_False_shift;
        when "10" => c_22 <= c_22_14_0_False_shift;
        when others => c_22 <= c_22_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 23 and associated fundamentals [[40], [191], [60], [92]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[249], [75], [198], [82]]
  c_24_17_0_False_resize <= c_17;
  c_24_17_0_False_shift <= shift_left(c_24_17_0_False_resize, 0);
  c_24_9_0_False_resize <= c_9;
  c_24_9_0_False_shift <= shift_left(c_24_9_0_False_resize, 0);
  c_24_5_0_False_resize <= resize(c_5, 24);
  c_24_5_0_False_shift <= shift_left(c_24_5_0_False_resize, 0);
  with config_select_4 select c_24_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_17_0_False_shift;
        when "01" => c_24 <= c_24_9_0_False_shift;
        when others => c_24 <= c_24_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 25 and associated fundamentals [[249], [75], [198], [82]]
  c_25_resize <= c_24;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[146], [212], [242], [46]]
  c_26_14_0_False_resize <= c_14;
  c_26_14_0_False_shift <= shift_left(c_26_14_0_False_resize, 0);
  c_26_19_1_False_resize <= c_19;
  c_26_19_1_False_shift <= shift_left(c_26_19_1_False_resize, 1);
  with config_select_4 select c_26_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_14_0_False_shift;
        when others => c_26 <= c_26_19_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 27 and associated fundamentals [[146], [212], [242], [46]]
  c_27_resize <= c_26;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[14], [252], [11], [248]]
  c_28_17_0_False_resize <= c_17;
  c_28_17_0_False_shift <= shift_left(c_28_17_0_False_resize, 0);
  c_28_5_0_False_resize <= resize(c_5, 24);
  c_28_5_0_False_shift <= shift_left(c_28_5_0_False_resize, 0);
  with config_select_4 select c_28_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_17_0_False_shift;
        when others => c_28 <= c_28_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 29 and associated fundamentals [[14], [252], [11], [248]]
  c_29_resize <= c_28;
  c_29 <= shift_left(c_29_resize, 0);
end architecture;

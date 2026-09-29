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
  signal config_select_7: std_logic_vector(1 downto 0);
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(18 downto 0);
  signal c_4_0_0_False_resize: signed(18 downto 0);
  signal c_4_0_0_False_shift: signed(18 downto 0);
  signal c_4_0_3_False_resize: signed(18 downto 0);
  signal c_4_0_3_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_i0_resize: signed(20 downto 0);
  signal c_6_i1_resize: signed(20 downto 0);
  signal c_6_i0_shift: signed(20 downto 0);
  signal c_6_i1_shift: signed(20 downto 0);
  signal c_6_arith: signed(20 downto 0);
  signal c_6_oshift: signed(20 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_6_1_False_resize: signed(21 downto 0);
  signal c_9_6_1_False_shift: signed(21 downto 0);
  signal c_9_8_5_False_resize: signed(21 downto 0);
  signal c_9_8_5_False_shift: signed(21 downto 0);
  signal c_9_8_0_False_resize: signed(21 downto 0);
  signal c_9_8_0_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(19 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_12_0_False_resize: signed(20 downto 0);
  signal c_13_12_0_False_shift: signed(20 downto 0);
  signal c_13_6_0_False_resize: signed(20 downto 0);
  signal c_13_6_0_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_7_0_False_resize: signed(21 downto 0);
  signal c_14_7_0_False_shift: signed(21 downto 0);
  signal c_14_3_2_False_resize: signed(21 downto 0);
  signal c_14_3_2_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_i0_resize: signed(22 downto 0);
  signal c_16_i1_resize: signed(22 downto 0);
  signal c_16_i0_shift: signed(22 downto 0);
  signal c_16_i1_shift: signed(22 downto 0);
  signal c_16_arith: signed(22 downto 0);
  signal c_16_oshift: signed(22 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(19 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_16_0_False_resize: signed(22 downto 0);
  signal c_19_16_0_False_shift: signed(22 downto 0);
  signal c_19_18_3_False_resize: signed(22 downto 0);
  signal c_19_18_3_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_i0_resize: signed(23 downto 0);
  signal c_21_i1_resize: signed(23 downto 0);
  signal c_21_i0_shift: signed(23 downto 0);
  signal c_21_i1_shift: signed(23 downto 0);
  signal c_21_arith: signed(23 downto 0);
  signal c_21_oshift: signed(23 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(20 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_16_4_False_resize: signed(24 downto 0);
  signal c_23_16_4_False_shift: signed(24 downto 0);
  signal c_23_16_0_False_resize: signed(24 downto 0);
  signal c_23_16_0_False_shift: signed(24 downto 0);
  signal c_23_22_5_False_resize: signed(24 downto 0);
  signal c_23_22_5_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_6_2_False_resize: signed(22 downto 0);
  signal c_24_6_2_False_shift: signed(22 downto 0);
  signal c_24_8_0_False_resize: signed(22 downto 0);
  signal c_24_8_0_False_shift: signed(22 downto 0);
  signal c_24_12_0_False_resize: signed(22 downto 0);
  signal c_24_12_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(22 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_21_0_False_resize: signed(23 downto 0);
  signal c_29_21_0_False_shift: signed(23 downto 0);
  signal c_29_28_3_False_resize: signed(23 downto 0);
  signal c_29_28_3_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(20 downto 0);
  signal c_30_18_2_False_resize: signed(20 downto 0);
  signal c_30_18_2_False_shift: signed(20 downto 0);
  signal c_30_11_1_False_resize: signed(20 downto 0);
  signal c_30_11_1_False_shift: signed(20 downto 0);
  signal c_30_22_0_False_resize: signed(20 downto 0);
  signal c_30_22_0_False_shift: signed(20 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(20 downto 0);
  signal c_32: signed(20 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_i0_resize: signed(23 downto 0);
  signal c_33_i1_resize: signed(23 downto 0);
  signal c_33_i0_shift: signed(23 downto 0);
  signal c_33_i1_shift: signed(23 downto 0);
  signal c_33_arith: signed(23 downto 0);
  signal c_33_oshift: signed(23 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(23 downto 0);
  signal c_34_16_2_False_resize: signed(23 downto 0);
  signal c_34_16_2_False_shift: signed(23 downto 0);
  signal c_34_11_0_False_resize: signed(23 downto 0);
  signal c_34_11_0_False_shift: signed(23 downto 0);
  signal c_34_22_0_False_resize: signed(23 downto 0);
  signal c_34_22_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(20 downto 0);
  signal c_36: signed(20 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_38_1_False_resize: signed(23 downto 0);
  signal c_39_38_1_False_shift: signed(23 downto 0);
  signal c_39_27_1_False_resize: signed(23 downto 0);
  signal c_39_27_1_False_shift: signed(23 downto 0);
  signal c_39_36_0_False_resize: signed(23 downto 0);
  signal c_39_36_0_False_shift: signed(23 downto 0);
  signal c_39_21_0_False_resize: signed(23 downto 0);
  signal c_39_21_0_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(19 downto 0);
  signal c_41: signed(19 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_21_0_False_resize: signed(23 downto 0);
  signal c_42_21_0_False_shift: signed(23 downto 0);
  signal c_42_41_4_False_resize: signed(23 downto 0);
  signal c_42_41_4_False_shift: signed(23 downto 0);
  signal c_42_38_0_False_resize: signed(23 downto 0);
  signal c_42_38_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_27_0_False_resize: signed(23 downto 0);
  signal c_43_27_0_False_shift: signed(23 downto 0);
  signal c_43_36_0_False_resize: signed(23 downto 0);
  signal c_43_36_0_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_resize: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_resize: signed(23 downto 0);
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
      config_select_8 <= config_select_7;
      config_select_9 <= config_select_8;
      config_select_10 <= config_select_9;
      config_select_11 <= config_select_10;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 1 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 2 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 3 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 4 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_54);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[5], [9], [3], [7]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [1], [8], [8]]
  c_4_0_0_False_resize <= resize(c_0, 19);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_3_False_resize <= resize(c_0, 19);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 6 and associated fundamentals [[7], [11], [19], [23]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
      w_o => 21,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_5,
      y_i => c_3,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[32], [1], [38], [46]]
  c_9_6_1_False_resize <= resize(c_6, 22);
  c_9_6_1_False_shift <= shift_left(c_9_6_1_False_resize, 1);
  c_9_8_5_False_resize <= resize(c_8, 22);
  c_9_8_5_False_shift <= shift_left(c_9_8_5_False_resize, 5);
  c_9_8_0_False_resize <= resize(c_8, 22);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_4 select c_9_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_6_1_False_shift;
        when "01" => c_9 <= c_9_8_5_False_shift;
        when others => c_9 <= c_9_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[7], [11], [19], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 11 and associated fundamentals [[121], [15], [171], [207]]
  with config_select_5 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[5], [9], [3], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[5], [9], [19], [7]]
  c_13_12_0_False_resize <= resize(c_12, 21);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_6_0_False_resize <= c_6;
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  with config_select_4 select c_13_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_12_0_False_shift;
        when others => c_13 <= c_13_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[20], [36], [1], [1]]
  c_14_7_0_False_resize <= resize(c_7, 22);
  c_14_7_0_False_shift <= shift_left(c_14_7_0_False_resize, 0);
  c_14_3_2_False_resize <= resize(c_3, 22);
  c_14_3_2_False_shift <= shift_left(c_14_3_2_False_resize, 2);
  with config_select_3 select c_14_sel <= 
    "0" when "10",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_7_0_False_shift;
        when others => c_14 <= c_14_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[20], [36], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 16 and associated fundamentals [[45], [81], [17], [5]]
  with config_select_5 select c_16_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_16_sub_sel,
      x_i => c_13,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[5], [9], [3], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[5], [9], [3], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 19 and associated fundamentals [[40], [81], [24], [56]]
  c_19_16_0_False_resize <= c_16;
  c_19_16_0_False_shift <= shift_left(c_19_16_0_False_resize, 0);
  c_19_18_3_False_resize <= resize(c_18, 23);
  c_19_18_3_False_shift <= shift_left(c_19_18_3_False_resize, 3);
  with config_select_6 select c_19_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_16_0_False_shift;
        when others => c_19 <= c_19_18_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[45], [81], [17], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 21 and associated fundamentals [[205], [243], [113], [219]]
  with config_select_7 select c_21_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[7], [11], [19], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 23 and associated fundamentals [[224], [81], [272], [80]]
  c_23_16_4_False_resize <= resize(c_16, 25);
  c_23_16_4_False_shift <= shift_left(c_23_16_4_False_resize, 4);
  c_23_16_0_False_resize <= resize(c_16, 25);
  c_23_16_0_False_shift <= shift_left(c_23_16_0_False_resize, 0);
  c_23_22_5_False_resize <= resize(c_22, 25);
  c_23_22_5_False_shift <= shift_left(c_23_22_5_False_resize, 5);
  with config_select_6 select c_23_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_16_4_False_shift;
        when "01" => c_23 <= c_23_16_0_False_shift;
        when others => c_23 <= c_23_22_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[1], [44], [76], [7]]
  c_24_6_2_False_resize <= resize(c_6, 23);
  c_24_6_2_False_shift <= shift_left(c_24_6_2_False_resize, 2);
  c_24_8_0_False_resize <= resize(c_8, 23);
  c_24_8_0_False_shift <= shift_left(c_24_8_0_False_resize, 0);
  c_24_12_0_False_resize <= resize(c_12, 23);
  c_24_12_0_False_shift <= shift_left(c_24_12_0_False_resize, 0);
  with config_select_4 select c_24_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_6_2_False_shift;
        when "01" => c_24 <= c_24_8_0_False_shift;
        when others => c_24 <= c_24_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[1], [44], [76], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[1], [44], [76], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 27 and associated fundamentals [[223], [125], [196], [73]]
  with config_select_7 select c_27_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
      sub_i => c_27_sub_sel,
      x_i => c_23,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[45], [81], [17], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 29 and associated fundamentals [[205], [243], [136], [40]]
  c_29_21_0_False_resize <= c_21;
  c_29_21_0_False_shift <= shift_left(c_29_21_0_False_resize, 0);
  c_29_28_3_False_resize <= resize(c_28, 24);
  c_29_28_3_False_shift <= shift_left(c_29_28_3_False_resize, 3);
  with config_select_8 select c_29_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_21_0_False_shift;
        when others => c_29 <= c_29_28_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 30 and associated fundamentals [[20], [30], [12], [23]]
  c_30_18_2_False_resize <= resize(c_18, 21);
  c_30_18_2_False_shift <= shift_left(c_30_18_2_False_resize, 2);
  c_30_11_1_False_resize <= c_11(20 downto 0);
  c_30_11_1_False_shift <= shift_left(c_30_11_1_False_resize, 1);
  c_30_22_0_False_resize <= c_22;
  c_30_22_0_False_shift <= shift_left(c_30_22_0_False_resize, 0);
  with config_select_6 select c_30_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_18_2_False_shift;
        when "01" => c_30 <= c_30_11_1_False_shift;
        when others => c_30 <= c_30_22_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[20], [30], [12], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[20], [30], [12], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 33 and associated fundamentals [[185], [213], [148], [17]]
  with config_select_9 select c_33_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_33_sub_sel,
      x_i => c_29,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 34 and associated fundamentals [[180], [11], [171], [20]]
  c_34_16_2_False_resize <= resize(c_16, 24);
  c_34_16_2_False_shift <= shift_left(c_34_16_2_False_resize, 2);
  c_34_11_0_False_resize <= c_11;
  c_34_11_0_False_shift <= shift_left(c_34_11_0_False_resize, 0);
  c_34_22_0_False_resize <= resize(c_22, 24);
  c_34_22_0_False_shift <= shift_left(c_34_22_0_False_resize, 0);
  with config_select_6 select c_34_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_16_2_False_shift;
        when "01" => c_34 <= c_34_11_0_False_shift;
        when others => c_34 <= c_34_22_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[7], [11], [19], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[7], [11], [19], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[121], [15], [171], [207]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[121], [15], [171], [207]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 39 and associated fundamentals [[242], [243], [19], [146]]
  c_39_38_1_False_resize <= c_38;
  c_39_38_1_False_shift <= shift_left(c_39_38_1_False_resize, 1);
  c_39_27_1_False_resize <= c_27;
  c_39_27_1_False_shift <= shift_left(c_39_27_1_False_resize, 1);
  c_39_36_0_False_resize <= resize(c_36, 24);
  c_39_36_0_False_shift <= shift_left(c_39_36_0_False_resize, 0);
  c_39_21_0_False_resize <= c_21;
  c_39_21_0_False_shift <= shift_left(c_39_21_0_False_resize, 0);
  with config_select_8 select c_39_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_38_1_False_shift;
        when "01" => c_39 <= c_39_27_1_False_shift;
        when "10" => c_39 <= c_39_36_0_False_shift;
        when others => c_39 <= c_39_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[5], [9], [3], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[5], [9], [3], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 42 and associated fundamentals [[205], [144], [113], [207]]
  c_42_21_0_False_resize <= c_21;
  c_42_21_0_False_shift <= shift_left(c_42_21_0_False_resize, 0);
  c_42_41_4_False_resize <= resize(c_41, 24);
  c_42_41_4_False_shift <= shift_left(c_42_41_4_False_resize, 4);
  c_42_38_0_False_resize <= c_38;
  c_42_38_0_False_shift <= shift_left(c_42_38_0_False_resize, 0);
  with config_select_8 select c_42_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_21_0_False_shift;
        when "01" => c_42 <= c_42_41_4_False_shift;
        when others => c_42 <= c_42_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 43 and associated fundamentals [[223], [125], [196], [23]]
  c_43_27_0_False_resize <= c_27;
  c_43_27_0_False_shift <= shift_left(c_43_27_0_False_resize, 0);
  c_43_36_0_False_resize <= resize(c_36, 24);
  c_43_36_0_False_shift <= shift_left(c_43_36_0_False_resize, 0);
  with config_select_8 select c_43_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_27_0_False_shift;
        when others => c_43 <= c_43_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[180], [11], [171], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[180], [11], [171], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[180], [11], [171], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 47 and associated fundamentals [[180], [11], [171], [20]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[242], [243], [19], [146]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_39 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 49 and associated fundamentals [[242], [243], [19], [146]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[205], [144], [113], [207]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_42 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 51 and associated fundamentals [[205], [144], [113], [207]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[223], [125], [196], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_43 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 53 and associated fundamentals [[223], [125], [196], [23]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'output' in stage 9 with id 54 and associated fundamentals [[185], [213], [148], [17]]
  c_54_resize <= c_33;
  c_54 <= shift_left(c_54_resize, 0);
end architecture;

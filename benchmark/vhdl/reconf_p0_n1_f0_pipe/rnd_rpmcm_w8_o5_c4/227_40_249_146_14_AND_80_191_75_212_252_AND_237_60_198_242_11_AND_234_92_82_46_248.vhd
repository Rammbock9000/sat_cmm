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
  signal config_select_12: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
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
  signal c_4: signed(16 downto 0);
  signal c_4_0_0_False_resize: signed(16 downto 0);
  signal c_4_0_0_False_shift: signed(16 downto 0);
  signal c_4_0_1_False_resize: signed(16 downto 0);
  signal c_4_0_1_False_shift: signed(16 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(16 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(19 downto 0);
  signal c_7_3_1_False_resize: signed(19 downto 0);
  signal c_7_3_1_False_shift: signed(19 downto 0);
  signal c_7_3_0_False_resize: signed(19 downto 0);
  signal c_7_3_0_False_shift: signed(19 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_10_9_0_False_resize: signed(18 downto 0);
  signal c_10_9_0_False_shift: signed(18 downto 0);
  signal c_10_6_0_False_resize: signed(18 downto 0);
  signal c_10_6_0_False_shift: signed(18 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(15 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_12_0_False_resize: signed(23 downto 0);
  signal c_15_12_0_False_shift: signed(23 downto 0);
  signal c_15_14_8_False_resize: signed(23 downto 0);
  signal c_15_14_8_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(18 downto 0);
  signal c_16_6_0_False_resize: signed(18 downto 0);
  signal c_16_6_0_False_shift: signed(18 downto 0);
  signal c_16_9_0_False_resize: signed(18 downto 0);
  signal c_16_9_0_False_shift: signed(18 downto 0);
  signal c_16_9_1_False_resize: signed(18 downto 0);
  signal c_16_9_1_False_shift: signed(18 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(18 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_20: signed(19 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_21_20_1_False_resize: signed(19 downto 0);
  signal c_21_20_1_False_shift: signed(19 downto 0);
  signal c_21_9_4_False_resize: signed(19 downto 0);
  signal c_21_9_4_False_shift: signed(19 downto 0);
  signal c_21_6_0_False_resize: signed(19 downto 0);
  signal c_21_6_0_False_shift: signed(19 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_22_6_0_False_resize: signed(20 downto 0);
  signal c_22_6_0_False_shift: signed(20 downto 0);
  signal c_22_6_1_False_resize: signed(20 downto 0);
  signal c_22_6_1_False_shift: signed(20 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(19 downto 0);
  signal c_25: signed(19 downto 0);
  signal c_26: signed(19 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_19_0_False_resize: signed(23 downto 0);
  signal c_28_19_0_False_shift: signed(23 downto 0);
  signal c_28_27_6_False_resize: signed(23 downto 0);
  signal c_28_27_6_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(19 downto 0);
  signal c_29_9_0_False_resize: signed(19 downto 0);
  signal c_29_9_0_False_shift: signed(19 downto 0);
  signal c_29_6_1_False_resize: signed(19 downto 0);
  signal c_29_6_1_False_shift: signed(19 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(19 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_35: signed(19 downto 0);
  signal c_36: signed(19 downto 0);
  signal c_37: signed(19 downto 0);
  signal c_38: signed(19 downto 0);
  signal c_39: signed(19 downto 0);
  signal c_40: signed(19 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_34_0_False_resize: signed(23 downto 0);
  signal c_41_34_0_False_shift: signed(23 downto 0);
  signal c_41_40_4_False_resize: signed(23 downto 0);
  signal c_41_40_4_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(19 downto 0);
  signal c_43: signed(19 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_34_0_False_resize: signed(23 downto 0);
  signal c_48_34_0_False_shift: signed(23 downto 0);
  signal c_48_43_3_False_resize: signed(23 downto 0);
  signal c_48_43_3_False_shift: signed(23 downto 0);
  signal c_48_43_2_False_resize: signed(23 downto 0);
  signal c_48_43_2_False_shift: signed(23 downto 0);
  signal c_48_47_1_False_resize: signed(23 downto 0);
  signal c_48_47_1_False_shift: signed(23 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_12_0_False_resize: signed(23 downto 0);
  signal c_49_12_0_False_shift: signed(23 downto 0);
  signal c_49_12_1_False_resize: signed(23 downto 0);
  signal c_49_12_1_False_shift: signed(23 downto 0);
  signal c_49_sel: std_logic_vector(0 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_38_1_False_resize: signed(23 downto 0);
  signal c_50_38_1_False_shift: signed(23 downto 0);
  signal c_50_38_0_False_resize: signed(23 downto 0);
  signal c_50_38_0_False_shift: signed(23 downto 0);
  signal c_50_19_0_False_resize: signed(23 downto 0);
  signal c_50_19_0_False_shift: signed(23 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_resize: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_resize: signed(23 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_61: signed(23 downto 0);
  signal c_62: signed(23 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_resize: signed(23 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_66_resize: signed(23 downto 0);
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
      config_select_12 <= config_select_11;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 1 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 2 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_58);
    end if;
  end process;
  -- output node 3 with id 63
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_63);
    end if;
  end process;
  -- output node 4 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_66);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [4], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_2_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[5], [3], [15], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [1], [2], [2]]
  c_4_0_0_False_resize <= resize(c_0, 17);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_1_False_resize <= resize(c_0, 17);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[7], [5], [11], [7]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 17,
      w_o => 20,
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
      sub_i => c_6_sub_sel,
      x_i => c_3,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[10], [6], [15], [3]]
  c_7_3_1_False_resize <= c_3;
  c_7_3_1_False_shift <= shift_left(c_7_3_1_False_resize, 1);
  c_7_3_0_False_resize <= c_3;
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_3_1_False_shift;
        when others => c_7 <= c_7_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[7], [5], [1], [1]]
  c_10_9_0_False_resize <= resize(c_9, 19);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_6_0_False_resize <= c_6(18 downto 0);
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_4 select c_10_sel <= 
    "0" when "10",
    "0" when "11",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_9_0_False_shift;
        when others => c_10 <= c_10_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[10], [6], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[146], [106], [242], [46]]
  with config_select_5 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 4,
      s_y_i => 1,
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
      y_i => c_10,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 15 and associated fundamentals [[256], [256], [242], [256]]
  c_15_12_0_False_resize <= c_12;
  c_15_12_0_False_shift <= shift_left(c_15_12_0_False_resize, 0);
  c_15_14_8_False_resize <= resize(c_14, 24);
  c_15_14_8_False_shift <= shift_left(c_15_14_8_False_resize, 8);
  with config_select_6 select c_15_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_12_0_False_shift;
        when others => c_15 <= c_15_14_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[7], [1], [1], [2]]
  c_16_6_0_False_resize <= c_6(18 downto 0);
  c_16_6_0_False_shift <= shift_left(c_16_6_0_False_resize, 0);
  c_16_9_0_False_resize <= resize(c_9, 19);
  c_16_9_0_False_shift <= shift_left(c_16_9_0_False_resize, 0);
  c_16_9_1_False_resize <= resize(c_9, 19);
  c_16_9_1_False_shift <= shift_left(c_16_9_1_False_resize, 1);
  with config_select_4 select c_16_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_6_0_False_shift;
        when "01" => c_16 <= c_16_9_0_False_shift;
        when others => c_16 <= c_16_9_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[7], [1], [1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[7], [1], [1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 7 with id 19 and associated fundamentals [[228], [252], [238], [248]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_15,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[5], [3], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[16], [5], [11], [6]]
  c_21_20_1_False_resize <= c_20;
  c_21_20_1_False_shift <= shift_left(c_21_20_1_False_resize, 1);
  c_21_9_4_False_resize <= resize(c_9, 20);
  c_21_9_4_False_shift <= shift_left(c_21_9_4_False_resize, 4);
  c_21_6_0_False_resize <= c_6;
  c_21_6_0_False_shift <= shift_left(c_21_6_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_20_1_False_shift;
        when "01" => c_21 <= c_21_9_4_False_shift;
        when others => c_21 <= c_21_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[7], [5], [22], [14]]
  c_22_6_0_False_resize <= resize(c_6, 21);
  c_22_6_0_False_shift <= shift_left(c_22_6_0_False_resize, 0);
  c_22_6_1_False_resize <= resize(c_6, 21);
  c_22_6_1_False_shift <= shift_left(c_22_6_1_False_resize, 1);
  with config_select_4 select c_22_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_6_0_False_shift;
        when others => c_22 <= c_22_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 23 and associated fundamentals [[249], [75], [198], [82]]
  with config_select_5 select c_23_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[5], [3], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[5], [3], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[5], [3], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[5], [3], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 28 and associated fundamentals [[228], [192], [238], [248]]
  c_28_19_0_False_resize <= c_19;
  c_28_19_0_False_shift <= shift_left(c_28_19_0_False_resize, 0);
  c_28_27_6_False_resize <= resize(c_27, 24);
  c_28_27_6_False_shift <= shift_left(c_28_27_6_False_resize, 6);
  with config_select_8 select c_28_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_19_0_False_shift;
        when others => c_28 <= c_28_27_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[1], [1], [1], [14]]
  c_29_9_0_False_resize <= resize(c_9, 20);
  c_29_9_0_False_shift <= shift_left(c_29_9_0_False_resize, 0);
  c_29_6_1_False_resize <= c_6;
  c_29_6_1_False_shift <= shift_left(c_29_6_1_False_resize, 1);
  with config_select_4 select c_29_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_9_0_False_shift;
        when others => c_29 <= c_29_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[1], [1], [1], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[1], [1], [1], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[1], [1], [1], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[1], [1], [1], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 9 with id 34 and associated fundamentals [[227], [191], [237], [234]]
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_28,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 35 and associated fundamentals [[7], [5], [11], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 36 and associated fundamentals [[7], [5], [11], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[7], [5], [11], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[7], [5], [11], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[7], [5], [11], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[7], [5], [11], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 41 and associated fundamentals [[227], [80], [237], [234]]
  c_41_34_0_False_resize <= c_34;
  c_41_34_0_False_shift <= shift_left(c_41_34_0_False_resize, 0);
  c_41_40_4_False_resize <= resize(c_40, 24);
  c_41_40_4_False_shift <= shift_left(c_41_40_4_False_resize, 4);
  with config_select_10 select c_41_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_34_0_False_shift;
        when others => c_41 <= c_41_40_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[5], [3], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[5], [3], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 44 and associated fundamentals [[146], [106], [242], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[146], [106], [242], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[146], [106], [242], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[146], [106], [242], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 48 and associated fundamentals [[40], [191], [60], [92]]
  c_48_34_0_False_resize <= c_34;
  c_48_34_0_False_shift <= shift_left(c_48_34_0_False_resize, 0);
  c_48_43_3_False_resize <= resize(c_43, 24);
  c_48_43_3_False_shift <= shift_left(c_48_43_3_False_resize, 3);
  c_48_43_2_False_resize <= resize(c_43, 24);
  c_48_43_2_False_shift <= shift_left(c_48_43_2_False_resize, 2);
  c_48_47_1_False_resize <= c_47;
  c_48_47_1_False_shift <= shift_left(c_48_47_1_False_resize, 1);
  with config_select_10 select c_48_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_34_0_False_shift;
        when "01" => c_48 <= c_48_43_3_False_shift;
        when "10" => c_48 <= c_48_43_2_False_shift;
        when others => c_48 <= c_48_47_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 49 and associated fundamentals [[146], [212], [242], [46]]
  c_49_12_0_False_resize <= c_12;
  c_49_12_0_False_shift <= shift_left(c_49_12_0_False_resize, 0);
  c_49_12_1_False_resize <= c_12;
  c_49_12_1_False_shift <= shift_left(c_49_12_1_False_resize, 1);
  with config_select_6 select c_49_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "0" => c_49 <= c_49_12_0_False_shift;
        when others => c_49 <= c_49_12_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 50 and associated fundamentals [[14], [252], [11], [248]]
  c_50_38_1_False_resize <= resize(c_38, 24);
  c_50_38_1_False_shift <= shift_left(c_50_38_1_False_resize, 1);
  c_50_38_0_False_resize <= resize(c_38, 24);
  c_50_38_0_False_shift <= shift_left(c_50_38_0_False_resize, 0);
  c_50_19_0_False_resize <= c_19;
  c_50_19_0_False_shift <= shift_left(c_50_19_0_False_resize, 0);
  with config_select_8 select c_50_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_38_1_False_shift;
        when "01" => c_50 <= c_50_38_0_False_shift;
        when others => c_50 <= c_50_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 51 and associated fundamentals [[227], [80], [237], [234]]
  c_51_resize <= c_41;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'output' in stage 10 with id 52 and associated fundamentals [[40], [191], [60], [92]]
  c_52_resize <= c_48;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'register' in stage 6 with id 53 and associated fundamentals [[249], [75], [198], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 54 and associated fundamentals [[249], [75], [198], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[249], [75], [198], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[249], [75], [198], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[249], [75], [198], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 58 and associated fundamentals [[249], [75], [198], [82]]
  c_58_resize <= c_57;
  c_58 <= shift_left(c_58_resize, 0);
  -- node of type 'register' in stage 7 with id 59 and associated fundamentals [[146], [212], [242], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 60 and associated fundamentals [[146], [212], [242], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[146], [212], [242], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 62 and associated fundamentals [[146], [212], [242], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 63 and associated fundamentals [[146], [212], [242], [46]]
  c_63_resize <= c_62;
  c_63 <= shift_left(c_63_resize, 0);
  -- node of type 'register' in stage 9 with id 64 and associated fundamentals [[14], [252], [11], [248]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 65 and associated fundamentals [[14], [252], [11], [248]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 66 and associated fundamentals [[14], [252], [11], [248]]
  c_66_resize <= c_65;
  c_66 <= shift_left(c_66_resize, 0);
end architecture;

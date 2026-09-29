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
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(25 downto 0);
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
  signal config_select_13: std_logic_vector(1 downto 0);
  signal config_select_14: std_logic_vector(1 downto 0);
  signal config_select_15: std_logic_vector(1 downto 0);
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
  signal c_4: signed(15 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_3_0_False_resize: signed(19 downto 0);
  signal c_5_3_0_False_shift: signed(19 downto 0);
  signal c_5_4_3_False_resize: signed(19 downto 0);
  signal c_5_4_3_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_3_3_False_resize: signed(22 downto 0);
  signal c_6_3_3_False_shift: signed(22 downto 0);
  signal c_6_3_0_False_resize: signed(22 downto 0);
  signal c_6_3_0_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_10_9_5_False_resize: signed(20 downto 0);
  signal c_10_9_5_False_shift: signed(20 downto 0);
  signal c_10_9_2_False_resize: signed(20 downto 0);
  signal c_10_9_2_False_shift: signed(20 downto 0);
  signal c_10_7_0_False_resize: signed(20 downto 0);
  signal c_10_7_0_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_3_1_False_resize: signed(20 downto 0);
  signal c_11_3_1_False_shift: signed(20 downto 0);
  signal c_11_3_0_False_resize: signed(20 downto 0);
  signal c_11_3_0_False_shift: signed(20 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_i0_resize: signed(22 downto 0);
  signal c_14_i1_resize: signed(22 downto 0);
  signal c_14_i0_shift: signed(22 downto 0);
  signal c_14_i1_shift: signed(22 downto 0);
  signal c_14_arith: signed(22 downto 0);
  signal c_14_oshift: signed(22 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(23 downto 0);
  signal c_15_4_1_False_resize: signed(23 downto 0);
  signal c_15_4_1_False_shift: signed(23 downto 0);
  signal c_15_4_0_False_resize: signed(23 downto 0);
  signal c_15_4_0_False_shift: signed(23 downto 0);
  signal c_15_3_6_False_resize: signed(23 downto 0);
  signal c_15_3_6_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_14_0_False_resize: signed(23 downto 0);
  signal c_18_14_0_False_shift: signed(23 downto 0);
  signal c_18_17_1_False_resize: signed(23 downto 0);
  signal c_18_17_1_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(19 downto 0);
  signal c_25: signed(19 downto 0);
  signal c_26: signed(19 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_27_4_False_resize: signed(23 downto 0);
  signal c_28_27_4_False_shift: signed(23 downto 0);
  signal c_28_14_3_False_resize: signed(23 downto 0);
  signal c_28_14_3_False_shift: signed(23 downto 0);
  signal c_28_14_0_False_resize: signed(23 downto 0);
  signal c_28_14_0_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_i0_resize: signed(25 downto 0);
  signal c_29_i1_resize: signed(25 downto 0);
  signal c_29_i0_shift: signed(25 downto 0);
  signal c_29_i1_shift: signed(25 downto 0);
  signal c_29_arith: signed(25 downto 0);
  signal c_29_oshift: signed(25 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(15 downto 0);
  signal c_31: signed(15 downto 0);
  signal c_32: signed(15 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_23_0_False_resize: signed(25 downto 0);
  signal c_36_23_0_False_shift: signed(25 downto 0);
  signal c_36_35_1_False_resize: signed(25 downto 0);
  signal c_36_35_1_False_shift: signed(25 downto 0);
  signal c_36_33_0_False_resize: signed(25 downto 0);
  signal c_36_33_0_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_37_14_0_False_resize: signed(22 downto 0);
  signal c_37_14_0_False_shift: signed(22 downto 0);
  signal c_37_27_2_False_resize: signed(22 downto 0);
  signal c_37_27_2_False_shift: signed(22 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_40_i0_resize: signed(24 downto 0);
  signal c_40_i1_resize: signed(24 downto 0);
  signal c_40_i0_shift: signed(24 downto 0);
  signal c_40_i1_shift: signed(24 downto 0);
  signal c_40_arith: signed(24 downto 0);
  signal c_40_oshift: signed(24 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_42_1_False_resize: signed(23 downto 0);
  signal c_43_42_1_False_shift: signed(23 downto 0);
  signal c_43_40_0_False_resize: signed(23 downto 0);
  signal c_43_40_0_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(19 downto 0);
  signal c_45: signed(19 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_23_0_False_resize: signed(25 downto 0);
  signal c_46_23_0_False_shift: signed(25 downto 0);
  signal c_46_45_7_False_resize: signed(25 downto 0);
  signal c_46_45_7_False_shift: signed(25 downto 0);
  signal c_46_35_0_False_resize: signed(25 downto 0);
  signal c_46_35_0_False_shift: signed(25 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_i0_resize: signed(25 downto 0);
  signal c_49_i1_resize: signed(25 downto 0);
  signal c_49_i0_shift: signed(25 downto 0);
  signal c_49_i1_shift: signed(25 downto 0);
  signal c_49_arith: signed(25 downto 0);
  signal c_49_oshift: signed(25 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_56_51_0_False_resize: signed(24 downto 0);
  signal c_56_51_0_False_shift: signed(24 downto 0);
  signal c_56_49_0_False_resize: signed(24 downto 0);
  signal c_56_49_0_False_shift: signed(24 downto 0);
  signal c_56_55_0_False_resize: signed(24 downto 0);
  signal c_56_55_0_False_shift: signed(24 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_33_4_False_resize: signed(25 downto 0);
  signal c_57_33_4_False_shift: signed(25 downto 0);
  signal c_57_23_0_False_resize: signed(25 downto 0);
  signal c_57_23_0_False_shift: signed(25 downto 0);
  signal c_57_33_5_False_resize: signed(25 downto 0);
  signal c_57_33_5_False_shift: signed(25 downto 0);
  signal c_57_sel: std_logic_vector(1 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_62_i0_resize: signed(25 downto 0);
  signal c_62_i1_resize: signed(25 downto 0);
  signal c_62_i0_shift: signed(25 downto 0);
  signal c_62_i1_shift: signed(25 downto 0);
  signal c_62_arith: signed(25 downto 0);
  signal c_62_oshift: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_29_0_False_resize: signed(25 downto 0);
  signal c_63_29_0_False_shift: signed(25 downto 0);
  signal c_63_45_5_False_resize: signed(25 downto 0);
  signal c_63_45_5_False_shift: signed(25 downto 0);
  signal c_63_sel: std_logic_vector(0 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_40_0_False_resize: signed(25 downto 0);
  signal c_64_40_0_False_shift: signed(25 downto 0);
  signal c_64_40_2_False_resize: signed(25 downto 0);
  signal c_64_40_2_False_shift: signed(25 downto 0);
  signal c_64_sel: std_logic_vector(0 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_resize: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_74_resize: signed(25 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_75_resize: signed(25 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_78_resize: signed(25 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_81: signed(25 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_85_resize: signed(25 downto 0);
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
      config_select_13 <= config_select_12;
      config_select_14 <= config_select_13;
      config_select_15 <= config_select_14;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 70
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_70);
    end if;
  end process;
  -- output node 1 with id 74
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_74);
    end if;
  end process;
  -- output node 2 with id 75
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_75);
    end if;
  end process;
  -- output node 3 with id 78
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_78);
    end if;
  end process;
  -- output node 4 with id 85
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_85);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[5], [3], [9]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
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
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[8], [8], [9]]
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_4_3_False_resize <= resize(c_4, 20);
  c_5_4_3_False_shift <= shift_left(c_5_4_3_False_resize, 3);
  with config_select_3 select c_5_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_3_0_False_shift;
        when others => c_5 <= c_5_4_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[40], [3], [72]]
  c_6_3_3_False_resize <= resize(c_3, 23);
  c_6_3_3_False_shift <= shift_left(c_6_3_3_False_resize, 3);
  c_6_3_0_False_resize <= resize(c_3, 23);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_3_3_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[-24], [13], [90]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
      w_o => 23,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[-24], [4], [32]]
  c_10_9_5_False_resize <= resize(c_9, 21);
  c_10_9_5_False_shift <= shift_left(c_10_9_5_False_resize, 5);
  c_10_9_2_False_resize <= resize(c_9, 21);
  c_10_9_2_False_shift <= shift_left(c_10_9_2_False_resize, 2);
  c_10_7_0_False_resize <= c_7(20 downto 0);
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_9_5_False_shift;
        when "01" => c_10 <= c_10_9_2_False_shift;
        when others => c_10 <= c_10_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[5], [3], [18]]
  c_11_3_1_False_resize <= resize(c_3, 21);
  c_11_3_1_False_shift <= shift_left(c_11_3_1_False_resize, 1);
  c_11_3_0_False_resize <= resize(c_3, 21);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_3_1_False_shift;
        when others => c_11 <= c_11_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[5], [3], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[5], [3], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 14 and associated fundamentals [[-91], [13], [110]]
  with config_select_6 select c_14_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
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
      sub_i => c_14_sub_sel,
      x_i => c_10,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[2], [192], [1]]
  c_15_4_1_False_resize <= resize(c_4, 24);
  c_15_4_1_False_shift <= shift_left(c_15_4_1_False_resize, 1);
  c_15_4_0_False_resize <= resize(c_4, 24);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_3_6_False_resize <= resize(c_3, 24);
  c_15_3_6_False_shift <= shift_left(c_15_3_6_False_resize, 6);
  with config_select_3 select c_15_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_4_1_False_shift;
        when "01" => c_15 <= c_15_4_0_False_shift;
        when others => c_15 <= c_15_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[-24], [13], [90]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[-24], [13], [90]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 18 and associated fundamentals [[-91], [13], [180]]
  c_18_14_0_False_resize <= resize(c_14, 24);
  c_18_14_0_False_shift <= shift_left(c_18_14_0_False_resize, 0);
  c_18_17_1_False_resize <= resize(c_17, 24);
  c_18_17_1_False_shift <= shift_left(c_18_17_1_False_resize, 1);
  with config_select_7 select c_18_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_14_0_False_shift;
        when others => c_18 <= c_18_17_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[2], [192], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[2], [192], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[2], [192], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[2], [192], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 23 and associated fundamentals [[366], [244], [721]]
  with config_select_8 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_18,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 24 and associated fundamentals [[5], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[5], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[5], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[5], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 28 and associated fundamentals [[-91], [104], [144]]
  c_28_27_4_False_resize <= resize(c_27, 24);
  c_28_27_4_False_shift <= shift_left(c_28_27_4_False_resize, 4);
  c_28_14_3_False_resize <= resize(c_14, 24);
  c_28_14_3_False_shift <= shift_left(c_28_14_3_False_resize, 3);
  c_28_14_0_False_resize <= resize(c_14, 24);
  c_28_14_0_False_shift <= shift_left(c_28_14_0_False_resize, 0);
  with config_select_7 select c_28_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_27_4_False_shift;
        when "01" => c_28 <= c_28_14_3_False_shift;
        when others => c_28 <= c_28_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 29 and associated fundamentals [[-455], [403], [756]]
  with config_select_8 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_29_sub_sel,
      x_i => c_28,
      y_i => c_18,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[-91], [13], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[-91], [13], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 36 and associated fundamentals [[-182], [1], [721]]
  c_36_23_0_False_resize <= c_23;
  c_36_23_0_False_shift <= shift_left(c_36_23_0_False_resize, 0);
  c_36_35_1_False_resize <= resize(c_35, 26);
  c_36_35_1_False_shift <= shift_left(c_36_35_1_False_resize, 1);
  c_36_33_0_False_resize <= resize(c_33, 26);
  c_36_33_0_False_shift <= shift_left(c_36_33_0_False_resize, 0);
  with config_select_9 select c_36_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_23_0_False_shift;
        when "01" => c_36 <= c_36_35_1_False_shift;
        when others => c_36 <= c_36_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 37 and associated fundamentals [[20], [13], [110]]
  c_37_14_0_False_resize <= c_14;
  c_37_14_0_False_shift <= shift_left(c_37_14_0_False_resize, 0);
  c_37_27_2_False_resize <= resize(c_27, 23);
  c_37_27_2_False_shift <= shift_left(c_37_27_2_False_resize, 2);
  with config_select_7 select c_37_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_14_0_False_shift;
        when others => c_37 <= c_37_27_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[20], [13], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 39 and associated fundamentals [[20], [13], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 40 and associated fundamentals [[-342], [-103], [-159]]
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_36,
      y_i => c_39,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[-91], [13], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 42 and associated fundamentals [[-91], [13], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 43 and associated fundamentals [[-182], [-103], [-159]]
  c_43_42_1_False_resize <= resize(c_42, 24);
  c_43_42_1_False_shift <= shift_left(c_43_42_1_False_resize, 1);
  c_43_40_0_False_resize <= c_40(23 downto 0);
  c_43_40_0_False_shift <= shift_left(c_43_40_0_False_resize, 0);
  with config_select_11 select c_43_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_42_1_False_shift;
        when others => c_43 <= c_43_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[5], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[5], [3], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 46 and associated fundamentals [[640], [244], [110]]
  c_46_23_0_False_resize <= c_23;
  c_46_23_0_False_shift <= shift_left(c_46_23_0_False_resize, 0);
  c_46_45_7_False_resize <= resize(c_45, 26);
  c_46_45_7_False_shift <= shift_left(c_46_45_7_False_resize, 7);
  c_46_35_0_False_resize <= resize(c_35, 26);
  c_46_35_0_False_shift <= shift_left(c_46_35_0_False_resize, 0);
  with config_select_9 select c_46_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_23_0_False_shift;
        when "01" => c_46 <= c_46_45_7_False_shift;
        when others => c_46 <= c_46_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[640], [244], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 48 and associated fundamentals [[640], [244], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 12 with id 49 and associated fundamentals [[-822], [-347], [-269]]
  inst_adder_node_49: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_43,
      y_i => c_48,
      z_o => c_49_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_49_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 50 and associated fundamentals [[-91], [13], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 51 and associated fundamentals [[-91], [13], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[-455], [403], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[-455], [403], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 54 and associated fundamentals [[-455], [403], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 55 and associated fundamentals [[-455], [403], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 56 and associated fundamentals [[-455], [-347], [110]]
  c_56_51_0_False_resize <= resize(c_51, 25);
  c_56_51_0_False_shift <= shift_left(c_56_51_0_False_resize, 0);
  c_56_49_0_False_resize <= c_49(24 downto 0);
  c_56_49_0_False_shift <= shift_left(c_56_49_0_False_resize, 0);
  c_56_55_0_False_resize <= c_55(24 downto 0);
  c_56_55_0_False_shift <= shift_left(c_56_55_0_False_resize, 0);
  with config_select_13 select c_56_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "00" => c_56 <= c_56_51_0_False_shift;
        when "01" => c_56 <= c_56_49_0_False_shift;
        when others => c_56 <= c_56_55_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 57 and associated fundamentals [[32], [16], [721]]
  c_57_33_4_False_resize <= resize(c_33, 26);
  c_57_33_4_False_shift <= shift_left(c_57_33_4_False_resize, 4);
  c_57_23_0_False_resize <= c_23;
  c_57_23_0_False_shift <= shift_left(c_57_23_0_False_resize, 0);
  c_57_33_5_False_resize <= resize(c_33, 26);
  c_57_33_5_False_shift <= shift_left(c_57_33_5_False_resize, 5);
  with config_select_9 select c_57_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "00" => c_57 <= c_57_33_4_False_shift;
        when "01" => c_57 <= c_57_23_0_False_shift;
        when others => c_57 <= c_57_33_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[32], [16], [721]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 59 and associated fundamentals [[32], [16], [721]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 60 and associated fundamentals [[32], [16], [721]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 61 and associated fundamentals [[32], [16], [721]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 14 with id 62 and associated fundamentals [[-487], [-363], [-611]]
  inst_adder_node_62: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_56,
      y_i => c_61,
      z_o => c_62_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_62_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 63 and associated fundamentals [[160], [403], [756]]
  c_63_29_0_False_resize <= c_29;
  c_63_29_0_False_shift <= shift_left(c_63_29_0_False_resize, 0);
  c_63_45_5_False_resize <= resize(c_45, 26);
  c_63_45_5_False_shift <= shift_left(c_63_45_5_False_resize, 5);
  with config_select_9 select c_63_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "0" => c_63 <= c_63_29_0_False_shift;
        when others => c_63 <= c_63_45_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 64 and associated fundamentals [[-342], [-103], [-636]]
  c_64_40_0_False_resize <= resize(c_40, 26);
  c_64_40_0_False_shift <= shift_left(c_64_40_0_False_resize, 0);
  c_64_40_2_False_resize <= resize(c_40, 26);
  c_64_40_2_False_shift <= shift_left(c_64_40_2_False_resize, 2);
  with config_select_11 select c_64_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_64_sel is
        when "0" => c_64 <= c_64_40_0_False_shift;
        when others => c_64 <= c_64_40_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 65 and associated fundamentals [[160], [403], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 66 and associated fundamentals [[160], [403], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 67 and associated fundamentals [[160], [403], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 68 and associated fundamentals [[160], [403], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 69 and associated fundamentals [[160], [403], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 70 and associated fundamentals [[160], [403], [756]]
  c_70_resize <= c_69;
  c_70 <= shift_left(c_70_resize, 0);
  -- node of type 'register' in stage 12 with id 71 and associated fundamentals [[-342], [-103], [-636]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 72 and associated fundamentals [[-342], [-103], [-636]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 73 and associated fundamentals [[-342], [-103], [-636]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 74 and associated fundamentals [[342], [103], [636]]
  c_74_resize <= c_73;
  c_74 <= -shift_left(c_74_resize, 0);
  -- node of type 'output' in stage 14 with id 75 and associated fundamentals [[487], [363], [611]]
  c_75_resize <= c_62;
  c_75 <= -shift_left(c_75_resize, 0);
  -- node of type 'register' in stage 13 with id 76 and associated fundamentals [[-822], [-347], [-269]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 77 and associated fundamentals [[-822], [-347], [-269]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 78 and associated fundamentals [[822], [347], [269]]
  c_78_resize <= c_77;
  c_78 <= -shift_left(c_78_resize, 0);
  -- node of type 'register' in stage 9 with id 79 and associated fundamentals [[366], [244], [721]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 80 and associated fundamentals [[366], [244], [721]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 81 and associated fundamentals [[366], [244], [721]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 82 and associated fundamentals [[366], [244], [721]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 83 and associated fundamentals [[366], [244], [721]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 84 and associated fundamentals [[366], [244], [721]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'output' in stage 14 with id 85 and associated fundamentals [[366], [244], [721]]
  c_85_resize <= c_84;
  c_85 <= shift_left(c_85_resize, 0);
end architecture;

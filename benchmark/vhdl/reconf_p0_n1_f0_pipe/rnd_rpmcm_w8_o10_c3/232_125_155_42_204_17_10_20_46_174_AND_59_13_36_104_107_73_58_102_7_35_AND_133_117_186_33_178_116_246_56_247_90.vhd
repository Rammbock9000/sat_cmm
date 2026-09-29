library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(22 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(22 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(22 downto 0);
    y_8: out std_logic_vector(23 downto 0);
    y_9: out std_logic_vector(23 downto 0);
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
  signal c_1_0_1_False_resize: signed(17 downto 0);
  signal c_1_0_1_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_i0_resize: signed(20 downto 0);
  signal c_5_i1_resize: signed(20 downto 0);
  signal c_5_i0_shift: signed(20 downto 0);
  signal c_5_i1_shift: signed(20 downto 0);
  signal c_5_arith: signed(20 downto 0);
  signal c_5_oshift: signed(20 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(15 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_i0_resize: signed(20 downto 0);
  signal c_7_i1_resize: signed(20 downto 0);
  signal c_7_i0_shift: signed(20 downto 0);
  signal c_7_i1_shift: signed(20 downto 0);
  signal c_7_arith: signed(20 downto 0);
  signal c_7_oshift: signed(19 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(21 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_9_2_False_resize: signed(23 downto 0);
  signal c_10_9_2_False_shift: signed(23 downto 0);
  signal c_10_7_0_False_resize: signed(23 downto 0);
  signal c_10_7_0_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(19 downto 0);
  signal c_14_7_0_False_resize: signed(19 downto 0);
  signal c_14_7_0_False_shift: signed(19 downto 0);
  signal c_14_11_2_False_resize: signed(19 downto 0);
  signal c_14_11_2_False_shift: signed(19 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_15_5_0_False_resize: signed(20 downto 0);
  signal c_15_5_0_False_shift: signed(20 downto 0);
  signal c_15_8_0_False_resize: signed(20 downto 0);
  signal c_15_8_0_False_shift: signed(20 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_i0_resize: signed(22 downto 0);
  signal c_17_i1_resize: signed(22 downto 0);
  signal c_17_i0_shift: signed(22 downto 0);
  signal c_17_i1_shift: signed(22 downto 0);
  signal c_17_arith: signed(22 downto 0);
  signal c_17_oshift: signed(22 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(21 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_i0_resize: signed(22 downto 0);
  signal c_20_i1_resize: signed(22 downto 0);
  signal c_20_i0_shift: signed(22 downto 0);
  signal c_20_i1_shift: signed(22 downto 0);
  signal c_20_arith: signed(22 downto 0);
  signal c_20_oshift: signed(22 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(21 downto 0);
  signal c_21_8_1_False_resize: signed(21 downto 0);
  signal c_21_8_1_False_shift: signed(21 downto 0);
  signal c_21_5_0_False_resize: signed(21 downto 0);
  signal c_21_5_0_False_shift: signed(21 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_22_7_0_False_resize: signed(19 downto 0);
  signal c_22_7_0_False_shift: signed(19 downto 0);
  signal c_22_11_0_False_resize: signed(19 downto 0);
  signal c_22_11_0_False_shift: signed(19 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_i0_resize: signed(22 downto 0);
  signal c_24_i1_resize: signed(22 downto 0);
  signal c_24_i0_shift: signed(22 downto 0);
  signal c_24_i1_shift: signed(22 downto 0);
  signal c_24_arith: signed(22 downto 0);
  signal c_24_oshift: signed(22 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(22 downto 0);
  signal c_25_13_3_False_resize: signed(22 downto 0);
  signal c_25_13_3_False_shift: signed(22 downto 0);
  signal c_25_24_0_False_resize: signed(22 downto 0);
  signal c_25_24_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(19 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_28: signed(19 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_i0_resize: signed(22 downto 0);
  signal c_29_i1_resize: signed(22 downto 0);
  signal c_29_i0_shift: signed(22 downto 0);
  signal c_29_i1_shift: signed(22 downto 0);
  signal c_29_arith: signed(22 downto 0);
  signal c_29_oshift: signed(22 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(19 downto 0);
  signal c_30_11_2_False_resize: signed(19 downto 0);
  signal c_30_11_2_False_shift: signed(19 downto 0);
  signal c_30_7_0_False_resize: signed(19 downto 0);
  signal c_30_7_0_False_shift: signed(19 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
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
  signal c_34: signed(22 downto 0);
  signal c_34_28_2_False_resize: signed(22 downto 0);
  signal c_34_28_2_False_shift: signed(22 downto 0);
  signal c_34_20_0_False_resize: signed(22 downto 0);
  signal c_34_20_0_False_shift: signed(22 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(15 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_36_35_0_False_resize: signed(21 downto 0);
  signal c_36_35_0_False_shift: signed(21 downto 0);
  signal c_36_33_0_False_resize: signed(21 downto 0);
  signal c_36_33_0_False_shift: signed(21 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_i0_resize: signed(23 downto 0);
  signal c_38_i1_resize: signed(23 downto 0);
  signal c_38_i0_shift: signed(23 downto 0);
  signal c_38_i1_shift: signed(23 downto 0);
  signal c_38_arith: signed(23 downto 0);
  signal c_38_oshift: signed(23 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(23 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_20_3_False_resize: signed(23 downto 0);
  signal c_41_20_3_False_shift: signed(23 downto 0);
  signal c_41_40_0_False_resize: signed(23 downto 0);
  signal c_41_40_0_False_shift: signed(23 downto 0);
  signal c_41_39_0_False_resize: signed(23 downto 0);
  signal c_41_39_0_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(20 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_43_42_0_False_resize: signed(22 downto 0);
  signal c_43_42_0_False_shift: signed(22 downto 0);
  signal c_43_24_0_False_resize: signed(22 downto 0);
  signal c_43_24_0_False_shift: signed(22 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_33_1_False_resize: signed(23 downto 0);
  signal c_44_33_1_False_shift: signed(23 downto 0);
  signal c_44_33_0_False_resize: signed(23 downto 0);
  signal c_44_33_0_False_shift: signed(23 downto 0);
  signal c_44_19_2_False_resize: signed(23 downto 0);
  signal c_44_19_2_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_45_5_3_False_resize: signed(22 downto 0);
  signal c_45_5_3_False_shift: signed(22 downto 0);
  signal c_45_5_1_False_resize: signed(22 downto 0);
  signal c_45_5_1_False_shift: signed(22 downto 0);
  signal c_45_8_0_False_resize: signed(22 downto 0);
  signal c_45_8_0_False_shift: signed(22 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_38_0_False_resize: signed(23 downto 0);
  signal c_47_38_0_False_shift: signed(23 downto 0);
  signal c_47_46_1_False_resize: signed(23 downto 0);
  signal c_47_46_1_False_shift: signed(23 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(21 downto 0);
  signal c_49: signed(21 downto 0);
  signal c_50: signed(20 downto 0);
  signal c_51: signed(20 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_52_29_0_False_resize: signed(22 downto 0);
  signal c_52_29_0_False_shift: signed(22 downto 0);
  signal c_52_51_2_False_resize: signed(22 downto 0);
  signal c_52_51_2_False_shift: signed(22 downto 0);
  signal c_52_49_0_False_resize: signed(22 downto 0);
  signal c_52_49_0_False_shift: signed(22 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_39_0_False_resize: signed(23 downto 0);
  signal c_53_39_0_False_shift: signed(23 downto 0);
  signal c_53_20_1_False_resize: signed(23 downto 0);
  signal c_53_20_1_False_shift: signed(23 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(21 downto 0);
  signal c_54_27_1_False_resize: signed(21 downto 0);
  signal c_54_27_1_False_shift: signed(21 downto 0);
  signal c_54_13_0_False_resize: signed(21 downto 0);
  signal c_54_13_0_False_shift: signed(21 downto 0);
  signal c_54_33_0_False_resize: signed(21 downto 0);
  signal c_54_33_0_False_shift: signed(21 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(19 downto 0);
  signal c_56: signed(19 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_60_38_0_False_resize: signed(23 downto 0);
  signal c_60_38_0_False_shift: signed(23 downto 0);
  signal c_60_59_0_False_resize: signed(23 downto 0);
  signal c_60_59_0_False_shift: signed(23 downto 0);
  signal c_60_56_0_False_resize: signed(23 downto 0);
  signal c_60_56_0_False_shift: signed(23 downto 0);
  signal c_60_sel: std_logic_vector(1 downto 0);
  signal c_61: signed(23 downto 0);
  signal c_62: signed(23 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_59_0_False_resize: signed(23 downto 0);
  signal c_63_59_0_False_shift: signed(23 downto 0);
  signal c_63_62_0_False_resize: signed(23 downto 0);
  signal c_63_62_0_False_shift: signed(23 downto 0);
  signal c_63_38_1_False_resize: signed(23 downto 0);
  signal c_63_38_1_False_shift: signed(23 downto 0);
  signal c_63_sel: std_logic_vector(1 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_66_resize: signed(23 downto 0);
  signal c_67: signed(22 downto 0);
  signal c_68: signed(22 downto 0);
  signal c_69: signed(22 downto 0);
  signal c_70: signed(22 downto 0);
  signal c_70_resize: signed(22 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_73: signed(23 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_74_resize: signed(23 downto 0);
  signal c_75: signed(22 downto 0);
  signal c_76: signed(22 downto 0);
  signal c_77: signed(22 downto 0);
  signal c_78: signed(22 downto 0);
  signal c_79: signed(22 downto 0);
  signal c_80: signed(22 downto 0);
  signal c_81: signed(22 downto 0);
  signal c_81_resize: signed(22 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_82_resize: signed(23 downto 0);
  signal c_83: signed(22 downto 0);
  signal c_84: signed(22 downto 0);
  signal c_84_resize: signed(22 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_87_resize: signed(23 downto 0);
  signal c_88: signed(21 downto 0);
  signal c_89: signed(21 downto 0);
  signal c_90: signed(21 downto 0);
  signal c_91: signed(22 downto 0);
  signal c_91_resize: signed(22 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_92_resize: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_93_resize: signed(23 downto 0);
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
  -- output node 0 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_66);
    end if;
  end process;
  -- output node 1 with id 70
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_70);
    end if;
  end process;
  -- output node 2 with id 74
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_74);
    end if;
  end process;
  -- output node 3 with id 81
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_81);
    end if;
  end process;
  -- output node 4 with id 82
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_82);
    end if;
  end process;
  -- output node 5 with id 84
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_84);
    end if;
  end process;
  -- output node 6 with id 87
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_87);
    end if;
  end process;
  -- output node 7 with id 91
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_91);
    end if;
  end process;
  -- output node 8 with id 92
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_92);
    end if;
  end process;
  -- output node 9 with id 93
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_93);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 18);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_0_False_shift;
        when "01" => c_1 <= c_1_0_1_False_shift;
        when others => c_1 <= c_1_0_2_False_shift;
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
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[17], [9], [33]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
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
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[21], [13], [29]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 21,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[11], [7], [14]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
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
      c_7 <= c_7_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[17], [9], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[17], [9], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[11], [36], [132]]
  c_10_9_2_False_resize <= resize(c_9, 24);
  c_10_9_2_False_shift <= shift_left(c_10_9_2_False_resize, 2);
  c_10_7_0_False_resize <= resize(c_7, 24);
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_9_2_False_shift;
        when others => c_10 <= c_10_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 12 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[10], [35], [133]]
  with config_select_6 select c_13_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
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
      sub_i => c_13_sub_sel,
      x_i => c_10,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[11], [7], [4]]
  c_14_7_0_False_resize <= c_7;
  c_14_7_0_False_shift <= shift_left(c_14_7_0_False_resize, 0);
  c_14_11_2_False_resize <= resize(c_11, 20);
  c_14_11_2_False_shift <= shift_left(c_14_11_2_False_resize, 2);
  with config_select_5 select c_14_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_7_0_False_shift;
        when others => c_14 <= c_14_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[21], [9], [29]]
  c_15_5_0_False_resize <= c_5;
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  c_15_8_0_False_resize <= c_8(20 downto 0);
  c_15_8_0_False_shift <= shift_left(c_15_8_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_5_0_False_shift;
        when others => c_15 <= c_15_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[21], [9], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[46], [38], [90]]
  with config_select_6 select c_17_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 23,
      s_x_i => 3,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_17_sub_sel,
      x_i => c_14,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[17], [9], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[17], [9], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 20 and associated fundamentals [[29], [29], [123]]
  with config_select_7 select c_20_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_20_sub_sel,
      x_i => c_17,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[34], [13], [29]]
  c_21_8_1_False_resize <= c_8;
  c_21_8_1_False_shift <= shift_left(c_21_8_1_False_resize, 1);
  c_21_5_0_False_resize <= resize(c_5, 22);
  c_21_5_0_False_shift <= shift_left(c_21_5_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_8_1_False_shift;
        when others => c_21 <= c_21_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 22 and associated fundamentals [[11], [7], [1]]
  c_22_7_0_False_resize <= c_7;
  c_22_7_0_False_shift <= shift_left(c_22_7_0_False_resize, 0);
  c_22_11_0_False_resize <= resize(c_11, 20);
  c_22_11_0_False_shift <= shift_left(c_22_11_0_False_resize, 0);
  with config_select_5 select c_22_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_7_0_False_shift;
        when others => c_22 <= c_22_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[34], [13], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 24 and associated fundamentals [[125], [59], [117]]
  with config_select_6 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
      sub_i => c_24_sub_sel,
      x_i => c_23,
      y_i => c_22,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[80], [59], [117]]
  c_25_13_3_False_resize <= c_13(22 downto 0);
  c_25_13_3_False_shift <= shift_left(c_25_13_3_False_resize, 3);
  c_25_24_0_False_resize <= c_24;
  c_25_24_0_False_shift <= shift_left(c_25_24_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_13_3_False_shift;
        when others => c_25 <= c_25_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[11], [7], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[11], [7], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[11], [7], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 29 and associated fundamentals [[102], [73], [89]]
  with config_select_8 select c_29_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
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
      sub_i => c_29_sub_sel,
      x_i => c_25,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 30 and associated fundamentals [[11], [4], [4]]
  c_30_11_2_False_resize <= resize(c_11, 20);
  c_30_11_2_False_shift <= shift_left(c_30_11_2_False_resize, 2);
  c_30_7_0_False_resize <= c_7;
  c_30_7_0_False_shift <= shift_left(c_30_7_0_False_resize, 0);
  with config_select_5 select c_30_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_11_2_False_shift;
        when others => c_30 <= c_30_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 31 and associated fundamentals [[21], [13], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[21], [13], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 33 and associated fundamentals [[155], [51], [93]]
  with config_select_6 select c_33_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
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
      sub_i => c_33_sub_sel,
      x_i => c_30,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 34 and associated fundamentals [[44], [28], [123]]
  c_34_28_2_False_resize <= resize(c_28, 23);
  c_34_28_2_False_shift <= shift_left(c_34_28_2_False_resize, 2);
  c_34_20_0_False_resize <= c_20;
  c_34_20_0_False_shift <= shift_left(c_34_20_0_False_resize, 0);
  with config_select_8 select c_34_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_28_2_False_shift;
        when others => c_34 <= c_34_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 36 and associated fundamentals [[1], [51], [1]]
  c_36_35_0_False_resize <= resize(c_35, 22);
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  c_36_33_0_False_resize <= c_33(21 downto 0);
  c_36_33_0_False_shift <= shift_left(c_36_33_0_False_resize, 0);
  with config_select_7 select c_36_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_35_0_False_shift;
        when others => c_36 <= c_36_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 37 and associated fundamentals [[1], [51], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 38 and associated fundamentals [[87], [107], [247]]
  with config_select_9 select c_38_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_38_sub_sel,
      x_i => c_34,
      y_i => c_37,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[10], [35], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[125], [59], [117]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 41 and associated fundamentals [[232], [59], [133]]
  c_41_20_3_False_resize <= resize(c_20, 24);
  c_41_20_3_False_shift <= shift_left(c_41_20_3_False_resize, 3);
  c_41_40_0_False_resize <= resize(c_40, 24);
  c_41_40_0_False_shift <= shift_left(c_41_40_0_False_resize, 0);
  c_41_39_0_False_resize <= c_39;
  c_41_39_0_False_shift <= shift_left(c_41_39_0_False_resize, 0);
  with config_select_8 select c_41_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_20_3_False_shift;
        when "01" => c_41 <= c_41_40_0_False_shift;
        when others => c_41 <= c_41_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 42 and associated fundamentals [[21], [13], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 43 and associated fundamentals [[125], [13], [117]]
  c_43_42_0_False_resize <= resize(c_42, 23);
  c_43_42_0_False_shift <= shift_left(c_43_42_0_False_resize, 0);
  c_43_24_0_False_resize <= c_24;
  c_43_24_0_False_shift <= shift_left(c_43_24_0_False_resize, 0);
  with config_select_7 select c_43_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_42_0_False_shift;
        when others => c_43 <= c_43_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 44 and associated fundamentals [[155], [36], [186]]
  c_44_33_1_False_resize <= c_33;
  c_44_33_1_False_shift <= shift_left(c_44_33_1_False_resize, 1);
  c_44_33_0_False_resize <= c_33;
  c_44_33_0_False_shift <= shift_left(c_44_33_0_False_resize, 0);
  c_44_19_2_False_resize <= resize(c_19, 24);
  c_44_19_2_False_shift <= shift_left(c_44_19_2_False_resize, 2);
  with config_select_7 select c_44_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_33_1_False_shift;
        when "01" => c_44 <= c_44_33_0_False_shift;
        when others => c_44 <= c_44_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 45 and associated fundamentals [[42], [104], [33]]
  c_45_5_3_False_resize <= resize(c_5, 23);
  c_45_5_3_False_shift <= shift_left(c_45_5_3_False_resize, 3);
  c_45_5_1_False_resize <= resize(c_5, 23);
  c_45_5_1_False_shift <= shift_left(c_45_5_1_False_resize, 1);
  c_45_8_0_False_resize <= resize(c_8, 23);
  c_45_8_0_False_shift <= shift_left(c_45_8_0_False_resize, 0);
  with config_select_4 select c_45_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_5_3_False_shift;
        when "01" => c_45 <= c_45_5_1_False_shift;
        when others => c_45 <= c_45_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[102], [73], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 47 and associated fundamentals [[204], [107], [178]]
  c_47_38_0_False_resize <= c_38;
  c_47_38_0_False_shift <= shift_left(c_47_38_0_False_resize, 0);
  c_47_46_1_False_resize <= resize(c_46, 24);
  c_47_46_1_False_shift <= shift_left(c_47_46_1_False_resize, 1);
  with config_select_10 select c_47_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_38_0_False_shift;
        when others => c_47 <= c_47_46_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 48 and associated fundamentals [[17], [9], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[17], [9], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 50 and associated fundamentals [[21], [13], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[21], [13], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 52 and associated fundamentals [[17], [73], [116]]
  c_52_29_0_False_resize <= c_29;
  c_52_29_0_False_shift <= shift_left(c_52_29_0_False_resize, 0);
  c_52_51_2_False_resize <= resize(c_51, 23);
  c_52_51_2_False_shift <= shift_left(c_52_51_2_False_resize, 2);
  c_52_49_0_False_resize <= resize(c_49, 23);
  c_52_49_0_False_shift <= shift_left(c_52_49_0_False_resize, 0);
  with config_select_9 select c_52_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "00" => c_52 <= c_52_29_0_False_shift;
        when "01" => c_52 <= c_52_51_2_False_shift;
        when others => c_52 <= c_52_49_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 53 and associated fundamentals [[10], [58], [246]]
  c_53_39_0_False_resize <= c_39;
  c_53_39_0_False_shift <= shift_left(c_53_39_0_False_resize, 0);
  c_53_20_1_False_resize <= resize(c_20, 24);
  c_53_20_1_False_shift <= shift_left(c_53_20_1_False_resize, 1);
  with config_select_8 select c_53_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_39_0_False_shift;
        when others => c_53 <= c_53_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 54 and associated fundamentals [[10], [51], [28]]
  c_54_27_1_False_resize <= resize(c_27, 22);
  c_54_27_1_False_shift <= shift_left(c_54_27_1_False_resize, 1);
  c_54_13_0_False_resize <= c_13(21 downto 0);
  c_54_13_0_False_shift <= shift_left(c_54_13_0_False_resize, 0);
  c_54_33_0_False_resize <= c_33(21 downto 0);
  c_54_33_0_False_shift <= shift_left(c_54_33_0_False_resize, 0);
  with config_select_7 select c_54_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_27_1_False_shift;
        when "01" => c_54 <= c_54_13_0_False_shift;
        when others => c_54 <= c_54_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[11], [7], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[11], [7], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 57 and associated fundamentals [[46], [38], [90]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 58 and associated fundamentals [[46], [38], [90]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[46], [38], [90]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 60 and associated fundamentals [[46], [7], [247]]
  c_60_38_0_False_resize <= c_38;
  c_60_38_0_False_shift <= shift_left(c_60_38_0_False_resize, 0);
  c_60_59_0_False_resize <= resize(c_59, 24);
  c_60_59_0_False_shift <= shift_left(c_60_59_0_False_resize, 0);
  c_60_56_0_False_resize <= resize(c_56, 24);
  c_60_56_0_False_shift <= shift_left(c_60_56_0_False_resize, 0);
  with config_select_10 select c_60_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "00" => c_60 <= c_60_38_0_False_shift;
        when "01" => c_60 <= c_60_59_0_False_shift;
        when others => c_60 <= c_60_56_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 61 and associated fundamentals [[10], [35], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[10], [35], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 63 and associated fundamentals [[174], [35], [90]]
  c_63_59_0_False_resize <= resize(c_59, 24);
  c_63_59_0_False_shift <= shift_left(c_63_59_0_False_resize, 0);
  c_63_62_0_False_resize <= c_62;
  c_63_62_0_False_shift <= shift_left(c_63_62_0_False_resize, 0);
  c_63_38_1_False_resize <= c_38;
  c_63_38_1_False_shift <= shift_left(c_63_38_1_False_resize, 1);
  with config_select_10 select c_63_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "00" => c_63 <= c_63_59_0_False_shift;
        when "01" => c_63 <= c_63_62_0_False_shift;
        when others => c_63 <= c_63_38_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 64 and associated fundamentals [[232], [59], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 65 and associated fundamentals [[232], [59], [133]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 66 and associated fundamentals [[232], [59], [133]]
  c_66_resize <= c_65;
  c_66 <= shift_left(c_66_resize, 0);
  -- node of type 'register' in stage 8 with id 67 and associated fundamentals [[125], [13], [117]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 68 and associated fundamentals [[125], [13], [117]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 69 and associated fundamentals [[125], [13], [117]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 70 and associated fundamentals [[125], [13], [117]]
  c_70_resize <= c_69;
  c_70 <= shift_left(c_70_resize, 0);
  -- node of type 'register' in stage 8 with id 71 and associated fundamentals [[155], [36], [186]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 72 and associated fundamentals [[155], [36], [186]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 73 and associated fundamentals [[155], [36], [186]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 74 and associated fundamentals [[155], [36], [186]]
  c_74_resize <= c_73;
  c_74 <= shift_left(c_74_resize, 0);
  -- node of type 'register' in stage 5 with id 75 and associated fundamentals [[42], [104], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 76 and associated fundamentals [[42], [104], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 77 and associated fundamentals [[42], [104], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 78 and associated fundamentals [[42], [104], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 79 and associated fundamentals [[42], [104], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 80 and associated fundamentals [[42], [104], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 81 and associated fundamentals [[42], [104], [33]]
  c_81_resize <= c_80;
  c_81 <= shift_left(c_81_resize, 0);
  -- node of type 'output' in stage 10 with id 82 and associated fundamentals [[204], [107], [178]]
  c_82_resize <= c_47;
  c_82 <= shift_left(c_82_resize, 0);
  -- node of type 'register' in stage 10 with id 83 and associated fundamentals [[17], [73], [116]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_52 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 84 and associated fundamentals [[17], [73], [116]]
  c_84_resize <= c_83;
  c_84 <= shift_left(c_84_resize, 0);
  -- node of type 'register' in stage 9 with id 85 and associated fundamentals [[10], [58], [246]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 86 and associated fundamentals [[10], [58], [246]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 87 and associated fundamentals [[10], [58], [246]]
  c_87_resize <= c_86;
  c_87 <= shift_left(c_87_resize, 0);
  -- node of type 'register' in stage 8 with id 88 and associated fundamentals [[10], [51], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 89 and associated fundamentals [[10], [51], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 90 and associated fundamentals [[10], [51], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 91 and associated fundamentals [[20], [102], [56]]
  c_91_resize <= resize(c_90, 23);
  c_91 <= shift_left(c_91_resize, 1);
  -- node of type 'output' in stage 10 with id 92 and associated fundamentals [[46], [7], [247]]
  c_92_resize <= c_60;
  c_92 <= shift_left(c_92_resize, 0);
  -- node of type 'output' in stage 10 with id 93 and associated fundamentals [[174], [35], [90]]
  c_93_resize <= c_63;
  c_93 <= shift_left(c_93_resize, 0);
end architecture;

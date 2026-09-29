library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(24 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(24 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(24 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(24 downto 0);
    y_8: out std_logic_vector(24 downto 0);
    y_9: out std_logic_vector(25 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(0 downto 0);
  signal config_select_1: std_logic_vector(0 downto 0);
  signal config_select_2: std_logic_vector(0 downto 0);
  signal config_select_3: std_logic_vector(0 downto 0);
  signal config_select_4: std_logic_vector(0 downto 0);
  signal config_select_5: std_logic_vector(0 downto 0);
  signal config_select_6: std_logic_vector(0 downto 0);
  signal config_select_7: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_0_3_False_resize: signed(18 downto 0);
  signal c_5_0_3_False_shift: signed(18 downto 0);
  signal c_5_0_0_False_resize: signed(18 downto 0);
  signal c_5_0_0_False_shift: signed(18 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_0_0_False_resize: signed(19 downto 0);
  signal c_7_0_0_False_shift: signed(19 downto 0);
  signal c_7_0_4_False_resize: signed(19 downto 0);
  signal c_7_0_4_False_shift: signed(19 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(16 downto 0);
  signal c_8_0_0_False_resize: signed(16 downto 0);
  signal c_8_0_0_False_shift: signed(16 downto 0);
  signal c_8_0_1_False_resize: signed(16 downto 0);
  signal c_8_0_1_False_shift: signed(16 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(26 downto 0);
  signal c_9_i0_resize: signed(26 downto 0);
  signal c_9_i1_resize: signed(26 downto 0);
  signal c_9_i0_shift: signed(26 downto 0);
  signal c_9_i1_shift: signed(26 downto 0);
  signal c_9_arith: signed(26 downto 0);
  signal c_9_oshift: signed(26 downto 0);
  signal c_10: signed(27 downto 0);
  signal c_10_i0_resize: signed(27 downto 0);
  signal c_10_i1_resize: signed(27 downto 0);
  signal c_10_i0_shift: signed(27 downto 0);
  signal c_10_i1_shift: signed(27 downto 0);
  signal c_10_arith: signed(27 downto 0);
  signal c_10_oshift: signed(27 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(30 downto 0);
  signal c_11_4_0_False_resize: signed(30 downto 0);
  signal c_11_4_0_False_shift: signed(30 downto 0);
  signal c_11_9_5_False_resize: signed(30 downto 0);
  signal c_11_9_5_False_shift: signed(30 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(27 downto 0);
  signal c_12_6_4_False_resize: signed(27 downto 0);
  signal c_12_6_4_False_shift: signed(27 downto 0);
  signal c_12_6_0_False_resize: signed(27 downto 0);
  signal c_12_6_0_False_shift: signed(27 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_i0_resize: signed(24 downto 0);
  signal c_13_i1_resize: signed(24 downto 0);
  signal c_13_i0_shift: signed(24 downto 0);
  signal c_13_i1_shift: signed(24 downto 0);
  signal c_13_arith: signed(24 downto 0);
  signal c_13_oshift: signed(24 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(17 downto 0);
  signal c_14_0_2_False_resize: signed(17 downto 0);
  signal c_14_0_2_False_shift: signed(17 downto 0);
  signal c_14_0_0_False_resize: signed(17 downto 0);
  signal c_14_0_0_False_shift: signed(17 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_15_i0_resize: signed(19 downto 0);
  signal c_15_i1_resize: signed(19 downto 0);
  signal c_15_i0_shift: signed(19 downto 0);
  signal c_15_i1_shift: signed(19 downto 0);
  signal c_15_arith: signed(19 downto 0);
  signal c_15_oshift: signed(19 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_15_5_False_resize: signed(24 downto 0);
  signal c_16_15_5_False_shift: signed(24 downto 0);
  signal c_16_6_0_False_resize: signed(24 downto 0);
  signal c_16_6_0_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(26 downto 0);
  signal c_17_4_0_False_resize: signed(26 downto 0);
  signal c_17_4_0_False_shift: signed(26 downto 0);
  signal c_17_6_5_False_resize: signed(26 downto 0);
  signal c_17_6_5_False_shift: signed(26 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_i0_resize: signed(21 downto 0);
  signal c_19_i1_resize: signed(21 downto 0);
  signal c_19_i0_shift: signed(21 downto 0);
  signal c_19_i1_shift: signed(21 downto 0);
  signal c_19_arith: signed(21 downto 0);
  signal c_19_oshift: signed(21 downto 0);
  signal c_20: signed(20 downto 0);
  signal c_20_0_5_False_resize: signed(20 downto 0);
  signal c_20_0_5_False_shift: signed(20 downto 0);
  signal c_20_0_0_False_resize: signed(20 downto 0);
  signal c_20_0_0_False_shift: signed(20 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_i0_resize: signed(22 downto 0);
  signal c_21_i1_resize: signed(22 downto 0);
  signal c_21_i0_shift: signed(22 downto 0);
  signal c_21_i1_shift: signed(22 downto 0);
  signal c_21_arith: signed(22 downto 0);
  signal c_21_oshift: signed(22 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_22_21_3_False_resize: signed(20 downto 0);
  signal c_22_21_3_False_shift: signed(20 downto 0);
  signal c_22_15_0_False_resize: signed(20 downto 0);
  signal c_22_15_0_False_shift: signed(20 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_4_0_False_resize: signed(23 downto 0);
  signal c_23_4_0_False_shift: signed(23 downto 0);
  signal c_23_6_2_False_resize: signed(23 downto 0);
  signal c_23_6_2_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_i0_resize: signed(22 downto 0);
  signal c_24_i1_resize: signed(22 downto 0);
  signal c_24_i0_shift: signed(22 downto 0);
  signal c_24_i1_shift: signed(22 downto 0);
  signal c_24_arith: signed(22 downto 0);
  signal c_24_oshift: signed(22 downto 0);
  signal c_25: signed(29 downto 0);
  signal c_25_19_0_False_resize: signed(29 downto 0);
  signal c_25_19_0_False_shift: signed(29 downto 0);
  signal c_25_19_8_False_resize: signed(29 downto 0);
  signal c_25_19_8_False_shift: signed(29 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(27 downto 0);
  signal c_26_1_8_False_resize: signed(27 downto 0);
  signal c_26_1_8_False_shift: signed(27 downto 0);
  signal c_26_10_0_False_resize: signed(27 downto 0);
  signal c_26_10_0_False_shift: signed(27 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(30 downto 0);
  signal c_27_i0_resize: signed(30 downto 0);
  signal c_27_i1_resize: signed(30 downto 0);
  signal c_27_i0_shift: signed(30 downto 0);
  signal c_27_i1_shift: signed(30 downto 0);
  signal c_27_arith: signed(30 downto 0);
  signal c_27_oshift: signed(30 downto 0);
  signal c_28: signed(19 downto 0);
  signal c_28_21_2_False_resize: signed(19 downto 0);
  signal c_28_21_2_False_shift: signed(19 downto 0);
  signal c_28_15_0_False_resize: signed(19 downto 0);
  signal c_28_15_0_False_shift: signed(19 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(19 downto 0);
  signal c_29_21_0_False_resize: signed(19 downto 0);
  signal c_29_21_0_False_shift: signed(19 downto 0);
  signal c_29_4_2_False_resize: signed(19 downto 0);
  signal c_29_4_2_False_shift: signed(19 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_30_i0_resize: signed(22 downto 0);
  signal c_30_i1_resize: signed(22 downto 0);
  signal c_30_i0_shift: signed(22 downto 0);
  signal c_30_i1_shift: signed(22 downto 0);
  signal c_30_arith: signed(22 downto 0);
  signal c_30_oshift: signed(22 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_4_0_False_resize: signed(25 downto 0);
  signal c_31_4_0_False_shift: signed(25 downto 0);
  signal c_31_9_0_False_resize: signed(25 downto 0);
  signal c_31_9_0_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_i0_resize: signed(24 downto 0);
  signal c_32_i1_resize: signed(24 downto 0);
  signal c_32_i0_shift: signed(24 downto 0);
  signal c_32_i1_shift: signed(24 downto 0);
  signal c_32_arith: signed(24 downto 0);
  signal c_32_oshift: signed(24 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_4_0_False_resize: signed(23 downto 0);
  signal c_33_4_0_False_shift: signed(23 downto 0);
  signal c_33_4_4_False_resize: signed(23 downto 0);
  signal c_33_4_4_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_6_1_False_resize: signed(22 downto 0);
  signal c_34_6_1_False_shift: signed(22 downto 0);
  signal c_34_21_0_False_resize: signed(22 downto 0);
  signal c_34_21_0_False_shift: signed(22 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_i0_resize: signed(23 downto 0);
  signal c_35_i1_resize: signed(23 downto 0);
  signal c_35_i0_shift: signed(23 downto 0);
  signal c_35_i1_shift: signed(23 downto 0);
  signal c_35_arith: signed(23 downto 0);
  signal c_35_oshift: signed(23 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(25 downto 0);
  signal c_36_i0_resize: signed(25 downto 0);
  signal c_36_i1_resize: signed(25 downto 0);
  signal c_36_i0_shift: signed(25 downto 0);
  signal c_36_i1_shift: signed(25 downto 0);
  signal c_36_arith: signed(25 downto 0);
  signal c_36_oshift: signed(25 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(26 downto 0);
  signal c_37_9_0_False_resize: signed(26 downto 0);
  signal c_37_9_0_False_shift: signed(26 downto 0);
  signal c_37_4_5_False_resize: signed(26 downto 0);
  signal c_37_4_5_False_shift: signed(26 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(26 downto 0);
  signal c_38_21_0_False_resize: signed(26 downto 0);
  signal c_38_21_0_False_shift: signed(26 downto 0);
  signal c_38_4_3_False_resize: signed(26 downto 0);
  signal c_38_4_3_False_shift: signed(26 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_i0_resize: signed(25 downto 0);
  signal c_39_i1_resize: signed(25 downto 0);
  signal c_39_i0_shift: signed(25 downto 0);
  signal c_39_i1_shift: signed(25 downto 0);
  signal c_39_arith: signed(25 downto 0);
  signal c_39_oshift: signed(25 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_i0_resize: signed(25 downto 0);
  signal c_40_i1_resize: signed(25 downto 0);
  signal c_40_i0_shift: signed(25 downto 0);
  signal c_40_i1_shift: signed(25 downto 0);
  signal c_40_arith: signed(25 downto 0);
  signal c_40_oshift: signed(23 downto 0);
  signal c_41: signed(26 downto 0);
  signal c_41_9_0_False_resize: signed(26 downto 0);
  signal c_41_9_0_False_shift: signed(26 downto 0);
  signal c_41_15_0_False_resize: signed(26 downto 0);
  signal c_41_15_0_False_shift: signed(26 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_42_6_0_False_resize: signed(21 downto 0);
  signal c_42_6_0_False_shift: signed(21 downto 0);
  signal c_42_15_0_False_resize: signed(21 downto 0);
  signal c_42_15_0_False_shift: signed(21 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_i0_resize: signed(26 downto 0);
  signal c_43_i1_resize: signed(26 downto 0);
  signal c_43_i0_shift: signed(26 downto 0);
  signal c_43_i1_shift: signed(26 downto 0);
  signal c_43_arith: signed(26 downto 0);
  signal c_43_oshift: signed(25 downto 0);
  signal c_44: signed(26 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(30 downto 0);
  signal c_45_i1_resize: signed(30 downto 0);
  signal c_45_i0_shift: signed(30 downto 0);
  signal c_45_i1_shift: signed(30 downto 0);
  signal c_45_arith: signed(30 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_47_13_0_False_resize: signed(24 downto 0);
  signal c_47_13_0_False_shift: signed(24 downto 0);
  signal c_47_24_0_False_resize: signed(24 downto 0);
  signal c_47_24_0_False_shift: signed(24 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_resize: signed(24 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_49_32_2_False_resize: signed(24 downto 0);
  signal c_49_32_2_False_shift: signed(24 downto 0);
  signal c_49_32_0_False_resize: signed(24 downto 0);
  signal c_49_32_0_False_shift: signed(24 downto 0);
  signal c_49_sel: std_logic_vector(0 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_51_24_1_False_resize: signed(24 downto 0);
  signal c_51_24_1_False_shift: signed(24 downto 0);
  signal c_51_18_0_False_resize: signed(24 downto 0);
  signal c_51_18_0_False_shift: signed(24 downto 0);
  signal c_51_sel: std_logic_vector(0 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_52_resize: signed(24 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_resize: signed(25 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_55_35_0_False_resize: signed(24 downto 0);
  signal c_55_35_0_False_shift: signed(24 downto 0);
  signal c_55_35_1_False_resize: signed(24 downto 0);
  signal c_55_35_1_False_shift: signed(24 downto 0);
  signal c_55_sel: std_logic_vector(0 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_56_resize: signed(24 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_30_1_False_resize: signed(25 downto 0);
  signal c_57_30_1_False_shift: signed(25 downto 0);
  signal c_57_45_0_False_resize: signed(25 downto 0);
  signal c_57_45_0_False_shift: signed(25 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_resize: signed(25 downto 0);
  signal c_59: signed(24 downto 0);
  signal c_59_30_0_False_resize: signed(24 downto 0);
  signal c_59_30_0_False_shift: signed(24 downto 0);
  signal c_59_39_0_False_resize: signed(24 downto 0);
  signal c_59_39_0_False_shift: signed(24 downto 0);
  signal c_59_sel: std_logic_vector(0 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_60_resize: signed(24 downto 0);
  signal c_61: signed(24 downto 0);
  signal c_61_32_0_False_resize: signed(24 downto 0);
  signal c_61_32_0_False_shift: signed(24 downto 0);
  signal c_61_45_0_False_resize: signed(24 downto 0);
  signal c_61_45_0_False_shift: signed(24 downto 0);
  signal c_61_sel: std_logic_vector(0 downto 0);
  signal c_62: signed(24 downto 0);
  signal c_62_resize: signed(24 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_resize: signed(25 downto 0);
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
  -- output node 0 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 1 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 2 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 3 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 4 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 5 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_56);
    end if;
  end process;
  -- output node 6 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_58);
    end if;
  end process;
  -- output node 7 with id 60
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_60);
    end if;
  end process;
  -- output node 8 with id 62
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_62);
    end if;
  end process;
  -- output node 9 with id 63
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_63);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[-6], [10]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 1,
      s_y_i => 3,
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[64], [1]]
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 4 and associated fundamentals [[255], [3]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [8]]
  c_5_0_3_False_resize <= resize(c_0, 19);
  c_5_0_3_False_shift <= shift_left(c_5_0_3_False_resize, 3);
  c_5_0_0_False_resize <= resize(c_0, 19);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_0_3_False_shift;
        when others => c_5 <= c_5_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 6 and associated fundamentals [[38], [246]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_5,
      y_i => c_1,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[16], [1]]
  c_7_0_0_False_resize <= resize(c_0, 20);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_4_False_resize <= resize(c_0, 20);
  c_7_0_4_False_shift <= shift_left(c_7_0_4_False_resize, 4);
  with config_select_1 select c_7_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_0_False_shift;
        when others => c_7 <= c_7_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[2], [1]]
  c_8_0_0_False_resize <= resize(c_0, 17);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_1_False_resize <= resize(c_0, 17);
  c_8_0_1_False_shift <= shift_left(c_8_0_1_False_resize, 1);
  with config_select_1 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_0_0_False_shift;
        when others => c_8 <= c_8_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 9 and associated fundamentals [[1056], [514]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 17,
      w_o => 27,
      s_x_i => 1,
      s_y_i => 9,
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
      c_9 <= c_9_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 10 and associated fundamentals [[-2032], [2064]]
  with config_select_1 select c_10_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 28,
      s_x_i => 4,
      s_y_i => 11,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_10_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[255], [16448]]
  c_11_4_0_False_resize <= resize(c_4, 31);
  c_11_4_0_False_shift <= shift_left(c_11_4_0_False_resize, 0);
  c_11_9_5_False_resize <= resize(c_9, 31);
  c_11_9_5_False_shift <= shift_left(c_11_9_5_False_resize, 5);
  with config_select_3 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_4_0_False_shift;
        when others => c_11 <= c_11_9_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[38], [3936]]
  c_12_6_4_False_resize <= resize(c_6, 28);
  c_12_6_4_False_shift <= shift_left(c_12_6_4_False_resize, 4);
  c_12_6_0_False_resize <= resize(c_6, 28);
  c_12_6_0_False_shift <= shift_left(c_12_6_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_6_4_False_shift;
        when others => c_12 <= c_12_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[407], [704]]
  with config_select_4 select c_13_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 31,
      w_y_i => 28,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[1], [4]]
  c_14_0_2_False_resize <= resize(c_0, 18);
  c_14_0_2_False_shift <= shift_left(c_14_0_2_False_resize, 2);
  c_14_0_0_False_resize <= resize(c_0, 18);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  with config_select_1 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_0_2_False_shift;
        when others => c_14 <= c_14_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 15 and associated fundamentals [[-13], [16]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
      w_o => 20,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[-416], [246]]
  c_16_15_5_False_resize <= resize(c_15, 25);
  c_16_15_5_False_shift <= shift_left(c_16_15_5_False_resize, 5);
  c_16_6_0_False_resize <= resize(c_6, 25);
  c_16_6_0_False_shift <= shift_left(c_16_6_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_15_5_False_shift;
        when others => c_16 <= c_16_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[1216], [3]]
  c_17_4_0_False_resize <= resize(c_4, 27);
  c_17_4_0_False_shift <= shift_left(c_17_4_0_False_resize, 0);
  c_17_6_5_False_resize <= resize(c_6, 27);
  c_17_6_5_False_shift <= shift_left(c_17_6_5_False_resize, 5);
  with config_select_3 select c_17_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_4_0_False_shift;
        when others => c_17 <= c_17_6_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 18 and associated fundamentals [[-2048], [489]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 19 and associated fundamentals [[62], [62]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 20 and associated fundamentals [[1], [32]]
  c_20_0_5_False_resize <= resize(c_0, 21);
  c_20_0_5_False_shift <= shift_left(c_20_0_5_False_resize, 5);
  c_20_0_0_False_resize <= resize(c_0, 21);
  c_20_0_0_False_shift <= shift_left(c_20_0_0_False_resize, 0);
  with config_select_1 select c_20_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_0_5_False_shift;
        when others => c_20 <= c_20_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 21 and associated fundamentals [[4], [65]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 17,
      w_o => 23,
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
      x_i => c_20,
      y_i => c_8,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[32], [16]]
  c_22_21_3_False_resize <= c_21(20 downto 0);
  c_22_21_3_False_shift <= shift_left(c_22_21_3_False_resize, 3);
  c_22_15_0_False_resize <= resize(c_15, 21);
  c_22_15_0_False_shift <= shift_left(c_22_15_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_21_3_False_shift;
        when others => c_22 <= c_22_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[152], [3]]
  c_23_4_0_False_resize <= c_4;
  c_23_4_0_False_shift <= shift_left(c_23_4_0_False_resize, 0);
  c_23_6_2_False_resize <= c_6;
  c_23_6_2_False_shift <= shift_left(c_23_6_2_False_resize, 2);
  with config_select_3 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_4_0_False_shift;
        when others => c_23 <= c_23_6_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 24 and associated fundamentals [[104], [125]]
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 23,
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
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 25 and associated fundamentals [[15872], [62]]
  c_25_19_0_False_resize <= resize(c_19, 30);
  c_25_19_0_False_shift <= shift_left(c_25_19_0_False_resize, 0);
  c_25_19_8_False_resize <= resize(c_19, 30);
  c_25_19_8_False_shift <= shift_left(c_25_19_8_False_resize, 8);
  with config_select_2 select c_25_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_19_0_False_shift;
        when others => c_25 <= c_25_19_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 26 and associated fundamentals [[-2032], [2560]]
  c_26_1_8_False_resize <= resize(c_1, 28);
  c_26_1_8_False_shift <= shift_left(c_26_1_8_False_resize, 8);
  c_26_10_0_False_resize <= c_10;
  c_26_10_0_False_shift <= shift_left(c_26_10_0_False_resize, 0);
  with config_select_2 select c_26_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_1_8_False_shift;
        when others => c_26 <= c_26_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 27 and associated fundamentals [[24000], [-10178]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 28,
      w_o => 31,
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
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(30 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[16], [16]]
  c_28_21_2_False_resize <= c_21(19 downto 0);
  c_28_21_2_False_shift <= shift_left(c_28_21_2_False_resize, 2);
  c_28_15_0_False_resize <= c_15;
  c_28_15_0_False_shift <= shift_left(c_28_15_0_False_resize, 0);
  with config_select_3 select c_28_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_21_2_False_shift;
        when others => c_28 <= c_28_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[4], [12]]
  c_29_21_0_False_resize <= c_21(19 downto 0);
  c_29_21_0_False_shift <= shift_left(c_29_21_0_False_resize, 0);
  c_29_4_2_False_resize <= c_4(19 downto 0);
  c_29_4_2_False_shift <= shift_left(c_29_4_2_False_resize, 2);
  with config_select_3 select c_29_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_21_0_False_shift;
        when others => c_29 <= c_29_4_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 30 and associated fundamentals [[124], [116]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 23,
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
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[255], [514]]
  c_31_4_0_False_resize <= resize(c_4, 26);
  c_31_4_0_False_shift <= shift_left(c_31_4_0_False_resize, 0);
  c_31_9_0_False_resize <= c_9(25 downto 0);
  c_31_9_0_False_shift <= shift_left(c_31_9_0_False_resize, 0);
  with config_select_3 select c_31_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_4_0_False_shift;
        when others => c_31 <= c_31_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 32 and associated fundamentals [[-127], [-450]]
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 26,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_22,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[255], [48]]
  c_33_4_0_False_resize <= c_4;
  c_33_4_0_False_shift <= shift_left(c_33_4_0_False_resize, 0);
  c_33_4_4_False_resize <= c_4;
  c_33_4_4_False_shift <= shift_left(c_33_4_4_False_resize, 4);
  with config_select_3 select c_33_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_4_0_False_shift;
        when others => c_33 <= c_33_4_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[76], [65]]
  c_34_6_1_False_resize <= c_6(22 downto 0);
  c_34_6_1_False_shift <= shift_left(c_34_6_1_False_resize, 1);
  c_34_21_0_False_resize <= c_21;
  c_34_21_0_False_shift <= shift_left(c_34_21_0_False_resize, 0);
  with config_select_3 select c_34_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_6_1_False_shift;
        when others => c_34 <= c_34_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 35 and associated fundamentals [[179], [113]]
  with config_select_4 select c_35_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_35_sub_sel,
      x_i => c_33,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 36 and associated fundamentals [[941], [958]]
  with config_select_5 select c_36_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_36_sub_sel,
      x_i => c_13,
      y_i => c_32,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[1056], [96]]
  c_37_9_0_False_resize <= c_9;
  c_37_9_0_False_shift <= shift_left(c_37_9_0_False_resize, 0);
  c_37_4_5_False_resize <= resize(c_4, 27);
  c_37_4_5_False_shift <= shift_left(c_37_4_5_False_resize, 5);
  with config_select_3 select c_37_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_9_0_False_shift;
        when others => c_37 <= c_37_4_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 38 and associated fundamentals [[2040], [65]]
  c_38_21_0_False_resize <= resize(c_21, 27);
  c_38_21_0_False_shift <= shift_left(c_38_21_0_False_resize, 0);
  c_38_4_3_False_resize <= resize(c_4, 27);
  c_38_4_3_False_shift <= shift_left(c_38_4_3_False_resize, 3);
  with config_select_3 select c_38_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_21_0_False_shift;
        when others => c_38 <= c_38_4_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 39 and associated fundamentals [[2184], [319]]
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 27,
      w_o => 26,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_37,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 40 and associated fundamentals [[34], [202]]
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 2,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_18,
      y_i => c_39,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 41 and associated fundamentals [[1056], [16]]
  c_41_9_0_False_resize <= c_9;
  c_41_9_0_False_shift <= shift_left(c_41_9_0_False_resize, 0);
  c_41_15_0_False_resize <= resize(c_15, 27);
  c_41_15_0_False_shift <= shift_left(c_41_15_0_False_resize, 0);
  with config_select_3 select c_41_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_9_0_False_shift;
        when others => c_41 <= c_41_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 42 and associated fundamentals [[38], [16]]
  c_42_6_0_False_resize <= c_6(21 downto 0);
  c_42_6_0_False_shift <= shift_left(c_42_6_0_False_resize, 0);
  c_42_15_0_False_resize <= resize(c_15, 22);
  c_42_15_0_False_shift <= shift_left(c_42_15_0_False_resize, 0);
  with config_select_3 select c_42_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_6_0_False_shift;
        when others => c_42 <= c_42_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 43 and associated fundamentals [[547], [16]]
  inst_adder_node_43: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_41,
      y_i => c_42,
      z_o => c_43_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_43_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 44 and associated fundamentals [[1056], [514]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_9 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 45 and associated fundamentals [[717], [-302]]
  with config_select_4 select c_45_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 31,
      w_y_i => 27,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 5,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_45_sub_sel,
      x_i => c_27,
      y_i => c_44,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 46 and associated fundamentals [[941], [958]]
  c_46_resize <= c_36;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'mux' in stage 5 with id 47 and associated fundamentals [[407], [125]]
  c_47_13_0_False_resize <= c_13;
  c_47_13_0_False_shift <= shift_left(c_47_13_0_False_resize, 0);
  c_47_24_0_False_resize <= resize(c_24, 25);
  c_47_24_0_False_shift <= shift_left(c_47_24_0_False_resize, 0);
  with config_select_5 select c_47_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_13_0_False_shift;
        when others => c_47 <= c_47_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 48 and associated fundamentals [[407], [125]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'mux' in stage 5 with id 49 and associated fundamentals [[-508], [-450]]
  c_49_32_2_False_resize <= c_32;
  c_49_32_2_False_shift <= shift_left(c_49_32_2_False_resize, 2);
  c_49_32_0_False_resize <= c_32;
  c_49_32_0_False_shift <= shift_left(c_49_32_0_False_resize, 0);
  with config_select_5 select c_49_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "0" => c_49 <= c_49_32_2_False_shift;
        when others => c_49 <= c_49_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 50 and associated fundamentals [[1016], [900]]
  c_50_resize <= resize(c_49, 26);
  c_50 <= -shift_left(c_50_resize, 1);
  -- node of type 'mux' in stage 5 with id 51 and associated fundamentals [[208], [489]]
  c_51_24_1_False_resize <= resize(c_24, 25);
  c_51_24_1_False_shift <= shift_left(c_51_24_1_False_resize, 1);
  c_51_18_0_False_resize <= c_18(24 downto 0);
  c_51_18_0_False_shift <= shift_left(c_51_18_0_False_resize, 0);
  with config_select_5 select c_51_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "0" => c_51 <= c_51_24_1_False_shift;
        when others => c_51 <= c_51_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 52 and associated fundamentals [[208], [489]]
  c_52_resize <= c_51;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'register' in stage 5 with id 53 and associated fundamentals [[547], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_43 & "";
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 54 and associated fundamentals [[547], [16]]
  c_54_resize <= c_53;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'mux' in stage 5 with id 55 and associated fundamentals [[358], [113]]
  c_55_35_0_False_resize <= resize(c_35, 25);
  c_55_35_0_False_shift <= shift_left(c_55_35_0_False_resize, 0);
  c_55_35_1_False_resize <= resize(c_35, 25);
  c_55_35_1_False_shift <= shift_left(c_55_35_1_False_resize, 1);
  with config_select_5 select c_55_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "0" => c_55 <= c_55_35_0_False_shift;
        when others => c_55 <= c_55_35_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 56 and associated fundamentals [[358], [113]]
  c_56_resize <= c_55;
  c_56 <= shift_left(c_56_resize, 0);
  -- node of type 'mux' in stage 5 with id 57 and associated fundamentals [[717], [232]]
  c_57_30_1_False_resize <= resize(c_30, 26);
  c_57_30_1_False_shift <= shift_left(c_57_30_1_False_resize, 1);
  c_57_45_0_False_resize <= c_45;
  c_57_45_0_False_shift <= shift_left(c_57_45_0_False_resize, 0);
  with config_select_5 select c_57_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_30_1_False_shift;
        when others => c_57 <= c_57_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 58 and associated fundamentals [[717], [232]]
  c_58_resize <= c_57;
  c_58 <= shift_left(c_58_resize, 0);
  -- node of type 'mux' in stage 5 with id 59 and associated fundamentals [[124], [319]]
  c_59_30_0_False_resize <= resize(c_30, 25);
  c_59_30_0_False_shift <= shift_left(c_59_30_0_False_resize, 0);
  c_59_39_0_False_resize <= c_39(24 downto 0);
  c_59_39_0_False_shift <= shift_left(c_59_39_0_False_resize, 0);
  with config_select_5 select c_59_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "0" => c_59 <= c_59_30_0_False_shift;
        when others => c_59 <= c_59_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 60 and associated fundamentals [[124], [319]]
  c_60_resize <= c_59;
  c_60 <= shift_left(c_60_resize, 0);
  -- node of type 'mux' in stage 5 with id 61 and associated fundamentals [[-127], [-302]]
  c_61_32_0_False_resize <= c_32;
  c_61_32_0_False_shift <= shift_left(c_61_32_0_False_resize, 0);
  c_61_45_0_False_resize <= c_45(24 downto 0);
  c_61_45_0_False_shift <= shift_left(c_61_45_0_False_resize, 0);
  with config_select_5 select c_61_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "0" => c_61 <= c_61_32_0_False_shift;
        when others => c_61 <= c_61_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 62 and associated fundamentals [[127], [302]]
  c_62_resize <= c_61;
  c_62 <= -shift_left(c_62_resize, 0);
  -- node of type 'output' in stage 5 with id 63 and associated fundamentals [[136], [808]]
  c_63_resize <= resize(c_40, 26);
  c_63 <= shift_left(c_63_resize, 2);
end architecture;

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
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(22 downto 0);
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
  signal config_select_13: std_logic_vector(1 downto 0);
  signal config_select_14: std_logic_vector(1 downto 0);
  signal config_select_15: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_3_0_False_resize: signed(19 downto 0);
  signal c_4_3_0_False_shift: signed(19 downto 0);
  signal c_4_3_1_False_resize: signed(19 downto 0);
  signal c_4_3_1_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_3_0_False_resize: signed(20 downto 0);
  signal c_5_3_0_False_shift: signed(20 downto 0);
  signal c_5_0_1_False_resize: signed(20 downto 0);
  signal c_5_0_1_False_shift: signed(20 downto 0);
  signal c_5_3_1_False_resize: signed(20 downto 0);
  signal c_5_3_1_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(21 downto 0);
  signal c_7_0_4_False_resize: signed(21 downto 0);
  signal c_7_0_4_False_shift: signed(21 downto 0);
  signal c_7_3_3_False_resize: signed(21 downto 0);
  signal c_7_3_3_False_shift: signed(21 downto 0);
  signal c_7_0_5_False_resize: signed(21 downto 0);
  signal c_7_0_5_False_shift: signed(21 downto 0);
  signal c_7_6_0_False_resize: signed(21 downto 0);
  signal c_7_6_0_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_8_0_0_False_resize: signed(19 downto 0);
  signal c_8_0_0_False_shift: signed(19 downto 0);
  signal c_8_3_0_False_resize: signed(19 downto 0);
  signal c_8_3_0_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_3_5_False_resize: signed(23 downto 0);
  signal c_10_3_5_False_shift: signed(23 downto 0);
  signal c_10_9_0_False_resize: signed(23 downto 0);
  signal c_10_9_0_False_shift: signed(23 downto 0);
  signal c_10_0_6_False_resize: signed(23 downto 0);
  signal c_10_0_6_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_0_1_False_resize: signed(21 downto 0);
  signal c_11_0_1_False_shift: signed(21 downto 0);
  signal c_11_6_0_False_resize: signed(21 downto 0);
  signal c_11_6_0_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(23 downto 0);
  signal c_13_9_0_False_resize: signed(23 downto 0);
  signal c_13_9_0_False_shift: signed(23 downto 0);
  signal c_13_6_0_False_resize: signed(23 downto 0);
  signal c_13_6_0_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_9_0_False_resize: signed(21 downto 0);
  signal c_14_9_0_False_shift: signed(21 downto 0);
  signal c_14_0_4_False_resize: signed(21 downto 0);
  signal c_14_0_4_False_shift: signed(21 downto 0);
  signal c_14_3_0_False_resize: signed(21 downto 0);
  signal c_14_3_0_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_i0_resize: signed(22 downto 0);
  signal c_15_i1_resize: signed(22 downto 0);
  signal c_15_i0_shift: signed(22 downto 0);
  signal c_15_i1_shift: signed(22 downto 0);
  signal c_15_arith: signed(22 downto 0);
  signal c_15_oshift: signed(22 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_0_2_False_resize: signed(21 downto 0);
  signal c_16_0_2_False_shift: signed(21 downto 0);
  signal c_16_6_0_False_resize: signed(21 downto 0);
  signal c_16_6_0_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_15_0_False_resize: signed(22 downto 0);
  signal c_17_15_0_False_shift: signed(22 downto 0);
  signal c_17_9_0_False_resize: signed(22 downto 0);
  signal c_17_9_0_False_shift: signed(22 downto 0);
  signal c_17_0_1_False_resize: signed(22 downto 0);
  signal c_17_0_1_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_0_0_False_resize: signed(23 downto 0);
  signal c_19_0_0_False_shift: signed(23 downto 0);
  signal c_19_18_5_False_resize: signed(23 downto 0);
  signal c_19_18_5_False_shift: signed(23 downto 0);
  signal c_19_0_3_False_resize: signed(23 downto 0);
  signal c_19_0_3_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_15_0_False_resize: signed(23 downto 0);
  signal c_20_15_0_False_shift: signed(23 downto 0);
  signal c_20_12_0_False_resize: signed(23 downto 0);
  signal c_20_12_0_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_i0_resize: signed(23 downto 0);
  signal c_21_i1_resize: signed(23 downto 0);
  signal c_21_i0_shift: signed(23 downto 0);
  signal c_21_i1_shift: signed(23 downto 0);
  signal c_21_arith: signed(23 downto 0);
  signal c_21_oshift: signed(23 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(23 downto 0);
  signal c_22_6_0_False_resize: signed(23 downto 0);
  signal c_22_6_0_False_shift: signed(23 downto 0);
  signal c_22_0_8_False_resize: signed(23 downto 0);
  signal c_22_0_8_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_23_15_0_False_resize: signed(20 downto 0);
  signal c_23_15_0_False_shift: signed(20 downto 0);
  signal c_23_3_0_False_resize: signed(20 downto 0);
  signal c_23_3_0_False_shift: signed(20 downto 0);
  signal c_23_0_5_False_resize: signed(20 downto 0);
  signal c_23_0_5_False_shift: signed(20 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(23 downto 0);
  signal c_25_0_3_False_resize: signed(23 downto 0);
  signal c_25_0_3_False_shift: signed(23 downto 0);
  signal c_25_9_1_False_resize: signed(23 downto 0);
  signal c_25_9_1_False_shift: signed(23 downto 0);
  signal c_25_24_0_False_resize: signed(23 downto 0);
  signal c_25_24_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_18_0_False_resize: signed(23 downto 0);
  signal c_26_18_0_False_shift: signed(23 downto 0);
  signal c_26_6_0_False_resize: signed(23 downto 0);
  signal c_26_6_0_False_shift: signed(23 downto 0);
  signal c_26_9_0_False_resize: signed(23 downto 0);
  signal c_26_9_0_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(23 downto 0);
  signal c_28_0_0_False_resize: signed(23 downto 0);
  signal c_28_0_0_False_shift: signed(23 downto 0);
  signal c_28_18_5_False_resize: signed(23 downto 0);
  signal c_28_18_5_False_shift: signed(23 downto 0);
  signal c_28_3_0_False_resize: signed(23 downto 0);
  signal c_28_3_0_False_shift: signed(23 downto 0);
  signal c_28_0_5_False_resize: signed(23 downto 0);
  signal c_28_0_5_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_0_3_False_resize: signed(22 downto 0);
  signal c_29_0_3_False_shift: signed(22 downto 0);
  signal c_29_12_0_False_resize: signed(22 downto 0);
  signal c_29_12_0_False_shift: signed(22 downto 0);
  signal c_29_3_2_False_resize: signed(22 downto 0);
  signal c_29_3_2_False_shift: signed(22 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_15_1_False_resize: signed(23 downto 0);
  signal c_31_15_1_False_shift: signed(23 downto 0);
  signal c_31_18_5_False_resize: signed(23 downto 0);
  signal c_31_18_5_False_shift: signed(23 downto 0);
  signal c_31_15_0_False_resize: signed(23 downto 0);
  signal c_31_15_0_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_0_6_False_resize: signed(22 downto 0);
  signal c_32_0_6_False_shift: signed(22 downto 0);
  signal c_32_24_0_False_resize: signed(22 downto 0);
  signal c_32_24_0_False_shift: signed(22 downto 0);
  signal c_32_0_1_False_resize: signed(22 downto 0);
  signal c_32_0_1_False_shift: signed(22 downto 0);
  signal c_32_3_0_False_resize: signed(22 downto 0);
  signal c_32_3_0_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_i0_resize: signed(23 downto 0);
  signal c_33_i1_resize: signed(23 downto 0);
  signal c_33_i0_shift: signed(23 downto 0);
  signal c_33_i1_shift: signed(23 downto 0);
  signal c_33_arith: signed(23 downto 0);
  signal c_33_oshift: signed(23 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(23 downto 0);
  signal c_34_12_1_False_resize: signed(23 downto 0);
  signal c_34_12_1_False_shift: signed(23 downto 0);
  signal c_34_6_0_False_resize: signed(23 downto 0);
  signal c_34_6_0_False_shift: signed(23 downto 0);
  signal c_34_18_1_False_resize: signed(23 downto 0);
  signal c_34_18_1_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_resize: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_18_0_False_resize: signed(23 downto 0);
  signal c_36_18_0_False_shift: signed(23 downto 0);
  signal c_36_9_0_False_resize: signed(23 downto 0);
  signal c_36_9_0_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_15_1_False_resize: signed(23 downto 0);
  signal c_38_15_1_False_shift: signed(23 downto 0);
  signal c_38_27_0_False_resize: signed(23 downto 0);
  signal c_38_27_0_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_30_0_False_resize: signed(23 downto 0);
  signal c_40_30_0_False_shift: signed(23 downto 0);
  signal c_40_9_2_False_resize: signed(23 downto 0);
  signal c_40_9_2_False_shift: signed(23 downto 0);
  signal c_40_12_0_False_resize: signed(23 downto 0);
  signal c_40_12_0_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_15_1_False_resize: signed(23 downto 0);
  signal c_42_15_1_False_shift: signed(23 downto 0);
  signal c_42_21_1_False_resize: signed(23 downto 0);
  signal c_42_21_1_False_shift: signed(23 downto 0);
  signal c_42_6_0_False_resize: signed(23 downto 0);
  signal c_42_6_0_False_shift: signed(23 downto 0);
  signal c_42_30_0_False_resize: signed(23 downto 0);
  signal c_42_30_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_9_0_False_resize: signed(23 downto 0);
  signal c_44_9_0_False_shift: signed(23 downto 0);
  signal c_44_27_0_False_resize: signed(23 downto 0);
  signal c_44_27_0_False_shift: signed(23 downto 0);
  signal c_44_15_0_False_resize: signed(23 downto 0);
  signal c_44_15_0_False_shift: signed(23 downto 0);
  signal c_44_24_0_False_resize: signed(23 downto 0);
  signal c_44_24_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_21_0_False_resize: signed(23 downto 0);
  signal c_47_21_0_False_shift: signed(23 downto 0);
  signal c_47_12_1_False_resize: signed(23 downto 0);
  signal c_47_12_1_False_shift: signed(23 downto 0);
  signal c_47_24_0_False_resize: signed(23 downto 0);
  signal c_47_24_0_False_shift: signed(23 downto 0);
  signal c_47_21_1_False_resize: signed(23 downto 0);
  signal c_47_21_1_False_shift: signed(23 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_49_9_0_False_resize: signed(22 downto 0);
  signal c_49_9_0_False_shift: signed(22 downto 0);
  signal c_49_15_1_False_resize: signed(22 downto 0);
  signal c_49_15_1_False_shift: signed(22 downto 0);
  signal c_49_30_0_False_resize: signed(22 downto 0);
  signal c_49_30_0_False_shift: signed(22 downto 0);
  signal c_49_21_0_False_resize: signed(22 downto 0);
  signal c_49_21_0_False_shift: signed(22 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_50_resize: signed(22 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_3_3_False_resize: signed(23 downto 0);
  signal c_51_3_3_False_shift: signed(23 downto 0);
  signal c_51_24_1_False_resize: signed(23 downto 0);
  signal c_51_24_1_False_shift: signed(23 downto 0);
  signal c_51_3_0_False_resize: signed(23 downto 0);
  signal c_51_3_0_False_shift: signed(23 downto 0);
  signal c_51_sel: std_logic_vector(1 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_resize: signed(23 downto 0);
begin
  config_select_0 <= config_select;
  process(clk)
  begin
    if rising_edge(clk) then
      config_select_1 <= config_select;
      config_select_2 <= config_select;
      config_select_3 <= config_select;
      config_select_4 <= config_select;
      config_select_5 <= config_select;
      config_select_6 <= config_select;
      config_select_7 <= config_select;
      config_select_8 <= config_select;
      config_select_9 <= config_select;
      config_select_10 <= config_select;
      config_select_11 <= config_select;
      config_select_12 <= config_select;
      config_select_13 <= config_select;
      config_select_14 <= config_select;
      config_select_15 <= config_select;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 1 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 2 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 3 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 4 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 5 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 6 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 7 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 8 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 9 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_52);
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
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_2_False_shift when others;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [2], [1], [1]]
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_0_0_False_shift when "0",
    c_2_0_1_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [6], [15], [5]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 17,
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
  c_3 <= c_3_oshift(19 downto 0);
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[6], [6], [15], [5]]
  c_4_3_0_False_resize <= c_3;
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_3_1_False_resize <= c_3;
  c_4_3_1_False_shift <= shift_left(c_4_3_1_False_resize, 1);
  with config_select_3 select c_4_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_3_0_False_shift when "0",
    c_4_3_1_False_shift when others;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[2], [2], [30], [5]]
  c_5_3_0_False_resize <= resize(c_3, 21);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_0_1_False_resize <= resize(c_0, 21);
  c_5_0_1_False_shift <= shift_left(c_5_0_1_False_resize, 1);
  c_5_3_1_False_resize <= resize(c_3, 21);
  c_5_3_1_False_shift <= shift_left(c_5_3_1_False_resize, 1);
  with config_select_3 select c_5_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_3_0_False_shift when "00",
    c_5_0_1_False_shift when "01",
    c_5_3_1_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[46], [50], [150], [35]]
  with config_select_4 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 24,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 7 and associated fundamentals [[24], [32], [16], [35]]
  c_7_0_4_False_resize <= resize(c_0, 22);
  c_7_0_4_False_shift <= shift_left(c_7_0_4_False_resize, 4);
  c_7_3_3_False_resize <= resize(c_3, 22);
  c_7_3_3_False_shift <= shift_left(c_7_3_3_False_resize, 3);
  c_7_0_5_False_resize <= resize(c_0, 22);
  c_7_0_5_False_shift <= shift_left(c_7_0_5_False_resize, 5);
  c_7_6_0_False_resize <= c_6(21 downto 0);
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  with config_select_5 select c_7_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  with c_7_sel select c_7 <=
    c_7_0_4_False_shift when "00",
    c_7_3_3_False_shift when "01",
    c_7_0_5_False_shift when "10",
    c_7_6_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[3], [1], [15], [1]]
  c_8_0_0_False_resize <= resize(c_0, 20);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_3_0_False_resize <= c_3;
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "00",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_0_0_False_shift when "0",
    c_8_3_0_False_shift when others;
  -- node of type 'sub' in stage 6 with id 9 and associated fundamentals [[93], [127], [49], [139]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 10 and associated fundamentals [[64], [127], [49], [160]]
  c_10_3_5_False_resize <= resize(c_3, 24);
  c_10_3_5_False_shift <= shift_left(c_10_3_5_False_resize, 5);
  c_10_9_0_False_resize <= c_9;
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_0_6_False_resize <= resize(c_0, 24);
  c_10_0_6_False_shift <= shift_left(c_10_0_6_False_resize, 6);
  with config_select_7 select c_10_sel <= 
    "00" when "11",
    "01" when "10",
    "01" when "01",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_3_5_False_shift when "00",
    c_10_9_0_False_shift when "01",
    c_10_0_6_False_shift when others;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[2], [50], [2], [2]]
  c_11_0_1_False_resize <= resize(c_0, 22);
  c_11_0_1_False_shift <= shift_left(c_11_0_1_False_resize, 1);
  c_11_6_0_False_resize <= c_6(21 downto 0);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_5 select c_11_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_0_1_False_shift when "0",
    c_11_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 12 and associated fundamentals [[66], [77], [47], [162]]
  with config_select_8 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(23 downto 0);
  -- node of type 'mux' in stage 7 with id 13 and associated fundamentals [[93], [127], [150], [35]]
  c_13_9_0_False_resize <= c_9;
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  c_13_6_0_False_resize <= c_6;
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  with config_select_7 select c_13_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_9_0_False_shift when "0",
    c_13_6_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 14 and associated fundamentals [[16], [6], [49], [16]]
  c_14_9_0_False_resize <= c_9(21 downto 0);
  c_14_9_0_False_shift <= shift_left(c_14_9_0_False_resize, 0);
  c_14_0_4_False_resize <= resize(c_0, 22);
  c_14_0_4_False_shift <= shift_left(c_14_0_4_False_resize, 4);
  c_14_3_0_False_resize <= resize(c_3, 22);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_7 select c_14_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "00",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_9_0_False_shift when "00",
    c_14_0_4_False_shift when "01",
    c_14_3_0_False_shift when others;
  -- node of type 'sub' in stage 8 with id 15 and associated fundamentals [[77], [121], [101], [19]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 23,
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
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(22 downto 0);
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[46], [50], [4], [4]]
  c_16_0_2_False_resize <= resize(c_0, 22);
  c_16_0_2_False_shift <= shift_left(c_16_0_2_False_resize, 2);
  c_16_6_0_False_resize <= c_6(21 downto 0);
  c_16_6_0_False_shift <= shift_left(c_16_6_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "0" when "11",
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_0_2_False_shift when "0",
    c_16_6_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 17 and associated fundamentals [[77], [127], [49], [2]]
  c_17_15_0_False_resize <= c_15;
  c_17_15_0_False_shift <= shift_left(c_17_15_0_False_resize, 0);
  c_17_9_0_False_resize <= c_9(22 downto 0);
  c_17_9_0_False_shift <= shift_left(c_17_9_0_False_resize, 0);
  c_17_0_1_False_resize <= resize(c_0, 23);
  c_17_0_1_False_shift <= shift_left(c_17_0_1_False_resize, 1);
  with config_select_9 select c_17_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_15_0_False_shift when "00",
    c_17_9_0_False_shift when "01",
    c_17_0_1_False_shift when others;
  -- node of type 'add' in stage 10 with id 18 and associated fundamentals [[123], [177], [53], [6]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(23 downto 0);
  -- node of type 'mux' in stage 11 with id 19 and associated fundamentals [[1], [1], [8], [192]]
  c_19_0_0_False_resize <= resize(c_0, 24);
  c_19_0_0_False_shift <= shift_left(c_19_0_0_False_resize, 0);
  c_19_18_5_False_resize <= c_18;
  c_19_18_5_False_shift <= shift_left(c_19_18_5_False_resize, 5);
  c_19_0_3_False_resize <= resize(c_0, 24);
  c_19_0_3_False_shift <= shift_left(c_19_0_3_False_resize, 3);
  with config_select_11 select c_19_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "11",
    "10" when others;
  with c_19_sel select c_19 <=
    c_19_0_0_False_shift when "00",
    c_19_18_5_False_shift when "01",
    c_19_0_3_False_shift when others;
  -- node of type 'mux' in stage 9 with id 20 and associated fundamentals [[77], [77], [101], [162]]
  c_20_15_0_False_resize <= resize(c_15, 24);
  c_20_15_0_False_shift <= shift_left(c_20_15_0_False_resize, 0);
  c_20_12_0_False_resize <= c_12;
  c_20_12_0_False_shift <= shift_left(c_20_12_0_False_resize, 0);
  with config_select_9 select c_20_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_15_0_False_shift when "0",
    c_20_12_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 21 and associated fundamentals [[79], [79], [117], [222]]
  with config_select_12 select c_21_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 22 and associated fundamentals [[46], [50], [150], [256]]
  c_22_6_0_False_resize <= c_6;
  c_22_6_0_False_shift <= shift_left(c_22_6_0_False_resize, 0);
  c_22_0_8_False_resize <= resize(c_0, 24);
  c_22_0_8_False_shift <= shift_left(c_22_0_8_False_resize, 8);
  with config_select_5 select c_22_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_6_0_False_shift when "0",
    c_22_0_8_False_shift when others;
  -- node of type 'mux' in stage 9 with id 23 and associated fundamentals [[3], [32], [32], [19]]
  c_23_15_0_False_resize <= c_15(20 downto 0);
  c_23_15_0_False_shift <= shift_left(c_23_15_0_False_resize, 0);
  c_23_3_0_False_resize <= resize(c_3, 21);
  c_23_3_0_False_shift <= shift_left(c_23_3_0_False_resize, 0);
  c_23_0_5_False_resize <= resize(c_0, 21);
  c_23_0_5_False_shift <= shift_left(c_23_0_5_False_resize, 5);
  with config_select_9 select c_23_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_15_0_False_shift when "00",
    c_23_3_0_False_shift when "01",
    c_23_0_5_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 24 and associated fundamentals [[43], [82], [118], [237]]
  with config_select_10 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(23 downto 0);
  -- node of type 'mux' in stage 11 with id 25 and associated fundamentals [[186], [8], [118], [8]]
  c_25_0_3_False_resize <= resize(c_0, 24);
  c_25_0_3_False_shift <= shift_left(c_25_0_3_False_resize, 3);
  c_25_9_1_False_resize <= c_9;
  c_25_9_1_False_shift <= shift_left(c_25_9_1_False_resize, 1);
  c_25_24_0_False_resize <= c_24;
  c_25_24_0_False_shift <= shift_left(c_25_24_0_False_resize, 0);
  with config_select_11 select c_25_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_25_sel select c_25 <=
    c_25_0_3_False_shift when "00",
    c_25_9_1_False_shift when "01",
    c_25_24_0_False_shift when others;
  -- node of type 'mux' in stage 11 with id 26 and associated fundamentals [[123], [50], [53], [139]]
  c_26_18_0_False_resize <= c_18;
  c_26_18_0_False_shift <= shift_left(c_26_18_0_False_resize, 0);
  c_26_6_0_False_resize <= c_6;
  c_26_6_0_False_shift <= shift_left(c_26_6_0_False_resize, 0);
  c_26_9_0_False_resize <= c_9;
  c_26_9_0_False_shift <= shift_left(c_26_9_0_False_resize, 0);
  with config_select_11 select c_26_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_26_sel select c_26 <=
    c_26_18_0_False_shift when "00",
    c_26_6_0_False_shift when "01",
    c_26_9_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 27 and associated fundamentals [[249], [66], [183], [155]]
  with config_select_12 select c_27_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_27_sub_sel,
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  c_27 <= c_27_oshift(23 downto 0);
  -- node of type 'mux' in stage 11 with id 28 and associated fundamentals [[3], [32], [1], [192]]
  c_28_0_0_False_resize <= resize(c_0, 24);
  c_28_0_0_False_shift <= shift_left(c_28_0_0_False_resize, 0);
  c_28_18_5_False_resize <= c_18;
  c_28_18_5_False_shift <= shift_left(c_28_18_5_False_resize, 5);
  c_28_3_0_False_resize <= resize(c_3, 24);
  c_28_3_0_False_shift <= shift_left(c_28_3_0_False_resize, 0);
  c_28_0_5_False_resize <= resize(c_0, 24);
  c_28_0_5_False_shift <= shift_left(c_28_0_5_False_resize, 5);
  with config_select_11 select c_28_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_28_sel select c_28 <=
    c_28_0_0_False_shift when "00",
    c_28_18_5_False_shift when "01",
    c_28_3_0_False_shift when "10",
    c_28_0_5_False_shift when others;
  -- node of type 'mux' in stage 9 with id 29 and associated fundamentals [[12], [77], [8], [20]]
  c_29_0_3_False_resize <= resize(c_0, 23);
  c_29_0_3_False_shift <= shift_left(c_29_0_3_False_resize, 3);
  c_29_12_0_False_resize <= c_12(22 downto 0);
  c_29_12_0_False_shift <= shift_left(c_29_12_0_False_resize, 0);
  c_29_3_2_False_resize <= resize(c_3, 23);
  c_29_3_2_False_shift <= shift_left(c_29_3_2_False_resize, 2);
  with config_select_9 select c_29_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "10" when others;
  with c_29_sel select c_29 <=
    c_29_0_3_False_shift when "00",
    c_29_12_0_False_shift when "01",
    c_29_3_2_False_shift when others;
  -- node of type 'add' in stage 12 with id 30 and associated fundamentals [[15], [109], [9], [212]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  c_30 <= c_30_oshift(23 downto 0);
  -- node of type 'mux' in stage 11 with id 31 and associated fundamentals [[77], [121], [202], [192]]
  c_31_15_1_False_resize <= resize(c_15, 24);
  c_31_15_1_False_shift <= shift_left(c_31_15_1_False_resize, 1);
  c_31_18_5_False_resize <= c_18;
  c_31_18_5_False_shift <= shift_left(c_31_18_5_False_resize, 5);
  c_31_15_0_False_resize <= resize(c_15, 24);
  c_31_15_0_False_shift <= shift_left(c_31_15_0_False_resize, 0);
  with config_select_11 select c_31_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_15_1_False_shift when "00",
    c_31_18_5_False_shift when "01",
    c_31_15_0_False_shift when others;
  -- node of type 'mux' in stage 11 with id 32 and associated fundamentals [[64], [82], [15], [2]]
  c_32_0_6_False_resize <= resize(c_0, 23);
  c_32_0_6_False_shift <= shift_left(c_32_0_6_False_resize, 6);
  c_32_24_0_False_resize <= c_24(22 downto 0);
  c_32_24_0_False_shift <= shift_left(c_32_24_0_False_resize, 0);
  c_32_0_1_False_resize <= resize(c_0, 23);
  c_32_0_1_False_shift <= shift_left(c_32_0_1_False_resize, 1);
  c_32_3_0_False_resize <= resize(c_3, 23);
  c_32_3_0_False_shift <= shift_left(c_32_3_0_False_resize, 0);
  with config_select_11 select c_32_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_32_sel select c_32 <=
    c_32_0_6_False_shift when "00",
    c_32_24_0_False_shift when "01",
    c_32_0_1_False_shift when "10",
    c_32_3_0_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 33 and associated fundamentals [[141], [39], [217], [194]]
  with config_select_12 select c_33_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
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
      sub_i => c_33_sub_sel,
      x_i => c_31,
      y_i => c_32,
      z_o => c_33_oshift
    );
  c_33 <= c_33_oshift(23 downto 0);
  -- node of type 'mux' in stage 11 with id 34 and associated fundamentals [[132], [50], [94], [12]]
  c_34_12_1_False_resize <= c_12;
  c_34_12_1_False_shift <= shift_left(c_34_12_1_False_resize, 1);
  c_34_6_0_False_resize <= c_6;
  c_34_6_0_False_shift <= shift_left(c_34_6_0_False_resize, 0);
  c_34_18_1_False_resize <= c_18;
  c_34_18_1_False_shift <= shift_left(c_34_18_1_False_resize, 1);
  with config_select_11 select c_34_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_34_sel select c_34 <=
    c_34_12_1_False_shift when "00",
    c_34_6_0_False_shift when "01",
    c_34_18_1_False_shift when others;
  -- node of type 'output' in stage 11 with id 35 and associated fundamentals [[132], [50], [94], [12]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'mux' in stage 11 with id 36 and associated fundamentals [[123], [177], [53], [139]]
  c_36_18_0_False_resize <= c_18;
  c_36_18_0_False_shift <= shift_left(c_36_18_0_False_resize, 0);
  c_36_9_0_False_resize <= c_9;
  c_36_9_0_False_shift <= shift_left(c_36_9_0_False_resize, 0);
  with config_select_11 select c_36_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_36_sel select c_36 <=
    c_36_18_0_False_shift when "0",
    c_36_9_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 37 and associated fundamentals [[123], [177], [53], [139]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 13 with id 38 and associated fundamentals [[249], [66], [202], [155]]
  c_38_15_1_False_resize <= resize(c_15, 24);
  c_38_15_1_False_shift <= shift_left(c_38_15_1_False_resize, 1);
  c_38_27_0_False_resize <= c_27;
  c_38_27_0_False_shift <= shift_left(c_38_27_0_False_resize, 0);
  with config_select_13 select c_38_sel <= 
    "0" when "10",
    "1" when "01",
    "1" when "11",
    "1" when others;
  with c_38_sel select c_38 <=
    c_38_15_1_False_shift when "0",
    c_38_27_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 39 and associated fundamentals [[249], [66], [202], [155]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 13 with id 40 and associated fundamentals [[15], [109], [196], [162]]
  c_40_30_0_False_resize <= c_30;
  c_40_30_0_False_shift <= shift_left(c_40_30_0_False_resize, 0);
  c_40_9_2_False_resize <= c_9;
  c_40_9_2_False_shift <= shift_left(c_40_9_2_False_resize, 2);
  c_40_12_0_False_resize <= c_12;
  c_40_12_0_False_shift <= shift_left(c_40_12_0_False_resize, 0);
  with config_select_13 select c_40_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_40_sel select c_40 <=
    c_40_30_0_False_shift when "00",
    c_40_9_2_False_shift when "01",
    c_40_12_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 41 and associated fundamentals [[15], [109], [196], [162]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 13 with id 42 and associated fundamentals [[158], [242], [150], [212]]
  c_42_15_1_False_resize <= resize(c_15, 24);
  c_42_15_1_False_shift <= shift_left(c_42_15_1_False_resize, 1);
  c_42_21_1_False_resize <= c_21;
  c_42_21_1_False_shift <= shift_left(c_42_21_1_False_resize, 1);
  c_42_6_0_False_resize <= c_6;
  c_42_6_0_False_shift <= shift_left(c_42_6_0_False_resize, 0);
  c_42_30_0_False_resize <= c_30;
  c_42_30_0_False_shift <= shift_left(c_42_30_0_False_resize, 0);
  with config_select_13 select c_42_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_42_sel select c_42 <=
    c_42_15_1_False_shift when "00",
    c_42_21_1_False_shift when "01",
    c_42_6_0_False_shift when "10",
    c_42_30_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 43 and associated fundamentals [[158], [242], [150], [212]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 13 with id 44 and associated fundamentals [[77], [127], [183], [237]]
  c_44_9_0_False_resize <= c_9;
  c_44_9_0_False_shift <= shift_left(c_44_9_0_False_resize, 0);
  c_44_27_0_False_resize <= c_27;
  c_44_27_0_False_shift <= shift_left(c_44_27_0_False_resize, 0);
  c_44_15_0_False_resize <= resize(c_15, 24);
  c_44_15_0_False_shift <= shift_left(c_44_15_0_False_resize, 0);
  c_44_24_0_False_resize <= c_24;
  c_44_24_0_False_shift <= shift_left(c_44_24_0_False_resize, 0);
  with config_select_13 select c_44_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_44_sel select c_44 <=
    c_44_9_0_False_shift when "00",
    c_44_27_0_False_shift when "01",
    c_44_15_0_False_shift when "10",
    c_44_24_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 45 and associated fundamentals [[77], [127], [183], [237]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 12 with id 46 and associated fundamentals [[141], [39], [217], [194]]
  c_46_resize <= c_33;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'mux' in stage 13 with id 47 and associated fundamentals [[43], [154], [234], [222]]
  c_47_21_0_False_resize <= c_21;
  c_47_21_0_False_shift <= shift_left(c_47_21_0_False_resize, 0);
  c_47_12_1_False_resize <= c_12;
  c_47_12_1_False_shift <= shift_left(c_47_12_1_False_resize, 1);
  c_47_24_0_False_resize <= c_24;
  c_47_24_0_False_shift <= shift_left(c_47_24_0_False_resize, 0);
  c_47_21_1_False_resize <= c_21;
  c_47_21_1_False_shift <= shift_left(c_47_21_1_False_resize, 1);
  with config_select_13 select c_47_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_47_sel select c_47 <=
    c_47_21_0_False_shift when "00",
    c_47_12_1_False_shift when "01",
    c_47_24_0_False_shift when "10",
    c_47_21_1_False_shift when others;
  -- node of type 'output' in stage 13 with id 48 and associated fundamentals [[43], [154], [234], [222]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'mux' in stage 13 with id 49 and associated fundamentals [[93], [79], [9], [38]]
  c_49_9_0_False_resize <= c_9(22 downto 0);
  c_49_9_0_False_shift <= shift_left(c_49_9_0_False_resize, 0);
  c_49_15_1_False_resize <= c_15;
  c_49_15_1_False_shift <= shift_left(c_49_15_1_False_resize, 1);
  c_49_30_0_False_resize <= c_30(22 downto 0);
  c_49_30_0_False_shift <= shift_left(c_49_30_0_False_resize, 0);
  c_49_21_0_False_resize <= c_21(22 downto 0);
  c_49_21_0_False_shift <= shift_left(c_49_21_0_False_resize, 0);
  with config_select_13 select c_49_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  with c_49_sel select c_49 <=
    c_49_9_0_False_shift when "00",
    c_49_15_1_False_shift when "01",
    c_49_30_0_False_shift when "10",
    c_49_21_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 50 and associated fundamentals [[93], [79], [9], [38]]
  c_50_resize <= c_49;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'mux' in stage 11 with id 51 and associated fundamentals [[24], [6], [236], [40]]
  c_51_3_3_False_resize <= resize(c_3, 24);
  c_51_3_3_False_shift <= shift_left(c_51_3_3_False_resize, 3);
  c_51_24_1_False_resize <= c_24;
  c_51_24_1_False_shift <= shift_left(c_51_24_1_False_resize, 1);
  c_51_3_0_False_resize <= resize(c_3, 24);
  c_51_3_0_False_shift <= shift_left(c_51_3_0_False_resize, 0);
  with config_select_11 select c_51_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  with c_51_sel select c_51 <=
    c_51_3_3_False_shift when "00",
    c_51_24_1_False_shift when "01",
    c_51_3_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 52 and associated fundamentals [[24], [6], [236], [40]]
  c_52_resize <= c_51;
  c_52 <= shift_left(c_52_resize, 0);
end architecture;

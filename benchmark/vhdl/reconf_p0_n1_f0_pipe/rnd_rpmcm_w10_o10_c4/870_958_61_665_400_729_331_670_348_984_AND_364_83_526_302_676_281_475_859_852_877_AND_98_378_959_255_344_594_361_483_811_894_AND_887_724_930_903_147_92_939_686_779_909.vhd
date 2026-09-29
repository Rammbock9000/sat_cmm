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
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(25 downto 0);
    y_8: out std_logic_vector(25 downto 0);
    y_9: out std_logic_vector(25 downto 0);
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
  signal config_select_16: std_logic_vector(1 downto 0);
  signal config_select_17: std_logic_vector(1 downto 0);
  signal config_select_18: std_logic_vector(1 downto 0);
  signal config_select_19: std_logic_vector(1 downto 0);
  signal config_select_20: std_logic_vector(1 downto 0);
  signal config_select_21: std_logic_vector(1 downto 0);
  signal config_select_22: std_logic_vector(1 downto 0);
  signal config_select_23: std_logic_vector(1 downto 0);
  signal config_select_24: std_logic_vector(1 downto 0);
  signal config_select_25: std_logic_vector(1 downto 0);
  signal config_select_26: std_logic_vector(1 downto 0);
  signal config_select_27: std_logic_vector(1 downto 0);
  signal config_select_28: std_logic_vector(1 downto 0);
  signal config_select_29: std_logic_vector(1 downto 0);
  signal config_select_30: std_logic_vector(1 downto 0);
  signal config_select_31: std_logic_vector(1 downto 0);
  signal config_select_32: std_logic_vector(1 downto 0);
  signal config_select_33: std_logic_vector(1 downto 0);
  signal config_select_34: std_logic_vector(1 downto 0);
  signal config_select_35: std_logic_vector(1 downto 0);
  signal config_select_36: std_logic_vector(1 downto 0);
  signal config_select_37: std_logic_vector(1 downto 0);
  signal config_select_38: std_logic_vector(1 downto 0);
  signal config_select_39: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_0_4_False_resize: signed(21 downto 0);
  signal c_1_0_4_False_shift: signed(21 downto 0);
  signal c_1_0_6_False_resize: signed(21 downto 0);
  signal c_1_0_6_False_shift: signed(21 downto 0);
  signal c_1_0_0_False_resize: signed(21 downto 0);
  signal c_1_0_0_False_shift: signed(21 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_0_3_False_resize: signed(21 downto 0);
  signal c_2_0_3_False_shift: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_0_5_False_resize: signed(21 downto 0);
  signal c_2_0_5_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(26 downto 0);
  signal c_3_i0_resize: signed(26 downto 0);
  signal c_3_i1_resize: signed(26 downto 0);
  signal c_3_i0_shift: signed(26 downto 0);
  signal c_3_i1_shift: signed(26 downto 0);
  signal c_3_arith: signed(26 downto 0);
  signal c_3_oshift: signed(26 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_5_4_False_resize: signed(19 downto 0);
  signal c_6_5_4_False_shift: signed(19 downto 0);
  signal c_6_5_0_False_resize: signed(19 downto 0);
  signal c_6_5_0_False_shift: signed(19 downto 0);
  signal c_6_5_2_False_resize: signed(19 downto 0);
  signal c_6_5_2_False_shift: signed(19 downto 0);
  signal c_6_3_0_False_resize: signed(19 downto 0);
  signal c_6_3_0_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_5_0_False_resize: signed(23 downto 0);
  signal c_7_5_0_False_shift: signed(23 downto 0);
  signal c_7_3_3_False_resize: signed(23 downto 0);
  signal c_7_3_3_False_shift: signed(23 downto 0);
  signal c_7_3_0_False_resize: signed(23 downto 0);
  signal c_7_3_0_False_shift: signed(23 downto 0);
  signal c_7_5_7_False_resize: signed(23 downto 0);
  signal c_7_5_7_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(26 downto 0);
  signal c_12: signed(26 downto 0);
  signal c_13: signed(18 downto 0);
  signal c_13_10_2_False_resize: signed(18 downto 0);
  signal c_13_10_2_False_shift: signed(18 downto 0);
  signal c_13_12_0_False_resize: signed(18 downto 0);
  signal c_13_12_0_False_shift: signed(18 downto 0);
  signal c_13_10_3_False_resize: signed(18 downto 0);
  signal c_13_10_3_False_shift: signed(18 downto 0);
  signal c_13_8_0_False_resize: signed(18 downto 0);
  signal c_13_8_0_False_shift: signed(18 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(20 downto 0);
  signal c_14_10_0_False_resize: signed(20 downto 0);
  signal c_14_10_0_False_shift: signed(20 downto 0);
  signal c_14_10_5_False_resize: signed(20 downto 0);
  signal c_14_10_5_False_shift: signed(20 downto 0);
  signal c_14_8_0_False_resize: signed(20 downto 0);
  signal c_14_8_0_False_shift: signed(20 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_15_i0_resize: signed(21 downto 0);
  signal c_15_i1_resize: signed(21 downto 0);
  signal c_15_i0_shift: signed(21 downto 0);
  signal c_15_i1_shift: signed(21 downto 0);
  signal c_15_arith: signed(21 downto 0);
  signal c_15_oshift: signed(21 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_12_0_False_resize: signed(25 downto 0);
  signal c_16_12_0_False_shift: signed(25 downto 0);
  signal c_16_10_4_False_resize: signed(25 downto 0);
  signal c_16_10_4_False_shift: signed(25 downto 0);
  signal c_16_8_2_False_resize: signed(25 downto 0);
  signal c_16_8_2_False_shift: signed(25 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(15 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_21: signed(29 downto 0);
  signal c_21_18_2_False_resize: signed(29 downto 0);
  signal c_21_18_2_False_shift: signed(29 downto 0);
  signal c_21_20_0_False_resize: signed(29 downto 0);
  signal c_21_20_0_False_shift: signed(29 downto 0);
  signal c_21_15_0_False_resize: signed(29 downto 0);
  signal c_21_15_0_False_shift: signed(29 downto 0);
  signal c_21_15_8_False_resize: signed(29 downto 0);
  signal c_21_15_8_False_shift: signed(29 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_24: signed(29 downto 0);
  signal c_24_i0_resize: signed(29 downto 0);
  signal c_24_i1_resize: signed(29 downto 0);
  signal c_24_i0_shift: signed(29 downto 0);
  signal c_24_i1_shift: signed(29 downto 0);
  signal c_24_arith: signed(29 downto 0);
  signal c_24_oshift: signed(29 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(25 downto 0);
  signal c_25_15_0_False_resize: signed(25 downto 0);
  signal c_25_15_0_False_shift: signed(25 downto 0);
  signal c_25_20_1_False_resize: signed(25 downto 0);
  signal c_25_20_1_False_shift: signed(25 downto 0);
  signal c_25_18_0_False_resize: signed(25 downto 0);
  signal c_25_18_0_False_shift: signed(25 downto 0);
  signal c_25_18_10_False_resize: signed(25 downto 0);
  signal c_25_18_10_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(19 downto 0);
  signal c_26_0_4_False_resize: signed(19 downto 0);
  signal c_26_0_4_False_shift: signed(19 downto 0);
  signal c_26_0_3_False_resize: signed(19 downto 0);
  signal c_26_0_3_False_shift: signed(19 downto 0);
  signal c_26_0_0_False_resize: signed(19 downto 0);
  signal c_26_0_0_False_shift: signed(19 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_28: signed(19 downto 0);
  signal c_29: signed(19 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(26 downto 0);
  signal c_33_i0_resize: signed(26 downto 0);
  signal c_33_i1_resize: signed(26 downto 0);
  signal c_33_i0_shift: signed(26 downto 0);
  signal c_33_i1_shift: signed(26 downto 0);
  signal c_33_arith: signed(26 downto 0);
  signal c_33_oshift: signed(26 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(15 downto 0);
  signal c_35: signed(15 downto 0);
  signal c_36: signed(26 downto 0);
  signal c_37: signed(26 downto 0);
  signal c_38: signed(26 downto 0);
  signal c_39: signed(26 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(29 downto 0);
  signal c_42_41_0_False_resize: signed(29 downto 0);
  signal c_42_41_0_False_shift: signed(29 downto 0);
  signal c_42_35_2_False_resize: signed(29 downto 0);
  signal c_42_35_2_False_shift: signed(29 downto 0);
  signal c_42_39_0_False_resize: signed(29 downto 0);
  signal c_42_39_0_False_shift: signed(29 downto 0);
  signal c_42_24_0_False_resize: signed(29 downto 0);
  signal c_42_24_0_False_shift: signed(29 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(27 downto 0);
  signal c_43_35_10_False_resize: signed(27 downto 0);
  signal c_43_35_10_False_shift: signed(27 downto 0);
  signal c_43_24_0_False_resize: signed(27 downto 0);
  signal c_43_24_0_False_shift: signed(27 downto 0);
  signal c_43_39_1_False_resize: signed(27 downto 0);
  signal c_43_39_1_False_shift: signed(27 downto 0);
  signal c_43_33_0_False_resize: signed(27 downto 0);
  signal c_43_33_0_False_shift: signed(27 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(28 downto 0);
  signal c_44_i0_resize: signed(28 downto 0);
  signal c_44_i1_resize: signed(28 downto 0);
  signal c_44_i0_shift: signed(28 downto 0);
  signal c_44_i1_shift: signed(28 downto 0);
  signal c_44_arith: signed(28 downto 0);
  signal c_44_oshift: signed(28 downto 0);
  signal c_44_sub_sel: std_logic;
  signal c_45: signed(19 downto 0);
  signal c_45_35_3_False_resize: signed(19 downto 0);
  signal c_45_35_3_False_shift: signed(19 downto 0);
  signal c_45_33_0_False_resize: signed(19 downto 0);
  signal c_45_33_0_False_shift: signed(19 downto 0);
  signal c_45_35_2_False_resize: signed(19 downto 0);
  signal c_45_35_2_False_shift: signed(19 downto 0);
  signal c_45_41_0_False_resize: signed(19 downto 0);
  signal c_45_41_0_False_shift: signed(19 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(15 downto 0);
  signal c_47: signed(15 downto 0);
  signal c_48: signed(26 downto 0);
  signal c_49: signed(26 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_52: signed(28 downto 0);
  signal c_52_44_0_False_resize: signed(28 downto 0);
  signal c_52_44_0_False_shift: signed(28 downto 0);
  signal c_52_51_0_False_resize: signed(28 downto 0);
  signal c_52_51_0_False_shift: signed(28 downto 0);
  signal c_52_49_0_False_resize: signed(28 downto 0);
  signal c_52_49_0_False_shift: signed(28 downto 0);
  signal c_52_47_3_False_resize: signed(28 downto 0);
  signal c_52_47_3_False_shift: signed(28 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(19 downto 0);
  signal c_54: signed(19 downto 0);
  signal c_55: signed(28 downto 0);
  signal c_55_i0_resize: signed(28 downto 0);
  signal c_55_i1_resize: signed(28 downto 0);
  signal c_55_i0_shift: signed(28 downto 0);
  signal c_55_i1_shift: signed(28 downto 0);
  signal c_55_arith: signed(28 downto 0);
  signal c_55_oshift: signed(28 downto 0);
  signal c_55_sub_sel: std_logic;
  signal c_56: signed(29 downto 0);
  signal c_57: signed(29 downto 0);
  signal c_58: signed(28 downto 0);
  signal c_58_47_9_False_resize: signed(28 downto 0);
  signal c_58_47_9_False_shift: signed(28 downto 0);
  signal c_58_57_0_False_resize: signed(28 downto 0);
  signal c_58_57_0_False_shift: signed(28 downto 0);
  signal c_58_44_0_False_resize: signed(28 downto 0);
  signal c_58_44_0_False_shift: signed(28 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(21 downto 0);
  signal c_60: signed(21 downto 0);
  signal c_61: signed(21 downto 0);
  signal c_62: signed(21 downto 0);
  signal c_63: signed(28 downto 0);
  signal c_63_57_0_False_resize: signed(28 downto 0);
  signal c_63_57_0_False_shift: signed(28 downto 0);
  signal c_63_47_8_False_resize: signed(28 downto 0);
  signal c_63_47_8_False_shift: signed(28 downto 0);
  signal c_63_62_5_False_resize: signed(28 downto 0);
  signal c_63_62_5_False_shift: signed(28 downto 0);
  signal c_63_44_0_False_resize: signed(28 downto 0);
  signal c_63_44_0_False_shift: signed(28 downto 0);
  signal c_63_sel: std_logic_vector(1 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_i0_resize: signed(25 downto 0);
  signal c_64_i1_resize: signed(25 downto 0);
  signal c_64_i0_shift: signed(25 downto 0);
  signal c_64_i1_shift: signed(25 downto 0);
  signal c_64_arith: signed(25 downto 0);
  signal c_64_oshift: signed(25 downto 0);
  signal c_64_sub_sel: std_logic;
  signal c_65: signed(24 downto 0);
  signal c_65_0_9_False_resize: signed(24 downto 0);
  signal c_65_0_9_False_shift: signed(24 downto 0);
  signal c_65_0_1_False_resize: signed(24 downto 0);
  signal c_65_0_1_False_shift: signed(24 downto 0);
  signal c_65_0_0_False_resize: signed(24 downto 0);
  signal c_65_0_0_False_shift: signed(24 downto 0);
  signal c_65_0_6_False_resize: signed(24 downto 0);
  signal c_65_0_6_False_shift: signed(24 downto 0);
  signal c_65_sel: std_logic_vector(1 downto 0);
  signal c_66: signed(21 downto 0);
  signal c_66_18_2_False_resize: signed(21 downto 0);
  signal c_66_18_2_False_shift: signed(21 downto 0);
  signal c_66_18_4_False_resize: signed(21 downto 0);
  signal c_66_18_4_False_shift: signed(21 downto 0);
  signal c_66_18_6_False_resize: signed(21 downto 0);
  signal c_66_18_6_False_shift: signed(21 downto 0);
  signal c_66_15_0_False_resize: signed(21 downto 0);
  signal c_66_15_0_False_shift: signed(21 downto 0);
  signal c_66_sel: std_logic_vector(1 downto 0);
  signal c_67: signed(24 downto 0);
  signal c_68: signed(24 downto 0);
  signal c_69: signed(24 downto 0);
  signal c_70: signed(24 downto 0);
  signal c_71: signed(24 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_i0_resize: signed(25 downto 0);
  signal c_73_i1_resize: signed(25 downto 0);
  signal c_73_i0_shift: signed(25 downto 0);
  signal c_73_i1_shift: signed(25 downto 0);
  signal c_73_arith: signed(25 downto 0);
  signal c_73_oshift: signed(25 downto 0);
  signal c_74: signed(15 downto 0);
  signal c_75: signed(15 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_80_64_0_False_resize: signed(23 downto 0);
  signal c_80_64_0_False_shift: signed(23 downto 0);
  signal c_80_75_8_False_resize: signed(23 downto 0);
  signal c_80_75_8_False_shift: signed(23 downto 0);
  signal c_80_75_3_False_resize: signed(23 downto 0);
  signal c_80_75_3_False_shift: signed(23 downto 0);
  signal c_80_79_0_False_resize: signed(23 downto 0);
  signal c_80_79_0_False_shift: signed(23 downto 0);
  signal c_80_sel: std_logic_vector(1 downto 0);
  signal c_81: signed(22 downto 0);
  signal c_81_33_0_False_resize: signed(22 downto 0);
  signal c_81_33_0_False_shift: signed(22 downto 0);
  signal c_81_35_0_False_resize: signed(22 downto 0);
  signal c_81_35_0_False_shift: signed(22 downto 0);
  signal c_81_35_7_False_resize: signed(22 downto 0);
  signal c_81_35_7_False_shift: signed(22 downto 0);
  signal c_81_sel: std_logic_vector(1 downto 0);
  signal c_82: signed(22 downto 0);
  signal c_83: signed(22 downto 0);
  signal c_84: signed(22 downto 0);
  signal c_85: signed(22 downto 0);
  signal c_86: signed(26 downto 0);
  signal c_86_i0_resize: signed(26 downto 0);
  signal c_86_i1_resize: signed(26 downto 0);
  signal c_86_i0_shift: signed(26 downto 0);
  signal c_86_i1_shift: signed(26 downto 0);
  signal c_86_arith: signed(26 downto 0);
  signal c_86_oshift: signed(26 downto 0);
  signal c_86_sub_sel: std_logic;
  signal c_87: signed(29 downto 0);
  signal c_87_15_8_False_resize: signed(29 downto 0);
  signal c_87_15_8_False_shift: signed(29 downto 0);
  signal c_87_37_0_False_resize: signed(29 downto 0);
  signal c_87_37_0_False_shift: signed(29 downto 0);
  signal c_87_18_2_False_resize: signed(29 downto 0);
  signal c_87_18_2_False_shift: signed(29 downto 0);
  signal c_87_sel: std_logic_vector(1 downto 0);
  signal c_88: signed(28 downto 0);
  signal c_88_5_10_False_resize: signed(28 downto 0);
  signal c_88_5_10_False_shift: signed(28 downto 0);
  signal c_88_5_12_False_resize: signed(28 downto 0);
  signal c_88_5_12_False_shift: signed(28 downto 0);
  signal c_88_5_0_False_resize: signed(28 downto 0);
  signal c_88_5_0_False_shift: signed(28 downto 0);
  signal c_88_3_2_False_resize: signed(28 downto 0);
  signal c_88_3_2_False_shift: signed(28 downto 0);
  signal c_88_sel: std_logic_vector(1 downto 0);
  signal c_89: signed(28 downto 0);
  signal c_90: signed(28 downto 0);
  signal c_91: signed(28 downto 0);
  signal c_92: signed(28 downto 0);
  signal c_93: signed(28 downto 0);
  signal c_93_i0_resize: signed(28 downto 0);
  signal c_93_i1_resize: signed(28 downto 0);
  signal c_93_i0_shift: signed(28 downto 0);
  signal c_93_i1_shift: signed(28 downto 0);
  signal c_93_arith: signed(28 downto 0);
  signal c_93_oshift: signed(28 downto 0);
  signal c_93_sub_sel: std_logic;
  signal c_94: signed(25 downto 0);
  signal c_94_5_7_False_resize: signed(25 downto 0);
  signal c_94_5_7_False_shift: signed(25 downto 0);
  signal c_94_3_1_False_resize: signed(25 downto 0);
  signal c_94_3_1_False_shift: signed(25 downto 0);
  signal c_94_5_10_False_resize: signed(25 downto 0);
  signal c_94_5_10_False_shift: signed(25 downto 0);
  signal c_94_5_0_False_resize: signed(25 downto 0);
  signal c_94_5_0_False_shift: signed(25 downto 0);
  signal c_94_sel: std_logic_vector(1 downto 0);
  signal c_95: signed(28 downto 0);
  signal c_95_44_0_False_resize: signed(28 downto 0);
  signal c_95_44_0_False_shift: signed(28 downto 0);
  signal c_95_77_0_False_resize: signed(28 downto 0);
  signal c_95_77_0_False_shift: signed(28 downto 0);
  signal c_95_47_3_False_resize: signed(28 downto 0);
  signal c_95_47_3_False_shift: signed(28 downto 0);
  signal c_95_47_1_False_resize: signed(28 downto 0);
  signal c_95_47_1_False_shift: signed(28 downto 0);
  signal c_95_sel: std_logic_vector(1 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_100: signed(25 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_104: signed(29 downto 0);
  signal c_104_i0_resize: signed(29 downto 0);
  signal c_104_i1_resize: signed(29 downto 0);
  signal c_104_i0_shift: signed(29 downto 0);
  signal c_104_i1_shift: signed(29 downto 0);
  signal c_104_arith: signed(29 downto 0);
  signal c_104_oshift: signed(29 downto 0);
  signal c_104_sub_sel: std_logic;
  signal c_105: signed(26 downto 0);
  signal c_106: signed(26 downto 0);
  signal c_107: signed(26 downto 0);
  signal c_108: signed(26 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_113: signed(28 downto 0);
  signal c_114: signed(28 downto 0);
  signal c_115: signed(28 downto 0);
  signal c_116: signed(28 downto 0);
  signal c_117: signed(26 downto 0);
  signal c_117_116_0_False_resize: signed(26 downto 0);
  signal c_117_116_0_False_shift: signed(26 downto 0);
  signal c_117_86_0_False_resize: signed(26 downto 0);
  signal c_117_86_0_False_shift: signed(26 downto 0);
  signal c_117_108_0_False_resize: signed(26 downto 0);
  signal c_117_108_0_False_shift: signed(26 downto 0);
  signal c_117_112_0_False_resize: signed(26 downto 0);
  signal c_117_112_0_False_shift: signed(26 downto 0);
  signal c_117_sel: std_logic_vector(1 downto 0);
  signal c_118: signed(29 downto 0);
  signal c_119: signed(29 downto 0);
  signal c_120: signed(29 downto 0);
  signal c_121: signed(29 downto 0);
  signal c_122: signed(25 downto 0);
  signal c_122_121_0_False_resize: signed(25 downto 0);
  signal c_122_121_0_False_shift: signed(25 downto 0);
  signal c_122_86_0_False_resize: signed(25 downto 0);
  signal c_122_86_0_False_shift: signed(25 downto 0);
  signal c_122_108_0_False_resize: signed(25 downto 0);
  signal c_122_108_0_False_shift: signed(25 downto 0);
  signal c_122_sel: std_logic_vector(1 downto 0);
  signal c_123: signed(23 downto 0);
  signal c_123_i0_resize: signed(26 downto 0);
  signal c_123_i1_resize: signed(26 downto 0);
  signal c_123_i0_shift: signed(26 downto 0);
  signal c_123_i1_shift: signed(26 downto 0);
  signal c_123_arith: signed(26 downto 0);
  signal c_123_oshift: signed(23 downto 0);
  signal c_124: signed(15 downto 0);
  signal c_125: signed(15 downto 0);
  signal c_126: signed(15 downto 0);
  signal c_127: signed(15 downto 0);
  signal c_128: signed(24 downto 0);
  signal c_128_127_4_False_resize: signed(24 downto 0);
  signal c_128_127_4_False_shift: signed(24 downto 0);
  signal c_128_127_0_False_resize: signed(24 downto 0);
  signal c_128_127_0_False_shift: signed(24 downto 0);
  signal c_128_123_1_False_resize: signed(24 downto 0);
  signal c_128_123_1_False_shift: signed(24 downto 0);
  signal c_128_123_0_False_resize: signed(24 downto 0);
  signal c_128_123_0_False_shift: signed(24 downto 0);
  signal c_128_sel: std_logic_vector(1 downto 0);
  signal c_129: signed(26 downto 0);
  signal c_129_104_0_False_resize: signed(26 downto 0);
  signal c_129_104_0_False_shift: signed(26 downto 0);
  signal c_129_75_11_False_resize: signed(26 downto 0);
  signal c_129_75_11_False_shift: signed(26 downto 0);
  signal c_129_75_1_False_resize: signed(26 downto 0);
  signal c_129_75_1_False_shift: signed(26 downto 0);
  signal c_129_75_0_False_resize: signed(26 downto 0);
  signal c_129_75_0_False_shift: signed(26 downto 0);
  signal c_129_sel: std_logic_vector(1 downto 0);
  signal c_130: signed(26 downto 0);
  signal c_131: signed(26 downto 0);
  signal c_132: signed(26 downto 0);
  signal c_133: signed(26 downto 0);
  signal c_134: signed(27 downto 0);
  signal c_134_i0_resize: signed(27 downto 0);
  signal c_134_i1_resize: signed(27 downto 0);
  signal c_134_i0_shift: signed(27 downto 0);
  signal c_134_i1_shift: signed(27 downto 0);
  signal c_134_arith: signed(27 downto 0);
  signal c_134_oshift: signed(27 downto 0);
  signal c_135: signed(21 downto 0);
  signal c_135_5_4_False_resize: signed(21 downto 0);
  signal c_135_5_4_False_shift: signed(21 downto 0);
  signal c_135_5_6_False_resize: signed(21 downto 0);
  signal c_135_5_6_False_shift: signed(21 downto 0);
  signal c_135_3_0_False_resize: signed(21 downto 0);
  signal c_135_3_0_False_shift: signed(21 downto 0);
  signal c_135_sel: std_logic_vector(1 downto 0);
  signal c_136: signed(23 downto 0);
  signal c_137: signed(23 downto 0);
  signal c_138: signed(26 downto 0);
  signal c_138_123_5_False_resize: signed(26 downto 0);
  signal c_138_123_5_False_shift: signed(26 downto 0);
  signal c_138_137_0_False_resize: signed(26 downto 0);
  signal c_138_137_0_False_shift: signed(26 downto 0);
  signal c_138_127_4_False_resize: signed(26 downto 0);
  signal c_138_127_4_False_shift: signed(26 downto 0);
  signal c_138_127_1_False_resize: signed(26 downto 0);
  signal c_138_127_1_False_shift: signed(26 downto 0);
  signal c_138_sel: std_logic_vector(1 downto 0);
  signal c_139: signed(21 downto 0);
  signal c_140: signed(21 downto 0);
  signal c_141: signed(21 downto 0);
  signal c_142: signed(21 downto 0);
  signal c_143: signed(21 downto 0);
  signal c_144: signed(21 downto 0);
  signal c_145: signed(21 downto 0);
  signal c_146: signed(21 downto 0);
  signal c_147: signed(21 downto 0);
  signal c_148: signed(21 downto 0);
  signal c_149: signed(21 downto 0);
  signal c_150: signed(21 downto 0);
  signal c_151: signed(21 downto 0);
  signal c_152: signed(21 downto 0);
  signal c_153: signed(29 downto 0);
  signal c_153_i0_resize: signed(29 downto 0);
  signal c_153_i1_resize: signed(29 downto 0);
  signal c_153_i0_shift: signed(29 downto 0);
  signal c_153_i1_shift: signed(29 downto 0);
  signal c_153_arith: signed(29 downto 0);
  signal c_153_oshift: signed(29 downto 0);
  signal c_154: signed(28 downto 0);
  signal c_154_79_0_False_resize: signed(28 downto 0);
  signal c_154_79_0_False_shift: signed(28 downto 0);
  signal c_154_75_13_False_resize: signed(28 downto 0);
  signal c_154_75_13_False_shift: signed(28 downto 0);
  signal c_154_75_0_False_resize: signed(28 downto 0);
  signal c_154_75_0_False_shift: signed(28 downto 0);
  signal c_154_104_0_False_resize: signed(28 downto 0);
  signal c_154_104_0_False_shift: signed(28 downto 0);
  signal c_154_sel: std_logic_vector(1 downto 0);
  signal c_155: signed(15 downto 0);
  signal c_156: signed(15 downto 0);
  signal c_157: signed(23 downto 0);
  signal c_158: signed(23 downto 0);
  signal c_159: signed(28 downto 0);
  signal c_159_156_13_False_resize: signed(28 downto 0);
  signal c_159_156_13_False_shift: signed(28 downto 0);
  signal c_159_134_0_False_resize: signed(28 downto 0);
  signal c_159_134_0_False_shift: signed(28 downto 0);
  signal c_159_158_0_False_resize: signed(28 downto 0);
  signal c_159_158_0_False_shift: signed(28 downto 0);
  signal c_159_156_0_False_resize: signed(28 downto 0);
  signal c_159_156_0_False_shift: signed(28 downto 0);
  signal c_159_sel: std_logic_vector(1 downto 0);
  signal c_160: signed(28 downto 0);
  signal c_161: signed(28 downto 0);
  signal c_162: signed(28 downto 0);
  signal c_163: signed(28 downto 0);
  signal c_164: signed(28 downto 0);
  signal c_165: signed(28 downto 0);
  signal c_166: signed(24 downto 0);
  signal c_166_i0_resize: signed(24 downto 0);
  signal c_166_i1_resize: signed(24 downto 0);
  signal c_166_i0_shift: signed(24 downto 0);
  signal c_166_i1_shift: signed(24 downto 0);
  signal c_166_arith: signed(24 downto 0);
  signal c_166_oshift: signed(24 downto 0);
  signal c_166_sub_sel: std_logic;
  signal c_167: signed(25 downto 0);
  signal c_168: signed(25 downto 0);
  signal c_169: signed(25 downto 0);
  signal c_170: signed(25 downto 0);
  signal c_171: signed(25 downto 0);
  signal c_172: signed(25 downto 0);
  signal c_173: signed(27 downto 0);
  signal c_173_156_8_False_resize: signed(27 downto 0);
  signal c_173_156_8_False_shift: signed(27 downto 0);
  signal c_173_134_7_False_resize: signed(27 downto 0);
  signal c_173_134_7_False_shift: signed(27 downto 0);
  signal c_173_156_3_False_resize: signed(27 downto 0);
  signal c_173_156_3_False_shift: signed(27 downto 0);
  signal c_173_172_0_False_resize: signed(27 downto 0);
  signal c_173_172_0_False_shift: signed(27 downto 0);
  signal c_173_sel: std_logic_vector(1 downto 0);
  signal c_174: signed(26 downto 0);
  signal c_174_79_1_False_resize: signed(26 downto 0);
  signal c_174_79_1_False_shift: signed(26 downto 0);
  signal c_174_64_1_False_resize: signed(26 downto 0);
  signal c_174_64_1_False_shift: signed(26 downto 0);
  signal c_174_75_8_False_resize: signed(26 downto 0);
  signal c_174_75_8_False_shift: signed(26 downto 0);
  signal c_174_75_0_False_resize: signed(26 downto 0);
  signal c_174_75_0_False_shift: signed(26 downto 0);
  signal c_174_sel: std_logic_vector(1 downto 0);
  signal c_175: signed(26 downto 0);
  signal c_176: signed(26 downto 0);
  signal c_177: signed(26 downto 0);
  signal c_178: signed(26 downto 0);
  signal c_179: signed(26 downto 0);
  signal c_180: signed(26 downto 0);
  signal c_181: signed(27 downto 0);
  signal c_181_i0_resize: signed(27 downto 0);
  signal c_181_i1_resize: signed(27 downto 0);
  signal c_181_i0_shift: signed(27 downto 0);
  signal c_181_i1_shift: signed(27 downto 0);
  signal c_181_arith: signed(27 downto 0);
  signal c_181_oshift: signed(27 downto 0);
  signal c_181_sub_sel: std_logic;
  signal c_182: signed(15 downto 0);
  signal c_183: signed(15 downto 0);
  signal c_184: signed(17 downto 0);
  signal c_184_183_0_False_resize: signed(17 downto 0);
  signal c_184_183_0_False_shift: signed(17 downto 0);
  signal c_184_183_2_False_resize: signed(17 downto 0);
  signal c_184_183_2_False_shift: signed(17 downto 0);
  signal c_184_166_0_False_resize: signed(17 downto 0);
  signal c_184_166_0_False_shift: signed(17 downto 0);
  signal c_184_sel: std_logic_vector(1 downto 0);
  signal c_185: signed(26 downto 0);
  signal c_186: signed(26 downto 0);
  signal c_187: signed(26 downto 0);
  signal c_188: signed(26 downto 0);
  signal c_189: signed(26 downto 0);
  signal c_190: signed(26 downto 0);
  signal c_191: signed(26 downto 0);
  signal c_192: signed(26 downto 0);
  signal c_193: signed(26 downto 0);
  signal c_194: signed(26 downto 0);
  signal c_195: signed(26 downto 0);
  signal c_196: signed(26 downto 0);
  signal c_197: signed(28 downto 0);
  signal c_198: signed(28 downto 0);
  signal c_199: signed(28 downto 0);
  signal c_200: signed(28 downto 0);
  signal c_201: signed(28 downto 0);
  signal c_202: signed(28 downto 0);
  signal c_203: signed(28 downto 0);
  signal c_204: signed(28 downto 0);
  signal c_205: signed(27 downto 0);
  signal c_206: signed(27 downto 0);
  signal c_207: signed(24 downto 0);
  signal c_207_206_0_False_resize: signed(24 downto 0);
  signal c_207_206_0_False_shift: signed(24 downto 0);
  signal c_207_166_0_False_resize: signed(24 downto 0);
  signal c_207_166_0_False_shift: signed(24 downto 0);
  signal c_207_196_0_False_resize: signed(24 downto 0);
  signal c_207_196_0_False_shift: signed(24 downto 0);
  signal c_207_204_3_False_resize: signed(24 downto 0);
  signal c_207_204_3_False_shift: signed(24 downto 0);
  signal c_207_sel: std_logic_vector(1 downto 0);
  signal c_208: signed(24 downto 0);
  signal c_208_i0_resize: signed(24 downto 0);
  signal c_208_i1_resize: signed(24 downto 0);
  signal c_208_i0_shift: signed(24 downto 0);
  signal c_208_i1_shift: signed(24 downto 0);
  signal c_208_arith: signed(24 downto 0);
  signal c_208_oshift: signed(24 downto 0);
  signal c_209: signed(29 downto 0);
  signal c_210: signed(29 downto 0);
  signal c_211: signed(29 downto 0);
  signal c_212: signed(29 downto 0);
  signal c_213: signed(29 downto 0);
  signal c_214: signed(29 downto 0);
  signal c_215: signed(29 downto 0);
  signal c_216: signed(29 downto 0);
  signal c_217: signed(25 downto 0);
  signal c_218: signed(25 downto 0);
  signal c_219: signed(25 downto 0);
  signal c_220: signed(25 downto 0);
  signal c_221: signed(24 downto 0);
  signal c_222: signed(24 downto 0);
  signal c_223: signed(29 downto 0);
  signal c_223_220_0_False_resize: signed(29 downto 0);
  signal c_223_220_0_False_shift: signed(29 downto 0);
  signal c_223_222_1_False_resize: signed(29 downto 0);
  signal c_223_222_1_False_shift: signed(29 downto 0);
  signal c_223_208_5_False_resize: signed(29 downto 0);
  signal c_223_208_5_False_shift: signed(29 downto 0);
  signal c_223_216_0_False_resize: signed(29 downto 0);
  signal c_223_216_0_False_shift: signed(29 downto 0);
  signal c_223_sel: std_logic_vector(1 downto 0);
  signal c_224: signed(28 downto 0);
  signal c_225: signed(28 downto 0);
  signal c_226: signed(28 downto 0);
  signal c_227: signed(28 downto 0);
  signal c_228: signed(28 downto 0);
  signal c_229: signed(28 downto 0);
  signal c_230: signed(28 downto 0);
  signal c_231: signed(28 downto 0);
  signal c_232: signed(28 downto 0);
  signal c_233: signed(28 downto 0);
  signal c_234: signed(28 downto 0);
  signal c_235: signed(28 downto 0);
  signal c_236: signed(28 downto 0);
  signal c_236_166_1_False_resize: signed(28 downto 0);
  signal c_236_166_1_False_shift: signed(28 downto 0);
  signal c_236_183_3_False_resize: signed(28 downto 0);
  signal c_236_183_3_False_shift: signed(28 downto 0);
  signal c_236_235_2_False_resize: signed(28 downto 0);
  signal c_236_235_2_False_shift: signed(28 downto 0);
  signal c_236_204_0_False_resize: signed(28 downto 0);
  signal c_236_204_0_False_shift: signed(28 downto 0);
  signal c_236_sel: std_logic_vector(1 downto 0);
  signal c_237: signed(28 downto 0);
  signal c_238: signed(28 downto 0);
  signal c_239: signed(27 downto 0);
  signal c_239_i0_resize: signed(27 downto 0);
  signal c_239_i1_resize: signed(27 downto 0);
  signal c_239_i0_shift: signed(27 downto 0);
  signal c_239_i1_shift: signed(27 downto 0);
  signal c_239_arith: signed(27 downto 0);
  signal c_239_oshift: signed(27 downto 0);
  signal c_239_sub_sel: std_logic;
  signal c_240: signed(27 downto 0);
  signal c_240_166_0_False_resize: signed(27 downto 0);
  signal c_240_166_0_False_shift: signed(27 downto 0);
  signal c_240_183_2_False_resize: signed(27 downto 0);
  signal c_240_183_2_False_shift: signed(27 downto 0);
  signal c_240_166_6_False_resize: signed(27 downto 0);
  signal c_240_166_6_False_shift: signed(27 downto 0);
  signal c_240_214_0_False_resize: signed(27 downto 0);
  signal c_240_214_0_False_shift: signed(27 downto 0);
  signal c_240_sel: std_logic_vector(1 downto 0);
  signal c_241: signed(29 downto 0);
  signal c_242: signed(29 downto 0);
  signal c_243: signed(29 downto 0);
  signal c_244: signed(29 downto 0);
  signal c_245: signed(29 downto 0);
  signal c_246: signed(29 downto 0);
  signal c_247: signed(25 downto 0);
  signal c_247_158_4_False_resize: signed(25 downto 0);
  signal c_247_158_4_False_shift: signed(25 downto 0);
  signal c_247_156_1_False_resize: signed(25 downto 0);
  signal c_247_156_1_False_shift: signed(25 downto 0);
  signal c_247_246_1_False_resize: signed(25 downto 0);
  signal c_247_246_1_False_shift: signed(25 downto 0);
  signal c_247_134_0_False_resize: signed(25 downto 0);
  signal c_247_134_0_False_shift: signed(25 downto 0);
  signal c_247_sel: std_logic_vector(1 downto 0);
  signal c_248: signed(25 downto 0);
  signal c_249: signed(25 downto 0);
  signal c_250: signed(28 downto 0);
  signal c_250_i0_resize: signed(28 downto 0);
  signal c_250_i1_resize: signed(28 downto 0);
  signal c_250_i0_shift: signed(28 downto 0);
  signal c_250_i1_shift: signed(28 downto 0);
  signal c_250_arith: signed(28 downto 0);
  signal c_250_oshift: signed(28 downto 0);
  signal c_250_sub_sel: std_logic;
  signal c_251: signed(28 downto 0);
  signal c_251_181_0_False_resize: signed(28 downto 0);
  signal c_251_181_0_False_shift: signed(28 downto 0);
  signal c_251_183_6_False_resize: signed(28 downto 0);
  signal c_251_183_6_False_shift: signed(28 downto 0);
  signal c_251_218_1_False_resize: signed(28 downto 0);
  signal c_251_218_1_False_shift: signed(28 downto 0);
  signal c_251_204_0_False_resize: signed(28 downto 0);
  signal c_251_204_0_False_shift: signed(28 downto 0);
  signal c_251_sel: std_logic_vector(1 downto 0);
  signal c_252: signed(15 downto 0);
  signal c_253: signed(15 downto 0);
  signal c_254: signed(28 downto 0);
  signal c_255: signed(28 downto 0);
  signal c_256: signed(29 downto 0);
  signal c_257: signed(29 downto 0);
  signal c_258: signed(29 downto 0);
  signal c_259: signed(29 downto 0);
  signal c_260: signed(29 downto 0);
  signal c_260_255_0_False_resize: signed(29 downto 0);
  signal c_260_255_0_False_shift: signed(29 downto 0);
  signal c_260_253_4_False_resize: signed(29 downto 0);
  signal c_260_253_4_False_shift: signed(29 downto 0);
  signal c_260_259_0_False_resize: signed(29 downto 0);
  signal c_260_259_0_False_shift: signed(29 downto 0);
  signal c_260_208_7_False_resize: signed(29 downto 0);
  signal c_260_208_7_False_shift: signed(29 downto 0);
  signal c_260_sel: std_logic_vector(1 downto 0);
  signal c_261: signed(28 downto 0);
  signal c_262: signed(28 downto 0);
  signal c_263: signed(27 downto 0);
  signal c_263_i0_resize: signed(27 downto 0);
  signal c_263_i1_resize: signed(27 downto 0);
  signal c_263_i0_shift: signed(27 downto 0);
  signal c_263_i1_shift: signed(27 downto 0);
  signal c_263_arith: signed(27 downto 0);
  signal c_263_oshift: signed(27 downto 0);
  signal c_263_sub_sel: std_logic;
  signal c_264: signed(27 downto 0);
  signal c_264_39_1_False_resize: signed(27 downto 0);
  signal c_264_39_1_False_shift: signed(27 downto 0);
  signal c_264_33_0_False_resize: signed(27 downto 0);
  signal c_264_33_0_False_shift: signed(27 downto 0);
  signal c_264_35_0_False_resize: signed(27 downto 0);
  signal c_264_35_0_False_shift: signed(27 downto 0);
  signal c_264_35_8_False_resize: signed(27 downto 0);
  signal c_264_35_8_False_shift: signed(27 downto 0);
  signal c_264_sel: std_logic_vector(1 downto 0);
  signal c_265: signed(21 downto 0);
  signal c_266: signed(21 downto 0);
  signal c_267: signed(21 downto 0);
  signal c_268: signed(21 downto 0);
  signal c_269: signed(21 downto 0);
  signal c_270: signed(21 downto 0);
  signal c_271: signed(25 downto 0);
  signal c_272: signed(25 downto 0);
  signal c_273: signed(25 downto 0);
  signal c_274: signed(25 downto 0);
  signal c_275: signed(29 downto 0);
  signal c_275_123_0_False_resize: signed(29 downto 0);
  signal c_275_123_0_False_shift: signed(29 downto 0);
  signal c_275_127_0_False_resize: signed(29 downto 0);
  signal c_275_127_0_False_shift: signed(29 downto 0);
  signal c_275_274_0_False_resize: signed(29 downto 0);
  signal c_275_274_0_False_shift: signed(29 downto 0);
  signal c_275_270_11_False_resize: signed(29 downto 0);
  signal c_275_270_11_False_shift: signed(29 downto 0);
  signal c_275_sel: std_logic_vector(1 downto 0);
  signal c_276: signed(27 downto 0);
  signal c_277: signed(27 downto 0);
  signal c_278: signed(27 downto 0);
  signal c_279: signed(27 downto 0);
  signal c_280: signed(27 downto 0);
  signal c_281: signed(27 downto 0);
  signal c_282: signed(27 downto 0);
  signal c_283: signed(27 downto 0);
  signal c_284: signed(29 downto 0);
  signal c_284_i0_resize: signed(29 downto 0);
  signal c_284_i1_resize: signed(29 downto 0);
  signal c_284_i0_shift: signed(29 downto 0);
  signal c_284_i1_shift: signed(29 downto 0);
  signal c_284_arith: signed(29 downto 0);
  signal c_284_oshift: signed(29 downto 0);
  signal c_284_sub_sel: std_logic;
  signal c_285: signed(29 downto 0);
  signal c_285_75_0_False_resize: signed(29 downto 0);
  signal c_285_75_0_False_shift: signed(29 downto 0);
  signal c_285_114_1_False_resize: signed(29 downto 0);
  signal c_285_114_1_False_shift: signed(29 downto 0);
  signal c_285_64_0_False_resize: signed(29 downto 0);
  signal c_285_64_0_False_shift: signed(29 downto 0);
  signal c_285_sel: std_logic_vector(1 downto 0);
  signal c_286: signed(25 downto 0);
  signal c_287: signed(25 downto 0);
  signal c_288: signed(25 downto 0);
  signal c_289: signed(25 downto 0);
  signal c_290: signed(28 downto 0);
  signal c_290_183_13_False_resize: signed(28 downto 0);
  signal c_290_183_13_False_shift: signed(28 downto 0);
  signal c_290_166_7_False_resize: signed(28 downto 0);
  signal c_290_166_7_False_shift: signed(28 downto 0);
  signal c_290_183_2_False_resize: signed(28 downto 0);
  signal c_290_183_2_False_shift: signed(28 downto 0);
  signal c_290_289_0_False_resize: signed(28 downto 0);
  signal c_290_289_0_False_shift: signed(28 downto 0);
  signal c_290_sel: std_logic_vector(1 downto 0);
  signal c_291: signed(29 downto 0);
  signal c_292: signed(29 downto 0);
  signal c_293: signed(29 downto 0);
  signal c_294: signed(29 downto 0);
  signal c_295: signed(29 downto 0);
  signal c_296: signed(29 downto 0);
  signal c_297: signed(29 downto 0);
  signal c_298: signed(29 downto 0);
  signal c_299: signed(29 downto 0);
  signal c_299_i0_resize: signed(29 downto 0);
  signal c_299_i1_resize: signed(29 downto 0);
  signal c_299_i0_shift: signed(29 downto 0);
  signal c_299_i1_shift: signed(29 downto 0);
  signal c_299_arith: signed(29 downto 0);
  signal c_299_oshift: signed(29 downto 0);
  signal c_299_sub_sel: std_logic;
  signal c_300: signed(29 downto 0);
  signal c_301: signed(29 downto 0);
  signal c_302: signed(25 downto 0);
  signal c_303: signed(25 downto 0);
  signal c_304: signed(25 downto 0);
  signal c_305: signed(25 downto 0);
  signal c_306: signed(26 downto 0);
  signal c_307: signed(26 downto 0);
  signal c_308: signed(26 downto 0);
  signal c_309: signed(26 downto 0);
  signal c_310: signed(26 downto 0);
  signal c_311: signed(26 downto 0);
  signal c_312: signed(26 downto 0);
  signal c_313: signed(26 downto 0);
  signal c_314: signed(26 downto 0);
  signal c_315: signed(26 downto 0);
  signal c_316: signed(29 downto 0);
  signal c_316_315_3_False_resize: signed(29 downto 0);
  signal c_316_315_3_False_shift: signed(29 downto 0);
  signal c_316_301_0_False_resize: signed(29 downto 0);
  signal c_316_301_0_False_shift: signed(29 downto 0);
  signal c_316_263_0_False_resize: signed(29 downto 0);
  signal c_316_263_0_False_shift: signed(29 downto 0);
  signal c_316_305_0_False_resize: signed(29 downto 0);
  signal c_316_305_0_False_shift: signed(29 downto 0);
  signal c_316_sel: std_logic_vector(1 downto 0);
  signal c_317: signed(23 downto 0);
  signal c_317_253_1_False_resize: signed(23 downto 0);
  signal c_317_253_1_False_shift: signed(23 downto 0);
  signal c_317_253_0_False_resize: signed(23 downto 0);
  signal c_317_253_0_False_shift: signed(23 downto 0);
  signal c_317_299_0_False_resize: signed(23 downto 0);
  signal c_317_299_0_False_shift: signed(23 downto 0);
  signal c_317_253_8_False_resize: signed(23 downto 0);
  signal c_317_253_8_False_shift: signed(23 downto 0);
  signal c_317_sel: std_logic_vector(1 downto 0);
  signal c_318: signed(23 downto 0);
  signal c_319: signed(23 downto 0);
  signal c_320: signed(29 downto 0);
  signal c_320_i0_resize: signed(29 downto 0);
  signal c_320_i1_resize: signed(29 downto 0);
  signal c_320_i0_shift: signed(29 downto 0);
  signal c_320_i1_shift: signed(29 downto 0);
  signal c_320_arith: signed(29 downto 0);
  signal c_320_oshift: signed(29 downto 0);
  signal c_320_sub_sel: std_logic;
  signal c_321: signed(15 downto 0);
  signal c_322: signed(15 downto 0);
  signal c_323: signed(15 downto 0);
  signal c_324: signed(15 downto 0);
  signal c_325: signed(26 downto 0);
  signal c_326: signed(26 downto 0);
  signal c_327: signed(26 downto 0);
  signal c_328: signed(26 downto 0);
  signal c_329: signed(26 downto 0);
  signal c_330: signed(26 downto 0);
  signal c_331: signed(29 downto 0);
  signal c_332: signed(29 downto 0);
  signal c_333: signed(29 downto 0);
  signal c_334: signed(29 downto 0);
  signal c_335: signed(29 downto 0);
  signal c_335_334_0_False_resize: signed(29 downto 0);
  signal c_335_334_0_False_shift: signed(29 downto 0);
  signal c_335_320_0_False_resize: signed(29 downto 0);
  signal c_335_320_0_False_shift: signed(29 downto 0);
  signal c_335_324_0_False_resize: signed(29 downto 0);
  signal c_335_324_0_False_shift: signed(29 downto 0);
  signal c_335_330_0_False_resize: signed(29 downto 0);
  signal c_335_330_0_False_shift: signed(29 downto 0);
  signal c_335_sel: std_logic_vector(1 downto 0);
  signal c_336: signed(28 downto 0);
  signal c_337: signed(28 downto 0);
  signal c_338: signed(28 downto 0);
  signal c_339: signed(28 downto 0);
  signal c_340: signed(28 downto 0);
  signal c_341: signed(28 downto 0);
  signal c_342: signed(24 downto 0);
  signal c_343: signed(24 downto 0);
  signal c_344: signed(24 downto 0);
  signal c_345: signed(24 downto 0);
  signal c_346: signed(27 downto 0);
  signal c_347: signed(27 downto 0);
  signal c_348: signed(29 downto 0);
  signal c_348_345_0_False_resize: signed(29 downto 0);
  signal c_348_345_0_False_shift: signed(29 downto 0);
  signal c_348_341_0_False_resize: signed(29 downto 0);
  signal c_348_341_0_False_shift: signed(29 downto 0);
  signal c_348_320_0_False_resize: signed(29 downto 0);
  signal c_348_320_0_False_shift: signed(29 downto 0);
  signal c_348_347_0_False_resize: signed(29 downto 0);
  signal c_348_347_0_False_shift: signed(29 downto 0);
  signal c_348_sel: std_logic_vector(1 downto 0);
  signal c_349: signed(25 downto 0);
  signal c_349_i0_resize: signed(29 downto 0);
  signal c_349_i1_resize: signed(29 downto 0);
  signal c_349_i0_shift: signed(29 downto 0);
  signal c_349_i1_shift: signed(29 downto 0);
  signal c_349_arith: signed(29 downto 0);
  signal c_349_oshift: signed(25 downto 0);
  signal c_349_sub_sel: std_logic;
  signal c_350: signed(27 downto 0);
  signal c_351: signed(27 downto 0);
  signal c_352: signed(27 downto 0);
  signal c_352_255_0_False_resize: signed(27 downto 0);
  signal c_352_255_0_False_shift: signed(27 downto 0);
  signal c_352_250_1_False_resize: signed(27 downto 0);
  signal c_352_250_1_False_shift: signed(27 downto 0);
  signal c_352_351_7_False_resize: signed(27 downto 0);
  signal c_352_351_7_False_shift: signed(27 downto 0);
  signal c_352_222_2_False_resize: signed(27 downto 0);
  signal c_352_222_2_False_shift: signed(27 downto 0);
  signal c_352_sel: std_logic_vector(1 downto 0);
  signal c_353: signed(27 downto 0);
  signal c_353_309_2_False_resize: signed(27 downto 0);
  signal c_353_309_2_False_shift: signed(27 downto 0);
  signal c_353_134_0_False_resize: signed(27 downto 0);
  signal c_353_134_0_False_shift: signed(27 downto 0);
  signal c_353_172_2_False_resize: signed(27 downto 0);
  signal c_353_172_2_False_shift: signed(27 downto 0);
  signal c_353_156_9_False_resize: signed(27 downto 0);
  signal c_353_156_9_False_shift: signed(27 downto 0);
  signal c_353_sel: std_logic_vector(1 downto 0);
  signal c_354: signed(27 downto 0);
  signal c_355: signed(27 downto 0);
  signal c_356: signed(27 downto 0);
  signal c_357: signed(27 downto 0);
  signal c_358: signed(28 downto 0);
  signal c_358_i0_resize: signed(28 downto 0);
  signal c_358_i1_resize: signed(28 downto 0);
  signal c_358_i0_shift: signed(28 downto 0);
  signal c_358_i1_shift: signed(28 downto 0);
  signal c_358_arith: signed(28 downto 0);
  signal c_358_oshift: signed(28 downto 0);
  signal c_358_sub_sel: std_logic;
  signal c_359: signed(26 downto 0);
  signal c_360: signed(26 downto 0);
  signal c_361: signed(26 downto 0);
  signal c_362: signed(26 downto 0);
  signal c_363: signed(26 downto 0);
  signal c_364: signed(26 downto 0);
  signal c_365: signed(26 downto 0);
  signal c_366: signed(26 downto 0);
  signal c_367: signed(26 downto 0);
  signal c_368: signed(26 downto 0);
  signal c_369: signed(27 downto 0);
  signal c_370: signed(27 downto 0);
  signal c_371: signed(27 downto 0);
  signal c_372: signed(27 downto 0);
  signal c_373: signed(27 downto 0);
  signal c_374: signed(27 downto 0);
  signal c_375: signed(28 downto 0);
  signal c_375_374_5_False_resize: signed(28 downto 0);
  signal c_375_374_5_False_shift: signed(28 downto 0);
  signal c_375_358_3_False_resize: signed(28 downto 0);
  signal c_375_358_3_False_shift: signed(28 downto 0);
  signal c_375_372_0_False_resize: signed(28 downto 0);
  signal c_375_372_0_False_shift: signed(28 downto 0);
  signal c_375_368_8_False_resize: signed(28 downto 0);
  signal c_375_368_8_False_shift: signed(28 downto 0);
  signal c_375_sel: std_logic_vector(1 downto 0);
  signal c_376: signed(24 downto 0);
  signal c_377: signed(24 downto 0);
  signal c_378: signed(28 downto 0);
  signal c_379: signed(28 downto 0);
  signal c_380: signed(28 downto 0);
  signal c_380_377_0_False_resize: signed(28 downto 0);
  signal c_380_377_0_False_shift: signed(28 downto 0);
  signal c_380_239_4_False_resize: signed(28 downto 0);
  signal c_380_239_4_False_shift: signed(28 downto 0);
  signal c_380_358_0_False_resize: signed(28 downto 0);
  signal c_380_358_0_False_shift: signed(28 downto 0);
  signal c_380_379_0_False_resize: signed(28 downto 0);
  signal c_380_379_0_False_shift: signed(28 downto 0);
  signal c_380_sel: std_logic_vector(1 downto 0);
  signal c_381: signed(28 downto 0);
  signal c_381_i0_resize: signed(28 downto 0);
  signal c_381_i1_resize: signed(28 downto 0);
  signal c_381_i0_shift: signed(28 downto 0);
  signal c_381_i1_shift: signed(28 downto 0);
  signal c_381_arith: signed(28 downto 0);
  signal c_381_oshift: signed(28 downto 0);
  signal c_381_sub_sel: std_logic;
  signal c_382: signed(25 downto 0);
  signal c_382_204_6_False_resize: signed(25 downto 0);
  signal c_382_204_6_False_shift: signed(25 downto 0);
  signal c_382_235_6_False_resize: signed(25 downto 0);
  signal c_382_235_6_False_shift: signed(25 downto 0);
  signal c_382_166_0_False_resize: signed(25 downto 0);
  signal c_382_166_0_False_shift: signed(25 downto 0);
  signal c_382_183_0_False_resize: signed(25 downto 0);
  signal c_382_183_0_False_shift: signed(25 downto 0);
  signal c_382_sel: std_logic_vector(1 downto 0);
  signal c_383: signed(25 downto 0);
  signal c_384: signed(25 downto 0);
  signal c_385: signed(29 downto 0);
  signal c_386: signed(29 downto 0);
  signal c_387: signed(29 downto 0);
  signal c_388: signed(29 downto 0);
  signal c_389: signed(29 downto 0);
  signal c_390: signed(29 downto 0);
  signal c_391: signed(29 downto 0);
  signal c_391_384_4_False_resize: signed(29 downto 0);
  signal c_391_384_4_False_shift: signed(29 downto 0);
  signal c_391_239_0_False_resize: signed(29 downto 0);
  signal c_391_239_0_False_shift: signed(29 downto 0);
  signal c_391_343_0_False_resize: signed(29 downto 0);
  signal c_391_343_0_False_shift: signed(29 downto 0);
  signal c_391_390_0_False_resize: signed(29 downto 0);
  signal c_391_390_0_False_shift: signed(29 downto 0);
  signal c_391_sel: std_logic_vector(1 downto 0);
  signal c_392: signed(25 downto 0);
  signal c_393: signed(25 downto 0);
  signal c_394: signed(25 downto 0);
  signal c_395: signed(25 downto 0);
  signal c_396: signed(29 downto 0);
  signal c_396_i0_resize: signed(29 downto 0);
  signal c_396_i1_resize: signed(29 downto 0);
  signal c_396_i0_shift: signed(29 downto 0);
  signal c_396_i1_shift: signed(29 downto 0);
  signal c_396_arith: signed(29 downto 0);
  signal c_396_oshift: signed(29 downto 0);
  signal c_396_sub_sel: std_logic;
  signal c_397: signed(29 downto 0);
  signal c_398: signed(29 downto 0);
  signal c_399: signed(29 downto 0);
  signal c_400: signed(29 downto 0);
  signal c_401: signed(29 downto 0);
  signal c_402: signed(29 downto 0);
  signal c_403: signed(27 downto 0);
  signal c_403_239_0_False_resize: signed(27 downto 0);
  signal c_403_239_0_False_shift: signed(27 downto 0);
  signal c_403_322_0_False_resize: signed(27 downto 0);
  signal c_403_322_0_False_shift: signed(27 downto 0);
  signal c_403_368_0_False_resize: signed(27 downto 0);
  signal c_403_368_0_False_shift: signed(27 downto 0);
  signal c_403_402_0_False_resize: signed(27 downto 0);
  signal c_403_402_0_False_shift: signed(27 downto 0);
  signal c_403_sel: std_logic_vector(1 downto 0);
  signal c_404: signed(28 downto 0);
  signal c_405: signed(28 downto 0);
  signal c_406: signed(28 downto 0);
  signal c_407: signed(28 downto 0);
  signal c_408: signed(28 downto 0);
  signal c_409: signed(28 downto 0);
  signal c_410: signed(28 downto 0);
  signal c_411: signed(28 downto 0);
  signal c_412: signed(28 downto 0);
  signal c_413: signed(28 downto 0);
  signal c_414: signed(28 downto 0);
  signal c_415: signed(28 downto 0);
  signal c_416: signed(28 downto 0);
  signal c_417: signed(28 downto 0);
  signal c_418: signed(29 downto 0);
  signal c_419: signed(29 downto 0);
  signal c_420: signed(29 downto 0);
  signal c_421: signed(29 downto 0);
  signal c_422: signed(29 downto 0);
  signal c_422_421_0_False_resize: signed(29 downto 0);
  signal c_422_421_0_False_shift: signed(29 downto 0);
  signal c_422_349_0_False_resize: signed(29 downto 0);
  signal c_422_349_0_False_shift: signed(29 downto 0);
  signal c_422_419_0_False_resize: signed(29 downto 0);
  signal c_422_419_0_False_shift: signed(29 downto 0);
  signal c_422_417_0_False_resize: signed(29 downto 0);
  signal c_422_417_0_False_shift: signed(29 downto 0);
  signal c_422_sel: std_logic_vector(1 downto 0);
  signal c_423: signed(27 downto 0);
  signal c_424: signed(27 downto 0);
  signal c_425: signed(27 downto 0);
  signal c_426: signed(27 downto 0);
  signal c_427: signed(27 downto 0);
  signal c_427_i0_resize: signed(29 downto 0);
  signal c_427_i1_resize: signed(29 downto 0);
  signal c_427_i0_shift: signed(29 downto 0);
  signal c_427_i1_shift: signed(29 downto 0);
  signal c_427_arith: signed(29 downto 0);
  signal c_427_oshift: signed(27 downto 0);
  signal c_427_sub_sel: std_logic;
  signal c_428: signed(27 downto 0);
  signal c_429: signed(27 downto 0);
  signal c_430: signed(29 downto 0);
  signal c_431: signed(29 downto 0);
  signal c_432: signed(29 downto 0);
  signal c_432_431_0_False_resize: signed(29 downto 0);
  signal c_432_431_0_False_shift: signed(29 downto 0);
  signal c_432_429_1_False_resize: signed(29 downto 0);
  signal c_432_429_1_False_shift: signed(29 downto 0);
  signal c_432_381_1_False_resize: signed(29 downto 0);
  signal c_432_381_1_False_shift: signed(29 downto 0);
  signal c_432_324_8_False_resize: signed(29 downto 0);
  signal c_432_324_8_False_shift: signed(29 downto 0);
  signal c_432_sel: std_logic_vector(1 downto 0);
  signal c_433: signed(27 downto 0);
  signal c_433_431_0_False_resize: signed(27 downto 0);
  signal c_433_431_0_False_shift: signed(27 downto 0);
  signal c_433_324_0_False_resize: signed(27 downto 0);
  signal c_433_324_0_False_shift: signed(27 downto 0);
  signal c_433_396_1_False_resize: signed(27 downto 0);
  signal c_433_396_1_False_shift: signed(27 downto 0);
  signal c_433_381_3_False_resize: signed(27 downto 0);
  signal c_433_381_3_False_shift: signed(27 downto 0);
  signal c_433_sel: std_logic_vector(1 downto 0);
  signal c_434: signed(29 downto 0);
  signal c_434_i0_resize: signed(29 downto 0);
  signal c_434_i1_resize: signed(29 downto 0);
  signal c_434_i0_shift: signed(29 downto 0);
  signal c_434_i1_shift: signed(29 downto 0);
  signal c_434_arith: signed(29 downto 0);
  signal c_434_oshift: signed(29 downto 0);
  signal c_434_sub_sel: std_logic;
  signal c_435: signed(15 downto 0);
  signal c_436: signed(15 downto 0);
  signal c_437: signed(24 downto 0);
  signal c_438: signed(24 downto 0);
  signal c_439: signed(25 downto 0);
  signal c_439_436_0_False_resize: signed(25 downto 0);
  signal c_439_436_0_False_shift: signed(25 downto 0);
  signal c_439_438_4_False_resize: signed(25 downto 0);
  signal c_439_438_4_False_shift: signed(25 downto 0);
  signal c_439_434_0_False_resize: signed(25 downto 0);
  signal c_439_434_0_False_shift: signed(25 downto 0);
  signal c_439_436_1_False_resize: signed(25 downto 0);
  signal c_439_436_1_False_shift: signed(25 downto 0);
  signal c_439_sel: std_logic_vector(1 downto 0);
  signal c_440: signed(25 downto 0);
  signal c_441: signed(25 downto 0);
  signal c_442: signed(25 downto 0);
  signal c_443: signed(25 downto 0);
  signal c_444: signed(25 downto 0);
  signal c_445: signed(25 downto 0);
  signal c_446: signed(24 downto 0);
  signal c_447: signed(24 downto 0);
  signal c_448: signed(29 downto 0);
  signal c_449: signed(29 downto 0);
  signal c_450: signed(24 downto 0);
  signal c_450_427_0_False_resize: signed(24 downto 0);
  signal c_450_427_0_False_shift: signed(24 downto 0);
  signal c_450_447_2_False_resize: signed(24 downto 0);
  signal c_450_447_2_False_shift: signed(24 downto 0);
  signal c_450_445_0_False_resize: signed(24 downto 0);
  signal c_450_445_0_False_shift: signed(24 downto 0);
  signal c_450_449_1_False_resize: signed(24 downto 0);
  signal c_450_449_1_False_shift: signed(24 downto 0);
  signal c_450_sel: std_logic_vector(1 downto 0);
  signal c_451: signed(25 downto 0);
  signal c_452: signed(25 downto 0);
  signal c_453: signed(25 downto 0);
  signal c_453_i0_resize: signed(25 downto 0);
  signal c_453_i1_resize: signed(25 downto 0);
  signal c_453_i0_shift: signed(25 downto 0);
  signal c_453_i1_shift: signed(25 downto 0);
  signal c_453_arith: signed(25 downto 0);
  signal c_453_oshift: signed(25 downto 0);
  signal c_453_sub_sel: std_logic;
  signal c_454: signed(26 downto 0);
  signal c_454_158_0_False_resize: signed(26 downto 0);
  signal c_454_158_0_False_shift: signed(26 downto 0);
  signal c_454_153_2_False_resize: signed(26 downto 0);
  signal c_454_153_2_False_shift: signed(26 downto 0);
  signal c_454_134_4_False_resize: signed(26 downto 0);
  signal c_454_134_4_False_shift: signed(26 downto 0);
  signal c_454_156_0_False_resize: signed(26 downto 0);
  signal c_454_156_0_False_shift: signed(26 downto 0);
  signal c_454_sel: std_logic_vector(1 downto 0);
  signal c_455: signed(23 downto 0);
  signal c_456: signed(23 downto 0);
  signal c_457: signed(23 downto 0);
  signal c_458: signed(23 downto 0);
  signal c_459: signed(23 downto 0);
  signal c_460: signed(23 downto 0);
  signal c_461: signed(25 downto 0);
  signal c_461_239_0_False_resize: signed(25 downto 0);
  signal c_461_239_0_False_shift: signed(25 downto 0);
  signal c_461_379_0_False_resize: signed(25 downto 0);
  signal c_461_379_0_False_shift: signed(25 downto 0);
  signal c_461_328_0_False_resize: signed(25 downto 0);
  signal c_461_328_0_False_shift: signed(25 downto 0);
  signal c_461_460_1_False_resize: signed(25 downto 0);
  signal c_461_460_1_False_shift: signed(25 downto 0);
  signal c_461_sel: std_logic_vector(1 downto 0);
  signal c_462: signed(26 downto 0);
  signal c_463: signed(26 downto 0);
  signal c_464: signed(26 downto 0);
  signal c_465: signed(26 downto 0);
  signal c_466: signed(26 downto 0);
  signal c_467: signed(26 downto 0);
  signal c_468: signed(25 downto 0);
  signal c_468_i0_resize: signed(25 downto 0);
  signal c_468_i1_resize: signed(25 downto 0);
  signal c_468_i0_shift: signed(25 downto 0);
  signal c_468_i1_shift: signed(25 downto 0);
  signal c_468_arith: signed(25 downto 0);
  signal c_468_oshift: signed(25 downto 0);
  signal c_468_sub_sel: std_logic;
  signal c_469: signed(26 downto 0);
  signal c_470: signed(26 downto 0);
  signal c_471: signed(26 downto 0);
  signal c_472: signed(26 downto 0);
  signal c_473: signed(26 downto 0);
  signal c_474: signed(26 downto 0);
  signal c_475: signed(26 downto 0);
  signal c_476: signed(26 downto 0);
  signal c_477: signed(29 downto 0);
  signal c_478: signed(29 downto 0);
  signal c_479: signed(29 downto 0);
  signal c_480: signed(29 downto 0);
  signal c_481: signed(29 downto 0);
  signal c_482: signed(29 downto 0);
  signal c_483: signed(29 downto 0);
  signal c_484: signed(29 downto 0);
  signal c_485: signed(29 downto 0);
  signal c_486: signed(29 downto 0);
  signal c_487: signed(29 downto 0);
  signal c_488: signed(29 downto 0);
  signal c_489: signed(29 downto 0);
  signal c_490: signed(29 downto 0);
  signal c_491: signed(29 downto 0);
  signal c_492: signed(29 downto 0);
  signal c_493: signed(29 downto 0);
  signal c_494: signed(29 downto 0);
  signal c_495: signed(29 downto 0);
  signal c_495_453_0_False_resize: signed(29 downto 0);
  signal c_495_453_0_False_shift: signed(29 downto 0);
  signal c_495_494_0_False_resize: signed(29 downto 0);
  signal c_495_494_0_False_shift: signed(29 downto 0);
  signal c_495_486_0_False_resize: signed(29 downto 0);
  signal c_495_486_0_False_shift: signed(29 downto 0);
  signal c_495_476_0_False_resize: signed(29 downto 0);
  signal c_495_476_0_False_shift: signed(29 downto 0);
  signal c_495_sel: std_logic_vector(1 downto 0);
  signal c_496: signed(23 downto 0);
  signal c_497: signed(23 downto 0);
  signal c_498: signed(23 downto 0);
  signal c_499: signed(23 downto 0);
  signal c_500: signed(23 downto 0);
  signal c_501: signed(23 downto 0);
  signal c_502: signed(23 downto 0);
  signal c_503: signed(23 downto 0);
  signal c_504: signed(23 downto 0);
  signal c_505: signed(23 downto 0);
  signal c_506: signed(23 downto 0);
  signal c_507: signed(23 downto 0);
  signal c_508: signed(27 downto 0);
  signal c_509: signed(27 downto 0);
  signal c_510: signed(29 downto 0);
  signal c_510_507_0_False_resize: signed(29 downto 0);
  signal c_510_507_0_False_shift: signed(29 downto 0);
  signal c_510_434_0_False_resize: signed(29 downto 0);
  signal c_510_434_0_False_shift: signed(29 downto 0);
  signal c_510_509_0_False_resize: signed(29 downto 0);
  signal c_510_509_0_False_shift: signed(29 downto 0);
  signal c_510_sel: std_logic_vector(1 downto 0);
  signal c_511: signed(29 downto 0);
  signal c_512: signed(29 downto 0);
  signal c_513: signed(29 downto 0);
  signal c_514: signed(29 downto 0);
  signal c_515: signed(24 downto 0);
  signal c_515_i0_resize: signed(29 downto 0);
  signal c_515_i1_resize: signed(29 downto 0);
  signal c_515_i0_shift: signed(29 downto 0);
  signal c_515_i1_shift: signed(29 downto 0);
  signal c_515_arith: signed(29 downto 0);
  signal c_515_oshift: signed(24 downto 0);
  signal c_515_sub_sel: std_logic;
  signal c_516: signed(25 downto 0);
  signal c_516_358_0_False_resize: signed(25 downto 0);
  signal c_516_358_0_False_shift: signed(25 downto 0);
  signal c_516_379_0_False_resize: signed(25 downto 0);
  signal c_516_379_0_False_shift: signed(25 downto 0);
  signal c_516_343_0_False_resize: signed(25 downto 0);
  signal c_516_343_0_False_shift: signed(25 downto 0);
  signal c_516_322_10_False_resize: signed(25 downto 0);
  signal c_516_322_10_False_shift: signed(25 downto 0);
  signal c_516_sel: std_logic_vector(1 downto 0);
  signal c_517: signed(15 downto 0);
  signal c_518: signed(15 downto 0);
  signal c_519: signed(15 downto 0);
  signal c_520: signed(15 downto 0);
  signal c_521: signed(27 downto 0);
  signal c_522: signed(27 downto 0);
  signal c_523: signed(22 downto 0);
  signal c_523_520_3_False_resize: signed(22 downto 0);
  signal c_523_520_3_False_shift: signed(22 downto 0);
  signal c_523_522_0_False_resize: signed(22 downto 0);
  signal c_523_522_0_False_shift: signed(22 downto 0);
  signal c_523_453_0_False_resize: signed(22 downto 0);
  signal c_523_453_0_False_shift: signed(22 downto 0);
  signal c_523_520_0_False_resize: signed(22 downto 0);
  signal c_523_520_0_False_shift: signed(22 downto 0);
  signal c_523_sel: std_logic_vector(1 downto 0);
  signal c_524: signed(25 downto 0);
  signal c_525: signed(25 downto 0);
  signal c_526: signed(25 downto 0);
  signal c_527: signed(25 downto 0);
  signal c_528: signed(25 downto 0);
  signal c_529: signed(25 downto 0);
  signal c_530: signed(25 downto 0);
  signal c_531: signed(25 downto 0);
  signal c_532: signed(25 downto 0);
  signal c_532_i0_resize: signed(25 downto 0);
  signal c_532_i1_resize: signed(25 downto 0);
  signal c_532_i0_shift: signed(25 downto 0);
  signal c_532_i1_shift: signed(25 downto 0);
  signal c_532_arith: signed(25 downto 0);
  signal c_532_oshift: signed(25 downto 0);
  signal c_532_sub_sel: std_logic;
  signal c_533: signed(24 downto 0);
  signal c_534: signed(24 downto 0);
  signal c_535: signed(29 downto 0);
  signal c_536: signed(29 downto 0);
  signal c_537: signed(29 downto 0);
  signal c_538: signed(29 downto 0);
  signal c_539: signed(29 downto 0);
  signal c_539_520_0_False_resize: signed(29 downto 0);
  signal c_539_520_0_False_shift: signed(29 downto 0);
  signal c_539_534_0_False_resize: signed(29 downto 0);
  signal c_539_534_0_False_shift: signed(29 downto 0);
  signal c_539_453_1_False_resize: signed(29 downto 0);
  signal c_539_453_1_False_shift: signed(29 downto 0);
  signal c_539_538_0_False_resize: signed(29 downto 0);
  signal c_539_538_0_False_shift: signed(29 downto 0);
  signal c_539_sel: std_logic_vector(1 downto 0);
  signal c_540: signed(28 downto 0);
  signal c_540_436_2_False_resize: signed(28 downto 0);
  signal c_540_436_2_False_shift: signed(28 downto 0);
  signal c_540_436_1_False_resize: signed(28 downto 0);
  signal c_540_436_1_False_shift: signed(28 downto 0);
  signal c_540_482_0_False_resize: signed(28 downto 0);
  signal c_540_482_0_False_shift: signed(28 downto 0);
  signal c_540_434_4_False_resize: signed(28 downto 0);
  signal c_540_434_4_False_shift: signed(28 downto 0);
  signal c_540_sel: std_logic_vector(1 downto 0);
  signal c_541: signed(28 downto 0);
  signal c_542: signed(28 downto 0);
  signal c_543: signed(28 downto 0);
  signal c_544: signed(28 downto 0);
  signal c_545: signed(27 downto 0);
  signal c_545_i0_resize: signed(27 downto 0);
  signal c_545_i1_resize: signed(27 downto 0);
  signal c_545_i0_shift: signed(27 downto 0);
  signal c_545_i1_shift: signed(27 downto 0);
  signal c_545_arith: signed(27 downto 0);
  signal c_545_oshift: signed(27 downto 0);
  signal c_545_sub_sel: std_logic;
  signal c_546: signed(29 downto 0);
  signal c_547: signed(29 downto 0);
  signal c_548: signed(27 downto 0);
  signal c_549: signed(27 downto 0);
  signal c_550: signed(27 downto 0);
  signal c_551: signed(27 downto 0);
  signal c_552: signed(27 downto 0);
  signal c_553: signed(27 downto 0);
  signal c_554: signed(28 downto 0);
  signal c_555: signed(28 downto 0);
  signal c_556: signed(28 downto 0);
  signal c_557: signed(28 downto 0);
  signal c_558: signed(28 downto 0);
  signal c_559: signed(28 downto 0);
  signal c_560: signed(28 downto 0);
  signal c_561: signed(28 downto 0);
  signal c_562: signed(29 downto 0);
  signal c_562_515_5_False_resize: signed(29 downto 0);
  signal c_562_515_5_False_shift: signed(29 downto 0);
  signal c_562_553_0_False_resize: signed(29 downto 0);
  signal c_562_553_0_False_shift: signed(29 downto 0);
  signal c_562_561_0_False_resize: signed(29 downto 0);
  signal c_562_561_0_False_shift: signed(29 downto 0);
  signal c_562_547_2_False_resize: signed(29 downto 0);
  signal c_562_547_2_False_shift: signed(29 downto 0);
  signal c_562_sel: std_logic_vector(1 downto 0);
  signal c_563: signed(29 downto 0);
  signal c_563_320_2_False_resize: signed(29 downto 0);
  signal c_563_320_2_False_shift: signed(29 downto 0);
  signal c_563_345_2_False_resize: signed(29 downto 0);
  signal c_563_345_2_False_shift: signed(29 downto 0);
  signal c_563_431_0_False_resize: signed(29 downto 0);
  signal c_563_431_0_False_shift: signed(29 downto 0);
  signal c_563_341_0_False_resize: signed(29 downto 0);
  signal c_563_341_0_False_shift: signed(29 downto 0);
  signal c_563_sel: std_logic_vector(1 downto 0);
  signal c_564: signed(29 downto 0);
  signal c_565: signed(29 downto 0);
  signal c_566: signed(29 downto 0);
  signal c_567: signed(29 downto 0);
  signal c_568: signed(29 downto 0);
  signal c_569: signed(29 downto 0);
  signal c_570: signed(29 downto 0);
  signal c_571: signed(29 downto 0);
  signal c_572: signed(25 downto 0);
  signal c_572_i0_resize: signed(25 downto 0);
  signal c_572_i1_resize: signed(25 downto 0);
  signal c_572_i0_shift: signed(25 downto 0);
  signal c_572_i1_shift: signed(25 downto 0);
  signal c_572_arith: signed(25 downto 0);
  signal c_572_oshift: signed(25 downto 0);
  signal c_572_sub_sel: std_logic;
  signal c_573: signed(26 downto 0);
  signal c_573_438_0_False_resize: signed(26 downto 0);
  signal c_573_438_0_False_shift: signed(26 downto 0);
  signal c_573_421_2_False_resize: signed(26 downto 0);
  signal c_573_421_2_False_shift: signed(26 downto 0);
  signal c_573_434_1_False_resize: signed(26 downto 0);
  signal c_573_434_1_False_shift: signed(26 downto 0);
  signal c_573_417_0_False_resize: signed(26 downto 0);
  signal c_573_417_0_False_shift: signed(26 downto 0);
  signal c_573_sel: std_logic_vector(1 downto 0);
  signal c_574: signed(28 downto 0);
  signal c_575: signed(28 downto 0);
  signal c_576: signed(28 downto 0);
  signal c_577: signed(28 downto 0);
  signal c_578: signed(28 downto 0);
  signal c_579: signed(28 downto 0);
  signal c_580: signed(28 downto 0);
  signal c_581: signed(28 downto 0);
  signal c_582: signed(28 downto 0);
  signal c_583: signed(28 downto 0);
  signal c_584: signed(28 downto 0);
  signal c_585: signed(28 downto 0);
  signal c_586: signed(27 downto 0);
  signal c_587: signed(27 downto 0);
  signal c_588: signed(27 downto 0);
  signal c_589: signed(27 downto 0);
  signal c_590: signed(27 downto 0);
  signal c_591: signed(27 downto 0);
  signal c_592: signed(27 downto 0);
  signal c_593: signed(27 downto 0);
  signal c_594: signed(27 downto 0);
  signal c_595: signed(27 downto 0);
  signal c_596: signed(26 downto 0);
  signal c_596_585_6_False_resize: signed(26 downto 0);
  signal c_596_585_6_False_shift: signed(26 downto 0);
  signal c_596_545_0_False_resize: signed(26 downto 0);
  signal c_596_545_0_False_shift: signed(26 downto 0);
  signal c_596_515_0_False_resize: signed(26 downto 0);
  signal c_596_515_0_False_shift: signed(26 downto 0);
  signal c_596_595_3_False_resize: signed(26 downto 0);
  signal c_596_595_3_False_shift: signed(26 downto 0);
  signal c_596_sel: std_logic_vector(1 downto 0);
  signal c_597: signed(26 downto 0);
  signal c_598: signed(26 downto 0);
  signal c_599: signed(26 downto 0);
  signal c_600: signed(26 downto 0);
  signal c_601: signed(26 downto 0);
  signal c_602: signed(26 downto 0);
  signal c_603: signed(25 downto 0);
  signal c_603_i0_resize: signed(25 downto 0);
  signal c_603_i1_resize: signed(25 downto 0);
  signal c_603_i0_shift: signed(25 downto 0);
  signal c_603_i1_shift: signed(25 downto 0);
  signal c_603_arith: signed(25 downto 0);
  signal c_603_oshift: signed(25 downto 0);
  signal c_604: signed(15 downto 0);
  signal c_605: signed(15 downto 0);
  signal c_606: signed(29 downto 0);
  signal c_607: signed(29 downto 0);
  signal c_608: signed(29 downto 0);
  signal c_609: signed(29 downto 0);
  signal c_610: signed(29 downto 0);
  signal c_611: signed(29 downto 0);
  signal c_612: signed(29 downto 0);
  signal c_613: signed(29 downto 0);
  signal c_614: signed(24 downto 0);
  signal c_614_515_0_False_resize: signed(24 downto 0);
  signal c_614_515_0_False_shift: signed(24 downto 0);
  signal c_614_605_0_False_resize: signed(24 downto 0);
  signal c_614_605_0_False_shift: signed(24 downto 0);
  signal c_614_613_2_False_resize: signed(24 downto 0);
  signal c_614_613_2_False_shift: signed(24 downto 0);
  signal c_614_561_1_False_resize: signed(24 downto 0);
  signal c_614_561_1_False_shift: signed(24 downto 0);
  signal c_614_sel: std_logic_vector(1 downto 0);
  signal c_615: signed(24 downto 0);
  signal c_616: signed(24 downto 0);
  signal c_617: signed(28 downto 0);
  signal c_618: signed(28 downto 0);
  signal c_619: signed(28 downto 0);
  signal c_620: signed(28 downto 0);
  signal c_621: signed(28 downto 0);
  signal c_622: signed(28 downto 0);
  signal c_623: signed(28 downto 0);
  signal c_624: signed(28 downto 0);
  signal c_625: signed(28 downto 0);
  signal c_626: signed(28 downto 0);
  signal c_627: signed(25 downto 0);
  signal c_628: signed(25 downto 0);
  signal c_629: signed(25 downto 0);
  signal c_630: signed(25 downto 0);
  signal c_631: signed(25 downto 0);
  signal c_632: signed(25 downto 0);
  signal c_633: signed(25 downto 0);
  signal c_634: signed(25 downto 0);
  signal c_635: signed(28 downto 0);
  signal c_635_532_1_False_resize: signed(28 downto 0);
  signal c_635_532_1_False_shift: signed(28 downto 0);
  signal c_635_626_0_False_resize: signed(28 downto 0);
  signal c_635_626_0_False_shift: signed(28 downto 0);
  signal c_635_634_0_False_resize: signed(28 downto 0);
  signal c_635_634_0_False_shift: signed(28 downto 0);
  signal c_635_616_0_False_resize: signed(28 downto 0);
  signal c_635_616_0_False_shift: signed(28 downto 0);
  signal c_635_sel: std_logic_vector(1 downto 0);
  signal c_636: signed(25 downto 0);
  signal c_636_i0_resize: signed(25 downto 0);
  signal c_636_i1_resize: signed(25 downto 0);
  signal c_636_i0_shift: signed(25 downto 0);
  signal c_636_i1_shift: signed(25 downto 0);
  signal c_636_arith: signed(25 downto 0);
  signal c_636_oshift: signed(25 downto 0);
  signal c_636_sub_sel: std_logic;
  signal c_637: signed(25 downto 0);
  signal c_638: signed(25 downto 0);
  signal c_639: signed(25 downto 0);
  signal c_640: signed(25 downto 0);
  signal c_641: signed(27 downto 0);
  signal c_642: signed(27 downto 0);
  signal c_643: signed(27 downto 0);
  signal c_644: signed(27 downto 0);
  signal c_645: signed(27 downto 0);
  signal c_646: signed(27 downto 0);
  signal c_647: signed(27 downto 0);
  signal c_648: signed(27 downto 0);
  signal c_649: signed(27 downto 0);
  signal c_650: signed(27 downto 0);
  signal c_651: signed(27 downto 0);
  signal c_651_634_3_False_resize: signed(27 downto 0);
  signal c_651_634_3_False_shift: signed(27 downto 0);
  signal c_651_650_0_False_resize: signed(27 downto 0);
  signal c_651_650_0_False_shift: signed(27 downto 0);
  signal c_651_532_0_False_resize: signed(27 downto 0);
  signal c_651_532_0_False_shift: signed(27 downto 0);
  signal c_651_640_2_False_resize: signed(27 downto 0);
  signal c_651_640_2_False_shift: signed(27 downto 0);
  signal c_651_sel: std_logic_vector(1 downto 0);
  signal c_652: signed(24 downto 0);
  signal c_653: signed(24 downto 0);
  signal c_654: signed(24 downto 0);
  signal c_655: signed(24 downto 0);
  signal c_656: signed(24 downto 0);
  signal c_657: signed(24 downto 0);
  signal c_658: signed(24 downto 0);
  signal c_659: signed(24 downto 0);
  signal c_660: signed(24 downto 0);
  signal c_661: signed(24 downto 0);
  signal c_662: signed(27 downto 0);
  signal c_662_545_0_False_resize: signed(27 downto 0);
  signal c_662_545_0_False_shift: signed(27 downto 0);
  signal c_662_613_0_False_resize: signed(27 downto 0);
  signal c_662_613_0_False_shift: signed(27 downto 0);
  signal c_662_661_4_False_resize: signed(27 downto 0);
  signal c_662_661_4_False_shift: signed(27 downto 0);
  signal c_662_532_0_False_resize: signed(27 downto 0);
  signal c_662_532_0_False_shift: signed(27 downto 0);
  signal c_662_sel: std_logic_vector(1 downto 0);
  signal c_663: signed(25 downto 0);
  signal c_663_i0_resize: signed(25 downto 0);
  signal c_663_i1_resize: signed(25 downto 0);
  signal c_663_i0_shift: signed(25 downto 0);
  signal c_663_i1_shift: signed(25 downto 0);
  signal c_663_arith: signed(25 downto 0);
  signal c_663_oshift: signed(25 downto 0);
  signal c_664: signed(25 downto 0);
  signal c_665: signed(25 downto 0);
  signal c_666: signed(25 downto 0);
  signal c_667: signed(25 downto 0);
  signal c_668: signed(25 downto 0);
  signal c_668_603_0_False_resize: signed(25 downto 0);
  signal c_668_603_0_False_shift: signed(25 downto 0);
  signal c_668_667_2_False_resize: signed(25 downto 0);
  signal c_668_667_2_False_shift: signed(25 downto 0);
  signal c_668_665_0_False_resize: signed(25 downto 0);
  signal c_668_665_0_False_shift: signed(25 downto 0);
  signal c_668_572_1_False_resize: signed(25 downto 0);
  signal c_668_572_1_False_shift: signed(25 downto 0);
  signal c_668_sel: std_logic_vector(1 downto 0);
  signal c_669: signed(25 downto 0);
  signal c_669_632_1_False_resize: signed(25 downto 0);
  signal c_669_632_1_False_shift: signed(25 downto 0);
  signal c_669_534_0_False_resize: signed(25 downto 0);
  signal c_669_534_0_False_shift: signed(25 downto 0);
  signal c_669_453_0_False_resize: signed(25 downto 0);
  signal c_669_453_0_False_shift: signed(25 downto 0);
  signal c_669_sel: std_logic_vector(1 downto 0);
  signal c_670: signed(25 downto 0);
  signal c_671: signed(25 downto 0);
  signal c_672: signed(25 downto 0);
  signal c_673: signed(25 downto 0);
  signal c_674: signed(27 downto 0);
  signal c_675: signed(27 downto 0);
  signal c_676: signed(25 downto 0);
  signal c_676_667_0_False_resize: signed(25 downto 0);
  signal c_676_667_0_False_shift: signed(25 downto 0);
  signal c_676_636_0_False_resize: signed(25 downto 0);
  signal c_676_636_0_False_shift: signed(25 downto 0);
  signal c_676_675_0_False_resize: signed(25 downto 0);
  signal c_676_675_0_False_shift: signed(25 downto 0);
  signal c_676_673_0_False_resize: signed(25 downto 0);
  signal c_676_673_0_False_shift: signed(25 downto 0);
  signal c_676_sel: std_logic_vector(1 downto 0);
  signal c_677: signed(29 downto 0);
  signal c_678: signed(29 downto 0);
  signal c_679: signed(29 downto 0);
  signal c_680: signed(29 downto 0);
  signal c_681: signed(29 downto 0);
  signal c_682: signed(29 downto 0);
  signal c_683: signed(29 downto 0);
  signal c_684: signed(29 downto 0);
  signal c_685: signed(25 downto 0);
  signal c_685_684_0_False_resize: signed(25 downto 0);
  signal c_685_684_0_False_shift: signed(25 downto 0);
  signal c_685_532_0_False_resize: signed(25 downto 0);
  signal c_685_532_0_False_shift: signed(25 downto 0);
  signal c_685_613_0_False_resize: signed(25 downto 0);
  signal c_685_613_0_False_shift: signed(25 downto 0);
  signal c_685_626_0_False_resize: signed(25 downto 0);
  signal c_685_626_0_False_shift: signed(25 downto 0);
  signal c_685_sel: std_logic_vector(1 downto 0);
  signal c_686: signed(29 downto 0);
  signal c_687: signed(29 downto 0);
  signal c_688: signed(25 downto 0);
  signal c_689: signed(25 downto 0);
  signal c_690: signed(25 downto 0);
  signal c_691: signed(25 downto 0);
  signal c_692: signed(25 downto 0);
  signal c_693: signed(25 downto 0);
  signal c_694: signed(25 downto 0);
  signal c_695: signed(25 downto 0);
  signal c_696: signed(24 downto 0);
  signal c_697: signed(24 downto 0);
  signal c_698: signed(25 downto 0);
  signal c_698_697_3_False_resize: signed(25 downto 0);
  signal c_698_697_3_False_shift: signed(25 downto 0);
  signal c_698_695_0_False_resize: signed(25 downto 0);
  signal c_698_695_0_False_shift: signed(25 downto 0);
  signal c_698_603_0_False_resize: signed(25 downto 0);
  signal c_698_603_0_False_shift: signed(25 downto 0);
  signal c_698_687_3_False_resize: signed(25 downto 0);
  signal c_698_687_3_False_shift: signed(25 downto 0);
  signal c_698_sel: std_logic_vector(1 downto 0);
  signal c_699: signed(24 downto 0);
  signal c_700: signed(24 downto 0);
  signal c_701: signed(28 downto 0);
  signal c_702: signed(28 downto 0);
  signal c_703: signed(28 downto 0);
  signal c_704: signed(28 downto 0);
  signal c_705: signed(28 downto 0);
  signal c_706: signed(28 downto 0);
  signal c_707: signed(28 downto 0);
  signal c_708: signed(28 downto 0);
  signal c_709: signed(28 downto 0);
  signal c_710: signed(28 downto 0);
  signal c_711: signed(28 downto 0);
  signal c_712: signed(28 downto 0);
  signal c_713: signed(27 downto 0);
  signal c_714: signed(27 downto 0);
  signal c_715: signed(27 downto 0);
  signal c_716: signed(27 downto 0);
  signal c_717: signed(25 downto 0);
  signal c_717_716_1_False_resize: signed(25 downto 0);
  signal c_717_716_1_False_shift: signed(25 downto 0);
  signal c_717_700_0_False_resize: signed(25 downto 0);
  signal c_717_700_0_False_shift: signed(25 downto 0);
  signal c_717_663_0_False_resize: signed(25 downto 0);
  signal c_717_663_0_False_shift: signed(25 downto 0);
  signal c_717_712_0_False_resize: signed(25 downto 0);
  signal c_717_712_0_False_shift: signed(25 downto 0);
  signal c_717_sel: std_logic_vector(1 downto 0);
  signal c_718: signed(24 downto 0);
  signal c_719: signed(24 downto 0);
  signal c_720: signed(25 downto 0);
  signal c_720_667_0_False_resize: signed(25 downto 0);
  signal c_720_667_0_False_shift: signed(25 downto 0);
  signal c_720_719_0_False_resize: signed(25 downto 0);
  signal c_720_719_0_False_shift: signed(25 downto 0);
  signal c_720_636_0_False_resize: signed(25 downto 0);
  signal c_720_636_0_False_shift: signed(25 downto 0);
  signal c_720_sel: std_logic_vector(1 downto 0);
  signal c_721: signed(25 downto 0);
  signal c_722: signed(25 downto 0);
  signal c_723: signed(25 downto 0);
  signal c_724: signed(25 downto 0);
  signal c_725: signed(25 downto 0);
  signal c_726: signed(25 downto 0);
  signal c_727: signed(25 downto 0);
  signal c_728: signed(25 downto 0);
  signal c_729: signed(25 downto 0);
  signal c_730: signed(25 downto 0);
  signal c_731: signed(25 downto 0);
  signal c_732: signed(25 downto 0);
  signal c_733: signed(25 downto 0);
  signal c_733_732_1_False_resize: signed(25 downto 0);
  signal c_733_732_1_False_shift: signed(25 downto 0);
  signal c_733_675_1_False_resize: signed(25 downto 0);
  signal c_733_675_1_False_shift: signed(25 downto 0);
  signal c_733_663_0_False_resize: signed(25 downto 0);
  signal c_733_663_0_False_shift: signed(25 downto 0);
  signal c_733_603_0_False_resize: signed(25 downto 0);
  signal c_733_603_0_False_shift: signed(25 downto 0);
  signal c_733_sel: std_logic_vector(1 downto 0);
  signal c_734: signed(29 downto 0);
  signal c_735: signed(29 downto 0);
  signal c_736: signed(29 downto 0);
  signal c_737: signed(29 downto 0);
  signal c_738: signed(29 downto 0);
  signal c_739: signed(29 downto 0);
  signal c_740: signed(29 downto 0);
  signal c_741: signed(29 downto 0);
  signal c_742: signed(29 downto 0);
  signal c_743: signed(29 downto 0);
  signal c_744: signed(29 downto 0);
  signal c_745: signed(29 downto 0);
  signal c_746: signed(25 downto 0);
  signal c_746_745_0_False_resize: signed(25 downto 0);
  signal c_746_745_0_False_shift: signed(25 downto 0);
  signal c_746_665_1_False_resize: signed(25 downto 0);
  signal c_746_665_1_False_shift: signed(25 downto 0);
  signal c_746_663_0_False_resize: signed(25 downto 0);
  signal c_746_663_0_False_shift: signed(25 downto 0);
  signal c_746_716_1_False_resize: signed(25 downto 0);
  signal c_746_716_1_False_shift: signed(25 downto 0);
  signal c_746_sel: std_logic_vector(1 downto 0);
  signal c_747: signed(25 downto 0);
  signal c_747_572_0_False_resize: signed(25 downto 0);
  signal c_747_572_0_False_shift: signed(25 downto 0);
  signal c_747_675_1_False_resize: signed(25 downto 0);
  signal c_747_675_1_False_shift: signed(25 downto 0);
  signal c_747_sel: std_logic_vector(0 downto 0);
  signal c_748: signed(25 downto 0);
  signal c_748_resize: signed(25 downto 0);
  signal c_749: signed(25 downto 0);
  signal c_750: signed(25 downto 0);
  signal c_751: signed(25 downto 0);
  signal c_752: signed(25 downto 0);
  signal c_753: signed(25 downto 0);
  signal c_753_resize: signed(25 downto 0);
  signal c_754: signed(25 downto 0);
  signal c_754_resize: signed(25 downto 0);
  signal c_755: signed(25 downto 0);
  signal c_756: signed(25 downto 0);
  signal c_757: signed(25 downto 0);
  signal c_757_resize: signed(25 downto 0);
  signal c_758: signed(25 downto 0);
  signal c_758_resize: signed(25 downto 0);
  signal c_759: signed(25 downto 0);
  signal c_759_resize: signed(25 downto 0);
  signal c_760: signed(25 downto 0);
  signal c_760_resize: signed(25 downto 0);
  signal c_761: signed(25 downto 0);
  signal c_761_resize: signed(25 downto 0);
  signal c_762: signed(25 downto 0);
  signal c_762_resize: signed(25 downto 0);
  signal c_763: signed(25 downto 0);
  signal c_763_resize: signed(25 downto 0);
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
      config_select_16 <= config_select_15;
      config_select_17 <= config_select_16;
      config_select_18 <= config_select_17;
      config_select_19 <= config_select_18;
      config_select_20 <= config_select_19;
      config_select_21 <= config_select_20;
      config_select_22 <= config_select_21;
      config_select_23 <= config_select_22;
      config_select_24 <= config_select_23;
      config_select_25 <= config_select_24;
      config_select_26 <= config_select_25;
      config_select_27 <= config_select_26;
      config_select_28 <= config_select_27;
      config_select_29 <= config_select_28;
      config_select_30 <= config_select_29;
      config_select_31 <= config_select_30;
      config_select_32 <= config_select_31;
      config_select_33 <= config_select_32;
      config_select_34 <= config_select_33;
      config_select_35 <= config_select_34;
      config_select_36 <= config_select_35;
      config_select_37 <= config_select_36;
      config_select_38 <= config_select_37;
      config_select_39 <= config_select_38;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 748
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_748);
    end if;
  end process;
  -- output node 1 with id 753
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_753);
    end if;
  end process;
  -- output node 2 with id 754
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_754);
    end if;
  end process;
  -- output node 3 with id 757
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_757);
    end if;
  end process;
  -- output node 4 with id 758
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_758);
    end if;
  end process;
  -- output node 5 with id 759
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_759);
    end if;
  end process;
  -- output node 6 with id 760
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_760);
    end if;
  end process;
  -- output node 7 with id 761
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_761);
    end if;
  end process;
  -- output node 8 with id 762
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_762);
    end if;
  end process;
  -- output node 9 with id 763
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_763);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[64], [64], [16], [1]]
  c_1_0_4_False_resize <= resize(c_0, 22);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_6_False_resize <= resize(c_0, 22);
  c_1_0_6_False_shift <= shift_left(c_1_0_6_False_resize, 6);
  c_1_0_0_False_resize <= resize(c_0, 22);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_4_False_shift;
        when "01" => c_1 <= c_1_0_6_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[32], [64], [8], [1]]
  c_2_0_3_False_resize <= resize(c_0, 22);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 22);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_3_False_shift;
        when "01" => c_2 <= c_2_0_6_False_shift;
        when "10" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[0], [1536], [0], [24]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 27,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [16], [0], [4]]
  c_6_5_4_False_resize <= resize(c_5, 20);
  c_6_5_4_False_shift <= shift_left(c_6_5_4_False_resize, 4);
  c_6_5_0_False_resize <= resize(c_5, 20);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  c_6_5_2_False_resize <= resize(c_5, 20);
  c_6_5_2_False_shift <= shift_left(c_6_5_2_False_resize, 2);
  c_6_3_0_False_resize <= c_3(19 downto 0);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_5_4_False_shift;
        when "01" => c_6 <= c_6_5_0_False_shift;
        when "10" => c_6 <= c_6_5_2_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[1], [128], [0], [192]]
  c_7_5_0_False_resize <= resize(c_5, 24);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_3_3_False_resize <= c_3(23 downto 0);
  c_7_3_3_False_shift <= shift_left(c_7_3_3_False_resize, 3);
  c_7_3_0_False_resize <= c_3(23 downto 0);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_5_7_False_resize <= resize(c_5, 24);
  c_7_5_7_False_shift <= shift_left(c_7_5_7_False_resize, 7);
  with config_select_3 select c_7_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_5_0_False_shift;
        when "01" => c_7 <= c_7_3_3_False_shift;
        when "10" => c_7 <= c_7_3_0_False_shift;
        when others => c_7 <= c_7_5_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[0], [144], [0], [196]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 24,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[0], [8], [0], [4]]
  c_13_10_2_False_resize <= resize(c_10, 19);
  c_13_10_2_False_shift <= shift_left(c_13_10_2_False_resize, 2);
  c_13_12_0_False_resize <= c_12(18 downto 0);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_10_3_False_resize <= resize(c_10, 19);
  c_13_10_3_False_shift <= shift_left(c_13_10_3_False_resize, 3);
  c_13_8_0_False_resize <= c_8(18 downto 0);
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  with config_select_5 select c_13_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_10_2_False_shift;
        when "01" => c_13 <= c_13_12_0_False_shift;
        when "10" => c_13 <= c_13_10_3_False_shift;
        when others => c_13 <= c_13_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[0], [32], [0], [1]]
  c_14_10_0_False_resize <= resize(c_10, 21);
  c_14_10_0_False_shift <= shift_left(c_14_10_0_False_resize, 0);
  c_14_10_5_False_resize <= resize(c_10, 21);
  c_14_10_5_False_shift <= shift_left(c_14_10_5_False_resize, 5);
  c_14_8_0_False_resize <= c_8(20 downto 0);
  c_14_8_0_False_shift <= shift_left(c_14_8_0_False_resize, 0);
  with config_select_5 select c_14_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_10_0_False_shift;
        when "01" => c_14 <= c_14_10_5_False_shift;
        when others => c_14 <= c_14_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 15 and associated fundamentals [[0], [40], [0], [5]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 22,
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
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[0], [16], [16], [784]]
  c_16_12_0_False_resize <= c_12(25 downto 0);
  c_16_12_0_False_shift <= shift_left(c_16_12_0_False_resize, 0);
  c_16_10_4_False_resize <= resize(c_10, 26);
  c_16_10_4_False_shift <= shift_left(c_16_10_4_False_resize, 4);
  c_16_8_2_False_resize <= resize(c_8, 26);
  c_16_8_2_False_shift <= shift_left(c_16_8_2_False_resize, 2);
  with config_select_5 select c_16_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_12_0_False_shift;
        when "01" => c_16 <= c_16_10_4_False_shift;
        when others => c_16 <= c_16_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 21 and associated fundamentals [[0], [10240], [4], [5]]
  c_21_18_2_False_resize <= resize(c_18, 30);
  c_21_18_2_False_shift <= shift_left(c_21_18_2_False_resize, 2);
  c_21_20_0_False_resize <= resize(c_20, 30);
  c_21_20_0_False_shift <= shift_left(c_21_20_0_False_resize, 0);
  c_21_15_0_False_resize <= resize(c_15, 30);
  c_21_15_0_False_shift <= shift_left(c_21_15_0_False_resize, 0);
  c_21_15_8_False_resize <= resize(c_15, 30);
  c_21_15_8_False_shift <= shift_left(c_21_15_8_False_resize, 8);
  with config_select_7 select c_21_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_18_2_False_shift;
        when "01" => c_21 <= c_21_20_0_False_shift;
        when "10" => c_21 <= c_21_15_0_False_shift;
        when others => c_21 <= c_21_15_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[0], [16], [16], [784]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 23 and associated fundamentals [[0], [16], [16], [784]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 24 and associated fundamentals [[0], [10256], [20], [779]]
  with config_select_8 select c_24_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 30,
      w_o => 30,
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
      x_i => c_23,
      y_i => c_21,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[1], [288], [1024], [5]]
  c_25_15_0_False_resize <= resize(c_15, 26);
  c_25_15_0_False_shift <= shift_left(c_25_15_0_False_resize, 0);
  c_25_20_1_False_resize <= resize(c_20, 26);
  c_25_20_1_False_shift <= shift_left(c_25_20_1_False_resize, 1);
  c_25_18_0_False_resize <= resize(c_18, 26);
  c_25_18_0_False_shift <= shift_left(c_25_18_0_False_resize, 0);
  c_25_18_10_False_resize <= resize(c_18, 26);
  c_25_18_10_False_shift <= shift_left(c_25_18_10_False_resize, 10);
  with config_select_7 select c_25_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_15_0_False_shift;
        when "01" => c_25 <= c_25_20_1_False_shift;
        when "10" => c_25 <= c_25_18_0_False_shift;
        when others => c_25 <= c_25_18_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 26 and associated fundamentals [[1], [8], [16], [8]]
  c_26_0_4_False_resize <= resize(c_0, 20);
  c_26_0_4_False_shift <= shift_left(c_26_0_4_False_resize, 4);
  c_26_0_3_False_resize <= resize(c_0, 20);
  c_26_0_3_False_shift <= shift_left(c_26_0_3_False_resize, 3);
  c_26_0_0_False_resize <= resize(c_0, 20);
  c_26_0_0_False_shift <= shift_left(c_26_0_0_False_resize, 0);
  with config_select_1 select c_26_sel <= 
    "00" when "10",
    "01" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_0_4_False_shift;
        when "01" => c_26 <= c_26_0_3_False_shift;
        when others => c_26 <= c_26_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 27 and associated fundamentals [[1], [8], [16], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 28 and associated fundamentals [[1], [8], [16], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 29 and associated fundamentals [[1], [8], [16], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[1], [8], [16], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[1], [8], [16], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[1], [8], [16], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 33 and associated fundamentals [[0], [280], [1040], [13]]
  with config_select_8 select c_33_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
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
      sub_i => c_33_sub_sel,
      x_i => c_25,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 36 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 42 and associated fundamentals [[0], [10256], [4], [196]]
  c_42_41_0_False_resize <= resize(c_41, 30);
  c_42_41_0_False_shift <= shift_left(c_42_41_0_False_resize, 0);
  c_42_35_2_False_resize <= resize(c_35, 30);
  c_42_35_2_False_shift <= shift_left(c_42_35_2_False_resize, 2);
  c_42_39_0_False_resize <= resize(c_39, 30);
  c_42_39_0_False_shift <= shift_left(c_42_39_0_False_resize, 0);
  c_42_24_0_False_resize <= c_24;
  c_42_24_0_False_shift <= shift_left(c_42_24_0_False_resize, 0);
  with config_select_9 select c_42_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_41_0_False_shift;
        when "01" => c_42 <= c_42_35_2_False_shift;
        when "10" => c_42 <= c_42_39_0_False_shift;
        when others => c_42 <= c_42_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 43 and associated fundamentals [[0], [3072], [1024], [13]]
  c_43_35_10_False_resize <= resize(c_35, 28);
  c_43_35_10_False_shift <= shift_left(c_43_35_10_False_resize, 10);
  c_43_24_0_False_resize <= c_24(27 downto 0);
  c_43_24_0_False_shift <= shift_left(c_43_24_0_False_resize, 0);
  c_43_39_1_False_resize <= resize(c_39, 28);
  c_43_39_1_False_shift <= shift_left(c_43_39_1_False_resize, 1);
  c_43_33_0_False_resize <= resize(c_33, 28);
  c_43_33_0_False_shift <= shift_left(c_43_33_0_False_resize, 0);
  with config_select_9 select c_43_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_35_10_False_shift;
        when "01" => c_43 <= c_43_24_0_False_shift;
        when "10" => c_43 <= c_43_39_1_False_shift;
        when others => c_43 <= c_43_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 44 and associated fundamentals [[0], [7184], [1028], [183]]
  with config_select_10 select c_44_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 28,
      w_o => 29,
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
      sub_i => c_44_sub_sel,
      x_i => c_42,
      y_i => c_43,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 45 and associated fundamentals [[8], [4], [0], [13]]
  c_45_35_3_False_resize <= resize(c_35, 20);
  c_45_35_3_False_shift <= shift_left(c_45_35_3_False_resize, 3);
  c_45_33_0_False_resize <= c_33(19 downto 0);
  c_45_33_0_False_shift <= shift_left(c_45_33_0_False_resize, 0);
  c_45_35_2_False_resize <= resize(c_35, 20);
  c_45_35_2_False_shift <= shift_left(c_45_35_2_False_resize, 2);
  c_45_41_0_False_resize <= c_41(19 downto 0);
  c_45_41_0_False_shift <= shift_left(c_45_41_0_False_resize, 0);
  with config_select_9 select c_45_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_35_3_False_shift;
        when "01" => c_45 <= c_45_33_0_False_shift;
        when "10" => c_45 <= c_45_35_2_False_shift;
        when others => c_45 <= c_45_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 49 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 51 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 52 and associated fundamentals [[8], [7184], [0], [24]]
  c_52_44_0_False_resize <= c_44;
  c_52_44_0_False_shift <= shift_left(c_52_44_0_False_resize, 0);
  c_52_51_0_False_resize <= resize(c_51, 29);
  c_52_51_0_False_shift <= shift_left(c_52_51_0_False_resize, 0);
  c_52_49_0_False_resize <= resize(c_49, 29);
  c_52_49_0_False_shift <= shift_left(c_52_49_0_False_resize, 0);
  c_52_47_3_False_resize <= resize(c_47, 29);
  c_52_47_3_False_shift <= shift_left(c_52_47_3_False_resize, 3);
  with config_select_11 select c_52_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "00" => c_52 <= c_52_44_0_False_shift;
        when "01" => c_52 <= c_52_51_0_False_shift;
        when "10" => c_52 <= c_52_49_0_False_shift;
        when others => c_52 <= c_52_47_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[8], [4], [0], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 54 and associated fundamentals [[8], [4], [0], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 55 and associated fundamentals [[0], [-7180], [0], [-11]]
  with config_select_12 select c_55_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_55: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 29,
      w_o => 29,
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
      sub_i => c_55_sub_sel,
      x_i => c_54,
      y_i => c_52,
      z_o => c_55_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_55_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 58 and associated fundamentals [[0], [7184], [512], [183]]
  c_58_47_9_False_resize <= resize(c_47, 29);
  c_58_47_9_False_shift <= shift_left(c_58_47_9_False_resize, 9);
  c_58_57_0_False_resize <= c_57(28 downto 0);
  c_58_57_0_False_shift <= shift_left(c_58_57_0_False_resize, 0);
  c_58_44_0_False_resize <= c_44;
  c_58_44_0_False_shift <= shift_left(c_58_44_0_False_resize, 0);
  with config_select_11 select c_58_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "00" => c_58 <= c_58_47_9_False_shift;
        when "01" => c_58 <= c_58_57_0_False_shift;
        when others => c_58 <= c_58_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 59 and associated fundamentals [[0], [40], [0], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 60 and associated fundamentals [[0], [40], [0], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[0], [40], [0], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 62 and associated fundamentals [[0], [40], [0], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 63 and associated fundamentals [[0], [7184], [256], [160]]
  c_63_57_0_False_resize <= c_57(28 downto 0);
  c_63_57_0_False_shift <= shift_left(c_63_57_0_False_resize, 0);
  c_63_47_8_False_resize <= resize(c_47, 29);
  c_63_47_8_False_shift <= shift_left(c_63_47_8_False_resize, 8);
  c_63_62_5_False_resize <= resize(c_62, 29);
  c_63_62_5_False_shift <= shift_left(c_63_62_5_False_resize, 5);
  c_63_44_0_False_resize <= c_44;
  c_63_44_0_False_shift <= shift_left(c_63_44_0_False_resize, 0);
  with config_select_11 select c_63_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "00" => c_63 <= c_63_57_0_False_shift;
        when "01" => c_63 <= c_63_47_8_False_shift;
        when "10" => c_63 <= c_63_62_5_False_shift;
        when others => c_63 <= c_63_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 64 and associated fundamentals [[0], [0], [768], [343]]
  with config_select_12 select c_64_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_64: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 29,
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
      sub_i => c_64_sub_sel,
      x_i => c_58,
      y_i => c_63,
      z_o => c_64_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_64_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 65 and associated fundamentals [[512], [2], [64], [1]]
  c_65_0_9_False_resize <= resize(c_0, 25);
  c_65_0_9_False_shift <= shift_left(c_65_0_9_False_resize, 9);
  c_65_0_1_False_resize <= resize(c_0, 25);
  c_65_0_1_False_shift <= shift_left(c_65_0_1_False_resize, 1);
  c_65_0_0_False_resize <= resize(c_0, 25);
  c_65_0_0_False_shift <= shift_left(c_65_0_0_False_resize, 0);
  c_65_0_6_False_resize <= resize(c_0, 25);
  c_65_0_6_False_shift <= shift_left(c_65_0_6_False_resize, 6);
  with config_select_1 select c_65_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "00" => c_65 <= c_65_0_9_False_shift;
        when "01" => c_65 <= c_65_0_1_False_shift;
        when "10" => c_65 <= c_65_0_0_False_shift;
        when others => c_65 <= c_65_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 66 and associated fundamentals [[16], [40], [64], [4]]
  c_66_18_2_False_resize <= resize(c_18, 22);
  c_66_18_2_False_shift <= shift_left(c_66_18_2_False_resize, 2);
  c_66_18_4_False_resize <= resize(c_18, 22);
  c_66_18_4_False_shift <= shift_left(c_66_18_4_False_resize, 4);
  c_66_18_6_False_resize <= resize(c_18, 22);
  c_66_18_6_False_shift <= shift_left(c_66_18_6_False_resize, 6);
  c_66_15_0_False_resize <= c_15;
  c_66_15_0_False_shift <= shift_left(c_66_15_0_False_resize, 0);
  with config_select_7 select c_66_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_66_sel is
        when "00" => c_66 <= c_66_18_2_False_shift;
        when "01" => c_66 <= c_66_18_4_False_shift;
        when "10" => c_66 <= c_66_18_6_False_shift;
        when others => c_66 <= c_66_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 67 and associated fundamentals [[512], [2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 68 and associated fundamentals [[512], [2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 69 and associated fundamentals [[512], [2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 70 and associated fundamentals [[512], [2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 71 and associated fundamentals [[512], [2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 72 and associated fundamentals [[512], [2], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 73 and associated fundamentals [[544], [82], [192], [9]]
  inst_adder_node_73: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
      w_o => 26,
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
      x_i => c_72,
      y_i => c_66,
      z_o => c_73_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_73_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 74 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 75 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 76 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 77 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 78 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 79 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 80 and associated fundamentals [[256], [0], [8], [9]]
  c_80_64_0_False_resize <= c_64(23 downto 0);
  c_80_64_0_False_shift <= shift_left(c_80_64_0_False_resize, 0);
  c_80_75_8_False_resize <= resize(c_75, 24);
  c_80_75_8_False_shift <= shift_left(c_80_75_8_False_resize, 8);
  c_80_75_3_False_resize <= resize(c_75, 24);
  c_80_75_3_False_shift <= shift_left(c_80_75_3_False_resize, 3);
  c_80_79_0_False_resize <= c_79(23 downto 0);
  c_80_79_0_False_shift <= shift_left(c_80_79_0_False_resize, 0);
  with config_select_13 select c_80_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_80_sel is
        when "00" => c_80 <= c_80_64_0_False_shift;
        when "01" => c_80 <= c_80_75_8_False_shift;
        when "10" => c_80 <= c_80_75_3_False_shift;
        when others => c_80 <= c_80_79_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 81 and associated fundamentals [[128], [128], [1], [13]]
  c_81_33_0_False_resize <= c_33(22 downto 0);
  c_81_33_0_False_shift <= shift_left(c_81_33_0_False_resize, 0);
  c_81_35_0_False_resize <= resize(c_35, 23);
  c_81_35_0_False_shift <= shift_left(c_81_35_0_False_resize, 0);
  c_81_35_7_False_resize <= resize(c_35, 23);
  c_81_35_7_False_shift <= shift_left(c_81_35_7_False_resize, 7);
  with config_select_9 select c_81_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "00" => c_81 <= c_81_33_0_False_shift;
        when "01" => c_81 <= c_81_35_0_False_shift;
        when others => c_81 <= c_81_35_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 82 and associated fundamentals [[128], [128], [1], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 83 and associated fundamentals [[128], [128], [1], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 84 and associated fundamentals [[128], [128], [1], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 85 and associated fundamentals [[128], [128], [1], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 86 and associated fundamentals [[1280], [1024], [0], [113]]
  with config_select_14 select c_86_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_86: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 27,
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
      sub_i => c_86_sub_sel,
      x_i => c_80,
      y_i => c_85,
      z_o => c_86_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_86_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 87 and associated fundamentals [[0], [10240], [0], [4]]
  c_87_15_8_False_resize <= resize(c_15, 30);
  c_87_15_8_False_shift <= shift_left(c_87_15_8_False_resize, 8);
  c_87_37_0_False_resize <= resize(c_37, 30);
  c_87_37_0_False_shift <= shift_left(c_87_37_0_False_resize, 0);
  c_87_18_2_False_resize <= resize(c_18, 30);
  c_87_18_2_False_shift <= shift_left(c_87_18_2_False_resize, 2);
  with config_select_7 select c_87_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_87_sel is
        when "00" => c_87 <= c_87_15_8_False_shift;
        when "01" => c_87 <= c_87_37_0_False_shift;
        when others => c_87 <= c_87_18_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 88 and associated fundamentals [[1024], [6144], [1], [4096]]
  c_88_5_10_False_resize <= resize(c_5, 29);
  c_88_5_10_False_shift <= shift_left(c_88_5_10_False_resize, 10);
  c_88_5_12_False_resize <= resize(c_5, 29);
  c_88_5_12_False_shift <= shift_left(c_88_5_12_False_resize, 12);
  c_88_5_0_False_resize <= resize(c_5, 29);
  c_88_5_0_False_shift <= shift_left(c_88_5_0_False_resize, 0);
  c_88_3_2_False_resize <= resize(c_3, 29);
  c_88_3_2_False_shift <= shift_left(c_88_3_2_False_resize, 2);
  with config_select_3 select c_88_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_88_sel is
        when "00" => c_88 <= c_88_5_10_False_shift;
        when "01" => c_88 <= c_88_5_12_False_shift;
        when "10" => c_88 <= c_88_5_0_False_shift;
        when others => c_88 <= c_88_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 89 and associated fundamentals [[1024], [6144], [1], [4096]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 90 and associated fundamentals [[1024], [6144], [1], [4096]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 91 and associated fundamentals [[1024], [6144], [1], [4096]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 92 and associated fundamentals [[1024], [6144], [1], [4096]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 93 and associated fundamentals [[1024], [4096], [1], [4100]]
  with config_select_8 select c_93_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_93: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
      w_o => 29,
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
      sub_i => c_93_sub_sel,
      x_i => c_87,
      y_i => c_92,
      z_o => c_93_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_93_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 94 and associated fundamentals [[1], [1024], [128], [48]]
  c_94_5_7_False_resize <= resize(c_5, 26);
  c_94_5_7_False_shift <= shift_left(c_94_5_7_False_resize, 7);
  c_94_3_1_False_resize <= c_3(25 downto 0);
  c_94_3_1_False_shift <= shift_left(c_94_3_1_False_resize, 1);
  c_94_5_10_False_resize <= resize(c_5, 26);
  c_94_5_10_False_shift <= shift_left(c_94_5_10_False_resize, 10);
  c_94_5_0_False_resize <= resize(c_5, 26);
  c_94_5_0_False_shift <= shift_left(c_94_5_0_False_resize, 0);
  with config_select_3 select c_94_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_94_sel is
        when "00" => c_94 <= c_94_5_7_False_shift;
        when "01" => c_94 <= c_94_3_1_False_shift;
        when "10" => c_94 <= c_94_5_10_False_shift;
        when others => c_94 <= c_94_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 95 and associated fundamentals [[8], [7184], [192], [2]]
  c_95_44_0_False_resize <= c_44;
  c_95_44_0_False_shift <= shift_left(c_95_44_0_False_resize, 0);
  c_95_77_0_False_resize <= resize(c_77, 29);
  c_95_77_0_False_shift <= shift_left(c_95_77_0_False_resize, 0);
  c_95_47_3_False_resize <= resize(c_47, 29);
  c_95_47_3_False_shift <= shift_left(c_95_47_3_False_resize, 3);
  c_95_47_1_False_resize <= resize(c_47, 29);
  c_95_47_1_False_shift <= shift_left(c_95_47_1_False_resize, 1);
  with config_select_11 select c_95_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_95_sel is
        when "00" => c_95 <= c_95_44_0_False_shift;
        when "01" => c_95 <= c_95_77_0_False_shift;
        when "10" => c_95 <= c_95_47_3_False_shift;
        when others => c_95 <= c_95_47_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 96 and associated fundamentals [[1], [1024], [128], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 97 and associated fundamentals [[1], [1024], [128], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 98 and associated fundamentals [[1], [1024], [128], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 99 and associated fundamentals [[1], [1024], [128], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 100 and associated fundamentals [[1], [1024], [128], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 101 and associated fundamentals [[1], [1024], [128], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 102 and associated fundamentals [[1], [1024], [128], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 103 and associated fundamentals [[1], [1024], [128], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 104 and associated fundamentals [[10], [9232], [448], [94]]
  with config_select_12 select c_104_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_104: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 29,
      w_o => 30,
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
      sub_i => c_104_sub_sel,
      x_i => c_103,
      y_i => c_95,
      z_o => c_104_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_104_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 105 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 106 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 107 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 108 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 109 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 110 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 111 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 112 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 113 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 114 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 115 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 116 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 117 and associated fundamentals [[1280], [144], [0], [183]]
  c_117_116_0_False_resize <= c_116(26 downto 0);
  c_117_116_0_False_shift <= shift_left(c_117_116_0_False_resize, 0);
  c_117_86_0_False_resize <= c_86;
  c_117_86_0_False_shift <= shift_left(c_117_86_0_False_resize, 0);
  c_117_108_0_False_resize <= c_108;
  c_117_108_0_False_shift <= shift_left(c_117_108_0_False_resize, 0);
  c_117_112_0_False_resize <= resize(c_112, 27);
  c_117_112_0_False_shift <= shift_left(c_117_112_0_False_resize, 0);
  with config_select_15 select c_117_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_117_sel is
        when "00" => c_117 <= c_117_116_0_False_shift;
        when "01" => c_117 <= c_117_86_0_False_shift;
        when "10" => c_117 <= c_117_108_0_False_shift;
        when others => c_117 <= c_117_112_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 118 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 119 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 120 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 121 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 122 and associated fundamentals [[0], [1024], [0], [113]]
  c_122_121_0_False_resize <= c_121(25 downto 0);
  c_122_121_0_False_shift <= shift_left(c_122_121_0_False_resize, 0);
  c_122_86_0_False_resize <= c_86(25 downto 0);
  c_122_86_0_False_shift <= shift_left(c_122_86_0_False_resize, 0);
  c_122_108_0_False_resize <= c_108(25 downto 0);
  c_122_108_0_False_shift <= shift_left(c_122_108_0_False_resize, 0);
  with config_select_15 select c_122_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_122_sel is
        when "00" => c_122 <= c_122_121_0_False_shift;
        when "01" => c_122 <= c_122_86_0_False_shift;
        when others => c_122 <= c_122_108_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 16 with id 123 and associated fundamentals [[160], [146], [0], [37]]
  inst_adder_node_123: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 3,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_117,
      y_i => c_122,
      z_o => c_123_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_123_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 124 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 125 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 126 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 127 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 128 and associated fundamentals [[320], [146], [1], [16]]
  c_128_127_4_False_resize <= resize(c_127, 25);
  c_128_127_4_False_shift <= shift_left(c_128_127_4_False_resize, 4);
  c_128_127_0_False_resize <= resize(c_127, 25);
  c_128_127_0_False_shift <= shift_left(c_128_127_0_False_resize, 0);
  c_128_123_1_False_resize <= resize(c_123, 25);
  c_128_123_1_False_shift <= shift_left(c_128_123_1_False_resize, 1);
  c_128_123_0_False_resize <= resize(c_123, 25);
  c_128_123_0_False_shift <= shift_left(c_128_123_0_False_resize, 0);
  with config_select_17 select c_128_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_128_sel is
        when "00" => c_128 <= c_128_127_4_False_shift;
        when "01" => c_128 <= c_128_127_0_False_shift;
        when "10" => c_128 <= c_128_123_1_False_shift;
        when others => c_128 <= c_128_123_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 129 and associated fundamentals [[10], [1], [2048], [2]]
  c_129_104_0_False_resize <= c_104(26 downto 0);
  c_129_104_0_False_shift <= shift_left(c_129_104_0_False_resize, 0);
  c_129_75_11_False_resize <= resize(c_75, 27);
  c_129_75_11_False_shift <= shift_left(c_129_75_11_False_resize, 11);
  c_129_75_1_False_resize <= resize(c_75, 27);
  c_129_75_1_False_shift <= shift_left(c_129_75_1_False_resize, 1);
  c_129_75_0_False_resize <= resize(c_75, 27);
  c_129_75_0_False_shift <= shift_left(c_129_75_0_False_resize, 0);
  with config_select_13 select c_129_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_129_sel is
        when "00" => c_129 <= c_129_104_0_False_shift;
        when "01" => c_129 <= c_129_75_11_False_shift;
        when "10" => c_129 <= c_129_75_1_False_shift;
        when others => c_129 <= c_129_75_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 130 and associated fundamentals [[10], [1], [2048], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 131 and associated fundamentals [[10], [1], [2048], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 132 and associated fundamentals [[10], [1], [2048], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 133 and associated fundamentals [[10], [1], [2048], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'add' in stage 18 with id 134 and associated fundamentals [[330], [147], [2049], [18]]
  inst_adder_node_134: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
      w_o => 28,
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
      x_i => c_128,
      y_i => c_133,
      z_o => c_134_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_134_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 135 and associated fundamentals [[16], [64], [16], [24]]
  c_135_5_4_False_resize <= resize(c_5, 22);
  c_135_5_4_False_shift <= shift_left(c_135_5_4_False_resize, 4);
  c_135_5_6_False_resize <= resize(c_5, 22);
  c_135_5_6_False_shift <= shift_left(c_135_5_6_False_resize, 6);
  c_135_3_0_False_resize <= c_3(21 downto 0);
  c_135_3_0_False_shift <= shift_left(c_135_3_0_False_resize, 0);
  with config_select_3 select c_135_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_135_sel is
        when "00" => c_135 <= c_135_5_4_False_shift;
        when "01" => c_135 <= c_135_5_6_False_shift;
        when others => c_135 <= c_135_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 136 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 137 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 138 and associated fundamentals [[16], [144], [2], [1184]]
  c_138_123_5_False_resize <= resize(c_123, 27);
  c_138_123_5_False_shift <= shift_left(c_138_123_5_False_resize, 5);
  c_138_137_0_False_resize <= resize(c_137, 27);
  c_138_137_0_False_shift <= shift_left(c_138_137_0_False_resize, 0);
  c_138_127_4_False_resize <= resize(c_127, 27);
  c_138_127_4_False_shift <= shift_left(c_138_127_4_False_resize, 4);
  c_138_127_1_False_resize <= resize(c_127, 27);
  c_138_127_1_False_shift <= shift_left(c_138_127_1_False_resize, 1);
  with config_select_17 select c_138_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_138_sel is
        when "00" => c_138 <= c_138_123_5_False_shift;
        when "01" => c_138 <= c_138_137_0_False_shift;
        when "10" => c_138 <= c_138_127_4_False_shift;
        when others => c_138 <= c_138_127_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 139 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_135 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 140 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 141 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 142 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 143 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 144 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 145 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 146 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_145 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 147 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 148 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 149 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 150 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_149 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 151 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_150 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 152 and associated fundamentals [[16], [64], [16], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'add' in stage 18 with id 153 and associated fundamentals [[384], [2176], [272], [9856]]
  inst_adder_node_153: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 27,
      w_o => 30,
      s_x_i => 4,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_152,
      y_i => c_138,
      z_o => c_153_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_153_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 154 and associated fundamentals [[1], [82], [8192], [94]]
  c_154_79_0_False_resize <= resize(c_79, 29);
  c_154_79_0_False_shift <= shift_left(c_154_79_0_False_resize, 0);
  c_154_75_13_False_resize <= resize(c_75, 29);
  c_154_75_13_False_shift <= shift_left(c_154_75_13_False_resize, 13);
  c_154_75_0_False_resize <= resize(c_75, 29);
  c_154_75_0_False_shift <= shift_left(c_154_75_0_False_resize, 0);
  c_154_104_0_False_resize <= c_104(28 downto 0);
  c_154_104_0_False_shift <= shift_left(c_154_104_0_False_resize, 0);
  with config_select_13 select c_154_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_154_sel is
        when "00" => c_154 <= c_154_79_0_False_shift;
        when "01" => c_154 <= c_154_75_13_False_shift;
        when "10" => c_154 <= c_154_75_0_False_shift;
        when others => c_154 <= c_154_104_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 155 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 156 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 157 and associated fundamentals [[160], [146], [0], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 158 and associated fundamentals [[160], [146], [0], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 159 and associated fundamentals [[330], [1], [8192], [37]]
  c_159_156_13_False_resize <= resize(c_156, 29);
  c_159_156_13_False_shift <= shift_left(c_159_156_13_False_resize, 13);
  c_159_134_0_False_resize <= resize(c_134, 29);
  c_159_134_0_False_shift <= shift_left(c_159_134_0_False_resize, 0);
  c_159_158_0_False_resize <= resize(c_158, 29);
  c_159_158_0_False_shift <= shift_left(c_159_158_0_False_resize, 0);
  c_159_156_0_False_resize <= resize(c_156, 29);
  c_159_156_0_False_shift <= shift_left(c_159_156_0_False_resize, 0);
  with config_select_19 select c_159_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_159_sel is
        when "00" => c_159 <= c_159_156_13_False_shift;
        when "01" => c_159 <= c_159_134_0_False_shift;
        when "10" => c_159 <= c_159_158_0_False_shift;
        when others => c_159 <= c_159_156_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 160 and associated fundamentals [[1], [82], [8192], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_154 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 161 and associated fundamentals [[1], [82], [8192], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_160 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 162 and associated fundamentals [[1], [82], [8192], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_161 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 163 and associated fundamentals [[1], [82], [8192], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_162 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 164 and associated fundamentals [[1], [82], [8192], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 165 and associated fundamentals [[1], [82], [8192], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_165 <= c_164 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 20 with id 166 and associated fundamentals [[331], [83], [0], [57]]
  with config_select_20 select c_166_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_166: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 29,
      w_o => 25,
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
      sub_i => c_166_sub_sel,
      x_i => c_165,
      y_i => c_159,
      z_o => c_166_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_166 <= c_166_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 167 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_167 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 168 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_168 <= c_167 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 169 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_169 <= c_168 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 170 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_170 <= c_169 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 171 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_171 <= c_170 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 172 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_172 <= c_171 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 173 and associated fundamentals [[8], [256], [192], [2304]]
  c_173_156_8_False_resize <= resize(c_156, 28);
  c_173_156_8_False_shift <= shift_left(c_173_156_8_False_resize, 8);
  c_173_134_7_False_resize <= c_134;
  c_173_134_7_False_shift <= shift_left(c_173_134_7_False_resize, 7);
  c_173_156_3_False_resize <= resize(c_156, 28);
  c_173_156_3_False_shift <= shift_left(c_173_156_3_False_resize, 3);
  c_173_172_0_False_resize <= resize(c_172, 28);
  c_173_172_0_False_shift <= shift_left(c_173_172_0_False_resize, 0);
  with config_select_19 select c_173_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_173_sel is
        when "00" => c_173 <= c_173_156_8_False_shift;
        when "01" => c_173 <= c_173_134_7_False_shift;
        when "10" => c_173 <= c_173_156_3_False_shift;
        when others => c_173 <= c_173_172_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 174 and associated fundamentals [[1], [256], [1536], [18]]
  c_174_79_1_False_resize <= resize(c_79, 27);
  c_174_79_1_False_shift <= shift_left(c_174_79_1_False_resize, 1);
  c_174_64_1_False_resize <= resize(c_64, 27);
  c_174_64_1_False_shift <= shift_left(c_174_64_1_False_resize, 1);
  c_174_75_8_False_resize <= resize(c_75, 27);
  c_174_75_8_False_shift <= shift_left(c_174_75_8_False_resize, 8);
  c_174_75_0_False_resize <= resize(c_75, 27);
  c_174_75_0_False_shift <= shift_left(c_174_75_0_False_resize, 0);
  with config_select_13 select c_174_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_174_sel is
        when "00" => c_174 <= c_174_79_1_False_shift;
        when "01" => c_174 <= c_174_64_1_False_shift;
        when "10" => c_174 <= c_174_75_8_False_shift;
        when others => c_174 <= c_174_75_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 175 and associated fundamentals [[1], [256], [1536], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_175 <= c_174 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 176 and associated fundamentals [[1], [256], [1536], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_175 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 177 and associated fundamentals [[1], [256], [1536], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_177 <= c_176 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 178 and associated fundamentals [[1], [256], [1536], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_178 <= c_177 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 179 and associated fundamentals [[1], [256], [1536], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_179 <= c_178 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 180 and associated fundamentals [[1], [256], [1536], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_180 <= c_179 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 20 with id 181 and associated fundamentals [[6], [768], [3264], [2340]]
  with config_select_20 select c_181_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_181: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
      w_o => 28,
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
      sub_i => c_181_sub_sel,
      x_i => c_173,
      y_i => c_180,
      z_o => c_181_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_181 <= c_181_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 182 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_182 <= c_156 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 183 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_183 <= c_182 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 184 and associated fundamentals [[4], [1], [0], [1]]
  c_184_183_0_False_resize <= resize(c_183, 18);
  c_184_183_0_False_shift <= shift_left(c_184_183_0_False_resize, 0);
  c_184_183_2_False_resize <= resize(c_183, 18);
  c_184_183_2_False_shift <= shift_left(c_184_183_2_False_resize, 2);
  c_184_166_0_False_resize <= c_166(17 downto 0);
  c_184_166_0_False_shift <= shift_left(c_184_166_0_False_resize, 0);
  with config_select_21 select c_184_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_184_sel is
        when "00" => c_184 <= c_184_183_0_False_shift;
        when "01" => c_184 <= c_184_183_2_False_shift;
        when others => c_184 <= c_184_166_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 185 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_185 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 186 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_186 <= c_185 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 187 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_187 <= c_186 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 188 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_188 <= c_187 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 189 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_189 <= c_188 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 190 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_190 <= c_189 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 191 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_191 <= c_190 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 192 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_192 <= c_191 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 193 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_193 <= c_192 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 194 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_194 <= c_193 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 195 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_195 <= c_194 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 196 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_196 <= c_195 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 197 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_197 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 198 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_198 <= c_197 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 199 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_199 <= c_198 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 200 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_200 <= c_199 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 201 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_201 <= c_200 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 202 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_202 <= c_201 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 203 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_203 <= c_202 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 204 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_204 <= c_203 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 205 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_205 <= c_134 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 206 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_206 <= c_205 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 207 and associated fundamentals [[0], [280], [0], [18]]
  c_207_206_0_False_resize <= c_206(24 downto 0);
  c_207_206_0_False_shift <= shift_left(c_207_206_0_False_resize, 0);
  c_207_166_0_False_resize <= c_166;
  c_207_166_0_False_shift <= shift_left(c_207_166_0_False_resize, 0);
  c_207_196_0_False_resize <= c_196(24 downto 0);
  c_207_196_0_False_shift <= shift_left(c_207_196_0_False_resize, 0);
  c_207_204_3_False_resize <= c_204(24 downto 0);
  c_207_204_3_False_shift <= shift_left(c_207_204_3_False_resize, 3);
  with config_select_21 select c_207_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_207_sel is
        when "00" => c_207 <= c_207_206_0_False_shift;
        when "01" => c_207 <= c_207_166_0_False_shift;
        when "10" => c_207 <= c_207_196_0_False_shift;
        when others => c_207 <= c_207_204_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 22 with id 208 and associated fundamentals [[4], [281], [0], [19]]
  inst_adder_node_208: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 25,
      w_o => 25,
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
      x_i => c_184,
      y_i => c_207,
      z_o => c_208_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_208 <= c_208_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 209 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_209 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 210 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_210 <= c_209 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 211 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_211 <= c_210 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 212 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_212 <= c_211 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 213 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_213 <= c_212 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 214 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_214 <= c_213 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 215 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_215 <= c_214 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 216 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_216 <= c_215 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 217 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_217 <= c_172 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 218 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_218 <= c_217 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 219 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_219 <= c_218 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 220 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_220 <= c_219 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 221 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_221 <= c_166 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 222 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_222 <= c_221 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 23 with id 223 and associated fundamentals [[128], [10256], [192], [114]]
  c_223_220_0_False_resize <= resize(c_220, 30);
  c_223_220_0_False_shift <= shift_left(c_223_220_0_False_resize, 0);
  c_223_222_1_False_resize <= resize(c_222, 30);
  c_223_222_1_False_shift <= shift_left(c_223_222_1_False_resize, 1);
  c_223_208_5_False_resize <= resize(c_208, 30);
  c_223_208_5_False_shift <= shift_left(c_223_208_5_False_resize, 5);
  c_223_216_0_False_resize <= c_216;
  c_223_216_0_False_shift <= shift_left(c_223_216_0_False_resize, 0);
  with config_select_23 select c_223_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_223_sel is
        when "00" => c_223 <= c_223_220_0_False_shift;
        when "01" => c_223 <= c_223_222_1_False_shift;
        when "10" => c_223 <= c_223_208_5_False_shift;
        when others => c_223 <= c_223_216_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 224 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_224 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 225 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_225 <= c_224 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 226 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_226 <= c_225 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 227 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_227 <= c_226 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 228 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_228 <= c_227 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 229 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_229 <= c_228 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 230 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_230 <= c_229 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 231 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_231 <= c_230 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 232 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_232 <= c_231 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 233 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_233 <= c_232 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 234 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_234 <= c_233 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 235 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_235 <= c_234 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 236 and associated fundamentals [[8], [-7180], [4], [114]]
  c_236_166_1_False_resize <= resize(c_166, 29);
  c_236_166_1_False_shift <= shift_left(c_236_166_1_False_resize, 1);
  c_236_183_3_False_resize <= resize(c_183, 29);
  c_236_183_3_False_shift <= shift_left(c_236_183_3_False_resize, 3);
  c_236_235_2_False_resize <= c_235;
  c_236_235_2_False_shift <= shift_left(c_236_235_2_False_resize, 2);
  c_236_204_0_False_resize <= c_204;
  c_236_204_0_False_shift <= shift_left(c_236_204_0_False_resize, 0);
  with config_select_21 select c_236_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_236_sel is
        when "00" => c_236 <= c_236_166_1_False_shift;
        when "01" => c_236 <= c_236_183_3_False_shift;
        when "10" => c_236 <= c_236_235_2_False_shift;
        when others => c_236 <= c_236_204_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 237 and associated fundamentals [[8], [-7180], [4], [114]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_237 <= c_236 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 238 and associated fundamentals [[8], [-7180], [4], [114]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_238 <= c_237 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 24 with id 239 and associated fundamentals [[120], [3076], [188], [0]]
  with config_select_24 select c_239_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_239: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
      w_o => 28,
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
      sub_i => c_239_sub_sel,
      x_i => c_223,
      y_i => c_238,
      z_o => c_239_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_239 <= c_239_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 240 and associated fundamentals [[331], [4], [20], [3648]]
  c_240_166_0_False_resize <= resize(c_166, 28);
  c_240_166_0_False_shift <= shift_left(c_240_166_0_False_resize, 0);
  c_240_183_2_False_resize <= resize(c_183, 28);
  c_240_183_2_False_shift <= shift_left(c_240_183_2_False_resize, 2);
  c_240_166_6_False_resize <= resize(c_166, 28);
  c_240_166_6_False_shift <= shift_left(c_240_166_6_False_resize, 6);
  c_240_214_0_False_resize <= c_214(27 downto 0);
  c_240_214_0_False_shift <= shift_left(c_240_214_0_False_resize, 0);
  with config_select_21 select c_240_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_240_sel is
        when "00" => c_240 <= c_240_166_0_False_shift;
        when "01" => c_240 <= c_240_183_2_False_shift;
        when "10" => c_240 <= c_240_166_6_False_shift;
        when others => c_240 <= c_240_214_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 241 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_241 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 242 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_242 <= c_241 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 243 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_243 <= c_242 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 244 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_244 <= c_243 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 245 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_245 <= c_244 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 246 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_246 <= c_245 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 247 and associated fundamentals [[2], [147], [896], [592]]
  c_247_158_4_False_resize <= resize(c_158, 26);
  c_247_158_4_False_shift <= shift_left(c_247_158_4_False_resize, 4);
  c_247_156_1_False_resize <= resize(c_156, 26);
  c_247_156_1_False_shift <= shift_left(c_247_156_1_False_resize, 1);
  c_247_246_1_False_resize <= c_246(25 downto 0);
  c_247_246_1_False_shift <= shift_left(c_247_246_1_False_resize, 1);
  c_247_134_0_False_resize <= c_134(25 downto 0);
  c_247_134_0_False_shift <= shift_left(c_247_134_0_False_resize, 0);
  with config_select_19 select c_247_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_247_sel is
        when "00" => c_247 <= c_247_158_4_False_shift;
        when "01" => c_247 <= c_247_156_1_False_shift;
        when "10" => c_247 <= c_247_246_1_False_shift;
        when others => c_247 <= c_247_134_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 248 and associated fundamentals [[2], [147], [896], [592]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_248 <= c_247 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 249 and associated fundamentals [[2], [147], [896], [592]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_249 <= c_248 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 22 with id 250 and associated fundamentals [[666], [302], [-1752], [6112]]
  with config_select_22 select c_250_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_250: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 26,
      w_o => 29,
      s_x_i => 1,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_250_sub_sel,
      x_i => c_240,
      y_i => c_249,
      z_o => c_250_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_250 <= c_250_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 251 and associated fundamentals [[1088], [-7180], [64], [2340]]
  c_251_181_0_False_resize <= resize(c_181, 29);
  c_251_181_0_False_shift <= shift_left(c_251_181_0_False_resize, 0);
  c_251_183_6_False_resize <= resize(c_183, 29);
  c_251_183_6_False_shift <= shift_left(c_251_183_6_False_resize, 6);
  c_251_218_1_False_resize <= resize(c_218, 29);
  c_251_218_1_False_shift <= shift_left(c_251_218_1_False_resize, 1);
  c_251_204_0_False_resize <= c_204;
  c_251_204_0_False_shift <= shift_left(c_251_204_0_False_resize, 0);
  with config_select_21 select c_251_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_251_sel is
        when "00" => c_251 <= c_251_181_0_False_shift;
        when "01" => c_251 <= c_251_183_6_False_shift;
        when "10" => c_251 <= c_251_218_1_False_shift;
        when others => c_251 <= c_251_204_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 252 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_252 <= c_183 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 253 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_253 <= c_252 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 254 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_254 <= c_204 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 255 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_255 <= c_254 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 256 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_256 <= c_246 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 257 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_257 <= c_256 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 258 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_258 <= c_257 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 259 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_259 <= c_258 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 23 with id 260 and associated fundamentals [[512], [9232], [16], [-11]]
  c_260_255_0_False_resize <= resize(c_255, 30);
  c_260_255_0_False_shift <= shift_left(c_260_255_0_False_resize, 0);
  c_260_253_4_False_resize <= resize(c_253, 30);
  c_260_253_4_False_shift <= shift_left(c_260_253_4_False_resize, 4);
  c_260_259_0_False_resize <= c_259;
  c_260_259_0_False_shift <= shift_left(c_260_259_0_False_resize, 0);
  c_260_208_7_False_resize <= resize(c_208, 30);
  c_260_208_7_False_shift <= shift_left(c_260_208_7_False_resize, 7);
  with config_select_23 select c_260_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_260_sel is
        when "00" => c_260 <= c_260_255_0_False_shift;
        when "01" => c_260 <= c_260_253_4_False_shift;
        when "10" => c_260 <= c_260_259_0_False_shift;
        when others => c_260 <= c_260_208_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 261 and associated fundamentals [[1088], [-7180], [64], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_261 <= c_251 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 262 and associated fundamentals [[1088], [-7180], [64], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_262 <= c_261 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 24 with id 263 and associated fundamentals [[1600], [2052], [48], [2351]]
  with config_select_24 select c_263_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_263: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 30,
      w_o => 28,
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
      sub_i => c_263_sub_sel,
      x_i => c_262,
      y_i => c_260,
      z_o => c_263_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_263 <= c_263_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 264 and associated fundamentals [[1], [3072], [256], [13]]
  c_264_39_1_False_resize <= resize(c_39, 28);
  c_264_39_1_False_shift <= shift_left(c_264_39_1_False_resize, 1);
  c_264_33_0_False_resize <= resize(c_33, 28);
  c_264_33_0_False_shift <= shift_left(c_264_33_0_False_resize, 0);
  c_264_35_0_False_resize <= resize(c_35, 28);
  c_264_35_0_False_shift <= shift_left(c_264_35_0_False_resize, 0);
  c_264_35_8_False_resize <= resize(c_35, 28);
  c_264_35_8_False_shift <= shift_left(c_264_35_8_False_resize, 8);
  with config_select_9 select c_264_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_264_sel is
        when "00" => c_264 <= c_264_39_1_False_shift;
        when "01" => c_264 <= c_264_33_0_False_shift;
        when "10" => c_264 <= c_264_35_0_False_shift;
        when others => c_264 <= c_264_35_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 265 and associated fundamentals [[0], [40], [0], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_265 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 266 and associated fundamentals [[0], [40], [0], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_266 <= c_265 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 267 and associated fundamentals [[0], [40], [0], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_267 <= c_266 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 268 and associated fundamentals [[0], [40], [0], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_268 <= c_267 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 269 and associated fundamentals [[0], [40], [0], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_269 <= c_268 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 270 and associated fundamentals [[0], [40], [0], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_270 <= c_269 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 271 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_271 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 272 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_272 <= c_271 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 273 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_273 <= c_272 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 274 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_274 <= c_273 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 275 and associated fundamentals [[0], [146], [1], [10240]]
  c_275_123_0_False_resize <= resize(c_123, 30);
  c_275_123_0_False_shift <= shift_left(c_275_123_0_False_resize, 0);
  c_275_127_0_False_resize <= resize(c_127, 30);
  c_275_127_0_False_shift <= shift_left(c_275_127_0_False_resize, 0);
  c_275_274_0_False_resize <= resize(c_274, 30);
  c_275_274_0_False_shift <= shift_left(c_275_274_0_False_resize, 0);
  c_275_270_11_False_resize <= resize(c_270, 30);
  c_275_270_11_False_shift <= shift_left(c_275_270_11_False_resize, 11);
  with config_select_17 select c_275_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_275_sel is
        when "00" => c_275 <= c_275_123_0_False_shift;
        when "01" => c_275 <= c_275_127_0_False_shift;
        when "10" => c_275 <= c_275_274_0_False_shift;
        when others => c_275 <= c_275_270_11_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 276 and associated fundamentals [[1], [3072], [256], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_276 <= c_264 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 277 and associated fundamentals [[1], [3072], [256], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_277 <= c_276 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 278 and associated fundamentals [[1], [3072], [256], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_278 <= c_277 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 279 and associated fundamentals [[1], [3072], [256], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_279 <= c_278 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 280 and associated fundamentals [[1], [3072], [256], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_280 <= c_279 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 281 and associated fundamentals [[1], [3072], [256], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_281 <= c_280 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 282 and associated fundamentals [[1], [3072], [256], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_282 <= c_281 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 283 and associated fundamentals [[1], [3072], [256], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_283 <= c_282 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 18 with id 284 and associated fundamentals [[1], [3218], [255], [10253]]
  with config_select_18 select c_284_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_284: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 30,
      w_o => 30,
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
      sub_i => c_284_sub_sel,
      x_i => c_283,
      y_i => c_275,
      z_o => c_284_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_284 <= c_284_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 285 and associated fundamentals [[0], [14368], [1], [1]]
  c_285_75_0_False_resize <= resize(c_75, 30);
  c_285_75_0_False_shift <= shift_left(c_285_75_0_False_resize, 0);
  c_285_114_1_False_resize <= resize(c_114, 30);
  c_285_114_1_False_shift <= shift_left(c_285_114_1_False_resize, 1);
  c_285_64_0_False_resize <= resize(c_64, 30);
  c_285_64_0_False_shift <= shift_left(c_285_64_0_False_resize, 0);
  with config_select_13 select c_285_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_285_sel is
        when "00" => c_285 <= c_285_75_0_False_shift;
        when "01" => c_285 <= c_285_114_1_False_shift;
        when others => c_285 <= c_285_64_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 286 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_286 <= c_274 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 287 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_287 <= c_286 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 288 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_288 <= c_287 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 289 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_289 <= c_288 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 290 and associated fundamentals [[8192], [0], [4], [7296]]
  c_290_183_13_False_resize <= resize(c_183, 29);
  c_290_183_13_False_shift <= shift_left(c_290_183_13_False_resize, 13);
  c_290_166_7_False_resize <= resize(c_166, 29);
  c_290_166_7_False_shift <= shift_left(c_290_166_7_False_resize, 7);
  c_290_183_2_False_resize <= resize(c_183, 29);
  c_290_183_2_False_shift <= shift_left(c_290_183_2_False_resize, 2);
  c_290_289_0_False_resize <= resize(c_289, 29);
  c_290_289_0_False_shift <= shift_left(c_290_289_0_False_resize, 0);
  with config_select_21 select c_290_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_290_sel is
        when "00" => c_290 <= c_290_183_13_False_shift;
        when "01" => c_290 <= c_290_166_7_False_shift;
        when "10" => c_290 <= c_290_183_2_False_shift;
        when others => c_290 <= c_290_289_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 291 and associated fundamentals [[0], [14368], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_291 <= c_285 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 292 and associated fundamentals [[0], [14368], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_292 <= c_291 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 293 and associated fundamentals [[0], [14368], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_293 <= c_292 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 294 and associated fundamentals [[0], [14368], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_294 <= c_293 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 295 and associated fundamentals [[0], [14368], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_295 <= c_294 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 296 and associated fundamentals [[0], [14368], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_296 <= c_295 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 297 and associated fundamentals [[0], [14368], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_297 <= c_296 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 298 and associated fundamentals [[0], [14368], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_298 <= c_297 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 22 with id 299 and associated fundamentals [[8192], [14368], [5], [-7295]]
  with config_select_22 select c_299_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_299: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
      w_o => 30,
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
      sub_i => c_299_sub_sel,
      x_i => c_298,
      y_i => c_290,
      z_o => c_299_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_299 <= c_299_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 300 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_300 <= c_216 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 301 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_301 <= c_300 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 302 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_302 <= c_289 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 303 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_303 <= c_302 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 304 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_304 <= c_303 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 305 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_305 <= c_304 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 306 and associated fundamentals [[1280], [1024], [0], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_306 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 307 and associated fundamentals [[1280], [1024], [0], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_307 <= c_306 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 308 and associated fundamentals [[1280], [1024], [0], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_308 <= c_307 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 309 and associated fundamentals [[1280], [1024], [0], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_309 <= c_308 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 310 and associated fundamentals [[1280], [1024], [0], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_310 <= c_309 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 311 and associated fundamentals [[1280], [1024], [0], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_311 <= c_310 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 312 and associated fundamentals [[1280], [1024], [0], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_312 <= c_311 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 313 and associated fundamentals [[1280], [1024], [0], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_313 <= c_312 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 314 and associated fundamentals [[1280], [1024], [0], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_314 <= c_313 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 315 and associated fundamentals [[1280], [1024], [0], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_315 <= c_314 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 316 and associated fundamentals [[0], [10256], [48], [904]]
  c_316_315_3_False_resize <= resize(c_315, 30);
  c_316_315_3_False_shift <= shift_left(c_316_315_3_False_resize, 3);
  c_316_301_0_False_resize <= c_301;
  c_316_301_0_False_shift <= shift_left(c_316_301_0_False_resize, 0);
  c_316_263_0_False_resize <= resize(c_263, 30);
  c_316_263_0_False_shift <= shift_left(c_316_263_0_False_resize, 0);
  c_316_305_0_False_resize <= resize(c_305, 30);
  c_316_305_0_False_shift <= shift_left(c_316_305_0_False_resize, 0);
  with config_select_25 select c_316_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_316_sel is
        when "00" => c_316 <= c_316_315_3_False_shift;
        when "01" => c_316 <= c_316_301_0_False_shift;
        when "10" => c_316 <= c_316_263_0_False_shift;
        when others => c_316 <= c_316_305_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 23 with id 317 and associated fundamentals [[256], [2], [5], [1]]
  c_317_253_1_False_resize <= resize(c_253, 24);
  c_317_253_1_False_shift <= shift_left(c_317_253_1_False_resize, 1);
  c_317_253_0_False_resize <= resize(c_253, 24);
  c_317_253_0_False_shift <= shift_left(c_317_253_0_False_resize, 0);
  c_317_299_0_False_resize <= c_299(23 downto 0);
  c_317_299_0_False_shift <= shift_left(c_317_299_0_False_resize, 0);
  c_317_253_8_False_resize <= resize(c_253, 24);
  c_317_253_8_False_shift <= shift_left(c_317_253_8_False_resize, 8);
  with config_select_23 select c_317_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_317_sel is
        when "00" => c_317 <= c_317_253_1_False_shift;
        when "01" => c_317 <= c_317_253_0_False_shift;
        when "10" => c_317 <= c_317_299_0_False_shift;
        when others => c_317 <= c_317_253_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 318 and associated fundamentals [[256], [2], [5], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_318 <= c_317 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 319 and associated fundamentals [[256], [2], [5], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_319 <= c_318 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 26 with id 320 and associated fundamentals [[256], [10258], [43], [903]]
  with config_select_26 select c_320_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_320: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 24,
      w_o => 30,
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
      sub_i => c_320_sub_sel,
      x_i => c_316,
      y_i => c_319,
      z_o => c_320_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_320 <= c_320_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 321 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_321 <= c_253 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 322 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_322 <= c_321 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 323 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_323 <= c_322 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 324 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_324 <= c_323 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 325 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_325 <= c_196 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 326 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_326 <= c_325 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 327 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_327 <= c_326 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 328 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_328 <= c_327 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 329 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_329 <= c_328 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 330 and associated fundamentals [[0], [280], [1040], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_330 <= c_329 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 331 and associated fundamentals [[8192], [14368], [5], [-7295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_331 <= c_299 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 332 and associated fundamentals [[8192], [14368], [5], [-7295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_332 <= c_331 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 333 and associated fundamentals [[8192], [14368], [5], [-7295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_333 <= c_332 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 334 and associated fundamentals [[8192], [14368], [5], [-7295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_334 <= c_333 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 335 and associated fundamentals [[8192], [10258], [1040], [1]]
  c_335_334_0_False_resize <= c_334;
  c_335_334_0_False_shift <= shift_left(c_335_334_0_False_resize, 0);
  c_335_320_0_False_resize <= c_320;
  c_335_320_0_False_shift <= shift_left(c_335_320_0_False_resize, 0);
  c_335_324_0_False_resize <= resize(c_324, 30);
  c_335_324_0_False_shift <= shift_left(c_335_324_0_False_resize, 0);
  c_335_330_0_False_resize <= resize(c_330, 30);
  c_335_330_0_False_shift <= shift_left(c_335_330_0_False_resize, 0);
  with config_select_27 select c_335_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_335_sel is
        when "00" => c_335 <= c_335_334_0_False_shift;
        when "01" => c_335 <= c_335_320_0_False_shift;
        when "10" => c_335 <= c_335_324_0_False_shift;
        when others => c_335 <= c_335_330_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 336 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_336 <= c_235 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 337 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_337 <= c_336 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 338 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_338 <= c_337 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 339 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_339 <= c_338 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 340 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_340 <= c_339 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 341 and associated fundamentals [[1024], [4096], [1], [4100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_341 <= c_340 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 342 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_342 <= c_222 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 343 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_343 <= c_342 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 344 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_344 <= c_343 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 345 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_345 <= c_344 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 346 and associated fundamentals [[1600], [2052], [48], [2351]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_346 <= c_263 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 347 and associated fundamentals [[1600], [2052], [48], [2351]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_347 <= c_346 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 348 and associated fundamentals [[1024], [10258], [0], [2351]]
  c_348_345_0_False_resize <= resize(c_345, 30);
  c_348_345_0_False_shift <= shift_left(c_348_345_0_False_resize, 0);
  c_348_341_0_False_resize <= resize(c_341, 30);
  c_348_341_0_False_shift <= shift_left(c_348_341_0_False_resize, 0);
  c_348_320_0_False_resize <= c_320;
  c_348_320_0_False_shift <= shift_left(c_348_320_0_False_resize, 0);
  c_348_347_0_False_resize <= resize(c_347, 30);
  c_348_347_0_False_shift <= shift_left(c_348_347_0_False_resize, 0);
  with config_select_27 select c_348_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_348_sel is
        when "00" => c_348 <= c_348_345_0_False_shift;
        when "01" => c_348 <= c_348_341_0_False_shift;
        when "10" => c_348 <= c_348_320_0_False_shift;
        when others => c_348 <= c_348_347_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 28 with id 349 and associated fundamentals [[576], [0], [65], [147]]
  with config_select_28 select c_349_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_349: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 30,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 4,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_349_sub_sel,
      x_i => c_335,
      y_i => c_348,
      z_o => c_349_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_349 <= c_349_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 350 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_350 <= c_181 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 351 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_351 <= c_350 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 23 with id 352 and associated fundamentals [[768], [332], [-3504], [-11]]
  c_352_255_0_False_resize <= c_255(27 downto 0);
  c_352_255_0_False_shift <= shift_left(c_352_255_0_False_resize, 0);
  c_352_250_1_False_resize <= c_250(27 downto 0);
  c_352_250_1_False_shift <= shift_left(c_352_250_1_False_resize, 1);
  c_352_351_7_False_resize <= c_351;
  c_352_351_7_False_shift <= shift_left(c_352_351_7_False_resize, 7);
  c_352_222_2_False_resize <= resize(c_222, 28);
  c_352_222_2_False_shift <= shift_left(c_352_222_2_False_resize, 2);
  with config_select_23 select c_352_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_352_sel is
        when "00" => c_352 <= c_352_255_0_False_shift;
        when "01" => c_352 <= c_352_250_1_False_shift;
        when "10" => c_352 <= c_352_351_7_False_shift;
        when others => c_352 <= c_352_222_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 353 and associated fundamentals [[2176], [512], [2049], [452]]
  c_353_309_2_False_resize <= resize(c_309, 28);
  c_353_309_2_False_shift <= shift_left(c_353_309_2_False_resize, 2);
  c_353_134_0_False_resize <= c_134;
  c_353_134_0_False_shift <= shift_left(c_353_134_0_False_resize, 0);
  c_353_172_2_False_resize <= resize(c_172, 28);
  c_353_172_2_False_shift <= shift_left(c_353_172_2_False_resize, 2);
  c_353_156_9_False_resize <= resize(c_156, 28);
  c_353_156_9_False_shift <= shift_left(c_353_156_9_False_resize, 9);
  with config_select_19 select c_353_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_353_sel is
        when "00" => c_353 <= c_353_309_2_False_shift;
        when "01" => c_353 <= c_353_134_0_False_shift;
        when "10" => c_353 <= c_353_172_2_False_shift;
        when others => c_353 <= c_353_156_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 354 and associated fundamentals [[2176], [512], [2049], [452]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_354 <= c_353 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 355 and associated fundamentals [[2176], [512], [2049], [452]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_355 <= c_354 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 356 and associated fundamentals [[2176], [512], [2049], [452]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_356 <= c_355 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 357 and associated fundamentals [[2176], [512], [2049], [452]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_357 <= c_356 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 24 with id 358 and associated fundamentals [[5120], [-692], [594], [893]]
  with config_select_24 select c_358_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_358: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 28,
      w_o => 29,
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
      sub_i => c_358_sub_sel,
      x_i => c_352,
      y_i => c_357,
      z_o => c_358_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_358 <= c_358_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 359 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_359 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 360 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_360 <= c_359 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 361 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_361 <= c_360 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 362 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_362 <= c_361 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 363 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_363 <= c_362 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 364 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_364 <= c_363 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 365 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_365 <= c_364 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 366 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_366 <= c_365 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 367 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_367 <= c_366 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 368 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_368 <= c_367 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 369 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_369 <= c_206 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 370 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_370 <= c_369 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 371 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_371 <= c_370 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 372 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_372 <= c_371 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 373 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_373 <= c_351 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 374 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_374 <= c_373 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 375 and associated fundamentals [[192], [147], [4752], [6144]]
  c_375_374_5_False_resize <= resize(c_374, 29);
  c_375_374_5_False_shift <= shift_left(c_375_374_5_False_resize, 5);
  c_375_358_3_False_resize <= c_358;
  c_375_358_3_False_shift <= shift_left(c_375_358_3_False_resize, 3);
  c_375_372_0_False_resize <= resize(c_372, 29);
  c_375_372_0_False_shift <= shift_left(c_375_372_0_False_resize, 0);
  c_375_368_8_False_resize <= resize(c_368, 29);
  c_375_368_8_False_shift <= shift_left(c_375_368_8_False_resize, 8);
  with config_select_25 select c_375_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_375_sel is
        when "00" => c_375 <= c_375_374_5_False_shift;
        when "01" => c_375 <= c_375_358_3_False_shift;
        when "10" => c_375 <= c_375_372_0_False_shift;
        when others => c_375 <= c_375_368_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 376 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_376 <= c_208 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 377 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_377 <= c_376 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 378 and associated fundamentals [[666], [302], [-1752], [6112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_378 <= c_250 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 379 and associated fundamentals [[666], [302], [-1752], [6112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_379 <= c_378 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 380 and associated fundamentals [[4], [-692], [3008], [6112]]
  c_380_377_0_False_resize <= resize(c_377, 29);
  c_380_377_0_False_shift <= shift_left(c_380_377_0_False_resize, 0);
  c_380_239_4_False_resize <= resize(c_239, 29);
  c_380_239_4_False_shift <= shift_left(c_380_239_4_False_resize, 4);
  c_380_358_0_False_resize <= c_358;
  c_380_358_0_False_shift <= shift_left(c_380_358_0_False_resize, 0);
  c_380_379_0_False_resize <= c_379;
  c_380_379_0_False_shift <= shift_left(c_380_379_0_False_resize, 0);
  with config_select_25 select c_380_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_380_sel is
        when "00" => c_380 <= c_380_377_0_False_shift;
        when "01" => c_380 <= c_380_239_4_False_shift;
        when "10" => c_380 <= c_380_358_0_False_shift;
        when others => c_380 <= c_380_379_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 26 with id 381 and associated fundamentals [[196], [-545], [7760], [32]]
  with config_select_26 select c_381_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_381: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 29,
      w_o => 29,
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
      sub_i => c_381_sub_sel,
      x_i => c_375,
      y_i => c_380,
      z_o => c_381_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_381 <= c_381_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 382 and associated fundamentals [[1], [83], [64], [-704]]
  c_382_204_6_False_resize <= c_204(25 downto 0);
  c_382_204_6_False_shift <= shift_left(c_382_204_6_False_resize, 6);
  c_382_235_6_False_resize <= c_235(25 downto 0);
  c_382_235_6_False_shift <= shift_left(c_382_235_6_False_resize, 6);
  c_382_166_0_False_resize <= resize(c_166, 26);
  c_382_166_0_False_shift <= shift_left(c_382_166_0_False_resize, 0);
  c_382_183_0_False_resize <= resize(c_183, 26);
  c_382_183_0_False_shift <= shift_left(c_382_183_0_False_resize, 0);
  with config_select_21 select c_382_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_382_sel is
        when "00" => c_382 <= c_382_204_6_False_shift;
        when "01" => c_382 <= c_382_235_6_False_shift;
        when "10" => c_382 <= c_382_166_0_False_shift;
        when others => c_382 <= c_382_183_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 383 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_383 <= c_220 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 384 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_384 <= c_383 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 385 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_385 <= c_284 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 386 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_386 <= c_385 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 387 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_387 <= c_386 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 388 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_388 <= c_387 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 389 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_389 <= c_388 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 390 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_390 <= c_389 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 391 and associated fundamentals [[120], [1312], [0], [10253]]
  c_391_384_4_False_resize <= resize(c_384, 30);
  c_391_384_4_False_shift <= shift_left(c_391_384_4_False_resize, 4);
  c_391_239_0_False_resize <= resize(c_239, 30);
  c_391_239_0_False_shift <= shift_left(c_391_239_0_False_resize, 0);
  c_391_343_0_False_resize <= resize(c_343, 30);
  c_391_343_0_False_shift <= shift_left(c_391_343_0_False_resize, 0);
  c_391_390_0_False_resize <= c_390;
  c_391_390_0_False_shift <= shift_left(c_391_390_0_False_resize, 0);
  with config_select_25 select c_391_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_391_sel is
        when "00" => c_391 <= c_391_384_4_False_shift;
        when "01" => c_391 <= c_391_239_0_False_shift;
        when "10" => c_391 <= c_391_343_0_False_shift;
        when others => c_391 <= c_391_390_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 392 and associated fundamentals [[1], [83], [64], [-704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_392 <= c_382 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 393 and associated fundamentals [[1], [83], [64], [-704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_393 <= c_392 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 394 and associated fundamentals [[1], [83], [64], [-704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_394 <= c_393 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 395 and associated fundamentals [[1], [83], [64], [-704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_395 <= c_394 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 26 with id 396 and associated fundamentals [[122], [-1146], [128], [-11661]]
  with config_select_26 select c_396_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_396: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 30,
      w_o => 30,
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
      sub_i => c_396_sub_sel,
      x_i => c_395,
      y_i => c_391,
      z_o => c_396_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_396 <= c_396_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 397 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_397 <= c_153 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 398 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_398 <= c_397 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 399 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_399 <= c_398 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 400 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_400 <= c_399 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 401 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_401 <= c_400 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 402 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_402 <= c_401 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 403 and associated fundamentals [[120], [2176], [0], [1]]
  c_403_239_0_False_resize <= c_239;
  c_403_239_0_False_shift <= shift_left(c_403_239_0_False_resize, 0);
  c_403_322_0_False_resize <= resize(c_322, 28);
  c_403_322_0_False_shift <= shift_left(c_403_322_0_False_resize, 0);
  c_403_368_0_False_resize <= resize(c_368, 28);
  c_403_368_0_False_shift <= shift_left(c_403_368_0_False_resize, 0);
  c_403_402_0_False_resize <= c_402(27 downto 0);
  c_403_402_0_False_shift <= shift_left(c_403_402_0_False_resize, 0);
  with config_select_25 select c_403_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_403_sel is
        when "00" => c_403 <= c_403_239_0_False_shift;
        when "01" => c_403 <= c_403_322_0_False_shift;
        when "10" => c_403 <= c_403_368_0_False_shift;
        when others => c_403 <= c_403_402_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 404 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_404 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 405 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_405 <= c_404 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 406 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_406 <= c_405 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 407 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_407 <= c_406 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 408 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_408 <= c_407 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 409 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_409 <= c_408 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 410 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_410 <= c_409 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 411 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_411 <= c_410 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 412 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_412 <= c_411 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 413 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_413 <= c_412 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 414 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_414 <= c_413 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 415 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_415 <= c_414 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 416 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_416 <= c_415 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 417 and associated fundamentals [[0], [7184], [1028], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_417 <= c_416 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 418 and associated fundamentals [[8192], [14368], [5], [-7295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_418 <= c_334 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 419 and associated fundamentals [[8192], [14368], [5], [-7295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_419 <= c_418 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 420 and associated fundamentals [[122], [-1146], [128], [-11661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_420 <= c_396 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 421 and associated fundamentals [[122], [-1146], [128], [-11661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_421 <= c_420 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 422 and associated fundamentals [[576], [14368], [128], [183]]
  c_422_421_0_False_resize <= c_421;
  c_422_421_0_False_shift <= shift_left(c_422_421_0_False_resize, 0);
  c_422_349_0_False_resize <= resize(c_349, 30);
  c_422_349_0_False_shift <= shift_left(c_422_349_0_False_resize, 0);
  c_422_419_0_False_resize <= c_419;
  c_422_419_0_False_shift <= shift_left(c_422_419_0_False_resize, 0);
  c_422_417_0_False_resize <= resize(c_417, 30);
  c_422_417_0_False_shift <= shift_left(c_422_417_0_False_resize, 0);
  with config_select_29 select c_422_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_422_sel is
        when "00" => c_422 <= c_422_421_0_False_shift;
        when "01" => c_422 <= c_422_349_0_False_shift;
        when "10" => c_422 <= c_422_419_0_False_shift;
        when others => c_422 <= c_422_417_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 423 and associated fundamentals [[120], [2176], [0], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_423 <= c_403 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 424 and associated fundamentals [[120], [2176], [0], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_424 <= c_423 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 425 and associated fundamentals [[120], [2176], [0], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_425 <= c_424 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 426 and associated fundamentals [[120], [2176], [0], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_426 <= c_425 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 30 with id 427 and associated fundamentals [[174], [-3048], [32], [46]]
  with config_select_30 select c_427_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_427: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 30,
      w_o => 28,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 2,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_427_sub_sel,
      x_i => c_426,
      y_i => c_422,
      z_o => c_427_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_427 <= c_427_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 428 and associated fundamentals [[120], [3076], [188], [0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_428 <= c_239 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 429 and associated fundamentals [[120], [3076], [188], [0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_429 <= c_428 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 430 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_430 <= c_390 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 431 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_431 <= c_430 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 432 and associated fundamentals [[240], [3218], [15520], [256]]
  c_432_431_0_False_resize <= c_431;
  c_432_431_0_False_shift <= shift_left(c_432_431_0_False_resize, 0);
  c_432_429_1_False_resize <= resize(c_429, 30);
  c_432_429_1_False_shift <= shift_left(c_432_429_1_False_resize, 1);
  c_432_381_1_False_resize <= resize(c_381, 30);
  c_432_381_1_False_shift <= shift_left(c_432_381_1_False_resize, 1);
  c_432_324_8_False_resize <= resize(c_324, 30);
  c_432_324_8_False_shift <= shift_left(c_432_324_8_False_resize, 8);
  with config_select_27 select c_432_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_432_sel is
        when "00" => c_432 <= c_432_431_0_False_shift;
        when "01" => c_432 <= c_432_429_1_False_shift;
        when "10" => c_432 <= c_432_381_1_False_shift;
        when others => c_432 <= c_432_324_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 433 and associated fundamentals [[1], [-2292], [1], [256]]
  c_433_431_0_False_resize <= c_431(27 downto 0);
  c_433_431_0_False_shift <= shift_left(c_433_431_0_False_resize, 0);
  c_433_324_0_False_resize <= resize(c_324, 28);
  c_433_324_0_False_shift <= shift_left(c_433_324_0_False_resize, 0);
  c_433_396_1_False_resize <= c_396(27 downto 0);
  c_433_396_1_False_shift <= shift_left(c_433_396_1_False_resize, 1);
  c_433_381_3_False_resize <= c_381(27 downto 0);
  c_433_381_3_False_shift <= shift_left(c_433_381_3_False_resize, 3);
  with config_select_27 select c_433_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_433_sel is
        when "00" => c_433 <= c_433_431_0_False_shift;
        when "01" => c_433 <= c_433_324_0_False_shift;
        when "10" => c_433 <= c_433_396_1_False_shift;
        when others => c_433 <= c_433_381_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 28 with id 434 and associated fundamentals [[239], [926], [15521], [512]]
  with config_select_28 select c_434_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_434: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 28,
      w_o => 30,
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
      sub_i => c_434_sub_sel,
      x_i => c_432,
      y_i => c_433,
      z_o => c_434_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_434 <= c_434_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 435 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_435 <= c_324 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 436 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_436 <= c_435 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 437 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_437 <= c_345 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 438 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_438 <= c_437 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 439 and associated fundamentals [[2], [926], [1], [912]]
  c_439_436_0_False_resize <= resize(c_436, 26);
  c_439_436_0_False_shift <= shift_left(c_439_436_0_False_resize, 0);
  c_439_438_4_False_resize <= resize(c_438, 26);
  c_439_438_4_False_shift <= shift_left(c_439_438_4_False_resize, 4);
  c_439_434_0_False_resize <= c_434(25 downto 0);
  c_439_434_0_False_shift <= shift_left(c_439_434_0_False_resize, 0);
  c_439_436_1_False_resize <= resize(c_436, 26);
  c_439_436_1_False_shift <= shift_left(c_439_436_1_False_resize, 1);
  with config_select_29 select c_439_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_439_sel is
        when "00" => c_439 <= c_439_436_0_False_shift;
        when "01" => c_439 <= c_439_438_4_False_shift;
        when "10" => c_439 <= c_439_434_0_False_shift;
        when others => c_439 <= c_439_436_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 440 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_440 <= c_384 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 441 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_441 <= c_440 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 442 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_442 <= c_441 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 443 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_443 <= c_442 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 444 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_444 <= c_443 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 445 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_445 <= c_444 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 446 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_446 <= c_438 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 447 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_447 <= c_446 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 448 and associated fundamentals [[239], [926], [15521], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_448 <= c_434 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 449 and associated fundamentals [[239], [926], [15521], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_449 <= c_448 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 31 with id 450 and associated fundamentals [[478], [332], [32], [9]]
  c_450_427_0_False_resize <= c_427(24 downto 0);
  c_450_427_0_False_shift <= shift_left(c_450_427_0_False_resize, 0);
  c_450_447_2_False_resize <= c_447;
  c_450_447_2_False_shift <= shift_left(c_450_447_2_False_resize, 2);
  c_450_445_0_False_resize <= c_445(24 downto 0);
  c_450_445_0_False_shift <= shift_left(c_450_445_0_False_resize, 0);
  c_450_449_1_False_resize <= c_449(24 downto 0);
  c_450_449_1_False_shift <= shift_left(c_450_449_1_False_resize, 1);
  with config_select_31 select c_450_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_450_sel is
        when "00" => c_450 <= c_450_427_0_False_shift;
        when "01" => c_450 <= c_450_447_2_False_shift;
        when "10" => c_450 <= c_450_445_0_False_shift;
        when others => c_450 <= c_450_449_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 451 and associated fundamentals [[2], [926], [1], [912]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_451 <= c_439 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 452 and associated fundamentals [[2], [926], [1], [912]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_452 <= c_451 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 32 with id 453 and associated fundamentals [[958], [262], [65], [930]]
  with config_select_32 select c_453_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_453: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_453_sub_sel,
      x_i => c_452,
      y_i => c_450,
      z_o => c_453_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_453 <= c_453_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 454 and associated fundamentals [[1536], [146], [1], [288]]
  c_454_158_0_False_resize <= resize(c_158, 27);
  c_454_158_0_False_shift <= shift_left(c_454_158_0_False_resize, 0);
  c_454_153_2_False_resize <= c_153(26 downto 0);
  c_454_153_2_False_shift <= shift_left(c_454_153_2_False_resize, 2);
  c_454_134_4_False_resize <= c_134(26 downto 0);
  c_454_134_4_False_shift <= shift_left(c_454_134_4_False_resize, 4);
  c_454_156_0_False_resize <= resize(c_156, 27);
  c_454_156_0_False_shift <= shift_left(c_454_156_0_False_resize, 0);
  with config_select_19 select c_454_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_454_sel is
        when "00" => c_454 <= c_454_158_0_False_shift;
        when "01" => c_454 <= c_454_153_2_False_shift;
        when "10" => c_454 <= c_454_134_4_False_shift;
        when others => c_454 <= c_454_156_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 455 and associated fundamentals [[160], [146], [0], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_455 <= c_158 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 456 and associated fundamentals [[160], [146], [0], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_456 <= c_455 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 457 and associated fundamentals [[160], [146], [0], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_457 <= c_456 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 458 and associated fundamentals [[160], [146], [0], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_458 <= c_457 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 459 and associated fundamentals [[160], [146], [0], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_459 <= c_458 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 460 and associated fundamentals [[160], [146], [0], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_460 <= c_459 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 461 and associated fundamentals [[666], [280], [188], [74]]
  c_461_239_0_False_resize <= c_239(25 downto 0);
  c_461_239_0_False_shift <= shift_left(c_461_239_0_False_resize, 0);
  c_461_379_0_False_resize <= c_379(25 downto 0);
  c_461_379_0_False_shift <= shift_left(c_461_379_0_False_resize, 0);
  c_461_328_0_False_resize <= c_328(25 downto 0);
  c_461_328_0_False_shift <= shift_left(c_461_328_0_False_resize, 0);
  c_461_460_1_False_resize <= resize(c_460, 26);
  c_461_460_1_False_shift <= shift_left(c_461_460_1_False_resize, 1);
  with config_select_25 select c_461_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_461_sel is
        when "00" => c_461 <= c_461_239_0_False_shift;
        when "01" => c_461 <= c_461_379_0_False_shift;
        when "10" => c_461 <= c_461_328_0_False_shift;
        when others => c_461 <= c_461_460_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 462 and associated fundamentals [[1536], [146], [1], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_462 <= c_454 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 463 and associated fundamentals [[1536], [146], [1], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_463 <= c_462 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 464 and associated fundamentals [[1536], [146], [1], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_464 <= c_463 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 465 and associated fundamentals [[1536], [146], [1], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_465 <= c_464 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 466 and associated fundamentals [[1536], [146], [1], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_466 <= c_465 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 467 and associated fundamentals [[1536], [146], [1], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_467 <= c_466 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 26 with id 468 and associated fundamentals [[870], [426], [189], [362]]
  with config_select_26 select c_468_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_468: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_468_sub_sel,
      x_i => c_467,
      y_i => c_461,
      z_o => c_468_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_468 <= c_468_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 469 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_469 <= c_368 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 470 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_470 <= c_469 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 471 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_471 <= c_470 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 472 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_472 <= c_471 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 473 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_473 <= c_472 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 474 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_474 <= c_473 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 475 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_475 <= c_474 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 476 and associated fundamentals [[0], [1536], [0], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_476 <= c_475 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 477 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_477 <= c_259 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 478 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_478 <= c_477 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 479 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_479 <= c_478 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 480 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_480 <= c_479 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 481 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_481 <= c_480 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 482 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_482 <= c_481 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 483 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_483 <= c_482 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 484 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_484 <= c_483 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 485 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_485 <= c_484 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 486 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_486 <= c_485 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 487 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_487 <= c_402 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 488 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_488 <= c_487 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 489 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_489 <= c_488 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 490 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_490 <= c_489 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 491 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_491 <= c_490 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 492 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_492 <= c_491 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 493 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_493 <= c_492 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 494 and associated fundamentals [[384], [2176], [272], [9856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_494 <= c_493 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 33 with id 495 and associated fundamentals [[0], [9232], [65], [9856]]
  c_495_453_0_False_resize <= resize(c_453, 30);
  c_495_453_0_False_shift <= shift_left(c_495_453_0_False_resize, 0);
  c_495_494_0_False_resize <= c_494;
  c_495_494_0_False_shift <= shift_left(c_495_494_0_False_resize, 0);
  c_495_486_0_False_resize <= c_486;
  c_495_486_0_False_shift <= shift_left(c_495_486_0_False_resize, 0);
  c_495_476_0_False_resize <= resize(c_476, 30);
  c_495_476_0_False_shift <= shift_left(c_495_476_0_False_resize, 0);
  with config_select_33 select c_495_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_495_sel is
        when "00" => c_495 <= c_495_453_0_False_shift;
        when "01" => c_495 <= c_495_494_0_False_shift;
        when "10" => c_495 <= c_495_486_0_False_shift;
        when others => c_495 <= c_495_476_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 496 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_496 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 497 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_497 <= c_496 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 498 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_498 <= c_497 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 499 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_499 <= c_498 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 500 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_500 <= c_499 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 501 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_501 <= c_500 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 502 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_502 <= c_501 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 503 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_503 <= c_502 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 504 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_504 <= c_503 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 505 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_505 <= c_504 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 506 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_506 <= c_505 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 507 and associated fundamentals [[0], [144], [0], [196]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_507 <= c_506 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 508 and associated fundamentals [[1600], [2052], [48], [2351]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_508 <= c_347 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 509 and associated fundamentals [[1600], [2052], [48], [2351]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_509 <= c_508 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 510 and associated fundamentals [[1600], [144], [15521], [512]]
  c_510_507_0_False_resize <= resize(c_507, 30);
  c_510_507_0_False_shift <= shift_left(c_510_507_0_False_resize, 0);
  c_510_434_0_False_resize <= c_434;
  c_510_434_0_False_shift <= shift_left(c_510_434_0_False_resize, 0);
  c_510_509_0_False_resize <= resize(c_509, 30);
  c_510_509_0_False_shift <= shift_left(c_510_509_0_False_resize, 0);
  with config_select_29 select c_510_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_510_sel is
        when "00" => c_510 <= c_510_507_0_False_shift;
        when "01" => c_510 <= c_510_434_0_False_shift;
        when others => c_510 <= c_510_509_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 511 and associated fundamentals [[1600], [144], [15521], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_511 <= c_510 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 512 and associated fundamentals [[1600], [144], [15521], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_512 <= c_511 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 513 and associated fundamentals [[1600], [144], [15521], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_513 <= c_512 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 514 and associated fundamentals [[1600], [144], [15521], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_514 <= c_513 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 34 with id 515 and associated fundamentals [[50], [293], [-483], [292]]
  with config_select_34 select c_515_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_515: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 30,
      w_o => 25,
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
      sub_i => c_515_sub_sel,
      x_i => c_495,
      y_i => c_514,
      z_o => c_515_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_515 <= c_515_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 516 and associated fundamentals [[666], [83], [1024], [893]]
  c_516_358_0_False_resize <= c_358(25 downto 0);
  c_516_358_0_False_shift <= shift_left(c_516_358_0_False_resize, 0);
  c_516_379_0_False_resize <= c_379(25 downto 0);
  c_516_379_0_False_shift <= shift_left(c_516_379_0_False_resize, 0);
  c_516_343_0_False_resize <= resize(c_343, 26);
  c_516_343_0_False_shift <= shift_left(c_516_343_0_False_resize, 0);
  c_516_322_10_False_resize <= resize(c_322, 26);
  c_516_322_10_False_shift <= shift_left(c_516_322_10_False_resize, 10);
  with config_select_25 select c_516_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_516_sel is
        when "00" => c_516 <= c_516_358_0_False_shift;
        when "01" => c_516 <= c_516_379_0_False_shift;
        when "10" => c_516 <= c_516_343_0_False_shift;
        when others => c_516 <= c_516_322_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 517 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_517 <= c_436 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 518 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_518 <= c_517 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 519 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_519 <= c_518 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 520 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_520 <= c_519 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 521 and associated fundamentals [[174], [-3048], [32], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_521 <= c_427 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 522 and associated fundamentals [[174], [-3048], [32], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_522 <= c_521 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 33 with id 523 and associated fundamentals [[1], [8], [65], [46]]
  c_523_520_3_False_resize <= resize(c_520, 23);
  c_523_520_3_False_shift <= shift_left(c_523_520_3_False_resize, 3);
  c_523_522_0_False_resize <= c_522(22 downto 0);
  c_523_522_0_False_shift <= shift_left(c_523_522_0_False_resize, 0);
  c_523_453_0_False_resize <= c_453(22 downto 0);
  c_523_453_0_False_shift <= shift_left(c_523_453_0_False_resize, 0);
  c_523_520_0_False_resize <= resize(c_520, 23);
  c_523_520_0_False_shift <= shift_left(c_523_520_0_False_resize, 0);
  with config_select_33 select c_523_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_523_sel is
        when "00" => c_523 <= c_523_520_3_False_shift;
        when "01" => c_523 <= c_523_522_0_False_shift;
        when "10" => c_523 <= c_523_453_0_False_shift;
        when others => c_523 <= c_523_520_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 524 and associated fundamentals [[666], [83], [1024], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_524 <= c_516 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 525 and associated fundamentals [[666], [83], [1024], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_525 <= c_524 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 526 and associated fundamentals [[666], [83], [1024], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_526 <= c_525 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 527 and associated fundamentals [[666], [83], [1024], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_527 <= c_526 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 528 and associated fundamentals [[666], [83], [1024], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_528 <= c_527 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 529 and associated fundamentals [[666], [83], [1024], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_529 <= c_528 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 530 and associated fundamentals [[666], [83], [1024], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_530 <= c_529 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 531 and associated fundamentals [[666], [83], [1024], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_531 <= c_530 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 34 with id 532 and associated fundamentals [[665], [91], [959], [939]]
  with config_select_34 select c_532_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_532: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      sub_i => c_532_sub_sel,
      x_i => c_531,
      y_i => c_523,
      z_o => c_532_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_532 <= c_532_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 533 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_533 <= c_447 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 534 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_534 <= c_533 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 535 and associated fundamentals [[122], [-1146], [128], [-11661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_535 <= c_421 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 536 and associated fundamentals [[122], [-1146], [128], [-11661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_536 <= c_535 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 537 and associated fundamentals [[122], [-1146], [128], [-11661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_537 <= c_536 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 538 and associated fundamentals [[122], [-1146], [128], [-11661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_538 <= c_537 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 33 with id 539 and associated fundamentals [[331], [524], [1], [-11661]]
  c_539_520_0_False_resize <= resize(c_520, 30);
  c_539_520_0_False_shift <= shift_left(c_539_520_0_False_resize, 0);
  c_539_534_0_False_resize <= resize(c_534, 30);
  c_539_534_0_False_shift <= shift_left(c_539_534_0_False_resize, 0);
  c_539_453_1_False_resize <= resize(c_453, 30);
  c_539_453_1_False_shift <= shift_left(c_539_453_1_False_resize, 1);
  c_539_538_0_False_resize <= c_538;
  c_539_538_0_False_shift <= shift_left(c_539_538_0_False_resize, 0);
  with config_select_33 select c_539_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_539_sel is
        when "00" => c_539 <= c_539_520_0_False_shift;
        when "01" => c_539 <= c_539_534_0_False_shift;
        when "10" => c_539 <= c_539_453_1_False_shift;
        when others => c_539 <= c_539_538_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 540 and associated fundamentals [[4], [2], [448], [8192]]
  c_540_436_2_False_resize <= resize(c_436, 29);
  c_540_436_2_False_shift <= shift_left(c_540_436_2_False_resize, 2);
  c_540_436_1_False_resize <= resize(c_436, 29);
  c_540_436_1_False_shift <= shift_left(c_540_436_1_False_resize, 1);
  c_540_482_0_False_resize <= c_482(28 downto 0);
  c_540_482_0_False_shift <= shift_left(c_540_482_0_False_resize, 0);
  c_540_434_4_False_resize <= c_434(28 downto 0);
  c_540_434_4_False_shift <= shift_left(c_540_434_4_False_resize, 4);
  with config_select_29 select c_540_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_540_sel is
        when "00" => c_540 <= c_540_436_2_False_shift;
        when "01" => c_540 <= c_540_436_1_False_shift;
        when "10" => c_540 <= c_540_482_0_False_shift;
        when others => c_540 <= c_540_434_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 541 and associated fundamentals [[4], [2], [448], [8192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_541 <= c_540 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 542 and associated fundamentals [[4], [2], [448], [8192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_542 <= c_541 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 543 and associated fundamentals [[4], [2], [448], [8192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_543 <= c_542 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 544 and associated fundamentals [[4], [2], [448], [8192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_544 <= c_543 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 34 with id 545 and associated fundamentals [[335], [526], [-447], [-3469]]
  with config_select_34 select c_545_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_545: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
      w_o => 28,
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
      sub_i => c_545_sub_sel,
      x_i => c_539,
      y_i => c_544,
      z_o => c_545_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_545 <= c_545_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 546 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_546 <= c_486 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 547 and associated fundamentals [[10], [9232], [448], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_547 <= c_546 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 548 and associated fundamentals [[1600], [2052], [48], [2351]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_548 <= c_509 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 549 and associated fundamentals [[1600], [2052], [48], [2351]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_549 <= c_548 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 550 and associated fundamentals [[1600], [2052], [48], [2351]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_550 <= c_549 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 551 and associated fundamentals [[1600], [2052], [48], [2351]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_551 <= c_550 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 552 and associated fundamentals [[1600], [2052], [48], [2351]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_552 <= c_551 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 553 and associated fundamentals [[1600], [2052], [48], [2351]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_553 <= c_552 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 554 and associated fundamentals [[196], [-545], [7760], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_554 <= c_381 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 555 and associated fundamentals [[196], [-545], [7760], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_555 <= c_554 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 556 and associated fundamentals [[196], [-545], [7760], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_556 <= c_555 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 557 and associated fundamentals [[196], [-545], [7760], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_557 <= c_556 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 558 and associated fundamentals [[196], [-545], [7760], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_558 <= c_557 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 559 and associated fundamentals [[196], [-545], [7760], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_559 <= c_558 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 560 and associated fundamentals [[196], [-545], [7760], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_560 <= c_559 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 561 and associated fundamentals [[196], [-545], [7760], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_561 <= c_560 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 35 with id 562 and associated fundamentals [[40], [-545], [48], [9344]]
  c_562_515_5_False_resize <= resize(c_515, 30);
  c_562_515_5_False_shift <= shift_left(c_562_515_5_False_resize, 5);
  c_562_553_0_False_resize <= resize(c_553, 30);
  c_562_553_0_False_shift <= shift_left(c_562_553_0_False_resize, 0);
  c_562_561_0_False_resize <= resize(c_561, 30);
  c_562_561_0_False_shift <= shift_left(c_562_561_0_False_resize, 0);
  c_562_547_2_False_resize <= c_547;
  c_562_547_2_False_shift <= shift_left(c_562_547_2_False_resize, 2);
  with config_select_35 select c_562_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_562_sel is
        when "00" => c_562 <= c_562_515_5_False_shift;
        when "01" => c_562 <= c_562_553_0_False_shift;
        when "10" => c_562 <= c_562_561_0_False_shift;
        when others => c_562 <= c_562_547_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 563 and associated fundamentals [[1024], [332], [1], [10253]]
  c_563_320_2_False_resize <= c_320;
  c_563_320_2_False_shift <= shift_left(c_563_320_2_False_resize, 2);
  c_563_345_2_False_resize <= resize(c_345, 30);
  c_563_345_2_False_shift <= shift_left(c_563_345_2_False_resize, 2);
  c_563_431_0_False_resize <= c_431;
  c_563_431_0_False_shift <= shift_left(c_563_431_0_False_resize, 0);
  c_563_341_0_False_resize <= resize(c_341, 30);
  c_563_341_0_False_shift <= shift_left(c_563_341_0_False_resize, 0);
  with config_select_27 select c_563_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_563_sel is
        when "00" => c_563 <= c_563_320_2_False_shift;
        when "01" => c_563 <= c_563_345_2_False_shift;
        when "10" => c_563 <= c_563_431_0_False_shift;
        when others => c_563 <= c_563_341_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 564 and associated fundamentals [[1024], [332], [1], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_564 <= c_563 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 565 and associated fundamentals [[1024], [332], [1], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_565 <= c_564 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 566 and associated fundamentals [[1024], [332], [1], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_566 <= c_565 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 567 and associated fundamentals [[1024], [332], [1], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_567 <= c_566 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 568 and associated fundamentals [[1024], [332], [1], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_568 <= c_567 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 569 and associated fundamentals [[1024], [332], [1], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_569 <= c_568 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 570 and associated fundamentals [[1024], [332], [1], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_570 <= c_569 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 571 and associated fundamentals [[1024], [332], [1], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_571 <= c_570 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 36 with id 572 and associated fundamentals [[-984], [-877], [49], [-909]]
  with config_select_36 select c_572_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_572: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 30,
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
      sub_i => c_572_sub_sel,
      x_i => c_562,
      y_i => c_571,
      z_o => c_572_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_572 <= c_572_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 573 and associated fundamentals [[488], [1852], [0], [183]]
  c_573_438_0_False_resize <= resize(c_438, 27);
  c_573_438_0_False_shift <= shift_left(c_573_438_0_False_resize, 0);
  c_573_421_2_False_resize <= c_421(26 downto 0);
  c_573_421_2_False_shift <= shift_left(c_573_421_2_False_resize, 2);
  c_573_434_1_False_resize <= c_434(26 downto 0);
  c_573_434_1_False_shift <= shift_left(c_573_434_1_False_resize, 1);
  c_573_417_0_False_resize <= c_417(26 downto 0);
  c_573_417_0_False_shift <= shift_left(c_573_417_0_False_resize, 0);
  with config_select_29 select c_573_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_573_sel is
        when "00" => c_573 <= c_573_438_0_False_shift;
        when "01" => c_573 <= c_573_421_2_False_shift;
        when "10" => c_573 <= c_573_434_1_False_shift;
        when others => c_573 <= c_573_417_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 574 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_574 <= c_255 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 575 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_575 <= c_574 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 576 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_576 <= c_575 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 577 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_577 <= c_576 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 578 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_578 <= c_577 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 579 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_579 <= c_578 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 580 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_580 <= c_579 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 581 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_581 <= c_580 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 582 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_582 <= c_581 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 583 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_583 <= c_582 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 584 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_584 <= c_583 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 585 and associated fundamentals [[0], [-7180], [0], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_585 <= c_584 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 586 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_586 <= c_372 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 587 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_587 <= c_586 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 588 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_588 <= c_587 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 589 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_589 <= c_588 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 590 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_590 <= c_589 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 591 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_591 <= c_590 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 592 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_592 <= c_591 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 593 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_593 <= c_592 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 594 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_594 <= c_593 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 595 and associated fundamentals [[330], [147], [2049], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_595 <= c_594 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 35 with id 596 and associated fundamentals [[335], [1176], [-483], [-704]]
  c_596_585_6_False_resize <= c_585(26 downto 0);
  c_596_585_6_False_shift <= shift_left(c_596_585_6_False_resize, 6);
  c_596_545_0_False_resize <= c_545(26 downto 0);
  c_596_545_0_False_shift <= shift_left(c_596_545_0_False_resize, 0);
  c_596_515_0_False_resize <= resize(c_515, 27);
  c_596_515_0_False_shift <= shift_left(c_596_515_0_False_resize, 0);
  c_596_595_3_False_resize <= c_595(26 downto 0);
  c_596_595_3_False_shift <= shift_left(c_596_595_3_False_resize, 3);
  with config_select_35 select c_596_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_596_sel is
        when "00" => c_596 <= c_596_585_6_False_shift;
        when "01" => c_596 <= c_596_545_0_False_shift;
        when "10" => c_596 <= c_596_515_0_False_shift;
        when others => c_596 <= c_596_595_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 597 and associated fundamentals [[488], [1852], [0], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_597 <= c_573 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 598 and associated fundamentals [[488], [1852], [0], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_598 <= c_597 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 599 and associated fundamentals [[488], [1852], [0], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_599 <= c_598 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 600 and associated fundamentals [[488], [1852], [0], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_600 <= c_599 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 601 and associated fundamentals [[488], [1852], [0], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_601 <= c_600 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 602 and associated fundamentals [[488], [1852], [0], [183]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_602 <= c_601 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 36 with id 603 and associated fundamentals [[153], [676], [483], [887]]
  inst_adder_node_603: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 27,
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
      x_i => c_602,
      y_i => c_596,
      z_o => c_603_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_603 <= c_603_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 604 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_604 <= c_520 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 605 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_605 <= c_604 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 606 and associated fundamentals [[256], [10258], [43], [903]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_606 <= c_320 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 607 and associated fundamentals [[256], [10258], [43], [903]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_607 <= c_606 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 608 and associated fundamentals [[256], [10258], [43], [903]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_608 <= c_607 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 609 and associated fundamentals [[256], [10258], [43], [903]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_609 <= c_608 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 610 and associated fundamentals [[256], [10258], [43], [903]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_610 <= c_609 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 611 and associated fundamentals [[256], [10258], [43], [903]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_611 <= c_610 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 612 and associated fundamentals [[256], [10258], [43], [903]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_612 <= c_611 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 613 and associated fundamentals [[256], [10258], [43], [903]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_613 <= c_612 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 35 with id 614 and associated fundamentals [[392], [293], [172], [1]]
  c_614_515_0_False_resize <= c_515;
  c_614_515_0_False_shift <= shift_left(c_614_515_0_False_resize, 0);
  c_614_605_0_False_resize <= resize(c_605, 25);
  c_614_605_0_False_shift <= shift_left(c_614_605_0_False_resize, 0);
  c_614_613_2_False_resize <= c_613(24 downto 0);
  c_614_613_2_False_shift <= shift_left(c_614_613_2_False_resize, 2);
  c_614_561_1_False_resize <= c_561(24 downto 0);
  c_614_561_1_False_shift <= shift_left(c_614_561_1_False_resize, 1);
  with config_select_35 select c_614_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_614_sel is
        when "00" => c_614 <= c_614_515_0_False_shift;
        when "01" => c_614 <= c_614_605_0_False_shift;
        when "10" => c_614 <= c_614_613_2_False_shift;
        when others => c_614 <= c_614_561_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 615 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_615 <= c_534 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 616 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_616 <= c_615 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 617 and associated fundamentals [[666], [302], [-1752], [6112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_617 <= c_379 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 618 and associated fundamentals [[666], [302], [-1752], [6112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_618 <= c_617 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 619 and associated fundamentals [[666], [302], [-1752], [6112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_619 <= c_618 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 620 and associated fundamentals [[666], [302], [-1752], [6112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_620 <= c_619 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 621 and associated fundamentals [[666], [302], [-1752], [6112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_621 <= c_620 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 622 and associated fundamentals [[666], [302], [-1752], [6112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_622 <= c_621 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 623 and associated fundamentals [[666], [302], [-1752], [6112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_623 <= c_622 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 624 and associated fundamentals [[666], [302], [-1752], [6112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_624 <= c_623 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 625 and associated fundamentals [[666], [302], [-1752], [6112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_625 <= c_624 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 626 and associated fundamentals [[666], [302], [-1752], [6112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_626 <= c_625 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 627 and associated fundamentals [[870], [426], [189], [362]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_627 <= c_468 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 628 and associated fundamentals [[870], [426], [189], [362]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_628 <= c_627 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 629 and associated fundamentals [[870], [426], [189], [362]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_629 <= c_628 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 630 and associated fundamentals [[870], [426], [189], [362]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_630 <= c_629 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 631 and associated fundamentals [[870], [426], [189], [362]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_631 <= c_630 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 632 and associated fundamentals [[870], [426], [189], [362]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_632 <= c_631 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 633 and associated fundamentals [[870], [426], [189], [362]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_633 <= c_632 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 634 and associated fundamentals [[870], [426], [189], [362]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_634 <= c_633 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 35 with id 635 and associated fundamentals [[331], [182], [189], [6112]]
  c_635_532_1_False_resize <= resize(c_532, 29);
  c_635_532_1_False_shift <= shift_left(c_635_532_1_False_resize, 1);
  c_635_626_0_False_resize <= c_626;
  c_635_626_0_False_shift <= shift_left(c_635_626_0_False_resize, 0);
  c_635_634_0_False_resize <= resize(c_634, 29);
  c_635_634_0_False_shift <= shift_left(c_635_634_0_False_resize, 0);
  c_635_616_0_False_resize <= resize(c_616, 29);
  c_635_616_0_False_shift <= shift_left(c_635_616_0_False_resize, 0);
  with config_select_35 select c_635_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_635_sel is
        when "00" => c_635 <= c_635_532_1_False_shift;
        when "01" => c_635 <= c_635_626_0_False_shift;
        when "10" => c_635 <= c_635_634_0_False_shift;
        when others => c_635 <= c_635_616_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 36 with id 636 and associated fundamentals [[61], [475], [361], [-6111]]
  with config_select_36 select c_636_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_636: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 29,
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
      sub_i => c_636_sub_sel,
      x_i => c_614,
      y_i => c_635,
      z_o => c_636_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_636 <= c_636_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 637 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_637 <= c_445 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 638 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_638 <= c_637 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 639 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_639 <= c_638 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 640 and associated fundamentals [[544], [82], [192], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_640 <= c_639 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 641 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_641 <= c_374 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 642 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_642 <= c_641 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 643 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_643 <= c_642 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 644 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_644 <= c_643 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 645 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_645 <= c_644 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 646 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_646 <= c_645 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 647 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_647 <= c_646 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 648 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_648 <= c_647 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 649 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_649 <= c_648 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 650 and associated fundamentals [[6], [768], [3264], [2340]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_650 <= c_649 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 35 with id 651 and associated fundamentals [[665], [768], [768], [2896]]
  c_651_634_3_False_resize <= resize(c_634, 28);
  c_651_634_3_False_shift <= shift_left(c_651_634_3_False_resize, 3);
  c_651_650_0_False_resize <= c_650;
  c_651_650_0_False_shift <= shift_left(c_651_650_0_False_resize, 0);
  c_651_532_0_False_resize <= resize(c_532, 28);
  c_651_532_0_False_shift <= shift_left(c_651_532_0_False_resize, 0);
  c_651_640_2_False_resize <= resize(c_640, 28);
  c_651_640_2_False_shift <= shift_left(c_651_640_2_False_resize, 2);
  with config_select_35 select c_651_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_651_sel is
        when "00" => c_651 <= c_651_634_3_False_shift;
        when "01" => c_651 <= c_651_650_0_False_shift;
        when "10" => c_651 <= c_651_532_0_False_shift;
        when others => c_651 <= c_651_640_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 652 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_652 <= c_377 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 653 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_653 <= c_652 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 654 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_654 <= c_653 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 655 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_655 <= c_654 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 656 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_656 <= c_655 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 657 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_657 <= c_656 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 658 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_658 <= c_657 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 659 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_659 <= c_658 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 660 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_660 <= c_659 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 661 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_661 <= c_660 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 35 with id 662 and associated fundamentals [[64], [91], [43], [-3469]]
  c_662_545_0_False_resize <= c_545;
  c_662_545_0_False_shift <= shift_left(c_662_545_0_False_resize, 0);
  c_662_613_0_False_resize <= c_613(27 downto 0);
  c_662_613_0_False_shift <= shift_left(c_662_613_0_False_resize, 0);
  c_662_661_4_False_resize <= resize(c_661, 28);
  c_662_661_4_False_shift <= shift_left(c_662_661_4_False_resize, 4);
  c_662_532_0_False_resize <= resize(c_532, 28);
  c_662_532_0_False_shift <= shift_left(c_662_532_0_False_resize, 0);
  with config_select_35 select c_662_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_662_sel is
        when "00" => c_662 <= c_662_545_0_False_shift;
        when "01" => c_662 <= c_662_613_0_False_shift;
        when "10" => c_662 <= c_662_661_4_False_shift;
        when others => c_662 <= c_662_532_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 36 with id 663 and associated fundamentals [[729], [859], [811], [-573]]
  inst_adder_node_663: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 28,
      w_o => 26,
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
      x_i => c_651,
      y_i => c_662,
      z_o => c_663_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_663 <= c_663_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 664 and associated fundamentals [[870], [426], [189], [362]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_664 <= c_634 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 665 and associated fundamentals [[870], [426], [189], [362]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_665 <= c_664 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 666 and associated fundamentals [[665], [91], [959], [939]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_666 <= c_532 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 667 and associated fundamentals [[665], [91], [959], [939]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_667 <= c_666 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 668 and associated fundamentals [[870], [364], [98], [887]]
  c_668_603_0_False_resize <= c_603;
  c_668_603_0_False_shift <= shift_left(c_668_603_0_False_resize, 0);
  c_668_667_2_False_resize <= c_667;
  c_668_667_2_False_shift <= shift_left(c_668_667_2_False_resize, 2);
  c_668_665_0_False_resize <= c_665;
  c_668_665_0_False_shift <= shift_left(c_668_665_0_False_resize, 0);
  c_668_572_1_False_resize <= c_572;
  c_668_572_1_False_shift <= shift_left(c_668_572_1_False_resize, 1);
  with config_select_37 select c_668_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_668_sel is
        when "00" => c_668 <= c_668_603_0_False_shift;
        when "01" => c_668 <= c_668_667_2_False_shift;
        when "10" => c_668 <= c_668_665_0_False_shift;
        when others => c_668 <= c_668_572_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 33 with id 669 and associated fundamentals [[958], [83], [378], [724]]
  c_669_632_1_False_resize <= c_632;
  c_669_632_1_False_shift <= shift_left(c_669_632_1_False_resize, 1);
  c_669_534_0_False_resize <= resize(c_534, 26);
  c_669_534_0_False_shift <= shift_left(c_669_534_0_False_resize, 0);
  c_669_453_0_False_resize <= c_453;
  c_669_453_0_False_shift <= shift_left(c_669_453_0_False_resize, 0);
  with config_select_33 select c_669_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_669_sel is
        when "00" => c_669 <= c_669_632_1_False_shift;
        when "01" => c_669 <= c_669_534_0_False_shift;
        when others => c_669 <= c_669_453_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 670 and associated fundamentals [[958], [262], [65], [930]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_670 <= c_453 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 671 and associated fundamentals [[958], [262], [65], [930]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_671 <= c_670 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 672 and associated fundamentals [[958], [262], [65], [930]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_672 <= c_671 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 673 and associated fundamentals [[958], [262], [65], [930]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_673 <= c_672 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 674 and associated fundamentals [[335], [526], [-447], [-3469]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_674 <= c_545 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 675 and associated fundamentals [[335], [526], [-447], [-3469]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_675 <= c_674 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 676 and associated fundamentals [[61], [526], [959], [930]]
  c_676_667_0_False_resize <= c_667;
  c_676_667_0_False_shift <= shift_left(c_676_667_0_False_resize, 0);
  c_676_636_0_False_resize <= c_636;
  c_676_636_0_False_shift <= shift_left(c_676_636_0_False_resize, 0);
  c_676_675_0_False_resize <= c_675(25 downto 0);
  c_676_675_0_False_shift <= shift_left(c_676_675_0_False_resize, 0);
  c_676_673_0_False_resize <= c_673;
  c_676_673_0_False_shift <= shift_left(c_676_673_0_False_resize, 0);
  with config_select_37 select c_676_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_676_sel is
        when "00" => c_676 <= c_676_667_0_False_shift;
        when "01" => c_676 <= c_676_636_0_False_shift;
        when "10" => c_676 <= c_676_675_0_False_shift;
        when others => c_676 <= c_676_673_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 677 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_677 <= c_431 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 678 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_678 <= c_677 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 679 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_679 <= c_678 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 680 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_680 <= c_679 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 681 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_681 <= c_680 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 682 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_682 <= c_681 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 683 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_683 <= c_682 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 684 and associated fundamentals [[1], [3218], [255], [10253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_684 <= c_683 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 35 with id 685 and associated fundamentals [[665], [302], [255], [903]]
  c_685_684_0_False_resize <= c_684(25 downto 0);
  c_685_684_0_False_shift <= shift_left(c_685_684_0_False_resize, 0);
  c_685_532_0_False_resize <= c_532;
  c_685_532_0_False_shift <= shift_left(c_685_532_0_False_resize, 0);
  c_685_613_0_False_resize <= c_613(25 downto 0);
  c_685_613_0_False_shift <= shift_left(c_685_613_0_False_resize, 0);
  c_685_626_0_False_resize <= c_626(25 downto 0);
  c_685_626_0_False_shift <= shift_left(c_685_626_0_False_resize, 0);
  with config_select_35 select c_685_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_685_sel is
        when "00" => c_685 <= c_685_684_0_False_shift;
        when "01" => c_685 <= c_685_532_0_False_shift;
        when "10" => c_685 <= c_685_613_0_False_shift;
        when others => c_685 <= c_685_626_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 686 and associated fundamentals [[256], [10258], [43], [903]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_686 <= c_613 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 687 and associated fundamentals [[256], [10258], [43], [903]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_687 <= c_686 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 688 and associated fundamentals [[576], [0], [65], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_688 <= c_349 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 689 and associated fundamentals [[576], [0], [65], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_689 <= c_688 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 690 and associated fundamentals [[576], [0], [65], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_690 <= c_689 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 691 and associated fundamentals [[576], [0], [65], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_691 <= c_690 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 692 and associated fundamentals [[576], [0], [65], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_692 <= c_691 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 693 and associated fundamentals [[576], [0], [65], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_693 <= c_692 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 694 and associated fundamentals [[576], [0], [65], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_694 <= c_693 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 695 and associated fundamentals [[576], [0], [65], [147]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_695 <= c_694 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 696 and associated fundamentals [[50], [293], [-483], [292]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_696 <= c_515 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 697 and associated fundamentals [[50], [293], [-483], [292]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_697 <= c_696 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 698 and associated fundamentals [[400], [676], [344], [147]]
  c_698_697_3_False_resize <= resize(c_697, 26);
  c_698_697_3_False_shift <= shift_left(c_698_697_3_False_resize, 3);
  c_698_695_0_False_resize <= c_695;
  c_698_695_0_False_shift <= shift_left(c_698_695_0_False_resize, 0);
  c_698_603_0_False_resize <= c_603;
  c_698_603_0_False_shift <= shift_left(c_698_603_0_False_resize, 0);
  c_698_687_3_False_resize <= c_687(25 downto 0);
  c_698_687_3_False_shift <= shift_left(c_698_687_3_False_resize, 3);
  with config_select_37 select c_698_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_698_sel is
        when "00" => c_698 <= c_698_697_3_False_shift;
        when "01" => c_698 <= c_698_695_0_False_shift;
        when "10" => c_698 <= c_698_603_0_False_shift;
        when others => c_698 <= c_698_687_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 699 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_699 <= c_661 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 700 and associated fundamentals [[4], [281], [0], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_700 <= c_699 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 701 and associated fundamentals [[5120], [-692], [594], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_701 <= c_358 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 702 and associated fundamentals [[5120], [-692], [594], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_702 <= c_701 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 703 and associated fundamentals [[5120], [-692], [594], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_703 <= c_702 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 704 and associated fundamentals [[5120], [-692], [594], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_704 <= c_703 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 705 and associated fundamentals [[5120], [-692], [594], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_705 <= c_704 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 706 and associated fundamentals [[5120], [-692], [594], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_706 <= c_705 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 707 and associated fundamentals [[5120], [-692], [594], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_707 <= c_706 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 708 and associated fundamentals [[5120], [-692], [594], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_708 <= c_707 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 709 and associated fundamentals [[5120], [-692], [594], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_709 <= c_708 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 710 and associated fundamentals [[5120], [-692], [594], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_710 <= c_709 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 711 and associated fundamentals [[5120], [-692], [594], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_711 <= c_710 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 712 and associated fundamentals [[5120], [-692], [594], [893]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_712 <= c_711 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 713 and associated fundamentals [[174], [-3048], [32], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_713 <= c_522 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 714 and associated fundamentals [[174], [-3048], [32], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_714 <= c_713 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 715 and associated fundamentals [[174], [-3048], [32], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_715 <= c_714 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 716 and associated fundamentals [[174], [-3048], [32], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_716 <= c_715 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 717 and associated fundamentals [[729], [281], [594], [92]]
  c_717_716_1_False_resize <= c_716(25 downto 0);
  c_717_716_1_False_shift <= shift_left(c_717_716_1_False_resize, 1);
  c_717_700_0_False_resize <= resize(c_700, 26);
  c_717_700_0_False_shift <= shift_left(c_717_700_0_False_resize, 0);
  c_717_663_0_False_resize <= c_663;
  c_717_663_0_False_shift <= shift_left(c_717_663_0_False_resize, 0);
  c_717_712_0_False_resize <= c_712(25 downto 0);
  c_717_712_0_False_shift <= shift_left(c_717_712_0_False_resize, 0);
  with config_select_37 select c_717_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_717_sel is
        when "00" => c_717 <= c_717_716_1_False_shift;
        when "01" => c_717 <= c_717_700_0_False_shift;
        when "10" => c_717 <= c_717_663_0_False_shift;
        when others => c_717 <= c_717_712_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 718 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_718 <= c_616 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 719 and associated fundamentals [[331], [83], [0], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_719 <= c_718 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 720 and associated fundamentals [[331], [475], [361], [939]]
  c_720_667_0_False_resize <= c_667;
  c_720_667_0_False_shift <= shift_left(c_720_667_0_False_resize, 0);
  c_720_719_0_False_resize <= resize(c_719, 26);
  c_720_719_0_False_shift <= shift_left(c_720_719_0_False_resize, 0);
  c_720_636_0_False_resize <= c_636;
  c_720_636_0_False_shift <= shift_left(c_720_636_0_False_resize, 0);
  with config_select_37 select c_720_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_720_sel is
        when "00" => c_720 <= c_720_667_0_False_shift;
        when "01" => c_720 <= c_720_719_0_False_shift;
        when others => c_720 <= c_720_636_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 721 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_721 <= c_305 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 722 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_722 <= c_721 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 723 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_723 <= c_722 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 724 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_724 <= c_723 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 725 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_725 <= c_724 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 726 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_726 <= c_725 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 727 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_727 <= c_726 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 728 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_728 <= c_727 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 729 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_729 <= c_728 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 730 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_730 <= c_729 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 731 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_731 <= c_730 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 732 and associated fundamentals [[0], [0], [768], [343]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_732 <= c_731 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 733 and associated fundamentals [[670], [859], [483], [686]]
  c_733_732_1_False_resize <= c_732;
  c_733_732_1_False_shift <= shift_left(c_733_732_1_False_resize, 1);
  c_733_675_1_False_resize <= c_675(25 downto 0);
  c_733_675_1_False_shift <= shift_left(c_733_675_1_False_resize, 1);
  c_733_663_0_False_resize <= c_663;
  c_733_663_0_False_shift <= shift_left(c_733_663_0_False_resize, 0);
  c_733_603_0_False_resize <= c_603;
  c_733_603_0_False_shift <= shift_left(c_733_603_0_False_resize, 0);
  with config_select_37 select c_733_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_733_sel is
        when "00" => c_733 <= c_733_732_1_False_shift;
        when "01" => c_733 <= c_733_675_1_False_shift;
        when "10" => c_733 <= c_733_663_0_False_shift;
        when others => c_733 <= c_733_603_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 734 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_734 <= c_301 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 735 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_735 <= c_734 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 736 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_736 <= c_735 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 737 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_737 <= c_736 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 738 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_738 <= c_737 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 739 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_739 <= c_738 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 740 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_740 <= c_739 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 741 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_741 <= c_740 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 742 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_742 <= c_741 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 743 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_743 <= c_742 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 744 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_744 <= c_743 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 745 and associated fundamentals [[0], [10256], [20], [779]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_745 <= c_744 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 746 and associated fundamentals [[348], [852], [811], [779]]
  c_746_745_0_False_resize <= c_745(25 downto 0);
  c_746_745_0_False_shift <= shift_left(c_746_745_0_False_resize, 0);
  c_746_665_1_False_resize <= c_665;
  c_746_665_1_False_shift <= shift_left(c_746_665_1_False_resize, 1);
  c_746_663_0_False_resize <= c_663;
  c_746_663_0_False_shift <= shift_left(c_746_663_0_False_resize, 0);
  c_746_716_1_False_resize <= c_716(25 downto 0);
  c_746_716_1_False_shift <= shift_left(c_746_716_1_False_resize, 1);
  with config_select_37 select c_746_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_746_sel is
        when "00" => c_746 <= c_746_745_0_False_shift;
        when "01" => c_746 <= c_746_665_1_False_shift;
        when "10" => c_746 <= c_746_663_0_False_shift;
        when others => c_746 <= c_746_716_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 747 and associated fundamentals [[-984], [-877], [-894], [-909]]
  c_747_572_0_False_resize <= c_572;
  c_747_572_0_False_shift <= shift_left(c_747_572_0_False_resize, 0);
  c_747_675_1_False_resize <= c_675(25 downto 0);
  c_747_675_1_False_shift <= shift_left(c_747_675_1_False_resize, 1);
  with config_select_37 select c_747_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_747_sel is
        when "0" => c_747 <= c_747_572_0_False_shift;
        when others => c_747 <= c_747_675_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 37 with id 748 and associated fundamentals [[870], [364], [98], [887]]
  c_748_resize <= c_668;
  c_748 <= shift_left(c_748_resize, 0);
  -- node of type 'register' in stage 34 with id 749 and associated fundamentals [[958], [83], [378], [724]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_749 <= c_669 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 750 and associated fundamentals [[958], [83], [378], [724]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_750 <= c_749 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 751 and associated fundamentals [[958], [83], [378], [724]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_751 <= c_750 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 752 and associated fundamentals [[958], [83], [378], [724]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_752 <= c_751 & "";
    end if;
  end process;
  -- node of type 'output' in stage 37 with id 753 and associated fundamentals [[958], [83], [378], [724]]
  c_753_resize <= c_752;
  c_753 <= shift_left(c_753_resize, 0);
  -- node of type 'output' in stage 37 with id 754 and associated fundamentals [[61], [526], [959], [930]]
  c_754_resize <= c_676;
  c_754 <= shift_left(c_754_resize, 0);
  -- node of type 'register' in stage 36 with id 755 and associated fundamentals [[665], [302], [255], [903]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_755 <= c_685 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 756 and associated fundamentals [[665], [302], [255], [903]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_756 <= c_755 & "";
    end if;
  end process;
  -- node of type 'output' in stage 37 with id 757 and associated fundamentals [[665], [302], [255], [903]]
  c_757_resize <= c_756;
  c_757 <= shift_left(c_757_resize, 0);
  -- node of type 'output' in stage 37 with id 758 and associated fundamentals [[400], [676], [344], [147]]
  c_758_resize <= c_698;
  c_758 <= shift_left(c_758_resize, 0);
  -- node of type 'output' in stage 37 with id 759 and associated fundamentals [[729], [281], [594], [92]]
  c_759_resize <= c_717;
  c_759 <= shift_left(c_759_resize, 0);
  -- node of type 'output' in stage 37 with id 760 and associated fundamentals [[331], [475], [361], [939]]
  c_760_resize <= c_720;
  c_760 <= shift_left(c_760_resize, 0);
  -- node of type 'output' in stage 37 with id 761 and associated fundamentals [[670], [859], [483], [686]]
  c_761_resize <= c_733;
  c_761 <= shift_left(c_761_resize, 0);
  -- node of type 'output' in stage 37 with id 762 and associated fundamentals [[348], [852], [811], [779]]
  c_762_resize <= c_746;
  c_762 <= shift_left(c_762_resize, 0);
  -- node of type 'output' in stage 37 with id 763 and associated fundamentals [[984], [877], [894], [909]]
  c_763_resize <= c_747;
  c_763 <= -shift_left(c_763_resize, 0);
end architecture;

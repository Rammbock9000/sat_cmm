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
    y_6: out std_logic_vector(24 downto 0);
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
  signal config_select_40: std_logic_vector(1 downto 0);
  signal config_select_41: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_0_2_False_resize: signed(21 downto 0);
  signal c_1_0_2_False_shift: signed(21 downto 0);
  signal c_1_0_6_False_resize: signed(21 downto 0);
  signal c_1_0_6_False_shift: signed(21 downto 0);
  signal c_1_0_0_False_resize: signed(21 downto 0);
  signal c_1_0_0_False_shift: signed(21 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(24 downto 0);
  signal c_2_0_4_False_resize: signed(24 downto 0);
  signal c_2_0_4_False_shift: signed(24 downto 0);
  signal c_2_0_9_False_resize: signed(24 downto 0);
  signal c_2_0_9_False_shift: signed(24 downto 0);
  signal c_2_0_0_False_resize: signed(24 downto 0);
  signal c_2_0_0_False_shift: signed(24 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(31 downto 0);
  signal c_6_3_0_False_resize: signed(31 downto 0);
  signal c_6_3_0_False_shift: signed(31 downto 0);
  signal c_6_5_6_False_resize: signed(31 downto 0);
  signal c_6_5_6_False_shift: signed(31 downto 0);
  signal c_6_5_16_False_resize: signed(31 downto 0);
  signal c_6_5_16_False_shift: signed(31 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(29 downto 0);
  signal c_7_5_14_False_resize: signed(29 downto 0);
  signal c_7_5_14_False_shift: signed(29 downto 0);
  signal c_7_5_6_False_resize: signed(29 downto 0);
  signal c_7_5_6_False_shift: signed(29 downto 0);
  signal c_7_3_0_False_resize: signed(29 downto 0);
  signal c_7_3_0_False_shift: signed(29 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(31 downto 0);
  signal c_8_i0_resize: signed(31 downto 0);
  signal c_8_i1_resize: signed(31 downto 0);
  signal c_8_i0_shift: signed(31 downto 0);
  signal c_8_i1_shift: signed(31 downto 0);
  signal c_8_arith: signed(31 downto 0);
  signal c_8_oshift: signed(31 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(19 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_11: signed(31 downto 0);
  signal c_11_10_12_False_resize: signed(31 downto 0);
  signal c_11_10_12_False_shift: signed(31 downto 0);
  signal c_11_10_13_False_resize: signed(31 downto 0);
  signal c_11_10_13_False_shift: signed(31 downto 0);
  signal c_11_8_0_False_resize: signed(31 downto 0);
  signal c_11_8_0_False_shift: signed(31 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(29 downto 0);
  signal c_14_8_7_False_resize: signed(29 downto 0);
  signal c_14_8_7_False_shift: signed(29 downto 0);
  signal c_14_10_0_False_resize: signed(29 downto 0);
  signal c_14_10_0_False_shift: signed(29 downto 0);
  signal c_14_13_12_False_resize: signed(29 downto 0);
  signal c_14_13_12_False_shift: signed(29 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(31 downto 0);
  signal c_15_i0_resize: signed(31 downto 0);
  signal c_15_i1_resize: signed(31 downto 0);
  signal c_15_i0_shift: signed(31 downto 0);
  signal c_15_i1_shift: signed(31 downto 0);
  signal c_15_arith: signed(31 downto 0);
  signal c_15_oshift: signed(31 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(19 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_18: signed(31 downto 0);
  signal c_19: signed(31 downto 0);
  signal c_20: signed(31 downto 0);
  signal c_20_15_0_False_resize: signed(31 downto 0);
  signal c_20_15_0_False_shift: signed(31 downto 0);
  signal c_20_19_0_False_resize: signed(31 downto 0);
  signal c_20_19_0_False_shift: signed(31 downto 0);
  signal c_20_17_0_False_resize: signed(31 downto 0);
  signal c_20_17_0_False_shift: signed(31 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(31 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_i0_resize: signed(32 downto 0);
  signal c_22_i1_resize: signed(32 downto 0);
  signal c_22_i0_shift: signed(32 downto 0);
  signal c_22_i1_shift: signed(32 downto 0);
  signal c_22_arith: signed(32 downto 0);
  signal c_22_oshift: signed(22 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(15 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(15 downto 0);
  signal c_26: signed(15 downto 0);
  signal c_27: signed(18 downto 0);
  signal c_27_22_0_False_resize: signed(18 downto 0);
  signal c_27_22_0_False_shift: signed(18 downto 0);
  signal c_27_26_3_False_resize: signed(18 downto 0);
  signal c_27_26_3_False_shift: signed(18 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(18 downto 0);
  signal c_28_26_2_False_resize: signed(18 downto 0);
  signal c_28_26_2_False_shift: signed(18 downto 0);
  signal c_28_22_0_False_resize: signed(18 downto 0);
  signal c_28_22_0_False_shift: signed(18 downto 0);
  signal c_28_26_3_False_resize: signed(18 downto 0);
  signal c_28_26_3_False_shift: signed(18 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(17 downto 0);
  signal c_29_i0_resize: signed(17 downto 0);
  signal c_29_i1_resize: signed(17 downto 0);
  signal c_29_i0_shift: signed(17 downto 0);
  signal c_29_i1_shift: signed(17 downto 0);
  signal c_29_arith: signed(17 downto 0);
  signal c_29_oshift: signed(17 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(23 downto 0);
  signal c_30_13_8_False_resize: signed(23 downto 0);
  signal c_30_13_8_False_shift: signed(23 downto 0);
  signal c_30_8_0_False_resize: signed(23 downto 0);
  signal c_30_8_0_False_shift: signed(23 downto 0);
  signal c_30_10_0_False_resize: signed(23 downto 0);
  signal c_30_10_0_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(31 downto 0);
  signal c_31_10_0_False_resize: signed(31 downto 0);
  signal c_31_10_0_False_shift: signed(31 downto 0);
  signal c_31_13_7_False_resize: signed(31 downto 0);
  signal c_31_13_7_False_shift: signed(31 downto 0);
  signal c_31_8_0_False_resize: signed(31 downto 0);
  signal c_31_8_0_False_shift: signed(31 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(31 downto 0);
  signal c_32_i0_resize: signed(31 downto 0);
  signal c_32_i1_resize: signed(31 downto 0);
  signal c_32_i0_shift: signed(31 downto 0);
  signal c_32_i1_shift: signed(31 downto 0);
  signal c_32_arith: signed(31 downto 0);
  signal c_32_oshift: signed(31 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(29 downto 0);
  signal c_33_0_0_False_resize: signed(29 downto 0);
  signal c_33_0_0_False_shift: signed(29 downto 0);
  signal c_33_0_14_False_resize: signed(29 downto 0);
  signal c_33_0_14_False_shift: signed(29 downto 0);
  signal c_33_0_4_False_resize: signed(29 downto 0);
  signal c_33_0_4_False_shift: signed(29 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(31 downto 0);
  signal c_34_24_4_False_resize: signed(31 downto 0);
  signal c_34_24_4_False_shift: signed(31 downto 0);
  signal c_34_32_0_False_resize: signed(31 downto 0);
  signal c_34_32_0_False_shift: signed(31 downto 0);
  signal c_34_24_2_False_resize: signed(31 downto 0);
  signal c_34_24_2_False_shift: signed(31 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(29 downto 0);
  signal c_36: signed(29 downto 0);
  signal c_37: signed(29 downto 0);
  signal c_38: signed(29 downto 0);
  signal c_39: signed(29 downto 0);
  signal c_40: signed(29 downto 0);
  signal c_41: signed(32 downto 0);
  signal c_41_i0_resize: signed(32 downto 0);
  signal c_41_i1_resize: signed(32 downto 0);
  signal c_41_i0_shift: signed(32 downto 0);
  signal c_41_i1_shift: signed(32 downto 0);
  signal c_41_arith: signed(32 downto 0);
  signal c_41_oshift: signed(32 downto 0);
  signal c_42: signed(19 downto 0);
  signal c_43: signed(19 downto 0);
  signal c_44: signed(20 downto 0);
  signal c_44_43_0_False_resize: signed(20 downto 0);
  signal c_44_43_0_False_shift: signed(20 downto 0);
  signal c_44_26_0_False_resize: signed(20 downto 0);
  signal c_44_26_0_False_shift: signed(20 downto 0);
  signal c_44_41_0_False_resize: signed(20 downto 0);
  signal c_44_41_0_False_shift: signed(20 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(20 downto 0);
  signal c_45_41_0_False_resize: signed(20 downto 0);
  signal c_45_41_0_False_shift: signed(20 downto 0);
  signal c_45_26_0_False_resize: signed(20 downto 0);
  signal c_45_26_0_False_shift: signed(20 downto 0);
  signal c_45_26_1_False_resize: signed(20 downto 0);
  signal c_45_26_1_False_shift: signed(20 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_i0_resize: signed(25 downto 0);
  signal c_46_i1_resize: signed(25 downto 0);
  signal c_46_i0_shift: signed(25 downto 0);
  signal c_46_i1_shift: signed(25 downto 0);
  signal c_46_arith: signed(25 downto 0);
  signal c_46_oshift: signed(25 downto 0);
  signal c_46_sub_sel: std_logic;
  signal c_47: signed(26 downto 0);
  signal c_47_5_11_False_resize: signed(26 downto 0);
  signal c_47_5_11_False_shift: signed(26 downto 0);
  signal c_47_5_0_False_resize: signed(26 downto 0);
  signal c_47_5_0_False_shift: signed(26 downto 0);
  signal c_47_3_5_False_resize: signed(26 downto 0);
  signal c_47_3_5_False_shift: signed(26 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(31 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_26_7_False_resize: signed(23 downto 0);
  signal c_49_26_7_False_shift: signed(23 downto 0);
  signal c_49_22_1_False_resize: signed(23 downto 0);
  signal c_49_22_1_False_shift: signed(23 downto 0);
  signal c_49_48_0_False_resize: signed(23 downto 0);
  signal c_49_48_0_False_shift: signed(23 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(26 downto 0);
  signal c_51: signed(26 downto 0);
  signal c_52: signed(26 downto 0);
  signal c_53: signed(26 downto 0);
  signal c_54: signed(26 downto 0);
  signal c_55: signed(26 downto 0);
  signal c_56: signed(30 downto 0);
  signal c_56_i0_resize: signed(30 downto 0);
  signal c_56_i1_resize: signed(30 downto 0);
  signal c_56_i0_shift: signed(30 downto 0);
  signal c_56_i1_shift: signed(30 downto 0);
  signal c_56_arith: signed(30 downto 0);
  signal c_56_oshift: signed(30 downto 0);
  signal c_56_sub_sel: std_logic;
  signal c_57: signed(15 downto 0);
  signal c_58: signed(15 downto 0);
  signal c_59: signed(19 downto 0);
  signal c_60: signed(19 downto 0);
  signal c_61: signed(28 downto 0);
  signal c_61_58_13_False_resize: signed(28 downto 0);
  signal c_61_58_13_False_shift: signed(28 downto 0);
  signal c_61_46_0_False_resize: signed(28 downto 0);
  signal c_61_46_0_False_shift: signed(28 downto 0);
  signal c_61_60_1_False_resize: signed(28 downto 0);
  signal c_61_60_1_False_shift: signed(28 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(31 downto 0);
  signal c_62_26_16_False_resize: signed(31 downto 0);
  signal c_62_26_16_False_shift: signed(31 downto 0);
  signal c_62_22_0_False_resize: signed(31 downto 0);
  signal c_62_22_0_False_shift: signed(31 downto 0);
  signal c_62_41_1_False_resize: signed(31 downto 0);
  signal c_62_41_1_False_shift: signed(31 downto 0);
  signal c_62_sel: std_logic_vector(1 downto 0);
  signal c_63: signed(31 downto 0);
  signal c_64: signed(31 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_65_i0_resize: signed(23 downto 0);
  signal c_65_i1_resize: signed(23 downto 0);
  signal c_65_i0_shift: signed(23 downto 0);
  signal c_65_i1_shift: signed(23 downto 0);
  signal c_65_arith: signed(23 downto 0);
  signal c_65_oshift: signed(23 downto 0);
  signal c_65_sub_sel: std_logic;
  signal c_66: signed(15 downto 0);
  signal c_67: signed(15 downto 0);
  signal c_68: signed(30 downto 0);
  signal c_69: signed(30 downto 0);
  signal c_70: signed(32 downto 0);
  signal c_70_65_0_False_resize: signed(32 downto 0);
  signal c_70_65_0_False_shift: signed(32 downto 0);
  signal c_70_69_2_False_resize: signed(32 downto 0);
  signal c_70_69_2_False_shift: signed(32 downto 0);
  signal c_70_67_17_False_resize: signed(32 downto 0);
  signal c_70_67_17_False_shift: signed(32 downto 0);
  signal c_70_sel: std_logic_vector(1 downto 0);
  signal c_71: signed(32 downto 0);
  signal c_72: signed(32 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_73_29_7_False_resize: signed(24 downto 0);
  signal c_73_29_7_False_shift: signed(24 downto 0);
  signal c_73_58_8_False_resize: signed(24 downto 0);
  signal c_73_58_8_False_shift: signed(24 downto 0);
  signal c_73_72_0_False_resize: signed(24 downto 0);
  signal c_73_72_0_False_shift: signed(24 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_76: signed(33 downto 0);
  signal c_76_i0_resize: signed(33 downto 0);
  signal c_76_i1_resize: signed(33 downto 0);
  signal c_76_i0_shift: signed(33 downto 0);
  signal c_76_i1_shift: signed(33 downto 0);
  signal c_76_arith: signed(33 downto 0);
  signal c_76_oshift: signed(33 downto 0);
  signal c_76_sub_sel: std_logic;
  signal c_77: signed(30 downto 0);
  signal c_77_26_0_False_resize: signed(30 downto 0);
  signal c_77_26_0_False_shift: signed(30 downto 0);
  signal c_77_41_10_False_resize: signed(30 downto 0);
  signal c_77_41_10_False_shift: signed(30 downto 0);
  signal c_77_sel: std_logic_vector(0 downto 0);
  signal c_78: signed(28 downto 0);
  signal c_78_0_3_False_resize: signed(28 downto 0);
  signal c_78_0_3_False_shift: signed(28 downto 0);
  signal c_78_0_13_False_resize: signed(28 downto 0);
  signal c_78_0_13_False_shift: signed(28 downto 0);
  signal c_78_0_0_False_resize: signed(28 downto 0);
  signal c_78_0_0_False_shift: signed(28 downto 0);
  signal c_78_sel: std_logic_vector(1 downto 0);
  signal c_79: signed(28 downto 0);
  signal c_80: signed(28 downto 0);
  signal c_81: signed(28 downto 0);
  signal c_82: signed(28 downto 0);
  signal c_83: signed(28 downto 0);
  signal c_84: signed(28 downto 0);
  signal c_85: signed(28 downto 0);
  signal c_86: signed(28 downto 0);
  signal c_87: signed(31 downto 0);
  signal c_87_i0_resize: signed(31 downto 0);
  signal c_87_i1_resize: signed(31 downto 0);
  signal c_87_i0_shift: signed(31 downto 0);
  signal c_87_i1_shift: signed(31 downto 0);
  signal c_87_arith: signed(31 downto 0);
  signal c_87_oshift: signed(31 downto 0);
  signal c_87_sub_sel: std_logic;
  signal c_88: signed(31 downto 0);
  signal c_89: signed(31 downto 0);
  signal c_90: signed(31 downto 0);
  signal c_91: signed(31 downto 0);
  signal c_92: signed(32 downto 0);
  signal c_92_46_8_False_resize: signed(32 downto 0);
  signal c_92_46_8_False_shift: signed(32 downto 0);
  signal c_92_87_0_False_resize: signed(32 downto 0);
  signal c_92_87_0_False_shift: signed(32 downto 0);
  signal c_92_91_1_False_resize: signed(32 downto 0);
  signal c_92_91_1_False_shift: signed(32 downto 0);
  signal c_92_sel: std_logic_vector(1 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_93_46_0_False_resize: signed(25 downto 0);
  signal c_93_46_0_False_shift: signed(25 downto 0);
  signal c_93_58_1_False_resize: signed(25 downto 0);
  signal c_93_58_1_False_shift: signed(25 downto 0);
  signal c_93_58_10_False_resize: signed(25 downto 0);
  signal c_93_58_10_False_shift: signed(25 downto 0);
  signal c_93_sel: std_logic_vector(1 downto 0);
  signal c_94: signed(32 downto 0);
  signal c_94_i0_resize: signed(32 downto 0);
  signal c_94_i1_resize: signed(32 downto 0);
  signal c_94_i0_shift: signed(32 downto 0);
  signal c_94_i1_shift: signed(32 downto 0);
  signal c_94_arith: signed(32 downto 0);
  signal c_94_oshift: signed(32 downto 0);
  signal c_94_sub_sel: std_logic;
  signal c_95: signed(31 downto 0);
  signal c_96: signed(31 downto 0);
  signal c_97: signed(31 downto 0);
  signal c_98: signed(31 downto 0);
  signal c_99: signed(33 downto 0);
  signal c_99_67_1_False_resize: signed(33 downto 0);
  signal c_99_67_1_False_shift: signed(33 downto 0);
  signal c_99_98_0_False_resize: signed(33 downto 0);
  signal c_99_98_0_False_shift: signed(33 downto 0);
  signal c_99_94_2_False_resize: signed(33 downto 0);
  signal c_99_94_2_False_shift: signed(33 downto 0);
  signal c_99_sel: std_logic_vector(1 downto 0);
  signal c_100: signed(19 downto 0);
  signal c_101: signed(19 downto 0);
  signal c_102: signed(19 downto 0);
  signal c_103: signed(19 downto 0);
  signal c_104: signed(32 downto 0);
  signal c_105: signed(32 downto 0);
  signal c_106: signed(32 downto 0);
  signal c_107: signed(32 downto 0);
  signal c_108: signed(26 downto 0);
  signal c_108_103_7_False_resize: signed(26 downto 0);
  signal c_108_103_7_False_shift: signed(26 downto 0);
  signal c_108_76_0_False_resize: signed(26 downto 0);
  signal c_108_76_0_False_shift: signed(26 downto 0);
  signal c_108_107_1_False_resize: signed(26 downto 0);
  signal c_108_107_1_False_shift: signed(26 downto 0);
  signal c_108_sel: std_logic_vector(1 downto 0);
  signal c_109: signed(33 downto 0);
  signal c_110: signed(33 downto 0);
  signal c_111: signed(33 downto 0);
  signal c_111_i0_resize: signed(33 downto 0);
  signal c_111_i1_resize: signed(33 downto 0);
  signal c_111_i0_shift: signed(33 downto 0);
  signal c_111_i1_shift: signed(33 downto 0);
  signal c_111_arith: signed(33 downto 0);
  signal c_111_oshift: signed(33 downto 0);
  signal c_112: signed(31 downto 0);
  signal c_113: signed(31 downto 0);
  signal c_114: signed(31 downto 0);
  signal c_115: signed(31 downto 0);
  signal c_116: signed(32 downto 0);
  signal c_117: signed(32 downto 0);
  signal c_118: signed(32 downto 0);
  signal c_118_76_0_False_resize: signed(32 downto 0);
  signal c_118_76_0_False_shift: signed(32 downto 0);
  signal c_118_115_0_False_resize: signed(32 downto 0);
  signal c_118_115_0_False_shift: signed(32 downto 0);
  signal c_118_117_0_False_resize: signed(32 downto 0);
  signal c_118_117_0_False_shift: signed(32 downto 0);
  signal c_118_sel: std_logic_vector(1 downto 0);
  signal c_119: signed(31 downto 0);
  signal c_120: signed(31 downto 0);
  signal c_121: signed(31 downto 0);
  signal c_121_113_0_False_resize: signed(31 downto 0);
  signal c_121_113_0_False_shift: signed(31 downto 0);
  signal c_121_120_0_False_resize: signed(31 downto 0);
  signal c_121_120_0_False_shift: signed(31 downto 0);
  signal c_121_94_0_False_resize: signed(31 downto 0);
  signal c_121_94_0_False_shift: signed(31 downto 0);
  signal c_121_sel: std_logic_vector(1 downto 0);
  signal c_122: signed(31 downto 0);
  signal c_123: signed(31 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_124_i0_resize: signed(31 downto 0);
  signal c_124_i1_resize: signed(31 downto 0);
  signal c_124_i0_shift: signed(31 downto 0);
  signal c_124_i1_shift: signed(31 downto 0);
  signal c_124_arith: signed(31 downto 0);
  signal c_124_oshift: signed(25 downto 0);
  signal c_125: signed(15 downto 0);
  signal c_126: signed(15 downto 0);
  signal c_127: signed(15 downto 0);
  signal c_128: signed(15 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_129_124_0_False_resize: signed(25 downto 0);
  signal c_129_124_0_False_shift: signed(25 downto 0);
  signal c_129_128_9_False_resize: signed(25 downto 0);
  signal c_129_128_9_False_shift: signed(25 downto 0);
  signal c_129_sel: std_logic_vector(0 downto 0);
  signal c_130: signed(32 downto 0);
  signal c_130_72_0_False_resize: signed(32 downto 0);
  signal c_130_72_0_False_shift: signed(32 downto 0);
  signal c_130_58_0_False_resize: signed(32 downto 0);
  signal c_130_58_0_False_shift: signed(32 downto 0);
  signal c_130_87_0_False_resize: signed(32 downto 0);
  signal c_130_87_0_False_shift: signed(32 downto 0);
  signal c_130_sel: std_logic_vector(1 downto 0);
  signal c_131: signed(32 downto 0);
  signal c_132: signed(32 downto 0);
  signal c_133: signed(32 downto 0);
  signal c_134: signed(32 downto 0);
  signal c_135: signed(32 downto 0);
  signal c_136: signed(32 downto 0);
  signal c_137: signed(32 downto 0);
  signal c_137_i0_resize: signed(32 downto 0);
  signal c_137_i1_resize: signed(32 downto 0);
  signal c_137_i0_shift: signed(32 downto 0);
  signal c_137_i1_shift: signed(32 downto 0);
  signal c_137_arith: signed(32 downto 0);
  signal c_137_oshift: signed(32 downto 0);
  signal c_137_sub_sel: std_logic;
  signal c_138: signed(15 downto 0);
  signal c_139: signed(15 downto 0);
  signal c_140: signed(22 downto 0);
  signal c_140_139_3_False_resize: signed(22 downto 0);
  signal c_140_139_3_False_shift: signed(22 downto 0);
  signal c_140_137_0_False_resize: signed(22 downto 0);
  signal c_140_137_0_False_shift: signed(22 downto 0);
  signal c_140_139_1_False_resize: signed(22 downto 0);
  signal c_140_139_1_False_shift: signed(22 downto 0);
  signal c_140_sel: std_logic_vector(1 downto 0);
  signal c_141: signed(31 downto 0);
  signal c_142: signed(31 downto 0);
  signal c_143: signed(31 downto 0);
  signal c_144: signed(31 downto 0);
  signal c_145: signed(31 downto 0);
  signal c_145_144_0_False_resize: signed(31 downto 0);
  signal c_145_144_0_False_shift: signed(31 downto 0);
  signal c_145_137_0_False_resize: signed(31 downto 0);
  signal c_145_137_0_False_shift: signed(31 downto 0);
  signal c_145_139_4_False_resize: signed(31 downto 0);
  signal c_145_139_4_False_shift: signed(31 downto 0);
  signal c_145_sel: std_logic_vector(1 downto 0);
  signal c_146: signed(31 downto 0);
  signal c_146_i0_resize: signed(31 downto 0);
  signal c_146_i1_resize: signed(31 downto 0);
  signal c_146_i0_shift: signed(31 downto 0);
  signal c_146_i1_shift: signed(31 downto 0);
  signal c_146_arith: signed(31 downto 0);
  signal c_146_oshift: signed(31 downto 0);
  signal c_146_sub_sel: std_logic;
  signal c_147: signed(17 downto 0);
  signal c_148: signed(17 downto 0);
  signal c_149: signed(17 downto 0);
  signal c_150: signed(17 downto 0);
  signal c_151: signed(17 downto 0);
  signal c_152: signed(17 downto 0);
  signal c_153: signed(17 downto 0);
  signal c_154: signed(17 downto 0);
  signal c_155: signed(17 downto 0);
  signal c_156: signed(17 downto 0);
  signal c_157: signed(31 downto 0);
  signal c_158: signed(31 downto 0);
  signal c_159: signed(31 downto 0);
  signal c_160: signed(31 downto 0);
  signal c_161: signed(31 downto 0);
  signal c_162: signed(31 downto 0);
  signal c_163: signed(31 downto 0);
  signal c_164: signed(31 downto 0);
  signal c_165: signed(22 downto 0);
  signal c_165_146_0_False_resize: signed(22 downto 0);
  signal c_165_146_0_False_shift: signed(22 downto 0);
  signal c_165_156_3_False_resize: signed(22 downto 0);
  signal c_165_156_3_False_shift: signed(22 downto 0);
  signal c_165_164_3_False_resize: signed(22 downto 0);
  signal c_165_164_3_False_shift: signed(22 downto 0);
  signal c_165_sel: std_logic_vector(1 downto 0);
  signal c_166: signed(33 downto 0);
  signal c_166_111_0_False_resize: signed(33 downto 0);
  signal c_166_111_0_False_shift: signed(33 downto 0);
  signal c_166_128_7_False_resize: signed(33 downto 0);
  signal c_166_128_7_False_shift: signed(33 downto 0);
  signal c_166_128_1_False_resize: signed(33 downto 0);
  signal c_166_128_1_False_shift: signed(33 downto 0);
  signal c_166_sel: std_logic_vector(1 downto 0);
  signal c_167: signed(33 downto 0);
  signal c_168: signed(33 downto 0);
  signal c_169: signed(33 downto 0);
  signal c_170: signed(33 downto 0);
  signal c_171: signed(33 downto 0);
  signal c_171_i0_resize: signed(33 downto 0);
  signal c_171_i1_resize: signed(33 downto 0);
  signal c_171_i0_shift: signed(33 downto 0);
  signal c_171_i1_shift: signed(33 downto 0);
  signal c_171_arith: signed(33 downto 0);
  signal c_171_oshift: signed(33 downto 0);
  signal c_172: signed(15 downto 0);
  signal c_173: signed(15 downto 0);
  signal c_174: signed(15 downto 0);
  signal c_175: signed(15 downto 0);
  signal c_176: signed(31 downto 0);
  signal c_177: signed(31 downto 0);
  signal c_178: signed(31 downto 0);
  signal c_179: signed(31 downto 0);
  signal c_180: signed(31 downto 0);
  signal c_181: signed(31 downto 0);
  signal c_182: signed(31 downto 0);
  signal c_183: signed(31 downto 0);
  signal c_184: signed(31 downto 0);
  signal c_185: signed(31 downto 0);
  signal c_186: signed(25 downto 0);
  signal c_186_175_3_False_resize: signed(25 downto 0);
  signal c_186_175_3_False_shift: signed(25 downto 0);
  signal c_186_185_3_False_resize: signed(25 downto 0);
  signal c_186_185_3_False_shift: signed(25 downto 0);
  signal c_186_171_0_False_resize: signed(25 downto 0);
  signal c_186_171_0_False_shift: signed(25 downto 0);
  signal c_186_sel: std_logic_vector(1 downto 0);
  signal c_187: signed(22 downto 0);
  signal c_188: signed(22 downto 0);
  signal c_189: signed(22 downto 0);
  signal c_190: signed(22 downto 0);
  signal c_191: signed(22 downto 0);
  signal c_192: signed(22 downto 0);
  signal c_193: signed(22 downto 0);
  signal c_194: signed(22 downto 0);
  signal c_195: signed(22 downto 0);
  signal c_196: signed(22 downto 0);
  signal c_197: signed(22 downto 0);
  signal c_198: signed(22 downto 0);
  signal c_199: signed(22 downto 0);
  signal c_200: signed(22 downto 0);
  signal c_201: signed(33 downto 0);
  signal c_202: signed(33 downto 0);
  signal c_203: signed(33 downto 0);
  signal c_204: signed(33 downto 0);
  signal c_205: signed(33 downto 0);
  signal c_206: signed(33 downto 0);
  signal c_207: signed(33 downto 0);
  signal c_208: signed(33 downto 0);
  signal c_209: signed(33 downto 0);
  signal c_209_208_1_False_resize: signed(33 downto 0);
  signal c_209_208_1_False_shift: signed(33 downto 0);
  signal c_209_200_0_False_resize: signed(33 downto 0);
  signal c_209_200_0_False_shift: signed(33 downto 0);
  signal c_209_171_0_False_resize: signed(33 downto 0);
  signal c_209_171_0_False_shift: signed(33 downto 0);
  signal c_209_sel: std_logic_vector(1 downto 0);
  signal c_210: signed(33 downto 0);
  signal c_210_i0_resize: signed(33 downto 0);
  signal c_210_i1_resize: signed(33 downto 0);
  signal c_210_i0_shift: signed(33 downto 0);
  signal c_210_i1_shift: signed(33 downto 0);
  signal c_210_arith: signed(33 downto 0);
  signal c_210_oshift: signed(33 downto 0);
  signal c_210_sub_sel: std_logic;
  signal c_211: signed(25 downto 0);
  signal c_212: signed(25 downto 0);
  signal c_213: signed(25 downto 0);
  signal c_214: signed(25 downto 0);
  signal c_215: signed(25 downto 0);
  signal c_216: signed(25 downto 0);
  signal c_217: signed(25 downto 0);
  signal c_218: signed(25 downto 0);
  signal c_219: signed(25 downto 0);
  signal c_220: signed(25 downto 0);
  signal c_221: signed(25 downto 0);
  signal c_222: signed(25 downto 0);
  signal c_223: signed(25 downto 0);
  signal c_223_171_3_False_resize: signed(25 downto 0);
  signal c_223_171_3_False_shift: signed(25 downto 0);
  signal c_223_200_0_False_resize: signed(25 downto 0);
  signal c_223_200_0_False_shift: signed(25 downto 0);
  signal c_223_222_0_False_resize: signed(25 downto 0);
  signal c_223_222_0_False_shift: signed(25 downto 0);
  signal c_223_sel: std_logic_vector(1 downto 0);
  signal c_224: signed(21 downto 0);
  signal c_224_87_0_False_resize: signed(21 downto 0);
  signal c_224_87_0_False_shift: signed(21 downto 0);
  signal c_224_58_0_False_resize: signed(21 downto 0);
  signal c_224_58_0_False_shift: signed(21 downto 0);
  signal c_224_58_6_False_resize: signed(21 downto 0);
  signal c_224_58_6_False_shift: signed(21 downto 0);
  signal c_224_sel: std_logic_vector(1 downto 0);
  signal c_225: signed(21 downto 0);
  signal c_226: signed(21 downto 0);
  signal c_227: signed(21 downto 0);
  signal c_228: signed(21 downto 0);
  signal c_229: signed(21 downto 0);
  signal c_230: signed(21 downto 0);
  signal c_231: signed(21 downto 0);
  signal c_232: signed(21 downto 0);
  signal c_233: signed(21 downto 0);
  signal c_234: signed(21 downto 0);
  signal c_235: signed(21 downto 0);
  signal c_236: signed(21 downto 0);
  signal c_237: signed(25 downto 0);
  signal c_237_i0_resize: signed(25 downto 0);
  signal c_237_i1_resize: signed(25 downto 0);
  signal c_237_i0_shift: signed(25 downto 0);
  signal c_237_i1_shift: signed(25 downto 0);
  signal c_237_arith: signed(25 downto 0);
  signal c_237_oshift: signed(25 downto 0);
  signal c_237_sub_sel: std_logic;
  signal c_238: signed(33 downto 0);
  signal c_238_103_8_False_resize: signed(33 downto 0);
  signal c_238_103_8_False_shift: signed(33 downto 0);
  signal c_238_76_0_False_resize: signed(33 downto 0);
  signal c_238_76_0_False_shift: signed(33 downto 0);
  signal c_238_126_2_False_resize: signed(33 downto 0);
  signal c_238_126_2_False_shift: signed(33 downto 0);
  signal c_238_sel: std_logic_vector(1 downto 0);
  signal c_239: signed(24 downto 0);
  signal c_239_185_2_False_resize: signed(24 downto 0);
  signal c_239_185_2_False_shift: signed(24 downto 0);
  signal c_239_171_0_False_resize: signed(24 downto 0);
  signal c_239_171_0_False_shift: signed(24 downto 0);
  signal c_239_222_0_False_resize: signed(24 downto 0);
  signal c_239_222_0_False_shift: signed(24 downto 0);
  signal c_239_sel: std_logic_vector(1 downto 0);
  signal c_240: signed(33 downto 0);
  signal c_241: signed(33 downto 0);
  signal c_242: signed(33 downto 0);
  signal c_243: signed(33 downto 0);
  signal c_244: signed(33 downto 0);
  signal c_245: signed(33 downto 0);
  signal c_246: signed(33 downto 0);
  signal c_247: signed(33 downto 0);
  signal c_248: signed(33 downto 0);
  signal c_248_i0_resize: signed(33 downto 0);
  signal c_248_i1_resize: signed(33 downto 0);
  signal c_248_i0_shift: signed(33 downto 0);
  signal c_248_i1_shift: signed(33 downto 0);
  signal c_248_arith: signed(33 downto 0);
  signal c_248_oshift: signed(33 downto 0);
  signal c_249: signed(23 downto 0);
  signal c_250: signed(23 downto 0);
  signal c_251: signed(23 downto 0);
  signal c_252: signed(23 downto 0);
  signal c_253: signed(23 downto 0);
  signal c_254: signed(23 downto 0);
  signal c_255: signed(24 downto 0);
  signal c_255_139_4_False_resize: signed(24 downto 0);
  signal c_255_139_4_False_shift: signed(24 downto 0);
  signal c_255_254_1_False_resize: signed(24 downto 0);
  signal c_255_254_1_False_shift: signed(24 downto 0);
  signal c_255_137_0_False_resize: signed(24 downto 0);
  signal c_255_137_0_False_shift: signed(24 downto 0);
  signal c_255_sel: std_logic_vector(1 downto 0);
  signal c_256: signed(15 downto 0);
  signal c_257: signed(15 downto 0);
  signal c_258: signed(31 downto 0);
  signal c_259: signed(31 downto 0);
  signal c_260: signed(25 downto 0);
  signal c_260_257_0_False_resize: signed(25 downto 0);
  signal c_260_257_0_False_shift: signed(25 downto 0);
  signal c_260_259_0_False_resize: signed(25 downto 0);
  signal c_260_259_0_False_shift: signed(25 downto 0);
  signal c_260_237_0_False_resize: signed(25 downto 0);
  signal c_260_237_0_False_shift: signed(25 downto 0);
  signal c_260_sel: std_logic_vector(1 downto 0);
  signal c_261: signed(24 downto 0);
  signal c_262: signed(24 downto 0);
  signal c_263: signed(24 downto 0);
  signal c_264: signed(24 downto 0);
  signal c_265: signed(24 downto 0);
  signal c_266: signed(24 downto 0);
  signal c_267: signed(25 downto 0);
  signal c_267_i0_resize: signed(25 downto 0);
  signal c_267_i1_resize: signed(25 downto 0);
  signal c_267_i0_shift: signed(25 downto 0);
  signal c_267_i1_shift: signed(25 downto 0);
  signal c_267_arith: signed(25 downto 0);
  signal c_267_oshift: signed(25 downto 0);
  signal c_267_sub_sel: std_logic;
  signal c_268: signed(25 downto 0);
  signal c_269: signed(25 downto 0);
  signal c_270: signed(33 downto 0);
  signal c_271: signed(33 downto 0);
  signal c_272: signed(32 downto 0);
  signal c_272_269_1_False_resize: signed(32 downto 0);
  signal c_272_269_1_False_shift: signed(32 downto 0);
  signal c_272_237_0_False_resize: signed(32 downto 0);
  signal c_272_237_0_False_shift: signed(32 downto 0);
  signal c_272_271_0_False_resize: signed(32 downto 0);
  signal c_272_271_0_False_shift: signed(32 downto 0);
  signal c_272_sel: std_logic_vector(1 downto 0);
  signal c_273: signed(28 downto 0);
  signal c_273_216_6_False_resize: signed(28 downto 0);
  signal c_273_216_6_False_shift: signed(28 downto 0);
  signal c_273_194_0_False_resize: signed(28 downto 0);
  signal c_273_194_0_False_shift: signed(28 downto 0);
  signal c_273_111_1_False_resize: signed(28 downto 0);
  signal c_273_111_1_False_shift: signed(28 downto 0);
  signal c_273_sel: std_logic_vector(1 downto 0);
  signal c_274: signed(28 downto 0);
  signal c_275: signed(28 downto 0);
  signal c_276: signed(28 downto 0);
  signal c_277: signed(28 downto 0);
  signal c_278: signed(28 downto 0);
  signal c_279: signed(28 downto 0);
  signal c_280: signed(28 downto 0);
  signal c_281: signed(28 downto 0);
  signal c_282: signed(31 downto 0);
  signal c_282_i0_resize: signed(31 downto 0);
  signal c_282_i1_resize: signed(31 downto 0);
  signal c_282_i0_shift: signed(31 downto 0);
  signal c_282_i1_shift: signed(31 downto 0);
  signal c_282_arith: signed(31 downto 0);
  signal c_282_oshift: signed(31 downto 0);
  signal c_282_sub_sel: std_logic;
  signal c_283: signed(32 downto 0);
  signal c_283_139_0_False_resize: signed(32 downto 0);
  signal c_283_139_0_False_shift: signed(32 downto 0);
  signal c_283_254_0_False_resize: signed(32 downto 0);
  signal c_283_254_0_False_shift: signed(32 downto 0);
  signal c_283_137_0_False_resize: signed(32 downto 0);
  signal c_283_137_0_False_shift: signed(32 downto 0);
  signal c_283_sel: std_logic_vector(1 downto 0);
  signal c_284: signed(15 downto 0);
  signal c_285: signed(15 downto 0);
  signal c_286: signed(30 downto 0);
  signal c_287: signed(30 downto 0);
  signal c_288: signed(30 downto 0);
  signal c_289: signed(30 downto 0);
  signal c_290: signed(30 downto 0);
  signal c_291: signed(30 downto 0);
  signal c_292: signed(30 downto 0);
  signal c_293: signed(30 downto 0);
  signal c_294: signed(30 downto 0);
  signal c_295: signed(30 downto 0);
  signal c_296: signed(30 downto 0);
  signal c_297: signed(30 downto 0);
  signal c_298: signed(30 downto 0);
  signal c_299: signed(30 downto 0);
  signal c_300: signed(27 downto 0);
  signal c_300_299_0_False_resize: signed(27 downto 0);
  signal c_300_299_0_False_shift: signed(27 downto 0);
  signal c_300_285_0_False_resize: signed(27 downto 0);
  signal c_300_285_0_False_shift: signed(27 downto 0);
  signal c_300_282_0_False_resize: signed(27 downto 0);
  signal c_300_282_0_False_shift: signed(27 downto 0);
  signal c_300_sel: std_logic_vector(1 downto 0);
  signal c_301: signed(32 downto 0);
  signal c_302: signed(32 downto 0);
  signal c_303: signed(32 downto 0);
  signal c_304: signed(32 downto 0);
  signal c_305: signed(32 downto 0);
  signal c_306: signed(32 downto 0);
  signal c_307: signed(32 downto 0);
  signal c_308: signed(32 downto 0);
  signal c_309: signed(28 downto 0);
  signal c_309_i0_resize: signed(32 downto 0);
  signal c_309_i1_resize: signed(32 downto 0);
  signal c_309_i0_shift: signed(32 downto 0);
  signal c_309_i1_shift: signed(32 downto 0);
  signal c_309_arith: signed(32 downto 0);
  signal c_309_oshift: signed(28 downto 0);
  signal c_309_sub_sel: std_logic;
  signal c_310: signed(25 downto 0);
  signal c_311: signed(25 downto 0);
  signal c_312: signed(25 downto 0);
  signal c_313: signed(25 downto 0);
  signal c_314: signed(25 downto 0);
  signal c_314_267_0_False_resize: signed(25 downto 0);
  signal c_314_267_0_False_shift: signed(25 downto 0);
  signal c_314_311_3_False_resize: signed(25 downto 0);
  signal c_314_311_3_False_shift: signed(25 downto 0);
  signal c_314_313_0_False_resize: signed(25 downto 0);
  signal c_314_313_0_False_shift: signed(25 downto 0);
  signal c_314_sel: std_logic_vector(1 downto 0);
  signal c_315: signed(25 downto 0);
  signal c_315_162_8_False_resize: signed(25 downto 0);
  signal c_315_162_8_False_shift: signed(25 downto 0);
  signal c_315_137_0_False_resize: signed(25 downto 0);
  signal c_315_137_0_False_shift: signed(25 downto 0);
  signal c_315_162_3_False_resize: signed(25 downto 0);
  signal c_315_162_3_False_shift: signed(25 downto 0);
  signal c_315_sel: std_logic_vector(1 downto 0);
  signal c_316: signed(25 downto 0);
  signal c_317: signed(25 downto 0);
  signal c_318: signed(25 downto 0);
  signal c_319: signed(25 downto 0);
  signal c_320: signed(25 downto 0);
  signal c_321: signed(25 downto 0);
  signal c_322: signed(25 downto 0);
  signal c_323: signed(25 downto 0);
  signal c_324: signed(24 downto 0);
  signal c_324_i0_resize: signed(24 downto 0);
  signal c_324_i1_resize: signed(24 downto 0);
  signal c_324_i0_shift: signed(24 downto 0);
  signal c_324_i1_shift: signed(24 downto 0);
  signal c_324_arith: signed(24 downto 0);
  signal c_324_oshift: signed(24 downto 0);
  signal c_325: signed(23 downto 0);
  signal c_325_67_3_False_resize: signed(23 downto 0);
  signal c_325_67_3_False_shift: signed(23 downto 0);
  signal c_325_65_0_False_resize: signed(23 downto 0);
  signal c_325_65_0_False_shift: signed(23 downto 0);
  signal c_325_67_2_False_resize: signed(23 downto 0);
  signal c_325_67_2_False_shift: signed(23 downto 0);
  signal c_325_sel: std_logic_vector(1 downto 0);
  signal c_326: signed(32 downto 0);
  signal c_327: signed(32 downto 0);
  signal c_328: signed(32 downto 0);
  signal c_329: signed(32 downto 0);
  signal c_330: signed(32 downto 0);
  signal c_331: signed(32 downto 0);
  signal c_332: signed(32 downto 0);
  signal c_333: signed(32 downto 0);
  signal c_334: signed(32 downto 0);
  signal c_335: signed(32 downto 0);
  signal c_336: signed(32 downto 0);
  signal c_337: signed(32 downto 0);
  signal c_338: signed(32 downto 0);
  signal c_339: signed(32 downto 0);
  signal c_340: signed(32 downto 0);
  signal c_341: signed(32 downto 0);
  signal c_342: signed(32 downto 0);
  signal c_343: signed(32 downto 0);
  signal c_344: signed(32 downto 0);
  signal c_345: signed(32 downto 0);
  signal c_346: signed(32 downto 0);
  signal c_347: signed(32 downto 0);
  signal c_348: signed(32 downto 0);
  signal c_349: signed(32 downto 0);
  signal c_350: signed(26 downto 0);
  signal c_350_339_6_False_resize: signed(26 downto 0);
  signal c_350_339_6_False_shift: signed(26 downto 0);
  signal c_350_324_1_False_resize: signed(26 downto 0);
  signal c_350_324_1_False_shift: signed(26 downto 0);
  signal c_350_349_0_False_resize: signed(26 downto 0);
  signal c_350_349_0_False_shift: signed(26 downto 0);
  signal c_350_sel: std_logic_vector(1 downto 0);
  signal c_351: signed(23 downto 0);
  signal c_352: signed(23 downto 0);
  signal c_353: signed(23 downto 0);
  signal c_354: signed(23 downto 0);
  signal c_355: signed(23 downto 0);
  signal c_356: signed(23 downto 0);
  signal c_357: signed(23 downto 0);
  signal c_358: signed(23 downto 0);
  signal c_359: signed(23 downto 0);
  signal c_360: signed(23 downto 0);
  signal c_361: signed(23 downto 0);
  signal c_362: signed(23 downto 0);
  signal c_363: signed(23 downto 0);
  signal c_364: signed(23 downto 0);
  signal c_365: signed(23 downto 0);
  signal c_366: signed(23 downto 0);
  signal c_367: signed(25 downto 0);
  signal c_367_i0_resize: signed(25 downto 0);
  signal c_367_i1_resize: signed(25 downto 0);
  signal c_367_i0_shift: signed(25 downto 0);
  signal c_367_i1_shift: signed(25 downto 0);
  signal c_367_arith: signed(25 downto 0);
  signal c_367_oshift: signed(25 downto 0);
  signal c_367_sub_sel: std_logic;
  signal c_368: signed(23 downto 0);
  signal c_369: signed(23 downto 0);
  signal c_370: signed(23 downto 0);
  signal c_371: signed(23 downto 0);
  signal c_372: signed(23 downto 0);
  signal c_373: signed(23 downto 0);
  signal c_374: signed(25 downto 0);
  signal c_374_335_1_False_resize: signed(25 downto 0);
  signal c_374_335_1_False_shift: signed(25 downto 0);
  signal c_374_237_0_False_resize: signed(25 downto 0);
  signal c_374_237_0_False_shift: signed(25 downto 0);
  signal c_374_373_0_False_resize: signed(25 downto 0);
  signal c_374_373_0_False_shift: signed(25 downto 0);
  signal c_374_sel: std_logic_vector(1 downto 0);
  signal c_375: signed(17 downto 0);
  signal c_376: signed(17 downto 0);
  signal c_377: signed(23 downto 0);
  signal c_377_376_0_False_resize: signed(23 downto 0);
  signal c_377_376_0_False_shift: signed(23 downto 0);
  signal c_377_171_0_False_resize: signed(23 downto 0);
  signal c_377_171_0_False_shift: signed(23 downto 0);
  signal c_377_343_1_False_resize: signed(23 downto 0);
  signal c_377_343_1_False_shift: signed(23 downto 0);
  signal c_377_sel: std_logic_vector(1 downto 0);
  signal c_378: signed(23 downto 0);
  signal c_379: signed(23 downto 0);
  signal c_380: signed(25 downto 0);
  signal c_380_i0_resize: signed(25 downto 0);
  signal c_380_i1_resize: signed(25 downto 0);
  signal c_380_i0_shift: signed(25 downto 0);
  signal c_380_i1_shift: signed(25 downto 0);
  signal c_380_arith: signed(25 downto 0);
  signal c_380_oshift: signed(25 downto 0);
  signal c_381: signed(15 downto 0);
  signal c_382: signed(15 downto 0);
  signal c_383: signed(24 downto 0);
  signal c_383_382_2_False_resize: signed(24 downto 0);
  signal c_383_382_2_False_shift: signed(24 downto 0);
  signal c_383_324_0_False_resize: signed(24 downto 0);
  signal c_383_324_0_False_shift: signed(24 downto 0);
  signal c_383_309_0_False_resize: signed(24 downto 0);
  signal c_383_309_0_False_shift: signed(24 downto 0);
  signal c_383_sel: std_logic_vector(1 downto 0);
  signal c_384: signed(15 downto 0);
  signal c_385: signed(15 downto 0);
  signal c_386: signed(31 downto 0);
  signal c_387: signed(31 downto 0);
  signal c_388: signed(31 downto 0);
  signal c_389: signed(31 downto 0);
  signal c_390: signed(31 downto 0);
  signal c_391: signed(31 downto 0);
  signal c_392: signed(31 downto 0);
  signal c_393: signed(31 downto 0);
  signal c_394: signed(31 downto 0);
  signal c_395: signed(31 downto 0);
  signal c_396: signed(25 downto 0);
  signal c_396_367_0_False_resize: signed(25 downto 0);
  signal c_396_367_0_False_shift: signed(25 downto 0);
  signal c_396_385_0_False_resize: signed(25 downto 0);
  signal c_396_385_0_False_shift: signed(25 downto 0);
  signal c_396_395_1_False_resize: signed(25 downto 0);
  signal c_396_395_1_False_shift: signed(25 downto 0);
  signal c_396_sel: std_logic_vector(1 downto 0);
  signal c_397: signed(24 downto 0);
  signal c_398: signed(24 downto 0);
  signal c_399: signed(25 downto 0);
  signal c_399_i0_resize: signed(25 downto 0);
  signal c_399_i1_resize: signed(25 downto 0);
  signal c_399_i0_shift: signed(25 downto 0);
  signal c_399_i1_shift: signed(25 downto 0);
  signal c_399_arith: signed(25 downto 0);
  signal c_399_oshift: signed(25 downto 0);
  signal c_399_sub_sel: std_logic;
  signal c_400: signed(33 downto 0);
  signal c_401: signed(33 downto 0);
  signal c_402: signed(27 downto 0);
  signal c_402_380_0_False_resize: signed(27 downto 0);
  signal c_402_380_0_False_shift: signed(27 downto 0);
  signal c_402_285_0_False_resize: signed(27 downto 0);
  signal c_402_285_0_False_shift: signed(27 downto 0);
  signal c_402_401_3_False_resize: signed(27 downto 0);
  signal c_402_401_3_False_shift: signed(27 downto 0);
  signal c_402_sel: std_logic_vector(1 downto 0);
  signal c_403: signed(33 downto 0);
  signal c_404: signed(33 downto 0);
  signal c_405: signed(33 downto 0);
  signal c_406: signed(33 downto 0);
  signal c_407: signed(28 downto 0);
  signal c_407_401_4_False_resize: signed(28 downto 0);
  signal c_407_401_4_False_shift: signed(28 downto 0);
  signal c_407_267_2_False_resize: signed(28 downto 0);
  signal c_407_267_2_False_shift: signed(28 downto 0);
  signal c_407_406_0_False_resize: signed(28 downto 0);
  signal c_407_406_0_False_shift: signed(28 downto 0);
  signal c_407_sel: std_logic_vector(1 downto 0);
  signal c_408: signed(27 downto 0);
  signal c_408_i0_resize: signed(27 downto 0);
  signal c_408_i1_resize: signed(27 downto 0);
  signal c_408_i0_shift: signed(27 downto 0);
  signal c_408_i1_shift: signed(27 downto 0);
  signal c_408_arith: signed(27 downto 0);
  signal c_408_oshift: signed(27 downto 0);
  signal c_408_sub_sel: std_logic;
  signal c_409: signed(17 downto 0);
  signal c_410: signed(17 downto 0);
  signal c_411: signed(17 downto 0);
  signal c_412: signed(17 downto 0);
  signal c_413: signed(31 downto 0);
  signal c_413_282_0_False_resize: signed(31 downto 0);
  signal c_413_282_0_False_shift: signed(31 downto 0);
  signal c_413_412_0_False_resize: signed(31 downto 0);
  signal c_413_412_0_False_shift: signed(31 downto 0);
  signal c_413_285_0_False_resize: signed(31 downto 0);
  signal c_413_285_0_False_shift: signed(31 downto 0);
  signal c_413_sel: std_logic_vector(1 downto 0);
  signal c_414: signed(31 downto 0);
  signal c_414_91_0_False_resize: signed(31 downto 0);
  signal c_414_91_0_False_shift: signed(31 downto 0);
  signal c_414_87_0_False_resize: signed(31 downto 0);
  signal c_414_87_0_False_shift: signed(31 downto 0);
  signal c_414_58_0_False_resize: signed(31 downto 0);
  signal c_414_58_0_False_shift: signed(31 downto 0);
  signal c_414_sel: std_logic_vector(1 downto 0);
  signal c_415: signed(31 downto 0);
  signal c_416: signed(31 downto 0);
  signal c_417: signed(31 downto 0);
  signal c_418: signed(31 downto 0);
  signal c_419: signed(31 downto 0);
  signal c_420: signed(31 downto 0);
  signal c_421: signed(31 downto 0);
  signal c_422: signed(31 downto 0);
  signal c_423: signed(31 downto 0);
  signal c_424: signed(31 downto 0);
  signal c_425: signed(31 downto 0);
  signal c_426: signed(31 downto 0);
  signal c_427: signed(31 downto 0);
  signal c_428: signed(31 downto 0);
  signal c_429: signed(31 downto 0);
  signal c_430: signed(31 downto 0);
  signal c_431: signed(24 downto 0);
  signal c_431_i0_resize: signed(31 downto 0);
  signal c_431_i1_resize: signed(31 downto 0);
  signal c_431_i0_shift: signed(31 downto 0);
  signal c_431_i1_shift: signed(31 downto 0);
  signal c_431_arith: signed(31 downto 0);
  signal c_431_oshift: signed(24 downto 0);
  signal c_432: signed(33 downto 0);
  signal c_433: signed(33 downto 0);
  signal c_434: signed(33 downto 0);
  signal c_435: signed(33 downto 0);
  signal c_436: signed(33 downto 0);
  signal c_437: signed(33 downto 0);
  signal c_438: signed(33 downto 0);
  signal c_439: signed(33 downto 0);
  signal c_440: signed(33 downto 0);
  signal c_441: signed(33 downto 0);
  signal c_442: signed(33 downto 0);
  signal c_443: signed(33 downto 0);
  signal c_444: signed(33 downto 0);
  signal c_444_443_0_False_resize: signed(33 downto 0);
  signal c_444_443_0_False_shift: signed(33 downto 0);
  signal c_444_309_3_False_resize: signed(33 downto 0);
  signal c_444_309_3_False_shift: signed(33 downto 0);
  signal c_444_382_9_False_resize: signed(33 downto 0);
  signal c_444_382_9_False_shift: signed(33 downto 0);
  signal c_444_sel: std_logic_vector(1 downto 0);
  signal c_445: signed(32 downto 0);
  signal c_445_349_0_False_resize: signed(32 downto 0);
  signal c_445_349_0_False_shift: signed(32 downto 0);
  signal c_445_324_0_False_resize: signed(32 downto 0);
  signal c_445_324_0_False_shift: signed(32 downto 0);
  signal c_445_sel: std_logic_vector(0 downto 0);
  signal c_446: signed(33 downto 0);
  signal c_446_i0_resize: signed(33 downto 0);
  signal c_446_i1_resize: signed(33 downto 0);
  signal c_446_i0_shift: signed(33 downto 0);
  signal c_446_i1_shift: signed(33 downto 0);
  signal c_446_arith: signed(33 downto 0);
  signal c_446_oshift: signed(33 downto 0);
  signal c_446_sub_sel: std_logic;
  signal c_447: signed(33 downto 0);
  signal c_448: signed(33 downto 0);
  signal c_449: signed(33 downto 0);
  signal c_450: signed(33 downto 0);
  signal c_451: signed(33 downto 0);
  signal c_452: signed(33 downto 0);
  signal c_453: signed(33 downto 0);
  signal c_454: signed(33 downto 0);
  signal c_455: signed(33 downto 0);
  signal c_455_399_0_False_resize: signed(33 downto 0);
  signal c_455_399_0_False_shift: signed(33 downto 0);
  signal c_455_454_0_False_resize: signed(33 downto 0);
  signal c_455_454_0_False_shift: signed(33 downto 0);
  signal c_455_452_1_False_resize: signed(33 downto 0);
  signal c_455_452_1_False_shift: signed(33 downto 0);
  signal c_455_sel: std_logic_vector(1 downto 0);
  signal c_456: signed(25 downto 0);
  signal c_457: signed(25 downto 0);
  signal c_458: signed(33 downto 0);
  signal c_458_448_0_False_resize: signed(33 downto 0);
  signal c_458_448_0_False_shift: signed(33 downto 0);
  signal c_458_324_0_False_resize: signed(33 downto 0);
  signal c_458_324_0_False_shift: signed(33 downto 0);
  signal c_458_457_2_False_resize: signed(33 downto 0);
  signal c_458_457_2_False_shift: signed(33 downto 0);
  signal c_458_sel: std_logic_vector(1 downto 0);
  signal c_459: signed(33 downto 0);
  signal c_460: signed(33 downto 0);
  signal c_461: signed(33 downto 0);
  signal c_462: signed(33 downto 0);
  signal c_463: signed(24 downto 0);
  signal c_463_i0_resize: signed(24 downto 0);
  signal c_463_i1_resize: signed(24 downto 0);
  signal c_463_i0_shift: signed(24 downto 0);
  signal c_463_i1_shift: signed(24 downto 0);
  signal c_463_arith: signed(24 downto 0);
  signal c_463_oshift: signed(24 downto 0);
  signal c_464: signed(19 downto 0);
  signal c_465: signed(19 downto 0);
  signal c_466: signed(19 downto 0);
  signal c_467: signed(19 downto 0);
  signal c_468: signed(19 downto 0);
  signal c_469: signed(19 downto 0);
  signal c_470: signed(19 downto 0);
  signal c_471: signed(19 downto 0);
  signal c_472: signed(19 downto 0);
  signal c_473: signed(19 downto 0);
  signal c_474: signed(19 downto 0);
  signal c_475: signed(19 downto 0);
  signal c_476: signed(19 downto 0);
  signal c_477: signed(19 downto 0);
  signal c_478: signed(31 downto 0);
  signal c_479: signed(31 downto 0);
  signal c_480: signed(31 downto 0);
  signal c_481: signed(31 downto 0);
  signal c_482: signed(31 downto 0);
  signal c_483: signed(31 downto 0);
  signal c_484: signed(31 downto 0);
  signal c_485: signed(31 downto 0);
  signal c_486: signed(26 downto 0);
  signal c_486_477_0_False_resize: signed(26 downto 0);
  signal c_486_477_0_False_shift: signed(26 downto 0);
  signal c_486_324_2_False_resize: signed(26 downto 0);
  signal c_486_324_2_False_shift: signed(26 downto 0);
  signal c_486_485_0_False_resize: signed(26 downto 0);
  signal c_486_485_0_False_shift: signed(26 downto 0);
  signal c_486_sel: std_logic_vector(1 downto 0);
  signal c_487: signed(25 downto 0);
  signal c_488: signed(25 downto 0);
  signal c_489: signed(25 downto 0);
  signal c_490: signed(25 downto 0);
  signal c_491: signed(25 downto 0);
  signal c_492: signed(25 downto 0);
  signal c_493: signed(25 downto 0);
  signal c_494: signed(25 downto 0);
  signal c_495: signed(25 downto 0);
  signal c_495_492_0_False_resize: signed(25 downto 0);
  signal c_495_492_0_False_shift: signed(25 downto 0);
  signal c_495_494_5_False_resize: signed(25 downto 0);
  signal c_495_494_5_False_shift: signed(25 downto 0);
  signal c_495_463_5_False_resize: signed(25 downto 0);
  signal c_495_463_5_False_shift: signed(25 downto 0);
  signal c_495_sel: std_logic_vector(1 downto 0);
  signal c_496: signed(26 downto 0);
  signal c_497: signed(26 downto 0);
  signal c_498: signed(26 downto 0);
  signal c_499: signed(26 downto 0);
  signal c_500: signed(26 downto 0);
  signal c_501: signed(26 downto 0);
  signal c_502: signed(25 downto 0);
  signal c_502_i0_resize: signed(25 downto 0);
  signal c_502_i1_resize: signed(25 downto 0);
  signal c_502_i0_shift: signed(25 downto 0);
  signal c_502_i1_shift: signed(25 downto 0);
  signal c_502_arith: signed(25 downto 0);
  signal c_502_oshift: signed(25 downto 0);
  signal c_502_sub_sel: std_logic;
  signal c_503: signed(24 downto 0);
  signal c_503_58_0_False_resize: signed(24 downto 0);
  signal c_503_58_0_False_shift: signed(24 downto 0);
  signal c_503_72_4_False_resize: signed(24 downto 0);
  signal c_503_72_4_False_shift: signed(24 downto 0);
  signal c_503_87_3_False_resize: signed(24 downto 0);
  signal c_503_87_3_False_shift: signed(24 downto 0);
  signal c_503_sel: std_logic_vector(1 downto 0);
  signal c_504: signed(25 downto 0);
  signal c_504_481_0_False_resize: signed(25 downto 0);
  signal c_504_481_0_False_shift: signed(25 downto 0);
  signal c_504_210_1_False_resize: signed(25 downto 0);
  signal c_504_210_1_False_shift: signed(25 downto 0);
  signal c_504_257_4_False_resize: signed(25 downto 0);
  signal c_504_257_4_False_shift: signed(25 downto 0);
  signal c_504_sel: std_logic_vector(1 downto 0);
  signal c_505: signed(24 downto 0);
  signal c_506: signed(24 downto 0);
  signal c_507: signed(24 downto 0);
  signal c_508: signed(24 downto 0);
  signal c_509: signed(24 downto 0);
  signal c_510: signed(24 downto 0);
  signal c_511: signed(24 downto 0);
  signal c_512: signed(24 downto 0);
  signal c_513: signed(24 downto 0);
  signal c_514: signed(24 downto 0);
  signal c_515: signed(24 downto 0);
  signal c_516: signed(24 downto 0);
  signal c_517: signed(24 downto 0);
  signal c_518: signed(24 downto 0);
  signal c_519: signed(25 downto 0);
  signal c_519_i0_resize: signed(25 downto 0);
  signal c_519_i1_resize: signed(25 downto 0);
  signal c_519_i0_shift: signed(25 downto 0);
  signal c_519_i1_shift: signed(25 downto 0);
  signal c_519_arith: signed(25 downto 0);
  signal c_519_oshift: signed(25 downto 0);
  signal c_519_sub_sel: std_logic;
  signal c_520: signed(25 downto 0);
  signal c_520_267_0_False_resize: signed(25 downto 0);
  signal c_520_267_0_False_shift: signed(25 downto 0);
  signal c_520_285_2_False_resize: signed(25 downto 0);
  signal c_520_285_2_False_shift: signed(25 downto 0);
  signal c_520_285_0_False_resize: signed(25 downto 0);
  signal c_520_285_0_False_shift: signed(25 downto 0);
  signal c_520_sel: std_logic_vector(1 downto 0);
  signal c_521: signed(23 downto 0);
  signal c_521_431_3_False_resize: signed(23 downto 0);
  signal c_521_431_3_False_shift: signed(23 downto 0);
  signal c_521_339_0_False_resize: signed(23 downto 0);
  signal c_521_339_0_False_shift: signed(23 downto 0);
  signal c_521_382_5_False_resize: signed(23 downto 0);
  signal c_521_382_5_False_shift: signed(23 downto 0);
  signal c_521_sel: std_logic_vector(1 downto 0);
  signal c_522: signed(25 downto 0);
  signal c_523: signed(25 downto 0);
  signal c_524: signed(25 downto 0);
  signal c_524_i0_resize: signed(25 downto 0);
  signal c_524_i1_resize: signed(25 downto 0);
  signal c_524_i0_shift: signed(25 downto 0);
  signal c_524_i1_shift: signed(25 downto 0);
  signal c_524_arith: signed(25 downto 0);
  signal c_524_oshift: signed(25 downto 0);
  signal c_524_sub_sel: std_logic;
  signal c_525: signed(25 downto 0);
  signal c_526: signed(25 downto 0);
  signal c_527: signed(25 downto 0);
  signal c_528: signed(25 downto 0);
  signal c_529: signed(25 downto 0);
  signal c_530: signed(25 downto 0);
  signal c_531: signed(25 downto 0);
  signal c_532: signed(25 downto 0);
  signal c_533: signed(25 downto 0);
  signal c_533_532_2_False_resize: signed(25 downto 0);
  signal c_533_532_2_False_shift: signed(25 downto 0);
  signal c_533_526_0_False_resize: signed(25 downto 0);
  signal c_533_526_0_False_shift: signed(25 downto 0);
  signal c_533_502_0_False_resize: signed(25 downto 0);
  signal c_533_502_0_False_shift: signed(25 downto 0);
  signal c_533_sel: std_logic_vector(1 downto 0);
  signal c_534: signed(25 downto 0);
  signal c_534_519_1_False_resize: signed(25 downto 0);
  signal c_534_519_1_False_shift: signed(25 downto 0);
  signal c_534_380_0_False_resize: signed(25 downto 0);
  signal c_534_380_0_False_shift: signed(25 downto 0);
  signal c_534_313_3_False_resize: signed(25 downto 0);
  signal c_534_313_3_False_shift: signed(25 downto 0);
  signal c_534_sel: std_logic_vector(1 downto 0);
  signal c_535: signed(25 downto 0);
  signal c_536: signed(25 downto 0);
  signal c_537: signed(25 downto 0);
  signal c_538: signed(25 downto 0);
  signal c_539: signed(25 downto 0);
  signal c_540: signed(25 downto 0);
  signal c_541: signed(25 downto 0);
  signal c_542: signed(25 downto 0);
  signal c_543: signed(25 downto 0);
  signal c_544: signed(25 downto 0);
  signal c_545: signed(25 downto 0);
  signal c_545_i0_resize: signed(25 downto 0);
  signal c_545_i1_resize: signed(25 downto 0);
  signal c_545_i0_shift: signed(25 downto 0);
  signal c_545_i1_shift: signed(25 downto 0);
  signal c_545_arith: signed(25 downto 0);
  signal c_545_oshift: signed(25 downto 0);
  signal c_546: signed(15 downto 0);
  signal c_547: signed(15 downto 0);
  signal c_548: signed(25 downto 0);
  signal c_549: signed(25 downto 0);
  signal c_550: signed(25 downto 0);
  signal c_551: signed(25 downto 0);
  signal c_552: signed(25 downto 0);
  signal c_553: signed(25 downto 0);
  signal c_554: signed(25 downto 0);
  signal c_554_399_0_False_resize: signed(25 downto 0);
  signal c_554_399_0_False_shift: signed(25 downto 0);
  signal c_554_553_0_False_resize: signed(25 downto 0);
  signal c_554_553_0_False_shift: signed(25 downto 0);
  signal c_554_547_0_False_resize: signed(25 downto 0);
  signal c_554_547_0_False_shift: signed(25 downto 0);
  signal c_554_sel: std_logic_vector(1 downto 0);
  signal c_555: signed(31 downto 0);
  signal c_556: signed(31 downto 0);
  signal c_557: signed(31 downto 0);
  signal c_558: signed(31 downto 0);
  signal c_559: signed(25 downto 0);
  signal c_560: signed(25 downto 0);
  signal c_561: signed(23 downto 0);
  signal c_561_558_4_False_resize: signed(23 downto 0);
  signal c_561_558_4_False_shift: signed(23 downto 0);
  signal c_561_560_0_False_resize: signed(23 downto 0);
  signal c_561_560_0_False_shift: signed(23 downto 0);
  signal c_561_463_0_False_resize: signed(23 downto 0);
  signal c_561_463_0_False_shift: signed(23 downto 0);
  signal c_561_sel: std_logic_vector(1 downto 0);
  signal c_562: signed(25 downto 0);
  signal c_563: signed(25 downto 0);
  signal c_564: signed(25 downto 0);
  signal c_564_i0_resize: signed(25 downto 0);
  signal c_564_i1_resize: signed(25 downto 0);
  signal c_564_i0_shift: signed(25 downto 0);
  signal c_564_i1_shift: signed(25 downto 0);
  signal c_564_arith: signed(25 downto 0);
  signal c_564_oshift: signed(25 downto 0);
  signal c_564_sub_sel: std_logic;
  signal c_565: signed(15 downto 0);
  signal c_566: signed(15 downto 0);
  signal c_567: signed(24 downto 0);
  signal c_568: signed(24 downto 0);
  signal c_569: signed(24 downto 0);
  signal c_570: signed(24 downto 0);
  signal c_571: signed(24 downto 0);
  signal c_572: signed(24 downto 0);
  signal c_573: signed(28 downto 0);
  signal c_573_463_5_False_resize: signed(28 downto 0);
  signal c_573_463_5_False_shift: signed(28 downto 0);
  signal c_573_572_0_False_resize: signed(28 downto 0);
  signal c_573_572_0_False_shift: signed(28 downto 0);
  signal c_573_566_2_False_resize: signed(28 downto 0);
  signal c_573_566_2_False_shift: signed(28 downto 0);
  signal c_573_sel: std_logic_vector(1 downto 0);
  signal c_574: signed(26 downto 0);
  signal c_574_285_0_False_resize: signed(26 downto 0);
  signal c_574_285_0_False_shift: signed(26 downto 0);
  signal c_574_347_0_False_resize: signed(26 downto 0);
  signal c_574_347_0_False_shift: signed(26 downto 0);
  signal c_574_282_1_False_resize: signed(26 downto 0);
  signal c_574_282_1_False_shift: signed(26 downto 0);
  signal c_574_sel: std_logic_vector(1 downto 0);
  signal c_575: signed(26 downto 0);
  signal c_576: signed(26 downto 0);
  signal c_577: signed(26 downto 0);
  signal c_578: signed(26 downto 0);
  signal c_579: signed(26 downto 0);
  signal c_580: signed(26 downto 0);
  signal c_581: signed(26 downto 0);
  signal c_582: signed(26 downto 0);
  signal c_583: signed(24 downto 0);
  signal c_583_i0_resize: signed(24 downto 0);
  signal c_583_i1_resize: signed(24 downto 0);
  signal c_583_i0_shift: signed(24 downto 0);
  signal c_583_i1_shift: signed(24 downto 0);
  signal c_583_arith: signed(24 downto 0);
  signal c_583_oshift: signed(24 downto 0);
  signal c_583_sub_sel: std_logic;
  signal c_584: signed(31 downto 0);
  signal c_585: signed(31 downto 0);
  signal c_586: signed(31 downto 0);
  signal c_587: signed(31 downto 0);
  signal c_588: signed(28 downto 0);
  signal c_588_309_0_False_resize: signed(28 downto 0);
  signal c_588_309_0_False_shift: signed(28 downto 0);
  signal c_588_587_0_False_resize: signed(28 downto 0);
  signal c_588_587_0_False_shift: signed(28 downto 0);
  signal c_588_431_3_False_resize: signed(28 downto 0);
  signal c_588_431_3_False_shift: signed(28 downto 0);
  signal c_588_sel: std_logic_vector(1 downto 0);
  signal c_589: signed(28 downto 0);
  signal c_589_477_1_False_resize: signed(28 downto 0);
  signal c_589_477_1_False_shift: signed(28 downto 0);
  signal c_589_382_0_False_resize: signed(28 downto 0);
  signal c_589_382_0_False_shift: signed(28 downto 0);
  signal c_589_408_1_False_resize: signed(28 downto 0);
  signal c_589_408_1_False_shift: signed(28 downto 0);
  signal c_589_sel: std_logic_vector(1 downto 0);
  signal c_590: signed(25 downto 0);
  signal c_590_i0_resize: signed(25 downto 0);
  signal c_590_i1_resize: signed(25 downto 0);
  signal c_590_i0_shift: signed(25 downto 0);
  signal c_590_i1_shift: signed(25 downto 0);
  signal c_590_arith: signed(25 downto 0);
  signal c_590_oshift: signed(25 downto 0);
  signal c_591: signed(27 downto 0);
  signal c_592: signed(27 downto 0);
  signal c_593: signed(27 downto 0);
  signal c_594: signed(27 downto 0);
  signal c_595: signed(27 downto 0);
  signal c_596: signed(27 downto 0);
  signal c_597: signed(25 downto 0);
  signal c_597_494_0_False_resize: signed(25 downto 0);
  signal c_597_494_0_False_shift: signed(25 downto 0);
  signal c_597_463_0_False_resize: signed(25 downto 0);
  signal c_597_463_0_False_shift: signed(25 downto 0);
  signal c_597_596_0_False_resize: signed(25 downto 0);
  signal c_597_596_0_False_shift: signed(25 downto 0);
  signal c_597_sel: std_logic_vector(1 downto 0);
  signal c_598: signed(25 downto 0);
  signal c_599: signed(25 downto 0);
  signal c_600: signed(25 downto 0);
  signal c_601: signed(25 downto 0);
  signal c_602: signed(25 downto 0);
  signal c_603: signed(25 downto 0);
  signal c_604: signed(25 downto 0);
  signal c_605: signed(25 downto 0);
  signal c_606: signed(25 downto 0);
  signal c_607: signed(25 downto 0);
  signal c_608: signed(25 downto 0);
  signal c_609: signed(25 downto 0);
  signal c_610: signed(25 downto 0);
  signal c_610_564_0_False_resize: signed(25 downto 0);
  signal c_610_564_0_False_shift: signed(25 downto 0);
  signal c_610_609_0_False_resize: signed(25 downto 0);
  signal c_610_609_0_False_shift: signed(25 downto 0);
  signal c_610_599_1_False_resize: signed(25 downto 0);
  signal c_610_599_1_False_shift: signed(25 downto 0);
  signal c_610_sel: std_logic_vector(1 downto 0);
  signal c_611: signed(25 downto 0);
  signal c_612: signed(25 downto 0);
  signal c_613: signed(25 downto 0);
  signal c_614: signed(25 downto 0);
  signal c_615: signed(25 downto 0);
  signal c_616: signed(25 downto 0);
  signal c_617: signed(25 downto 0);
  signal c_618: signed(25 downto 0);
  signal c_619: signed(25 downto 0);
  signal c_620: signed(25 downto 0);
  signal c_621: signed(25 downto 0);
  signal c_621_545_0_False_resize: signed(25 downto 0);
  signal c_621_545_0_False_shift: signed(25 downto 0);
  signal c_621_620_0_False_resize: signed(25 downto 0);
  signal c_621_620_0_False_shift: signed(25 downto 0);
  signal c_621_612_0_False_resize: signed(25 downto 0);
  signal c_621_612_0_False_shift: signed(25 downto 0);
  signal c_621_sel: std_logic_vector(1 downto 0);
  signal c_622: signed(25 downto 0);
  signal c_623: signed(25 downto 0);
  signal c_624: signed(25 downto 0);
  signal c_625: signed(25 downto 0);
  signal c_626: signed(25 downto 0);
  signal c_627: signed(25 downto 0);
  signal c_628: signed(25 downto 0);
  signal c_628_627_0_False_resize: signed(25 downto 0);
  signal c_628_627_0_False_shift: signed(25 downto 0);
  signal c_628_502_0_False_resize: signed(25 downto 0);
  signal c_628_502_0_False_shift: signed(25 downto 0);
  signal c_628_502_2_False_resize: signed(25 downto 0);
  signal c_628_502_2_False_shift: signed(25 downto 0);
  signal c_628_sel: std_logic_vector(1 downto 0);
  signal c_629: signed(25 downto 0);
  signal c_629_614_0_False_resize: signed(25 downto 0);
  signal c_629_614_0_False_shift: signed(25 downto 0);
  signal c_629_399_1_False_resize: signed(25 downto 0);
  signal c_629_399_1_False_shift: signed(25 downto 0);
  signal c_629_528_0_False_resize: signed(25 downto 0);
  signal c_629_528_0_False_shift: signed(25 downto 0);
  signal c_629_sel: std_logic_vector(1 downto 0);
  signal c_630: signed(33 downto 0);
  signal c_631: signed(33 downto 0);
  signal c_632: signed(33 downto 0);
  signal c_633: signed(33 downto 0);
  signal c_634: signed(33 downto 0);
  signal c_635: signed(33 downto 0);
  signal c_636: signed(24 downto 0);
  signal c_637: signed(24 downto 0);
  signal c_638: signed(24 downto 0);
  signal c_639: signed(24 downto 0);
  signal c_640: signed(25 downto 0);
  signal c_640_635_0_False_resize: signed(25 downto 0);
  signal c_640_635_0_False_shift: signed(25 downto 0);
  signal c_640_639_0_False_resize: signed(25 downto 0);
  signal c_640_639_0_False_shift: signed(25 downto 0);
  signal c_640_545_0_False_resize: signed(25 downto 0);
  signal c_640_545_0_False_shift: signed(25 downto 0);
  signal c_640_sel: std_logic_vector(1 downto 0);
  signal c_641: signed(24 downto 0);
  signal c_642: signed(24 downto 0);
  signal c_643: signed(24 downto 0);
  signal c_643_618_0_False_resize: signed(24 downto 0);
  signal c_643_618_0_False_shift: signed(24 downto 0);
  signal c_643_583_0_False_resize: signed(24 downto 0);
  signal c_643_583_0_False_shift: signed(24 downto 0);
  signal c_643_642_0_False_resize: signed(24 downto 0);
  signal c_643_642_0_False_shift: signed(24 downto 0);
  signal c_643_sel: std_logic_vector(1 downto 0);
  signal c_644: signed(19 downto 0);
  signal c_645: signed(19 downto 0);
  signal c_646: signed(19 downto 0);
  signal c_647: signed(19 downto 0);
  signal c_648: signed(19 downto 0);
  signal c_649: signed(19 downto 0);
  signal c_650: signed(19 downto 0);
  signal c_651: signed(19 downto 0);
  signal c_652: signed(25 downto 0);
  signal c_652_502_0_False_resize: signed(25 downto 0);
  signal c_652_502_0_False_shift: signed(25 downto 0);
  signal c_652_583_0_False_resize: signed(25 downto 0);
  signal c_652_583_0_False_shift: signed(25 downto 0);
  signal c_652_651_7_False_resize: signed(25 downto 0);
  signal c_652_651_7_False_shift: signed(25 downto 0);
  signal c_652_sel: std_logic_vector(1 downto 0);
  signal c_653: signed(32 downto 0);
  signal c_654: signed(32 downto 0);
  signal c_655: signed(25 downto 0);
  signal c_655_551_0_False_resize: signed(25 downto 0);
  signal c_655_551_0_False_shift: signed(25 downto 0);
  signal c_655_654_0_False_resize: signed(25 downto 0);
  signal c_655_654_0_False_shift: signed(25 downto 0);
  signal c_655_367_0_False_resize: signed(25 downto 0);
  signal c_655_367_0_False_shift: signed(25 downto 0);
  signal c_655_sel: std_logic_vector(1 downto 0);
  signal c_656: signed(25 downto 0);
  signal c_657: signed(25 downto 0);
  signal c_658: signed(25 downto 0);
  signal c_658_612_0_False_resize: signed(25 downto 0);
  signal c_658_612_0_False_shift: signed(25 downto 0);
  signal c_658_657_0_False_resize: signed(25 downto 0);
  signal c_658_657_0_False_shift: signed(25 downto 0);
  signal c_658_545_0_False_resize: signed(25 downto 0);
  signal c_658_545_0_False_shift: signed(25 downto 0);
  signal c_658_sel: std_logic_vector(1 downto 0);
  signal c_659: signed(25 downto 0);
  signal c_660: signed(25 downto 0);
  signal c_661: signed(25 downto 0);
  signal c_662: signed(25 downto 0);
  signal c_663: signed(25 downto 0);
  signal c_663_resize: signed(25 downto 0);
  signal c_664: signed(25 downto 0);
  signal c_665: signed(25 downto 0);
  signal c_666: signed(25 downto 0);
  signal c_666_resize: signed(25 downto 0);
  signal c_667: signed(25 downto 0);
  signal c_667_resize: signed(25 downto 0);
  signal c_668: signed(25 downto 0);
  signal c_669: signed(25 downto 0);
  signal c_670: signed(25 downto 0);
  signal c_670_resize: signed(25 downto 0);
  signal c_671: signed(25 downto 0);
  signal c_672: signed(25 downto 0);
  signal c_673: signed(25 downto 0);
  signal c_674: signed(25 downto 0);
  signal c_675: signed(25 downto 0);
  signal c_676: signed(25 downto 0);
  signal c_677: signed(25 downto 0);
  signal c_677_resize: signed(25 downto 0);
  signal c_678: signed(25 downto 0);
  signal c_678_resize: signed(25 downto 0);
  signal c_679: signed(24 downto 0);
  signal c_680: signed(24 downto 0);
  signal c_681: signed(24 downto 0);
  signal c_681_resize: signed(24 downto 0);
  signal c_682: signed(25 downto 0);
  signal c_683: signed(25 downto 0);
  signal c_684: signed(25 downto 0);
  signal c_684_resize: signed(25 downto 0);
  signal c_685: signed(25 downto 0);
  signal c_686: signed(25 downto 0);
  signal c_687: signed(25 downto 0);
  signal c_688: signed(25 downto 0);
  signal c_689: signed(25 downto 0);
  signal c_690: signed(25 downto 0);
  signal c_691: signed(25 downto 0);
  signal c_692: signed(25 downto 0);
  signal c_693: signed(25 downto 0);
  signal c_693_resize: signed(25 downto 0);
  signal c_694: signed(25 downto 0);
  signal c_694_resize: signed(25 downto 0);
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
      config_select_40 <= config_select_39;
      config_select_41 <= config_select_40;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 663
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_663);
    end if;
  end process;
  -- output node 1 with id 666
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_666);
    end if;
  end process;
  -- output node 2 with id 667
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_667);
    end if;
  end process;
  -- output node 3 with id 670
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_670);
    end if;
  end process;
  -- output node 4 with id 677
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_677);
    end if;
  end process;
  -- output node 5 with id 678
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_678);
    end if;
  end process;
  -- output node 6 with id 681
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_681);
    end if;
  end process;
  -- output node 7 with id 684
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_684);
    end if;
  end process;
  -- output node 8 with id 693
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_693);
    end if;
  end process;
  -- output node 9 with id 694
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_694);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [64], [4]]
  c_1_0_2_False_resize <= resize(c_0, 22);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_6_False_resize <= resize(c_0, 22);
  c_1_0_6_False_shift <= shift_left(c_1_0_6_False_resize, 6);
  c_1_0_0_False_resize <= resize(c_0, 22);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_2_False_shift;
        when "01" => c_1 <= c_1_0_6_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [512], [16]]
  c_2_0_4_False_resize <= resize(c_0, 25);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  c_2_0_9_False_resize <= resize(c_0, 25);
  c_2_0_9_False_shift <= shift_left(c_2_0_9_False_resize, 9);
  c_2_0_0_False_resize <= resize(c_0, 25);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_4_False_shift;
        when "01" => c_2 <= c_2_0_9_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[7], [0], [16]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 20,
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
  -- node of type 'register' in stage 1 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[64], [0], [65536]]
  c_6_3_0_False_resize <= resize(c_3, 32);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_6_False_resize <= resize(c_5, 32);
  c_6_5_6_False_shift <= shift_left(c_6_5_6_False_resize, 6);
  c_6_5_16_False_resize <= resize(c_5, 32);
  c_6_5_16_False_shift <= shift_left(c_6_5_16_False_resize, 16);
  with config_select_3 select c_6_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_0_False_shift;
        when "01" => c_6 <= c_6_5_6_False_shift;
        when others => c_6 <= c_6_5_16_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[64], [0], [16384]]
  c_7_5_14_False_resize <= resize(c_5, 30);
  c_7_5_14_False_shift <= shift_left(c_7_5_14_False_resize, 14);
  c_7_5_6_False_resize <= resize(c_5, 30);
  c_7_5_6_False_shift <= shift_left(c_7_5_6_False_resize, 6);
  c_7_3_0_False_resize <= resize(c_3, 30);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_5_14_False_shift;
        when "01" => c_7 <= c_7_5_6_False_shift;
        when others => c_7 <= c_7_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[128], [0], [49152]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 30,
      w_o => 32,
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
      c_8 <= c_8_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[57344], [0], [65536]]
  c_11_10_12_False_resize <= resize(c_10, 32);
  c_11_10_12_False_shift <= shift_left(c_11_10_12_False_resize, 12);
  c_11_10_13_False_resize <= resize(c_10, 32);
  c_11_10_13_False_shift <= shift_left(c_11_10_13_False_resize, 13);
  c_11_8_0_False_resize <= c_8;
  c_11_8_0_False_shift <= shift_left(c_11_8_0_False_resize, 0);
  with config_select_5 select c_11_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_10_12_False_shift;
        when "01" => c_11 <= c_11_10_13_False_shift;
        when others => c_11 <= c_11_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[16384], [0], [4096]]
  c_14_8_7_False_resize <= c_8(29 downto 0);
  c_14_8_7_False_shift <= shift_left(c_14_8_7_False_resize, 7);
  c_14_10_0_False_resize <= resize(c_10, 30);
  c_14_10_0_False_shift <= shift_left(c_14_10_0_False_resize, 0);
  c_14_13_12_False_resize <= resize(c_13, 30);
  c_14_13_12_False_shift <= shift_left(c_14_13_12_False_resize, 12);
  with config_select_5 select c_14_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_8_7_False_shift;
        when "01" => c_14 <= c_14_10_0_False_shift;
        when others => c_14 <= c_14_13_12_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[40960], [0], [61440]]
  with config_select_6 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 30,
      w_o => 32,
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
      x_i => c_11,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[128], [0], [61440]]
  c_20_15_0_False_resize <= c_15;
  c_20_15_0_False_shift <= shift_left(c_20_15_0_False_resize, 0);
  c_20_19_0_False_resize <= c_19;
  c_20_19_0_False_shift <= shift_left(c_20_19_0_False_resize, 0);
  c_20_17_0_False_resize <= resize(c_17, 32);
  c_20_17_0_False_shift <= shift_left(c_20_17_0_False_resize, 0);
  with config_select_7 select c_20_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_15_0_False_shift;
        when "01" => c_20 <= c_20_19_0_False_shift;
        when others => c_20 <= c_20_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 21 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_19 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 22 and associated fundamentals [[0], [0], [108]]
  with config_select_8 select c_22_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 32,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 10,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 25 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 26 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 27 and associated fundamentals [[8], [0], [8]]
  c_27_22_0_False_resize <= c_22(18 downto 0);
  c_27_22_0_False_shift <= shift_left(c_27_22_0_False_resize, 0);
  c_27_26_3_False_resize <= resize(c_26, 19);
  c_27_26_3_False_shift <= shift_left(c_27_26_3_False_resize, 3);
  with config_select_9 select c_27_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_22_0_False_shift;
        when others => c_27 <= c_27_26_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 28 and associated fundamentals [[8], [0], [4]]
  c_28_26_2_False_resize <= resize(c_26, 19);
  c_28_26_2_False_shift <= shift_left(c_28_26_2_False_resize, 2);
  c_28_22_0_False_resize <= c_22(18 downto 0);
  c_28_22_0_False_shift <= shift_left(c_28_22_0_False_resize, 0);
  c_28_26_3_False_resize <= resize(c_26, 19);
  c_28_26_3_False_shift <= shift_left(c_28_26_3_False_resize, 3);
  with config_select_9 select c_28_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_26_2_False_shift;
        when "01" => c_28 <= c_28_22_0_False_shift;
        when others => c_28 <= c_28_26_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 29 and associated fundamentals [[0], [0], [4]]
  with config_select_10 select c_29_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 18,
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
      sub_i => c_29_sub_sel,
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 30 and associated fundamentals [[128], [0], [256]]
  c_30_13_8_False_resize <= resize(c_13, 24);
  c_30_13_8_False_shift <= shift_left(c_30_13_8_False_resize, 8);
  c_30_8_0_False_resize <= c_8(23 downto 0);
  c_30_8_0_False_shift <= shift_left(c_30_8_0_False_resize, 0);
  c_30_10_0_False_resize <= resize(c_10, 24);
  c_30_10_0_False_shift <= shift_left(c_30_10_0_False_resize, 0);
  with config_select_5 select c_30_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_13_8_False_shift;
        when "01" => c_30 <= c_30_8_0_False_shift;
        when others => c_30 <= c_30_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[128], [0], [49152]]
  c_31_10_0_False_resize <= resize(c_10, 32);
  c_31_10_0_False_shift <= shift_left(c_31_10_0_False_resize, 0);
  c_31_13_7_False_resize <= resize(c_13, 32);
  c_31_13_7_False_shift <= shift_left(c_31_13_7_False_resize, 7);
  c_31_8_0_False_resize <= c_8;
  c_31_8_0_False_shift <= shift_left(c_31_8_0_False_resize, 0);
  with config_select_5 select c_31_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_10_0_False_shift;
        when "01" => c_31 <= c_31_13_7_False_shift;
        when others => c_31 <= c_31_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 32 and associated fundamentals [[0], [0], [49408]]
  with config_select_6 select c_32_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 32,
      w_o => 32,
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
      sub_i => c_32_sub_sel,
      x_i => c_30,
      y_i => c_18,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 33 and associated fundamentals [[16], [1], [16384]]
  c_33_0_0_False_resize <= resize(c_0, 30);
  c_33_0_0_False_shift <= shift_left(c_33_0_0_False_resize, 0);
  c_33_0_14_False_resize <= resize(c_0, 30);
  c_33_0_14_False_shift <= shift_left(c_33_0_14_False_resize, 14);
  c_33_0_4_False_resize <= resize(c_0, 30);
  c_33_0_4_False_shift <= shift_left(c_33_0_4_False_resize, 4);
  with config_select_1 select c_33_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_0_0_False_shift;
        when "01" => c_33 <= c_33_0_14_False_shift;
        when others => c_33 <= c_33_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 34 and associated fundamentals [[4], [16], [49408]]
  c_34_24_4_False_resize <= resize(c_24, 32);
  c_34_24_4_False_shift <= shift_left(c_34_24_4_False_resize, 4);
  c_34_32_0_False_resize <= c_32;
  c_34_32_0_False_shift <= shift_left(c_34_32_0_False_resize, 0);
  c_34_24_2_False_resize <= resize(c_24, 32);
  c_34_24_2_False_shift <= shift_left(c_34_24_2_False_resize, 2);
  with config_select_7 select c_34_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_24_4_False_shift;
        when "01" => c_34 <= c_34_32_0_False_shift;
        when others => c_34 <= c_34_24_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 35 and associated fundamentals [[16], [1], [16384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 36 and associated fundamentals [[16], [1], [16384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 37 and associated fundamentals [[16], [1], [16384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 38 and associated fundamentals [[16], [1], [16384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[16], [1], [16384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[16], [1], [16384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 41 and associated fundamentals [[20], [17], [65792]]
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 32,
      w_o => 33,
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
      x_i => c_40,
      y_i => c_34,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 44 and associated fundamentals [[7], [17], [1]]
  c_44_43_0_False_resize <= resize(c_43, 21);
  c_44_43_0_False_shift <= shift_left(c_44_43_0_False_resize, 0);
  c_44_26_0_False_resize <= resize(c_26, 21);
  c_44_26_0_False_shift <= shift_left(c_44_26_0_False_resize, 0);
  c_44_41_0_False_resize <= c_41(20 downto 0);
  c_44_41_0_False_shift <= shift_left(c_44_41_0_False_resize, 0);
  with config_select_9 select c_44_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_43_0_False_shift;
        when "01" => c_44 <= c_44_26_0_False_shift;
        when others => c_44 <= c_44_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 45 and associated fundamentals [[20], [2], [1]]
  c_45_41_0_False_resize <= c_41(20 downto 0);
  c_45_41_0_False_shift <= shift_left(c_45_41_0_False_resize, 0);
  c_45_26_0_False_resize <= resize(c_26, 21);
  c_45_26_0_False_shift <= shift_left(c_45_26_0_False_resize, 0);
  c_45_26_1_False_resize <= resize(c_26, 21);
  c_45_26_1_False_shift <= shift_left(c_45_26_1_False_resize, 1);
  with config_select_9 select c_45_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_41_0_False_shift;
        when "01" => c_45 <= c_45_26_0_False_shift;
        when others => c_45 <= c_45_26_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 46 and associated fundamentals [[696], [72], [40]]
  with config_select_10 select c_46_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_46: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_46_sub_sel,
      x_i => c_44,
      y_i => c_45,
      z_o => c_46_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_46_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 47 and associated fundamentals [[1], [2048], [512]]
  c_47_5_11_False_resize <= resize(c_5, 27);
  c_47_5_11_False_shift <= shift_left(c_47_5_11_False_resize, 11);
  c_47_5_0_False_resize <= resize(c_5, 27);
  c_47_5_0_False_shift <= shift_left(c_47_5_0_False_resize, 0);
  c_47_3_5_False_resize <= resize(c_3, 27);
  c_47_3_5_False_shift <= shift_left(c_47_3_5_False_resize, 5);
  with config_select_3 select c_47_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_5_11_False_shift;
        when "01" => c_47 <= c_47_5_0_False_shift;
        when others => c_47 <= c_47_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 49 and associated fundamentals [[128], [128], [216]]
  c_49_26_7_False_resize <= resize(c_26, 24);
  c_49_26_7_False_shift <= shift_left(c_49_26_7_False_resize, 7);
  c_49_22_1_False_resize <= resize(c_22, 24);
  c_49_22_1_False_shift <= shift_left(c_49_22_1_False_resize, 1);
  c_49_48_0_False_resize <= c_48(23 downto 0);
  c_49_48_0_False_shift <= shift_left(c_49_48_0_False_resize, 0);
  with config_select_9 select c_49_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_26_7_False_shift;
        when "01" => c_49 <= c_49_22_1_False_shift;
        when others => c_49 <= c_49_48_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 50 and associated fundamentals [[1], [2048], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 51 and associated fundamentals [[1], [2048], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 52 and associated fundamentals [[1], [2048], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 53 and associated fundamentals [[1], [2048], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 54 and associated fundamentals [[1], [2048], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 55 and associated fundamentals [[1], [2048], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 56 and associated fundamentals [[264], [16640], [3664]]
  with config_select_10 select c_56_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_56: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 24,
      w_o => 31,
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
      sub_i => c_56_sub_sel,
      x_i => c_55,
      y_i => c_49,
      z_o => c_56_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_56_oshift(30 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 60 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 61 and associated fundamentals [[14], [8192], [40]]
  c_61_58_13_False_resize <= resize(c_58, 29);
  c_61_58_13_False_shift <= shift_left(c_61_58_13_False_resize, 13);
  c_61_46_0_False_resize <= resize(c_46, 29);
  c_61_46_0_False_shift <= shift_left(c_61_46_0_False_resize, 0);
  c_61_60_1_False_resize <= resize(c_60, 29);
  c_61_60_1_False_shift <= shift_left(c_61_60_1_False_resize, 1);
  with config_select_11 select c_61_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "00" => c_61 <= c_61_58_13_False_shift;
        when "01" => c_61 <= c_61_46_0_False_shift;
        when others => c_61 <= c_61_60_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 62 and associated fundamentals [[40], [65536], [108]]
  c_62_26_16_False_resize <= resize(c_26, 32);
  c_62_26_16_False_shift <= shift_left(c_62_26_16_False_resize, 16);
  c_62_22_0_False_resize <= resize(c_22, 32);
  c_62_22_0_False_shift <= shift_left(c_62_22_0_False_resize, 0);
  c_62_41_1_False_resize <= c_41(31 downto 0);
  c_62_41_1_False_shift <= shift_left(c_62_41_1_False_resize, 1);
  with config_select_9 select c_62_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_62_sel is
        when "00" => c_62 <= c_62_26_16_False_shift;
        when "01" => c_62 <= c_62_22_0_False_shift;
        when others => c_62 <= c_62_41_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[40], [65536], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 64 and associated fundamentals [[40], [65536], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 65 and associated fundamentals [[152], [0], [212]]
  with config_select_12 select c_65_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_65: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 32,
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
      sub_i => c_65_sub_sel,
      x_i => c_61,
      y_i => c_64,
      z_o => c_65_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_65_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 66 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 67 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 68 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 69 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 70 and associated fundamentals [[152], [66560], [131072]]
  c_70_65_0_False_resize <= resize(c_65, 33);
  c_70_65_0_False_shift <= shift_left(c_70_65_0_False_resize, 0);
  c_70_69_2_False_resize <= resize(c_69, 33);
  c_70_69_2_False_shift <= shift_left(c_70_69_2_False_resize, 2);
  c_70_67_17_False_resize <= resize(c_67, 33);
  c_70_67_17_False_shift <= shift_left(c_70_67_17_False_resize, 17);
  with config_select_13 select c_70_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "00" => c_70 <= c_70_65_0_False_shift;
        when "01" => c_70 <= c_70_69_2_False_shift;
        when others => c_70 <= c_70_67_17_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 71 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 72 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 73 and associated fundamentals [[20], [256], [512]]
  c_73_29_7_False_resize <= resize(c_29, 25);
  c_73_29_7_False_shift <= shift_left(c_73_29_7_False_resize, 7);
  c_73_58_8_False_resize <= resize(c_58, 25);
  c_73_58_8_False_shift <= shift_left(c_73_58_8_False_resize, 8);
  c_73_72_0_False_resize <= c_72(24 downto 0);
  c_73_72_0_False_shift <= shift_left(c_73_72_0_False_resize, 0);
  with config_select_11 select c_73_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "00" => c_73 <= c_73_29_7_False_shift;
        when "01" => c_73 <= c_73_58_8_False_shift;
        when others => c_73 <= c_73_72_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 74 and associated fundamentals [[20], [256], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 75 and associated fundamentals [[20], [256], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 76 and associated fundamentals [[132], [66816], [131584]]
  with config_select_14 select c_76_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_76: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 25,
      w_o => 34,
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
      sub_i => c_76_sub_sel,
      x_i => c_70,
      y_i => c_75,
      z_o => c_76_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_76_oshift(33 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 77 and associated fundamentals [[1], [17408], [1]]
  c_77_26_0_False_resize <= resize(c_26, 31);
  c_77_26_0_False_shift <= shift_left(c_77_26_0_False_resize, 0);
  c_77_41_10_False_resize <= c_41(30 downto 0);
  c_77_41_10_False_shift <= shift_left(c_77_41_10_False_resize, 10);
  with config_select_9 select c_77_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "0" => c_77 <= c_77_26_0_False_shift;
        when others => c_77 <= c_77_41_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 78 and associated fundamentals [[1], [8192], [8]]
  c_78_0_3_False_resize <= resize(c_0, 29);
  c_78_0_3_False_shift <= shift_left(c_78_0_3_False_resize, 3);
  c_78_0_13_False_resize <= resize(c_0, 29);
  c_78_0_13_False_shift <= shift_left(c_78_0_13_False_resize, 13);
  c_78_0_0_False_resize <= resize(c_0, 29);
  c_78_0_0_False_shift <= shift_left(c_78_0_0_False_resize, 0);
  with config_select_1 select c_78_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "00" => c_78 <= c_78_0_3_False_shift;
        when "01" => c_78 <= c_78_0_13_False_shift;
        when others => c_78 <= c_78_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 79 and associated fundamentals [[1], [8192], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 80 and associated fundamentals [[1], [8192], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 81 and associated fundamentals [[1], [8192], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 82 and associated fundamentals [[1], [8192], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 83 and associated fundamentals [[1], [8192], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 84 and associated fundamentals [[1], [8192], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 85 and associated fundamentals [[1], [8192], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 86 and associated fundamentals [[1], [8192], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 87 and associated fundamentals [[3], [61440], [12]]
  with config_select_10 select c_87_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_87: entity work.adder_node
    generic map (
      w_x_i => 31,
      w_y_i => 29,
      w_o => 32,
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
      sub_i => c_87_sub_sel,
      x_i => c_77,
      y_i => c_86,
      z_o => c_87_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_87_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 88 and associated fundamentals [[40960], [0], [61440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 89 and associated fundamentals [[40960], [0], [61440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 90 and associated fundamentals [[40960], [0], [61440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 91 and associated fundamentals [[40960], [0], [61440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 92 and associated fundamentals [[81920], [61440], [10240]]
  c_92_46_8_False_resize <= resize(c_46, 33);
  c_92_46_8_False_shift <= shift_left(c_92_46_8_False_resize, 8);
  c_92_87_0_False_resize <= resize(c_87, 33);
  c_92_87_0_False_shift <= shift_left(c_92_87_0_False_resize, 0);
  c_92_91_1_False_resize <= resize(c_91, 33);
  c_92_91_1_False_shift <= shift_left(c_92_91_1_False_resize, 1);
  with config_select_11 select c_92_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_92_sel is
        when "00" => c_92 <= c_92_46_8_False_shift;
        when "01" => c_92 <= c_92_87_0_False_shift;
        when others => c_92 <= c_92_91_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 93 and associated fundamentals [[696], [2], [1024]]
  c_93_46_0_False_resize <= c_46;
  c_93_46_0_False_shift <= shift_left(c_93_46_0_False_resize, 0);
  c_93_58_1_False_resize <= resize(c_58, 26);
  c_93_58_1_False_shift <= shift_left(c_93_58_1_False_resize, 1);
  c_93_58_10_False_resize <= resize(c_58, 26);
  c_93_58_10_False_shift <= shift_left(c_93_58_10_False_resize, 10);
  with config_select_11 select c_93_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_93_sel is
        when "00" => c_93 <= c_93_46_0_False_shift;
        when "01" => c_93 <= c_93_58_1_False_shift;
        when others => c_93 <= c_93_58_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 94 and associated fundamentals [[104192], [61504], [-22528]]
  with config_select_12 select c_94_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_94: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 26,
      w_o => 33,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_94_sub_sel,
      x_i => c_92,
      y_i => c_93,
      z_o => c_94_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_94_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 95 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 96 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 97 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 98 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 99 and associated fundamentals [[2], [246016], [49152]]
  c_99_67_1_False_resize <= resize(c_67, 34);
  c_99_67_1_False_shift <= shift_left(c_99_67_1_False_resize, 1);
  c_99_98_0_False_resize <= resize(c_98, 34);
  c_99_98_0_False_shift <= shift_left(c_99_98_0_False_resize, 0);
  c_99_94_2_False_resize <= resize(c_94, 34);
  c_99_94_2_False_shift <= shift_left(c_99_94_2_False_resize, 2);
  with config_select_13 select c_99_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_99_sel is
        when "00" => c_99 <= c_99_67_1_False_shift;
        when "01" => c_99 <= c_99_98_0_False_shift;
        when others => c_99 <= c_99_94_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 100 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 101 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 102 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 103 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 104 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 105 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 106 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 107 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 108 and associated fundamentals [[132], [34], [2048]]
  c_108_103_7_False_resize <= resize(c_103, 27);
  c_108_103_7_False_shift <= shift_left(c_108_103_7_False_resize, 7);
  c_108_76_0_False_resize <= c_76(26 downto 0);
  c_108_76_0_False_shift <= shift_left(c_108_76_0_False_resize, 0);
  c_108_107_1_False_resize <= c_107(26 downto 0);
  c_108_107_1_False_shift <= shift_left(c_108_107_1_False_resize, 1);
  with config_select_15 select c_108_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_108_sel is
        when "00" => c_108 <= c_108_103_7_False_shift;
        when "01" => c_108 <= c_108_76_0_False_shift;
        when others => c_108 <= c_108_107_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 109 and associated fundamentals [[2], [246016], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 110 and associated fundamentals [[2], [246016], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'add' in stage 16 with id 111 and associated fundamentals [[134], [246050], [51200]]
  inst_adder_node_111: entity work.adder_node
    generic map (
      w_x_i => 34,
      w_y_i => 27,
      w_o => 34,
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
      x_i => c_110,
      y_i => c_108,
      z_o => c_111_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_111_oshift(33 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 112 and associated fundamentals [[40960], [0], [61440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 113 and associated fundamentals [[40960], [0], [61440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 114 and associated fundamentals [[40960], [0], [61440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 115 and associated fundamentals [[40960], [0], [61440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 116 and associated fundamentals [[104192], [61504], [-22528]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 117 and associated fundamentals [[104192], [61504], [-22528]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 118 and associated fundamentals [[104192], [66816], [61440]]
  c_118_76_0_False_resize <= c_76(32 downto 0);
  c_118_76_0_False_shift <= shift_left(c_118_76_0_False_resize, 0);
  c_118_115_0_False_resize <= resize(c_115, 33);
  c_118_115_0_False_shift <= shift_left(c_118_115_0_False_resize, 0);
  c_118_117_0_False_resize <= c_117;
  c_118_117_0_False_shift <= shift_left(c_118_117_0_False_resize, 0);
  with config_select_15 select c_118_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_118_sel is
        when "00" => c_118 <= c_118_76_0_False_shift;
        when "01" => c_118 <= c_118_115_0_False_shift;
        when others => c_118 <= c_118_117_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 119 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 120 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 121 and associated fundamentals [[40960], [61440], [-22528]]
  c_121_113_0_False_resize <= c_113;
  c_121_113_0_False_shift <= shift_left(c_121_113_0_False_resize, 0);
  c_121_120_0_False_resize <= c_120;
  c_121_120_0_False_shift <= shift_left(c_121_120_0_False_resize, 0);
  c_121_94_0_False_resize <= c_94(31 downto 0);
  c_121_94_0_False_shift <= shift_left(c_121_94_0_False_resize, 0);
  with config_select_13 select c_121_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_121_sel is
        when "00" => c_121 <= c_121_113_0_False_shift;
        when "01" => c_121 <= c_121_120_0_False_shift;
        when others => c_121 <= c_121_94_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 122 and associated fundamentals [[40960], [61440], [-22528]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 123 and associated fundamentals [[40960], [61440], [-22528]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 16 with id 124 and associated fundamentals [[988], [84], [1312]]
  inst_adder_node_124: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 32,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 6,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_118,
      y_i => c_123,
      z_o => c_124_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_124_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 125 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 126 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 127 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 128 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 129 and associated fundamentals [[988], [84], [512]]
  c_129_124_0_False_resize <= c_124;
  c_129_124_0_False_shift <= shift_left(c_129_124_0_False_resize, 0);
  c_129_128_9_False_resize <= resize(c_128, 26);
  c_129_128_9_False_shift <= shift_left(c_129_128_9_False_resize, 9);
  with config_select_17 select c_129_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_129_sel is
        when "0" => c_129 <= c_129_124_0_False_shift;
        when others => c_129 <= c_129_128_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 130 and associated fundamentals [[3], [1], [65792]]
  c_130_72_0_False_resize <= c_72;
  c_130_72_0_False_shift <= shift_left(c_130_72_0_False_resize, 0);
  c_130_58_0_False_resize <= resize(c_58, 33);
  c_130_58_0_False_shift <= shift_left(c_130_58_0_False_resize, 0);
  c_130_87_0_False_resize <= resize(c_87, 33);
  c_130_87_0_False_shift <= shift_left(c_130_87_0_False_resize, 0);
  with config_select_11 select c_130_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_130_sel is
        when "00" => c_130 <= c_130_72_0_False_shift;
        when "01" => c_130 <= c_130_58_0_False_shift;
        when others => c_130 <= c_130_87_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 131 and associated fundamentals [[3], [1], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 132 and associated fundamentals [[3], [1], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 133 and associated fundamentals [[3], [1], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 134 and associated fundamentals [[3], [1], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 135 and associated fundamentals [[3], [1], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_134 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 136 and associated fundamentals [[3], [1], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_135 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 18 with id 137 and associated fundamentals [[985], [83], [66304]]
  with config_select_18 select c_137_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_137: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 33,
      w_o => 33,
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
      sub_i => c_137_sub_sel,
      x_i => c_129,
      y_i => c_136,
      z_o => c_137_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_137_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 138 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_128 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 139 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 140 and associated fundamentals [[2], [83], [8]]
  c_140_139_3_False_resize <= resize(c_139, 23);
  c_140_139_3_False_shift <= shift_left(c_140_139_3_False_resize, 3);
  c_140_137_0_False_resize <= c_137(22 downto 0);
  c_140_137_0_False_shift <= shift_left(c_140_137_0_False_resize, 0);
  c_140_139_1_False_resize <= resize(c_139, 23);
  c_140_139_1_False_shift <= shift_left(c_140_139_1_False_resize, 1);
  with config_select_19 select c_140_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_140_sel is
        when "00" => c_140 <= c_140_139_3_False_shift;
        when "01" => c_140 <= c_140_137_0_False_shift;
        when others => c_140 <= c_140_139_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 141 and associated fundamentals [[40960], [0], [61440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 142 and associated fundamentals [[40960], [0], [61440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 143 and associated fundamentals [[40960], [0], [61440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 144 and associated fundamentals [[40960], [0], [61440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 145 and associated fundamentals [[985], [16], [61440]]
  c_145_144_0_False_resize <= c_144;
  c_145_144_0_False_shift <= shift_left(c_145_144_0_False_resize, 0);
  c_145_137_0_False_resize <= c_137(31 downto 0);
  c_145_137_0_False_shift <= shift_left(c_145_137_0_False_resize, 0);
  c_145_139_4_False_resize <= resize(c_139, 32);
  c_145_139_4_False_shift <= shift_left(c_145_139_4_False_resize, 4);
  with config_select_19 select c_145_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_145_sel is
        when "00" => c_145 <= c_145_144_0_False_shift;
        when "01" => c_145 <= c_145_137_0_False_shift;
        when others => c_145 <= c_145_139_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 20 with id 146 and associated fundamentals [[-983], [99], [61448]]
  with config_select_20 select c_146_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_146: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 32,
      w_o => 32,
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
      sub_i => c_146_sub_sel,
      x_i => c_140,
      y_i => c_145,
      z_o => c_146_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_146_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 147 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 148 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 149 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 150 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_149 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 151 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_150 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 152 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 153 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_152 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 154 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_153 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 155 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 156 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 157 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 158 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 159 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_158 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 160 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_159 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 161 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_160 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 162 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_161 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 163 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_162 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 164 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 165 and associated fundamentals [[24], [99], [32]]
  c_165_146_0_False_resize <= c_146(22 downto 0);
  c_165_146_0_False_shift <= shift_left(c_165_146_0_False_resize, 0);
  c_165_156_3_False_resize <= resize(c_156, 23);
  c_165_156_3_False_shift <= shift_left(c_165_156_3_False_resize, 3);
  c_165_164_3_False_resize <= c_164(22 downto 0);
  c_165_164_3_False_shift <= shift_left(c_165_164_3_False_resize, 3);
  with config_select_21 select c_165_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_165_sel is
        when "00" => c_165 <= c_165_146_0_False_shift;
        when "01" => c_165 <= c_165_156_3_False_shift;
        when others => c_165 <= c_165_164_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 166 and associated fundamentals [[128], [246050], [2]]
  c_166_111_0_False_resize <= c_111;
  c_166_111_0_False_shift <= shift_left(c_166_111_0_False_resize, 0);
  c_166_128_7_False_resize <= resize(c_128, 34);
  c_166_128_7_False_shift <= shift_left(c_166_128_7_False_resize, 7);
  c_166_128_1_False_resize <= resize(c_128, 34);
  c_166_128_1_False_shift <= shift_left(c_166_128_1_False_resize, 1);
  with config_select_17 select c_166_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_166_sel is
        when "00" => c_166 <= c_166_111_0_False_shift;
        when "01" => c_166 <= c_166_128_7_False_shift;
        when others => c_166 <= c_166_128_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 167 and associated fundamentals [[128], [246050], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_167 <= c_166 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 168 and associated fundamentals [[128], [246050], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_168 <= c_167 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 169 and associated fundamentals [[128], [246050], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_169 <= c_168 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 170 and associated fundamentals [[128], [246050], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_170 <= c_169 & "";
    end if;
  end process;
  -- node of type 'add' in stage 22 with id 171 and associated fundamentals [[176], [246248], [66]]
  inst_adder_node_171: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 34,
      w_o => 34,
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
      x_i => c_165,
      y_i => c_170,
      z_o => c_171_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_171 <= c_171_oshift(33 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 172 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_172 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 173 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_173 <= c_172 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 174 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_174 <= c_173 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 175 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_175 <= c_174 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 176 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 177 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_177 <= c_176 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 178 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_178 <= c_177 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 179 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_179 <= c_178 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 180 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_180 <= c_179 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 181 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_181 <= c_180 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 182 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_182 <= c_181 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 183 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_183 <= c_182 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 184 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_184 <= c_183 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 185 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_185 <= c_184 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 23 with id 186 and associated fundamentals [[1024], [8], [66]]
  c_186_175_3_False_resize <= resize(c_175, 26);
  c_186_175_3_False_shift <= shift_left(c_186_175_3_False_resize, 3);
  c_186_185_3_False_resize <= c_185(25 downto 0);
  c_186_185_3_False_shift <= shift_left(c_186_185_3_False_resize, 3);
  c_186_171_0_False_resize <= c_171(25 downto 0);
  c_186_171_0_False_shift <= shift_left(c_186_171_0_False_resize, 0);
  with config_select_23 select c_186_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_186_sel is
        when "00" => c_186 <= c_186_175_3_False_shift;
        when "01" => c_186 <= c_186_185_3_False_shift;
        when others => c_186 <= c_186_171_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 187 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_187 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 188 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_188 <= c_187 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 189 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_189 <= c_188 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 190 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_190 <= c_189 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 191 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_191 <= c_190 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 192 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_192 <= c_191 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 193 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_193 <= c_192 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 194 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_194 <= c_193 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 195 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_195 <= c_194 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 196 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_196 <= c_195 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 197 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_197 <= c_196 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 198 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_198 <= c_197 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 199 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_199 <= c_198 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 200 and associated fundamentals [[0], [0], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_200 <= c_199 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 201 and associated fundamentals [[132], [66816], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_201 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 202 and associated fundamentals [[132], [66816], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_202 <= c_201 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 203 and associated fundamentals [[132], [66816], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_203 <= c_202 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 204 and associated fundamentals [[132], [66816], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_204 <= c_203 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 205 and associated fundamentals [[132], [66816], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_205 <= c_204 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 206 and associated fundamentals [[132], [66816], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_206 <= c_205 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 207 and associated fundamentals [[132], [66816], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_207 <= c_206 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 208 and associated fundamentals [[132], [66816], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_208 <= c_207 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 23 with id 209 and associated fundamentals [[0], [133632], [66]]
  c_209_208_1_False_resize <= c_208;
  c_209_208_1_False_shift <= shift_left(c_209_208_1_False_resize, 1);
  c_209_200_0_False_resize <= resize(c_200, 34);
  c_209_200_0_False_shift <= shift_left(c_209_200_0_False_resize, 0);
  c_209_171_0_False_resize <= c_171;
  c_209_171_0_False_shift <= shift_left(c_209_171_0_False_resize, 0);
  with config_select_23 select c_209_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_209_sel is
        when "00" => c_209 <= c_209_208_1_False_shift;
        when "01" => c_209 <= c_209_200_0_False_shift;
        when others => c_209 <= c_209_171_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 24 with id 210 and associated fundamentals [[4096], [-133600], [330]]
  with config_select_24 select c_210_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_210: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 34,
      w_o => 34,
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
      sub_i => c_210_sub_sel,
      x_i => c_186,
      y_i => c_209,
      z_o => c_210_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_210 <= c_210_oshift(33 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 211 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_211 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 212 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_212 <= c_211 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 213 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_213 <= c_212 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 214 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_214 <= c_213 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 215 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_215 <= c_214 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 216 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_216 <= c_215 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 217 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_217 <= c_216 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 218 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_218 <= c_217 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 219 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_219 <= c_218 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 220 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_220 <= c_219 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 221 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_221 <= c_220 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 222 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_222 <= c_221 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 23 with id 223 and associated fundamentals [[696], [0], [528]]
  c_223_171_3_False_resize <= c_171(25 downto 0);
  c_223_171_3_False_shift <= shift_left(c_223_171_3_False_resize, 3);
  c_223_200_0_False_resize <= resize(c_200, 26);
  c_223_200_0_False_shift <= shift_left(c_223_200_0_False_resize, 0);
  c_223_222_0_False_resize <= c_222;
  c_223_222_0_False_shift <= shift_left(c_223_222_0_False_resize, 0);
  with config_select_23 select c_223_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_223_sel is
        when "00" => c_223 <= c_223_171_3_False_shift;
        when "01" => c_223 <= c_223_200_0_False_shift;
        when others => c_223 <= c_223_222_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 224 and associated fundamentals [[3], [64], [1]]
  c_224_87_0_False_resize <= c_87(21 downto 0);
  c_224_87_0_False_shift <= shift_left(c_224_87_0_False_resize, 0);
  c_224_58_0_False_resize <= resize(c_58, 22);
  c_224_58_0_False_shift <= shift_left(c_224_58_0_False_resize, 0);
  c_224_58_6_False_resize <= resize(c_58, 22);
  c_224_58_6_False_shift <= shift_left(c_224_58_6_False_resize, 6);
  with config_select_11 select c_224_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_224_sel is
        when "00" => c_224 <= c_224_87_0_False_shift;
        when "01" => c_224 <= c_224_58_0_False_shift;
        when others => c_224 <= c_224_58_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 225 and associated fundamentals [[3], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_225 <= c_224 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 226 and associated fundamentals [[3], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_226 <= c_225 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 227 and associated fundamentals [[3], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_227 <= c_226 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 228 and associated fundamentals [[3], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_228 <= c_227 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 229 and associated fundamentals [[3], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_229 <= c_228 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 230 and associated fundamentals [[3], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_230 <= c_229 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 231 and associated fundamentals [[3], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_231 <= c_230 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 232 and associated fundamentals [[3], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_232 <= c_231 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 233 and associated fundamentals [[3], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_233 <= c_232 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 234 and associated fundamentals [[3], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_234 <= c_233 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 235 and associated fundamentals [[3], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_235 <= c_234 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 236 and associated fundamentals [[3], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_236 <= c_235 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 24 with id 237 and associated fundamentals [[693], [64], [529]]
  with config_select_24 select c_237_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_237: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
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
      sub_i => c_237_sub_sel,
      x_i => c_223,
      y_i => c_236,
      z_o => c_237_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_237 <= c_237_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 238 and associated fundamentals [[1792], [4], [131584]]
  c_238_103_8_False_resize <= resize(c_103, 34);
  c_238_103_8_False_shift <= shift_left(c_238_103_8_False_resize, 8);
  c_238_76_0_False_resize <= c_76;
  c_238_76_0_False_shift <= shift_left(c_238_76_0_False_resize, 0);
  c_238_126_2_False_resize <= resize(c_126, 34);
  c_238_126_2_False_shift <= shift_left(c_238_126_2_False_resize, 2);
  with config_select_15 select c_238_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_238_sel is
        when "00" => c_238 <= c_238_103_8_False_shift;
        when "01" => c_238 <= c_238_76_0_False_shift;
        when others => c_238 <= c_238_126_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 23 with id 239 and associated fundamentals [[512], [72], [66]]
  c_239_185_2_False_resize <= c_185(24 downto 0);
  c_239_185_2_False_shift <= shift_left(c_239_185_2_False_resize, 2);
  c_239_171_0_False_resize <= c_171(24 downto 0);
  c_239_171_0_False_shift <= shift_left(c_239_171_0_False_resize, 0);
  c_239_222_0_False_resize <= c_222(24 downto 0);
  c_239_222_0_False_shift <= shift_left(c_239_222_0_False_resize, 0);
  with config_select_23 select c_239_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_239_sel is
        when "00" => c_239 <= c_239_185_2_False_shift;
        when "01" => c_239 <= c_239_171_0_False_shift;
        when others => c_239 <= c_239_222_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 240 and associated fundamentals [[1792], [4], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_240 <= c_238 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 241 and associated fundamentals [[1792], [4], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_241 <= c_240 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 242 and associated fundamentals [[1792], [4], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_242 <= c_241 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 243 and associated fundamentals [[1792], [4], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_243 <= c_242 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 244 and associated fundamentals [[1792], [4], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_244 <= c_243 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 245 and associated fundamentals [[1792], [4], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_245 <= c_244 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 246 and associated fundamentals [[1792], [4], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_246 <= c_245 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 247 and associated fundamentals [[1792], [4], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_247 <= c_246 & "";
    end if;
  end process;
  -- node of type 'add' in stage 24 with id 248 and associated fundamentals [[2304], [76], [131650]]
  inst_adder_node_248: entity work.adder_node
    generic map (
      w_x_i => 34,
      w_y_i => 25,
      w_o => 34,
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
      x_i => c_247,
      y_i => c_239,
      z_o => c_248_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_248 <= c_248_oshift(33 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 249 and associated fundamentals [[152], [0], [212]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_249 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 250 and associated fundamentals [[152], [0], [212]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_250 <= c_249 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 251 and associated fundamentals [[152], [0], [212]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_251 <= c_250 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 252 and associated fundamentals [[152], [0], [212]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_252 <= c_251 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 253 and associated fundamentals [[152], [0], [212]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_253 <= c_252 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 254 and associated fundamentals [[152], [0], [212]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_254 <= c_253 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 255 and associated fundamentals [[16], [83], [424]]
  c_255_139_4_False_resize <= resize(c_139, 25);
  c_255_139_4_False_shift <= shift_left(c_255_139_4_False_resize, 4);
  c_255_254_1_False_resize <= resize(c_254, 25);
  c_255_254_1_False_shift <= shift_left(c_255_254_1_False_resize, 1);
  c_255_137_0_False_resize <= c_137(24 downto 0);
  c_255_137_0_False_shift <= shift_left(c_255_137_0_False_resize, 0);
  with config_select_19 select c_255_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_255_sel is
        when "00" => c_255 <= c_255_139_4_False_shift;
        when "01" => c_255 <= c_255_254_1_False_shift;
        when others => c_255 <= c_255_137_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 256 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_256 <= c_175 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 257 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_257 <= c_256 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 258 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_258 <= c_185 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 259 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_259 <= c_258 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 260 and associated fundamentals [[693], [0], [1]]
  c_260_257_0_False_resize <= resize(c_257, 26);
  c_260_257_0_False_shift <= shift_left(c_260_257_0_False_resize, 0);
  c_260_259_0_False_resize <= c_259(25 downto 0);
  c_260_259_0_False_shift <= shift_left(c_260_259_0_False_resize, 0);
  c_260_237_0_False_resize <= c_237;
  c_260_237_0_False_shift <= shift_left(c_260_237_0_False_resize, 0);
  with config_select_25 select c_260_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_260_sel is
        when "00" => c_260 <= c_260_257_0_False_shift;
        when "01" => c_260 <= c_260_259_0_False_shift;
        when others => c_260 <= c_260_237_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 261 and associated fundamentals [[16], [83], [424]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_261 <= c_255 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 262 and associated fundamentals [[16], [83], [424]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_262 <= c_261 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 263 and associated fundamentals [[16], [83], [424]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_263 <= c_262 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 264 and associated fundamentals [[16], [83], [424]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_264 <= c_263 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 265 and associated fundamentals [[16], [83], [424]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_265 <= c_264 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 266 and associated fundamentals [[16], [83], [424]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_266 <= c_265 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 26 with id 267 and associated fundamentals [[-677], [83], [425]]
  with config_select_26 select c_267_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_267: entity work.adder_node
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
      sub_i => c_267_sub_sel,
      x_i => c_266,
      y_i => c_260,
      z_o => c_267_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_267 <= c_267_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 268 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_268 <= c_222 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 269 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_269 <= c_268 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 270 and associated fundamentals [[132], [66816], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_270 <= c_208 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 271 and associated fundamentals [[132], [66816], [131584]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_271 <= c_270 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 272 and associated fundamentals [[1392], [66816], [529]]
  c_272_269_1_False_resize <= resize(c_269, 33);
  c_272_269_1_False_shift <= shift_left(c_272_269_1_False_resize, 1);
  c_272_237_0_False_resize <= resize(c_237, 33);
  c_272_237_0_False_shift <= shift_left(c_272_237_0_False_resize, 0);
  c_272_271_0_False_resize <= c_271(32 downto 0);
  c_272_271_0_False_shift <= shift_left(c_272_271_0_False_resize, 0);
  with config_select_25 select c_272_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_272_sel is
        when "00" => c_272 <= c_272_269_1_False_shift;
        when "01" => c_272 <= c_272_237_0_False_shift;
        when others => c_272 <= c_272_271_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 273 and associated fundamentals [[268], [4608], [108]]
  c_273_216_6_False_resize <= resize(c_216, 29);
  c_273_216_6_False_shift <= shift_left(c_273_216_6_False_resize, 6);
  c_273_194_0_False_resize <= resize(c_194, 29);
  c_273_194_0_False_shift <= shift_left(c_273_194_0_False_resize, 0);
  c_273_111_1_False_resize <= c_111(28 downto 0);
  c_273_111_1_False_shift <= shift_left(c_273_111_1_False_resize, 1);
  with config_select_17 select c_273_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_273_sel is
        when "00" => c_273 <= c_273_216_6_False_shift;
        when "01" => c_273 <= c_273_194_0_False_shift;
        when others => c_273 <= c_273_111_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 274 and associated fundamentals [[268], [4608], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_274 <= c_273 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 275 and associated fundamentals [[268], [4608], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_275 <= c_274 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 276 and associated fundamentals [[268], [4608], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_276 <= c_275 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 277 and associated fundamentals [[268], [4608], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_277 <= c_276 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 278 and associated fundamentals [[268], [4608], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_278 <= c_277 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 279 and associated fundamentals [[268], [4608], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_279 <= c_278 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 280 and associated fundamentals [[268], [4608], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_280 <= c_279 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 281 and associated fundamentals [[268], [4608], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_281 <= c_280 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 26 with id 282 and associated fundamentals [[1928], [57600], [745]]
  with config_select_26 select c_282_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_282: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 29,
      w_o => 32,
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
      sub_i => c_282_sub_sel,
      x_i => c_272,
      y_i => c_281,
      z_o => c_282_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_282 <= c_282_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 283 and associated fundamentals [[152], [1], [66304]]
  c_283_139_0_False_resize <= resize(c_139, 33);
  c_283_139_0_False_shift <= shift_left(c_283_139_0_False_resize, 0);
  c_283_254_0_False_resize <= resize(c_254, 33);
  c_283_254_0_False_shift <= shift_left(c_283_254_0_False_resize, 0);
  c_283_137_0_False_resize <= c_137;
  c_283_137_0_False_shift <= shift_left(c_283_137_0_False_resize, 0);
  with config_select_19 select c_283_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_283_sel is
        when "00" => c_283 <= c_283_139_0_False_shift;
        when "01" => c_283 <= c_283_254_0_False_shift;
        when others => c_283 <= c_283_137_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 284 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_284 <= c_257 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 285 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_285 <= c_284 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 286 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_286 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 287 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_287 <= c_286 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 288 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_288 <= c_287 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 289 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_289 <= c_288 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 290 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_290 <= c_289 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 291 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_291 <= c_290 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 292 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_292 <= c_291 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 293 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_293 <= c_292 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 294 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_294 <= c_293 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 295 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_295 <= c_294 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 296 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_296 <= c_295 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 297 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_297 <= c_296 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 298 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_298 <= c_297 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 299 and associated fundamentals [[264], [16640], [3664]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_299 <= c_298 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 300 and associated fundamentals [[1928], [1], [3664]]
  c_300_299_0_False_resize <= c_299(27 downto 0);
  c_300_299_0_False_shift <= shift_left(c_300_299_0_False_resize, 0);
  c_300_285_0_False_resize <= resize(c_285, 28);
  c_300_285_0_False_shift <= shift_left(c_300_285_0_False_resize, 0);
  c_300_282_0_False_resize <= c_282(27 downto 0);
  c_300_282_0_False_shift <= shift_left(c_300_282_0_False_resize, 0);
  with config_select_27 select c_300_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_300_sel is
        when "00" => c_300 <= c_300_299_0_False_shift;
        when "01" => c_300 <= c_300_285_0_False_shift;
        when others => c_300 <= c_300_282_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 301 and associated fundamentals [[152], [1], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_301 <= c_283 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 302 and associated fundamentals [[152], [1], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_302 <= c_301 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 303 and associated fundamentals [[152], [1], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_303 <= c_302 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 304 and associated fundamentals [[152], [1], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_304 <= c_303 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 305 and associated fundamentals [[152], [1], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_305 <= c_304 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 306 and associated fundamentals [[152], [1], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_306 <= c_305 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 307 and associated fundamentals [[152], [1], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_307 <= c_306 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 308 and associated fundamentals [[152], [1], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_308 <= c_307 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 28 with id 309 and associated fundamentals [[-111], [0], [4373]]
  with config_select_28 select c_309_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_309: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 28,
      w_o => 29,
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
      sub_i => c_309_sub_sel,
      x_i => c_308,
      y_i => c_300,
      z_o => c_309_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_309 <= c_309_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 310 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_310 <= c_269 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 311 and associated fundamentals [[696], [72], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_311 <= c_310 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 312 and associated fundamentals [[693], [64], [529]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_312 <= c_237 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 313 and associated fundamentals [[693], [64], [529]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_313 <= c_312 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 314 and associated fundamentals [[693], [576], [425]]
  c_314_267_0_False_resize <= c_267;
  c_314_267_0_False_shift <= shift_left(c_314_267_0_False_resize, 0);
  c_314_311_3_False_resize <= c_311;
  c_314_311_3_False_shift <= shift_left(c_314_311_3_False_resize, 3);
  c_314_313_0_False_resize <= c_313;
  c_314_313_0_False_shift <= shift_left(c_314_313_0_False_resize, 0);
  with config_select_27 select c_314_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_314_sel is
        when "00" => c_314 <= c_314_267_0_False_shift;
        when "01" => c_314 <= c_314_311_3_False_shift;
        when others => c_314 <= c_314_313_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 315 and associated fundamentals [[768], [83], [96]]
  c_315_162_8_False_resize <= c_162(25 downto 0);
  c_315_162_8_False_shift <= shift_left(c_315_162_8_False_resize, 8);
  c_315_137_0_False_resize <= c_137(25 downto 0);
  c_315_137_0_False_shift <= shift_left(c_315_137_0_False_resize, 0);
  c_315_162_3_False_resize <= c_162(25 downto 0);
  c_315_162_3_False_shift <= shift_left(c_315_162_3_False_resize, 3);
  with config_select_19 select c_315_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_315_sel is
        when "00" => c_315 <= c_315_162_8_False_shift;
        when "01" => c_315 <= c_315_137_0_False_shift;
        when others => c_315 <= c_315_162_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 316 and associated fundamentals [[768], [83], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_316 <= c_315 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 317 and associated fundamentals [[768], [83], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_317 <= c_316 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 318 and associated fundamentals [[768], [83], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_318 <= c_317 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 319 and associated fundamentals [[768], [83], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_319 <= c_318 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 320 and associated fundamentals [[768], [83], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_320 <= c_319 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 321 and associated fundamentals [[768], [83], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_321 <= c_320 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 322 and associated fundamentals [[768], [83], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_322 <= c_321 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 323 and associated fundamentals [[768], [83], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_323 <= c_322 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 28 with id 324 and associated fundamentals [[-75], [493], [329]]
  inst_adder_node_324: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 25,
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
      x_i => c_314,
      y_i => c_323,
      z_o => c_324_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_324 <= c_324_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 325 and associated fundamentals [[152], [4], [8]]
  c_325_67_3_False_resize <= resize(c_67, 24);
  c_325_67_3_False_shift <= shift_left(c_325_67_3_False_resize, 3);
  c_325_65_0_False_resize <= c_65;
  c_325_65_0_False_shift <= shift_left(c_325_65_0_False_resize, 0);
  c_325_67_2_False_resize <= resize(c_67, 24);
  c_325_67_2_False_shift <= shift_left(c_325_67_2_False_resize, 2);
  with config_select_13 select c_325_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_325_sel is
        when "00" => c_325 <= c_325_67_3_False_shift;
        when "01" => c_325 <= c_325_65_0_False_shift;
        when others => c_325 <= c_325_67_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 326 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_326 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 327 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_327 <= c_326 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 328 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_328 <= c_327 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 329 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_329 <= c_328 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 330 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_330 <= c_329 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 331 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_331 <= c_330 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 332 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_332 <= c_331 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 333 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_333 <= c_332 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 334 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_334 <= c_333 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 335 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_335 <= c_334 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 336 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_336 <= c_335 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 337 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_337 <= c_336 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 338 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_338 <= c_337 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 339 and associated fundamentals [[20], [17], [65792]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_339 <= c_338 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 340 and associated fundamentals [[985], [83], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_340 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 341 and associated fundamentals [[985], [83], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_341 <= c_340 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 342 and associated fundamentals [[985], [83], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_342 <= c_341 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 343 and associated fundamentals [[985], [83], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_343 <= c_342 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 344 and associated fundamentals [[985], [83], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_344 <= c_343 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 345 and associated fundamentals [[985], [83], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_345 <= c_344 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 346 and associated fundamentals [[985], [83], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_346 <= c_345 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 347 and associated fundamentals [[985], [83], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_347 <= c_346 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 348 and associated fundamentals [[985], [83], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_348 <= c_347 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 349 and associated fundamentals [[985], [83], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_349 <= c_348 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 350 and associated fundamentals [[1280], [83], [658]]
  c_350_339_6_False_resize <= c_339(26 downto 0);
  c_350_339_6_False_shift <= shift_left(c_350_339_6_False_resize, 6);
  c_350_324_1_False_resize <= resize(c_324, 27);
  c_350_324_1_False_shift <= shift_left(c_350_324_1_False_resize, 1);
  c_350_349_0_False_resize <= c_349(26 downto 0);
  c_350_349_0_False_shift <= shift_left(c_350_349_0_False_resize, 0);
  with config_select_29 select c_350_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_350_sel is
        when "00" => c_350 <= c_350_339_6_False_shift;
        when "01" => c_350 <= c_350_324_1_False_shift;
        when others => c_350 <= c_350_349_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 351 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_351 <= c_325 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 352 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_352 <= c_351 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 353 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_353 <= c_352 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 354 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_354 <= c_353 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 355 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_355 <= c_354 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 356 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_356 <= c_355 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 357 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_357 <= c_356 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 358 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_358 <= c_357 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 359 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_359 <= c_358 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 360 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_360 <= c_359 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 361 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_361 <= c_360 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 362 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_362 <= c_361 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 363 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_363 <= c_362 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 364 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_364 <= c_363 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 365 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_365 <= c_364 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 366 and associated fundamentals [[152], [4], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_366 <= c_365 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 30 with id 367 and associated fundamentals [[-672], [99], [690]]
  with config_select_30 select c_367_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_367: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 27,
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
      sub_i => c_367_sub_sel,
      x_i => c_366,
      y_i => c_350,
      z_o => c_367_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_367 <= c_367_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 368 and associated fundamentals [[152], [0], [212]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_368 <= c_254 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 369 and associated fundamentals [[152], [0], [212]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_369 <= c_368 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 370 and associated fundamentals [[152], [0], [212]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_370 <= c_369 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 371 and associated fundamentals [[152], [0], [212]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_371 <= c_370 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 372 and associated fundamentals [[152], [0], [212]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_372 <= c_371 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 373 and associated fundamentals [[152], [0], [212]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_373 <= c_372 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 374 and associated fundamentals [[152], [34], [529]]
  c_374_335_1_False_resize <= c_335(25 downto 0);
  c_374_335_1_False_shift <= shift_left(c_374_335_1_False_resize, 1);
  c_374_237_0_False_resize <= c_237;
  c_374_237_0_False_shift <= shift_left(c_374_237_0_False_resize, 0);
  c_374_373_0_False_resize <= resize(c_373, 26);
  c_374_373_0_False_shift <= shift_left(c_374_373_0_False_resize, 0);
  with config_select_25 select c_374_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_374_sel is
        when "00" => c_374 <= c_374_335_1_False_shift;
        when "01" => c_374 <= c_374_237_0_False_shift;
        when others => c_374 <= c_374_373_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 375 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_375 <= c_156 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 376 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_376 <= c_375 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 23 with id 377 and associated fundamentals [[176], [166], [4]]
  c_377_376_0_False_resize <= resize(c_376, 24);
  c_377_376_0_False_shift <= shift_left(c_377_376_0_False_resize, 0);
  c_377_171_0_False_resize <= c_171(23 downto 0);
  c_377_171_0_False_shift <= shift_left(c_377_171_0_False_resize, 0);
  c_377_343_1_False_resize <= c_343(23 downto 0);
  c_377_343_1_False_shift <= shift_left(c_377_343_1_False_resize, 1);
  with config_select_23 select c_377_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_377_sel is
        when "00" => c_377 <= c_377_376_0_False_shift;
        when "01" => c_377 <= c_377_171_0_False_shift;
        when others => c_377 <= c_377_343_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 378 and associated fundamentals [[176], [166], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_378 <= c_377 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 379 and associated fundamentals [[176], [166], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_379 <= c_378 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 26 with id 380 and associated fundamentals [[-200], [-298], [521]]
  inst_adder_node_380: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_374,
      y_i => c_379,
      z_o => c_380_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_380 <= c_380_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 381 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_381 <= c_285 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 382 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_382 <= c_381 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 383 and associated fundamentals [[-111], [4], [329]]
  c_383_382_2_False_resize <= resize(c_382, 25);
  c_383_382_2_False_shift <= shift_left(c_383_382_2_False_resize, 2);
  c_383_324_0_False_resize <= c_324;
  c_383_324_0_False_shift <= shift_left(c_383_324_0_False_resize, 0);
  c_383_309_0_False_resize <= c_309(24 downto 0);
  c_383_309_0_False_shift <= shift_left(c_383_309_0_False_resize, 0);
  with config_select_29 select c_383_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_383_sel is
        when "00" => c_383 <= c_383_382_2_False_shift;
        when "01" => c_383 <= c_383_324_0_False_shift;
        when others => c_383 <= c_383_309_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 384 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_384 <= c_382 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 385 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_385 <= c_384 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 386 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_386 <= c_164 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 387 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_387 <= c_386 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 388 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_388 <= c_387 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 389 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_389 <= c_388 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 390 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_390 <= c_389 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 391 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_391 <= c_390 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 392 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_392 <= c_391 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 393 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_393 <= c_392 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 394 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_394 <= c_393 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 395 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_395 <= c_394 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 31 with id 396 and associated fundamentals [[-672], [1], [24]]
  c_396_367_0_False_resize <= c_367;
  c_396_367_0_False_shift <= shift_left(c_396_367_0_False_resize, 0);
  c_396_385_0_False_resize <= resize(c_385, 26);
  c_396_385_0_False_shift <= shift_left(c_396_385_0_False_resize, 0);
  c_396_395_1_False_resize <= c_395(25 downto 0);
  c_396_395_1_False_shift <= shift_left(c_396_395_1_False_resize, 1);
  with config_select_31 select c_396_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_396_sel is
        when "00" => c_396 <= c_396_367_0_False_shift;
        when "01" => c_396 <= c_396_385_0_False_shift;
        when others => c_396 <= c_396_395_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 397 and associated fundamentals [[-111], [4], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_397 <= c_383 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 398 and associated fundamentals [[-111], [4], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_398 <= c_397 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 32 with id 399 and associated fundamentals [[-783], [3], [353]]
  with config_select_32 select c_399_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_399: entity work.adder_node
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
      sub_i => c_399_sub_sel,
      x_i => c_398,
      y_i => c_396,
      z_o => c_399_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_399 <= c_399_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 400 and associated fundamentals [[4096], [-133600], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_400 <= c_210 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 401 and associated fundamentals [[4096], [-133600], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_401 <= c_400 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 402 and associated fundamentals [[1], [-298], [2640]]
  c_402_380_0_False_resize <= resize(c_380, 28);
  c_402_380_0_False_shift <= shift_left(c_402_380_0_False_resize, 0);
  c_402_285_0_False_resize <= resize(c_285, 28);
  c_402_285_0_False_shift <= shift_left(c_402_285_0_False_resize, 0);
  c_402_401_3_False_resize <= c_401(27 downto 0);
  c_402_401_3_False_shift <= shift_left(c_402_401_3_False_resize, 3);
  with config_select_27 select c_402_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_402_sel is
        when "00" => c_402 <= c_402_380_0_False_shift;
        when "01" => c_402 <= c_402_285_0_False_shift;
        when others => c_402 <= c_402_401_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 403 and associated fundamentals [[176], [246248], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_403 <= c_171 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 404 and associated fundamentals [[176], [246248], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_404 <= c_403 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 405 and associated fundamentals [[176], [246248], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_405 <= c_404 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 406 and associated fundamentals [[176], [246248], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_406 <= c_405 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 407 and associated fundamentals [[176], [332], [5280]]
  c_407_401_4_False_resize <= c_401(28 downto 0);
  c_407_401_4_False_shift <= shift_left(c_407_401_4_False_resize, 4);
  c_407_267_2_False_resize <= resize(c_267, 29);
  c_407_267_2_False_shift <= shift_left(c_407_267_2_False_resize, 2);
  c_407_406_0_False_resize <= c_406(28 downto 0);
  c_407_406_0_False_shift <= shift_left(c_407_406_0_False_resize, 0);
  with config_select_27 select c_407_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_407_sel is
        when "00" => c_407 <= c_407_401_4_False_shift;
        when "01" => c_407 <= c_407_267_2_False_shift;
        when others => c_407 <= c_407_406_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 28 with id 408 and associated fundamentals [[177], [-630], [-2640]]
  with config_select_28 select c_408_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_408: entity work.adder_node
    generic map (
      w_x_i => 28,
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
      sub_i => c_408_sub_sel,
      x_i => c_402,
      y_i => c_407,
      z_o => c_408_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_408 <= c_408_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 409 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_409 <= c_376 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 410 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_410 <= c_409 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 411 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_411 <= c_410 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 412 and associated fundamentals [[0], [0], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_412 <= c_411 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 413 and associated fundamentals [[0], [57600], [1]]
  c_413_282_0_False_resize <= c_282;
  c_413_282_0_False_shift <= shift_left(c_413_282_0_False_resize, 0);
  c_413_412_0_False_resize <= resize(c_412, 32);
  c_413_412_0_False_shift <= shift_left(c_413_412_0_False_resize, 0);
  c_413_285_0_False_resize <= resize(c_285, 32);
  c_413_285_0_False_shift <= shift_left(c_413_285_0_False_resize, 0);
  with config_select_27 select c_413_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_413_sel is
        when "00" => c_413 <= c_413_282_0_False_shift;
        when "01" => c_413 <= c_413_412_0_False_shift;
        when others => c_413 <= c_413_285_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 414 and associated fundamentals [[40960], [61440], [1]]
  c_414_91_0_False_resize <= c_91;
  c_414_91_0_False_shift <= shift_left(c_414_91_0_False_resize, 0);
  c_414_87_0_False_resize <= c_87;
  c_414_87_0_False_shift <= shift_left(c_414_87_0_False_resize, 0);
  c_414_58_0_False_resize <= resize(c_58, 32);
  c_414_58_0_False_shift <= shift_left(c_414_58_0_False_resize, 0);
  with config_select_11 select c_414_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_414_sel is
        when "00" => c_414 <= c_414_91_0_False_shift;
        when "01" => c_414 <= c_414_87_0_False_shift;
        when others => c_414 <= c_414_58_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 415 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_415 <= c_414 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 416 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_416 <= c_415 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 417 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_417 <= c_416 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 418 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_418 <= c_417 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 419 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_419 <= c_418 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 420 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_420 <= c_419 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 421 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_421 <= c_420 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 422 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_422 <= c_421 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 423 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_423 <= c_422 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 424 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_424 <= c_423 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 425 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_425 <= c_424 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 426 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_426 <= c_425 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 427 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_427 <= c_426 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 428 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_428 <= c_427 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 429 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_429 <= c_428 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 430 and associated fundamentals [[40960], [61440], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_430 <= c_429 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 28 with id 431 and associated fundamentals [[-320], [-30], [0]]
  inst_adder_node_431: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 32,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 7,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_413,
      y_i => c_430,
      z_o => c_431_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_431 <= c_431_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 432 and associated fundamentals [[134], [246050], [51200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_432 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 433 and associated fundamentals [[134], [246050], [51200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_433 <= c_432 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 434 and associated fundamentals [[134], [246050], [51200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_434 <= c_433 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 435 and associated fundamentals [[134], [246050], [51200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_435 <= c_434 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 436 and associated fundamentals [[134], [246050], [51200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_436 <= c_435 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 437 and associated fundamentals [[134], [246050], [51200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_437 <= c_436 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 438 and associated fundamentals [[134], [246050], [51200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_438 <= c_437 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 439 and associated fundamentals [[134], [246050], [51200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_439 <= c_438 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 440 and associated fundamentals [[134], [246050], [51200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_440 <= c_439 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 441 and associated fundamentals [[134], [246050], [51200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_441 <= c_440 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 442 and associated fundamentals [[134], [246050], [51200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_442 <= c_441 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 443 and associated fundamentals [[134], [246050], [51200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_443 <= c_442 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 444 and associated fundamentals [[-888], [246050], [512]]
  c_444_443_0_False_resize <= c_443;
  c_444_443_0_False_shift <= shift_left(c_444_443_0_False_resize, 0);
  c_444_309_3_False_resize <= resize(c_309, 34);
  c_444_309_3_False_shift <= shift_left(c_444_309_3_False_resize, 3);
  c_444_382_9_False_resize <= resize(c_382, 34);
  c_444_382_9_False_shift <= shift_left(c_444_382_9_False_resize, 9);
  with config_select_29 select c_444_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_444_sel is
        when "00" => c_444 <= c_444_443_0_False_shift;
        when "01" => c_444 <= c_444_309_3_False_shift;
        when others => c_444 <= c_444_382_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 445 and associated fundamentals [[-75], [83], [66304]]
  c_445_349_0_False_resize <= c_349;
  c_445_349_0_False_shift <= shift_left(c_445_349_0_False_resize, 0);
  c_445_324_0_False_resize <= resize(c_324, 33);
  c_445_324_0_False_shift <= shift_left(c_445_324_0_False_resize, 0);
  with config_select_29 select c_445_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_445_sel is
        when "0" => c_445 <= c_445_349_0_False_shift;
        when others => c_445 <= c_445_324_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 30 with id 446 and associated fundamentals [[-963], [245967], [66816]]
  with config_select_30 select c_446_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_446: entity work.adder_node
    generic map (
      w_x_i => 34,
      w_y_i => 33,
      w_o => 34,
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
      sub_i => c_446_sub_sel,
      x_i => c_444,
      y_i => c_445,
      z_o => c_446_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_446 <= c_446_oshift(33 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 447 and associated fundamentals [[176], [246248], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_447 <= c_406 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 448 and associated fundamentals [[176], [246248], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_448 <= c_447 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 449 and associated fundamentals [[176], [246248], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_449 <= c_448 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 450 and associated fundamentals [[176], [246248], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_450 <= c_449 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 451 and associated fundamentals [[176], [246248], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_451 <= c_450 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 452 and associated fundamentals [[176], [246248], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_452 <= c_451 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 453 and associated fundamentals [[-963], [245967], [66816]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_453 <= c_446 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 454 and associated fundamentals [[-963], [245967], [66816]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_454 <= c_453 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 33 with id 455 and associated fundamentals [[-783], [245967], [132]]
  c_455_399_0_False_resize <= resize(c_399, 34);
  c_455_399_0_False_shift <= shift_left(c_455_399_0_False_resize, 0);
  c_455_454_0_False_resize <= c_454;
  c_455_454_0_False_shift <= shift_left(c_455_454_0_False_resize, 0);
  c_455_452_1_False_resize <= c_452;
  c_455_452_1_False_shift <= shift_left(c_455_452_1_False_resize, 1);
  with config_select_33 select c_455_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_455_sel is
        when "00" => c_455 <= c_455_399_0_False_shift;
        when "01" => c_455 <= c_455_454_0_False_shift;
        when others => c_455 <= c_455_452_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 456 and associated fundamentals [[-200], [-298], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_456 <= c_380 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 457 and associated fundamentals [[-200], [-298], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_457 <= c_456 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 458 and associated fundamentals [[-800], [246248], [329]]
  c_458_448_0_False_resize <= c_448;
  c_458_448_0_False_shift <= shift_left(c_458_448_0_False_resize, 0);
  c_458_324_0_False_resize <= resize(c_324, 34);
  c_458_324_0_False_shift <= shift_left(c_458_324_0_False_resize, 0);
  c_458_457_2_False_resize <= resize(c_457, 34);
  c_458_457_2_False_shift <= shift_left(c_458_457_2_False_resize, 2);
  with config_select_29 select c_458_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_458_sel is
        when "00" => c_458 <= c_458_448_0_False_shift;
        when "01" => c_458 <= c_458_324_0_False_shift;
        when others => c_458 <= c_458_457_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 459 and associated fundamentals [[-800], [246248], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_459 <= c_458 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 460 and associated fundamentals [[-800], [246248], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_460 <= c_459 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 461 and associated fundamentals [[-800], [246248], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_461 <= c_460 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 462 and associated fundamentals [[-800], [246248], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_462 <= c_461 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 34 with id 463 and associated fundamentals [[17], [-281], [-197]]
  inst_adder_node_463: entity work.adder_node
    generic map (
      w_x_i => 34,
      w_y_i => 34,
      w_o => 25,
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
      x_i => c_455,
      y_i => c_462,
      z_o => c_463_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_463 <= c_463_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 464 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_464 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 465 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_465 <= c_464 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 466 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_466 <= c_465 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 467 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_467 <= c_466 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 468 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_468 <= c_467 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 469 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_469 <= c_468 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 470 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_470 <= c_469 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 471 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_471 <= c_470 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 472 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_472 <= c_471 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 473 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_473 <= c_472 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 474 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_474 <= c_473 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 475 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_475 <= c_474 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 476 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_476 <= c_475 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 477 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_477 <= c_476 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 478 and associated fundamentals [[-983], [99], [61448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_478 <= c_146 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 479 and associated fundamentals [[-983], [99], [61448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_479 <= c_478 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 480 and associated fundamentals [[-983], [99], [61448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_480 <= c_479 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 481 and associated fundamentals [[-983], [99], [61448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_481 <= c_480 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 482 and associated fundamentals [[-983], [99], [61448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_482 <= c_481 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 483 and associated fundamentals [[-983], [99], [61448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_483 <= c_482 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 484 and associated fundamentals [[-983], [99], [61448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_484 <= c_483 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 485 and associated fundamentals [[-983], [99], [61448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_485 <= c_484 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 486 and associated fundamentals [[7], [99], [1316]]
  c_486_477_0_False_resize <= resize(c_477, 27);
  c_486_477_0_False_shift <= shift_left(c_486_477_0_False_resize, 0);
  c_486_324_2_False_resize <= resize(c_324, 27);
  c_486_324_2_False_shift <= shift_left(c_486_324_2_False_resize, 2);
  c_486_485_0_False_resize <= c_485(26 downto 0);
  c_486_485_0_False_shift <= shift_left(c_486_485_0_False_resize, 0);
  with config_select_29 select c_486_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_486_sel is
        when "00" => c_486 <= c_486_477_0_False_shift;
        when "01" => c_486 <= c_486_324_2_False_shift;
        when others => c_486 <= c_486_485_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 487 and associated fundamentals [[-200], [-298], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_487 <= c_457 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 488 and associated fundamentals [[-200], [-298], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_488 <= c_487 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 489 and associated fundamentals [[-200], [-298], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_489 <= c_488 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 490 and associated fundamentals [[-200], [-298], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_490 <= c_489 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 491 and associated fundamentals [[-200], [-298], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_491 <= c_490 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 492 and associated fundamentals [[-200], [-298], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_492 <= c_491 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 493 and associated fundamentals [[-783], [3], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_493 <= c_399 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 494 and associated fundamentals [[-783], [3], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_494 <= c_493 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 35 with id 495 and associated fundamentals [[544], [96], [521]]
  c_495_492_0_False_resize <= c_492;
  c_495_492_0_False_shift <= shift_left(c_495_492_0_False_resize, 0);
  c_495_494_5_False_resize <= c_494;
  c_495_494_5_False_shift <= shift_left(c_495_494_5_False_resize, 5);
  c_495_463_5_False_resize <= resize(c_463, 26);
  c_495_463_5_False_shift <= shift_left(c_495_463_5_False_resize, 5);
  with config_select_35 select c_495_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_495_sel is
        when "00" => c_495 <= c_495_492_0_False_shift;
        when "01" => c_495 <= c_495_494_5_False_shift;
        when others => c_495 <= c_495_463_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 496 and associated fundamentals [[7], [99], [1316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_496 <= c_486 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 497 and associated fundamentals [[7], [99], [1316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_497 <= c_496 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 498 and associated fundamentals [[7], [99], [1316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_498 <= c_497 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 499 and associated fundamentals [[7], [99], [1316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_499 <= c_498 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 500 and associated fundamentals [[7], [99], [1316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_500 <= c_499 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 501 and associated fundamentals [[7], [99], [1316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_501 <= c_500 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 36 with id 502 and associated fundamentals [[551], [195], [795]]
  with config_select_36 select c_502_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_502: entity work.adder_node
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
      sub_i => c_502_sub_sel,
      x_i => c_501,
      y_i => c_495,
      z_o => c_502_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_502 <= c_502_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 503 and associated fundamentals [[24], [272], [1]]
  c_503_58_0_False_resize <= resize(c_58, 25);
  c_503_58_0_False_shift <= shift_left(c_503_58_0_False_resize, 0);
  c_503_72_4_False_resize <= c_72(24 downto 0);
  c_503_72_4_False_shift <= shift_left(c_503_72_4_False_resize, 4);
  c_503_87_3_False_resize <= c_87(24 downto 0);
  c_503_87_3_False_shift <= shift_left(c_503_87_3_False_resize, 3);
  with config_select_11 select c_503_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_503_sel is
        when "00" => c_503 <= c_503_58_0_False_shift;
        when "01" => c_503 <= c_503_72_4_False_shift;
        when others => c_503 <= c_503_87_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 504 and associated fundamentals [[16], [99], [660]]
  c_504_481_0_False_resize <= c_481(25 downto 0);
  c_504_481_0_False_shift <= shift_left(c_504_481_0_False_resize, 0);
  c_504_210_1_False_resize <= c_210(25 downto 0);
  c_504_210_1_False_shift <= shift_left(c_504_210_1_False_resize, 1);
  c_504_257_4_False_resize <= resize(c_257, 26);
  c_504_257_4_False_shift <= shift_left(c_504_257_4_False_resize, 4);
  with config_select_25 select c_504_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_504_sel is
        when "00" => c_504 <= c_504_481_0_False_shift;
        when "01" => c_504 <= c_504_210_1_False_shift;
        when others => c_504 <= c_504_257_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 505 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_505 <= c_503 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 506 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_506 <= c_505 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 507 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_507 <= c_506 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 508 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_508 <= c_507 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 509 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_509 <= c_508 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 510 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_510 <= c_509 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 511 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_511 <= c_510 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 512 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_512 <= c_511 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 513 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_513 <= c_512 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 514 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_514 <= c_513 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 515 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_515 <= c_514 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 516 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_516 <= c_515 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 517 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_517 <= c_516 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 518 and associated fundamentals [[24], [272], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_518 <= c_517 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 26 with id 519 and associated fundamentals [[40], [173], [-659]]
  with config_select_26 select c_519_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_519: entity work.adder_node
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
      sub_i => c_519_sub_sel,
      x_i => c_518,
      y_i => c_504,
      z_o => c_519_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_519 <= c_519_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 520 and associated fundamentals [[-677], [1], [4]]
  c_520_267_0_False_resize <= c_267;
  c_520_267_0_False_shift <= shift_left(c_520_267_0_False_resize, 0);
  c_520_285_2_False_resize <= resize(c_285, 26);
  c_520_285_2_False_shift <= shift_left(c_520_285_2_False_resize, 2);
  c_520_285_0_False_resize <= resize(c_285, 26);
  c_520_285_0_False_shift <= shift_left(c_520_285_0_False_resize, 0);
  with config_select_27 select c_520_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_520_sel is
        when "00" => c_520 <= c_520_267_0_False_shift;
        when "01" => c_520 <= c_520_285_2_False_shift;
        when others => c_520 <= c_520_285_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 521 and associated fundamentals [[20], [-240], [32]]
  c_521_431_3_False_resize <= c_431(23 downto 0);
  c_521_431_3_False_shift <= shift_left(c_521_431_3_False_resize, 3);
  c_521_339_0_False_resize <= c_339(23 downto 0);
  c_521_339_0_False_shift <= shift_left(c_521_339_0_False_resize, 0);
  c_521_382_5_False_resize <= resize(c_382, 24);
  c_521_382_5_False_shift <= shift_left(c_521_382_5_False_resize, 5);
  with config_select_29 select c_521_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_521_sel is
        when "00" => c_521 <= c_521_431_3_False_shift;
        when "01" => c_521 <= c_521_339_0_False_shift;
        when others => c_521 <= c_521_382_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 522 and associated fundamentals [[-677], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_522 <= c_520 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 523 and associated fundamentals [[-677], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_523 <= c_522 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 30 with id 524 and associated fundamentals [[-657], [241], [36]]
  with config_select_30 select c_524_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_524: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_524_sub_sel,
      x_i => c_523,
      y_i => c_521,
      z_o => c_524_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_524 <= c_524_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 525 and associated fundamentals [[-783], [3], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_525 <= c_494 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 526 and associated fundamentals [[-783], [3], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_526 <= c_525 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 527 and associated fundamentals [[-657], [241], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_527 <= c_524 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 528 and associated fundamentals [[-657], [241], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_528 <= c_527 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 529 and associated fundamentals [[-657], [241], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_529 <= c_528 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 530 and associated fundamentals [[-657], [241], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_530 <= c_529 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 531 and associated fundamentals [[-657], [241], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_531 <= c_530 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 532 and associated fundamentals [[-657], [241], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_532 <= c_531 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 533 and associated fundamentals [[-783], [195], [144]]
  c_533_532_2_False_resize <= c_532;
  c_533_532_2_False_shift <= shift_left(c_533_532_2_False_resize, 2);
  c_533_526_0_False_resize <= c_526;
  c_533_526_0_False_shift <= shift_left(c_533_526_0_False_resize, 0);
  c_533_502_0_False_resize <= c_502;
  c_533_502_0_False_shift <= shift_left(c_533_502_0_False_resize, 0);
  with config_select_37 select c_533_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_533_sel is
        when "00" => c_533 <= c_533_532_2_False_shift;
        when "01" => c_533 <= c_533_526_0_False_shift;
        when others => c_533 <= c_533_502_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 534 and associated fundamentals [[80], [512], [521]]
  c_534_519_1_False_resize <= c_519;
  c_534_519_1_False_shift <= shift_left(c_534_519_1_False_resize, 1);
  c_534_380_0_False_resize <= c_380;
  c_534_380_0_False_shift <= shift_left(c_534_380_0_False_resize, 0);
  c_534_313_3_False_resize <= c_313;
  c_534_313_3_False_shift <= shift_left(c_534_313_3_False_resize, 3);
  with config_select_27 select c_534_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_534_sel is
        when "00" => c_534 <= c_534_519_1_False_shift;
        when "01" => c_534 <= c_534_380_0_False_shift;
        when others => c_534 <= c_534_313_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 535 and associated fundamentals [[80], [512], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_535 <= c_534 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 536 and associated fundamentals [[80], [512], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_536 <= c_535 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 537 and associated fundamentals [[80], [512], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_537 <= c_536 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 538 and associated fundamentals [[80], [512], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_538 <= c_537 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 539 and associated fundamentals [[80], [512], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_539 <= c_538 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 540 and associated fundamentals [[80], [512], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_540 <= c_539 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 541 and associated fundamentals [[80], [512], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_541 <= c_540 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 542 and associated fundamentals [[80], [512], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_542 <= c_541 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 543 and associated fundamentals [[80], [512], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_543 <= c_542 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 544 and associated fundamentals [[80], [512], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_544 <= c_543 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 38 with id 545 and associated fundamentals [[-943], [-829], [-898]]
  inst_adder_node_545: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_533,
      y_i => c_544,
      z_o => c_545_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_545 <= c_545_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 546 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_546 <= c_385 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 547 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_547 <= c_546 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 548 and associated fundamentals [[-677], [83], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_548 <= c_267 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 549 and associated fundamentals [[-677], [83], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_549 <= c_548 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 550 and associated fundamentals [[-677], [83], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_550 <= c_549 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 551 and associated fundamentals [[-677], [83], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_551 <= c_550 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 552 and associated fundamentals [[-677], [83], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_552 <= c_551 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 553 and associated fundamentals [[-677], [83], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_553 <= c_552 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 33 with id 554 and associated fundamentals [[-677], [1], [353]]
  c_554_399_0_False_resize <= c_399;
  c_554_399_0_False_shift <= shift_left(c_554_399_0_False_resize, 0);
  c_554_553_0_False_resize <= c_553;
  c_554_553_0_False_shift <= shift_left(c_554_553_0_False_resize, 0);
  c_554_547_0_False_resize <= resize(c_547, 26);
  c_554_547_0_False_shift <= shift_left(c_554_547_0_False_resize, 0);
  with config_select_33 select c_554_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_554_sel is
        when "00" => c_554 <= c_554_399_0_False_shift;
        when "01" => c_554 <= c_554_553_0_False_shift;
        when others => c_554 <= c_554_547_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 555 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_555 <= c_395 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 556 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_556 <= c_555 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 557 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_557 <= c_556 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 558 and associated fundamentals [[3], [61440], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_558 <= c_557 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 559 and associated fundamentals [[-677], [83], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_559 <= c_553 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 560 and associated fundamentals [[-677], [83], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_560 <= c_559 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 35 with id 561 and associated fundamentals [[17], [83], [192]]
  c_561_558_4_False_resize <= c_558(23 downto 0);
  c_561_558_4_False_shift <= shift_left(c_561_558_4_False_resize, 4);
  c_561_560_0_False_resize <= c_560(23 downto 0);
  c_561_560_0_False_shift <= shift_left(c_561_560_0_False_resize, 0);
  c_561_463_0_False_resize <= c_463(23 downto 0);
  c_561_463_0_False_shift <= shift_left(c_561_463_0_False_resize, 0);
  with config_select_35 select c_561_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_561_sel is
        when "00" => c_561 <= c_561_558_4_False_shift;
        when "01" => c_561 <= c_561_560_0_False_shift;
        when others => c_561 <= c_561_463_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 562 and associated fundamentals [[-677], [1], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_562 <= c_554 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 563 and associated fundamentals [[-677], [1], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_563 <= c_562 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 36 with id 564 and associated fundamentals [[-609], [-331], [-415]]
  with config_select_36 select c_564_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_564: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_564_sub_sel,
      x_i => c_563,
      y_i => c_561,
      z_o => c_564_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_564 <= c_564_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 565 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_565 <= c_547 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 566 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_566 <= c_565 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 567 and associated fundamentals [[-75], [493], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_567 <= c_324 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 568 and associated fundamentals [[-75], [493], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_568 <= c_567 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 569 and associated fundamentals [[-75], [493], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_569 <= c_568 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 570 and associated fundamentals [[-75], [493], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_570 <= c_569 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 571 and associated fundamentals [[-75], [493], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_571 <= c_570 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 572 and associated fundamentals [[-75], [493], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_572 <= c_571 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 35 with id 573 and associated fundamentals [[4], [493], [-6304]]
  c_573_463_5_False_resize <= resize(c_463, 29);
  c_573_463_5_False_shift <= shift_left(c_573_463_5_False_resize, 5);
  c_573_572_0_False_resize <= resize(c_572, 29);
  c_573_572_0_False_shift <= shift_left(c_573_572_0_False_resize, 0);
  c_573_566_2_False_resize <= resize(c_566, 29);
  c_573_566_2_False_shift <= shift_left(c_573_566_2_False_resize, 2);
  with config_select_35 select c_573_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_573_sel is
        when "00" => c_573 <= c_573_463_5_False_shift;
        when "01" => c_573 <= c_573_572_0_False_shift;
        when others => c_573 <= c_573_566_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 574 and associated fundamentals [[1], [83], [1490]]
  c_574_285_0_False_resize <= resize(c_285, 27);
  c_574_285_0_False_shift <= shift_left(c_574_285_0_False_resize, 0);
  c_574_347_0_False_resize <= c_347(26 downto 0);
  c_574_347_0_False_shift <= shift_left(c_574_347_0_False_resize, 0);
  c_574_282_1_False_resize <= c_282(26 downto 0);
  c_574_282_1_False_shift <= shift_left(c_574_282_1_False_resize, 1);
  with config_select_27 select c_574_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_574_sel is
        when "00" => c_574 <= c_574_285_0_False_shift;
        when "01" => c_574 <= c_574_347_0_False_shift;
        when others => c_574 <= c_574_282_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 575 and associated fundamentals [[1], [83], [1490]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_575 <= c_574 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 576 and associated fundamentals [[1], [83], [1490]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_576 <= c_575 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 577 and associated fundamentals [[1], [83], [1490]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_577 <= c_576 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 578 and associated fundamentals [[1], [83], [1490]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_578 <= c_577 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 579 and associated fundamentals [[1], [83], [1490]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_579 <= c_578 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 580 and associated fundamentals [[1], [83], [1490]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_580 <= c_579 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 581 and associated fundamentals [[1], [83], [1490]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_581 <= c_580 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 582 and associated fundamentals [[1], [83], [1490]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_582 <= c_581 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 36 with id 583 and associated fundamentals [[8], [161], [-344]]
  with config_select_36 select c_583_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_583: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 27,
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
      sub_i => c_583_sub_sel,
      x_i => c_573,
      y_i => c_582,
      z_o => c_583_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_583 <= c_583_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 584 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_584 <= c_259 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 585 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_585 <= c_584 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 586 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_586 <= c_585 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 587 and associated fundamentals [[128], [0], [49152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_587 <= c_586 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 588 and associated fundamentals [[128], [-240], [4373]]
  c_588_309_0_False_resize <= c_309;
  c_588_309_0_False_shift <= shift_left(c_588_309_0_False_resize, 0);
  c_588_587_0_False_resize <= c_587(28 downto 0);
  c_588_587_0_False_shift <= shift_left(c_588_587_0_False_resize, 0);
  c_588_431_3_False_resize <= resize(c_431, 29);
  c_588_431_3_False_shift <= shift_left(c_588_431_3_False_resize, 3);
  with config_select_29 select c_588_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_588_sel is
        when "00" => c_588 <= c_588_309_0_False_shift;
        when "01" => c_588 <= c_588_587_0_False_shift;
        when others => c_588 <= c_588_431_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 589 and associated fundamentals [[14], [1], [-5280]]
  c_589_477_1_False_resize <= resize(c_477, 29);
  c_589_477_1_False_shift <= shift_left(c_589_477_1_False_resize, 1);
  c_589_382_0_False_resize <= resize(c_382, 29);
  c_589_382_0_False_shift <= shift_left(c_589_382_0_False_resize, 0);
  c_589_408_1_False_resize <= resize(c_408, 29);
  c_589_408_1_False_shift <= shift_left(c_589_408_1_False_resize, 1);
  with config_select_29 select c_589_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_589_sel is
        when "00" => c_589 <= c_589_477_1_False_shift;
        when "01" => c_589 <= c_589_382_0_False_shift;
        when others => c_589 <= c_589_408_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 30 with id 590 and associated fundamentals [[142], [-239], [-907]]
  inst_adder_node_590: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 29,
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
      x_i => c_588,
      y_i => c_589,
      z_o => c_590_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_590 <= c_590_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 591 and associated fundamentals [[177], [-630], [-2640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_591 <= c_408 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 592 and associated fundamentals [[177], [-630], [-2640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_592 <= c_591 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 593 and associated fundamentals [[177], [-630], [-2640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_593 <= c_592 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 594 and associated fundamentals [[177], [-630], [-2640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_594 <= c_593 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 595 and associated fundamentals [[177], [-630], [-2640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_595 <= c_594 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 596 and associated fundamentals [[177], [-630], [-2640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_596 <= c_595 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 35 with id 597 and associated fundamentals [[-783], [-630], [-197]]
  c_597_494_0_False_resize <= c_494;
  c_597_494_0_False_shift <= shift_left(c_597_494_0_False_resize, 0);
  c_597_463_0_False_resize <= resize(c_463, 26);
  c_597_463_0_False_shift <= shift_left(c_597_463_0_False_resize, 0);
  c_597_596_0_False_resize <= c_596(25 downto 0);
  c_597_596_0_False_shift <= shift_left(c_597_596_0_False_resize, 0);
  with config_select_35 select c_597_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_597_sel is
        when "00" => c_597 <= c_597_494_0_False_shift;
        when "01" => c_597 <= c_597_463_0_False_shift;
        when others => c_597 <= c_597_596_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 598 and associated fundamentals [[-200], [-298], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_598 <= c_492 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 599 and associated fundamentals [[-200], [-298], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_599 <= c_598 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 600 and associated fundamentals [[40], [173], [-659]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_600 <= c_519 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 601 and associated fundamentals [[40], [173], [-659]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_601 <= c_600 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 602 and associated fundamentals [[40], [173], [-659]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_602 <= c_601 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 603 and associated fundamentals [[40], [173], [-659]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_603 <= c_602 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 604 and associated fundamentals [[40], [173], [-659]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_604 <= c_603 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 605 and associated fundamentals [[40], [173], [-659]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_605 <= c_604 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 606 and associated fundamentals [[40], [173], [-659]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_606 <= c_605 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 607 and associated fundamentals [[40], [173], [-659]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_607 <= c_606 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 608 and associated fundamentals [[40], [173], [-659]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_608 <= c_607 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 609 and associated fundamentals [[40], [173], [-659]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_609 <= c_608 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 610 and associated fundamentals [[-609], [-596], [-659]]
  c_610_564_0_False_resize <= c_564;
  c_610_564_0_False_shift <= shift_left(c_610_564_0_False_resize, 0);
  c_610_609_0_False_resize <= c_609;
  c_610_609_0_False_shift <= shift_left(c_610_609_0_False_resize, 0);
  c_610_599_1_False_resize <= c_599;
  c_610_599_1_False_shift <= shift_left(c_610_599_1_False_resize, 1);
  with config_select_37 select c_610_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_610_sel is
        when "00" => c_610 <= c_610_564_0_False_shift;
        when "01" => c_610 <= c_610_609_0_False_shift;
        when others => c_610 <= c_610_599_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 611 and associated fundamentals [[-609], [-331], [-415]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_611 <= c_564 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 612 and associated fundamentals [[-609], [-331], [-415]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_612 <= c_611 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 613 and associated fundamentals [[142], [-239], [-907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_613 <= c_590 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 614 and associated fundamentals [[142], [-239], [-907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_614 <= c_613 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 615 and associated fundamentals [[142], [-239], [-907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_615 <= c_614 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 616 and associated fundamentals [[142], [-239], [-907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_616 <= c_615 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 617 and associated fundamentals [[142], [-239], [-907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_617 <= c_616 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 618 and associated fundamentals [[142], [-239], [-907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_618 <= c_617 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 619 and associated fundamentals [[142], [-239], [-907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_619 <= c_618 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 620 and associated fundamentals [[142], [-239], [-907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_620 <= c_619 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 39 with id 621 and associated fundamentals [[-943], [-331], [-907]]
  c_621_545_0_False_resize <= c_545;
  c_621_545_0_False_shift <= shift_left(c_621_545_0_False_resize, 0);
  c_621_620_0_False_resize <= c_620;
  c_621_620_0_False_shift <= shift_left(c_621_620_0_False_resize, 0);
  c_621_612_0_False_resize <= c_612;
  c_621_612_0_False_shift <= shift_left(c_621_612_0_False_resize, 0);
  with config_select_39 select c_621_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_621_sel is
        when "00" => c_621 <= c_621_545_0_False_shift;
        when "01" => c_621 <= c_621_620_0_False_shift;
        when others => c_621 <= c_621_612_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 622 and associated fundamentals [[-672], [99], [690]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_622 <= c_367 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 623 and associated fundamentals [[-672], [99], [690]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_623 <= c_622 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 624 and associated fundamentals [[-672], [99], [690]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_624 <= c_623 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 625 and associated fundamentals [[-672], [99], [690]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_625 <= c_624 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 626 and associated fundamentals [[-672], [99], [690]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_626 <= c_625 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 627 and associated fundamentals [[-672], [99], [690]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_627 <= c_626 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 628 and associated fundamentals [[551], [780], [690]]
  c_628_627_0_False_resize <= c_627;
  c_628_627_0_False_shift <= shift_left(c_628_627_0_False_resize, 0);
  c_628_502_0_False_resize <= c_502;
  c_628_502_0_False_shift <= shift_left(c_628_502_0_False_resize, 0);
  c_628_502_2_False_resize <= c_502;
  c_628_502_2_False_shift <= shift_left(c_628_502_2_False_resize, 2);
  with config_select_37 select c_628_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_628_sel is
        when "00" => c_628 <= c_628_627_0_False_shift;
        when "01" => c_628 <= c_628_502_0_False_shift;
        when others => c_628 <= c_628_502_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 33 with id 629 and associated fundamentals [[142], [241], [706]]
  c_629_614_0_False_resize <= c_614;
  c_629_614_0_False_shift <= shift_left(c_629_614_0_False_resize, 0);
  c_629_399_1_False_resize <= c_399;
  c_629_399_1_False_shift <= shift_left(c_629_399_1_False_resize, 1);
  c_629_528_0_False_resize <= c_528;
  c_629_528_0_False_shift <= shift_left(c_629_528_0_False_resize, 0);
  with config_select_33 select c_629_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_629_sel is
        when "00" => c_629 <= c_629_614_0_False_shift;
        when "01" => c_629 <= c_629_399_1_False_shift;
        when others => c_629 <= c_629_528_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 630 and associated fundamentals [[-963], [245967], [66816]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_630 <= c_454 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 631 and associated fundamentals [[-963], [245967], [66816]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_631 <= c_630 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 632 and associated fundamentals [[-963], [245967], [66816]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_632 <= c_631 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 633 and associated fundamentals [[-963], [245967], [66816]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_633 <= c_632 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 634 and associated fundamentals [[-963], [245967], [66816]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_634 <= c_633 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 635 and associated fundamentals [[-963], [245967], [66816]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_635 <= c_634 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 636 and associated fundamentals [[17], [-281], [-197]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_636 <= c_463 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 637 and associated fundamentals [[17], [-281], [-197]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_637 <= c_636 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 638 and associated fundamentals [[17], [-281], [-197]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_638 <= c_637 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 639 and associated fundamentals [[17], [-281], [-197]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_639 <= c_638 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 39 with id 640 and associated fundamentals [[-963], [-281], [-898]]
  c_640_635_0_False_resize <= c_635(25 downto 0);
  c_640_635_0_False_shift <= shift_left(c_640_635_0_False_resize, 0);
  c_640_639_0_False_resize <= resize(c_639, 26);
  c_640_639_0_False_shift <= shift_left(c_640_639_0_False_resize, 0);
  c_640_545_0_False_resize <= c_545;
  c_640_545_0_False_shift <= shift_left(c_640_545_0_False_resize, 0);
  with config_select_39 select c_640_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_640_sel is
        when "00" => c_640 <= c_640_635_0_False_shift;
        when "01" => c_640 <= c_640_639_0_False_shift;
        when others => c_640 <= c_640_545_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 641 and associated fundamentals [[-75], [493], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_641 <= c_572 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 642 and associated fundamentals [[-75], [493], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_642 <= c_641 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 643 and associated fundamentals [[-75], [-239], [-344]]
  c_643_618_0_False_resize <= c_618(24 downto 0);
  c_643_618_0_False_shift <= shift_left(c_643_618_0_False_resize, 0);
  c_643_583_0_False_resize <= c_583;
  c_643_583_0_False_shift <= shift_left(c_643_583_0_False_resize, 0);
  c_643_642_0_False_resize <= c_642;
  c_643_642_0_False_shift <= shift_left(c_643_642_0_False_resize, 0);
  with config_select_37 select c_643_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_643_sel is
        when "00" => c_643 <= c_643_618_0_False_shift;
        when "01" => c_643 <= c_643_583_0_False_shift;
        when others => c_643 <= c_643_642_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 644 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_644 <= c_477 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 645 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_645 <= c_644 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 646 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_646 <= c_645 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 647 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_647 <= c_646 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 648 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_648 <= c_647 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 649 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_649 <= c_648 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 650 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_650 <= c_649 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 651 and associated fundamentals [[7], [0], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_651 <= c_650 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 652 and associated fundamentals [[896], [161], [795]]
  c_652_502_0_False_resize <= c_502;
  c_652_502_0_False_shift <= shift_left(c_652_502_0_False_resize, 0);
  c_652_583_0_False_resize <= resize(c_583, 26);
  c_652_583_0_False_shift <= shift_left(c_652_583_0_False_resize, 0);
  c_652_651_7_False_resize <= resize(c_651, 26);
  c_652_651_7_False_shift <= shift_left(c_652_651_7_False_resize, 7);
  with config_select_37 select c_652_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_652_sel is
        when "00" => c_652 <= c_652_502_0_False_shift;
        when "01" => c_652 <= c_652_583_0_False_shift;
        when others => c_652 <= c_652_651_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 653 and associated fundamentals [[985], [83], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_653 <= c_349 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 654 and associated fundamentals [[985], [83], [66304]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_654 <= c_653 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 31 with id 655 and associated fundamentals [[985], [99], [425]]
  c_655_551_0_False_resize <= c_551;
  c_655_551_0_False_shift <= shift_left(c_655_551_0_False_resize, 0);
  c_655_654_0_False_resize <= c_654(25 downto 0);
  c_655_654_0_False_shift <= shift_left(c_655_654_0_False_resize, 0);
  c_655_367_0_False_resize <= c_367;
  c_655_367_0_False_shift <= shift_left(c_655_367_0_False_resize, 0);
  with config_select_31 select c_655_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_655_sel is
        when "00" => c_655 <= c_655_551_0_False_shift;
        when "01" => c_655 <= c_655_654_0_False_shift;
        when others => c_655 <= c_655_367_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 656 and associated fundamentals [[-657], [241], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_656 <= c_532 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 657 and associated fundamentals [[-657], [241], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_657 <= c_656 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 39 with id 658 and associated fundamentals [[-657], [-829], [-415]]
  c_658_612_0_False_resize <= c_612;
  c_658_612_0_False_shift <= shift_left(c_658_612_0_False_resize, 0);
  c_658_657_0_False_resize <= c_657;
  c_658_657_0_False_shift <= shift_left(c_658_657_0_False_resize, 0);
  c_658_545_0_False_resize <= c_545;
  c_658_545_0_False_shift <= shift_left(c_658_545_0_False_resize, 0);
  with config_select_39 select c_658_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_658_sel is
        when "00" => c_658 <= c_658_612_0_False_shift;
        when "01" => c_658 <= c_658_657_0_False_shift;
        when others => c_658 <= c_658_545_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 659 and associated fundamentals [[-783], [-630], [-197]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_659 <= c_597 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 660 and associated fundamentals [[-783], [-630], [-197]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_660 <= c_659 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 661 and associated fundamentals [[-783], [-630], [-197]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_661 <= c_660 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 662 and associated fundamentals [[-783], [-630], [-197]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_662 <= c_661 & "";
    end if;
  end process;
  -- node of type 'output' in stage 39 with id 663 and associated fundamentals [[783], [630], [197]]
  c_663_resize <= c_662;
  c_663 <= -shift_left(c_663_resize, 0);
  -- node of type 'register' in stage 38 with id 664 and associated fundamentals [[-609], [-596], [-659]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_664 <= c_610 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 665 and associated fundamentals [[-609], [-596], [-659]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_665 <= c_664 & "";
    end if;
  end process;
  -- node of type 'output' in stage 39 with id 666 and associated fundamentals [[609], [596], [659]]
  c_666_resize <= c_665;
  c_666 <= -shift_left(c_666_resize, 0);
  -- node of type 'output' in stage 39 with id 667 and associated fundamentals [[943], [331], [907]]
  c_667_resize <= c_621;
  c_667 <= -shift_left(c_667_resize, 0);
  -- node of type 'register' in stage 38 with id 668 and associated fundamentals [[551], [780], [690]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_668 <= c_628 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 669 and associated fundamentals [[551], [780], [690]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_669 <= c_668 & "";
    end if;
  end process;
  -- node of type 'output' in stage 39 with id 670 and associated fundamentals [[551], [780], [690]]
  c_670_resize <= c_669;
  c_670 <= shift_left(c_670_resize, 0);
  -- node of type 'register' in stage 34 with id 671 and associated fundamentals [[142], [241], [706]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_671 <= c_629 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 672 and associated fundamentals [[142], [241], [706]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_672 <= c_671 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 673 and associated fundamentals [[142], [241], [706]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_673 <= c_672 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 674 and associated fundamentals [[142], [241], [706]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_674 <= c_673 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 675 and associated fundamentals [[142], [241], [706]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_675 <= c_674 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 676 and associated fundamentals [[142], [241], [706]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_676 <= c_675 & "";
    end if;
  end process;
  -- node of type 'output' in stage 39 with id 677 and associated fundamentals [[142], [241], [706]]
  c_677_resize <= c_676;
  c_677 <= shift_left(c_677_resize, 0);
  -- node of type 'output' in stage 39 with id 678 and associated fundamentals [[963], [281], [898]]
  c_678_resize <= c_640;
  c_678 <= -shift_left(c_678_resize, 0);
  -- node of type 'register' in stage 38 with id 679 and associated fundamentals [[-75], [-239], [-344]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_679 <= c_643 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 680 and associated fundamentals [[-75], [-239], [-344]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_680 <= c_679 & "";
    end if;
  end process;
  -- node of type 'output' in stage 39 with id 681 and associated fundamentals [[75], [239], [344]]
  c_681_resize <= c_680;
  c_681 <= -shift_left(c_681_resize, 0);
  -- node of type 'register' in stage 38 with id 682 and associated fundamentals [[896], [161], [795]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_682 <= c_652 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 683 and associated fundamentals [[896], [161], [795]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_683 <= c_682 & "";
    end if;
  end process;
  -- node of type 'output' in stage 39 with id 684 and associated fundamentals [[896], [161], [795]]
  c_684_resize <= c_683;
  c_684 <= shift_left(c_684_resize, 0);
  -- node of type 'register' in stage 32 with id 685 and associated fundamentals [[985], [99], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_685 <= c_655 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 686 and associated fundamentals [[985], [99], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_686 <= c_685 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 687 and associated fundamentals [[985], [99], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_687 <= c_686 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 688 and associated fundamentals [[985], [99], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_688 <= c_687 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 689 and associated fundamentals [[985], [99], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_689 <= c_688 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 690 and associated fundamentals [[985], [99], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_690 <= c_689 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 691 and associated fundamentals [[985], [99], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_691 <= c_690 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 692 and associated fundamentals [[985], [99], [425]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_692 <= c_691 & "";
    end if;
  end process;
  -- node of type 'output' in stage 39 with id 693 and associated fundamentals [[985], [99], [425]]
  c_693_resize <= c_692;
  c_693 <= shift_left(c_693_resize, 0);
  -- node of type 'output' in stage 39 with id 694 and associated fundamentals [[657], [829], [415]]
  c_694_resize <= c_658;
  c_694 <= -shift_left(c_694_resize, 0);
end architecture;

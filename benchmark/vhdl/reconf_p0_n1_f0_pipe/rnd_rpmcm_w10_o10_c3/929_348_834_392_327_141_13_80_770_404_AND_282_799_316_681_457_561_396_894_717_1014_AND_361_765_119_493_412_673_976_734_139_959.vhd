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
    y_4: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_0_1_False_resize: signed(20 downto 0);
  signal c_1_0_1_False_shift: signed(20 downto 0);
  signal c_1_0_0_False_resize: signed(20 downto 0);
  signal c_1_0_0_False_shift: signed(20 downto 0);
  signal c_1_0_5_False_resize: signed(20 downto 0);
  signal c_1_0_5_False_shift: signed(20 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_0_4_False_resize: signed(19 downto 0);
  signal c_2_0_4_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_5_6_False_resize: signed(22 downto 0);
  signal c_6_5_6_False_shift: signed(22 downto 0);
  signal c_6_3_0_False_resize: signed(22 downto 0);
  signal c_6_3_0_False_shift: signed(22 downto 0);
  signal c_6_5_1_False_resize: signed(22 downto 0);
  signal c_6_5_1_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_5_3_False_resize: signed(18 downto 0);
  signal c_7_5_3_False_shift: signed(18 downto 0);
  signal c_7_3_0_False_resize: signed(18 downto 0);
  signal c_7_3_0_False_shift: signed(18 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_9_5_0_False_resize: signed(22 downto 0);
  signal c_9_5_0_False_shift: signed(22 downto 0);
  signal c_9_3_0_False_resize: signed(22 downto 0);
  signal c_9_3_0_False_shift: signed(22 downto 0);
  signal c_9_3_2_False_resize: signed(22 downto 0);
  signal c_9_3_2_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_8_0_False_resize: signed(23 downto 0);
  signal c_14_8_0_False_shift: signed(23 downto 0);
  signal c_14_13_0_False_resize: signed(23 downto 0);
  signal c_14_13_0_False_shift: signed(23 downto 0);
  signal c_14_11_8_False_resize: signed(23 downto 0);
  signal c_14_11_8_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(24 downto 0);
  signal c_18_3_2_False_resize: signed(24 downto 0);
  signal c_18_3_2_False_shift: signed(24 downto 0);
  signal c_18_3_5_False_resize: signed(24 downto 0);
  signal c_18_3_5_False_shift: signed(24 downto 0);
  signal c_18_3_0_False_resize: signed(24 downto 0);
  signal c_18_3_0_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_8_3_False_resize: signed(25 downto 0);
  signal c_19_8_3_False_shift: signed(25 downto 0);
  signal c_19_11_0_False_resize: signed(25 downto 0);
  signal c_19_11_0_False_shift: signed(25 downto 0);
  signal c_19_11_3_False_resize: signed(25 downto 0);
  signal c_19_11_3_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(24 downto 0);
  signal c_23_11_6_False_resize: signed(24 downto 0);
  signal c_23_11_6_False_shift: signed(24 downto 0);
  signal c_23_13_5_False_resize: signed(24 downto 0);
  signal c_23_13_5_False_shift: signed(24 downto 0);
  signal c_23_8_0_False_resize: signed(24 downto 0);
  signal c_23_8_0_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(19 downto 0);
  signal c_24_8_0_False_resize: signed(19 downto 0);
  signal c_24_8_0_False_shift: signed(19 downto 0);
  signal c_24_11_1_False_resize: signed(19 downto 0);
  signal c_24_11_1_False_shift: signed(19 downto 0);
  signal c_24_11_2_False_resize: signed(19 downto 0);
  signal c_24_11_2_False_shift: signed(19 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_i0_resize: signed(24 downto 0);
  signal c_25_i1_resize: signed(24 downto 0);
  signal c_25_i0_shift: signed(24 downto 0);
  signal c_25_i1_shift: signed(24 downto 0);
  signal c_25_arith: signed(24 downto 0);
  signal c_25_oshift: signed(24 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(22 downto 0);
  signal c_26_13_4_False_resize: signed(22 downto 0);
  signal c_26_13_4_False_shift: signed(22 downto 0);
  signal c_26_11_4_False_resize: signed(22 downto 0);
  signal c_26_11_4_False_shift: signed(22 downto 0);
  signal c_26_8_0_False_resize: signed(22 downto 0);
  signal c_26_8_0_False_shift: signed(22 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(15 downto 0);
  signal c_28: signed(15 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_30_3_False_resize: signed(24 downto 0);
  signal c_31_30_3_False_shift: signed(24 downto 0);
  signal c_31_17_1_False_resize: signed(24 downto 0);
  signal c_31_17_1_False_shift: signed(24 downto 0);
  signal c_31_28_0_False_resize: signed(24 downto 0);
  signal c_31_28_0_False_shift: signed(24 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_i0_resize: signed(25 downto 0);
  signal c_34_i1_resize: signed(25 downto 0);
  signal c_34_i0_shift: signed(25 downto 0);
  signal c_34_i1_shift: signed(25 downto 0);
  signal c_34_arith: signed(25 downto 0);
  signal c_34_oshift: signed(25 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(24 downto 0);
  signal c_35_25_0_False_resize: signed(24 downto 0);
  signal c_35_25_0_False_shift: signed(24 downto 0);
  signal c_35_25_2_False_resize: signed(24 downto 0);
  signal c_35_25_2_False_shift: signed(24 downto 0);
  signal c_35_17_0_False_resize: signed(24 downto 0);
  signal c_35_17_0_False_shift: signed(24 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(26 downto 0);
  signal c_36_17_0_False_resize: signed(26 downto 0);
  signal c_36_17_0_False_shift: signed(26 downto 0);
  signal c_36_22_1_False_resize: signed(26 downto 0);
  signal c_36_22_1_False_shift: signed(26 downto 0);
  signal c_36_25_3_False_resize: signed(26 downto 0);
  signal c_36_25_3_False_shift: signed(26 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(22 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_42: signed(26 downto 0);
  signal c_42_37_1_False_resize: signed(26 downto 0);
  signal c_42_37_1_False_shift: signed(26 downto 0);
  signal c_42_34_0_False_resize: signed(26 downto 0);
  signal c_42_34_0_False_shift: signed(26 downto 0);
  signal c_42_41_0_False_resize: signed(26 downto 0);
  signal c_42_41_0_False_shift: signed(26 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(15 downto 0);
  signal c_44: signed(15 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(28 downto 0);
  signal c_47_46_0_False_resize: signed(28 downto 0);
  signal c_47_46_0_False_shift: signed(28 downto 0);
  signal c_47_44_1_False_resize: signed(28 downto 0);
  signal c_47_44_1_False_shift: signed(28 downto 0);
  signal c_47_34_3_False_resize: signed(28 downto 0);
  signal c_47_34_3_False_shift: signed(28 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_i0_resize: signed(24 downto 0);
  signal c_48_i1_resize: signed(24 downto 0);
  signal c_48_i0_shift: signed(24 downto 0);
  signal c_48_i1_shift: signed(24 downto 0);
  signal c_48_arith: signed(24 downto 0);
  signal c_48_oshift: signed(24 downto 0);
  signal c_48_sub_sel: std_logic;
  signal c_49: signed(25 downto 0);
  signal c_49_37_1_False_resize: signed(25 downto 0);
  signal c_49_37_1_False_shift: signed(25 downto 0);
  signal c_49_44_4_False_resize: signed(25 downto 0);
  signal c_49_44_4_False_shift: signed(25 downto 0);
  signal c_49_34_0_False_resize: signed(25 downto 0);
  signal c_49_34_0_False_shift: signed(25 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_53: signed(22 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(26 downto 0);
  signal c_58_53_0_False_resize: signed(26 downto 0);
  signal c_58_53_0_False_shift: signed(26 downto 0);
  signal c_58_57_0_False_resize: signed(26 downto 0);
  signal c_58_57_0_False_shift: signed(26 downto 0);
  signal c_58_48_2_False_resize: signed(26 downto 0);
  signal c_58_48_2_False_shift: signed(26 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_i0_resize: signed(25 downto 0);
  signal c_61_i1_resize: signed(25 downto 0);
  signal c_61_i0_shift: signed(25 downto 0);
  signal c_61_i1_shift: signed(25 downto 0);
  signal c_61_arith: signed(25 downto 0);
  signal c_61_oshift: signed(25 downto 0);
  signal c_62: signed(20 downto 0);
  signal c_62_5_4_False_resize: signed(20 downto 0);
  signal c_62_5_4_False_shift: signed(20 downto 0);
  signal c_62_5_0_False_resize: signed(20 downto 0);
  signal c_62_5_0_False_shift: signed(20 downto 0);
  signal c_62_3_2_False_resize: signed(20 downto 0);
  signal c_62_3_2_False_shift: signed(20 downto 0);
  signal c_62_sel: std_logic_vector(1 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_39_1_False_resize: signed(23 downto 0);
  signal c_63_39_1_False_shift: signed(23 downto 0);
  signal c_63_17_0_False_resize: signed(23 downto 0);
  signal c_63_17_0_False_shift: signed(23 downto 0);
  signal c_63_25_1_False_resize: signed(23 downto 0);
  signal c_63_25_1_False_shift: signed(23 downto 0);
  signal c_63_sel: std_logic_vector(1 downto 0);
  signal c_64: signed(20 downto 0);
  signal c_65: signed(20 downto 0);
  signal c_66: signed(20 downto 0);
  signal c_67: signed(20 downto 0);
  signal c_68: signed(24 downto 0);
  signal c_68_i0_resize: signed(24 downto 0);
  signal c_68_i1_resize: signed(24 downto 0);
  signal c_68_i0_shift: signed(24 downto 0);
  signal c_68_i1_shift: signed(24 downto 0);
  signal c_68_arith: signed(24 downto 0);
  signal c_68_oshift: signed(24 downto 0);
  signal c_69: signed(24 downto 0);
  signal c_69_55_0_False_resize: signed(24 downto 0);
  signal c_69_55_0_False_shift: signed(24 downto 0);
  signal c_69_51_5_False_resize: signed(24 downto 0);
  signal c_69_51_5_False_shift: signed(24 downto 0);
  signal c_69_37_0_False_resize: signed(24 downto 0);
  signal c_69_37_0_False_shift: signed(24 downto 0);
  signal c_69_sel: std_logic_vector(1 downto 0);
  signal c_70: signed(24 downto 0);
  signal c_71: signed(24 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_80: signed(26 downto 0);
  signal c_80_75_1_False_resize: signed(26 downto 0);
  signal c_80_75_1_False_shift: signed(26 downto 0);
  signal c_80_61_0_False_resize: signed(26 downto 0);
  signal c_80_61_0_False_shift: signed(26 downto 0);
  signal c_80_79_1_False_resize: signed(26 downto 0);
  signal c_80_79_1_False_shift: signed(26 downto 0);
  signal c_80_sel: std_logic_vector(1 downto 0);
  signal c_81: signed(24 downto 0);
  signal c_82: signed(24 downto 0);
  signal c_83: signed(24 downto 0);
  signal c_84: signed(24 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_85_i0_resize: signed(25 downto 0);
  signal c_85_i1_resize: signed(25 downto 0);
  signal c_85_i0_shift: signed(25 downto 0);
  signal c_85_i1_shift: signed(25 downto 0);
  signal c_85_arith: signed(25 downto 0);
  signal c_85_oshift: signed(25 downto 0);
  signal c_85_sub_sel: std_logic;
  signal c_86: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_88: signed(24 downto 0);
  signal c_88_48_0_False_resize: signed(24 downto 0);
  signal c_88_48_0_False_shift: signed(24 downto 0);
  signal c_88_57_0_False_resize: signed(24 downto 0);
  signal c_88_57_0_False_shift: signed(24 downto 0);
  signal c_88_87_0_False_resize: signed(24 downto 0);
  signal c_88_87_0_False_shift: signed(24 downto 0);
  signal c_88_sel: std_logic_vector(1 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_89_68_1_False_resize: signed(25 downto 0);
  signal c_89_68_1_False_shift: signed(25 downto 0);
  signal c_89_51_0_False_resize: signed(25 downto 0);
  signal c_89_51_0_False_shift: signed(25 downto 0);
  signal c_89_68_2_False_resize: signed(25 downto 0);
  signal c_89_68_2_False_shift: signed(25 downto 0);
  signal c_89_sel: std_logic_vector(1 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_91: signed(25 downto 0);
  signal c_92: signed(25 downto 0);
  signal c_92_i0_resize: signed(25 downto 0);
  signal c_92_i1_resize: signed(25 downto 0);
  signal c_92_i0_shift: signed(25 downto 0);
  signal c_92_i1_shift: signed(25 downto 0);
  signal c_92_arith: signed(25 downto 0);
  signal c_92_oshift: signed(25 downto 0);
  signal c_92_sub_sel: std_logic;
  signal c_93: signed(25 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_95: signed(24 downto 0);
  signal c_96: signed(24 downto 0);
  signal c_97: signed(24 downto 0);
  signal c_98: signed(24 downto 0);
  signal c_99: signed(24 downto 0);
  signal c_100: signed(24 downto 0);
  signal c_101: signed(24 downto 0);
  signal c_101_100_1_False_resize: signed(24 downto 0);
  signal c_101_100_1_False_shift: signed(24 downto 0);
  signal c_101_94_0_False_resize: signed(24 downto 0);
  signal c_101_94_0_False_shift: signed(24 downto 0);
  signal c_101_85_0_False_resize: signed(24 downto 0);
  signal c_101_85_0_False_shift: signed(24 downto 0);
  signal c_101_sel: std_logic_vector(1 downto 0);
  signal c_102: signed(24 downto 0);
  signal c_102_25_2_False_resize: signed(24 downto 0);
  signal c_102_25_2_False_shift: signed(24 downto 0);
  signal c_102_17_0_False_resize: signed(24 downto 0);
  signal c_102_17_0_False_shift: signed(24 downto 0);
  signal c_102_28_9_False_resize: signed(24 downto 0);
  signal c_102_28_9_False_shift: signed(24 downto 0);
  signal c_102_sel: std_logic_vector(1 downto 0);
  signal c_103: signed(24 downto 0);
  signal c_104: signed(24 downto 0);
  signal c_105: signed(24 downto 0);
  signal c_106: signed(24 downto 0);
  signal c_107: signed(24 downto 0);
  signal c_108: signed(24 downto 0);
  signal c_109: signed(24 downto 0);
  signal c_110: signed(24 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_111_i0_resize: signed(25 downto 0);
  signal c_111_i1_resize: signed(25 downto 0);
  signal c_111_i0_shift: signed(25 downto 0);
  signal c_111_i1_shift: signed(25 downto 0);
  signal c_111_arith: signed(25 downto 0);
  signal c_111_oshift: signed(25 downto 0);
  signal c_111_sub_sel: std_logic;
  signal c_112: signed(24 downto 0);
  signal c_112_28_6_False_resize: signed(24 downto 0);
  signal c_112_28_6_False_shift: signed(24 downto 0);
  signal c_112_30_0_False_resize: signed(24 downto 0);
  signal c_112_30_0_False_shift: signed(24 downto 0);
  signal c_112_17_1_False_resize: signed(24 downto 0);
  signal c_112_17_1_False_shift: signed(24 downto 0);
  signal c_112_sel: std_logic_vector(1 downto 0);
  signal c_113: signed(25 downto 0);
  signal c_113_37_0_False_resize: signed(25 downto 0);
  signal c_113_37_0_False_shift: signed(25 downto 0);
  signal c_113_41_0_False_resize: signed(25 downto 0);
  signal c_113_41_0_False_shift: signed(25 downto 0);
  signal c_113_sel: std_logic_vector(0 downto 0);
  signal c_114: signed(24 downto 0);
  signal c_115: signed(24 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_116_i0_resize: signed(25 downto 0);
  signal c_116_i1_resize: signed(25 downto 0);
  signal c_116_i0_shift: signed(25 downto 0);
  signal c_116_i1_shift: signed(25 downto 0);
  signal c_116_arith: signed(25 downto 0);
  signal c_116_oshift: signed(25 downto 0);
  signal c_117: signed(24 downto 0);
  signal c_118: signed(24 downto 0);
  signal c_119: signed(24 downto 0);
  signal c_120: signed(24 downto 0);
  signal c_121: signed(24 downto 0);
  signal c_122: signed(24 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_127_126_0_False_resize: signed(25 downto 0);
  signal c_127_126_0_False_shift: signed(25 downto 0);
  signal c_127_111_0_False_resize: signed(25 downto 0);
  signal c_127_111_0_False_shift: signed(25 downto 0);
  signal c_127_122_0_False_resize: signed(25 downto 0);
  signal c_127_122_0_False_shift: signed(25 downto 0);
  signal c_127_sel: std_logic_vector(1 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_130: signed(25 downto 0);
  signal c_131: signed(25 downto 0);
  signal c_132: signed(25 downto 0);
  signal c_133: signed(25 downto 0);
  signal c_134: signed(25 downto 0);
  signal c_134_111_0_False_resize: signed(25 downto 0);
  signal c_134_111_0_False_shift: signed(25 downto 0);
  signal c_134_126_0_False_resize: signed(25 downto 0);
  signal c_134_126_0_False_shift: signed(25 downto 0);
  signal c_134_133_0_False_resize: signed(25 downto 0);
  signal c_134_133_0_False_shift: signed(25 downto 0);
  signal c_134_sel: std_logic_vector(1 downto 0);
  signal c_135: signed(22 downto 0);
  signal c_136: signed(22 downto 0);
  signal c_137: signed(22 downto 0);
  signal c_138: signed(22 downto 0);
  signal c_139: signed(22 downto 0);
  signal c_140: signed(22 downto 0);
  signal c_141: signed(24 downto 0);
  signal c_142: signed(24 downto 0);
  signal c_143: signed(25 downto 0);
  signal c_143_85_1_False_resize: signed(25 downto 0);
  signal c_143_85_1_False_shift: signed(25 downto 0);
  signal c_143_142_2_False_resize: signed(25 downto 0);
  signal c_143_142_2_False_shift: signed(25 downto 0);
  signal c_143_140_0_False_resize: signed(25 downto 0);
  signal c_143_140_0_False_shift: signed(25 downto 0);
  signal c_143_sel: std_logic_vector(1 downto 0);
  signal c_144: signed(25 downto 0);
  signal c_145: signed(25 downto 0);
  signal c_146: signed(25 downto 0);
  signal c_146_145_0_False_resize: signed(25 downto 0);
  signal c_146_145_0_False_shift: signed(25 downto 0);
  signal c_146_61_0_False_resize: signed(25 downto 0);
  signal c_146_61_0_False_shift: signed(25 downto 0);
  signal c_146_sel: std_logic_vector(0 downto 0);
  signal c_147: signed(24 downto 0);
  signal c_147_85_0_False_resize: signed(24 downto 0);
  signal c_147_85_0_False_shift: signed(24 downto 0);
  signal c_147_100_0_False_resize: signed(24 downto 0);
  signal c_147_100_0_False_shift: signed(24 downto 0);
  signal c_147_131_0_False_resize: signed(24 downto 0);
  signal c_147_131_0_False_shift: signed(24 downto 0);
  signal c_147_sel: std_logic_vector(1 downto 0);
  signal c_148: signed(25 downto 0);
  signal c_149: signed(25 downto 0);
  signal c_150: signed(25 downto 0);
  signal c_150_149_0_False_resize: signed(25 downto 0);
  signal c_150_149_0_False_shift: signed(25 downto 0);
  signal c_150_57_0_False_resize: signed(25 downto 0);
  signal c_150_57_0_False_shift: signed(25 downto 0);
  signal c_150_48_0_False_resize: signed(25 downto 0);
  signal c_150_48_0_False_shift: signed(25 downto 0);
  signal c_150_sel: std_logic_vector(1 downto 0);
  signal c_151: signed(25 downto 0);
  signal c_151_87_0_False_resize: signed(25 downto 0);
  signal c_151_87_0_False_shift: signed(25 downto 0);
  signal c_151_48_1_False_resize: signed(25 downto 0);
  signal c_151_48_1_False_shift: signed(25 downto 0);
  signal c_151_87_2_False_resize: signed(25 downto 0);
  signal c_151_87_2_False_shift: signed(25 downto 0);
  signal c_151_sel: std_logic_vector(1 downto 0);
  signal c_152: signed(25 downto 0);
  signal c_152_34_1_False_resize: signed(25 downto 0);
  signal c_152_34_1_False_shift: signed(25 downto 0);
  signal c_152_34_0_False_resize: signed(25 downto 0);
  signal c_152_34_0_False_shift: signed(25 downto 0);
  signal c_152_41_3_False_resize: signed(25 downto 0);
  signal c_152_41_3_False_shift: signed(25 downto 0);
  signal c_152_sel: std_logic_vector(1 downto 0);
  signal c_153: signed(25 downto 0);
  signal c_153_61_0_False_resize: signed(25 downto 0);
  signal c_153_61_0_False_shift: signed(25 downto 0);
  signal c_153_92_0_False_resize: signed(25 downto 0);
  signal c_153_92_0_False_shift: signed(25 downto 0);
  signal c_153_129_0_False_resize: signed(25 downto 0);
  signal c_153_129_0_False_shift: signed(25 downto 0);
  signal c_153_sel: std_logic_vector(1 downto 0);
  signal c_154: signed(24 downto 0);
  signal c_155: signed(24 downto 0);
  signal c_156: signed(25 downto 0);
  signal c_157: signed(25 downto 0);
  signal c_158: signed(25 downto 0);
  signal c_158_111_1_False_resize: signed(25 downto 0);
  signal c_158_111_1_False_shift: signed(25 downto 0);
  signal c_158_157_0_False_resize: signed(25 downto 0);
  signal c_158_157_0_False_shift: signed(25 downto 0);
  signal c_158_155_0_False_resize: signed(25 downto 0);
  signal c_158_155_0_False_shift: signed(25 downto 0);
  signal c_158_sel: std_logic_vector(1 downto 0);
  signal c_159: signed(25 downto 0);
  signal c_159_resize: signed(25 downto 0);
  signal c_160: signed(25 downto 0);
  signal c_160_resize: signed(25 downto 0);
  signal c_161: signed(25 downto 0);
  signal c_162: signed(25 downto 0);
  signal c_163: signed(25 downto 0);
  signal c_163_resize: signed(25 downto 0);
  signal c_164: signed(25 downto 0);
  signal c_165: signed(25 downto 0);
  signal c_166: signed(25 downto 0);
  signal c_167: signed(25 downto 0);
  signal c_168: signed(25 downto 0);
  signal c_168_resize: signed(25 downto 0);
  signal c_169: signed(24 downto 0);
  signal c_170: signed(24 downto 0);
  signal c_171: signed(24 downto 0);
  signal c_171_resize: signed(24 downto 0);
  signal c_172: signed(25 downto 0);
  signal c_173: signed(25 downto 0);
  signal c_174: signed(25 downto 0);
  signal c_175: signed(25 downto 0);
  signal c_176: signed(25 downto 0);
  signal c_177: signed(25 downto 0);
  signal c_178: signed(25 downto 0);
  signal c_178_resize: signed(25 downto 0);
  signal c_179: signed(25 downto 0);
  signal c_180: signed(25 downto 0);
  signal c_181: signed(25 downto 0);
  signal c_182: signed(25 downto 0);
  signal c_183: signed(25 downto 0);
  signal c_184: signed(25 downto 0);
  signal c_185: signed(25 downto 0);
  signal c_185_resize: signed(25 downto 0);
  signal c_186: signed(25 downto 0);
  signal c_187: signed(25 downto 0);
  signal c_188: signed(25 downto 0);
  signal c_189: signed(25 downto 0);
  signal c_190: signed(25 downto 0);
  signal c_191: signed(25 downto 0);
  signal c_192: signed(25 downto 0);
  signal c_193: signed(25 downto 0);
  signal c_194: signed(25 downto 0);
  signal c_194_resize: signed(25 downto 0);
  signal c_195: signed(25 downto 0);
  signal c_196: signed(25 downto 0);
  signal c_197: signed(25 downto 0);
  signal c_198: signed(25 downto 0);
  signal c_199: signed(25 downto 0);
  signal c_199_resize: signed(25 downto 0);
  signal c_200: signed(25 downto 0);
  signal c_200_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 159
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_159);
    end if;
  end process;
  -- output node 1 with id 160
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_160);
    end if;
  end process;
  -- output node 2 with id 163
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_163);
    end if;
  end process;
  -- output node 3 with id 168
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_168);
    end if;
  end process;
  -- output node 4 with id 171
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_171);
    end if;
  end process;
  -- output node 5 with id 178
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_178);
    end if;
  end process;
  -- output node 6 with id 185
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_185);
    end if;
  end process;
  -- output node 7 with id 194
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_194);
    end if;
  end process;
  -- output node 8 with id 199
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_199);
    end if;
  end process;
  -- output node 9 with id 200
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_200);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [32]]
  c_1_0_1_False_resize <= resize(c_0, 21);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_0_False_resize <= resize(c_0, 21);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_5_False_resize <= resize(c_0, 21);
  c_1_0_5_False_shift <= shift_left(c_1_0_5_False_resize, 5);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_1_False_shift;
        when "01" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[16], [1], [1]]
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_4_False_resize <= resize(c_0, 20);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[-12], [7], [127]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 23,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(22 downto 0);
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[2], [64], [127]]
  c_6_5_6_False_resize <= resize(c_5, 23);
  c_6_5_6_False_shift <= shift_left(c_6_5_6_False_resize, 6);
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_1_False_resize <= resize(c_5, 23);
  c_6_5_1_False_shift <= shift_left(c_6_5_1_False_resize, 1);
  with config_select_3 select c_6_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_5_6_False_shift;
        when "01" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[8], [7], [8]]
  c_7_5_3_False_resize <= resize(c_5, 19);
  c_7_5_3_False_shift <= shift_left(c_7_5_3_False_resize, 3);
  c_7_3_0_False_resize <= c_3(18 downto 0);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_5_3_False_shift;
        when others => c_7 <= c_7_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[10], [71], [119]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[1], [28], [127]]
  c_9_5_0_False_resize <= resize(c_5, 23);
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  c_9_3_0_False_resize <= c_3;
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  c_9_3_2_False_resize <= c_3;
  c_9_3_2_False_shift <= shift_left(c_9_3_2_False_resize, 2);
  with config_select_3 select c_9_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_5_0_False_shift;
        when "01" => c_9 <= c_9_3_0_False_shift;
        when others => c_9 <= c_9_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[-12], [7], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[-12], [7], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[-12], [71], [256]]
  c_14_8_0_False_resize <= resize(c_8, 24);
  c_14_8_0_False_shift <= shift_left(c_14_8_0_False_resize, 0);
  c_14_13_0_False_resize <= resize(c_13, 24);
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  c_14_11_8_False_resize <= resize(c_11, 24);
  c_14_11_8_False_shift <= shift_left(c_14_11_8_False_resize, 8);
  with config_select_5 select c_14_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_8_0_False_shift;
        when "01" => c_14 <= c_14_13_0_False_shift;
        when others => c_14 <= c_14_11_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[1], [28], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[1], [28], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[13], [99], [-129]]
  with config_select_6 select c_17_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_17_sub_sel,
      x_i => c_16,
      y_i => c_14,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[-384], [7], [508]]
  c_18_3_2_False_resize <= resize(c_3, 25);
  c_18_3_2_False_shift <= shift_left(c_18_3_2_False_resize, 2);
  c_18_3_5_False_resize <= resize(c_3, 25);
  c_18_3_5_False_shift <= shift_left(c_18_3_5_False_resize, 5);
  c_18_3_0_False_resize <= resize(c_3, 25);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_3_2_False_shift;
        when "01" => c_18 <= c_18_3_5_False_shift;
        when others => c_18 <= c_18_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[8], [568], [1]]
  c_19_8_3_False_resize <= resize(c_8, 26);
  c_19_8_3_False_shift <= shift_left(c_19_8_3_False_resize, 3);
  c_19_11_0_False_resize <= resize(c_11, 26);
  c_19_11_0_False_shift <= shift_left(c_19_11_0_False_resize, 0);
  c_19_11_3_False_resize <= resize(c_11, 26);
  c_19_11_3_False_shift <= shift_left(c_19_11_3_False_resize, 3);
  with config_select_5 select c_19_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_8_3_False_shift;
        when "01" => c_19 <= c_19_11_0_False_shift;
        when others => c_19 <= c_19_11_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[-384], [7], [508]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[-384], [7], [508]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 22 and associated fundamentals [[-392], [-561], [509]]
  with config_select_6 select c_22_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
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
      sub_i => c_22_sub_sel,
      x_i => c_21,
      y_i => c_19,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 23 and associated fundamentals [[-384], [71], [64]]
  c_23_11_6_False_resize <= resize(c_11, 25);
  c_23_11_6_False_shift <= shift_left(c_23_11_6_False_resize, 6);
  c_23_13_5_False_resize <= resize(c_13, 25);
  c_23_13_5_False_shift <= shift_left(c_23_13_5_False_resize, 5);
  c_23_8_0_False_resize <= resize(c_8, 25);
  c_23_8_0_False_shift <= shift_left(c_23_8_0_False_resize, 0);
  with config_select_5 select c_23_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_11_6_False_shift;
        when "01" => c_23 <= c_23_13_5_False_shift;
        when others => c_23 <= c_23_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 24 and associated fundamentals [[10], [4], [2]]
  c_24_8_0_False_resize <= c_8(19 downto 0);
  c_24_8_0_False_shift <= shift_left(c_24_8_0_False_resize, 0);
  c_24_11_1_False_resize <= resize(c_11, 20);
  c_24_11_1_False_shift <= shift_left(c_24_11_1_False_resize, 1);
  c_24_11_2_False_resize <= resize(c_11, 20);
  c_24_11_2_False_shift <= shift_left(c_24_11_2_False_resize, 2);
  with config_select_5 select c_24_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_8_0_False_shift;
        when "01" => c_24 <= c_24_11_1_False_shift;
        when others => c_24 <= c_24_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 25 and associated fundamentals [[-404], [79], [68]]
  with config_select_6 select c_25_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
      w_o => 25,
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
      sub_i => c_25_sub_sel,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 26 and associated fundamentals [[16], [112], [119]]
  c_26_13_4_False_resize <= c_13;
  c_26_13_4_False_shift <= shift_left(c_26_13_4_False_resize, 4);
  c_26_11_4_False_resize <= resize(c_11, 23);
  c_26_11_4_False_shift <= shift_left(c_26_11_4_False_resize, 4);
  c_26_8_0_False_resize <= c_8;
  c_26_8_0_False_shift <= shift_left(c_26_8_0_False_resize, 0);
  with config_select_5 select c_26_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_13_4_False_shift;
        when "01" => c_26 <= c_26_11_4_False_shift;
        when others => c_26 <= c_26_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[-12], [7], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[-12], [7], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 31 and associated fundamentals [[-96], [1], [-258]]
  c_31_30_3_False_resize <= resize(c_30, 25);
  c_31_30_3_False_shift <= shift_left(c_31_30_3_False_resize, 3);
  c_31_17_1_False_resize <= resize(c_17, 25);
  c_31_17_1_False_shift <= shift_left(c_31_17_1_False_resize, 1);
  c_31_28_0_False_resize <= resize(c_28, 25);
  c_31_28_0_False_shift <= shift_left(c_31_28_0_False_resize, 0);
  with config_select_7 select c_31_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_30_3_False_shift;
        when "01" => c_31 <= c_31_17_1_False_shift;
        when others => c_31 <= c_31_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[16], [112], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[16], [112], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 34 and associated fundamentals [[-32], [447], [734]]
  with config_select_8 select c_34_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
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
      sub_i => c_34_sub_sel,
      x_i => c_33,
      y_i => c_31,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 35 and associated fundamentals [[-404], [316], [-129]]
  c_35_25_0_False_resize <= c_25;
  c_35_25_0_False_shift <= shift_left(c_35_25_0_False_resize, 0);
  c_35_25_2_False_resize <= c_25;
  c_35_25_2_False_shift <= shift_left(c_35_25_2_False_resize, 2);
  c_35_17_0_False_resize <= resize(c_17, 25);
  c_35_17_0_False_shift <= shift_left(c_35_17_0_False_resize, 0);
  with config_select_7 select c_35_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_25_0_False_shift;
        when "01" => c_35 <= c_35_25_2_False_shift;
        when others => c_35 <= c_35_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 36 and associated fundamentals [[13], [-1122], [544]]
  c_36_17_0_False_resize <= resize(c_17, 27);
  c_36_17_0_False_shift <= shift_left(c_36_17_0_False_resize, 0);
  c_36_22_1_False_resize <= resize(c_22, 27);
  c_36_22_1_False_shift <= shift_left(c_36_22_1_False_resize, 1);
  c_36_25_3_False_resize <= resize(c_25, 27);
  c_36_25_3_False_shift <= shift_left(c_36_25_3_False_resize, 3);
  with config_select_7 select c_36_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_17_0_False_shift;
        when "01" => c_36 <= c_36_22_1_False_shift;
        when others => c_36 <= c_36_25_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 37 and associated fundamentals [[-391], [-806], [-673]]
  with config_select_8 select c_37_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
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
      sub_i => c_37_sub_sel,
      x_i => c_35,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 38 and associated fundamentals [[10], [71], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[10], [71], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[10], [71], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[10], [71], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 42 and associated fundamentals [[-32], [71], [-1346]]
  c_42_37_1_False_resize <= resize(c_37, 27);
  c_42_37_1_False_shift <= shift_left(c_42_37_1_False_resize, 1);
  c_42_34_0_False_resize <= resize(c_34, 27);
  c_42_34_0_False_shift <= shift_left(c_42_34_0_False_resize, 0);
  c_42_41_0_False_resize <= resize(c_41, 27);
  c_42_41_0_False_shift <= shift_left(c_42_41_0_False_resize, 0);
  with config_select_9 select c_42_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_37_1_False_shift;
        when "01" => c_42 <= c_42_34_0_False_shift;
        when others => c_42 <= c_42_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[13], [99], [-129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[13], [99], [-129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 47 and associated fundamentals [[13], [2], [5872]]
  c_47_46_0_False_resize <= resize(c_46, 29);
  c_47_46_0_False_shift <= shift_left(c_47_46_0_False_resize, 0);
  c_47_44_1_False_resize <= resize(c_44, 29);
  c_47_44_1_False_shift <= shift_left(c_47_44_1_False_resize, 1);
  c_47_34_3_False_resize <= resize(c_34, 29);
  c_47_34_3_False_shift <= shift_left(c_47_34_3_False_resize, 3);
  with config_select_9 select c_47_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_46_0_False_shift;
        when "01" => c_47 <= c_47_44_1_False_shift;
        when others => c_47 <= c_47_34_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 48 and associated fundamentals [[-141], [282], [488]]
  with config_select_10 select c_48_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_48: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 29,
      w_o => 25,
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
      sub_i => c_48_sub_sel,
      x_i => c_42,
      y_i => c_47,
      z_o => c_48_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_48_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 49 and associated fundamentals [[-782], [447], [16]]
  c_49_37_1_False_resize <= c_37;
  c_49_37_1_False_shift <= shift_left(c_49_37_1_False_resize, 1);
  c_49_44_4_False_resize <= resize(c_44, 26);
  c_49_44_4_False_shift <= shift_left(c_49_44_4_False_resize, 4);
  c_49_34_0_False_resize <= c_34;
  c_49_34_0_False_shift <= shift_left(c_49_34_0_False_resize, 0);
  with config_select_9 select c_49_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_37_1_False_shift;
        when "01" => c_49 <= c_49_44_4_False_shift;
        when others => c_49 <= c_49_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 50 and associated fundamentals [[-12], [7], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[-12], [7], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[-12], [7], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[-12], [7], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 54 and associated fundamentals [[-392], [-561], [509]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[-392], [-561], [509]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[-392], [-561], [509]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[-392], [-561], [509]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 58 and associated fundamentals [[-12], [1128], [509]]
  c_58_53_0_False_resize <= resize(c_53, 27);
  c_58_53_0_False_shift <= shift_left(c_58_53_0_False_resize, 0);
  c_58_57_0_False_resize <= resize(c_57, 27);
  c_58_57_0_False_shift <= shift_left(c_58_57_0_False_resize, 0);
  c_58_48_2_False_resize <= resize(c_48, 27);
  c_58_48_2_False_shift <= shift_left(c_58_48_2_False_resize, 2);
  with config_select_11 select c_58_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "00" => c_58 <= c_58_53_0_False_shift;
        when "01" => c_58 <= c_58_57_0_False_shift;
        when others => c_58 <= c_58_48_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 59 and associated fundamentals [[-782], [447], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 60 and associated fundamentals [[-782], [447], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 12 with id 61 and associated fundamentals [[-770], [-681], [-493]]
  inst_adder_node_61: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      x_i => c_60,
      y_i => c_58,
      z_o => c_61_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_61_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 62 and associated fundamentals [[1], [28], [16]]
  c_62_5_4_False_resize <= resize(c_5, 21);
  c_62_5_4_False_shift <= shift_left(c_62_5_4_False_resize, 4);
  c_62_5_0_False_resize <= resize(c_5, 21);
  c_62_5_0_False_shift <= shift_left(c_62_5_0_False_resize, 0);
  c_62_3_2_False_resize <= c_3(20 downto 0);
  c_62_3_2_False_shift <= shift_left(c_62_3_2_False_resize, 2);
  with config_select_3 select c_62_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_62_sel is
        when "00" => c_62 <= c_62_5_4_False_shift;
        when "01" => c_62 <= c_62_5_0_False_shift;
        when others => c_62 <= c_62_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 63 and associated fundamentals [[13], [158], [238]]
  c_63_39_1_False_resize <= resize(c_39, 24);
  c_63_39_1_False_shift <= shift_left(c_63_39_1_False_resize, 1);
  c_63_17_0_False_resize <= c_17;
  c_63_17_0_False_shift <= shift_left(c_63_17_0_False_resize, 0);
  c_63_25_1_False_resize <= c_25(23 downto 0);
  c_63_25_1_False_shift <= shift_left(c_63_25_1_False_resize, 1);
  with config_select_7 select c_63_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "00" => c_63 <= c_63_39_1_False_shift;
        when "01" => c_63 <= c_63_17_0_False_shift;
        when others => c_63 <= c_63_25_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 64 and associated fundamentals [[1], [28], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 65 and associated fundamentals [[1], [28], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 66 and associated fundamentals [[1], [28], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 67 and associated fundamentals [[1], [28], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 68 and associated fundamentals [[-22], [-204], [-412]]
  inst_adder_node_68: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_67,
      y_i => c_63,
      z_o => c_68_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_68_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 69 and associated fundamentals [[-391], [224], [509]]
  c_69_55_0_False_resize <= c_55(24 downto 0);
  c_69_55_0_False_shift <= shift_left(c_69_55_0_False_resize, 0);
  c_69_51_5_False_resize <= resize(c_51, 25);
  c_69_51_5_False_shift <= shift_left(c_69_51_5_False_resize, 5);
  c_69_37_0_False_resize <= c_37(24 downto 0);
  c_69_37_0_False_shift <= shift_left(c_69_37_0_False_resize, 0);
  with config_select_9 select c_69_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_69_sel is
        when "00" => c_69 <= c_69_55_0_False_shift;
        when "01" => c_69 <= c_69_51_5_False_shift;
        when others => c_69 <= c_69_37_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 70 and associated fundamentals [[-404], [79], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 71 and associated fundamentals [[-404], [79], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 72 and associated fundamentals [[-404], [79], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 73 and associated fundamentals [[-404], [79], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 74 and associated fundamentals [[-404], [79], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 75 and associated fundamentals [[-404], [79], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 76 and associated fundamentals [[-32], [447], [734]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 77 and associated fundamentals [[-32], [447], [734]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 78 and associated fundamentals [[-32], [447], [734]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 79 and associated fundamentals [[-32], [447], [734]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 80 and associated fundamentals [[-808], [-681], [1468]]
  c_80_75_1_False_resize <= resize(c_75, 27);
  c_80_75_1_False_shift <= shift_left(c_80_75_1_False_resize, 1);
  c_80_61_0_False_resize <= resize(c_61, 27);
  c_80_61_0_False_shift <= shift_left(c_80_61_0_False_resize, 0);
  c_80_79_1_False_resize <= resize(c_79, 27);
  c_80_79_1_False_shift <= shift_left(c_80_79_1_False_resize, 1);
  with config_select_13 select c_80_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_80_sel is
        when "00" => c_80 <= c_80_75_1_False_shift;
        when "01" => c_80 <= c_80_61_0_False_shift;
        when others => c_80 <= c_80_79_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 81 and associated fundamentals [[-391], [224], [509]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 82 and associated fundamentals [[-391], [224], [509]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 83 and associated fundamentals [[-391], [224], [509]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 84 and associated fundamentals [[-391], [224], [509]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 85 and associated fundamentals [[417], [-457], [-959]]
  with config_select_14 select c_85_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_85: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
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
      sub_i => c_85_sub_sel,
      x_i => c_84,
      y_i => c_80,
      z_o => c_85_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_85_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 86 and associated fundamentals [[13], [99], [-129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 87 and associated fundamentals [[13], [99], [-129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 88 and associated fundamentals [[-392], [99], [488]]
  c_88_48_0_False_resize <= c_48;
  c_88_48_0_False_shift <= shift_left(c_88_48_0_False_resize, 0);
  c_88_57_0_False_resize <= c_57(24 downto 0);
  c_88_57_0_False_shift <= shift_left(c_88_57_0_False_resize, 0);
  c_88_87_0_False_resize <= resize(c_87, 25);
  c_88_87_0_False_shift <= shift_left(c_88_87_0_False_resize, 0);
  with config_select_11 select c_88_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_88_sel is
        when "00" => c_88 <= c_88_48_0_False_shift;
        when "01" => c_88 <= c_88_57_0_False_shift;
        when others => c_88 <= c_88_87_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 89 and associated fundamentals [[-44], [-816], [127]]
  c_89_68_1_False_resize <= resize(c_68, 26);
  c_89_68_1_False_shift <= shift_left(c_89_68_1_False_resize, 1);
  c_89_51_0_False_resize <= resize(c_51, 26);
  c_89_51_0_False_shift <= shift_left(c_89_51_0_False_resize, 0);
  c_89_68_2_False_resize <= resize(c_68, 26);
  c_89_68_2_False_shift <= shift_left(c_89_68_2_False_resize, 2);
  with config_select_9 select c_89_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_89_sel is
        when "00" => c_89 <= c_89_68_1_False_shift;
        when "01" => c_89 <= c_89_51_0_False_shift;
        when others => c_89 <= c_89_68_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 90 and associated fundamentals [[-44], [-816], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 91 and associated fundamentals [[-44], [-816], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 92 and associated fundamentals [[-348], [-717], [361]]
  with config_select_12 select c_92_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_92: entity work.adder_node
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
      sub_i => c_92_sub_sel,
      x_i => c_88,
      y_i => c_91,
      z_o => c_92_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_92_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 93 and associated fundamentals [[-770], [-681], [-493]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 94 and associated fundamentals [[-770], [-681], [-493]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 95 and associated fundamentals [[-22], [-204], [-412]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 96 and associated fundamentals [[-22], [-204], [-412]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 97 and associated fundamentals [[-22], [-204], [-412]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 98 and associated fundamentals [[-22], [-204], [-412]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 99 and associated fundamentals [[-22], [-204], [-412]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 100 and associated fundamentals [[-22], [-204], [-412]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 101 and associated fundamentals [[417], [-408], [-493]]
  c_101_100_1_False_resize <= c_100;
  c_101_100_1_False_shift <= shift_left(c_101_100_1_False_resize, 1);
  c_101_94_0_False_resize <= c_94(24 downto 0);
  c_101_94_0_False_shift <= shift_left(c_101_94_0_False_resize, 0);
  c_101_85_0_False_resize <= c_85(24 downto 0);
  c_101_85_0_False_shift <= shift_left(c_101_85_0_False_resize, 0);
  with config_select_15 select c_101_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_101_sel is
        when "00" => c_101 <= c_101_100_1_False_shift;
        when "01" => c_101 <= c_101_94_0_False_shift;
        when others => c_101 <= c_101_85_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 102 and associated fundamentals [[512], [99], [272]]
  c_102_25_2_False_resize <= c_25;
  c_102_25_2_False_shift <= shift_left(c_102_25_2_False_resize, 2);
  c_102_17_0_False_resize <= resize(c_17, 25);
  c_102_17_0_False_shift <= shift_left(c_102_17_0_False_resize, 0);
  c_102_28_9_False_resize <= resize(c_28, 25);
  c_102_28_9_False_shift <= shift_left(c_102_28_9_False_resize, 9);
  with config_select_7 select c_102_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_102_sel is
        when "00" => c_102 <= c_102_25_2_False_shift;
        when "01" => c_102 <= c_102_17_0_False_shift;
        when others => c_102 <= c_102_28_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 103 and associated fundamentals [[512], [99], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 104 and associated fundamentals [[512], [99], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 105 and associated fundamentals [[512], [99], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 106 and associated fundamentals [[512], [99], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 107 and associated fundamentals [[512], [99], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 108 and associated fundamentals [[512], [99], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 109 and associated fundamentals [[512], [99], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 110 and associated fundamentals [[512], [99], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 111 and associated fundamentals [[929], [-507], [-765]]
  with config_select_16 select c_111_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_111: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_111_sub_sel,
      x_i => c_101,
      y_i => c_110,
      z_o => c_111_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_111_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 112 and associated fundamentals [[64], [7], [-258]]
  c_112_28_6_False_resize <= resize(c_28, 25);
  c_112_28_6_False_shift <= shift_left(c_112_28_6_False_resize, 6);
  c_112_30_0_False_resize <= resize(c_30, 25);
  c_112_30_0_False_shift <= shift_left(c_112_30_0_False_resize, 0);
  c_112_17_1_False_resize <= resize(c_17, 25);
  c_112_17_1_False_shift <= shift_left(c_112_17_1_False_resize, 1);
  with config_select_7 select c_112_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_112_sel is
        when "00" => c_112 <= c_112_28_6_False_shift;
        when "01" => c_112 <= c_112_30_0_False_shift;
        when others => c_112 <= c_112_17_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 113 and associated fundamentals [[-391], [-806], [119]]
  c_113_37_0_False_resize <= c_37;
  c_113_37_0_False_shift <= shift_left(c_113_37_0_False_resize, 0);
  c_113_41_0_False_resize <= resize(c_41, 26);
  c_113_41_0_False_shift <= shift_left(c_113_41_0_False_resize, 0);
  with config_select_9 select c_113_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_113_sel is
        when "0" => c_113 <= c_113_37_0_False_shift;
        when others => c_113 <= c_113_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 114 and associated fundamentals [[64], [7], [-258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 115 and associated fundamentals [[64], [7], [-258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'add' in stage 10 with id 116 and associated fundamentals [[-327], [-799], [-139]]
  inst_adder_node_116: entity work.adder_node
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
      sub => False
    )
    port map (
      x_i => c_115,
      y_i => c_113,
      z_o => c_116_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_116_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 117 and associated fundamentals [[-141], [282], [488]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 118 and associated fundamentals [[-141], [282], [488]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 119 and associated fundamentals [[-141], [282], [488]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 120 and associated fundamentals [[-141], [282], [488]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 121 and associated fundamentals [[-141], [282], [488]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 122 and associated fundamentals [[-141], [282], [488]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 123 and associated fundamentals [[-348], [-717], [361]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 124 and associated fundamentals [[-348], [-717], [361]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 125 and associated fundamentals [[-348], [-717], [361]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 126 and associated fundamentals [[-348], [-717], [361]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 127 and associated fundamentals [[929], [282], [361]]
  c_127_126_0_False_resize <= c_126;
  c_127_126_0_False_shift <= shift_left(c_127_126_0_False_resize, 0);
  c_127_111_0_False_resize <= c_111;
  c_127_111_0_False_shift <= shift_left(c_127_111_0_False_resize, 0);
  c_127_122_0_False_resize <= resize(c_122, 26);
  c_127_122_0_False_shift <= shift_left(c_127_122_0_False_resize, 0);
  with config_select_17 select c_127_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_127_sel is
        when "00" => c_127 <= c_127_126_0_False_shift;
        when "01" => c_127 <= c_127_111_0_False_shift;
        when others => c_127 <= c_127_122_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 128 and associated fundamentals [[-327], [-799], [-139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 129 and associated fundamentals [[-327], [-799], [-139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 130 and associated fundamentals [[-327], [-799], [-139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 131 and associated fundamentals [[-327], [-799], [-139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 132 and associated fundamentals [[-327], [-799], [-139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 133 and associated fundamentals [[-327], [-799], [-139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 134 and associated fundamentals [[-348], [-799], [-765]]
  c_134_111_0_False_resize <= c_111;
  c_134_111_0_False_shift <= shift_left(c_134_111_0_False_resize, 0);
  c_134_126_0_False_resize <= c_126;
  c_134_126_0_False_shift <= shift_left(c_134_126_0_False_resize, 0);
  c_134_133_0_False_resize <= c_133;
  c_134_133_0_False_shift <= shift_left(c_134_133_0_False_resize, 0);
  with config_select_17 select c_134_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_134_sel is
        when "00" => c_134 <= c_134_111_0_False_shift;
        when "01" => c_134 <= c_134_126_0_False_shift;
        when others => c_134 <= c_134_133_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 135 and associated fundamentals [[10], [71], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 136 and associated fundamentals [[10], [71], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_135 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 137 and associated fundamentals [[10], [71], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 138 and associated fundamentals [[10], [71], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 139 and associated fundamentals [[10], [71], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 140 and associated fundamentals [[10], [71], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 141 and associated fundamentals [[-404], [79], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 142 and associated fundamentals [[-404], [79], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 143 and associated fundamentals [[834], [316], [119]]
  c_143_85_1_False_resize <= c_85;
  c_143_85_1_False_shift <= shift_left(c_143_85_1_False_resize, 1);
  c_143_142_2_False_resize <= resize(c_142, 26);
  c_143_142_2_False_shift <= shift_left(c_143_142_2_False_resize, 2);
  c_143_140_0_False_resize <= resize(c_140, 26);
  c_143_140_0_False_shift <= shift_left(c_143_140_0_False_resize, 0);
  with config_select_15 select c_143_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_143_sel is
        when "00" => c_143 <= c_143_85_1_False_shift;
        when "01" => c_143 <= c_143_142_2_False_shift;
        when others => c_143 <= c_143_140_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 144 and associated fundamentals [[-392], [-561], [509]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 145 and associated fundamentals [[-392], [-561], [509]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 146 and associated fundamentals [[-392], [-681], [-493]]
  c_146_145_0_False_resize <= c_145;
  c_146_145_0_False_shift <= shift_left(c_146_145_0_False_resize, 0);
  c_146_61_0_False_resize <= c_61;
  c_146_61_0_False_shift <= shift_left(c_146_61_0_False_resize, 0);
  with config_select_13 select c_146_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_146_sel is
        when "0" => c_146 <= c_146_145_0_False_shift;
        when others => c_146 <= c_146_61_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 147 and associated fundamentals [[-327], [-457], [-412]]
  c_147_85_0_False_resize <= c_85(24 downto 0);
  c_147_85_0_False_shift <= shift_left(c_147_85_0_False_resize, 0);
  c_147_100_0_False_resize <= c_100;
  c_147_100_0_False_shift <= shift_left(c_147_100_0_False_resize, 0);
  c_147_131_0_False_resize <= c_131(24 downto 0);
  c_147_131_0_False_shift <= shift_left(c_147_131_0_False_resize, 0);
  with config_select_15 select c_147_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_147_sel is
        when "00" => c_147 <= c_147_85_0_False_shift;
        when "01" => c_147 <= c_147_100_0_False_shift;
        when others => c_147 <= c_147_131_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 148 and associated fundamentals [[-391], [-806], [-673]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 149 and associated fundamentals [[-391], [-806], [-673]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 150 and associated fundamentals [[-141], [-561], [-673]]
  c_150_149_0_False_resize <= c_149;
  c_150_149_0_False_shift <= shift_left(c_150_149_0_False_resize, 0);
  c_150_57_0_False_resize <= c_57;
  c_150_57_0_False_shift <= shift_left(c_150_57_0_False_resize, 0);
  c_150_48_0_False_resize <= resize(c_48, 26);
  c_150_48_0_False_shift <= shift_left(c_150_48_0_False_resize, 0);
  with config_select_11 select c_150_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_150_sel is
        when "00" => c_150 <= c_150_149_0_False_shift;
        when "01" => c_150 <= c_150_57_0_False_shift;
        when others => c_150 <= c_150_48_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 151 and associated fundamentals [[13], [396], [976]]
  c_151_87_0_False_resize <= resize(c_87, 26);
  c_151_87_0_False_shift <= shift_left(c_151_87_0_False_resize, 0);
  c_151_48_1_False_resize <= resize(c_48, 26);
  c_151_48_1_False_shift <= shift_left(c_151_48_1_False_resize, 1);
  c_151_87_2_False_resize <= resize(c_87, 26);
  c_151_87_2_False_shift <= shift_left(c_151_87_2_False_resize, 2);
  with config_select_11 select c_151_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_151_sel is
        when "00" => c_151 <= c_151_87_0_False_shift;
        when "01" => c_151 <= c_151_48_1_False_shift;
        when others => c_151 <= c_151_87_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 152 and associated fundamentals [[80], [894], [734]]
  c_152_34_1_False_resize <= c_34;
  c_152_34_1_False_shift <= shift_left(c_152_34_1_False_resize, 1);
  c_152_34_0_False_resize <= c_34;
  c_152_34_0_False_shift <= shift_left(c_152_34_0_False_resize, 0);
  c_152_41_3_False_resize <= resize(c_41, 26);
  c_152_41_3_False_shift <= shift_left(c_152_41_3_False_resize, 3);
  with config_select_9 select c_152_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_152_sel is
        when "00" => c_152 <= c_152_34_1_False_shift;
        when "01" => c_152 <= c_152_34_0_False_shift;
        when others => c_152 <= c_152_41_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 153 and associated fundamentals [[-770], [-717], [-139]]
  c_153_61_0_False_resize <= c_61;
  c_153_61_0_False_shift <= shift_left(c_153_61_0_False_resize, 0);
  c_153_92_0_False_resize <= c_92;
  c_153_92_0_False_shift <= shift_left(c_153_92_0_False_resize, 0);
  c_153_129_0_False_resize <= c_129;
  c_153_129_0_False_shift <= shift_left(c_153_129_0_False_resize, 0);
  with config_select_13 select c_153_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_153_sel is
        when "00" => c_153 <= c_153_61_0_False_shift;
        when "01" => c_153 <= c_153_92_0_False_shift;
        when others => c_153 <= c_153_129_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 154 and associated fundamentals [[-404], [79], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 155 and associated fundamentals [[-404], [79], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 156 and associated fundamentals [[417], [-457], [-959]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 157 and associated fundamentals [[417], [-457], [-959]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_156 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 158 and associated fundamentals [[-404], [-1014], [-959]]
  c_158_111_1_False_resize <= c_111;
  c_158_111_1_False_shift <= shift_left(c_158_111_1_False_resize, 1);
  c_158_157_0_False_resize <= c_157;
  c_158_157_0_False_shift <= shift_left(c_158_157_0_False_resize, 0);
  c_158_155_0_False_resize <= resize(c_155, 26);
  c_158_155_0_False_shift <= shift_left(c_158_155_0_False_resize, 0);
  with config_select_17 select c_158_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_158_sel is
        when "00" => c_158 <= c_158_111_1_False_shift;
        when "01" => c_158 <= c_158_157_0_False_shift;
        when others => c_158 <= c_158_155_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 159 and associated fundamentals [[929], [282], [361]]
  c_159_resize <= c_127;
  c_159 <= shift_left(c_159_resize, 0);
  -- node of type 'output' in stage 17 with id 160 and associated fundamentals [[348], [799], [765]]
  c_160_resize <= c_134;
  c_160 <= -shift_left(c_160_resize, 0);
  -- node of type 'register' in stage 16 with id 161 and associated fundamentals [[834], [316], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_143 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 162 and associated fundamentals [[834], [316], [119]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_161 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 163 and associated fundamentals [[834], [316], [119]]
  c_163_resize <= c_162;
  c_163 <= shift_left(c_163_resize, 0);
  -- node of type 'register' in stage 14 with id 164 and associated fundamentals [[-392], [-681], [-493]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_146 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 165 and associated fundamentals [[-392], [-681], [-493]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_165 <= c_164 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 166 and associated fundamentals [[-392], [-681], [-493]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_166 <= c_165 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 167 and associated fundamentals [[-392], [-681], [-493]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_167 <= c_166 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 168 and associated fundamentals [[392], [681], [493]]
  c_168_resize <= c_167;
  c_168 <= -shift_left(c_168_resize, 0);
  -- node of type 'register' in stage 16 with id 169 and associated fundamentals [[-327], [-457], [-412]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_169 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 170 and associated fundamentals [[-327], [-457], [-412]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_170 <= c_169 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 171 and associated fundamentals [[327], [457], [412]]
  c_171_resize <= c_170;
  c_171 <= -shift_left(c_171_resize, 0);
  -- node of type 'register' in stage 12 with id 172 and associated fundamentals [[-141], [-561], [-673]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_172 <= c_150 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 173 and associated fundamentals [[-141], [-561], [-673]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_173 <= c_172 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 174 and associated fundamentals [[-141], [-561], [-673]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_174 <= c_173 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 175 and associated fundamentals [[-141], [-561], [-673]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_175 <= c_174 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 176 and associated fundamentals [[-141], [-561], [-673]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_175 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 177 and associated fundamentals [[-141], [-561], [-673]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_177 <= c_176 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 178 and associated fundamentals [[141], [561], [673]]
  c_178_resize <= c_177;
  c_178 <= -shift_left(c_178_resize, 0);
  -- node of type 'register' in stage 12 with id 179 and associated fundamentals [[13], [396], [976]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_179 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 180 and associated fundamentals [[13], [396], [976]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_180 <= c_179 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 181 and associated fundamentals [[13], [396], [976]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_181 <= c_180 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 182 and associated fundamentals [[13], [396], [976]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_182 <= c_181 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 183 and associated fundamentals [[13], [396], [976]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_183 <= c_182 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 184 and associated fundamentals [[13], [396], [976]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_184 <= c_183 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 185 and associated fundamentals [[13], [396], [976]]
  c_185_resize <= c_184;
  c_185 <= shift_left(c_185_resize, 0);
  -- node of type 'register' in stage 10 with id 186 and associated fundamentals [[80], [894], [734]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_186 <= c_152 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 187 and associated fundamentals [[80], [894], [734]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_187 <= c_186 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 188 and associated fundamentals [[80], [894], [734]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_188 <= c_187 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 189 and associated fundamentals [[80], [894], [734]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_189 <= c_188 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 190 and associated fundamentals [[80], [894], [734]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_190 <= c_189 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 191 and associated fundamentals [[80], [894], [734]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_191 <= c_190 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 192 and associated fundamentals [[80], [894], [734]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_192 <= c_191 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 193 and associated fundamentals [[80], [894], [734]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_193 <= c_192 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 194 and associated fundamentals [[80], [894], [734]]
  c_194_resize <= c_193;
  c_194 <= shift_left(c_194_resize, 0);
  -- node of type 'register' in stage 14 with id 195 and associated fundamentals [[-770], [-717], [-139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_195 <= c_153 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 196 and associated fundamentals [[-770], [-717], [-139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_196 <= c_195 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 197 and associated fundamentals [[-770], [-717], [-139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_197 <= c_196 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 198 and associated fundamentals [[-770], [-717], [-139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_198 <= c_197 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 199 and associated fundamentals [[770], [717], [139]]
  c_199_resize <= c_198;
  c_199 <= -shift_left(c_199_resize, 0);
  -- node of type 'output' in stage 17 with id 200 and associated fundamentals [[404], [1014], [959]]
  c_200_resize <= c_158;
  c_200 <= -shift_left(c_200_resize, 0);
end architecture;

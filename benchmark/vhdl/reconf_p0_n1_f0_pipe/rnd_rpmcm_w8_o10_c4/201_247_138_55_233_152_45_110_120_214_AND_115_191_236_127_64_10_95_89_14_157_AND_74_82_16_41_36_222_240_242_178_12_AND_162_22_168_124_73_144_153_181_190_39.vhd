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
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
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
  signal config_select_13: std_logic_vector(1 downto 0);
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
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(16 downto 0);
  signal c_4_0_0_False_resize: signed(16 downto 0);
  signal c_4_0_0_False_shift: signed(16 downto 0);
  signal c_4_0_1_False_resize: signed(16 downto 0);
  signal c_4_0_1_False_shift: signed(16 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_i0_resize: signed(19 downto 0);
  signal c_5_i1_resize: signed(19 downto 0);
  signal c_5_i0_shift: signed(19 downto 0);
  signal c_5_i1_shift: signed(19 downto 0);
  signal c_5_arith: signed(19 downto 0);
  signal c_5_oshift: signed(19 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(21 downto 0);
  signal c_6_3_0_False_resize: signed(21 downto 0);
  signal c_6_3_0_False_shift: signed(21 downto 0);
  signal c_6_5_3_False_resize: signed(21 downto 0);
  signal c_6_5_3_False_shift: signed(21 downto 0);
  signal c_6_5_1_False_resize: signed(21 downto 0);
  signal c_6_5_1_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_0_0_False_resize: signed(18 downto 0);
  signal c_7_0_0_False_shift: signed(18 downto 0);
  signal c_7_0_3_False_resize: signed(18 downto 0);
  signal c_7_0_3_False_shift: signed(18 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_i0_resize: signed(21 downto 0);
  signal c_10_i1_resize: signed(21 downto 0);
  signal c_10_i0_shift: signed(21 downto 0);
  signal c_10_i1_shift: signed(21 downto 0);
  signal c_10_arith: signed(21 downto 0);
  signal c_10_oshift: signed(21 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(15 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_12_3_0_False_resize: signed(20 downto 0);
  signal c_12_3_0_False_shift: signed(20 downto 0);
  signal c_12_11_0_False_resize: signed(20 downto 0);
  signal c_12_11_0_False_shift: signed(20 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_11_4_False_resize: signed(20 downto 0);
  signal c_13_11_4_False_shift: signed(20 downto 0);
  signal c_13_5_3_False_resize: signed(20 downto 0);
  signal c_13_5_3_False_shift: signed(20 downto 0);
  signal c_13_3_0_False_resize: signed(20 downto 0);
  signal c_13_3_0_False_shift: signed(20 downto 0);
  signal c_13_5_2_False_resize: signed(20 downto 0);
  signal c_13_5_2_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_i0_resize: signed(22 downto 0);
  signal c_14_i1_resize: signed(22 downto 0);
  signal c_14_i0_shift: signed(22 downto 0);
  signal c_14_i1_shift: signed(22 downto 0);
  signal c_14_arith: signed(22 downto 0);
  signal c_14_oshift: signed(22 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(21 downto 0);
  signal c_15_11_6_False_resize: signed(21 downto 0);
  signal c_15_11_6_False_shift: signed(21 downto 0);
  signal c_15_5_1_False_resize: signed(21 downto 0);
  signal c_15_5_1_False_shift: signed(21 downto 0);
  signal c_15_3_0_False_resize: signed(21 downto 0);
  signal c_15_3_0_False_shift: signed(21 downto 0);
  signal c_15_11_5_False_resize: signed(21 downto 0);
  signal c_15_11_5_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(15 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_17_2_False_resize: signed(22 downto 0);
  signal c_18_17_2_False_shift: signed(22 downto 0);
  signal c_18_10_0_False_resize: signed(22 downto 0);
  signal c_18_10_0_False_shift: signed(22 downto 0);
  signal c_18_14_0_False_resize: signed(22 downto 0);
  signal c_18_14_0_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_i0_resize: signed(22 downto 0);
  signal c_21_i1_resize: signed(22 downto 0);
  signal c_21_i0_shift: signed(22 downto 0);
  signal c_21_i1_shift: signed(22 downto 0);
  signal c_21_arith: signed(22 downto 0);
  signal c_21_oshift: signed(22 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(20 downto 0);
  signal c_22_5_2_False_resize: signed(20 downto 0);
  signal c_22_5_2_False_shift: signed(20 downto 0);
  signal c_22_11_0_False_resize: signed(20 downto 0);
  signal c_22_11_0_False_shift: signed(20 downto 0);
  signal c_22_11_3_False_resize: signed(20 downto 0);
  signal c_22_11_3_False_shift: signed(20 downto 0);
  signal c_22_3_1_False_resize: signed(20 downto 0);
  signal c_22_3_1_False_shift: signed(20 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(19 downto 0);
  signal c_23_5_0_False_resize: signed(19 downto 0);
  signal c_23_5_0_False_shift: signed(19 downto 0);
  signal c_23_3_0_False_resize: signed(19 downto 0);
  signal c_23_3_0_False_shift: signed(19 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(20 downto 0);
  signal c_26: signed(20 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_28: signed(19 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_29_28_2_False_resize: signed(21 downto 0);
  signal c_29_28_2_False_shift: signed(21 downto 0);
  signal c_29_10_0_False_resize: signed(21 downto 0);
  signal c_29_10_0_False_shift: signed(21 downto 0);
  signal c_29_26_1_False_resize: signed(21 downto 0);
  signal c_29_26_1_False_shift: signed(21 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_34: signed(21 downto 0);
  signal c_34_31_1_False_resize: signed(21 downto 0);
  signal c_34_31_1_False_shift: signed(21 downto 0);
  signal c_34_33_1_False_resize: signed(21 downto 0);
  signal c_34_33_1_False_shift: signed(21 downto 0);
  signal c_34_21_0_False_resize: signed(21 downto 0);
  signal c_34_21_0_False_shift: signed(21 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_i0_resize: signed(23 downto 0);
  signal c_37_i1_resize: signed(23 downto 0);
  signal c_37_i0_shift: signed(23 downto 0);
  signal c_37_i1_shift: signed(23 downto 0);
  signal c_37_arith: signed(23 downto 0);
  signal c_37_oshift: signed(23 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(25 downto 0);
  signal c_38_14_0_False_resize: signed(25 downto 0);
  signal c_38_14_0_False_shift: signed(25 downto 0);
  signal c_38_10_4_False_resize: signed(25 downto 0);
  signal c_38_10_4_False_shift: signed(25 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(26 downto 0);
  signal c_39_21_4_False_resize: signed(26 downto 0);
  signal c_39_21_4_False_shift: signed(26 downto 0);
  signal c_39_31_0_False_resize: signed(26 downto 0);
  signal c_39_31_0_False_shift: signed(26 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_i0_resize: signed(23 downto 0);
  signal c_42_i1_resize: signed(23 downto 0);
  signal c_42_i0_shift: signed(23 downto 0);
  signal c_42_i1_shift: signed(23 downto 0);
  signal c_42_arith: signed(23 downto 0);
  signal c_42_oshift: signed(23 downto 0);
  signal c_42_sub_sel: std_logic;
  signal c_43: signed(22 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_37_0_False_resize: signed(23 downto 0);
  signal c_45_37_0_False_shift: signed(23 downto 0);
  signal c_45_44_2_False_resize: signed(23 downto 0);
  signal c_45_44_2_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_46_14_0_False_resize: signed(22 downto 0);
  signal c_46_14_0_False_shift: signed(22 downto 0);
  signal c_46_28_2_False_resize: signed(22 downto 0);
  signal c_46_28_2_False_shift: signed(22 downto 0);
  signal c_46_10_1_False_resize: signed(22 downto 0);
  signal c_46_10_1_False_shift: signed(22 downto 0);
  signal c_46_28_0_False_resize: signed(22 downto 0);
  signal c_46_28_0_False_shift: signed(22 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_51_i0_resize: signed(22 downto 0);
  signal c_51_i1_resize: signed(22 downto 0);
  signal c_51_i0_shift: signed(22 downto 0);
  signal c_51_i1_shift: signed(22 downto 0);
  signal c_51_arith: signed(22 downto 0);
  signal c_51_oshift: signed(22 downto 0);
  signal c_51_sub_sel: std_logic;
  signal c_52: signed(19 downto 0);
  signal c_53: signed(19 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_54_53_6_False_resize: signed(24 downto 0);
  signal c_54_53_6_False_shift: signed(24 downto 0);
  signal c_54_37_1_False_resize: signed(24 downto 0);
  signal c_54_37_1_False_shift: signed(24 downto 0);
  signal c_54_53_0_False_resize: signed(24 downto 0);
  signal c_54_53_0_False_shift: signed(24 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(15 downto 0);
  signal c_56: signed(15 downto 0);
  signal c_57: signed(15 downto 0);
  signal c_58: signed(15 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_37_0_False_resize: signed(23 downto 0);
  signal c_59_37_0_False_shift: signed(23 downto 0);
  signal c_59_58_0_False_resize: signed(23 downto 0);
  signal c_59_58_0_False_shift: signed(23 downto 0);
  signal c_59_sel: std_logic_vector(0 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_60_i0_resize: signed(23 downto 0);
  signal c_60_i1_resize: signed(23 downto 0);
  signal c_60_i0_shift: signed(23 downto 0);
  signal c_60_i1_shift: signed(23 downto 0);
  signal c_60_arith: signed(23 downto 0);
  signal c_60_oshift: signed(23 downto 0);
  signal c_60_sub_sel: std_logic;
  signal c_61: signed(21 downto 0);
  signal c_62: signed(21 downto 0);
  signal c_63: signed(21 downto 0);
  signal c_64: signed(21 downto 0);
  signal c_65: signed(21 downto 0);
  signal c_66: signed(21 downto 0);
  signal c_67: signed(22 downto 0);
  signal c_68: signed(22 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_69_60_0_False_resize: signed(23 downto 0);
  signal c_69_60_0_False_shift: signed(23 downto 0);
  signal c_69_66_1_False_resize: signed(23 downto 0);
  signal c_69_66_1_False_shift: signed(23 downto 0);
  signal c_69_68_0_False_resize: signed(23 downto 0);
  signal c_69_68_0_False_shift: signed(23 downto 0);
  signal c_69_sel: std_logic_vector(1 downto 0);
  signal c_70: signed(15 downto 0);
  signal c_71: signed(15 downto 0);
  signal c_72: signed(22 downto 0);
  signal c_72_71_3_False_resize: signed(22 downto 0);
  signal c_72_71_3_False_shift: signed(22 downto 0);
  signal c_72_68_1_False_resize: signed(22 downto 0);
  signal c_72_68_1_False_shift: signed(22 downto 0);
  signal c_72_51_0_False_resize: signed(22 downto 0);
  signal c_72_51_0_False_shift: signed(22 downto 0);
  signal c_72_sel: std_logic_vector(1 downto 0);
  signal c_73: signed(20 downto 0);
  signal c_74: signed(20 downto 0);
  signal c_75: signed(20 downto 0);
  signal c_76: signed(20 downto 0);
  signal c_77: signed(20 downto 0);
  signal c_78: signed(20 downto 0);
  signal c_79: signed(22 downto 0);
  signal c_79_78_2_False_resize: signed(22 downto 0);
  signal c_79_78_2_False_shift: signed(22 downto 0);
  signal c_79_66_0_False_resize: signed(22 downto 0);
  signal c_79_66_0_False_shift: signed(22 downto 0);
  signal c_79_51_0_False_resize: signed(22 downto 0);
  signal c_79_51_0_False_shift: signed(22 downto 0);
  signal c_79_sel: std_logic_vector(1 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_80_26_2_False_resize: signed(23 downto 0);
  signal c_80_26_2_False_shift: signed(23 downto 0);
  signal c_80_17_6_False_resize: signed(23 downto 0);
  signal c_80_17_6_False_shift: signed(23 downto 0);
  signal c_80_24_0_False_resize: signed(23 downto 0);
  signal c_80_24_0_False_shift: signed(23 downto 0);
  signal c_80_sel: std_logic_vector(1 downto 0);
  signal c_81: signed(19 downto 0);
  signal c_82: signed(19 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_83_66_1_False_resize: signed(23 downto 0);
  signal c_83_66_1_False_shift: signed(23 downto 0);
  signal c_83_68_3_False_resize: signed(23 downto 0);
  signal c_83_68_3_False_shift: signed(23 downto 0);
  signal c_83_60_0_False_resize: signed(23 downto 0);
  signal c_83_60_0_False_shift: signed(23 downto 0);
  signal c_83_82_4_False_resize: signed(23 downto 0);
  signal c_83_82_4_False_shift: signed(23 downto 0);
  signal c_83_sel: std_logic_vector(1 downto 0);
  signal c_84: signed(22 downto 0);
  signal c_85: signed(22 downto 0);
  signal c_86: signed(22 downto 0);
  signal c_87: signed(22 downto 0);
  signal c_88: signed(22 downto 0);
  signal c_89: signed(22 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_90_89_0_False_resize: signed(23 downto 0);
  signal c_90_89_0_False_shift: signed(23 downto 0);
  signal c_90_60_0_False_resize: signed(23 downto 0);
  signal c_90_60_0_False_shift: signed(23 downto 0);
  signal c_90_51_4_False_resize: signed(23 downto 0);
  signal c_90_51_4_False_shift: signed(23 downto 0);
  signal c_90_sel: std_logic_vector(1 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_93_42_0_False_resize: signed(23 downto 0);
  signal c_93_42_0_False_shift: signed(23 downto 0);
  signal c_93_44_1_False_resize: signed(23 downto 0);
  signal c_93_44_1_False_shift: signed(23 downto 0);
  signal c_93_92_0_False_resize: signed(23 downto 0);
  signal c_93_92_0_False_shift: signed(23 downto 0);
  signal c_93_64_1_False_resize: signed(23 downto 0);
  signal c_93_64_1_False_shift: signed(23 downto 0);
  signal c_93_sel: std_logic_vector(1 downto 0);
  signal c_94: signed(22 downto 0);
  signal c_94_14_0_False_resize: signed(22 downto 0);
  signal c_94_14_0_False_shift: signed(22 downto 0);
  signal c_94_26_0_False_resize: signed(22 downto 0);
  signal c_94_26_0_False_shift: signed(22 downto 0);
  signal c_94_26_2_False_resize: signed(22 downto 0);
  signal c_94_26_2_False_shift: signed(22 downto 0);
  signal c_94_sel: std_logic_vector(1 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_95_42_0_False_resize: signed(23 downto 0);
  signal c_95_42_0_False_shift: signed(23 downto 0);
  signal c_95_92_2_False_resize: signed(23 downto 0);
  signal c_95_92_2_False_shift: signed(23 downto 0);
  signal c_95_64_0_False_resize: signed(23 downto 0);
  signal c_95_64_0_False_shift: signed(23 downto 0);
  signal c_95_sel: std_logic_vector(1 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_99_resize: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_100_resize: signed(23 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_101_resize: signed(23 downto 0);
  signal c_102: signed(22 downto 0);
  signal c_102_resize: signed(22 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_106: signed(23 downto 0);
  signal c_107: signed(23 downto 0);
  signal c_108: signed(23 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_109_resize: signed(23 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_110_resize: signed(23 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_111_resize: signed(23 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_114_resize: signed(23 downto 0);
  signal c_115: signed(22 downto 0);
  signal c_116: signed(22 downto 0);
  signal c_117: signed(22 downto 0);
  signal c_118: signed(22 downto 0);
  signal c_119: signed(22 downto 0);
  signal c_120: signed(22 downto 0);
  signal c_121: signed(23 downto 0);
  signal c_121_resize: signed(23 downto 0);
  signal c_122: signed(23 downto 0);
  signal c_123: signed(23 downto 0);
  signal c_124: signed(23 downto 0);
  signal c_124_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 99
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_99);
    end if;
  end process;
  -- output node 1 with id 100
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_100);
    end if;
  end process;
  -- output node 2 with id 101
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_101);
    end if;
  end process;
  -- output node 3 with id 102
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_102);
    end if;
  end process;
  -- output node 4 with id 109
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_109);
    end if;
  end process;
  -- output node 5 with id 110
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_110);
    end if;
  end process;
  -- output node 6 with id 111
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_111);
    end if;
  end process;
  -- output node 7 with id 114
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_114);
    end if;
  end process;
  -- output node 8 with id 121
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_121);
    end if;
  end process;
  -- output node 9 with id 124
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_124);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 18);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "00" when "10",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[15], [7], [9], [31]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[2], [1], [1], [2]]
  c_4_0_0_False_resize <= resize(c_0, 17);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_1_False_resize <= resize(c_0, 17);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
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
  -- node of type 'add_sub' in stage 2 with id 5 and associated fundamentals [[7], [3], [5], [9]]
  with config_select_2 select c_5_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_2,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[56], [6], [40], [31]]
  c_6_3_0_False_resize <= resize(c_3, 22);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_3_False_resize <= resize(c_5, 22);
  c_6_5_3_False_shift <= shift_left(c_6_5_3_False_resize, 3);
  c_6_5_1_False_resize <= resize(c_5, 22);
  c_6_5_1_False_shift <= shift_left(c_6_5_1_False_resize, 1);
  with config_select_3 select c_6_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_0_False_shift;
        when "01" => c_6 <= c_6_5_3_False_shift;
        when others => c_6 <= c_6_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[1], [1], [1], [8]]
  c_7_0_0_False_resize <= resize(c_0, 19);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_3_False_resize <= resize(c_0, 19);
  c_7_0_3_False_shift <= shift_left(c_7_0_3_False_resize, 3);
  with config_select_1 select c_7_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_0_False_shift;
        when others => c_7 <= c_7_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [1], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[55], [5], [41], [39]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 22,
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
      sub_i => c_10_sub_sel,
      x_i => c_6,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 11 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[15], [1], [9], [31]]
  c_12_3_0_False_resize <= c_3;
  c_12_3_0_False_shift <= shift_left(c_12_3_0_False_resize, 0);
  c_12_11_0_False_resize <= resize(c_11, 21);
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_3_0_False_shift;
        when others => c_12 <= c_12_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[15], [24], [20], [16]]
  c_13_11_4_False_resize <= resize(c_11, 21);
  c_13_11_4_False_shift <= shift_left(c_13_11_4_False_resize, 4);
  c_13_5_3_False_resize <= resize(c_5, 21);
  c_13_5_3_False_shift <= shift_left(c_13_5_3_False_resize, 3);
  c_13_3_0_False_resize <= c_3;
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  c_13_5_2_False_resize <= resize(c_5, 21);
  c_13_5_2_False_shift <= shift_left(c_13_5_2_False_resize, 2);
  with config_select_3 select c_13_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_11_4_False_shift;
        when "01" => c_13 <= c_13_5_3_False_shift;
        when "10" => c_13 <= c_13_3_0_False_shift;
        when others => c_13 <= c_13_5_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[-45], [-95], [89], [95]]
  with config_select_4 select c_14_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 23,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[15], [64], [32], [18]]
  c_15_11_6_False_resize <= resize(c_11, 22);
  c_15_11_6_False_shift <= shift_left(c_15_11_6_False_resize, 6);
  c_15_5_1_False_resize <= resize(c_5, 22);
  c_15_5_1_False_shift <= shift_left(c_15_5_1_False_resize, 1);
  c_15_3_0_False_resize <= resize(c_3, 22);
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  c_15_11_5_False_resize <= resize(c_11, 22);
  c_15_11_5_False_shift <= shift_left(c_15_11_5_False_resize, 5);
  with config_select_3 select c_15_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_11_6_False_shift;
        when "01" => c_15 <= c_15_5_1_False_shift;
        when "10" => c_15 <= c_15_3_0_False_shift;
        when others => c_15 <= c_15_11_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[4], [5], [89], [4]]
  c_18_17_2_False_resize <= resize(c_17, 23);
  c_18_17_2_False_shift <= shift_left(c_18_17_2_False_resize, 2);
  c_18_10_0_False_resize <= resize(c_10, 23);
  c_18_10_0_False_shift <= shift_left(c_18_10_0_False_resize, 0);
  c_18_14_0_False_resize <= c_14;
  c_18_14_0_False_shift <= shift_left(c_18_14_0_False_resize, 0);
  with config_select_5 select c_18_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_17_2_False_shift;
        when "01" => c_18 <= c_18_10_0_False_shift;
        when others => c_18 <= c_18_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[15], [64], [32], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[15], [64], [32], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 21 and associated fundamentals [[19], [59], [121], [22]]
  with config_select_6 select c_21_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_21_sub_sel,
      x_i => c_20,
      y_i => c_18,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[30], [12], [1], [8]]
  c_22_5_2_False_resize <= resize(c_5, 21);
  c_22_5_2_False_shift <= shift_left(c_22_5_2_False_resize, 2);
  c_22_11_0_False_resize <= resize(c_11, 21);
  c_22_11_0_False_shift <= shift_left(c_22_11_0_False_resize, 0);
  c_22_11_3_False_resize <= resize(c_11, 21);
  c_22_11_3_False_shift <= shift_left(c_22_11_3_False_resize, 3);
  c_22_3_1_False_resize <= c_3;
  c_22_3_1_False_shift <= shift_left(c_22_3_1_False_resize, 1);
  with config_select_3 select c_22_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_5_2_False_shift;
        when "01" => c_22 <= c_22_11_0_False_shift;
        when "10" => c_22 <= c_22_11_3_False_shift;
        when others => c_22 <= c_22_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[7], [7], [5], [9]]
  c_23_5_0_False_resize <= c_5;
  c_23_5_0_False_shift <= shift_left(c_23_5_0_False_resize, 0);
  c_23_3_0_False_resize <= c_3(19 downto 0);
  c_23_3_0_False_shift <= shift_left(c_23_3_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_5_0_False_shift;
        when others => c_23 <= c_23_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 24 and associated fundamentals [[233], [89], [3], [73]]
  with config_select_4 select c_24_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 25 and associated fundamentals [[15], [7], [9], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[15], [7], [9], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 27 and associated fundamentals [[7], [3], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 28 and associated fundamentals [[7], [3], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 29 and associated fundamentals [[55], [14], [20], [36]]
  c_29_28_2_False_resize <= resize(c_28, 22);
  c_29_28_2_False_shift <= shift_left(c_29_28_2_False_resize, 2);
  c_29_10_0_False_resize <= c_10;
  c_29_10_0_False_shift <= shift_left(c_29_10_0_False_resize, 0);
  c_29_26_1_False_resize <= resize(c_26, 22);
  c_29_26_1_False_shift <= shift_left(c_29_26_1_False_resize, 1);
  with config_select_5 select c_29_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_28_2_False_shift;
        when "01" => c_29 <= c_29_10_0_False_shift;
        when others => c_29 <= c_29_26_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[7], [3], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[7], [3], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[233], [89], [3], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[233], [89], [3], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 34 and associated fundamentals [[19], [59], [6], [18]]
  c_34_31_1_False_resize <= resize(c_31, 22);
  c_34_31_1_False_shift <= shift_left(c_34_31_1_False_resize, 1);
  c_34_33_1_False_resize <= c_33(21 downto 0);
  c_34_33_1_False_shift <= shift_left(c_34_33_1_False_resize, 1);
  c_34_21_0_False_resize <= c_21(21 downto 0);
  c_34_21_0_False_shift <= shift_left(c_34_21_0_False_resize, 0);
  with config_select_7 select c_34_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_31_1_False_shift;
        when "01" => c_34 <= c_34_33_1_False_shift;
        when others => c_34 <= c_34_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[55], [14], [20], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[55], [14], [20], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 37 and associated fundamentals [[201], [115], [74], [162]]
  with config_select_8 select c_37_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      sub_i => c_37_sub_sel,
      x_i => c_36,
      y_i => c_34,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 38 and associated fundamentals [[-45], [80], [656], [95]]
  c_38_14_0_False_resize <= resize(c_14, 26);
  c_38_14_0_False_shift <= shift_left(c_38_14_0_False_resize, 0);
  c_38_10_4_False_resize <= resize(c_10, 26);
  c_38_10_4_False_shift <= shift_left(c_38_10_4_False_resize, 4);
  with config_select_5 select c_38_sel <= 
    "0" when "11",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_14_0_False_shift;
        when others => c_38 <= c_38_10_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 39 and associated fundamentals [[304], [3], [1936], [9]]
  c_39_21_4_False_resize <= resize(c_21, 27);
  c_39_21_4_False_shift <= shift_left(c_39_21_4_False_resize, 4);
  c_39_31_0_False_resize <= resize(c_31, 27);
  c_39_31_0_False_shift <= shift_left(c_39_31_0_False_resize, 0);
  with config_select_7 select c_39_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_21_4_False_shift;
        when others => c_39 <= c_39_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[-45], [80], [656], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[-45], [80], [656], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 42 and associated fundamentals [[214], [157], [-624], [181]]
  with config_select_8 select c_42_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 27,
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
      sub_i => c_42_sub_sel,
      x_i => c_41,
      y_i => c_39,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[19], [59], [121], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[19], [59], [121], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 45 and associated fundamentals [[76], [115], [74], [162]]
  c_45_37_0_False_resize <= c_37;
  c_45_37_0_False_shift <= shift_left(c_45_37_0_False_resize, 0);
  c_45_44_2_False_resize <= resize(c_44, 24);
  c_45_44_2_False_shift <= shift_left(c_45_44_2_False_resize, 2);
  with config_select_9 select c_45_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_37_0_False_shift;
        when others => c_45 <= c_45_44_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 46 and associated fundamentals [[7], [12], [89], [78]]
  c_46_14_0_False_resize <= c_14;
  c_46_14_0_False_shift <= shift_left(c_46_14_0_False_resize, 0);
  c_46_28_2_False_resize <= resize(c_28, 23);
  c_46_28_2_False_shift <= shift_left(c_46_28_2_False_resize, 2);
  c_46_10_1_False_resize <= resize(c_10, 23);
  c_46_10_1_False_shift <= shift_left(c_46_10_1_False_resize, 1);
  c_46_28_0_False_resize <= resize(c_28, 23);
  c_46_28_0_False_shift <= shift_left(c_46_28_0_False_resize, 0);
  with config_select_5 select c_46_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_14_0_False_shift;
        when "01" => c_46 <= c_46_28_2_False_shift;
        when "10" => c_46 <= c_46_10_1_False_shift;
        when others => c_46 <= c_46_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 47 and associated fundamentals [[7], [12], [89], [78]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 48 and associated fundamentals [[7], [12], [89], [78]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[7], [12], [89], [78]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[7], [12], [89], [78]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 51 and associated fundamentals [[69], [127], [-15], [84]]
  with config_select_10 select c_51_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_51: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_51_sub_sel,
      x_i => c_45,
      y_i => c_50,
      z_o => c_51_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_51_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 52 and associated fundamentals [[7], [3], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 53 and associated fundamentals [[7], [3], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 54 and associated fundamentals [[448], [192], [148], [9]]
  c_54_53_6_False_resize <= resize(c_53, 25);
  c_54_53_6_False_shift <= shift_left(c_54_53_6_False_resize, 6);
  c_54_37_1_False_resize <= resize(c_37, 25);
  c_54_37_1_False_shift <= shift_left(c_54_37_1_False_resize, 1);
  c_54_53_0_False_resize <= resize(c_53, 25);
  c_54_53_0_False_shift <= shift_left(c_54_53_0_False_resize, 0);
  with config_select_9 select c_54_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_53_6_False_shift;
        when "01" => c_54 <= c_54_37_1_False_shift;
        when others => c_54 <= c_54_53_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 55 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 56 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 57 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 58 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 59 and associated fundamentals [[201], [1], [74], [162]]
  c_59_37_0_False_resize <= c_37;
  c_59_37_0_False_shift <= shift_left(c_59_37_0_False_resize, 0);
  c_59_58_0_False_resize <= resize(c_58, 24);
  c_59_58_0_False_shift <= shift_left(c_59_58_0_False_resize, 0);
  with config_select_9 select c_59_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "0" => c_59 <= c_59_37_0_False_shift;
        when others => c_59 <= c_59_58_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 60 and associated fundamentals [[247], [191], [222], [-153]]
  with config_select_10 select c_60_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_60: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_60_sub_sel,
      x_i => c_54,
      y_i => c_59,
      z_o => c_60_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_60_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 61 and associated fundamentals [[55], [5], [41], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 62 and associated fundamentals [[55], [5], [41], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 63 and associated fundamentals [[55], [5], [41], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 64 and associated fundamentals [[55], [5], [41], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 65 and associated fundamentals [[55], [5], [41], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 66 and associated fundamentals [[55], [5], [41], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 67 and associated fundamentals [[19], [59], [121], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 68 and associated fundamentals [[19], [59], [121], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 69 and associated fundamentals [[247], [191], [82], [22]]
  c_69_60_0_False_resize <= c_60;
  c_69_60_0_False_shift <= shift_left(c_69_60_0_False_resize, 0);
  c_69_66_1_False_resize <= resize(c_66, 24);
  c_69_66_1_False_shift <= shift_left(c_69_66_1_False_resize, 1);
  c_69_68_0_False_resize <= resize(c_68, 24);
  c_69_68_0_False_shift <= shift_left(c_69_68_0_False_resize, 0);
  with config_select_11 select c_69_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_69_sel is
        when "00" => c_69 <= c_69_60_0_False_shift;
        when "01" => c_69 <= c_69_66_1_False_shift;
        when others => c_69 <= c_69_68_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 71 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 72 and associated fundamentals [[69], [118], [8], [84]]
  c_72_71_3_False_resize <= resize(c_71, 23);
  c_72_71_3_False_shift <= shift_left(c_72_71_3_False_resize, 3);
  c_72_68_1_False_resize <= c_68;
  c_72_68_1_False_shift <= shift_left(c_72_68_1_False_resize, 1);
  c_72_51_0_False_resize <= c_51;
  c_72_51_0_False_shift <= shift_left(c_72_51_0_False_resize, 0);
  with config_select_11 select c_72_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "00" => c_72 <= c_72_71_3_False_shift;
        when "01" => c_72 <= c_72_68_1_False_shift;
        when others => c_72 <= c_72_51_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 73 and associated fundamentals [[15], [7], [9], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 74 and associated fundamentals [[15], [7], [9], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 75 and associated fundamentals [[15], [7], [9], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 76 and associated fundamentals [[15], [7], [9], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 77 and associated fundamentals [[15], [7], [9], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 78 and associated fundamentals [[15], [7], [9], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 79 and associated fundamentals [[55], [127], [41], [124]]
  c_79_78_2_False_resize <= resize(c_78, 23);
  c_79_78_2_False_shift <= shift_left(c_79_78_2_False_resize, 2);
  c_79_66_0_False_resize <= resize(c_66, 23);
  c_79_66_0_False_shift <= shift_left(c_79_66_0_False_resize, 0);
  c_79_51_0_False_resize <= c_51;
  c_79_51_0_False_shift <= shift_left(c_79_51_0_False_resize, 0);
  with config_select_11 select c_79_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_79_sel is
        when "00" => c_79 <= c_79_78_2_False_shift;
        when "01" => c_79 <= c_79_66_0_False_shift;
        when others => c_79 <= c_79_51_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 80 and associated fundamentals [[233], [64], [36], [73]]
  c_80_26_2_False_resize <= resize(c_26, 24);
  c_80_26_2_False_shift <= shift_left(c_80_26_2_False_resize, 2);
  c_80_17_6_False_resize <= resize(c_17, 24);
  c_80_17_6_False_shift <= shift_left(c_80_17_6_False_resize, 6);
  c_80_24_0_False_resize <= c_24;
  c_80_24_0_False_shift <= shift_left(c_80_24_0_False_resize, 0);
  with config_select_5 select c_80_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_80_sel is
        when "00" => c_80 <= c_80_26_2_False_shift;
        when "01" => c_80 <= c_80_17_6_False_shift;
        when others => c_80 <= c_80_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 81 and associated fundamentals [[7], [3], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 82 and associated fundamentals [[7], [3], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 83 and associated fundamentals [[152], [10], [222], [144]]
  c_83_66_1_False_resize <= resize(c_66, 24);
  c_83_66_1_False_shift <= shift_left(c_83_66_1_False_resize, 1);
  c_83_68_3_False_resize <= resize(c_68, 24);
  c_83_68_3_False_shift <= shift_left(c_83_68_3_False_resize, 3);
  c_83_60_0_False_resize <= c_60;
  c_83_60_0_False_shift <= shift_left(c_83_60_0_False_resize, 0);
  c_83_82_4_False_resize <= resize(c_82, 24);
  c_83_82_4_False_shift <= shift_left(c_83_82_4_False_resize, 4);
  with config_select_11 select c_83_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_83_sel is
        when "00" => c_83 <= c_83_66_1_False_shift;
        when "01" => c_83 <= c_83_68_3_False_shift;
        when "10" => c_83 <= c_83_60_0_False_shift;
        when others => c_83 <= c_83_82_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 84 and associated fundamentals [[-45], [-95], [89], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 85 and associated fundamentals [[-45], [-95], [89], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 86 and associated fundamentals [[-45], [-95], [89], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 87 and associated fundamentals [[-45], [-95], [89], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 88 and associated fundamentals [[-45], [-95], [89], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 89 and associated fundamentals [[-45], [-95], [89], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 90 and associated fundamentals [[-45], [-95], [-240], [-153]]
  c_90_89_0_False_resize <= resize(c_89, 24);
  c_90_89_0_False_shift <= shift_left(c_90_89_0_False_resize, 0);
  c_90_60_0_False_resize <= c_60;
  c_90_60_0_False_shift <= shift_left(c_90_60_0_False_resize, 0);
  c_90_51_4_False_resize <= resize(c_51, 24);
  c_90_51_4_False_shift <= shift_left(c_90_51_4_False_resize, 4);
  with config_select_11 select c_90_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_90_sel is
        when "00" => c_90 <= c_90_89_0_False_shift;
        when "01" => c_90 <= c_90_60_0_False_shift;
        when others => c_90 <= c_90_51_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 91 and associated fundamentals [[233], [89], [3], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 92 and associated fundamentals [[233], [89], [3], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 93 and associated fundamentals [[110], [89], [242], [181]]
  c_93_42_0_False_resize <= c_42;
  c_93_42_0_False_shift <= shift_left(c_93_42_0_False_resize, 0);
  c_93_44_1_False_resize <= resize(c_44, 24);
  c_93_44_1_False_shift <= shift_left(c_93_44_1_False_resize, 1);
  c_93_92_0_False_resize <= c_92;
  c_93_92_0_False_shift <= shift_left(c_93_92_0_False_resize, 0);
  c_93_64_1_False_resize <= resize(c_64, 24);
  c_93_64_1_False_shift <= shift_left(c_93_64_1_False_resize, 1);
  with config_select_9 select c_93_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_93_sel is
        when "00" => c_93 <= c_93_42_0_False_shift;
        when "01" => c_93 <= c_93_44_1_False_shift;
        when "10" => c_93 <= c_93_92_0_False_shift;
        when others => c_93 <= c_93_64_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 94 and associated fundamentals [[60], [7], [89], [95]]
  c_94_14_0_False_resize <= c_14;
  c_94_14_0_False_shift <= shift_left(c_94_14_0_False_resize, 0);
  c_94_26_0_False_resize <= resize(c_26, 23);
  c_94_26_0_False_shift <= shift_left(c_94_26_0_False_resize, 0);
  c_94_26_2_False_resize <= resize(c_26, 23);
  c_94_26_2_False_shift <= shift_left(c_94_26_2_False_resize, 2);
  with config_select_5 select c_94_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_94_sel is
        when "00" => c_94 <= c_94_14_0_False_shift;
        when "01" => c_94 <= c_94_26_0_False_shift;
        when others => c_94 <= c_94_26_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 95 and associated fundamentals [[214], [157], [12], [39]]
  c_95_42_0_False_resize <= c_42;
  c_95_42_0_False_shift <= shift_left(c_95_42_0_False_resize, 0);
  c_95_92_2_False_resize <= c_92;
  c_95_92_2_False_shift <= shift_left(c_95_92_2_False_resize, 2);
  c_95_64_0_False_resize <= resize(c_64, 24);
  c_95_64_0_False_shift <= shift_left(c_95_64_0_False_resize, 0);
  with config_select_9 select c_95_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_95_sel is
        when "00" => c_95 <= c_95_42_0_False_shift;
        when "01" => c_95 <= c_95_92_2_False_shift;
        when others => c_95 <= c_95_64_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 96 and associated fundamentals [[201], [115], [74], [162]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 97 and associated fundamentals [[201], [115], [74], [162]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 98 and associated fundamentals [[201], [115], [74], [162]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 99 and associated fundamentals [[201], [115], [74], [162]]
  c_99_resize <= c_98;
  c_99 <= shift_left(c_99_resize, 0);
  -- node of type 'output' in stage 11 with id 100 and associated fundamentals [[247], [191], [82], [22]]
  c_100_resize <= c_69;
  c_100 <= shift_left(c_100_resize, 0);
  -- node of type 'output' in stage 11 with id 101 and associated fundamentals [[138], [236], [16], [168]]
  c_101_resize <= resize(c_72, 24);
  c_101 <= shift_left(c_101_resize, 1);
  -- node of type 'output' in stage 11 with id 102 and associated fundamentals [[55], [127], [41], [124]]
  c_102_resize <= c_79;
  c_102 <= shift_left(c_102_resize, 0);
  -- node of type 'register' in stage 6 with id 103 and associated fundamentals [[233], [64], [36], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 104 and associated fundamentals [[233], [64], [36], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 105 and associated fundamentals [[233], [64], [36], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 106 and associated fundamentals [[233], [64], [36], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 107 and associated fundamentals [[233], [64], [36], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 108 and associated fundamentals [[233], [64], [36], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 109 and associated fundamentals [[233], [64], [36], [73]]
  c_109_resize <= c_108;
  c_109 <= shift_left(c_109_resize, 0);
  -- node of type 'output' in stage 11 with id 110 and associated fundamentals [[152], [10], [222], [144]]
  c_110_resize <= c_83;
  c_110 <= shift_left(c_110_resize, 0);
  -- node of type 'output' in stage 11 with id 111 and associated fundamentals [[45], [95], [240], [153]]
  c_111_resize <= c_90;
  c_111 <= -shift_left(c_111_resize, 0);
  -- node of type 'register' in stage 10 with id 112 and associated fundamentals [[110], [89], [242], [181]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 113 and associated fundamentals [[110], [89], [242], [181]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 114 and associated fundamentals [[110], [89], [242], [181]]
  c_114_resize <= c_113;
  c_114 <= shift_left(c_114_resize, 0);
  -- node of type 'register' in stage 6 with id 115 and associated fundamentals [[60], [7], [89], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 116 and associated fundamentals [[60], [7], [89], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 117 and associated fundamentals [[60], [7], [89], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 118 and associated fundamentals [[60], [7], [89], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 119 and associated fundamentals [[60], [7], [89], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 120 and associated fundamentals [[60], [7], [89], [95]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 121 and associated fundamentals [[120], [14], [178], [190]]
  c_121_resize <= resize(c_120, 24);
  c_121 <= shift_left(c_121_resize, 1);
  -- node of type 'register' in stage 10 with id 122 and associated fundamentals [[214], [157], [12], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 123 and associated fundamentals [[214], [157], [12], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 124 and associated fundamentals [[214], [157], [12], [39]]
  c_124_resize <= c_123;
  c_124 <= shift_left(c_124_resize, 0);
end architecture;

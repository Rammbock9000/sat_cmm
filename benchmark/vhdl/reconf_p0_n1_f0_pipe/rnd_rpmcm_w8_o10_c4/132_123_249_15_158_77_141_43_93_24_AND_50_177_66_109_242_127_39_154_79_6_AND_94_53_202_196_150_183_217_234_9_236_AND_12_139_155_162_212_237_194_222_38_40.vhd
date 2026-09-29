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
  signal c_5: signed(15 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_3_0_False_resize: signed(20 downto 0);
  signal c_7_3_0_False_shift: signed(20 downto 0);
  signal c_7_6_1_False_resize: signed(20 downto 0);
  signal c_7_6_1_False_shift: signed(20 downto 0);
  signal c_7_3_1_False_resize: signed(20 downto 0);
  signal c_7_3_1_False_shift: signed(20 downto 0);
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
  signal c_11: signed(19 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_12_3_False_resize: signed(21 downto 0);
  signal c_13_12_3_False_shift: signed(21 downto 0);
  signal c_13_8_0_False_resize: signed(21 downto 0);
  signal c_13_8_0_False_shift: signed(21 downto 0);
  signal c_13_10_5_False_resize: signed(21 downto 0);
  signal c_13_10_5_False_shift: signed(21 downto 0);
  signal c_13_10_4_False_resize: signed(21 downto 0);
  signal c_13_10_4_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_14_3_0_False_resize: signed(19 downto 0);
  signal c_14_3_0_False_shift: signed(19 downto 0);
  signal c_14_6_0_False_resize: signed(19 downto 0);
  signal c_14_6_0_False_shift: signed(19 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(15 downto 0);
  signal c_20: signed(19 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_19_6_False_resize: signed(23 downto 0);
  signal c_22_19_6_False_shift: signed(23 downto 0);
  signal c_22_21_5_False_resize: signed(23 downto 0);
  signal c_22_21_5_False_shift: signed(23 downto 0);
  signal c_22_17_0_False_resize: signed(23 downto 0);
  signal c_22_17_0_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_23_10_1_False_resize: signed(21 downto 0);
  signal c_23_10_1_False_shift: signed(21 downto 0);
  signal c_23_8_0_False_resize: signed(21 downto 0);
  signal c_23_8_0_False_shift: signed(21 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(21 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_28_0_False_resize: signed(23 downto 0);
  signal c_29_28_0_False_shift: signed(23 downto 0);
  signal c_29_17_0_False_resize: signed(23 downto 0);
  signal c_29_17_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_30_21_0_False_resize: signed(21 downto 0);
  signal c_30_21_0_False_shift: signed(21 downto 0);
  signal c_30_19_4_False_resize: signed(21 downto 0);
  signal c_30_19_4_False_shift: signed(21 downto 0);
  signal c_30_17_0_False_resize: signed(21 downto 0);
  signal c_30_17_0_False_shift: signed(21 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_i0_resize: signed(22 downto 0);
  signal c_31_i1_resize: signed(22 downto 0);
  signal c_31_i0_shift: signed(22 downto 0);
  signal c_31_i1_shift: signed(22 downto 0);
  signal c_31_arith: signed(22 downto 0);
  signal c_31_oshift: signed(22 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_32_10_2_False_resize: signed(21 downto 0);
  signal c_32_10_2_False_shift: signed(21 downto 0);
  signal c_32_8_0_False_resize: signed(21 downto 0);
  signal c_32_8_0_False_shift: signed(21 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_37_31_0_False_resize: signed(22 downto 0);
  signal c_37_31_0_False_shift: signed(22 downto 0);
  signal c_37_34_1_False_resize: signed(22 downto 0);
  signal c_37_34_1_False_shift: signed(22 downto 0);
  signal c_37_36_0_False_resize: signed(22 downto 0);
  signal c_37_36_0_False_shift: signed(22 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_39: signed(21 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_41: signed(21 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_i0_resize: signed(23 downto 0);
  signal c_42_i1_resize: signed(23 downto 0);
  signal c_42_i0_shift: signed(23 downto 0);
  signal c_42_i1_shift: signed(23 downto 0);
  signal c_42_arith: signed(23 downto 0);
  signal c_42_oshift: signed(23 downto 0);
  signal c_43: signed(15 downto 0);
  signal c_44: signed(15 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_42_5_False_resize: signed(23 downto 0);
  signal c_45_42_5_False_shift: signed(23 downto 0);
  signal c_45_44_0_False_resize: signed(23 downto 0);
  signal c_45_44_0_False_shift: signed(23 downto 0);
  signal c_45_44_3_False_resize: signed(23 downto 0);
  signal c_45_44_3_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_31_0_False_resize: signed(23 downto 0);
  signal c_46_31_0_False_shift: signed(23 downto 0);
  signal c_46_26_0_False_resize: signed(23 downto 0);
  signal c_46_26_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_i0_resize: signed(23 downto 0);
  signal c_49_i1_resize: signed(23 downto 0);
  signal c_49_i0_shift: signed(23 downto 0);
  signal c_49_i1_shift: signed(23 downto 0);
  signal c_49_arith: signed(23 downto 0);
  signal c_49_oshift: signed(23 downto 0);
  signal c_49_sub_sel: std_logic;
  signal c_50: signed(23 downto 0);
  signal c_50_8_0_False_resize: signed(23 downto 0);
  signal c_50_8_0_False_shift: signed(23 downto 0);
  signal c_50_10_8_False_resize: signed(23 downto 0);
  signal c_50_10_8_False_shift: signed(23 downto 0);
  signal c_50_sel: std_logic_vector(0 downto 0);
  signal c_51: signed(19 downto 0);
  signal c_52: signed(19 downto 0);
  signal c_53: signed(20 downto 0);
  signal c_53_52_0_False_resize: signed(20 downto 0);
  signal c_53_52_0_False_shift: signed(20 downto 0);
  signal c_53_31_0_False_resize: signed(20 downto 0);
  signal c_53_31_0_False_shift: signed(20 downto 0);
  signal c_53_34_5_False_resize: signed(20 downto 0);
  signal c_53_34_5_False_shift: signed(20 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_i0_resize: signed(23 downto 0);
  signal c_58_i1_resize: signed(23 downto 0);
  signal c_58_i0_shift: signed(23 downto 0);
  signal c_58_i1_shift: signed(23 downto 0);
  signal c_58_arith: signed(23 downto 0);
  signal c_58_oshift: signed(23 downto 0);
  signal c_58_sub_sel: std_logic;
  signal c_59: signed(23 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_61: signed(23 downto 0);
  signal c_61_44_3_False_resize: signed(23 downto 0);
  signal c_61_44_3_False_shift: signed(23 downto 0);
  signal c_61_58_0_False_resize: signed(23 downto 0);
  signal c_61_58_0_False_shift: signed(23 downto 0);
  signal c_61_60_1_False_resize: signed(23 downto 0);
  signal c_61_60_1_False_shift: signed(23 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(23 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_66_42_0_False_resize: signed(23 downto 0);
  signal c_66_42_0_False_shift: signed(23 downto 0);
  signal c_66_65_0_False_resize: signed(23 downto 0);
  signal c_66_65_0_False_shift: signed(23 downto 0);
  signal c_66_60_0_False_resize: signed(23 downto 0);
  signal c_66_60_0_False_shift: signed(23 downto 0);
  signal c_66_sel: std_logic_vector(1 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_67_i0_resize: signed(23 downto 0);
  signal c_67_i1_resize: signed(23 downto 0);
  signal c_67_i0_shift: signed(23 downto 0);
  signal c_67_i1_shift: signed(23 downto 0);
  signal c_67_arith: signed(23 downto 0);
  signal c_67_oshift: signed(23 downto 0);
  signal c_67_sub_sel: std_logic;
  signal c_68: signed(19 downto 0);
  signal c_69: signed(19 downto 0);
  signal c_70: signed(23 downto 0);
  signal c_70_44_0_False_resize: signed(23 downto 0);
  signal c_70_44_0_False_shift: signed(23 downto 0);
  signal c_70_69_0_False_resize: signed(23 downto 0);
  signal c_70_69_0_False_shift: signed(23 downto 0);
  signal c_70_42_5_False_resize: signed(23 downto 0);
  signal c_70_42_5_False_shift: signed(23 downto 0);
  signal c_70_44_5_False_resize: signed(23 downto 0);
  signal c_70_44_5_False_shift: signed(23 downto 0);
  signal c_70_sel: std_logic_vector(1 downto 0);
  signal c_71: signed(22 downto 0);
  signal c_71_52_2_False_resize: signed(22 downto 0);
  signal c_71_52_2_False_shift: signed(22 downto 0);
  signal c_71_34_3_False_resize: signed(22 downto 0);
  signal c_71_34_3_False_shift: signed(22 downto 0);
  signal c_71_26_0_False_resize: signed(22 downto 0);
  signal c_71_26_0_False_shift: signed(22 downto 0);
  signal c_71_sel: std_logic_vector(1 downto 0);
  signal c_72: signed(22 downto 0);
  signal c_73: signed(22 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_74_i0_resize: signed(23 downto 0);
  signal c_74_i1_resize: signed(23 downto 0);
  signal c_74_i0_shift: signed(23 downto 0);
  signal c_74_i1_shift: signed(23 downto 0);
  signal c_74_arith: signed(23 downto 0);
  signal c_74_oshift: signed(23 downto 0);
  signal c_75: signed(22 downto 0);
  signal c_76: signed(22 downto 0);
  signal c_77: signed(23 downto 0);
  signal c_77_76_1_False_resize: signed(23 downto 0);
  signal c_77_76_1_False_shift: signed(23 downto 0);
  signal c_77_76_0_False_resize: signed(23 downto 0);
  signal c_77_76_0_False_shift: signed(23 downto 0);
  signal c_77_42_5_False_resize: signed(23 downto 0);
  signal c_77_42_5_False_shift: signed(23 downto 0);
  signal c_77_sel: std_logic_vector(1 downto 0);
  signal c_78: signed(22 downto 0);
  signal c_78_44_6_False_resize: signed(22 downto 0);
  signal c_78_44_6_False_shift: signed(22 downto 0);
  signal c_78_58_0_False_resize: signed(22 downto 0);
  signal c_78_58_0_False_shift: signed(22 downto 0);
  signal c_78_44_1_False_resize: signed(22 downto 0);
  signal c_78_44_1_False_shift: signed(22 downto 0);
  signal c_78_69_0_False_resize: signed(22 downto 0);
  signal c_78_69_0_False_shift: signed(22 downto 0);
  signal c_78_sel: std_logic_vector(1 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_79_i0_resize: signed(23 downto 0);
  signal c_79_i1_resize: signed(23 downto 0);
  signal c_79_i0_shift: signed(23 downto 0);
  signal c_79_i1_shift: signed(23 downto 0);
  signal c_79_arith: signed(23 downto 0);
  signal c_79_oshift: signed(23 downto 0);
  signal c_79_sub_sel: std_logic;
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_82_65_0_False_resize: signed(23 downto 0);
  signal c_82_65_0_False_shift: signed(23 downto 0);
  signal c_82_42_1_False_resize: signed(23 downto 0);
  signal c_82_42_1_False_shift: signed(23 downto 0);
  signal c_82_81_1_False_resize: signed(23 downto 0);
  signal c_82_81_1_False_shift: signed(23 downto 0);
  signal c_82_sel: std_logic_vector(1 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_83_42_0_False_resize: signed(23 downto 0);
  signal c_83_42_0_False_shift: signed(23 downto 0);
  signal c_83_60_0_False_resize: signed(23 downto 0);
  signal c_83_60_0_False_shift: signed(23 downto 0);
  signal c_83_sel: std_logic_vector(0 downto 0);
  signal c_84: signed(22 downto 0);
  signal c_85: signed(22 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_86_67_0_False_resize: signed(23 downto 0);
  signal c_86_67_0_False_shift: signed(23 downto 0);
  signal c_86_85_1_False_resize: signed(23 downto 0);
  signal c_86_85_1_False_shift: signed(23 downto 0);
  signal c_86_sel: std_logic_vector(0 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_89: signed(23 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_91_90_0_False_resize: signed(23 downto 0);
  signal c_91_90_0_False_shift: signed(23 downto 0);
  signal c_91_88_2_False_resize: signed(23 downto 0);
  signal c_91_88_2_False_shift: signed(23 downto 0);
  signal c_91_74_0_False_resize: signed(23 downto 0);
  signal c_91_74_0_False_shift: signed(23 downto 0);
  signal c_91_sel: std_logic_vector(1 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_94: signed(23 downto 0);
  signal c_94_93_0_False_resize: signed(23 downto 0);
  signal c_94_93_0_False_shift: signed(23 downto 0);
  signal c_94_85_1_False_resize: signed(23 downto 0);
  signal c_94_85_1_False_shift: signed(23 downto 0);
  signal c_94_74_0_False_resize: signed(23 downto 0);
  signal c_94_74_0_False_shift: signed(23 downto 0);
  signal c_94_49_1_False_resize: signed(23 downto 0);
  signal c_94_49_1_False_shift: signed(23 downto 0);
  signal c_94_sel: std_logic_vector(1 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_97_96_0_False_resize: signed(23 downto 0);
  signal c_97_96_0_False_shift: signed(23 downto 0);
  signal c_97_88_0_False_resize: signed(23 downto 0);
  signal c_97_88_0_False_shift: signed(23 downto 0);
  signal c_97_67_0_False_resize: signed(23 downto 0);
  signal c_97_67_0_False_shift: signed(23 downto 0);
  signal c_97_85_0_False_resize: signed(23 downto 0);
  signal c_97_85_0_False_shift: signed(23 downto 0);
  signal c_97_sel: std_logic_vector(1 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_98_90_1_False_resize: signed(23 downto 0);
  signal c_98_90_1_False_shift: signed(23 downto 0);
  signal c_98_49_0_False_resize: signed(23 downto 0);
  signal c_98_49_0_False_shift: signed(23 downto 0);
  signal c_98_96_0_False_resize: signed(23 downto 0);
  signal c_98_96_0_False_shift: signed(23 downto 0);
  signal c_98_49_1_False_resize: signed(23 downto 0);
  signal c_98_49_1_False_shift: signed(23 downto 0);
  signal c_98_sel: std_logic_vector(1 downto 0);
  signal c_99: signed(22 downto 0);
  signal c_99_88_0_False_resize: signed(22 downto 0);
  signal c_99_88_0_False_shift: signed(22 downto 0);
  signal c_99_85_1_False_resize: signed(22 downto 0);
  signal c_99_85_1_False_shift: signed(22 downto 0);
  signal c_99_74_0_False_resize: signed(22 downto 0);
  signal c_99_74_0_False_shift: signed(22 downto 0);
  signal c_99_49_0_False_resize: signed(22 downto 0);
  signal c_99_49_0_False_shift: signed(22 downto 0);
  signal c_99_sel: std_logic_vector(1 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_100_69_3_False_resize: signed(23 downto 0);
  signal c_100_69_3_False_shift: signed(23 downto 0);
  signal c_100_58_1_False_resize: signed(23 downto 0);
  signal c_100_58_1_False_shift: signed(23 downto 0);
  signal c_100_69_0_False_resize: signed(23 downto 0);
  signal c_100_69_0_False_shift: signed(23 downto 0);
  signal c_100_sel: std_logic_vector(1 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_103_resize: signed(23 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_106: signed(23 downto 0);
  signal c_106_resize: signed(23 downto 0);
  signal c_107: signed(23 downto 0);
  signal c_107_resize: signed(23 downto 0);
  signal c_108: signed(23 downto 0);
  signal c_108_resize: signed(23 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_109_resize: signed(23 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_110_resize: signed(23 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_112_resize: signed(23 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_113_resize: signed(23 downto 0);
  signal c_114: signed(22 downto 0);
  signal c_114_resize: signed(22 downto 0);
  signal c_115: signed(23 downto 0);
  signal c_116: signed(23 downto 0);
  signal c_117: signed(23 downto 0);
  signal c_117_resize: signed(23 downto 0);
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
  -- output node 0 with id 103
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_103);
    end if;
  end process;
  -- output node 1 with id 106
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_106);
    end if;
  end process;
  -- output node 2 with id 107
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_107);
    end if;
  end process;
  -- output node 3 with id 108
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_108);
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
  -- output node 6 with id 112
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_112);
    end if;
  end process;
  -- output node 7 with id 113
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_113);
    end if;
  end process;
  -- output node 8 with id 114
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_114);
    end if;
  end process;
  -- output node 9 with id 117
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_117);
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
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_1_False_shift;
      end case;
    end if;
  end process;
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
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
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_3_0_False_shift;
        when others => c_4 <= c_4_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 5 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[2], [2], [30], [5]]
  c_7_3_0_False_resize <= resize(c_3, 21);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_6_1_False_resize <= resize(c_6, 21);
  c_7_6_1_False_shift <= shift_left(c_7_6_1_False_resize, 1);
  c_7_3_1_False_resize <= resize(c_3, 21);
  c_7_3_1_False_shift <= shift_left(c_7_3_1_False_resize, 1);
  with config_select_3 select c_7_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_3_0_False_shift;
        when "01" => c_7 <= c_7_6_1_False_shift;
        when others => c_7 <= c_7_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[46], [50], [150], [35]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
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
      sub_i => c_8_sub_sel,
      x_i => c_4,
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
      c_9 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[3], [6], [15], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[3], [6], [15], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[24], [32], [16], [35]]
  c_13_12_3_False_resize <= resize(c_12, 22);
  c_13_12_3_False_shift <= shift_left(c_13_12_3_False_resize, 3);
  c_13_8_0_False_resize <= c_8(21 downto 0);
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  c_13_10_5_False_resize <= resize(c_10, 22);
  c_13_10_5_False_shift <= shift_left(c_13_10_5_False_resize, 5);
  c_13_10_4_False_resize <= resize(c_10, 22);
  c_13_10_4_False_shift <= shift_left(c_13_10_4_False_resize, 4);
  with config_select_5 select c_13_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_12_3_False_shift;
        when "01" => c_13 <= c_13_8_0_False_shift;
        when "10" => c_13 <= c_13_10_5_False_shift;
        when others => c_13 <= c_13_10_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[3], [1], [15], [1]]
  c_14_3_0_False_resize <= c_3;
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  c_14_6_0_False_resize <= resize(c_6, 20);
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_3_0_False_shift;
        when others => c_14 <= c_14_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[3], [1], [15], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[3], [1], [15], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 17 and associated fundamentals [[93], [127], [49], [139]]
  inst_adder_node_17: entity work.adder_node
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
      x_i => c_13,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[3], [6], [15], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[3], [6], [15], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 22 and associated fundamentals [[64], [127], [49], [160]]
  c_22_19_6_False_resize <= resize(c_19, 24);
  c_22_19_6_False_shift <= shift_left(c_22_19_6_False_resize, 6);
  c_22_21_5_False_resize <= resize(c_21, 24);
  c_22_21_5_False_shift <= shift_left(c_22_21_5_False_resize, 5);
  c_22_17_0_False_resize <= c_17;
  c_22_17_0_False_shift <= shift_left(c_22_17_0_False_resize, 0);
  with config_select_7 select c_22_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_19_6_False_shift;
        when "01" => c_22 <= c_22_21_5_False_shift;
        when others => c_22 <= c_22_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 23 and associated fundamentals [[2], [50], [2], [2]]
  c_23_10_1_False_resize <= resize(c_10, 22);
  c_23_10_1_False_shift <= shift_left(c_23_10_1_False_resize, 1);
  c_23_8_0_False_resize <= c_8(21 downto 0);
  c_23_8_0_False_shift <= shift_left(c_23_8_0_False_resize, 0);
  with config_select_5 select c_23_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_10_1_False_shift;
        when others => c_23 <= c_23_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[2], [50], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 25 and associated fundamentals [[2], [50], [2], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 26 and associated fundamentals [[66], [77], [47], [162]]
  with config_select_8 select c_26_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
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
      sub_i => c_26_sub_sel,
      x_i => c_22,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[46], [50], [150], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[46], [50], [150], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[93], [127], [150], [35]]
  c_29_28_0_False_resize <= c_28;
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  c_29_17_0_False_resize <= c_17;
  c_29_17_0_False_shift <= shift_left(c_29_17_0_False_resize, 0);
  with config_select_7 select c_29_sel <= 
    "0" when "11",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_28_0_False_shift;
        when others => c_29 <= c_29_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 30 and associated fundamentals [[16], [6], [49], [16]]
  c_30_21_0_False_resize <= resize(c_21, 22);
  c_30_21_0_False_shift <= shift_left(c_30_21_0_False_resize, 0);
  c_30_19_4_False_resize <= resize(c_19, 22);
  c_30_19_4_False_shift <= shift_left(c_30_19_4_False_resize, 4);
  c_30_17_0_False_resize <= c_17(21 downto 0);
  c_30_17_0_False_shift <= shift_left(c_30_17_0_False_resize, 0);
  with config_select_7 select c_30_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_21_0_False_shift;
        when "01" => c_30 <= c_30_19_4_False_shift;
        when others => c_30 <= c_30_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 31 and associated fundamentals [[77], [121], [101], [19]]
  inst_adder_node_31: entity work.adder_node
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
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 32 and associated fundamentals [[46], [50], [4], [4]]
  c_32_10_2_False_resize <= resize(c_10, 22);
  c_32_10_2_False_shift <= shift_left(c_32_10_2_False_resize, 2);
  c_32_8_0_False_resize <= c_8(21 downto 0);
  c_32_8_0_False_shift <= shift_left(c_32_8_0_False_resize, 0);
  with config_select_5 select c_32_sel <= 
    "0" when "11",
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_10_2_False_shift;
        when others => c_32 <= c_32_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[93], [127], [49], [139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[93], [127], [49], [139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 37 and associated fundamentals [[77], [127], [49], [2]]
  c_37_31_0_False_resize <= c_31;
  c_37_31_0_False_shift <= shift_left(c_37_31_0_False_resize, 0);
  c_37_34_1_False_resize <= resize(c_34, 23);
  c_37_34_1_False_shift <= shift_left(c_37_34_1_False_resize, 1);
  c_37_36_0_False_resize <= c_36(22 downto 0);
  c_37_36_0_False_shift <= shift_left(c_37_36_0_False_resize, 0);
  with config_select_9 select c_37_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_31_0_False_shift;
        when "01" => c_37 <= c_37_34_1_False_shift;
        when others => c_37 <= c_37_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[46], [50], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[46], [50], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[46], [50], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[46], [50], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'add' in stage 10 with id 42 and associated fundamentals [[123], [177], [53], [6]]
  inst_adder_node_42: entity work.adder_node
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
      x_i => c_41,
      y_i => c_37,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 44 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 45 and associated fundamentals [[1], [1], [8], [192]]
  c_45_42_5_False_resize <= c_42;
  c_45_42_5_False_shift <= shift_left(c_45_42_5_False_resize, 5);
  c_45_44_0_False_resize <= resize(c_44, 24);
  c_45_44_0_False_shift <= shift_left(c_45_44_0_False_resize, 0);
  c_45_44_3_False_resize <= resize(c_44, 24);
  c_45_44_3_False_shift <= shift_left(c_45_44_3_False_resize, 3);
  with config_select_11 select c_45_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_42_5_False_shift;
        when "01" => c_45 <= c_45_44_0_False_shift;
        when others => c_45 <= c_45_44_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 46 and associated fundamentals [[77], [77], [101], [162]]
  c_46_31_0_False_resize <= resize(c_31, 24);
  c_46_31_0_False_shift <= shift_left(c_46_31_0_False_resize, 0);
  c_46_26_0_False_resize <= c_26;
  c_46_26_0_False_shift <= shift_left(c_46_26_0_False_resize, 0);
  with config_select_9 select c_46_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_31_0_False_shift;
        when others => c_46 <= c_46_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[77], [77], [101], [162]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 48 and associated fundamentals [[77], [77], [101], [162]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 49 and associated fundamentals [[79], [79], [117], [222]]
  with config_select_12 select c_49_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_49: entity work.adder_node
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
      sub_i => c_49_sub_sel,
      x_i => c_45,
      y_i => c_48,
      z_o => c_49_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_49_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 50 and associated fundamentals [[46], [50], [150], [256]]
  c_50_8_0_False_resize <= c_8;
  c_50_8_0_False_shift <= shift_left(c_50_8_0_False_resize, 0);
  c_50_10_8_False_resize <= resize(c_10, 24);
  c_50_10_8_False_shift <= shift_left(c_50_10_8_False_resize, 8);
  with config_select_5 select c_50_sel <= 
    "0" when "01",
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "0" => c_50 <= c_50_8_0_False_shift;
        when others => c_50 <= c_50_10_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 51 and associated fundamentals [[3], [6], [15], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 52 and associated fundamentals [[3], [6], [15], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 53 and associated fundamentals [[3], [32], [32], [19]]
  c_53_52_0_False_resize <= resize(c_52, 21);
  c_53_52_0_False_shift <= shift_left(c_53_52_0_False_resize, 0);
  c_53_31_0_False_resize <= c_31(20 downto 0);
  c_53_31_0_False_shift <= shift_left(c_53_31_0_False_resize, 0);
  c_53_34_5_False_resize <= resize(c_34, 21);
  c_53_34_5_False_shift <= shift_left(c_53_34_5_False_resize, 5);
  with config_select_9 select c_53_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "00" => c_53 <= c_53_52_0_False_shift;
        when "01" => c_53 <= c_53_31_0_False_shift;
        when others => c_53 <= c_53_34_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 54 and associated fundamentals [[46], [50], [150], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 55 and associated fundamentals [[46], [50], [150], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[46], [50], [150], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[46], [50], [150], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 58 and associated fundamentals [[43], [82], [118], [237]]
  with config_select_10 select c_58_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_58: entity work.adder_node
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
      sub_i => c_58_sub_sel,
      x_i => c_57,
      y_i => c_53,
      z_o => c_58_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_58_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[93], [127], [49], [139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 60 and associated fundamentals [[93], [127], [49], [139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 61 and associated fundamentals [[186], [8], [118], [8]]
  c_61_44_3_False_resize <= resize(c_44, 24);
  c_61_44_3_False_shift <= shift_left(c_61_44_3_False_resize, 3);
  c_61_58_0_False_resize <= c_58;
  c_61_58_0_False_shift <= shift_left(c_61_58_0_False_resize, 0);
  c_61_60_1_False_resize <= c_60;
  c_61_60_1_False_shift <= shift_left(c_61_60_1_False_resize, 1);
  with config_select_11 select c_61_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "00" => c_61 <= c_61_44_3_False_shift;
        when "01" => c_61 <= c_61_58_0_False_shift;
        when others => c_61 <= c_61_60_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 62 and associated fundamentals [[46], [50], [150], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 63 and associated fundamentals [[46], [50], [150], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 64 and associated fundamentals [[46], [50], [150], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 65 and associated fundamentals [[46], [50], [150], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 66 and associated fundamentals [[123], [50], [53], [139]]
  c_66_42_0_False_resize <= c_42;
  c_66_42_0_False_shift <= shift_left(c_66_42_0_False_resize, 0);
  c_66_65_0_False_resize <= c_65;
  c_66_65_0_False_shift <= shift_left(c_66_65_0_False_resize, 0);
  c_66_60_0_False_resize <= c_60;
  c_66_60_0_False_shift <= shift_left(c_66_60_0_False_resize, 0);
  with config_select_11 select c_66_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_66_sel is
        when "00" => c_66 <= c_66_42_0_False_shift;
        when "01" => c_66 <= c_66_65_0_False_shift;
        when others => c_66 <= c_66_60_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 67 and associated fundamentals [[249], [66], [183], [155]]
  with config_select_12 select c_67_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_67: entity work.adder_node
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
      sub_i => c_67_sub_sel,
      x_i => c_61,
      y_i => c_66,
      z_o => c_67_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_67_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 68 and associated fundamentals [[3], [6], [15], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 69 and associated fundamentals [[3], [6], [15], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 70 and associated fundamentals [[3], [32], [1], [192]]
  c_70_44_0_False_resize <= resize(c_44, 24);
  c_70_44_0_False_shift <= shift_left(c_70_44_0_False_resize, 0);
  c_70_69_0_False_resize <= resize(c_69, 24);
  c_70_69_0_False_shift <= shift_left(c_70_69_0_False_resize, 0);
  c_70_42_5_False_resize <= c_42;
  c_70_42_5_False_shift <= shift_left(c_70_42_5_False_resize, 5);
  c_70_44_5_False_resize <= resize(c_44, 24);
  c_70_44_5_False_shift <= shift_left(c_70_44_5_False_resize, 5);
  with config_select_11 select c_70_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "00" => c_70 <= c_70_44_0_False_shift;
        when "01" => c_70 <= c_70_69_0_False_shift;
        when "10" => c_70 <= c_70_42_5_False_shift;
        when others => c_70 <= c_70_44_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 71 and associated fundamentals [[12], [77], [8], [20]]
  c_71_52_2_False_resize <= resize(c_52, 23);
  c_71_52_2_False_shift <= shift_left(c_71_52_2_False_resize, 2);
  c_71_34_3_False_resize <= resize(c_34, 23);
  c_71_34_3_False_shift <= shift_left(c_71_34_3_False_resize, 3);
  c_71_26_0_False_resize <= c_26(22 downto 0);
  c_71_26_0_False_shift <= shift_left(c_71_26_0_False_resize, 0);
  with config_select_9 select c_71_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_71_sel is
        when "00" => c_71 <= c_71_52_2_False_shift;
        when "01" => c_71 <= c_71_34_3_False_shift;
        when others => c_71 <= c_71_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 72 and associated fundamentals [[12], [77], [8], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 73 and associated fundamentals [[12], [77], [8], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'add' in stage 12 with id 74 and associated fundamentals [[15], [109], [9], [212]]
  inst_adder_node_74: entity work.adder_node
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
      x_i => c_70,
      y_i => c_73,
      z_o => c_74_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_74_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 75 and associated fundamentals [[77], [121], [101], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 76 and associated fundamentals [[77], [121], [101], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 77 and associated fundamentals [[77], [121], [202], [192]]
  c_77_76_1_False_resize <= resize(c_76, 24);
  c_77_76_1_False_shift <= shift_left(c_77_76_1_False_resize, 1);
  c_77_76_0_False_resize <= resize(c_76, 24);
  c_77_76_0_False_shift <= shift_left(c_77_76_0_False_resize, 0);
  c_77_42_5_False_resize <= c_42;
  c_77_42_5_False_shift <= shift_left(c_77_42_5_False_resize, 5);
  with config_select_11 select c_77_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "00" => c_77 <= c_77_76_1_False_shift;
        when "01" => c_77 <= c_77_76_0_False_shift;
        when others => c_77 <= c_77_42_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 78 and associated fundamentals [[64], [82], [15], [2]]
  c_78_44_6_False_resize <= resize(c_44, 23);
  c_78_44_6_False_shift <= shift_left(c_78_44_6_False_resize, 6);
  c_78_58_0_False_resize <= c_58(22 downto 0);
  c_78_58_0_False_shift <= shift_left(c_78_58_0_False_resize, 0);
  c_78_44_1_False_resize <= resize(c_44, 23);
  c_78_44_1_False_shift <= shift_left(c_78_44_1_False_resize, 1);
  c_78_69_0_False_resize <= resize(c_69, 23);
  c_78_69_0_False_shift <= shift_left(c_78_69_0_False_resize, 0);
  with config_select_11 select c_78_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "00" => c_78 <= c_78_44_6_False_shift;
        when "01" => c_78 <= c_78_58_0_False_shift;
        when "10" => c_78 <= c_78_44_1_False_shift;
        when others => c_78 <= c_78_69_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 79 and associated fundamentals [[141], [39], [217], [194]]
  with config_select_12 select c_79_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_79: entity work.adder_node
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
      sub_i => c_79_sub_sel,
      x_i => c_77,
      y_i => c_78,
      z_o => c_79_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_79_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 80 and associated fundamentals [[66], [77], [47], [162]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 81 and associated fundamentals [[66], [77], [47], [162]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 82 and associated fundamentals [[132], [50], [94], [12]]
  c_82_65_0_False_resize <= c_65;
  c_82_65_0_False_shift <= shift_left(c_82_65_0_False_resize, 0);
  c_82_42_1_False_resize <= c_42;
  c_82_42_1_False_shift <= shift_left(c_82_42_1_False_resize, 1);
  c_82_81_1_False_resize <= c_81;
  c_82_81_1_False_shift <= shift_left(c_82_81_1_False_resize, 1);
  with config_select_11 select c_82_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_82_sel is
        when "00" => c_82 <= c_82_65_0_False_shift;
        when "01" => c_82 <= c_82_42_1_False_shift;
        when others => c_82 <= c_82_81_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 83 and associated fundamentals [[123], [177], [53], [139]]
  c_83_42_0_False_resize <= c_42;
  c_83_42_0_False_shift <= shift_left(c_83_42_0_False_resize, 0);
  c_83_60_0_False_resize <= c_60;
  c_83_60_0_False_shift <= shift_left(c_83_60_0_False_resize, 0);
  with config_select_11 select c_83_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_83_sel is
        when "0" => c_83 <= c_83_42_0_False_shift;
        when others => c_83 <= c_83_60_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 84 and associated fundamentals [[77], [121], [101], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 85 and associated fundamentals [[77], [121], [101], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 86 and associated fundamentals [[249], [66], [202], [155]]
  c_86_67_0_False_resize <= c_67;
  c_86_67_0_False_shift <= shift_left(c_86_67_0_False_resize, 0);
  c_86_85_1_False_resize <= resize(c_85, 24);
  c_86_85_1_False_shift <= shift_left(c_86_85_1_False_resize, 1);
  with config_select_13 select c_86_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_86_sel is
        when "0" => c_86 <= c_86_67_0_False_shift;
        when others => c_86 <= c_86_85_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 87 and associated fundamentals [[93], [127], [49], [139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 88 and associated fundamentals [[93], [127], [49], [139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 89 and associated fundamentals [[66], [77], [47], [162]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 90 and associated fundamentals [[66], [77], [47], [162]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 91 and associated fundamentals [[15], [109], [196], [162]]
  c_91_90_0_False_resize <= c_90;
  c_91_90_0_False_shift <= shift_left(c_91_90_0_False_resize, 0);
  c_91_88_2_False_resize <= c_88;
  c_91_88_2_False_shift <= shift_left(c_91_88_2_False_resize, 2);
  c_91_74_0_False_resize <= c_74;
  c_91_74_0_False_shift <= shift_left(c_91_74_0_False_resize, 0);
  with config_select_13 select c_91_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_91_sel is
        when "00" => c_91 <= c_91_90_0_False_shift;
        when "01" => c_91 <= c_91_88_2_False_shift;
        when others => c_91 <= c_91_74_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 92 and associated fundamentals [[46], [50], [150], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 93 and associated fundamentals [[46], [50], [150], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 94 and associated fundamentals [[158], [242], [150], [212]]
  c_94_93_0_False_resize <= c_93;
  c_94_93_0_False_shift <= shift_left(c_94_93_0_False_resize, 0);
  c_94_85_1_False_resize <= resize(c_85, 24);
  c_94_85_1_False_shift <= shift_left(c_94_85_1_False_resize, 1);
  c_94_74_0_False_resize <= c_74;
  c_94_74_0_False_shift <= shift_left(c_94_74_0_False_resize, 0);
  c_94_49_1_False_resize <= c_49;
  c_94_49_1_False_shift <= shift_left(c_94_49_1_False_resize, 1);
  with config_select_13 select c_94_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_94_sel is
        when "00" => c_94 <= c_94_93_0_False_shift;
        when "01" => c_94 <= c_94_85_1_False_shift;
        when "10" => c_94 <= c_94_74_0_False_shift;
        when others => c_94 <= c_94_49_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 95 and associated fundamentals [[43], [82], [118], [237]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 96 and associated fundamentals [[43], [82], [118], [237]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 97 and associated fundamentals [[77], [127], [183], [237]]
  c_97_96_0_False_resize <= c_96;
  c_97_96_0_False_shift <= shift_left(c_97_96_0_False_resize, 0);
  c_97_88_0_False_resize <= c_88;
  c_97_88_0_False_shift <= shift_left(c_97_88_0_False_resize, 0);
  c_97_67_0_False_resize <= c_67;
  c_97_67_0_False_shift <= shift_left(c_97_67_0_False_resize, 0);
  c_97_85_0_False_resize <= resize(c_85, 24);
  c_97_85_0_False_shift <= shift_left(c_97_85_0_False_resize, 0);
  with config_select_13 select c_97_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_97_sel is
        when "00" => c_97 <= c_97_96_0_False_shift;
        when "01" => c_97 <= c_97_88_0_False_shift;
        when "10" => c_97 <= c_97_67_0_False_shift;
        when others => c_97 <= c_97_85_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 98 and associated fundamentals [[43], [154], [234], [222]]
  c_98_90_1_False_resize <= c_90;
  c_98_90_1_False_shift <= shift_left(c_98_90_1_False_resize, 1);
  c_98_49_0_False_resize <= c_49;
  c_98_49_0_False_shift <= shift_left(c_98_49_0_False_resize, 0);
  c_98_96_0_False_resize <= c_96;
  c_98_96_0_False_shift <= shift_left(c_98_96_0_False_resize, 0);
  c_98_49_1_False_resize <= c_49;
  c_98_49_1_False_shift <= shift_left(c_98_49_1_False_resize, 1);
  with config_select_13 select c_98_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_98_sel is
        when "00" => c_98 <= c_98_90_1_False_shift;
        when "01" => c_98 <= c_98_49_0_False_shift;
        when "10" => c_98 <= c_98_96_0_False_shift;
        when others => c_98 <= c_98_49_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 99 and associated fundamentals [[93], [79], [9], [38]]
  c_99_88_0_False_resize <= c_88(22 downto 0);
  c_99_88_0_False_shift <= shift_left(c_99_88_0_False_resize, 0);
  c_99_85_1_False_resize <= c_85;
  c_99_85_1_False_shift <= shift_left(c_99_85_1_False_resize, 1);
  c_99_74_0_False_resize <= c_74(22 downto 0);
  c_99_74_0_False_shift <= shift_left(c_99_74_0_False_resize, 0);
  c_99_49_0_False_resize <= c_49(22 downto 0);
  c_99_49_0_False_shift <= shift_left(c_99_49_0_False_resize, 0);
  with config_select_13 select c_99_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_99_sel is
        when "00" => c_99 <= c_99_88_0_False_shift;
        when "01" => c_99 <= c_99_85_1_False_shift;
        when "10" => c_99 <= c_99_74_0_False_shift;
        when others => c_99 <= c_99_49_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 100 and associated fundamentals [[24], [6], [236], [40]]
  c_100_69_3_False_resize <= resize(c_69, 24);
  c_100_69_3_False_shift <= shift_left(c_100_69_3_False_resize, 3);
  c_100_58_1_False_resize <= c_58;
  c_100_58_1_False_shift <= shift_left(c_100_58_1_False_resize, 1);
  c_100_69_0_False_resize <= resize(c_69, 24);
  c_100_69_0_False_shift <= shift_left(c_100_69_0_False_resize, 0);
  with config_select_11 select c_100_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_100_sel is
        when "00" => c_100 <= c_100_69_3_False_shift;
        when "01" => c_100 <= c_100_58_1_False_shift;
        when others => c_100 <= c_100_69_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 101 and associated fundamentals [[132], [50], [94], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 102 and associated fundamentals [[132], [50], [94], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 103 and associated fundamentals [[132], [50], [94], [12]]
  c_103_resize <= c_102;
  c_103 <= shift_left(c_103_resize, 0);
  -- node of type 'register' in stage 12 with id 104 and associated fundamentals [[123], [177], [53], [139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 105 and associated fundamentals [[123], [177], [53], [139]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 106 and associated fundamentals [[123], [177], [53], [139]]
  c_106_resize <= c_105;
  c_106 <= shift_left(c_106_resize, 0);
  -- node of type 'output' in stage 13 with id 107 and associated fundamentals [[249], [66], [202], [155]]
  c_107_resize <= c_86;
  c_107 <= shift_left(c_107_resize, 0);
  -- node of type 'output' in stage 13 with id 108 and associated fundamentals [[15], [109], [196], [162]]
  c_108_resize <= c_91;
  c_108 <= shift_left(c_108_resize, 0);
  -- node of type 'output' in stage 13 with id 109 and associated fundamentals [[158], [242], [150], [212]]
  c_109_resize <= c_94;
  c_109 <= shift_left(c_109_resize, 0);
  -- node of type 'output' in stage 13 with id 110 and associated fundamentals [[77], [127], [183], [237]]
  c_110_resize <= c_97;
  c_110 <= shift_left(c_110_resize, 0);
  -- node of type 'register' in stage 13 with id 111 and associated fundamentals [[141], [39], [217], [194]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_79 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 112 and associated fundamentals [[141], [39], [217], [194]]
  c_112_resize <= c_111;
  c_112 <= shift_left(c_112_resize, 0);
  -- node of type 'output' in stage 13 with id 113 and associated fundamentals [[43], [154], [234], [222]]
  c_113_resize <= c_98;
  c_113 <= shift_left(c_113_resize, 0);
  -- node of type 'output' in stage 13 with id 114 and associated fundamentals [[93], [79], [9], [38]]
  c_114_resize <= c_99;
  c_114 <= shift_left(c_114_resize, 0);
  -- node of type 'register' in stage 12 with id 115 and associated fundamentals [[24], [6], [236], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 116 and associated fundamentals [[24], [6], [236], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 117 and associated fundamentals [[24], [6], [236], [40]]
  c_117_resize <= c_116;
  c_117 <= shift_left(c_117_resize, 0);
end architecture;

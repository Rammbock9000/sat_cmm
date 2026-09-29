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
    y_9: out std_logic_vector(24 downto 0);
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
  signal c_4: signed(15 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_4_0_False_resize: signed(23 downto 0);
  signal c_5_4_0_False_shift: signed(23 downto 0);
  signal c_5_4_1_False_resize: signed(23 downto 0);
  signal c_5_4_1_False_shift: signed(23 downto 0);
  signal c_5_3_5_False_resize: signed(23 downto 0);
  signal c_5_3_5_False_shift: signed(23 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_3_4_False_resize: signed(21 downto 0);
  signal c_6_3_4_False_shift: signed(21 downto 0);
  signal c_6_4_0_False_resize: signed(21 downto 0);
  signal c_6_4_0_False_shift: signed(21 downto 0);
  signal c_6_3_2_False_resize: signed(21 downto 0);
  signal c_6_3_2_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_8_0_4_False_resize: signed(19 downto 0);
  signal c_8_0_4_False_shift: signed(19 downto 0);
  signal c_8_0_1_False_resize: signed(19 downto 0);
  signal c_8_0_1_False_shift: signed(19 downto 0);
  signal c_8_0_0_False_resize: signed(19 downto 0);
  signal c_8_0_0_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_10_4_False_resize: signed(24 downto 0);
  signal c_11_10_4_False_shift: signed(24 downto 0);
  signal c_11_7_0_False_resize: signed(24 downto 0);
  signal c_11_7_0_False_shift: signed(24 downto 0);
  signal c_11_7_3_False_resize: signed(24 downto 0);
  signal c_11_7_3_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_7_0_False_resize: signed(21 downto 0);
  signal c_17_7_0_False_shift: signed(21 downto 0);
  signal c_17_10_0_False_resize: signed(21 downto 0);
  signal c_17_10_0_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(15 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_16_0_False_resize: signed(24 downto 0);
  signal c_20_16_0_False_shift: signed(24 downto 0);
  signal c_20_19_9_False_resize: signed(24 downto 0);
  signal c_20_19_9_False_shift: signed(24 downto 0);
  signal c_20_19_2_False_resize: signed(24 downto 0);
  signal c_20_19_2_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(21 downto 0);
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
  signal c_28: signed(24 downto 0);
  signal c_28_16_0_False_resize: signed(24 downto 0);
  signal c_28_16_0_False_shift: signed(24 downto 0);
  signal c_28_19_2_False_resize: signed(24 downto 0);
  signal c_28_19_2_False_shift: signed(24 downto 0);
  signal c_28_27_2_False_resize: signed(24 downto 0);
  signal c_28_27_2_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(19 downto 0);
  signal c_29_4_0_False_resize: signed(19 downto 0);
  signal c_29_4_0_False_shift: signed(19 downto 0);
  signal c_29_3_0_False_resize: signed(19 downto 0);
  signal c_29_3_0_False_shift: signed(19 downto 0);
  signal c_29_4_2_False_resize: signed(19 downto 0);
  signal c_29_4_2_False_shift: signed(19 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(19 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_34_i0_resize: signed(24 downto 0);
  signal c_34_i1_resize: signed(24 downto 0);
  signal c_34_i0_shift: signed(24 downto 0);
  signal c_34_i1_shift: signed(24 downto 0);
  signal c_34_arith: signed(24 downto 0);
  signal c_34_oshift: signed(24 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(23 downto 0);
  signal c_35_7_0_False_resize: signed(23 downto 0);
  signal c_35_7_0_False_shift: signed(23 downto 0);
  signal c_35_25_1_False_resize: signed(23 downto 0);
  signal c_35_25_1_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_36_10_4_False_resize: signed(21 downto 0);
  signal c_36_10_4_False_shift: signed(21 downto 0);
  signal c_36_25_2_False_resize: signed(21 downto 0);
  signal c_36_25_2_False_shift: signed(21 downto 0);
  signal c_36_7_0_False_resize: signed(21 downto 0);
  signal c_36_7_0_False_shift: signed(21 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_40_39_0_False_resize: signed(24 downto 0);
  signal c_40_39_0_False_shift: signed(24 downto 0);
  signal c_40_34_0_False_resize: signed(24 downto 0);
  signal c_40_34_0_False_shift: signed(24 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(15 downto 0);
  signal c_42: signed(15 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_43_42_0_False_resize: signed(22 downto 0);
  signal c_43_42_0_False_shift: signed(22 downto 0);
  signal c_43_42_7_False_resize: signed(22 downto 0);
  signal c_43_42_7_False_shift: signed(22 downto 0);
  signal c_43_34_1_False_resize: signed(22 downto 0);
  signal c_43_34_1_False_shift: signed(22 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_i0_resize: signed(24 downto 0);
  signal c_44_i1_resize: signed(24 downto 0);
  signal c_44_i0_shift: signed(24 downto 0);
  signal c_44_i1_shift: signed(24 downto 0);
  signal c_44_arith: signed(24 downto 0);
  signal c_44_oshift: signed(24 downto 0);
  signal c_45: signed(24 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_46_5_False_resize: signed(25 downto 0);
  signal c_47_46_5_False_shift: signed(25 downto 0);
  signal c_47_44_0_False_resize: signed(25 downto 0);
  signal c_47_44_0_False_shift: signed(25 downto 0);
  signal c_47_44_1_False_resize: signed(25 downto 0);
  signal c_47_44_1_False_shift: signed(25 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_52: signed(26 downto 0);
  signal c_52_39_0_False_resize: signed(26 downto 0);
  signal c_52_39_0_False_shift: signed(26 downto 0);
  signal c_52_51_1_False_resize: signed(26 downto 0);
  signal c_52_51_1_False_shift: signed(26 downto 0);
  signal c_52_23_1_False_resize: signed(26 downto 0);
  signal c_52_23_1_False_shift: signed(26 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(26 downto 0);
  signal c_54: signed(26 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_i0_resize: signed(25 downto 0);
  signal c_55_i1_resize: signed(25 downto 0);
  signal c_55_i0_shift: signed(25 downto 0);
  signal c_55_i1_shift: signed(25 downto 0);
  signal c_55_arith: signed(25 downto 0);
  signal c_55_oshift: signed(25 downto 0);
  signal c_55_sub_sel: std_logic;
  signal c_56: signed(24 downto 0);
  signal c_56_34_0_False_resize: signed(24 downto 0);
  signal c_56_34_0_False_shift: signed(24 downto 0);
  signal c_56_23_0_False_resize: signed(24 downto 0);
  signal c_56_23_0_False_shift: signed(24 downto 0);
  signal c_56_42_3_False_resize: signed(24 downto 0);
  signal c_56_42_3_False_shift: signed(24 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_23_0_False_resize: signed(23 downto 0);
  signal c_57_23_0_False_shift: signed(23 downto 0);
  signal c_57_51_0_False_resize: signed(23 downto 0);
  signal c_57_51_0_False_shift: signed(23 downto 0);
  signal c_57_42_4_False_resize: signed(23 downto 0);
  signal c_57_42_4_False_shift: signed(23 downto 0);
  signal c_57_sel: std_logic_vector(1 downto 0);
  signal c_58: signed(24 downto 0);
  signal c_58_i0_resize: signed(24 downto 0);
  signal c_58_i1_resize: signed(24 downto 0);
  signal c_58_i0_shift: signed(24 downto 0);
  signal c_58_i1_shift: signed(24 downto 0);
  signal c_58_arith: signed(24 downto 0);
  signal c_58_oshift: signed(24 downto 0);
  signal c_58_sub_sel: std_logic;
  signal c_59: signed(25 downto 0);
  signal c_59_7_0_False_resize: signed(25 downto 0);
  signal c_59_7_0_False_shift: signed(25 downto 0);
  signal c_59_7_2_False_resize: signed(25 downto 0);
  signal c_59_7_2_False_shift: signed(25 downto 0);
  signal c_59_10_9_False_resize: signed(25 downto 0);
  signal c_59_10_9_False_shift: signed(25 downto 0);
  signal c_59_sel: std_logic_vector(1 downto 0);
  signal c_60: signed(19 downto 0);
  signal c_61: signed(19 downto 0);
  signal c_62: signed(19 downto 0);
  signal c_63: signed(19 downto 0);
  signal c_64: signed(24 downto 0);
  signal c_64_63_6_False_resize: signed(24 downto 0);
  signal c_64_63_6_False_shift: signed(24 downto 0);
  signal c_64_44_0_False_resize: signed(24 downto 0);
  signal c_64_44_0_False_shift: signed(24 downto 0);
  signal c_64_63_1_False_resize: signed(24 downto 0);
  signal c_64_63_1_False_shift: signed(24 downto 0);
  signal c_64_sel: std_logic_vector(1 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_i0_resize: signed(25 downto 0);
  signal c_71_i1_resize: signed(25 downto 0);
  signal c_71_i0_shift: signed(25 downto 0);
  signal c_71_i1_shift: signed(25 downto 0);
  signal c_71_arith: signed(25 downto 0);
  signal c_71_oshift: signed(25 downto 0);
  signal c_71_sub_sel: std_logic;
  signal c_72: signed(15 downto 0);
  signal c_73: signed(15 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_76: signed(24 downto 0);
  signal c_76_58_0_False_resize: signed(24 downto 0);
  signal c_76_58_0_False_shift: signed(24 downto 0);
  signal c_76_73_2_False_resize: signed(24 downto 0);
  signal c_76_73_2_False_shift: signed(24 downto 0);
  signal c_76_75_0_False_resize: signed(24 downto 0);
  signal c_76_75_0_False_shift: signed(24 downto 0);
  signal c_76_sel: std_logic_vector(1 downto 0);
  signal c_77: signed(21 downto 0);
  signal c_77_7_0_False_resize: signed(21 downto 0);
  signal c_77_7_0_False_shift: signed(21 downto 0);
  signal c_77_10_3_False_resize: signed(21 downto 0);
  signal c_77_10_3_False_shift: signed(21 downto 0);
  signal c_77_25_0_False_resize: signed(21 downto 0);
  signal c_77_25_0_False_shift: signed(21 downto 0);
  signal c_77_sel: std_logic_vector(1 downto 0);
  signal c_78: signed(21 downto 0);
  signal c_79: signed(21 downto 0);
  signal c_80: signed(21 downto 0);
  signal c_81: signed(21 downto 0);
  signal c_82: signed(21 downto 0);
  signal c_83: signed(21 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_84_i0_resize: signed(25 downto 0);
  signal c_84_i1_resize: signed(25 downto 0);
  signal c_84_i0_shift: signed(25 downto 0);
  signal c_84_i1_shift: signed(25 downto 0);
  signal c_84_arith: signed(25 downto 0);
  signal c_84_oshift: signed(25 downto 0);
  signal c_84_sub_sel: std_logic;
  signal c_85: signed(15 downto 0);
  signal c_86: signed(15 downto 0);
  signal c_87: signed(19 downto 0);
  signal c_88: signed(19 downto 0);
  signal c_89: signed(24 downto 0);
  signal c_89_88_0_False_resize: signed(24 downto 0);
  signal c_89_88_0_False_shift: signed(24 downto 0);
  signal c_89_86_1_False_resize: signed(24 downto 0);
  signal c_89_86_1_False_shift: signed(24 downto 0);
  signal c_89_84_0_False_resize: signed(24 downto 0);
  signal c_89_84_0_False_shift: signed(24 downto 0);
  signal c_89_sel: std_logic_vector(1 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_92: signed(23 downto 0);
  signal c_93: signed(23 downto 0);
  signal c_94: signed(24 downto 0);
  signal c_94_71_1_False_resize: signed(24 downto 0);
  signal c_94_71_1_False_shift: signed(24 downto 0);
  signal c_94_88_0_False_resize: signed(24 downto 0);
  signal c_94_88_0_False_shift: signed(24 downto 0);
  signal c_94_93_2_False_resize: signed(24 downto 0);
  signal c_94_93_2_False_shift: signed(24 downto 0);
  signal c_94_sel: std_logic_vector(1 downto 0);
  signal c_95: signed(25 downto 0);
  signal c_95_i0_resize: signed(25 downto 0);
  signal c_95_i1_resize: signed(25 downto 0);
  signal c_95_i0_shift: signed(25 downto 0);
  signal c_95_i1_shift: signed(25 downto 0);
  signal c_95_arith: signed(25 downto 0);
  signal c_95_oshift: signed(25 downto 0);
  signal c_95_sub_sel: std_logic;
  signal c_96: signed(24 downto 0);
  signal c_97: signed(24 downto 0);
  signal c_98: signed(24 downto 0);
  signal c_99: signed(24 downto 0);
  signal c_100: signed(24 downto 0);
  signal c_100_95_0_False_resize: signed(24 downto 0);
  signal c_100_95_0_False_shift: signed(24 downto 0);
  signal c_100_99_0_False_resize: signed(24 downto 0);
  signal c_100_99_0_False_shift: signed(24 downto 0);
  signal c_100_sel: std_logic_vector(0 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_103_86_8_False_resize: signed(25 downto 0);
  signal c_103_86_8_False_shift: signed(25 downto 0);
  signal c_103_102_0_False_resize: signed(25 downto 0);
  signal c_103_102_0_False_shift: signed(25 downto 0);
  signal c_103_55_0_False_resize: signed(25 downto 0);
  signal c_103_55_0_False_shift: signed(25 downto 0);
  signal c_103_sel: std_logic_vector(1 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_106_i0_resize: signed(25 downto 0);
  signal c_106_i1_resize: signed(25 downto 0);
  signal c_106_i0_shift: signed(25 downto 0);
  signal c_106_i1_shift: signed(25 downto 0);
  signal c_106_arith: signed(25 downto 0);
  signal c_106_oshift: signed(25 downto 0);
  signal c_107: signed(24 downto 0);
  signal c_108: signed(24 downto 0);
  signal c_109: signed(25 downto 0);
  signal c_109_108_0_False_resize: signed(25 downto 0);
  signal c_109_108_0_False_shift: signed(25 downto 0);
  signal c_109_71_0_False_resize: signed(25 downto 0);
  signal c_109_71_0_False_shift: signed(25 downto 0);
  signal c_109_55_0_False_resize: signed(25 downto 0);
  signal c_109_55_0_False_shift: signed(25 downto 0);
  signal c_109_sel: std_logic_vector(1 downto 0);
  signal c_110: signed(24 downto 0);
  signal c_111: signed(24 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_112_102_2_False_resize: signed(25 downto 0);
  signal c_112_102_2_False_shift: signed(25 downto 0);
  signal c_112_55_0_False_resize: signed(25 downto 0);
  signal c_112_55_0_False_shift: signed(25 downto 0);
  signal c_112_111_2_False_resize: signed(25 downto 0);
  signal c_112_111_2_False_shift: signed(25 downto 0);
  signal c_112_sel: std_logic_vector(1 downto 0);
  signal c_113: signed(24 downto 0);
  signal c_114: signed(24 downto 0);
  signal c_115: signed(24 downto 0);
  signal c_116: signed(24 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_119_118_0_False_resize: signed(25 downto 0);
  signal c_119_118_0_False_shift: signed(25 downto 0);
  signal c_119_106_0_False_resize: signed(25 downto 0);
  signal c_119_106_0_False_shift: signed(25 downto 0);
  signal c_119_116_1_False_resize: signed(25 downto 0);
  signal c_119_116_1_False_shift: signed(25 downto 0);
  signal c_119_sel: std_logic_vector(1 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_120_37_0_False_resize: signed(25 downto 0);
  signal c_120_37_0_False_shift: signed(25 downto 0);
  signal c_120_49_2_False_resize: signed(25 downto 0);
  signal c_120_49_2_False_shift: signed(25 downto 0);
  signal c_120_sel: std_logic_vector(0 downto 0);
  signal c_121: signed(24 downto 0);
  signal c_122: signed(24 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_125_95_0_False_resize: signed(25 downto 0);
  signal c_125_95_0_False_shift: signed(25 downto 0);
  signal c_125_124_0_False_resize: signed(25 downto 0);
  signal c_125_124_0_False_shift: signed(25 downto 0);
  signal c_125_122_2_False_resize: signed(25 downto 0);
  signal c_125_122_2_False_shift: signed(25 downto 0);
  signal c_125_sel: std_logic_vector(1 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_130: signed(25 downto 0);
  signal c_130_44_1_False_resize: signed(25 downto 0);
  signal c_130_44_1_False_shift: signed(25 downto 0);
  signal c_130_58_1_False_resize: signed(25 downto 0);
  signal c_130_58_1_False_shift: signed(25 downto 0);
  signal c_130_129_0_False_resize: signed(25 downto 0);
  signal c_130_129_0_False_shift: signed(25 downto 0);
  signal c_130_sel: std_logic_vector(1 downto 0);
  signal c_131: signed(25 downto 0);
  signal c_132: signed(25 downto 0);
  signal c_133: signed(25 downto 0);
  signal c_134: signed(25 downto 0);
  signal c_135: signed(25 downto 0);
  signal c_136: signed(25 downto 0);
  signal c_137: signed(25 downto 0);
  signal c_138: signed(25 downto 0);
  signal c_139: signed(25 downto 0);
  signal c_139_136_0_False_resize: signed(25 downto 0);
  signal c_139_136_0_False_shift: signed(25 downto 0);
  signal c_139_95_1_False_resize: signed(25 downto 0);
  signal c_139_95_1_False_shift: signed(25 downto 0);
  signal c_139_138_1_False_resize: signed(25 downto 0);
  signal c_139_138_1_False_shift: signed(25 downto 0);
  signal c_139_sel: std_logic_vector(1 downto 0);
  signal c_140: signed(25 downto 0);
  signal c_141: signed(25 downto 0);
  signal c_142: signed(25 downto 0);
  signal c_143: signed(25 downto 0);
  signal c_144: signed(25 downto 0);
  signal c_145: signed(25 downto 0);
  signal c_146: signed(25 downto 0);
  signal c_146_143_1_False_resize: signed(25 downto 0);
  signal c_146_143_1_False_shift: signed(25 downto 0);
  signal c_146_145_0_False_resize: signed(25 downto 0);
  signal c_146_145_0_False_shift: signed(25 downto 0);
  signal c_146_106_1_False_resize: signed(25 downto 0);
  signal c_146_106_1_False_shift: signed(25 downto 0);
  signal c_146_sel: std_logic_vector(1 downto 0);
  signal c_147: signed(23 downto 0);
  signal c_148: signed(23 downto 0);
  signal c_149: signed(23 downto 0);
  signal c_150: signed(23 downto 0);
  signal c_151: signed(25 downto 0);
  signal c_152: signed(25 downto 0);
  signal c_153: signed(25 downto 0);
  signal c_153_152_0_False_resize: signed(25 downto 0);
  signal c_153_152_0_False_shift: signed(25 downto 0);
  signal c_153_106_0_False_resize: signed(25 downto 0);
  signal c_153_106_0_False_shift: signed(25 downto 0);
  signal c_153_150_0_False_resize: signed(25 downto 0);
  signal c_153_150_0_False_shift: signed(25 downto 0);
  signal c_153_sel: std_logic_vector(1 downto 0);
  signal c_154: signed(25 downto 0);
  signal c_155: signed(25 downto 0);
  signal c_156: signed(24 downto 0);
  signal c_156_155_0_False_resize: signed(24 downto 0);
  signal c_156_155_0_False_shift: signed(24 downto 0);
  signal c_156_55_2_False_resize: signed(24 downto 0);
  signal c_156_55_2_False_shift: signed(24 downto 0);
  signal c_156_84_0_False_resize: signed(24 downto 0);
  signal c_156_84_0_False_shift: signed(24 downto 0);
  signal c_156_sel: std_logic_vector(1 downto 0);
  signal c_157: signed(25 downto 0);
  signal c_158: signed(25 downto 0);
  signal c_159: signed(25 downto 0);
  signal c_160: signed(25 downto 0);
  signal c_161: signed(25 downto 0);
  signal c_161_resize: signed(25 downto 0);
  signal c_162: signed(25 downto 0);
  signal c_163: signed(25 downto 0);
  signal c_164: signed(25 downto 0);
  signal c_165: signed(25 downto 0);
  signal c_166: signed(25 downto 0);
  signal c_166_resize: signed(25 downto 0);
  signal c_167: signed(25 downto 0);
  signal c_167_resize: signed(25 downto 0);
  signal c_168: signed(25 downto 0);
  signal c_169: signed(25 downto 0);
  signal c_170: signed(25 downto 0);
  signal c_171: signed(25 downto 0);
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
  signal c_181_resize: signed(25 downto 0);
  signal c_182: signed(25 downto 0);
  signal c_183: signed(25 downto 0);
  signal c_184: signed(25 downto 0);
  signal c_185: signed(25 downto 0);
  signal c_186: signed(25 downto 0);
  signal c_187: signed(25 downto 0);
  signal c_188: signed(25 downto 0);
  signal c_188_resize: signed(25 downto 0);
  signal c_189: signed(25 downto 0);
  signal c_190: signed(25 downto 0);
  signal c_191: signed(25 downto 0);
  signal c_191_resize: signed(25 downto 0);
  signal c_192: signed(25 downto 0);
  signal c_192_resize: signed(25 downto 0);
  signal c_193: signed(25 downto 0);
  signal c_193_resize: signed(25 downto 0);
  signal c_194: signed(24 downto 0);
  signal c_195: signed(24 downto 0);
  signal c_196: signed(24 downto 0);
  signal c_197: signed(24 downto 0);
  signal c_198: signed(24 downto 0);
  signal c_198_resize: signed(24 downto 0);
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
  -- output node 0 with id 161
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_161);
    end if;
  end process;
  -- output node 1 with id 166
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_166);
    end if;
  end process;
  -- output node 2 with id 167
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_167);
    end if;
  end process;
  -- output node 3 with id 178
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_178);
    end if;
  end process;
  -- output node 4 with id 181
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_181);
    end if;
  end process;
  -- output node 5 with id 188
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_188);
    end if;
  end process;
  -- output node 6 with id 191
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_191);
    end if;
  end process;
  -- output node 7 with id 192
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_192);
    end if;
  end process;
  -- output node 8 with id 193
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_193);
    end if;
  end process;
  -- output node 9 with id 198
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_198);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-15], [-3], [5]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 20,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
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
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[1], [2], [160]]
  c_5_4_0_False_resize <= resize(c_4, 24);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_4_1_False_resize <= resize(c_4, 24);
  c_5_4_1_False_shift <= shift_left(c_5_4_1_False_resize, 1);
  c_5_3_5_False_resize <= resize(c_3, 24);
  c_5_3_5_False_shift <= shift_left(c_5_3_5_False_resize, 5);
  with config_select_3 select c_5_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_4_0_False_shift;
        when "01" => c_5 <= c_5_4_1_False_shift;
        when others => c_5 <= c_5_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[-60], [-48], [1]]
  c_6_3_4_False_resize <= resize(c_3, 22);
  c_6_3_4_False_shift <= shift_left(c_6_3_4_False_resize, 4);
  c_6_4_0_False_resize <= resize(c_4, 22);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_3_2_False_resize <= resize(c_3, 22);
  c_6_3_2_False_shift <= shift_left(c_6_3_2_False_resize, 2);
  with config_select_3 select c_6_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_4_False_shift;
        when "01" => c_6 <= c_6_4_0_False_shift;
        when others => c_6 <= c_6_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 7 and associated fundamentals [[61], [50], [159]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[1], [2], [16]]
  c_8_0_4_False_resize <= resize(c_0, 20);
  c_8_0_4_False_shift <= shift_left(c_8_0_4_False_resize, 4);
  c_8_0_1_False_resize <= resize(c_0, 20);
  c_8_0_1_False_shift <= shift_left(c_8_0_1_False_resize, 1);
  c_8_0_0_False_resize <= resize(c_0, 20);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  with config_select_1 select c_8_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_4_False_shift;
        when "01" => c_8 <= c_8_0_1_False_shift;
        when others => c_8 <= c_8_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[16], [400], [159]]
  c_11_10_4_False_resize <= resize(c_10, 25);
  c_11_10_4_False_shift <= shift_left(c_11_10_4_False_resize, 4);
  c_11_7_0_False_resize <= resize(c_7, 25);
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  c_11_7_3_False_resize <= resize(c_7, 25);
  c_11_7_3_False_shift <= shift_left(c_11_7_3_False_resize, 3);
  with config_select_5 select c_11_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_10_4_False_shift;
        when "01" => c_11 <= c_11_7_0_False_shift;
        when others => c_11 <= c_11_7_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[1], [2], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[1], [2], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[1], [2], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[1], [2], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 16 and associated fundamentals [[33], [802], [334]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 25,
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
      x_i => c_15,
      y_i => c_11,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[61], [50], [1]]
  c_17_7_0_False_resize <= c_7(21 downto 0);
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  c_17_10_0_False_resize <= resize(c_10, 22);
  c_17_10_0_False_shift <= shift_left(c_17_10_0_False_resize, 0);
  with config_select_5 select c_17_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_7_0_False_shift;
        when others => c_17 <= c_17_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[33], [4], [512]]
  c_20_16_0_False_resize <= c_16(24 downto 0);
  c_20_16_0_False_shift <= shift_left(c_20_16_0_False_resize, 0);
  c_20_19_9_False_resize <= resize(c_19, 25);
  c_20_19_9_False_shift <= shift_left(c_20_19_9_False_resize, 9);
  c_20_19_2_False_resize <= resize(c_19, 25);
  c_20_19_2_False_shift <= shift_left(c_20_19_2_False_resize, 2);
  with config_select_7 select c_20_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_16_0_False_shift;
        when "01" => c_20 <= c_20_19_9_False_shift;
        when others => c_20 <= c_20_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[61], [50], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[61], [50], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 23 and associated fundamentals [[211], [204], [516]]
  with config_select_8 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_20,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 24 and associated fundamentals [[-15], [-3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[-15], [-3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[-15], [-3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[-15], [-3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 28 and associated fundamentals [[4], [-12], [334]]
  c_28_16_0_False_resize <= c_16(24 downto 0);
  c_28_16_0_False_shift <= shift_left(c_28_16_0_False_resize, 0);
  c_28_19_2_False_resize <= resize(c_19, 25);
  c_28_19_2_False_shift <= shift_left(c_28_19_2_False_resize, 2);
  c_28_27_2_False_resize <= resize(c_27, 25);
  c_28_27_2_False_shift <= shift_left(c_28_27_2_False_resize, 2);
  with config_select_7 select c_28_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_16_0_False_shift;
        when "01" => c_28 <= c_28_19_2_False_shift;
        when others => c_28 <= c_28_27_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[-15], [1], [4]]
  c_29_4_0_False_resize <= resize(c_4, 20);
  c_29_4_0_False_shift <= shift_left(c_29_4_0_False_resize, 0);
  c_29_3_0_False_resize <= c_3;
  c_29_3_0_False_shift <= shift_left(c_29_3_0_False_resize, 0);
  c_29_4_2_False_resize <= resize(c_4, 20);
  c_29_4_2_False_shift <= shift_left(c_29_4_2_False_resize, 2);
  with config_select_3 select c_29_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_4_0_False_shift;
        when "01" => c_29 <= c_29_3_0_False_shift;
        when others => c_29 <= c_29_4_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[-15], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[-15], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[-15], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[-15], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 34 and associated fundamentals [[19], [-11], [330]]
  with config_select_8 select c_34_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
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
      sub_i => c_34_sub_sel,
      x_i => c_28,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 35 and associated fundamentals [[61], [-6], [159]]
  c_35_7_0_False_resize <= c_7;
  c_35_7_0_False_shift <= shift_left(c_35_7_0_False_resize, 0);
  c_35_25_1_False_resize <= resize(c_25, 24);
  c_35_25_1_False_shift <= shift_left(c_35_25_1_False_resize, 1);
  with config_select_5 select c_35_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_7_0_False_shift;
        when others => c_35 <= c_35_25_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 36 and associated fundamentals [[16], [50], [20]]
  c_36_10_4_False_resize <= resize(c_10, 22);
  c_36_10_4_False_shift <= shift_left(c_36_10_4_False_resize, 4);
  c_36_25_2_False_resize <= resize(c_25, 22);
  c_36_25_2_False_shift <= shift_left(c_36_25_2_False_resize, 2);
  c_36_7_0_False_resize <= c_7(21 downto 0);
  c_36_7_0_False_shift <= shift_left(c_36_7_0_False_resize, 0);
  with config_select_5 select c_36_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_10_4_False_shift;
        when "01" => c_36 <= c_36_25_2_False_shift;
        when others => c_36 <= c_36_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 37 and associated fundamentals [[317], [794], [479]]
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
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
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[317], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[317], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 40 and associated fundamentals [[317], [-11], [479]]
  c_40_39_0_False_resize <= c_39(24 downto 0);
  c_40_39_0_False_shift <= shift_left(c_40_39_0_False_resize, 0);
  c_40_34_0_False_resize <= c_34;
  c_40_34_0_False_shift <= shift_left(c_40_34_0_False_resize, 0);
  with config_select_9 select c_40_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_39_0_False_shift;
        when others => c_40 <= c_40_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 43 and associated fundamentals [[1], [-22], [128]]
  c_43_42_0_False_resize <= resize(c_42, 23);
  c_43_42_0_False_shift <= shift_left(c_43_42_0_False_resize, 0);
  c_43_42_7_False_resize <= resize(c_42, 23);
  c_43_42_7_False_shift <= shift_left(c_43_42_7_False_resize, 7);
  c_43_34_1_False_resize <= c_34(22 downto 0);
  c_43_34_1_False_shift <= shift_left(c_43_34_1_False_resize, 1);
  with config_select_9 select c_43_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_42_0_False_shift;
        when "01" => c_43 <= c_43_42_7_False_shift;
        when others => c_43 <= c_43_34_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 44 and associated fundamentals [[313], [77], [-33]]
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_40,
      y_i => c_43,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[19], [-11], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 46 and associated fundamentals [[19], [-11], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 47 and associated fundamentals [[608], [154], [-33]]
  c_47_46_5_False_resize <= resize(c_46, 26);
  c_47_46_5_False_shift <= shift_left(c_47_46_5_False_resize, 5);
  c_47_44_0_False_resize <= resize(c_44, 26);
  c_47_44_0_False_shift <= shift_left(c_47_44_0_False_resize, 0);
  c_47_44_1_False_resize <= resize(c_44, 26);
  c_47_44_1_False_shift <= shift_left(c_47_44_1_False_resize, 1);
  with config_select_11 select c_47_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_46_5_False_shift;
        when "01" => c_47 <= c_47_44_0_False_shift;
        when others => c_47 <= c_47_44_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 48 and associated fundamentals [[61], [50], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 49 and associated fundamentals [[61], [50], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 50 and associated fundamentals [[61], [50], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[61], [50], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 52 and associated fundamentals [[317], [100], [1032]]
  c_52_39_0_False_resize <= resize(c_39, 27);
  c_52_39_0_False_shift <= shift_left(c_52_39_0_False_resize, 0);
  c_52_51_1_False_resize <= resize(c_51, 27);
  c_52_51_1_False_shift <= shift_left(c_52_51_1_False_resize, 1);
  c_52_23_1_False_resize <= resize(c_23, 27);
  c_52_23_1_False_shift <= shift_left(c_52_23_1_False_resize, 1);
  with config_select_9 select c_52_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "00" => c_52 <= c_52_39_0_False_shift;
        when "01" => c_52 <= c_52_51_1_False_shift;
        when others => c_52 <= c_52_23_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[317], [100], [1032]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 54 and associated fundamentals [[317], [100], [1032]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 55 and associated fundamentals [[925], [54], [999]]
  with config_select_12 select c_55_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_55: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_55_sub_sel,
      x_i => c_47,
      y_i => c_54,
      z_o => c_55_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_55_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 56 and associated fundamentals [[211], [8], [330]]
  c_56_34_0_False_resize <= c_34;
  c_56_34_0_False_shift <= shift_left(c_56_34_0_False_resize, 0);
  c_56_23_0_False_resize <= c_23(24 downto 0);
  c_56_23_0_False_shift <= shift_left(c_56_23_0_False_resize, 0);
  c_56_42_3_False_resize <= resize(c_42, 25);
  c_56_42_3_False_shift <= shift_left(c_56_42_3_False_resize, 3);
  with config_select_9 select c_56_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "00" => c_56 <= c_56_34_0_False_shift;
        when "01" => c_56 <= c_56_23_0_False_shift;
        when others => c_56 <= c_56_42_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 57 and associated fundamentals [[16], [204], [159]]
  c_57_23_0_False_resize <= c_23(23 downto 0);
  c_57_23_0_False_shift <= shift_left(c_57_23_0_False_resize, 0);
  c_57_51_0_False_resize <= c_51;
  c_57_51_0_False_shift <= shift_left(c_57_51_0_False_resize, 0);
  c_57_42_4_False_resize <= resize(c_42, 24);
  c_57_42_4_False_shift <= shift_left(c_57_42_4_False_resize, 4);
  with config_select_9 select c_57_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "00" => c_57 <= c_57_23_0_False_shift;
        when "01" => c_57 <= c_57_51_0_False_shift;
        when others => c_57 <= c_57_42_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 58 and associated fundamentals [[406], [220], [501]]
  with config_select_10 select c_58_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_58: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_58_sub_sel,
      x_i => c_56,
      y_i => c_57,
      z_o => c_58_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_58_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 59 and associated fundamentals [[512], [50], [636]]
  c_59_7_0_False_resize <= resize(c_7, 26);
  c_59_7_0_False_shift <= shift_left(c_59_7_0_False_resize, 0);
  c_59_7_2_False_resize <= resize(c_7, 26);
  c_59_7_2_False_shift <= shift_left(c_59_7_2_False_resize, 2);
  c_59_10_9_False_resize <= resize(c_10, 26);
  c_59_10_9_False_shift <= shift_left(c_59_10_9_False_resize, 9);
  with config_select_5 select c_59_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "00" => c_59 <= c_59_7_0_False_shift;
        when "01" => c_59 <= c_59_7_2_False_shift;
        when others => c_59 <= c_59_10_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 60 and associated fundamentals [[-15], [-3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 61 and associated fundamentals [[-15], [-3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[-15], [-3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[-15], [-3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 64 and associated fundamentals [[-30], [77], [320]]
  c_64_63_6_False_resize <= resize(c_63, 25);
  c_64_63_6_False_shift <= shift_left(c_64_63_6_False_resize, 6);
  c_64_44_0_False_resize <= c_44;
  c_64_44_0_False_shift <= shift_left(c_64_44_0_False_resize, 0);
  c_64_63_1_False_resize <= resize(c_63, 25);
  c_64_63_1_False_shift <= shift_left(c_64_63_1_False_resize, 1);
  with config_select_11 select c_64_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_64_sel is
        when "00" => c_64 <= c_64_63_6_False_shift;
        when "01" => c_64 <= c_64_44_0_False_shift;
        when others => c_64 <= c_64_63_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 65 and associated fundamentals [[512], [50], [636]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 66 and associated fundamentals [[512], [50], [636]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 67 and associated fundamentals [[512], [50], [636]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 68 and associated fundamentals [[512], [50], [636]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 69 and associated fundamentals [[512], [50], [636]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 70 and associated fundamentals [[512], [50], [636]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 71 and associated fundamentals [[994], [177], [952]]
  with config_select_12 select c_71_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_71: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_71_sub_sel,
      x_i => c_70,
      y_i => c_64,
      z_o => c_71_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_71_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 72 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 73 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 74 and associated fundamentals [[211], [204], [516]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 75 and associated fundamentals [[211], [204], [516]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 76 and associated fundamentals [[211], [4], [501]]
  c_76_58_0_False_resize <= c_58;
  c_76_58_0_False_shift <= shift_left(c_76_58_0_False_resize, 0);
  c_76_73_2_False_resize <= resize(c_73, 25);
  c_76_73_2_False_shift <= shift_left(c_76_73_2_False_resize, 2);
  c_76_75_0_False_resize <= c_75(24 downto 0);
  c_76_75_0_False_shift <= shift_left(c_76_75_0_False_resize, 0);
  with config_select_11 select c_76_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_76_sel is
        when "00" => c_76 <= c_76_58_0_False_shift;
        when "01" => c_76 <= c_76_73_2_False_shift;
        when others => c_76 <= c_76_75_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 77 and associated fundamentals [[8], [50], [5]]
  c_77_7_0_False_resize <= c_7(21 downto 0);
  c_77_7_0_False_shift <= shift_left(c_77_7_0_False_resize, 0);
  c_77_10_3_False_resize <= resize(c_10, 22);
  c_77_10_3_False_shift <= shift_left(c_77_10_3_False_resize, 3);
  c_77_25_0_False_resize <= resize(c_25, 22);
  c_77_25_0_False_shift <= shift_left(c_77_25_0_False_resize, 0);
  with config_select_5 select c_77_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "00" => c_77 <= c_77_7_0_False_shift;
        when "01" => c_77 <= c_77_10_3_False_shift;
        when others => c_77 <= c_77_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 78 and associated fundamentals [[8], [50], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 79 and associated fundamentals [[8], [50], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 80 and associated fundamentals [[8], [50], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 81 and associated fundamentals [[8], [50], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 82 and associated fundamentals [[8], [50], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 83 and associated fundamentals [[8], [50], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 84 and associated fundamentals [[339], [-796], [421]]
  with config_select_12 select c_84_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_84: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_84_sub_sel,
      x_i => c_76,
      y_i => c_83,
      z_o => c_84_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_84_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 85 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 86 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 87 and associated fundamentals [[-15], [-3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 88 and associated fundamentals [[-15], [-3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 89 and associated fundamentals [[2], [-3], [421]]
  c_89_88_0_False_resize <= resize(c_88, 25);
  c_89_88_0_False_shift <= shift_left(c_89_88_0_False_resize, 0);
  c_89_86_1_False_resize <= resize(c_86, 25);
  c_89_86_1_False_shift <= shift_left(c_89_86_1_False_resize, 1);
  c_89_84_0_False_resize <= c_84(24 downto 0);
  c_89_84_0_False_shift <= shift_left(c_89_84_0_False_resize, 0);
  with config_select_13 select c_89_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_89_sel is
        when "00" => c_89 <= c_89_88_0_False_shift;
        when "01" => c_89 <= c_89_86_1_False_shift;
        when others => c_89 <= c_89_84_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 90 and associated fundamentals [[61], [50], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 91 and associated fundamentals [[61], [50], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 92 and associated fundamentals [[61], [50], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 93 and associated fundamentals [[61], [50], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 94 and associated fundamentals [[244], [354], [5]]
  c_94_71_1_False_resize <= c_71(24 downto 0);
  c_94_71_1_False_shift <= shift_left(c_94_71_1_False_resize, 1);
  c_94_88_0_False_resize <= resize(c_88, 25);
  c_94_88_0_False_shift <= shift_left(c_94_88_0_False_resize, 0);
  c_94_93_2_False_resize <= resize(c_93, 25);
  c_94_93_2_False_shift <= shift_left(c_94_93_2_False_resize, 2);
  with config_select_13 select c_94_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_94_sel is
        when "00" => c_94 <= c_94_71_1_False_shift;
        when "01" => c_94 <= c_94_88_0_False_shift;
        when others => c_94 <= c_94_93_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 95 and associated fundamentals [[-486], [705], [411]]
  with config_select_14 select c_95_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_95: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_95_sub_sel,
      x_i => c_89,
      y_i => c_94,
      z_o => c_95_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_95_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 96 and associated fundamentals [[19], [-11], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 97 and associated fundamentals [[19], [-11], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 98 and associated fundamentals [[19], [-11], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 99 and associated fundamentals [[19], [-11], [330]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 100 and associated fundamentals [[-486], [-11], [411]]
  c_100_95_0_False_resize <= c_95(24 downto 0);
  c_100_95_0_False_shift <= shift_left(c_100_95_0_False_resize, 0);
  c_100_99_0_False_resize <= c_99;
  c_100_99_0_False_shift <= shift_left(c_100_99_0_False_resize, 0);
  with config_select_15 select c_100_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_100_sel is
        when "0" => c_100 <= c_100_95_0_False_shift;
        when others => c_100 <= c_100_99_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 101 and associated fundamentals [[211], [204], [516]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 102 and associated fundamentals [[211], [204], [516]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 103 and associated fundamentals [[925], [256], [516]]
  c_103_86_8_False_resize <= resize(c_86, 26);
  c_103_86_8_False_shift <= shift_left(c_103_86_8_False_resize, 8);
  c_103_102_0_False_resize <= c_102;
  c_103_102_0_False_shift <= shift_left(c_103_102_0_False_resize, 0);
  c_103_55_0_False_resize <= c_55;
  c_103_55_0_False_shift <= shift_left(c_103_55_0_False_resize, 0);
  with config_select_13 select c_103_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_103_sel is
        when "00" => c_103 <= c_103_86_8_False_shift;
        when "01" => c_103 <= c_103_102_0_False_shift;
        when others => c_103 <= c_103_55_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 104 and associated fundamentals [[925], [256], [516]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 105 and associated fundamentals [[925], [256], [516]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'add' in stage 16 with id 106 and associated fundamentals [[439], [245], [927]]
  inst_adder_node_106: entity work.adder_node
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
      x_i => c_100,
      y_i => c_105,
      z_o => c_106_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_106_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 107 and associated fundamentals [[313], [77], [-33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 108 and associated fundamentals [[313], [77], [-33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 109 and associated fundamentals [[925], [77], [952]]
  c_109_108_0_False_resize <= resize(c_108, 26);
  c_109_108_0_False_shift <= shift_left(c_109_108_0_False_resize, 0);
  c_109_71_0_False_resize <= c_71;
  c_109_71_0_False_shift <= shift_left(c_109_71_0_False_resize, 0);
  c_109_55_0_False_resize <= c_55;
  c_109_55_0_False_shift <= shift_left(c_109_55_0_False_resize, 0);
  with config_select_13 select c_109_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_109_sel is
        when "00" => c_109 <= c_109_108_0_False_shift;
        when "01" => c_109 <= c_109_71_0_False_shift;
        when others => c_109 <= c_109_55_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 110 and associated fundamentals [[406], [220], [501]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 111 and associated fundamentals [[406], [220], [501]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 112 and associated fundamentals [[844], [880], [999]]
  c_112_102_2_False_resize <= c_102;
  c_112_102_2_False_shift <= shift_left(c_112_102_2_False_resize, 2);
  c_112_55_0_False_resize <= c_55;
  c_112_55_0_False_shift <= shift_left(c_112_55_0_False_resize, 0);
  c_112_111_2_False_resize <= resize(c_111, 26);
  c_112_111_2_False_shift <= shift_left(c_112_111_2_False_resize, 2);
  with config_select_13 select c_112_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_112_sel is
        when "00" => c_112 <= c_112_102_2_False_shift;
        when "01" => c_112 <= c_112_55_0_False_shift;
        when others => c_112 <= c_112_111_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 113 and associated fundamentals [[406], [220], [501]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 114 and associated fundamentals [[406], [220], [501]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 115 and associated fundamentals [[406], [220], [501]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 116 and associated fundamentals [[406], [220], [501]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 117 and associated fundamentals [[-486], [705], [411]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 118 and associated fundamentals [[-486], [705], [411]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 119 and associated fundamentals [[812], [705], [927]]
  c_119_118_0_False_resize <= c_118;
  c_119_118_0_False_shift <= shift_left(c_119_118_0_False_resize, 0);
  c_119_106_0_False_resize <= c_106;
  c_119_106_0_False_shift <= shift_left(c_119_106_0_False_resize, 0);
  c_119_116_1_False_resize <= resize(c_116, 26);
  c_119_116_1_False_shift <= shift_left(c_119_116_1_False_resize, 1);
  with config_select_17 select c_119_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_119_sel is
        when "00" => c_119 <= c_119_118_0_False_shift;
        when "01" => c_119 <= c_119_106_0_False_shift;
        when others => c_119 <= c_119_116_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 120 and associated fundamentals [[244], [794], [479]]
  c_120_37_0_False_resize <= c_37;
  c_120_37_0_False_shift <= shift_left(c_120_37_0_False_resize, 0);
  c_120_49_2_False_resize <= resize(c_49, 26);
  c_120_49_2_False_shift <= shift_left(c_120_49_2_False_resize, 2);
  with config_select_7 select c_120_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_120_sel is
        when "0" => c_120 <= c_120_37_0_False_shift;
        when others => c_120 <= c_120_49_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 121 and associated fundamentals [[313], [77], [-33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 122 and associated fundamentals [[313], [77], [-33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 123 and associated fundamentals [[339], [-796], [421]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 124 and associated fundamentals [[339], [-796], [421]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 125 and associated fundamentals [[-486], [-796], [-132]]
  c_125_95_0_False_resize <= c_95;
  c_125_95_0_False_shift <= shift_left(c_125_95_0_False_resize, 0);
  c_125_124_0_False_resize <= c_124;
  c_125_124_0_False_shift <= shift_left(c_125_124_0_False_resize, 0);
  c_125_122_2_False_resize <= resize(c_122, 26);
  c_125_122_2_False_shift <= shift_left(c_125_122_2_False_resize, 2);
  with config_select_15 select c_125_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_125_sel is
        when "00" => c_125 <= c_125_95_0_False_shift;
        when "01" => c_125 <= c_125_124_0_False_shift;
        when others => c_125 <= c_125_122_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 126 and associated fundamentals [[33], [802], [334]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 127 and associated fundamentals [[33], [802], [334]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 128 and associated fundamentals [[33], [802], [334]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 129 and associated fundamentals [[33], [802], [334]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 130 and associated fundamentals [[626], [802], [1002]]
  c_130_44_1_False_resize <= resize(c_44, 26);
  c_130_44_1_False_shift <= shift_left(c_130_44_1_False_resize, 1);
  c_130_58_1_False_resize <= resize(c_58, 26);
  c_130_58_1_False_shift <= shift_left(c_130_58_1_False_resize, 1);
  c_130_129_0_False_resize <= c_129;
  c_130_129_0_False_shift <= shift_left(c_130_129_0_False_resize, 0);
  with config_select_11 select c_130_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_130_sel is
        when "00" => c_130 <= c_130_44_1_False_shift;
        when "01" => c_130 <= c_130_58_1_False_shift;
        when others => c_130 <= c_130_129_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 131 and associated fundamentals [[317], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 132 and associated fundamentals [[317], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 133 and associated fundamentals [[317], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 134 and associated fundamentals [[317], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 135 and associated fundamentals [[317], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_134 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 136 and associated fundamentals [[317], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_135 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 137 and associated fundamentals [[994], [177], [952]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 138 and associated fundamentals [[994], [177], [952]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 139 and associated fundamentals [[317], [354], [822]]
  c_139_136_0_False_resize <= c_136;
  c_139_136_0_False_shift <= shift_left(c_139_136_0_False_resize, 0);
  c_139_95_1_False_resize <= c_95;
  c_139_95_1_False_shift <= shift_left(c_139_95_1_False_resize, 1);
  c_139_138_1_False_resize <= c_138;
  c_139_138_1_False_shift <= shift_left(c_139_138_1_False_resize, 1);
  with config_select_15 select c_139_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_139_sel is
        when "00" => c_139 <= c_139_136_0_False_shift;
        when "01" => c_139 <= c_139_95_1_False_shift;
        when others => c_139 <= c_139_138_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 140 and associated fundamentals [[211], [204], [516]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 141 and associated fundamentals [[211], [204], [516]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 142 and associated fundamentals [[211], [204], [516]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 143 and associated fundamentals [[211], [204], [516]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 144 and associated fundamentals [[339], [-796], [421]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 145 and associated fundamentals [[339], [-796], [421]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 146 and associated fundamentals [[878], [408], [421]]
  c_146_143_1_False_resize <= c_143;
  c_146_143_1_False_shift <= shift_left(c_146_143_1_False_resize, 1);
  c_146_145_0_False_resize <= c_145;
  c_146_145_0_False_shift <= shift_left(c_146_145_0_False_resize, 0);
  c_146_106_1_False_resize <= c_106;
  c_146_106_1_False_shift <= shift_left(c_146_106_1_False_resize, 1);
  with config_select_17 select c_146_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_146_sel is
        when "00" => c_146 <= c_146_143_1_False_shift;
        when "01" => c_146 <= c_146_145_0_False_shift;
        when others => c_146 <= c_146_106_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 147 and associated fundamentals [[61], [50], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 148 and associated fundamentals [[61], [50], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 149 and associated fundamentals [[61], [50], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 150 and associated fundamentals [[61], [50], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_149 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 151 and associated fundamentals [[994], [177], [952]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 152 and associated fundamentals [[994], [177], [952]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 153 and associated fundamentals [[994], [245], [159]]
  c_153_152_0_False_resize <= c_152;
  c_153_152_0_False_shift <= shift_left(c_153_152_0_False_resize, 0);
  c_153_106_0_False_resize <= c_106;
  c_153_106_0_False_shift <= shift_left(c_153_106_0_False_resize, 0);
  c_153_150_0_False_resize <= resize(c_150, 26);
  c_153_150_0_False_shift <= shift_left(c_153_150_0_False_resize, 0);
  with config_select_17 select c_153_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_153_sel is
        when "00" => c_153 <= c_153_152_0_False_shift;
        when "01" => c_153 <= c_153_106_0_False_shift;
        when others => c_153 <= c_153_150_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 154 and associated fundamentals [[33], [802], [334]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 155 and associated fundamentals [[33], [802], [334]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 156 and associated fundamentals [[339], [216], [334]]
  c_156_155_0_False_resize <= c_155(24 downto 0);
  c_156_155_0_False_shift <= shift_left(c_156_155_0_False_resize, 0);
  c_156_55_2_False_resize <= c_55(24 downto 0);
  c_156_55_2_False_shift <= shift_left(c_156_55_2_False_resize, 2);
  c_156_84_0_False_resize <= c_84(24 downto 0);
  c_156_84_0_False_shift <= shift_left(c_156_84_0_False_resize, 0);
  with config_select_13 select c_156_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_156_sel is
        when "00" => c_156 <= c_156_155_0_False_shift;
        when "01" => c_156 <= c_156_55_2_False_shift;
        when others => c_156 <= c_156_84_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 157 and associated fundamentals [[925], [77], [952]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 158 and associated fundamentals [[925], [77], [952]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 159 and associated fundamentals [[925], [77], [952]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_158 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 160 and associated fundamentals [[925], [77], [952]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_159 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 161 and associated fundamentals [[925], [77], [952]]
  c_161_resize <= c_160;
  c_161 <= shift_left(c_161_resize, 0);
  -- node of type 'register' in stage 14 with id 162 and associated fundamentals [[844], [880], [999]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 163 and associated fundamentals [[844], [880], [999]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_162 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 164 and associated fundamentals [[844], [880], [999]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 165 and associated fundamentals [[844], [880], [999]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_165 <= c_164 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 166 and associated fundamentals [[844], [880], [999]]
  c_166_resize <= c_165;
  c_166 <= shift_left(c_166_resize, 0);
  -- node of type 'output' in stage 17 with id 167 and associated fundamentals [[812], [705], [927]]
  c_167_resize <= c_119;
  c_167 <= shift_left(c_167_resize, 0);
  -- node of type 'register' in stage 8 with id 168 and associated fundamentals [[244], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_168 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 169 and associated fundamentals [[244], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_169 <= c_168 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 170 and associated fundamentals [[244], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_170 <= c_169 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 171 and associated fundamentals [[244], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_171 <= c_170 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 172 and associated fundamentals [[244], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_172 <= c_171 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 173 and associated fundamentals [[244], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_173 <= c_172 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 174 and associated fundamentals [[244], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_174 <= c_173 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 175 and associated fundamentals [[244], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_175 <= c_174 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 176 and associated fundamentals [[244], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_175 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 177 and associated fundamentals [[244], [794], [479]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_177 <= c_176 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 178 and associated fundamentals [[244], [794], [479]]
  c_178_resize <= c_177;
  c_178 <= shift_left(c_178_resize, 0);
  -- node of type 'register' in stage 16 with id 179 and associated fundamentals [[-486], [-796], [-132]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_179 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 180 and associated fundamentals [[-486], [-796], [-132]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_180 <= c_179 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 181 and associated fundamentals [[486], [796], [132]]
  c_181_resize <= c_180;
  c_181 <= -shift_left(c_181_resize, 0);
  -- node of type 'register' in stage 12 with id 182 and associated fundamentals [[626], [802], [1002]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_182 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 183 and associated fundamentals [[626], [802], [1002]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_183 <= c_182 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 184 and associated fundamentals [[626], [802], [1002]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_184 <= c_183 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 185 and associated fundamentals [[626], [802], [1002]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_185 <= c_184 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 186 and associated fundamentals [[626], [802], [1002]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_186 <= c_185 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 187 and associated fundamentals [[626], [802], [1002]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_187 <= c_186 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 188 and associated fundamentals [[626], [802], [1002]]
  c_188_resize <= c_187;
  c_188 <= shift_left(c_188_resize, 0);
  -- node of type 'register' in stage 16 with id 189 and associated fundamentals [[317], [354], [822]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_189 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 190 and associated fundamentals [[317], [354], [822]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_190 <= c_189 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 191 and associated fundamentals [[317], [354], [822]]
  c_191_resize <= c_190;
  c_191 <= shift_left(c_191_resize, 0);
  -- node of type 'output' in stage 17 with id 192 and associated fundamentals [[878], [408], [421]]
  c_192_resize <= c_146;
  c_192 <= shift_left(c_192_resize, 0);
  -- node of type 'output' in stage 17 with id 193 and associated fundamentals [[994], [245], [159]]
  c_193_resize <= c_153;
  c_193 <= shift_left(c_193_resize, 0);
  -- node of type 'register' in stage 14 with id 194 and associated fundamentals [[339], [216], [334]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_194 <= c_156 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 195 and associated fundamentals [[339], [216], [334]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_195 <= c_194 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 196 and associated fundamentals [[339], [216], [334]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_196 <= c_195 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 197 and associated fundamentals [[339], [216], [334]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_197 <= c_196 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 198 and associated fundamentals [[339], [216], [334]]
  c_198_resize <= c_197;
  c_198 <= shift_left(c_198_resize, 0);
end architecture;

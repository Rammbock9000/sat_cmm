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
  signal config_select_14: std_logic_vector(1 downto 0);
  signal config_select_15: std_logic_vector(1 downto 0);
  signal config_select_16: std_logic_vector(1 downto 0);
  signal config_select_17: std_logic_vector(1 downto 0);
  signal config_select_18: std_logic_vector(1 downto 0);
  signal config_select_19: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_3_1_False_resize: signed(21 downto 0);
  signal c_6_3_1_False_shift: signed(21 downto 0);
  signal c_6_3_2_False_resize: signed(21 downto 0);
  signal c_6_3_2_False_shift: signed(21 downto 0);
  signal c_6_5_0_False_resize: signed(21 downto 0);
  signal c_6_5_0_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_5_0_False_resize: signed(21 downto 0);
  signal c_7_5_0_False_shift: signed(21 downto 0);
  signal c_7_5_3_False_resize: signed(21 downto 0);
  signal c_7_5_3_False_shift: signed(21 downto 0);
  signal c_7_3_4_False_resize: signed(21 downto 0);
  signal c_7_3_4_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(19 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_10_4_False_resize: signed(21 downto 0);
  signal c_11_10_4_False_shift: signed(21 downto 0);
  signal c_11_8_0_False_resize: signed(21 downto 0);
  signal c_11_8_0_False_shift: signed(21 downto 0);
  signal c_11_10_2_False_resize: signed(21 downto 0);
  signal c_11_10_2_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_10_0_False_resize: signed(21 downto 0);
  signal c_12_10_0_False_shift: signed(21 downto 0);
  signal c_12_10_3_False_resize: signed(21 downto 0);
  signal c_12_10_3_False_shift: signed(21 downto 0);
  signal c_12_8_0_False_resize: signed(21 downto 0);
  signal c_12_8_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(15 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_15_2_False_resize: signed(21 downto 0);
  signal c_16_15_2_False_shift: signed(21 downto 0);
  signal c_16_8_0_False_resize: signed(21 downto 0);
  signal c_16_8_0_False_shift: signed(21 downto 0);
  signal c_16_15_1_False_resize: signed(21 downto 0);
  signal c_16_15_1_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_8_0_False_resize: signed(21 downto 0);
  signal c_17_8_0_False_shift: signed(21 downto 0);
  signal c_17_15_5_False_resize: signed(21 downto 0);
  signal c_17_15_5_False_shift: signed(21 downto 0);
  signal c_17_8_2_False_resize: signed(21 downto 0);
  signal c_17_8_2_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(21 downto 0);
  signal c_19_15_1_False_resize: signed(21 downto 0);
  signal c_19_15_1_False_shift: signed(21 downto 0);
  signal c_19_15_6_False_resize: signed(21 downto 0);
  signal c_19_15_6_False_shift: signed(21 downto 0);
  signal c_19_15_0_False_resize: signed(21 downto 0);
  signal c_19_15_0_False_shift: signed(21 downto 0);
  signal c_19_8_2_False_resize: signed(21 downto 0);
  signal c_19_8_2_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_i0_resize: signed(22 downto 0);
  signal c_21_i1_resize: signed(22 downto 0);
  signal c_21_i0_shift: signed(22 downto 0);
  signal c_21_i1_shift: signed(22 downto 0);
  signal c_21_arith: signed(22 downto 0);
  signal c_21_oshift: signed(22 downto 0);
  signal c_22: signed(15 downto 0);
  signal c_23: signed(15 downto 0);
  signal c_24: signed(19 downto 0);
  signal c_25: signed(19 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_23_4_False_resize: signed(23 downto 0);
  signal c_26_23_4_False_shift: signed(23 downto 0);
  signal c_26_25_2_False_resize: signed(23 downto 0);
  signal c_26_25_2_False_shift: signed(23 downto 0);
  signal c_26_25_3_False_resize: signed(23 downto 0);
  signal c_26_25_3_False_shift: signed(23 downto 0);
  signal c_26_13_0_False_resize: signed(23 downto 0);
  signal c_26_13_0_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_23_0_False_resize: signed(22 downto 0);
  signal c_27_23_0_False_shift: signed(22 downto 0);
  signal c_27_21_0_False_resize: signed(22 downto 0);
  signal c_27_21_0_False_shift: signed(22 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_i0_resize: signed(22 downto 0);
  signal c_28_i1_resize: signed(22 downto 0);
  signal c_28_i0_shift: signed(22 downto 0);
  signal c_28_i1_shift: signed(22 downto 0);
  signal c_28_arith: signed(22 downto 0);
  signal c_28_oshift: signed(22 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(15 downto 0);
  signal c_30: signed(15 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_30_2_False_resize: signed(22 downto 0);
  signal c_34_30_2_False_shift: signed(22 downto 0);
  signal c_34_28_0_False_resize: signed(22 downto 0);
  signal c_34_28_0_False_shift: signed(22 downto 0);
  signal c_34_33_2_False_resize: signed(22 downto 0);
  signal c_34_33_2_False_shift: signed(22 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_21_0_False_resize: signed(22 downto 0);
  signal c_35_21_0_False_shift: signed(22 downto 0);
  signal c_35_23_2_False_resize: signed(22 downto 0);
  signal c_35_23_2_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_i0_resize: signed(23 downto 0);
  signal c_38_i1_resize: signed(23 downto 0);
  signal c_38_i0_shift: signed(23 downto 0);
  signal c_38_i1_shift: signed(23 downto 0);
  signal c_38_arith: signed(23 downto 0);
  signal c_38_oshift: signed(23 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(15 downto 0);
  signal c_40: signed(15 downto 0);
  signal c_41: signed(19 downto 0);
  signal c_42: signed(19 downto 0);
  signal c_43: signed(19 downto 0);
  signal c_44: signed(19 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_44_0_False_resize: signed(23 downto 0);
  signal c_45_44_0_False_shift: signed(23 downto 0);
  signal c_45_44_1_False_resize: signed(23 downto 0);
  signal c_45_44_1_False_shift: signed(23 downto 0);
  signal c_45_38_0_False_resize: signed(23 downto 0);
  signal c_45_38_0_False_shift: signed(23 downto 0);
  signal c_45_40_3_False_resize: signed(23 downto 0);
  signal c_45_40_3_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_46_28_0_False_resize: signed(22 downto 0);
  signal c_46_28_0_False_shift: signed(22 downto 0);
  signal c_46_30_0_False_resize: signed(22 downto 0);
  signal c_46_30_0_False_shift: signed(22 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_i0_resize: signed(23 downto 0);
  signal c_49_i1_resize: signed(23 downto 0);
  signal c_49_i0_shift: signed(23 downto 0);
  signal c_49_i1_shift: signed(23 downto 0);
  signal c_49_arith: signed(23 downto 0);
  signal c_49_oshift: signed(23 downto 0);
  signal c_49_sub_sel: std_logic;
  signal c_50: signed(23 downto 0);
  signal c_50_33_2_False_resize: signed(23 downto 0);
  signal c_50_33_2_False_shift: signed(23 downto 0);
  signal c_50_33_1_False_resize: signed(23 downto 0);
  signal c_50_33_1_False_shift: signed(23 downto 0);
  signal c_50_33_0_False_resize: signed(23 downto 0);
  signal c_50_33_0_False_shift: signed(23 downto 0);
  signal c_50_28_0_False_resize: signed(23 downto 0);
  signal c_50_28_0_False_shift: signed(23 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_28_0_False_resize: signed(23 downto 0);
  signal c_53_28_0_False_shift: signed(23 downto 0);
  signal c_53_28_3_False_resize: signed(23 downto 0);
  signal c_53_28_3_False_shift: signed(23 downto 0);
  signal c_53_52_1_False_resize: signed(23 downto 0);
  signal c_53_52_1_False_shift: signed(23 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_i0_resize: signed(23 downto 0);
  signal c_54_i1_resize: signed(23 downto 0);
  signal c_54_i0_shift: signed(23 downto 0);
  signal c_54_i1_shift: signed(23 downto 0);
  signal c_54_arith: signed(23 downto 0);
  signal c_54_oshift: signed(23 downto 0);
  signal c_54_sub_sel: std_logic;
  signal c_55: signed(22 downto 0);
  signal c_55_21_0_False_resize: signed(22 downto 0);
  signal c_55_21_0_False_shift: signed(22 downto 0);
  signal c_55_23_5_False_resize: signed(22 downto 0);
  signal c_55_23_5_False_shift: signed(22 downto 0);
  signal c_55_31_1_False_resize: signed(22 downto 0);
  signal c_55_31_1_False_shift: signed(22 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(22 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_60_49_0_False_resize: signed(22 downto 0);
  signal c_60_49_0_False_shift: signed(22 downto 0);
  signal c_60_59_0_False_resize: signed(22 downto 0);
  signal c_60_59_0_False_shift: signed(22 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(22 downto 0);
  signal c_64: signed(22 downto 0);
  signal c_65: signed(22 downto 0);
  signal c_66: signed(22 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_67_i0_resize: signed(23 downto 0);
  signal c_67_i1_resize: signed(23 downto 0);
  signal c_67_i0_shift: signed(23 downto 0);
  signal c_67_i1_shift: signed(23 downto 0);
  signal c_67_arith: signed(23 downto 0);
  signal c_67_oshift: signed(23 downto 0);
  signal c_67_sub_sel: std_logic;
  signal c_68: signed(20 downto 0);
  signal c_68_5_0_False_resize: signed(20 downto 0);
  signal c_68_5_0_False_shift: signed(20 downto 0);
  signal c_68_3_3_False_resize: signed(20 downto 0);
  signal c_68_3_3_False_shift: signed(20 downto 0);
  signal c_68_sel: std_logic_vector(0 downto 0);
  signal c_69: signed(15 downto 0);
  signal c_70: signed(15 downto 0);
  signal c_71: signed(15 downto 0);
  signal c_72: signed(15 downto 0);
  signal c_73: signed(22 downto 0);
  signal c_74: signed(22 downto 0);
  signal c_75: signed(22 downto 0);
  signal c_76: signed(22 downto 0);
  signal c_77: signed(22 downto 0);
  signal c_78: signed(22 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_83: signed(22 downto 0);
  signal c_83_78_0_False_resize: signed(22 downto 0);
  signal c_83_78_0_False_shift: signed(22 downto 0);
  signal c_83_72_5_False_resize: signed(22 downto 0);
  signal c_83_72_5_False_shift: signed(22 downto 0);
  signal c_83_67_0_False_resize: signed(22 downto 0);
  signal c_83_67_0_False_shift: signed(22 downto 0);
  signal c_83_82_1_False_resize: signed(22 downto 0);
  signal c_83_82_1_False_shift: signed(22 downto 0);
  signal c_83_sel: std_logic_vector(1 downto 0);
  signal c_84: signed(20 downto 0);
  signal c_85: signed(20 downto 0);
  signal c_86: signed(20 downto 0);
  signal c_87: signed(20 downto 0);
  signal c_88: signed(20 downto 0);
  signal c_89: signed(20 downto 0);
  signal c_90: signed(20 downto 0);
  signal c_91: signed(20 downto 0);
  signal c_92: signed(20 downto 0);
  signal c_93: signed(20 downto 0);
  signal c_94: signed(20 downto 0);
  signal c_95: signed(20 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_96_i0_resize: signed(23 downto 0);
  signal c_96_i1_resize: signed(23 downto 0);
  signal c_96_i0_shift: signed(23 downto 0);
  signal c_96_i1_shift: signed(23 downto 0);
  signal c_96_arith: signed(23 downto 0);
  signal c_96_oshift: signed(23 downto 0);
  signal c_96_sub_sel: std_logic;
  signal c_97: signed(22 downto 0);
  signal c_98: signed(22 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_102: signed(23 downto 0);
  signal c_103: signed(23 downto 0);
  signal c_103_102_0_False_resize: signed(23 downto 0);
  signal c_103_102_0_False_shift: signed(23 downto 0);
  signal c_103_98_0_False_resize: signed(23 downto 0);
  signal c_103_98_0_False_shift: signed(23 downto 0);
  signal c_103_96_0_False_resize: signed(23 downto 0);
  signal c_103_96_0_False_shift: signed(23 downto 0);
  signal c_103_sel: std_logic_vector(1 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_106: signed(23 downto 0);
  signal c_107: signed(23 downto 0);
  signal c_108: signed(23 downto 0);
  signal c_108_54_0_False_resize: signed(23 downto 0);
  signal c_108_54_0_False_shift: signed(23 downto 0);
  signal c_108_107_0_False_resize: signed(23 downto 0);
  signal c_108_107_0_False_shift: signed(23 downto 0);
  signal c_108_sel: std_logic_vector(0 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_109_82_0_False_resize: signed(23 downto 0);
  signal c_109_82_0_False_shift: signed(23 downto 0);
  signal c_109_67_0_False_resize: signed(23 downto 0);
  signal c_109_67_0_False_shift: signed(23 downto 0);
  signal c_109_sel: std_logic_vector(0 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_110_18_0_False_resize: signed(23 downto 0);
  signal c_110_18_0_False_shift: signed(23 downto 0);
  signal c_110_23_6_False_resize: signed(23 downto 0);
  signal c_110_23_6_False_shift: signed(23 downto 0);
  signal c_110_13_0_False_resize: signed(23 downto 0);
  signal c_110_13_0_False_shift: signed(23 downto 0);
  signal c_110_sel: std_logic_vector(1 downto 0);
  signal c_111: signed(23 downto 0);
  signal c_112: signed(23 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_115: signed(23 downto 0);
  signal c_116: signed(23 downto 0);
  signal c_117: signed(23 downto 0);
  signal c_117_76_1_False_resize: signed(23 downto 0);
  signal c_117_76_1_False_shift: signed(23 downto 0);
  signal c_117_49_2_False_resize: signed(23 downto 0);
  signal c_117_49_2_False_shift: signed(23 downto 0);
  signal c_117_116_0_False_resize: signed(23 downto 0);
  signal c_117_116_0_False_shift: signed(23 downto 0);
  signal c_117_sel: std_logic_vector(1 downto 0);
  signal c_118: signed(19 downto 0);
  signal c_119: signed(19 downto 0);
  signal c_120: signed(19 downto 0);
  signal c_121: signed(19 downto 0);
  signal c_122: signed(22 downto 0);
  signal c_123: signed(22 downto 0);
  signal c_124: signed(22 downto 0);
  signal c_125: signed(22 downto 0);
  signal c_126: signed(22 downto 0);
  signal c_127: signed(22 downto 0);
  signal c_128: signed(23 downto 0);
  signal c_128_127_0_False_resize: signed(23 downto 0);
  signal c_128_127_0_False_shift: signed(23 downto 0);
  signal c_128_121_6_False_resize: signed(23 downto 0);
  signal c_128_121_6_False_shift: signed(23 downto 0);
  signal c_128_78_1_False_resize: signed(23 downto 0);
  signal c_128_78_1_False_shift: signed(23 downto 0);
  signal c_128_67_0_False_resize: signed(23 downto 0);
  signal c_128_67_0_False_shift: signed(23 downto 0);
  signal c_128_sel: std_logic_vector(1 downto 0);
  signal c_129: signed(23 downto 0);
  signal c_130: signed(23 downto 0);
  signal c_131: signed(23 downto 0);
  signal c_132: signed(23 downto 0);
  signal c_133: signed(23 downto 0);
  signal c_134: signed(23 downto 0);
  signal c_135: signed(23 downto 0);
  signal c_135_96_0_False_resize: signed(23 downto 0);
  signal c_135_96_0_False_shift: signed(23 downto 0);
  signal c_135_134_1_False_resize: signed(23 downto 0);
  signal c_135_134_1_False_shift: signed(23 downto 0);
  signal c_135_132_0_False_resize: signed(23 downto 0);
  signal c_135_132_0_False_shift: signed(23 downto 0);
  signal c_135_sel: std_logic_vector(1 downto 0);
  signal c_136: signed(23 downto 0);
  signal c_136_49_0_False_resize: signed(23 downto 0);
  signal c_136_49_0_False_shift: signed(23 downto 0);
  signal c_136_80_0_False_resize: signed(23 downto 0);
  signal c_136_80_0_False_shift: signed(23 downto 0);
  signal c_136_sel: std_logic_vector(0 downto 0);
  signal c_137: signed(23 downto 0);
  signal c_137_123_1_False_resize: signed(23 downto 0);
  signal c_137_123_1_False_shift: signed(23 downto 0);
  signal c_137_57_1_False_resize: signed(23 downto 0);
  signal c_137_57_1_False_shift: signed(23 downto 0);
  signal c_137_54_0_False_resize: signed(23 downto 0);
  signal c_137_54_0_False_shift: signed(23 downto 0);
  signal c_137_sel: std_logic_vector(1 downto 0);
  signal c_138: signed(23 downto 0);
  signal c_138_28_1_False_resize: signed(23 downto 0);
  signal c_138_28_1_False_shift: signed(23 downto 0);
  signal c_138_52_0_False_resize: signed(23 downto 0);
  signal c_138_52_0_False_shift: signed(23 downto 0);
  signal c_138_sel: std_logic_vector(0 downto 0);
  signal c_139: signed(23 downto 0);
  signal c_139_resize: signed(23 downto 0);
  signal c_140: signed(23 downto 0);
  signal c_141: signed(23 downto 0);
  signal c_142: signed(23 downto 0);
  signal c_143: signed(23 downto 0);
  signal c_144: signed(23 downto 0);
  signal c_145: signed(23 downto 0);
  signal c_146: signed(23 downto 0);
  signal c_146_resize: signed(23 downto 0);
  signal c_147: signed(23 downto 0);
  signal c_148: signed(23 downto 0);
  signal c_149: signed(23 downto 0);
  signal c_149_resize: signed(23 downto 0);
  signal c_150: signed(23 downto 0);
  signal c_151: signed(23 downto 0);
  signal c_152: signed(23 downto 0);
  signal c_153: signed(23 downto 0);
  signal c_154: signed(23 downto 0);
  signal c_155: signed(23 downto 0);
  signal c_156: signed(23 downto 0);
  signal c_157: signed(23 downto 0);
  signal c_158: signed(23 downto 0);
  signal c_159: signed(23 downto 0);
  signal c_160: signed(23 downto 0);
  signal c_160_resize: signed(23 downto 0);
  signal c_161: signed(23 downto 0);
  signal c_162: signed(23 downto 0);
  signal c_163: signed(23 downto 0);
  signal c_164: signed(23 downto 0);
  signal c_165: signed(23 downto 0);
  signal c_165_resize: signed(23 downto 0);
  signal c_166: signed(23 downto 0);
  signal c_167: signed(23 downto 0);
  signal c_168: signed(23 downto 0);
  signal c_168_resize: signed(23 downto 0);
  signal c_169: signed(23 downto 0);
  signal c_169_resize: signed(23 downto 0);
  signal c_170: signed(23 downto 0);
  signal c_171: signed(23 downto 0);
  signal c_172: signed(23 downto 0);
  signal c_173: signed(23 downto 0);
  signal c_174: signed(23 downto 0);
  signal c_174_resize: signed(23 downto 0);
  signal c_175: signed(23 downto 0);
  signal c_176: signed(23 downto 0);
  signal c_177: signed(23 downto 0);
  signal c_178: signed(23 downto 0);
  signal c_179: signed(23 downto 0);
  signal c_180: signed(23 downto 0);
  signal c_181: signed(23 downto 0);
  signal c_181_resize: signed(23 downto 0);
  signal c_182: signed(23 downto 0);
  signal c_183: signed(23 downto 0);
  signal c_184: signed(23 downto 0);
  signal c_185: signed(23 downto 0);
  signal c_186: signed(23 downto 0);
  signal c_187: signed(23 downto 0);
  signal c_188: signed(23 downto 0);
  signal c_189: signed(23 downto 0);
  signal c_190: signed(23 downto 0);
  signal c_190_resize: signed(23 downto 0);
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
  -- output node 0 with id 139
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_139);
    end if;
  end process;
  -- output node 1 with id 146
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_146);
    end if;
  end process;
  -- output node 2 with id 149
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_149);
    end if;
  end process;
  -- output node 3 with id 160
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_160);
    end if;
  end process;
  -- output node 4 with id 165
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_165);
    end if;
  end process;
  -- output node 5 with id 168
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_168);
    end if;
  end process;
  -- output node 6 with id 169
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_169);
    end if;
  end process;
  -- output node 7 with id 174
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_174);
    end if;
  end process;
  -- output node 8 with id 181
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_181);
    end if;
  end process;
  -- output node 9 with id 190
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_190);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [2], [2]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "10",
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [8], [8], [1]]
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_3_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [10], [12], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 19,
      w_o => 20,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[6], [20], [48], [1]]
  c_6_3_1_False_resize <= resize(c_3, 22);
  c_6_3_1_False_shift <= shift_left(c_6_3_1_False_resize, 1);
  c_6_3_2_False_resize <= resize(c_3, 22);
  c_6_3_2_False_shift <= shift_left(c_6_3_2_False_resize, 2);
  c_6_5_0_False_resize <= resize(c_5, 22);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_1_False_shift;
        when "01" => c_6 <= c_6_3_2_False_shift;
        when others => c_6 <= c_6_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[1], [1], [8], [48]]
  c_7_5_0_False_resize <= resize(c_5, 22);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_5_3_False_resize <= resize(c_5, 22);
  c_7_5_3_False_shift <= shift_left(c_7_5_3_False_resize, 3);
  c_7_3_4_False_resize <= resize(c_3, 22);
  c_7_3_4_False_shift <= shift_left(c_7_3_4_False_resize, 4);
  with config_select_3 select c_7_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_5_0_False_shift;
        when "01" => c_7 <= c_7_5_3_False_shift;
        when others => c_7 <= c_7_3_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[11], [41], [104], [-46]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[3], [10], [12], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[3], [10], [12], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[48], [41], [48], [48]]
  c_11_10_4_False_resize <= resize(c_10, 22);
  c_11_10_4_False_shift <= shift_left(c_11_10_4_False_resize, 4);
  c_11_8_0_False_resize <= c_8(21 downto 0);
  c_11_8_0_False_shift <= shift_left(c_11_8_0_False_resize, 0);
  c_11_10_2_False_resize <= resize(c_10, 22);
  c_11_10_2_False_shift <= shift_left(c_11_10_2_False_resize, 2);
  with config_select_5 select c_11_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_10_4_False_shift;
        when "01" => c_11 <= c_11_8_0_False_shift;
        when others => c_11 <= c_11_10_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[24], [41], [12], [3]]
  c_12_10_0_False_resize <= resize(c_10, 22);
  c_12_10_0_False_shift <= shift_left(c_12_10_0_False_resize, 0);
  c_12_10_3_False_resize <= resize(c_10, 22);
  c_12_10_3_False_shift <= shift_left(c_12_10_3_False_resize, 3);
  c_12_8_0_False_resize <= c_8(21 downto 0);
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_10_0_False_shift;
        when "01" => c_12 <= c_12_10_3_False_shift;
        when others => c_12 <= c_12_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[216], [205], [180], [189]]
  with config_select_6 select c_13_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[2], [41], [4], [4]]
  c_16_15_2_False_resize <= resize(c_15, 22);
  c_16_15_2_False_shift <= shift_left(c_16_15_2_False_resize, 2);
  c_16_8_0_False_resize <= c_8(21 downto 0);
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  c_16_15_1_False_resize <= resize(c_15, 22);
  c_16_15_1_False_shift <= shift_left(c_16_15_1_False_resize, 1);
  with config_select_5 select c_16_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_15_2_False_shift;
        when "01" => c_16 <= c_16_8_0_False_shift;
        when others => c_16 <= c_16_15_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[44], [32], [32], [-46]]
  c_17_8_0_False_resize <= c_8(21 downto 0);
  c_17_8_0_False_shift <= shift_left(c_17_8_0_False_resize, 0);
  c_17_15_5_False_resize <= resize(c_15, 22);
  c_17_15_5_False_shift <= shift_left(c_17_15_5_False_resize, 5);
  c_17_8_2_False_resize <= c_8(21 downto 0);
  c_17_8_2_False_shift <= shift_left(c_17_8_2_False_resize, 2);
  with config_select_5 select c_17_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_8_0_False_shift;
        when "01" => c_17 <= c_17_15_5_False_shift;
        when others => c_17 <= c_17_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 18 and associated fundamentals [[-174], [-87], [132], [188]]
  with config_select_6 select c_18_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[44], [1], [2], [64]]
  c_19_15_1_False_resize <= resize(c_15, 22);
  c_19_15_1_False_shift <= shift_left(c_19_15_1_False_resize, 1);
  c_19_15_6_False_resize <= resize(c_15, 22);
  c_19_15_6_False_shift <= shift_left(c_19_15_6_False_resize, 6);
  c_19_15_0_False_resize <= resize(c_15, 22);
  c_19_15_0_False_shift <= shift_left(c_19_15_0_False_resize, 0);
  c_19_8_2_False_resize <= c_8(21 downto 0);
  c_19_8_2_False_shift <= shift_left(c_19_8_2_False_resize, 2);
  with config_select_5 select c_19_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_15_1_False_shift;
        when "01" => c_19 <= c_19_15_6_False_shift;
        when "10" => c_19 <= c_19_15_0_False_shift;
        when others => c_19 <= c_19_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[11], [41], [104], [-46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 21 and associated fundamentals [[99], [43], [108], [82]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[3], [10], [12], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[3], [10], [12], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[16], [80], [48], [189]]
  c_26_23_4_False_resize <= resize(c_23, 24);
  c_26_23_4_False_shift <= shift_left(c_26_23_4_False_resize, 4);
  c_26_25_2_False_resize <= resize(c_25, 24);
  c_26_25_2_False_shift <= shift_left(c_26_25_2_False_resize, 2);
  c_26_25_3_False_resize <= resize(c_25, 24);
  c_26_25_3_False_shift <= shift_left(c_26_25_3_False_resize, 3);
  c_26_13_0_False_resize <= c_13;
  c_26_13_0_False_shift <= shift_left(c_26_13_0_False_resize, 0);
  with config_select_7 select c_26_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_23_4_False_shift;
        when "01" => c_26 <= c_26_25_2_False_shift;
        when "10" => c_26 <= c_26_25_3_False_shift;
        when others => c_26 <= c_26_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 27 and associated fundamentals [[1], [1], [1], [82]]
  c_27_23_0_False_resize <= resize(c_23, 23);
  c_27_23_0_False_shift <= shift_left(c_27_23_0_False_resize, 0);
  c_27_21_0_False_resize <= c_21;
  c_27_21_0_False_shift <= shift_left(c_27_21_0_False_resize, 0);
  with config_select_7 select c_27_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_23_0_False_shift;
        when others => c_27 <= c_27_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 28 and associated fundamentals [[17], [79], [47], [107]]
  with config_select_8 select c_28_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
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
      sub_i => c_28_sub_sel,
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 30 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[11], [41], [104], [-46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[11], [41], [104], [-46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[11], [41], [104], [-46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 34 and associated fundamentals [[44], [4], [47], [107]]
  c_34_30_2_False_resize <= resize(c_30, 23);
  c_34_30_2_False_shift <= shift_left(c_34_30_2_False_resize, 2);
  c_34_28_0_False_resize <= c_28;
  c_34_28_0_False_shift <= shift_left(c_34_28_0_False_resize, 0);
  c_34_33_2_False_resize <= c_33;
  c_34_33_2_False_shift <= shift_left(c_34_33_2_False_resize, 2);
  with config_select_9 select c_34_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_30_2_False_shift;
        when "01" => c_34 <= c_34_28_0_False_shift;
        when others => c_34 <= c_34_33_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 35 and associated fundamentals [[99], [43], [108], [4]]
  c_35_21_0_False_resize <= c_21;
  c_35_21_0_False_shift <= shift_left(c_35_21_0_False_resize, 0);
  c_35_23_2_False_resize <= resize(c_23, 23);
  c_35_23_2_False_shift <= shift_left(c_35_23_2_False_resize, 2);
  with config_select_7 select c_35_sel <= 
    "0" when "10",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_21_0_False_shift;
        when others => c_35 <= c_35_23_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[99], [43], [108], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 37 and associated fundamentals [[99], [43], [108], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 38 and associated fundamentals [[187], [51], [202], [210]]
  with config_select_10 select c_38_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
  -- node of type 'register' in stage 9 with id 39 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 40 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[3], [10], [12], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[3], [10], [12], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[3], [10], [12], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 44 and associated fundamentals [[3], [10], [12], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 45 and associated fundamentals [[3], [20], [8], [210]]
  c_45_44_0_False_resize <= resize(c_44, 24);
  c_45_44_0_False_shift <= shift_left(c_45_44_0_False_resize, 0);
  c_45_44_1_False_resize <= resize(c_44, 24);
  c_45_44_1_False_shift <= shift_left(c_45_44_1_False_resize, 1);
  c_45_38_0_False_resize <= c_38;
  c_45_38_0_False_shift <= shift_left(c_45_38_0_False_resize, 0);
  c_45_40_3_False_resize <= resize(c_40, 24);
  c_45_40_3_False_shift <= shift_left(c_45_40_3_False_resize, 3);
  with config_select_11 select c_45_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_44_0_False_shift;
        when "01" => c_45 <= c_45_44_1_False_shift;
        when "10" => c_45 <= c_45_38_0_False_shift;
        when others => c_45 <= c_45_40_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 46 and associated fundamentals [[17], [79], [1], [1]]
  c_46_28_0_False_resize <= c_28;
  c_46_28_0_False_shift <= shift_left(c_46_28_0_False_resize, 0);
  c_46_30_0_False_resize <= resize(c_30, 23);
  c_46_30_0_False_shift <= shift_left(c_46_30_0_False_resize, 0);
  with config_select_9 select c_46_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_28_0_False_shift;
        when others => c_46 <= c_46_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[17], [79], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 48 and associated fundamentals [[17], [79], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 49 and associated fundamentals [[-14], [99], [7], [211]]
  with config_select_12 select c_49_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_49: entity work.adder_node
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
  -- node of type 'mux' in stage 9 with id 50 and associated fundamentals [[11], [164], [47], [-92]]
  c_50_33_2_False_resize <= resize(c_33, 24);
  c_50_33_2_False_shift <= shift_left(c_50_33_2_False_resize, 2);
  c_50_33_1_False_resize <= resize(c_33, 24);
  c_50_33_1_False_shift <= shift_left(c_50_33_1_False_resize, 1);
  c_50_33_0_False_resize <= resize(c_33, 24);
  c_50_33_0_False_shift <= shift_left(c_50_33_0_False_resize, 0);
  c_50_28_0_False_resize <= resize(c_28, 24);
  c_50_28_0_False_shift <= shift_left(c_50_28_0_False_resize, 0);
  with config_select_9 select c_50_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_33_2_False_shift;
        when "01" => c_50 <= c_50_33_1_False_shift;
        when "10" => c_50 <= c_50_33_0_False_shift;
        when others => c_50 <= c_50_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 51 and associated fundamentals [[99], [43], [108], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 52 and associated fundamentals [[99], [43], [108], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 53 and associated fundamentals [[136], [86], [216], [107]]
  c_53_28_0_False_resize <= resize(c_28, 24);
  c_53_28_0_False_shift <= shift_left(c_53_28_0_False_resize, 0);
  c_53_28_3_False_resize <= resize(c_28, 24);
  c_53_28_3_False_shift <= shift_left(c_53_28_3_False_resize, 3);
  c_53_52_1_False_resize <= resize(c_52, 24);
  c_53_52_1_False_shift <= shift_left(c_53_52_1_False_resize, 1);
  with config_select_9 select c_53_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "00" => c_53 <= c_53_28_0_False_shift;
        when "01" => c_53 <= c_53_28_3_False_shift;
        when others => c_53 <= c_53_52_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 54 and associated fundamentals [[147], [250], [-169], [-199]]
  with config_select_10 select c_54_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_54: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_54_sub_sel,
      x_i => c_50,
      y_i => c_53,
      z_o => c_54_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_54_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 55 and associated fundamentals [[32], [82], [108], [32]]
  c_55_21_0_False_resize <= c_21;
  c_55_21_0_False_shift <= shift_left(c_55_21_0_False_resize, 0);
  c_55_23_5_False_resize <= resize(c_23, 23);
  c_55_23_5_False_shift <= shift_left(c_55_23_5_False_resize, 5);
  c_55_31_1_False_resize <= c_31;
  c_55_31_1_False_shift <= shift_left(c_55_31_1_False_resize, 1);
  with config_select_7 select c_55_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "00" => c_55 <= c_55_21_0_False_shift;
        when "01" => c_55 <= c_55_23_5_False_shift;
        when others => c_55 <= c_55_31_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[17], [79], [47], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[17], [79], [47], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 58 and associated fundamentals [[17], [79], [47], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 59 and associated fundamentals [[17], [79], [47], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 60 and associated fundamentals [[-14], [79], [7], [107]]
  c_60_49_0_False_resize <= c_49(22 downto 0);
  c_60_49_0_False_shift <= shift_left(c_60_49_0_False_resize, 0);
  c_60_59_0_False_resize <= c_59;
  c_60_59_0_False_shift <= shift_left(c_60_59_0_False_resize, 0);
  with config_select_13 select c_60_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_49_0_False_shift;
        when others => c_60 <= c_60_59_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 61 and associated fundamentals [[32], [82], [108], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[32], [82], [108], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[32], [82], [108], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 64 and associated fundamentals [[32], [82], [108], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 65 and associated fundamentals [[32], [82], [108], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 66 and associated fundamentals [[32], [82], [108], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 67 and associated fundamentals [[78], [243], [223], [171]]
  with config_select_14 select c_67_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_67: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      x_i => c_66,
      y_i => c_60,
      z_o => c_67_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_67_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 68 and associated fundamentals [[1], [1], [1], [24]]
  c_68_5_0_False_resize <= resize(c_5, 21);
  c_68_5_0_False_shift <= shift_left(c_68_5_0_False_resize, 0);
  c_68_3_3_False_resize <= resize(c_3, 21);
  c_68_3_3_False_shift <= shift_left(c_68_3_3_False_resize, 3);
  with config_select_3 select c_68_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_68_sel is
        when "0" => c_68 <= c_68_5_0_False_shift;
        when others => c_68 <= c_68_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 69 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 70 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 71 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 72 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 73 and associated fundamentals [[11], [41], [104], [-46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 74 and associated fundamentals [[11], [41], [104], [-46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 75 and associated fundamentals [[11], [41], [104], [-46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 76 and associated fundamentals [[11], [41], [104], [-46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 77 and associated fundamentals [[11], [41], [104], [-46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 78 and associated fundamentals [[11], [41], [104], [-46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 79 and associated fundamentals [[187], [51], [202], [210]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 80 and associated fundamentals [[187], [51], [202], [210]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 81 and associated fundamentals [[187], [51], [202], [210]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 82 and associated fundamentals [[187], [51], [202], [210]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 83 and associated fundamentals [[78], [102], [32], [-46]]
  c_83_78_0_False_resize <= c_78;
  c_83_78_0_False_shift <= shift_left(c_83_78_0_False_resize, 0);
  c_83_72_5_False_resize <= resize(c_72, 23);
  c_83_72_5_False_shift <= shift_left(c_83_72_5_False_resize, 5);
  c_83_67_0_False_resize <= c_67(22 downto 0);
  c_83_67_0_False_shift <= shift_left(c_83_67_0_False_resize, 0);
  c_83_82_1_False_resize <= c_82(22 downto 0);
  c_83_82_1_False_shift <= shift_left(c_83_82_1_False_resize, 1);
  with config_select_15 select c_83_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_83_sel is
        when "00" => c_83 <= c_83_78_0_False_shift;
        when "01" => c_83 <= c_83_72_5_False_shift;
        when "10" => c_83 <= c_83_67_0_False_shift;
        when others => c_83 <= c_83_82_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 84 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 85 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 86 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 87 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 88 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 89 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 90 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 91 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 92 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 93 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 94 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 95 and associated fundamentals [[1], [1], [1], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 96 and associated fundamentals [[157], [-203], [-63], [116]]
  with config_select_16 select c_96_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_96: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
      w_o => 24,
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
      sub_i => c_96_sub_sel,
      x_i => c_95,
      y_i => c_83,
      z_o => c_96_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_96_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 97 and associated fundamentals [[11], [41], [104], [-46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 98 and associated fundamentals [[11], [41], [104], [-46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 99 and associated fundamentals [[-14], [99], [7], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 100 and associated fundamentals [[-14], [99], [7], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 101 and associated fundamentals [[-14], [99], [7], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 102 and associated fundamentals [[-14], [99], [7], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 103 and associated fundamentals [[-14], [-203], [-63], [-46]]
  c_103_102_0_False_resize <= c_102;
  c_103_102_0_False_shift <= shift_left(c_103_102_0_False_resize, 0);
  c_103_98_0_False_resize <= resize(c_98, 24);
  c_103_98_0_False_shift <= shift_left(c_103_98_0_False_resize, 0);
  c_103_96_0_False_resize <= c_96;
  c_103_96_0_False_shift <= shift_left(c_103_96_0_False_resize, 0);
  with config_select_17 select c_103_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_103_sel is
        when "00" => c_103 <= c_103_102_0_False_shift;
        when "01" => c_103 <= c_103_98_0_False_shift;
        when others => c_103 <= c_103_96_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 104 and associated fundamentals [[-174], [-87], [132], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 105 and associated fundamentals [[-174], [-87], [132], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 106 and associated fundamentals [[-174], [-87], [132], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 107 and associated fundamentals [[-174], [-87], [132], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 108 and associated fundamentals [[-174], [-87], [-169], [-199]]
  c_108_54_0_False_resize <= c_54;
  c_108_54_0_False_shift <= shift_left(c_108_54_0_False_resize, 0);
  c_108_107_0_False_resize <= c_107;
  c_108_107_0_False_shift <= shift_left(c_108_107_0_False_resize, 0);
  with config_select_11 select c_108_sel <= 
    "0" when "11",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_108_sel is
        when "0" => c_108 <= c_108_54_0_False_shift;
        when others => c_108 <= c_108_107_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 109 and associated fundamentals [[78], [243], [223], [210]]
  c_109_82_0_False_resize <= c_82;
  c_109_82_0_False_shift <= shift_left(c_109_82_0_False_resize, 0);
  c_109_67_0_False_resize <= c_67;
  c_109_67_0_False_shift <= shift_left(c_109_67_0_False_resize, 0);
  with config_select_15 select c_109_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_109_sel is
        when "0" => c_109 <= c_109_82_0_False_shift;
        when others => c_109 <= c_109_67_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 110 and associated fundamentals [[216], [205], [64], [188]]
  c_110_18_0_False_resize <= c_18;
  c_110_18_0_False_shift <= shift_left(c_110_18_0_False_resize, 0);
  c_110_23_6_False_resize <= resize(c_23, 24);
  c_110_23_6_False_shift <= shift_left(c_110_23_6_False_resize, 6);
  c_110_13_0_False_resize <= c_13;
  c_110_13_0_False_shift <= shift_left(c_110_13_0_False_resize, 0);
  with config_select_7 select c_110_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_110_sel is
        when "00" => c_110 <= c_110_18_0_False_shift;
        when "01" => c_110 <= c_110_23_6_False_shift;
        when others => c_110 <= c_110_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 111 and associated fundamentals [[216], [205], [180], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 112 and associated fundamentals [[216], [205], [180], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 113 and associated fundamentals [[216], [205], [180], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 114 and associated fundamentals [[216], [205], [180], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 115 and associated fundamentals [[216], [205], [180], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 116 and associated fundamentals [[216], [205], [180], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 117 and associated fundamentals [[22], [82], [28], [189]]
  c_117_76_1_False_resize <= resize(c_76, 24);
  c_117_76_1_False_shift <= shift_left(c_117_76_1_False_resize, 1);
  c_117_49_2_False_resize <= c_49;
  c_117_49_2_False_shift <= shift_left(c_117_49_2_False_resize, 2);
  c_117_116_0_False_resize <= c_116;
  c_117_116_0_False_shift <= shift_left(c_117_116_0_False_resize, 0);
  with config_select_13 select c_117_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_117_sel is
        when "00" => c_117 <= c_117_76_1_False_shift;
        when "01" => c_117 <= c_117_49_2_False_shift;
        when others => c_117 <= c_117_116_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 118 and associated fundamentals [[3], [10], [12], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 119 and associated fundamentals [[3], [10], [12], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 120 and associated fundamentals [[3], [10], [12], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 121 and associated fundamentals [[3], [10], [12], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 122 and associated fundamentals [[99], [43], [108], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 123 and associated fundamentals [[99], [43], [108], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 124 and associated fundamentals [[99], [43], [108], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 125 and associated fundamentals [[99], [43], [108], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 126 and associated fundamentals [[99], [43], [108], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 127 and associated fundamentals [[99], [43], [108], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 128 and associated fundamentals [[192], [43], [208], [171]]
  c_128_127_0_False_resize <= resize(c_127, 24);
  c_128_127_0_False_shift <= shift_left(c_128_127_0_False_resize, 0);
  c_128_121_6_False_resize <= resize(c_121, 24);
  c_128_121_6_False_shift <= shift_left(c_128_121_6_False_resize, 6);
  c_128_78_1_False_resize <= resize(c_78, 24);
  c_128_78_1_False_shift <= shift_left(c_128_78_1_False_resize, 1);
  c_128_67_0_False_resize <= c_67;
  c_128_67_0_False_shift <= shift_left(c_128_67_0_False_resize, 0);
  with config_select_15 select c_128_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_128_sel is
        when "00" => c_128 <= c_128_127_0_False_shift;
        when "01" => c_128 <= c_128_121_6_False_shift;
        when "10" => c_128 <= c_128_78_1_False_shift;
        when others => c_128 <= c_128_67_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 129 and associated fundamentals [[216], [205], [180], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 130 and associated fundamentals [[216], [205], [180], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 131 and associated fundamentals [[216], [205], [180], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 132 and associated fundamentals [[216], [205], [180], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 133 and associated fundamentals [[187], [51], [202], [210]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 134 and associated fundamentals [[187], [51], [202], [210]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 135 and associated fundamentals [[157], [102], [180], [116]]
  c_135_96_0_False_resize <= c_96;
  c_135_96_0_False_shift <= shift_left(c_135_96_0_False_resize, 0);
  c_135_134_1_False_resize <= c_134;
  c_135_134_1_False_shift <= shift_left(c_135_134_1_False_resize, 1);
  c_135_132_0_False_resize <= c_132;
  c_135_132_0_False_shift <= shift_left(c_135_132_0_False_resize, 0);
  with config_select_17 select c_135_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_135_sel is
        when "00" => c_135 <= c_135_96_0_False_shift;
        when "01" => c_135 <= c_135_134_1_False_shift;
        when others => c_135 <= c_135_132_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 136 and associated fundamentals [[187], [99], [202], [211]]
  c_136_49_0_False_resize <= c_49;
  c_136_49_0_False_shift <= shift_left(c_136_49_0_False_resize, 0);
  c_136_80_0_False_resize <= c_80;
  c_136_80_0_False_shift <= shift_left(c_136_80_0_False_resize, 0);
  with config_select_13 select c_136_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_136_sel is
        when "0" => c_136 <= c_136_49_0_False_shift;
        when others => c_136 <= c_136_80_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 137 and associated fundamentals [[147], [250], [94], [164]]
  c_137_123_1_False_resize <= resize(c_123, 24);
  c_137_123_1_False_shift <= shift_left(c_137_123_1_False_resize, 1);
  c_137_57_1_False_resize <= resize(c_57, 24);
  c_137_57_1_False_shift <= shift_left(c_137_57_1_False_resize, 1);
  c_137_54_0_False_resize <= c_54;
  c_137_54_0_False_shift <= shift_left(c_137_54_0_False_resize, 0);
  with config_select_11 select c_137_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_137_sel is
        when "00" => c_137 <= c_137_123_1_False_shift;
        when "01" => c_137 <= c_137_57_1_False_shift;
        when others => c_137 <= c_137_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 138 and associated fundamentals [[34], [158], [108], [214]]
  c_138_28_1_False_resize <= resize(c_28, 24);
  c_138_28_1_False_shift <= shift_left(c_138_28_1_False_resize, 1);
  c_138_52_0_False_resize <= resize(c_52, 24);
  c_138_52_0_False_shift <= shift_left(c_138_52_0_False_resize, 0);
  with config_select_9 select c_138_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_138_sel is
        when "0" => c_138 <= c_138_28_1_False_shift;
        when others => c_138 <= c_138_52_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 139 and associated fundamentals [[14], [203], [63], [46]]
  c_139_resize <= c_103;
  c_139 <= -shift_left(c_139_resize, 0);
  -- node of type 'register' in stage 12 with id 140 and associated fundamentals [[-174], [-87], [-169], [-199]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 141 and associated fundamentals [[-174], [-87], [-169], [-199]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 142 and associated fundamentals [[-174], [-87], [-169], [-199]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 143 and associated fundamentals [[-174], [-87], [-169], [-199]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 144 and associated fundamentals [[-174], [-87], [-169], [-199]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 145 and associated fundamentals [[-174], [-87], [-169], [-199]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 146 and associated fundamentals [[174], [87], [169], [199]]
  c_146_resize <= c_145;
  c_146 <= -shift_left(c_146_resize, 0);
  -- node of type 'register' in stage 16 with id 147 and associated fundamentals [[78], [243], [223], [210]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 148 and associated fundamentals [[78], [243], [223], [210]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 149 and associated fundamentals [[78], [243], [223], [210]]
  c_149_resize <= c_148;
  c_149 <= shift_left(c_149_resize, 0);
  -- node of type 'register' in stage 8 with id 150 and associated fundamentals [[216], [205], [64], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 151 and associated fundamentals [[216], [205], [64], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_150 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 152 and associated fundamentals [[216], [205], [64], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 153 and associated fundamentals [[216], [205], [64], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_152 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 154 and associated fundamentals [[216], [205], [64], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_153 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 155 and associated fundamentals [[216], [205], [64], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 156 and associated fundamentals [[216], [205], [64], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 157 and associated fundamentals [[216], [205], [64], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_156 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 158 and associated fundamentals [[216], [205], [64], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 159 and associated fundamentals [[216], [205], [64], [188]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_158 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 160 and associated fundamentals [[216], [205], [64], [188]]
  c_160_resize <= c_159;
  c_160 <= shift_left(c_160_resize, 0);
  -- node of type 'register' in stage 14 with id 161 and associated fundamentals [[22], [82], [28], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 162 and associated fundamentals [[22], [82], [28], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_161 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 163 and associated fundamentals [[22], [82], [28], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_162 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 164 and associated fundamentals [[22], [82], [28], [189]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 165 and associated fundamentals [[22], [82], [28], [189]]
  c_165_resize <= c_164;
  c_165 <= shift_left(c_165_resize, 0);
  -- node of type 'register' in stage 16 with id 166 and associated fundamentals [[192], [43], [208], [171]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_166 <= c_128 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 167 and associated fundamentals [[192], [43], [208], [171]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_167 <= c_166 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 168 and associated fundamentals [[192], [43], [208], [171]]
  c_168_resize <= c_167;
  c_168 <= shift_left(c_168_resize, 0);
  -- node of type 'output' in stage 17 with id 169 and associated fundamentals [[157], [102], [180], [116]]
  c_169_resize <= c_135;
  c_169 <= shift_left(c_169_resize, 0);
  -- node of type 'register' in stage 14 with id 170 and associated fundamentals [[187], [99], [202], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_170 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 171 and associated fundamentals [[187], [99], [202], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_171 <= c_170 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 172 and associated fundamentals [[187], [99], [202], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_172 <= c_171 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 173 and associated fundamentals [[187], [99], [202], [211]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_173 <= c_172 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 174 and associated fundamentals [[187], [99], [202], [211]]
  c_174_resize <= c_173;
  c_174 <= shift_left(c_174_resize, 0);
  -- node of type 'register' in stage 12 with id 175 and associated fundamentals [[147], [250], [94], [164]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_175 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 176 and associated fundamentals [[147], [250], [94], [164]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_175 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 177 and associated fundamentals [[147], [250], [94], [164]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_177 <= c_176 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 178 and associated fundamentals [[147], [250], [94], [164]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_178 <= c_177 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 179 and associated fundamentals [[147], [250], [94], [164]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_179 <= c_178 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 180 and associated fundamentals [[147], [250], [94], [164]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_180 <= c_179 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 181 and associated fundamentals [[147], [250], [94], [164]]
  c_181_resize <= c_180;
  c_181 <= shift_left(c_181_resize, 0);
  -- node of type 'register' in stage 10 with id 182 and associated fundamentals [[34], [158], [108], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_182 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 183 and associated fundamentals [[34], [158], [108], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_183 <= c_182 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 184 and associated fundamentals [[34], [158], [108], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_184 <= c_183 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 185 and associated fundamentals [[34], [158], [108], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_185 <= c_184 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 186 and associated fundamentals [[34], [158], [108], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_186 <= c_185 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 187 and associated fundamentals [[34], [158], [108], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_187 <= c_186 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 188 and associated fundamentals [[34], [158], [108], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_188 <= c_187 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 189 and associated fundamentals [[34], [158], [108], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_189 <= c_188 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 190 and associated fundamentals [[34], [158], [108], [214]]
  c_190_resize <= c_189;
  c_190 <= shift_left(c_190_resize, 0);
end architecture;

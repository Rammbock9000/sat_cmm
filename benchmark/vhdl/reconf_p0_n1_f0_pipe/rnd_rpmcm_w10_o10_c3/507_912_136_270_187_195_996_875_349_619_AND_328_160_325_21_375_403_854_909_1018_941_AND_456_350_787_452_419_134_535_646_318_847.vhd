library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(24 downto 0);
    y_4: out std_logic_vector(24 downto 0);
    y_5: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_4_0_False_resize: signed(23 downto 0);
  signal c_5_4_0_False_shift: signed(23 downto 0);
  signal c_5_4_8_False_resize: signed(23 downto 0);
  signal c_5_4_8_False_shift: signed(23 downto 0);
  signal c_5_3_5_False_resize: signed(23 downto 0);
  signal c_5_3_5_False_shift: signed(23 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_i0_resize: signed(24 downto 0);
  signal c_7_i1_resize: signed(24 downto 0);
  signal c_7_i0_shift: signed(24 downto 0);
  signal c_7_i1_shift: signed(24 downto 0);
  signal c_7_arith: signed(24 downto 0);
  signal c_7_oshift: signed(24 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(22 downto 0);
  signal c_8_4_1_False_resize: signed(22 downto 0);
  signal c_8_4_1_False_shift: signed(22 downto 0);
  signal c_8_3_0_False_resize: signed(22 downto 0);
  signal c_8_3_0_False_shift: signed(22 downto 0);
  signal c_8_3_2_False_resize: signed(22 downto 0);
  signal c_8_3_2_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_0_0_False_resize: signed(20 downto 0);
  signal c_9_0_0_False_shift: signed(20 downto 0);
  signal c_9_0_5_False_resize: signed(20 downto 0);
  signal c_9_0_5_False_shift: signed(20 downto 0);
  signal c_9_0_3_False_resize: signed(20 downto 0);
  signal c_9_0_3_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_i0_resize: signed(21 downto 0);
  signal c_12_i1_resize: signed(21 downto 0);
  signal c_12_i0_shift: signed(21 downto 0);
  signal c_12_i1_shift: signed(21 downto 0);
  signal c_12_arith: signed(21 downto 0);
  signal c_12_oshift: signed(21 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(25 downto 0);
  signal c_13_12_2_False_resize: signed(25 downto 0);
  signal c_13_12_2_False_shift: signed(25 downto 0);
  signal c_13_12_0_False_resize: signed(25 downto 0);
  signal c_13_12_0_False_shift: signed(25 downto 0);
  signal c_13_7_3_False_resize: signed(25 downto 0);
  signal c_13_7_3_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_0_0_False_resize: signed(23 downto 0);
  signal c_14_0_0_False_shift: signed(23 downto 0);
  signal c_14_0_8_False_resize: signed(23 downto 0);
  signal c_14_0_8_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_12_1_False_resize: signed(24 downto 0);
  signal c_20_12_1_False_shift: signed(24 downto 0);
  signal c_20_7_0_False_resize: signed(24 downto 0);
  signal c_20_7_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_4_0_False_resize: signed(24 downto 0);
  signal c_21_4_0_False_shift: signed(24 downto 0);
  signal c_21_3_6_False_resize: signed(24 downto 0);
  signal c_21_3_6_False_shift: signed(24 downto 0);
  signal c_21_3_0_False_resize: signed(24 downto 0);
  signal c_21_3_0_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(15 downto 0);
  signal c_26: signed(15 downto 0);
  signal c_27: signed(15 downto 0);
  signal c_28: signed(15 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_24_0_False_resize: signed(23 downto 0);
  signal c_29_24_0_False_shift: signed(23 downto 0);
  signal c_29_24_1_False_resize: signed(23 downto 0);
  signal c_29_24_1_False_shift: signed(23 downto 0);
  signal c_29_28_0_False_resize: signed(23 downto 0);
  signal c_29_28_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_28_3_False_resize: signed(25 downto 0);
  signal c_32_28_3_False_shift: signed(25 downto 0);
  signal c_32_31_0_False_resize: signed(25 downto 0);
  signal c_32_31_0_False_shift: signed(25 downto 0);
  signal c_32_19_2_False_resize: signed(25 downto 0);
  signal c_32_19_2_False_shift: signed(25 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(25 downto 0);
  signal c_33_i1_resize: signed(25 downto 0);
  signal c_33_i0_shift: signed(25 downto 0);
  signal c_33_i1_shift: signed(25 downto 0);
  signal c_33_arith: signed(25 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(22 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_38_4_False_resize: signed(25 downto 0);
  signal c_39_38_4_False_shift: signed(25 downto 0);
  signal c_39_38_2_False_resize: signed(25 downto 0);
  signal c_39_38_2_False_shift: signed(25 downto 0);
  signal c_39_33_0_False_resize: signed(25 downto 0);
  signal c_39_33_0_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(15 downto 0);
  signal c_41: signed(15 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_43: signed(21 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_45: signed(21 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_33_0_False_resize: signed(23 downto 0);
  signal c_46_33_0_False_shift: signed(23 downto 0);
  signal c_46_41_5_False_resize: signed(23 downto 0);
  signal c_46_41_5_False_shift: signed(23 downto 0);
  signal c_46_45_0_False_resize: signed(23 downto 0);
  signal c_46_45_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_i0_resize: signed(25 downto 0);
  signal c_47_i1_resize: signed(25 downto 0);
  signal c_47_i0_shift: signed(25 downto 0);
  signal c_47_i1_shift: signed(25 downto 0);
  signal c_47_arith: signed(25 downto 0);
  signal c_47_oshift: signed(25 downto 0);
  signal c_47_sub_sel: std_logic;
  signal c_48: signed(24 downto 0);
  signal c_48_33_0_False_resize: signed(24 downto 0);
  signal c_48_33_0_False_shift: signed(24 downto 0);
  signal c_48_45_2_False_resize: signed(24 downto 0);
  signal c_48_45_2_False_shift: signed(24 downto 0);
  signal c_48_33_1_False_resize: signed(24 downto 0);
  signal c_48_33_1_False_shift: signed(24 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_49_7_0_False_resize: signed(24 downto 0);
  signal c_49_7_0_False_shift: signed(24 downto 0);
  signal c_49_26_5_False_resize: signed(24 downto 0);
  signal c_49_26_5_False_shift: signed(24 downto 0);
  signal c_49_26_2_False_resize: signed(24 downto 0);
  signal c_49_26_2_False_shift: signed(24 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_54: signed(26 downto 0);
  signal c_54_i0_resize: signed(26 downto 0);
  signal c_54_i1_resize: signed(26 downto 0);
  signal c_54_i0_shift: signed(26 downto 0);
  signal c_54_i1_shift: signed(26 downto 0);
  signal c_54_arith: signed(26 downto 0);
  signal c_54_oshift: signed(26 downto 0);
  signal c_54_sub_sel: std_logic;
  signal c_55: signed(22 downto 0);
  signal c_55_28_5_False_resize: signed(22 downto 0);
  signal c_55_28_5_False_shift: signed(22 downto 0);
  signal c_55_24_1_False_resize: signed(22 downto 0);
  signal c_55_24_1_False_shift: signed(22 downto 0);
  signal c_55_43_0_False_resize: signed(22 downto 0);
  signal c_55_43_0_False_shift: signed(22 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_57: signed(24 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_57_1_False_resize: signed(25 downto 0);
  signal c_58_57_1_False_shift: signed(25 downto 0);
  signal c_58_33_0_False_resize: signed(25 downto 0);
  signal c_58_33_0_False_shift: signed(25 downto 0);
  signal c_58_sel: std_logic_vector(0 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_i0_resize: signed(25 downto 0);
  signal c_61_i1_resize: signed(25 downto 0);
  signal c_61_i0_shift: signed(25 downto 0);
  signal c_61_i1_shift: signed(25 downto 0);
  signal c_61_arith: signed(25 downto 0);
  signal c_61_oshift: signed(25 downto 0);
  signal c_61_sub_sel: std_logic;
  signal c_62: signed(21 downto 0);
  signal c_63: signed(21 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_68_67_0_False_resize: signed(25 downto 0);
  signal c_68_67_0_False_shift: signed(25 downto 0);
  signal c_68_63_4_False_resize: signed(25 downto 0);
  signal c_68_63_4_False_shift: signed(25 downto 0);
  signal c_68_54_0_False_resize: signed(25 downto 0);
  signal c_68_54_0_False_shift: signed(25 downto 0);
  signal c_68_sel: std_logic_vector(1 downto 0);
  signal c_69: signed(22 downto 0);
  signal c_70: signed(22 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_61_0_False_resize: signed(25 downto 0);
  signal c_71_61_0_False_shift: signed(25 downto 0);
  signal c_71_47_0_False_resize: signed(25 downto 0);
  signal c_71_47_0_False_shift: signed(25 downto 0);
  signal c_71_70_0_False_resize: signed(25 downto 0);
  signal c_71_70_0_False_shift: signed(25 downto 0);
  signal c_71_sel: std_logic_vector(1 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_72_i0_resize: signed(25 downto 0);
  signal c_72_i1_resize: signed(25 downto 0);
  signal c_72_i0_shift: signed(25 downto 0);
  signal c_72_i1_shift: signed(25 downto 0);
  signal c_72_arith: signed(25 downto 0);
  signal c_72_oshift: signed(25 downto 0);
  signal c_72_sub_sel: std_logic;
  signal c_73: signed(26 downto 0);
  signal c_73_61_1_False_resize: signed(26 downto 0);
  signal c_73_61_1_False_shift: signed(26 downto 0);
  signal c_73_61_0_False_resize: signed(26 downto 0);
  signal c_73_61_0_False_shift: signed(26 downto 0);
  signal c_73_63_6_False_resize: signed(26 downto 0);
  signal c_73_63_6_False_shift: signed(26 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_74_65_0_False_resize: signed(25 downto 0);
  signal c_74_65_0_False_shift: signed(25 downto 0);
  signal c_74_65_1_False_resize: signed(25 downto 0);
  signal c_74_65_1_False_shift: signed(25 downto 0);
  signal c_74_33_0_False_resize: signed(25 downto 0);
  signal c_74_33_0_False_shift: signed(25 downto 0);
  signal c_74_sel: std_logic_vector(1 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_77: signed(26 downto 0);
  signal c_77_i0_resize: signed(26 downto 0);
  signal c_77_i1_resize: signed(26 downto 0);
  signal c_77_i0_shift: signed(26 downto 0);
  signal c_77_i1_shift: signed(26 downto 0);
  signal c_77_arith: signed(26 downto 0);
  signal c_77_oshift: signed(26 downto 0);
  signal c_77_sub_sel: std_logic;
  signal c_78: signed(15 downto 0);
  signal c_79: signed(15 downto 0);
  signal c_80: signed(15 downto 0);
  signal c_81: signed(15 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_84: signed(23 downto 0);
  signal c_85: signed(23 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_88: signed(26 downto 0);
  signal c_88_77_0_False_resize: signed(26 downto 0);
  signal c_88_77_0_False_shift: signed(26 downto 0);
  signal c_88_87_0_False_resize: signed(26 downto 0);
  signal c_88_87_0_False_shift: signed(26 downto 0);
  signal c_88_81_8_False_resize: signed(26 downto 0);
  signal c_88_81_8_False_shift: signed(26 downto 0);
  signal c_88_sel: std_logic_vector(1 downto 0);
  signal c_89: signed(22 downto 0);
  signal c_90: signed(22 downto 0);
  signal c_91: signed(26 downto 0);
  signal c_92: signed(26 downto 0);
  signal c_93: signed(26 downto 0);
  signal c_93_92_1_False_resize: signed(26 downto 0);
  signal c_93_92_1_False_shift: signed(26 downto 0);
  signal c_93_77_0_False_resize: signed(26 downto 0);
  signal c_93_77_0_False_shift: signed(26 downto 0);
  signal c_93_90_4_False_resize: signed(26 downto 0);
  signal c_93_90_4_False_shift: signed(26 downto 0);
  signal c_93_sel: std_logic_vector(1 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_94_i0_resize: signed(25 downto 0);
  signal c_94_i1_resize: signed(25 downto 0);
  signal c_94_i0_shift: signed(25 downto 0);
  signal c_94_i1_shift: signed(25 downto 0);
  signal c_94_arith: signed(25 downto 0);
  signal c_94_oshift: signed(25 downto 0);
  signal c_94_sub_sel: std_logic;
  signal c_95: signed(24 downto 0);
  signal c_96: signed(24 downto 0);
  signal c_97: signed(24 downto 0);
  signal c_97_54_1_False_resize: signed(24 downto 0);
  signal c_97_54_1_False_shift: signed(24 downto 0);
  signal c_97_96_0_False_resize: signed(24 downto 0);
  signal c_97_96_0_False_shift: signed(24 downto 0);
  signal c_97_63_3_False_resize: signed(24 downto 0);
  signal c_97_63_3_False_shift: signed(24 downto 0);
  signal c_97_sel: std_logic_vector(1 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_98_70_5_False_resize: signed(25 downto 0);
  signal c_98_70_5_False_shift: signed(25 downto 0);
  signal c_98_47_3_False_resize: signed(25 downto 0);
  signal c_98_47_3_False_shift: signed(25 downto 0);
  signal c_98_54_0_False_resize: signed(25 downto 0);
  signal c_98_54_0_False_shift: signed(25 downto 0);
  signal c_98_sel: std_logic_vector(1 downto 0);
  signal c_99: signed(24 downto 0);
  signal c_100: signed(24 downto 0);
  signal c_101: signed(24 downto 0);
  signal c_102: signed(24 downto 0);
  signal c_103: signed(21 downto 0);
  signal c_104: signed(21 downto 0);
  signal c_105: signed(21 downto 0);
  signal c_106: signed(21 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_107_106_2_False_resize: signed(25 downto 0);
  signal c_107_106_2_False_shift: signed(25 downto 0);
  signal c_107_102_0_False_resize: signed(25 downto 0);
  signal c_107_102_0_False_shift: signed(25 downto 0);
  signal c_107_94_0_False_resize: signed(25 downto 0);
  signal c_107_94_0_False_shift: signed(25 downto 0);
  signal c_107_sel: std_logic_vector(1 downto 0);
  signal c_108: signed(24 downto 0);
  signal c_108_19_1_False_resize: signed(24 downto 0);
  signal c_108_19_1_False_shift: signed(24 downto 0);
  signal c_108_24_2_False_resize: signed(24 downto 0);
  signal c_108_24_2_False_shift: signed(24 downto 0);
  signal c_108_43_0_False_resize: signed(24 downto 0);
  signal c_108_43_0_False_shift: signed(24 downto 0);
  signal c_108_sel: std_logic_vector(1 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_113: signed(25 downto 0);
  signal c_114: signed(25 downto 0);
  signal c_115: signed(24 downto 0);
  signal c_115_110_0_False_resize: signed(24 downto 0);
  signal c_115_110_0_False_shift: signed(24 downto 0);
  signal c_115_94_0_False_resize: signed(24 downto 0);
  signal c_115_94_0_False_shift: signed(24 downto 0);
  signal c_115_114_0_False_resize: signed(24 downto 0);
  signal c_115_114_0_False_shift: signed(24 downto 0);
  signal c_115_sel: std_logic_vector(1 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_120: signed(24 downto 0);
  signal c_120_100_1_False_resize: signed(24 downto 0);
  signal c_120_100_1_False_shift: signed(24 downto 0);
  signal c_120_119_0_False_resize: signed(24 downto 0);
  signal c_120_119_0_False_shift: signed(24 downto 0);
  signal c_120_77_0_False_resize: signed(24 downto 0);
  signal c_120_77_0_False_shift: signed(24 downto 0);
  signal c_120_sel: std_logic_vector(1 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_122: signed(25 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_125_72_2_False_resize: signed(25 downto 0);
  signal c_125_72_2_False_shift: signed(25 downto 0);
  signal c_125_122_0_False_resize: signed(25 downto 0);
  signal c_125_122_0_False_shift: signed(25 downto 0);
  signal c_125_124_0_False_resize: signed(25 downto 0);
  signal c_125_124_0_False_shift: signed(25 downto 0);
  signal c_125_sel: std_logic_vector(1 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_128_94_0_False_resize: signed(25 downto 0);
  signal c_128_94_0_False_shift: signed(25 downto 0);
  signal c_128_127_0_False_resize: signed(25 downto 0);
  signal c_128_127_0_False_shift: signed(25 downto 0);
  signal c_128_114_0_False_resize: signed(25 downto 0);
  signal c_128_114_0_False_shift: signed(25 downto 0);
  signal c_128_sel: std_logic_vector(1 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_129_72_0_False_resize: signed(25 downto 0);
  signal c_129_72_0_False_shift: signed(25 downto 0);
  signal c_129_124_0_False_resize: signed(25 downto 0);
  signal c_129_124_0_False_shift: signed(25 downto 0);
  signal c_129_119_1_False_resize: signed(25 downto 0);
  signal c_129_119_1_False_shift: signed(25 downto 0);
  signal c_129_sel: std_logic_vector(1 downto 0);
  signal c_130: signed(25 downto 0);
  signal c_130_72_0_False_resize: signed(25 downto 0);
  signal c_130_72_0_False_shift: signed(25 downto 0);
  signal c_130_77_0_False_resize: signed(25 downto 0);
  signal c_130_77_0_False_shift: signed(25 downto 0);
  signal c_130_119_0_False_resize: signed(25 downto 0);
  signal c_130_119_0_False_shift: signed(25 downto 0);
  signal c_130_sel: std_logic_vector(1 downto 0);
  signal c_131: signed(24 downto 0);
  signal c_132: signed(24 downto 0);
  signal c_133: signed(24 downto 0);
  signal c_134: signed(24 downto 0);
  signal c_135: signed(24 downto 0);
  signal c_135_resize: signed(24 downto 0);
  signal c_136: signed(25 downto 0);
  signal c_137: signed(25 downto 0);
  signal c_138: signed(25 downto 0);
  signal c_139: signed(25 downto 0);
  signal c_140: signed(25 downto 0);
  signal c_140_resize: signed(25 downto 0);
  signal c_141: signed(25 downto 0);
  signal c_141_resize: signed(25 downto 0);
  signal c_142: signed(24 downto 0);
  signal c_143: signed(24 downto 0);
  signal c_144: signed(24 downto 0);
  signal c_145: signed(24 downto 0);
  signal c_146: signed(24 downto 0);
  signal c_147: signed(24 downto 0);
  signal c_148: signed(24 downto 0);
  signal c_149: signed(24 downto 0);
  signal c_150: signed(24 downto 0);
  signal c_150_resize: signed(24 downto 0);
  signal c_151: signed(24 downto 0);
  signal c_151_resize: signed(24 downto 0);
  signal c_152: signed(24 downto 0);
  signal c_153: signed(24 downto 0);
  signal c_154: signed(24 downto 0);
  signal c_154_resize: signed(24 downto 0);
  signal c_155: signed(25 downto 0);
  signal c_156: signed(25 downto 0);
  signal c_157: signed(25 downto 0);
  signal c_157_resize: signed(25 downto 0);
  signal c_158: signed(25 downto 0);
  signal c_158_resize: signed(25 downto 0);
  signal c_159: signed(25 downto 0);
  signal c_160: signed(25 downto 0);
  signal c_161: signed(25 downto 0);
  signal c_161_resize: signed(25 downto 0);
  signal c_162: signed(25 downto 0);
  signal c_163: signed(25 downto 0);
  signal c_164: signed(25 downto 0);
  signal c_164_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 135
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_135);
    end if;
  end process;
  -- output node 1 with id 140
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_140);
    end if;
  end process;
  -- output node 2 with id 141
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_141);
    end if;
  end process;
  -- output node 3 with id 150
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_150);
    end if;
  end process;
  -- output node 4 with id 151
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_151);
    end if;
  end process;
  -- output node 5 with id 154
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_154);
    end if;
  end process;
  -- output node 6 with id 157
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_157);
    end if;
  end process;
  -- output node 7 with id 158
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_158);
    end if;
  end process;
  -- output node 8 with id 161
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_161);
    end if;
  end process;
  -- output node 9 with id 164
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_164);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [16]]
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_4_False_shift;
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
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[5], [5], [65]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[256], [160], [1]]
  c_5_4_0_False_resize <= resize(c_4, 24);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_4_8_False_resize <= resize(c_4, 24);
  c_5_4_8_False_shift <= shift_left(c_5_4_8_False_resize, 8);
  c_5_3_5_False_resize <= resize(c_3, 24);
  c_5_3_5_False_shift <= shift_left(c_5_3_5_False_resize, 5);
  with config_select_3 select c_5_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_4_0_False_shift;
        when "01" => c_5 <= c_5_4_8_False_shift;
        when others => c_5 <= c_5_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[5], [5], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[507], [325], [67]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[2], [20], [65]]
  c_8_4_1_False_resize <= resize(c_4, 23);
  c_8_4_1_False_shift <= shift_left(c_8_4_1_False_resize, 1);
  c_8_3_0_False_resize <= c_3;
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  c_8_3_2_False_resize <= c_3;
  c_8_3_2_False_shift <= shift_left(c_8_3_2_False_resize, 2);
  with config_select_3 select c_8_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_4_1_False_shift;
        when "01" => c_8 <= c_8_3_0_False_shift;
        when others => c_8 <= c_8_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[32], [1], [8]]
  c_9_0_0_False_resize <= resize(c_0, 21);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_5_False_resize <= resize(c_0, 21);
  c_9_0_5_False_shift <= shift_left(c_9_0_5_False_resize, 5);
  c_9_0_3_False_resize <= resize(c_0, 21);
  c_9_0_3_False_shift <= shift_left(c_9_0_3_False_resize, 3);
  with config_select_1 select c_9_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_0_0_False_shift;
        when "01" => c_9 <= c_9_0_5_False_shift;
        when others => c_9 <= c_9_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 10 and associated fundamentals [[32], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[32], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[34], [21], [57]]
  with config_select_4 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      sub_i => c_12_sub_sel,
      x_i => c_8,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[136], [21], [536]]
  c_13_12_2_False_resize <= resize(c_12, 26);
  c_13_12_2_False_shift <= shift_left(c_13_12_2_False_resize, 2);
  c_13_12_0_False_resize <= resize(c_12, 26);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_7_3_False_resize <= resize(c_7, 26);
  c_13_7_3_False_shift <= shift_left(c_13_7_3_False_resize, 3);
  with config_select_5 select c_13_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_12_2_False_shift;
        when "01" => c_13 <= c_13_12_0_False_shift;
        when others => c_13 <= c_13_7_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[1], [256], [1]]
  c_14_0_0_False_resize <= resize(c_0, 24);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_8_False_resize <= resize(c_0, 24);
  c_14_0_8_False_shift <= shift_left(c_14_0_8_False_resize, 8);
  with config_select_1 select c_14_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_0_0_False_shift;
        when others => c_14 <= c_14_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 15 and associated fundamentals [[1], [256], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[1], [256], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[1], [256], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[1], [256], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 19 and associated fundamentals [[135], [-235], [535]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      x_i => c_13,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[507], [42], [114]]
  c_20_12_1_False_resize <= resize(c_12, 25);
  c_20_12_1_False_shift <= shift_left(c_20_12_1_False_resize, 1);
  c_20_7_0_False_resize <= c_7;
  c_20_7_0_False_shift <= shift_left(c_20_7_0_False_resize, 0);
  with config_select_5 select c_20_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_12_1_False_shift;
        when others => c_20 <= c_20_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[320], [5], [1]]
  c_21_4_0_False_resize <= resize(c_4, 25);
  c_21_4_0_False_shift <= shift_left(c_21_4_0_False_resize, 0);
  c_21_3_6_False_resize <= resize(c_3, 25);
  c_21_3_6_False_shift <= shift_left(c_21_3_6_False_resize, 6);
  c_21_3_0_False_resize <= resize(c_3, 25);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_4_0_False_shift;
        when "01" => c_21 <= c_21_3_6_False_shift;
        when others => c_21 <= c_21_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[320], [5], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[320], [5], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 24 and associated fundamentals [[187], [47], [113]]
  with config_select_6 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      x_i => c_20,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 25 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[187], [1], [226]]
  c_29_24_0_False_resize <= c_24;
  c_29_24_0_False_shift <= shift_left(c_29_24_0_False_resize, 0);
  c_29_24_1_False_resize <= c_24;
  c_29_24_1_False_shift <= shift_left(c_29_24_1_False_resize, 1);
  c_29_28_0_False_resize <= resize(c_28, 24);
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  with config_select_7 select c_29_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_24_0_False_shift;
        when "01" => c_29 <= c_29_24_1_False_shift;
        when others => c_29 <= c_29_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[507], [325], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[507], [325], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 32 and associated fundamentals [[8], [-940], [67]]
  c_32_28_3_False_resize <= resize(c_28, 26);
  c_32_28_3_False_shift <= shift_left(c_32_28_3_False_resize, 3);
  c_32_31_0_False_resize <= resize(c_31, 26);
  c_32_31_0_False_shift <= shift_left(c_32_31_0_False_resize, 0);
  c_32_19_2_False_resize <= c_19;
  c_32_19_2_False_shift <= shift_left(c_32_19_2_False_resize, 2);
  with config_select_7 select c_32_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_28_3_False_shift;
        when "01" => c_32 <= c_32_31_0_False_shift;
        when others => c_32 <= c_32_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 33 and associated fundamentals [[195], [941], [159]]
  with config_select_8 select c_33_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_33_sub_sel,
      x_i => c_29,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 34 and associated fundamentals [[5], [5], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[5], [5], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[5], [5], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[5], [5], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[5], [5], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 39 and associated fundamentals [[80], [941], [260]]
  c_39_38_4_False_resize <= resize(c_38, 26);
  c_39_38_4_False_shift <= shift_left(c_39_38_4_False_resize, 4);
  c_39_38_2_False_resize <= resize(c_38, 26);
  c_39_38_2_False_shift <= shift_left(c_39_38_2_False_resize, 2);
  c_39_33_0_False_resize <= c_33;
  c_39_33_0_False_shift <= shift_left(c_39_33_0_False_resize, 0);
  with config_select_9 select c_39_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_38_4_False_shift;
        when "01" => c_39 <= c_39_38_2_False_shift;
        when others => c_39 <= c_39_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 42 and associated fundamentals [[34], [21], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[34], [21], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[34], [21], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[34], [21], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 46 and associated fundamentals [[34], [32], [159]]
  c_46_33_0_False_resize <= c_33(23 downto 0);
  c_46_33_0_False_shift <= shift_left(c_46_33_0_False_resize, 0);
  c_46_41_5_False_resize <= resize(c_41, 24);
  c_46_41_5_False_shift <= shift_left(c_46_41_5_False_resize, 5);
  c_46_45_0_False_resize <= resize(c_45, 24);
  c_46_45_0_False_shift <= shift_left(c_46_45_0_False_resize, 0);
  with config_select_9 select c_46_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_33_0_False_shift;
        when "01" => c_46 <= c_46_41_5_False_shift;
        when others => c_46 <= c_46_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 47 and associated fundamentals [[114], [909], [419]]
  with config_select_10 select c_47_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_47: entity work.adder_node
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
      sub_i => c_47_sub_sel,
      x_i => c_39,
      y_i => c_46,
      z_o => c_47_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_47_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 48 and associated fundamentals [[390], [84], [159]]
  c_48_33_0_False_resize <= c_33(24 downto 0);
  c_48_33_0_False_shift <= shift_left(c_48_33_0_False_resize, 0);
  c_48_45_2_False_resize <= resize(c_45, 25);
  c_48_45_2_False_shift <= shift_left(c_48_45_2_False_resize, 2);
  c_48_33_1_False_resize <= c_33(24 downto 0);
  c_48_33_1_False_shift <= shift_left(c_48_33_1_False_resize, 1);
  with config_select_9 select c_48_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_33_0_False_shift;
        when "01" => c_48 <= c_48_45_2_False_shift;
        when others => c_48 <= c_48_33_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 49 and associated fundamentals [[507], [4], [32]]
  c_49_7_0_False_resize <= c_7;
  c_49_7_0_False_shift <= shift_left(c_49_7_0_False_resize, 0);
  c_49_26_5_False_resize <= resize(c_26, 25);
  c_49_26_5_False_shift <= shift_left(c_49_26_5_False_resize, 5);
  c_49_26_2_False_resize <= resize(c_26, 25);
  c_49_26_2_False_shift <= shift_left(c_49_26_2_False_resize, 2);
  with config_select_5 select c_49_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_7_0_False_shift;
        when "01" => c_49 <= c_49_26_5_False_shift;
        when others => c_49 <= c_49_26_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 50 and associated fundamentals [[507], [4], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 51 and associated fundamentals [[507], [4], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 52 and associated fundamentals [[507], [4], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 53 and associated fundamentals [[507], [4], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 54 and associated fundamentals [[1287], [164], [350]]
  with config_select_10 select c_54_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_54: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 27,
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
      sub_i => c_54_sub_sel,
      x_i => c_48,
      y_i => c_53,
      z_o => c_54_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_54_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 55 and associated fundamentals [[34], [94], [32]]
  c_55_28_5_False_resize <= resize(c_28, 23);
  c_55_28_5_False_shift <= shift_left(c_55_28_5_False_resize, 5);
  c_55_24_1_False_resize <= c_24(22 downto 0);
  c_55_24_1_False_shift <= shift_left(c_55_24_1_False_resize, 1);
  c_55_43_0_False_resize <= resize(c_43, 23);
  c_55_43_0_False_shift <= shift_left(c_55_43_0_False_resize, 0);
  with config_select_7 select c_55_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "00" => c_55 <= c_55_28_5_False_shift;
        when "01" => c_55 <= c_55_24_1_False_shift;
        when others => c_55 <= c_55_43_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 56 and associated fundamentals [[507], [325], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 57 and associated fundamentals [[507], [325], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 58 and associated fundamentals [[195], [650], [134]]
  c_58_57_1_False_resize <= resize(c_57, 26);
  c_58_57_1_False_shift <= shift_left(c_58_57_1_False_resize, 1);
  c_58_33_0_False_resize <= c_33;
  c_58_33_0_False_shift <= shift_left(c_58_33_0_False_resize, 0);
  with config_select_9 select c_58_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "0" => c_58 <= c_58_57_1_False_shift;
        when others => c_58 <= c_58_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 59 and associated fundamentals [[34], [94], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 60 and associated fundamentals [[34], [94], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 61 and associated fundamentals [[349], [854], [646]]
  with config_select_10 select c_61_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_61: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 26,
      w_o => 26,
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
      sub_i => c_61_sub_sel,
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
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[34], [21], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[34], [21], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 64 and associated fundamentals [[135], [-235], [535]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 65 and associated fundamentals [[135], [-235], [535]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 66 and associated fundamentals [[135], [-235], [535]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 67 and associated fundamentals [[135], [-235], [535]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 68 and associated fundamentals [[135], [164], [912]]
  c_68_67_0_False_resize <= c_67;
  c_68_67_0_False_shift <= shift_left(c_68_67_0_False_resize, 0);
  c_68_63_4_False_resize <= resize(c_63, 26);
  c_68_63_4_False_shift <= shift_left(c_68_63_4_False_resize, 4);
  c_68_54_0_False_resize <= c_54(25 downto 0);
  c_68_54_0_False_shift <= shift_left(c_68_54_0_False_resize, 0);
  with config_select_11 select c_68_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_68_sel is
        when "00" => c_68 <= c_68_67_0_False_shift;
        when "01" => c_68 <= c_68_63_4_False_shift;
        when others => c_68 <= c_68_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 69 and associated fundamentals [[5], [5], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 70 and associated fundamentals [[5], [5], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 71 and associated fundamentals [[114], [854], [65]]
  c_71_61_0_False_resize <= c_61;
  c_71_61_0_False_shift <= shift_left(c_71_61_0_False_resize, 0);
  c_71_47_0_False_resize <= c_47;
  c_71_47_0_False_shift <= shift_left(c_71_47_0_False_resize, 0);
  c_71_70_0_False_resize <= resize(c_70, 26);
  c_71_70_0_False_shift <= shift_left(c_71_70_0_False_resize, 0);
  with config_select_11 select c_71_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_71_sel is
        when "00" => c_71 <= c_71_61_0_False_shift;
        when "01" => c_71 <= c_71_47_0_False_shift;
        when others => c_71 <= c_71_70_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 72 and associated fundamentals [[249], [1018], [847]]
  with config_select_12 select c_72_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_72: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_72_sub_sel,
      x_i => c_68,
      y_i => c_71,
      z_o => c_72_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_72_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 73 and associated fundamentals [[349], [1344], [1292]]
  c_73_61_1_False_resize <= resize(c_61, 27);
  c_73_61_1_False_shift <= shift_left(c_73_61_1_False_resize, 1);
  c_73_61_0_False_resize <= resize(c_61, 27);
  c_73_61_0_False_shift <= shift_left(c_73_61_0_False_resize, 0);
  c_73_63_6_False_resize <= resize(c_63, 27);
  c_73_63_6_False_shift <= shift_left(c_73_63_6_False_resize, 6);
  with config_select_11 select c_73_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "00" => c_73 <= c_73_61_1_False_shift;
        when "01" => c_73 <= c_73_61_0_False_shift;
        when others => c_73 <= c_73_63_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 74 and associated fundamentals [[270], [941], [535]]
  c_74_65_0_False_resize <= c_65;
  c_74_65_0_False_shift <= shift_left(c_74_65_0_False_resize, 0);
  c_74_65_1_False_resize <= c_65;
  c_74_65_1_False_shift <= shift_left(c_74_65_1_False_resize, 1);
  c_74_33_0_False_resize <= c_33;
  c_74_33_0_False_shift <= shift_left(c_74_33_0_False_resize, 0);
  with config_select_9 select c_74_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "00" => c_74 <= c_74_65_0_False_shift;
        when "01" => c_74 <= c_74_65_1_False_shift;
        when others => c_74 <= c_74_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 75 and associated fundamentals [[270], [941], [535]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 76 and associated fundamentals [[270], [941], [535]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 77 and associated fundamentals [[619], [403], [1827]]
  with config_select_12 select c_77_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_77: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
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
      sub_i => c_77_sub_sel,
      x_i => c_73,
      y_i => c_76,
      z_o => c_77_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_77_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 78 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 79 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 80 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 81 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 82 and associated fundamentals [[187], [47], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 83 and associated fundamentals [[187], [47], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 84 and associated fundamentals [[187], [47], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 85 and associated fundamentals [[187], [47], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 86 and associated fundamentals [[187], [47], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 87 and associated fundamentals [[187], [47], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 88 and associated fundamentals [[256], [47], [1827]]
  c_88_77_0_False_resize <= c_77;
  c_88_77_0_False_shift <= shift_left(c_88_77_0_False_resize, 0);
  c_88_87_0_False_resize <= resize(c_87, 27);
  c_88_87_0_False_shift <= shift_left(c_88_87_0_False_resize, 0);
  c_88_81_8_False_resize <= resize(c_81, 27);
  c_88_81_8_False_shift <= shift_left(c_88_81_8_False_resize, 8);
  with config_select_13 select c_88_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_88_sel is
        when "00" => c_88 <= c_88_77_0_False_shift;
        when "01" => c_88 <= c_88_87_0_False_shift;
        when others => c_88 <= c_88_81_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 89 and associated fundamentals [[5], [5], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 90 and associated fundamentals [[5], [5], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 91 and associated fundamentals [[1287], [164], [350]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 92 and associated fundamentals [[1287], [164], [350]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 93 and associated fundamentals [[619], [328], [1040]]
  c_93_92_1_False_resize <= c_92;
  c_93_92_1_False_shift <= shift_left(c_93_92_1_False_resize, 1);
  c_93_77_0_False_resize <= c_77;
  c_93_77_0_False_shift <= shift_left(c_93_77_0_False_resize, 0);
  c_93_90_4_False_resize <= resize(c_90, 27);
  c_93_90_4_False_shift <= shift_left(c_93_90_4_False_resize, 4);
  with config_select_13 select c_93_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_93_sel is
        when "00" => c_93 <= c_93_92_1_False_shift;
        when "01" => c_93 <= c_93_77_0_False_shift;
        when others => c_93 <= c_93_90_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 94 and associated fundamentals [[875], [375], [787]]
  with config_select_14 select c_94_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_94: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_94_sub_sel,
      x_i => c_88,
      y_i => c_93,
      z_o => c_94_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_94_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 95 and associated fundamentals [[507], [325], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 96 and associated fundamentals [[507], [325], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 97 and associated fundamentals [[507], [328], [456]]
  c_97_54_1_False_resize <= c_54(24 downto 0);
  c_97_54_1_False_shift <= shift_left(c_97_54_1_False_resize, 1);
  c_97_96_0_False_resize <= c_96;
  c_97_96_0_False_shift <= shift_left(c_97_96_0_False_resize, 0);
  c_97_63_3_False_resize <= resize(c_63, 25);
  c_97_63_3_False_shift <= shift_left(c_97_63_3_False_resize, 3);
  with config_select_11 select c_97_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_97_sel is
        when "00" => c_97 <= c_97_54_1_False_shift;
        when "01" => c_97 <= c_97_96_0_False_shift;
        when others => c_97 <= c_97_63_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 98 and associated fundamentals [[912], [160], [350]]
  c_98_70_5_False_resize <= resize(c_70, 26);
  c_98_70_5_False_shift <= shift_left(c_98_70_5_False_resize, 5);
  c_98_47_3_False_resize <= c_47;
  c_98_47_3_False_shift <= shift_left(c_98_47_3_False_resize, 3);
  c_98_54_0_False_resize <= c_54(25 downto 0);
  c_98_54_0_False_shift <= shift_left(c_98_54_0_False_resize, 0);
  with config_select_11 select c_98_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_98_sel is
        when "00" => c_98 <= c_98_70_5_False_shift;
        when "01" => c_98 <= c_98_47_3_False_shift;
        when others => c_98 <= c_98_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 99 and associated fundamentals [[507], [325], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 100 and associated fundamentals [[507], [325], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 101 and associated fundamentals [[507], [325], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 102 and associated fundamentals [[507], [325], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 103 and associated fundamentals [[34], [21], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 104 and associated fundamentals [[34], [21], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 105 and associated fundamentals [[34], [21], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 106 and associated fundamentals [[34], [21], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 107 and associated fundamentals [[136], [325], [787]]
  c_107_106_2_False_resize <= resize(c_106, 26);
  c_107_106_2_False_shift <= shift_left(c_107_106_2_False_resize, 2);
  c_107_102_0_False_resize <= resize(c_102, 26);
  c_107_102_0_False_shift <= shift_left(c_107_102_0_False_resize, 0);
  c_107_94_0_False_resize <= c_94;
  c_107_94_0_False_shift <= shift_left(c_107_94_0_False_resize, 0);
  with config_select_15 select c_107_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_107_sel is
        when "00" => c_107 <= c_107_106_2_False_shift;
        when "01" => c_107 <= c_107_102_0_False_shift;
        when others => c_107 <= c_107_94_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 108 and associated fundamentals [[270], [21], [452]]
  c_108_19_1_False_resize <= c_19(24 downto 0);
  c_108_19_1_False_shift <= shift_left(c_108_19_1_False_resize, 1);
  c_108_24_2_False_resize <= resize(c_24, 25);
  c_108_24_2_False_shift <= shift_left(c_108_24_2_False_resize, 2);
  c_108_43_0_False_resize <= resize(c_43, 25);
  c_108_43_0_False_shift <= shift_left(c_108_43_0_False_resize, 0);
  with config_select_7 select c_108_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_108_sel is
        when "00" => c_108 <= c_108_19_1_False_shift;
        when "01" => c_108 <= c_108_24_2_False_shift;
        when others => c_108 <= c_108_43_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 109 and associated fundamentals [[187], [47], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 110 and associated fundamentals [[187], [47], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 111 and associated fundamentals [[114], [909], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 112 and associated fundamentals [[114], [909], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 113 and associated fundamentals [[114], [909], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 114 and associated fundamentals [[114], [909], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 115 and associated fundamentals [[187], [375], [419]]
  c_115_110_0_False_resize <= resize(c_110, 25);
  c_115_110_0_False_shift <= shift_left(c_115_110_0_False_resize, 0);
  c_115_94_0_False_resize <= c_94(24 downto 0);
  c_115_94_0_False_shift <= shift_left(c_115_94_0_False_resize, 0);
  c_115_114_0_False_resize <= c_114(24 downto 0);
  c_115_114_0_False_shift <= shift_left(c_115_114_0_False_resize, 0);
  with config_select_15 select c_115_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_115_sel is
        when "00" => c_115 <= c_115_110_0_False_shift;
        when "01" => c_115 <= c_115_94_0_False_shift;
        when others => c_115 <= c_115_114_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 116 and associated fundamentals [[195], [941], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 117 and associated fundamentals [[195], [941], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 118 and associated fundamentals [[195], [941], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 119 and associated fundamentals [[195], [941], [159]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 120 and associated fundamentals [[195], [403], [134]]
  c_120_100_1_False_resize <= c_100;
  c_120_100_1_False_shift <= shift_left(c_120_100_1_False_resize, 1);
  c_120_119_0_False_resize <= c_119(24 downto 0);
  c_120_119_0_False_shift <= shift_left(c_120_119_0_False_resize, 0);
  c_120_77_0_False_resize <= c_77(24 downto 0);
  c_120_77_0_False_shift <= shift_left(c_120_77_0_False_resize, 0);
  with config_select_13 select c_120_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_120_sel is
        when "00" => c_120 <= c_120_100_1_False_shift;
        when "01" => c_120 <= c_120_119_0_False_shift;
        when others => c_120 <= c_120_77_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 121 and associated fundamentals [[135], [-235], [535]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 122 and associated fundamentals [[135], [-235], [535]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 123 and associated fundamentals [[349], [854], [646]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 124 and associated fundamentals [[349], [854], [646]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 125 and associated fundamentals [[996], [854], [535]]
  c_125_72_2_False_resize <= c_72;
  c_125_72_2_False_shift <= shift_left(c_125_72_2_False_resize, 2);
  c_125_122_0_False_resize <= c_122;
  c_125_122_0_False_shift <= shift_left(c_125_122_0_False_resize, 0);
  c_125_124_0_False_resize <= c_124;
  c_125_124_0_False_shift <= shift_left(c_125_124_0_False_resize, 0);
  with config_select_13 select c_125_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_125_sel is
        when "00" => c_125 <= c_125_72_2_False_shift;
        when "01" => c_125 <= c_125_122_0_False_shift;
        when others => c_125 <= c_125_124_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 126 and associated fundamentals [[349], [854], [646]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 127 and associated fundamentals [[349], [854], [646]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 128 and associated fundamentals [[875], [909], [646]]
  c_128_94_0_False_resize <= c_94;
  c_128_94_0_False_shift <= shift_left(c_128_94_0_False_resize, 0);
  c_128_127_0_False_resize <= c_127;
  c_128_127_0_False_shift <= shift_left(c_128_127_0_False_resize, 0);
  c_128_114_0_False_resize <= c_114;
  c_128_114_0_False_shift <= shift_left(c_128_114_0_False_resize, 0);
  with config_select_15 select c_128_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_128_sel is
        when "00" => c_128 <= c_128_94_0_False_shift;
        when "01" => c_128 <= c_128_127_0_False_shift;
        when others => c_128 <= c_128_114_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 129 and associated fundamentals [[349], [1018], [318]]
  c_129_72_0_False_resize <= c_72;
  c_129_72_0_False_shift <= shift_left(c_129_72_0_False_resize, 0);
  c_129_124_0_False_resize <= c_124;
  c_129_124_0_False_shift <= shift_left(c_129_124_0_False_resize, 0);
  c_129_119_1_False_resize <= c_119;
  c_129_119_1_False_shift <= shift_left(c_129_119_1_False_resize, 1);
  with config_select_13 select c_129_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_129_sel is
        when "00" => c_129 <= c_129_72_0_False_shift;
        when "01" => c_129 <= c_129_124_0_False_shift;
        when others => c_129 <= c_129_119_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 130 and associated fundamentals [[619], [941], [847]]
  c_130_72_0_False_resize <= c_72;
  c_130_72_0_False_shift <= shift_left(c_130_72_0_False_resize, 0);
  c_130_77_0_False_resize <= c_77(25 downto 0);
  c_130_77_0_False_shift <= shift_left(c_130_77_0_False_resize, 0);
  c_130_119_0_False_resize <= c_119;
  c_130_119_0_False_shift <= shift_left(c_130_119_0_False_resize, 0);
  with config_select_13 select c_130_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_130_sel is
        when "00" => c_130 <= c_130_72_0_False_shift;
        when "01" => c_130 <= c_130_77_0_False_shift;
        when others => c_130 <= c_130_119_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 131 and associated fundamentals [[507], [328], [456]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 132 and associated fundamentals [[507], [328], [456]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 133 and associated fundamentals [[507], [328], [456]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 134 and associated fundamentals [[507], [328], [456]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 135 and associated fundamentals [[507], [328], [456]]
  c_135_resize <= c_134;
  c_135 <= shift_left(c_135_resize, 0);
  -- node of type 'register' in stage 12 with id 136 and associated fundamentals [[912], [160], [350]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 137 and associated fundamentals [[912], [160], [350]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 138 and associated fundamentals [[912], [160], [350]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 139 and associated fundamentals [[912], [160], [350]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 140 and associated fundamentals [[912], [160], [350]]
  c_140_resize <= c_139;
  c_140 <= shift_left(c_140_resize, 0);
  -- node of type 'output' in stage 15 with id 141 and associated fundamentals [[136], [325], [787]]
  c_141_resize <= c_107;
  c_141 <= shift_left(c_141_resize, 0);
  -- node of type 'register' in stage 8 with id 142 and associated fundamentals [[270], [21], [452]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 143 and associated fundamentals [[270], [21], [452]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 144 and associated fundamentals [[270], [21], [452]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 145 and associated fundamentals [[270], [21], [452]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 146 and associated fundamentals [[270], [21], [452]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_145 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 147 and associated fundamentals [[270], [21], [452]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 148 and associated fundamentals [[270], [21], [452]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 149 and associated fundamentals [[270], [21], [452]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 150 and associated fundamentals [[270], [21], [452]]
  c_150_resize <= c_149;
  c_150 <= shift_left(c_150_resize, 0);
  -- node of type 'output' in stage 15 with id 151 and associated fundamentals [[187], [375], [419]]
  c_151_resize <= c_115;
  c_151 <= shift_left(c_151_resize, 0);
  -- node of type 'register' in stage 14 with id 152 and associated fundamentals [[195], [403], [134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 153 and associated fundamentals [[195], [403], [134]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_152 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 154 and associated fundamentals [[195], [403], [134]]
  c_154_resize <= c_153;
  c_154 <= shift_left(c_154_resize, 0);
  -- node of type 'register' in stage 14 with id 155 and associated fundamentals [[996], [854], [535]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 156 and associated fundamentals [[996], [854], [535]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 157 and associated fundamentals [[996], [854], [535]]
  c_157_resize <= c_156;
  c_157 <= shift_left(c_157_resize, 0);
  -- node of type 'output' in stage 15 with id 158 and associated fundamentals [[875], [909], [646]]
  c_158_resize <= c_128;
  c_158 <= shift_left(c_158_resize, 0);
  -- node of type 'register' in stage 14 with id 159 and associated fundamentals [[349], [1018], [318]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 160 and associated fundamentals [[349], [1018], [318]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_159 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 161 and associated fundamentals [[349], [1018], [318]]
  c_161_resize <= c_160;
  c_161 <= shift_left(c_161_resize, 0);
  -- node of type 'register' in stage 14 with id 162 and associated fundamentals [[619], [941], [847]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 163 and associated fundamentals [[619], [941], [847]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_162 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 164 and associated fundamentals [[619], [941], [847]]
  c_164_resize <= c_163;
  c_164 <= shift_left(c_164_resize, 0);
end architecture;

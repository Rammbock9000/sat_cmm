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
    y_8: out std_logic_vector(23 downto 0);
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
  signal c_1: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_0_4_False_resize: signed(19 downto 0);
  signal c_2_0_4_False_shift: signed(19 downto 0);
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
  signal c_6: signed(19 downto 0);
  signal c_6_3_0_False_resize: signed(19 downto 0);
  signal c_6_3_0_False_shift: signed(19 downto 0);
  signal c_6_5_1_False_resize: signed(19 downto 0);
  signal c_6_5_1_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_3_1_False_resize: signed(20 downto 0);
  signal c_7_3_1_False_shift: signed(20 downto 0);
  signal c_7_5_0_False_resize: signed(20 downto 0);
  signal c_7_5_0_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_i0_resize: signed(21 downto 0);
  signal c_8_i1_resize: signed(21 downto 0);
  signal c_8_i0_shift: signed(21 downto 0);
  signal c_8_i1_shift: signed(21 downto 0);
  signal c_8_arith: signed(21 downto 0);
  signal c_8_oshift: signed(21 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_3_1_False_resize: signed(21 downto 0);
  signal c_9_3_1_False_shift: signed(21 downto 0);
  signal c_9_5_0_False_resize: signed(21 downto 0);
  signal c_9_5_0_False_shift: signed(21 downto 0);
  signal c_9_5_6_False_resize: signed(21 downto 0);
  signal c_9_5_6_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_11_6_False_resize: signed(21 downto 0);
  signal c_12_11_6_False_shift: signed(21 downto 0);
  signal c_12_11_2_False_resize: signed(21 downto 0);
  signal c_12_11_2_False_shift: signed(21 downto 0);
  signal c_12_8_0_False_resize: signed(21 downto 0);
  signal c_12_8_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_3_0_False_resize: signed(23 downto 0);
  signal c_16_3_0_False_shift: signed(23 downto 0);
  signal c_16_5_8_False_resize: signed(23 downto 0);
  signal c_16_5_8_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_18_0_False_resize: signed(25 downto 0);
  signal c_19_18_0_False_shift: signed(25 downto 0);
  signal c_19_18_4_False_resize: signed(25 downto 0);
  signal c_19_18_4_False_shift: signed(25 downto 0);
  signal c_19_15_2_False_resize: signed(25 downto 0);
  signal c_19_15_2_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(15 downto 0);
  signal c_26: signed(15 downto 0);
  signal c_27: signed(15 downto 0);
  signal c_28: signed(15 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_24_1_False_resize: signed(24 downto 0);
  signal c_29_24_1_False_shift: signed(24 downto 0);
  signal c_29_28_6_False_resize: signed(24 downto 0);
  signal c_29_28_6_False_shift: signed(24 downto 0);
  signal c_29_24_0_False_resize: signed(24 downto 0);
  signal c_29_24_0_False_shift: signed(24 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_32_31_0_False_resize: signed(21 downto 0);
  signal c_32_31_0_False_shift: signed(21 downto 0);
  signal c_32_8_0_False_resize: signed(21 downto 0);
  signal c_32_8_0_False_shift: signed(21 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_34: signed(21 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(24 downto 0);
  signal c_38_31_2_False_resize: signed(24 downto 0);
  signal c_38_31_2_False_shift: signed(24 downto 0);
  signal c_38_31_5_False_resize: signed(24 downto 0);
  signal c_38_31_5_False_shift: signed(24 downto 0);
  signal c_38_8_0_False_resize: signed(24 downto 0);
  signal c_38_8_0_False_shift: signed(24 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_31_0_False_resize: signed(25 downto 0);
  signal c_39_31_0_False_shift: signed(25 downto 0);
  signal c_39_8_0_False_resize: signed(25 downto 0);
  signal c_39_8_0_False_shift: signed(25 downto 0);
  signal c_39_31_7_False_resize: signed(25 downto 0);
  signal c_39_31_7_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_i0_resize: signed(25 downto 0);
  signal c_40_i1_resize: signed(25 downto 0);
  signal c_40_i0_shift: signed(25 downto 0);
  signal c_40_i1_shift: signed(25 downto 0);
  signal c_40_arith: signed(25 downto 0);
  signal c_40_oshift: signed(25 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(21 downto 0);
  signal c_41_18_0_False_resize: signed(21 downto 0);
  signal c_41_18_0_False_shift: signed(21 downto 0);
  signal c_41_15_0_False_resize: signed(21 downto 0);
  signal c_41_15_0_False_shift: signed(21 downto 0);
  signal c_41_26_1_False_resize: signed(21 downto 0);
  signal c_41_26_1_False_shift: signed(21 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_45_0_False_resize: signed(23 downto 0);
  signal c_46_45_0_False_shift: signed(23 downto 0);
  signal c_46_43_0_False_resize: signed(23 downto 0);
  signal c_46_43_0_False_shift: signed(23 downto 0);
  signal c_46_24_0_False_resize: signed(23 downto 0);
  signal c_46_24_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(21 downto 0);
  signal c_48: signed(21 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_i0_resize: signed(23 downto 0);
  signal c_49_i1_resize: signed(23 downto 0);
  signal c_49_i0_shift: signed(23 downto 0);
  signal c_49_i1_shift: signed(23 downto 0);
  signal c_49_arith: signed(23 downto 0);
  signal c_49_oshift: signed(23 downto 0);
  signal c_49_sub_sel: std_logic;
  signal c_50: signed(15 downto 0);
  signal c_51: signed(15 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_54_53_0_False_resize: signed(24 downto 0);
  signal c_54_53_0_False_shift: signed(24 downto 0);
  signal c_54_51_4_False_resize: signed(24 downto 0);
  signal c_54_51_4_False_shift: signed(24 downto 0);
  signal c_54_49_1_False_resize: signed(24 downto 0);
  signal c_54_49_1_False_shift: signed(24 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_51_6_False_resize: signed(23 downto 0);
  signal c_57_51_6_False_shift: signed(23 downto 0);
  signal c_57_56_0_False_resize: signed(23 downto 0);
  signal c_57_56_0_False_shift: signed(23 downto 0);
  signal c_57_49_0_False_resize: signed(23 downto 0);
  signal c_57_49_0_False_shift: signed(23 downto 0);
  signal c_57_sel: std_logic_vector(1 downto 0);
  signal c_58: signed(24 downto 0);
  signal c_58_i0_resize: signed(24 downto 0);
  signal c_58_i1_resize: signed(24 downto 0);
  signal c_58_i0_shift: signed(24 downto 0);
  signal c_58_i1_shift: signed(24 downto 0);
  signal c_58_arith: signed(24 downto 0);
  signal c_58_oshift: signed(24 downto 0);
  signal c_58_sub_sel: std_logic;
  signal c_59: signed(21 downto 0);
  signal c_60: signed(21 downto 0);
  signal c_61: signed(21 downto 0);
  signal c_62: signed(21 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_56_1_False_resize: signed(23 downto 0);
  signal c_63_56_1_False_shift: signed(23 downto 0);
  signal c_63_49_1_False_resize: signed(23 downto 0);
  signal c_63_49_1_False_shift: signed(23 downto 0);
  signal c_63_62_0_False_resize: signed(23 downto 0);
  signal c_63_62_0_False_shift: signed(23 downto 0);
  signal c_63_sel: std_logic_vector(1 downto 0);
  signal c_64: signed(19 downto 0);
  signal c_65: signed(19 downto 0);
  signal c_66: signed(19 downto 0);
  signal c_67: signed(19 downto 0);
  signal c_68: signed(19 downto 0);
  signal c_69: signed(19 downto 0);
  signal c_70: signed(23 downto 0);
  signal c_70_49_0_False_resize: signed(23 downto 0);
  signal c_70_49_0_False_shift: signed(23 downto 0);
  signal c_70_69_1_False_resize: signed(23 downto 0);
  signal c_70_69_1_False_shift: signed(23 downto 0);
  signal c_70_51_1_False_resize: signed(23 downto 0);
  signal c_70_51_1_False_shift: signed(23 downto 0);
  signal c_70_sel: std_logic_vector(1 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_i0_resize: signed(25 downto 0);
  signal c_71_i1_resize: signed(25 downto 0);
  signal c_71_i0_shift: signed(25 downto 0);
  signal c_71_i1_shift: signed(25 downto 0);
  signal c_71_arith: signed(25 downto 0);
  signal c_71_oshift: signed(25 downto 0);
  signal c_71_sub_sel: std_logic;
  signal c_72: signed(25 downto 0);
  signal c_72_49_0_False_resize: signed(25 downto 0);
  signal c_72_49_0_False_shift: signed(25 downto 0);
  signal c_72_53_0_False_resize: signed(25 downto 0);
  signal c_72_53_0_False_shift: signed(25 downto 0);
  signal c_72_sel: std_logic_vector(0 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_37_0_False_resize: signed(25 downto 0);
  signal c_73_37_0_False_shift: signed(25 downto 0);
  signal c_73_49_2_False_resize: signed(25 downto 0);
  signal c_73_49_2_False_shift: signed(25 downto 0);
  signal c_73_sel: std_logic_vector(0 downto 0);
  signal c_74: signed(26 downto 0);
  signal c_74_i0_resize: signed(26 downto 0);
  signal c_74_i1_resize: signed(26 downto 0);
  signal c_74_i0_shift: signed(26 downto 0);
  signal c_74_i1_shift: signed(26 downto 0);
  signal c_74_arith: signed(26 downto 0);
  signal c_74_oshift: signed(26 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_77: signed(26 downto 0);
  signal c_77_74_0_False_resize: signed(26 downto 0);
  signal c_77_74_0_False_shift: signed(26 downto 0);
  signal c_77_76_2_False_resize: signed(26 downto 0);
  signal c_77_76_2_False_shift: signed(26 downto 0);
  signal c_77_58_2_False_resize: signed(26 downto 0);
  signal c_77_58_2_False_shift: signed(26 downto 0);
  signal c_77_sel: std_logic_vector(1 downto 0);
  signal c_78: signed(19 downto 0);
  signal c_79: signed(19 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_82: signed(24 downto 0);
  signal c_82_81_0_False_resize: signed(24 downto 0);
  signal c_82_81_0_False_shift: signed(24 downto 0);
  signal c_82_79_6_False_resize: signed(24 downto 0);
  signal c_82_79_6_False_shift: signed(24 downto 0);
  signal c_82_58_1_False_resize: signed(24 downto 0);
  signal c_82_58_1_False_shift: signed(24 downto 0);
  signal c_82_sel: std_logic_vector(1 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_83_i0_resize: signed(25 downto 0);
  signal c_83_i1_resize: signed(25 downto 0);
  signal c_83_i0_shift: signed(25 downto 0);
  signal c_83_i1_shift: signed(25 downto 0);
  signal c_83_arith: signed(25 downto 0);
  signal c_83_oshift: signed(25 downto 0);
  signal c_83_sub_sel: std_logic;
  signal c_84: signed(21 downto 0);
  signal c_85: signed(21 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_86_85_1_False_resize: signed(25 downto 0);
  signal c_86_85_1_False_shift: signed(25 downto 0);
  signal c_86_76_0_False_resize: signed(25 downto 0);
  signal c_86_76_0_False_shift: signed(25 downto 0);
  signal c_86_71_1_False_resize: signed(25 downto 0);
  signal c_86_71_1_False_shift: signed(25 downto 0);
  signal c_86_sel: std_logic_vector(1 downto 0);
  signal c_87: signed(26 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_88_i0_resize: signed(25 downto 0);
  signal c_88_i1_resize: signed(25 downto 0);
  signal c_88_i0_shift: signed(25 downto 0);
  signal c_88_i1_shift: signed(25 downto 0);
  signal c_88_arith: signed(25 downto 0);
  signal c_88_oshift: signed(25 downto 0);
  signal c_88_sub_sel: std_logic;
  signal c_89: signed(21 downto 0);
  signal c_90: signed(21 downto 0);
  signal c_91: signed(24 downto 0);
  signal c_92: signed(24 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_93_90_3_False_resize: signed(25 downto 0);
  signal c_93_90_3_False_shift: signed(25 downto 0);
  signal c_93_92_0_False_resize: signed(25 downto 0);
  signal c_93_92_0_False_shift: signed(25 downto 0);
  signal c_93_88_0_False_resize: signed(25 downto 0);
  signal c_93_88_0_False_shift: signed(25 downto 0);
  signal c_93_sel: std_logic_vector(1 downto 0);
  signal c_94: signed(23 downto 0);
  signal c_95: signed(23 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_100: signed(25 downto 0);
  signal c_100_95_1_False_resize: signed(25 downto 0);
  signal c_100_95_1_False_shift: signed(25 downto 0);
  signal c_100_74_1_False_resize: signed(25 downto 0);
  signal c_100_74_1_False_shift: signed(25 downto 0);
  signal c_100_99_0_False_resize: signed(25 downto 0);
  signal c_100_99_0_False_shift: signed(25 downto 0);
  signal c_100_sel: std_logic_vector(1 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_103_99_0_False_resize: signed(25 downto 0);
  signal c_103_99_0_False_shift: signed(25 downto 0);
  signal c_103_102_0_False_resize: signed(25 downto 0);
  signal c_103_102_0_False_shift: signed(25 downto 0);
  signal c_103_74_0_False_resize: signed(25 downto 0);
  signal c_103_74_0_False_shift: signed(25 downto 0);
  signal c_103_sel: std_logic_vector(1 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_104_83_0_False_resize: signed(25 downto 0);
  signal c_104_83_0_False_shift: signed(25 downto 0);
  signal c_104_88_0_False_resize: signed(25 downto 0);
  signal c_104_88_0_False_shift: signed(25 downto 0);
  signal c_104_sel: std_logic_vector(0 downto 0);
  signal c_105: signed(15 downto 0);
  signal c_106: signed(15 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_107_106_3_False_resize: signed(25 downto 0);
  signal c_107_106_3_False_shift: signed(25 downto 0);
  signal c_107_76_0_False_resize: signed(25 downto 0);
  signal c_107_76_0_False_shift: signed(25 downto 0);
  signal c_107_71_0_False_resize: signed(25 downto 0);
  signal c_107_71_0_False_shift: signed(25 downto 0);
  signal c_107_sel: std_logic_vector(1 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_108_76_0_False_resize: signed(25 downto 0);
  signal c_108_76_0_False_shift: signed(25 downto 0);
  signal c_108_76_2_False_resize: signed(25 downto 0);
  signal c_108_76_2_False_shift: signed(25 downto 0);
  signal c_108_58_0_False_resize: signed(25 downto 0);
  signal c_108_58_0_False_shift: signed(25 downto 0);
  signal c_108_sel: std_logic_vector(1 downto 0);
  signal c_109: signed(24 downto 0);
  signal c_109_102_0_False_resize: signed(24 downto 0);
  signal c_109_102_0_False_shift: signed(24 downto 0);
  signal c_109_102_1_False_resize: signed(24 downto 0);
  signal c_109_102_1_False_shift: signed(24 downto 0);
  signal c_109_71_0_False_resize: signed(24 downto 0);
  signal c_109_71_0_False_shift: signed(24 downto 0);
  signal c_109_sel: std_logic_vector(1 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_112_111_0_False_resize: signed(25 downto 0);
  signal c_112_111_0_False_shift: signed(25 downto 0);
  signal c_112_92_1_False_resize: signed(25 downto 0);
  signal c_112_92_1_False_shift: signed(25 downto 0);
  signal c_112_88_1_False_resize: signed(25 downto 0);
  signal c_112_88_1_False_shift: signed(25 downto 0);
  signal c_112_sel: std_logic_vector(1 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_113_69_4_False_resize: signed(23 downto 0);
  signal c_113_69_4_False_shift: signed(23 downto 0);
  signal c_113_56_0_False_resize: signed(23 downto 0);
  signal c_113_56_0_False_shift: signed(23 downto 0);
  signal c_113_49_0_False_resize: signed(23 downto 0);
  signal c_113_49_0_False_shift: signed(23 downto 0);
  signal c_113_sel: std_logic_vector(1 downto 0);
  signal c_114: signed(25 downto 0);
  signal c_115: signed(25 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_116_90_0_False_resize: signed(25 downto 0);
  signal c_116_90_0_False_shift: signed(25 downto 0);
  signal c_116_83_0_False_resize: signed(25 downto 0);
  signal c_116_83_0_False_shift: signed(25 downto 0);
  signal c_116_115_0_False_resize: signed(25 downto 0);
  signal c_116_115_0_False_shift: signed(25 downto 0);
  signal c_116_sel: std_logic_vector(1 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_117_resize: signed(25 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_120_resize: signed(25 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_122: signed(25 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_123_resize: signed(25 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_124_resize: signed(25 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_127_resize: signed(25 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_130: signed(25 downto 0);
  signal c_130_resize: signed(25 downto 0);
  signal c_131: signed(24 downto 0);
  signal c_132: signed(24 downto 0);
  signal c_133: signed(24 downto 0);
  signal c_133_resize: signed(24 downto 0);
  signal c_134: signed(25 downto 0);
  signal c_134_resize: signed(25 downto 0);
  signal c_135: signed(23 downto 0);
  signal c_136: signed(23 downto 0);
  signal c_137: signed(23 downto 0);
  signal c_138: signed(23 downto 0);
  signal c_139: signed(23 downto 0);
  signal c_139_resize: signed(23 downto 0);
  signal c_140: signed(25 downto 0);
  signal c_140_resize: signed(25 downto 0);
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
  -- output node 0 with id 117
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_117);
    end if;
  end process;
  -- output node 1 with id 120
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_120);
    end if;
  end process;
  -- output node 2 with id 123
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_123);
    end if;
  end process;
  -- output node 3 with id 124
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_124);
    end if;
  end process;
  -- output node 4 with id 127
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_127);
    end if;
  end process;
  -- output node 5 with id 130
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_130);
    end if;
  end process;
  -- output node 6 with id 133
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_133);
    end if;
  end process;
  -- output node 7 with id 134
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_134);
    end if;
  end process;
  -- output node 8 with id 139
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_139);
    end if;
  end process;
  -- output node 9 with id 140
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_140);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [8], [8]]
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_3_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-15], [9], [7]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
      w_o => 20,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[2], [9], [7]]
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_1_False_resize <= resize(c_5, 20);
  c_6_5_1_False_shift <= shift_left(c_6_5_1_False_resize, 1);
  with config_select_3 select c_6_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[-30], [18], [1]]
  c_7_3_1_False_resize <= resize(c_3, 21);
  c_7_3_1_False_shift <= shift_left(c_7_3_1_False_resize, 1);
  c_7_5_0_False_resize <= resize(c_5, 21);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_3_1_False_shift;
        when others => c_7 <= c_7_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 8 and associated fundamentals [[46], [54], [55]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 22,
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
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[-30], [1], [64]]
  c_9_3_1_False_resize <= resize(c_3, 22);
  c_9_3_1_False_shift <= shift_left(c_9_3_1_False_resize, 1);
  c_9_5_0_False_resize <= resize(c_5, 22);
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  c_9_5_6_False_resize <= resize(c_5, 22);
  c_9_5_6_False_shift <= shift_left(c_9_5_6_False_resize, 6);
  with config_select_3 select c_9_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_3_1_False_shift;
        when "01" => c_9 <= c_9_5_0_False_shift;
        when others => c_9 <= c_9_5_6_False_shift;
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
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[4], [64], [55]]
  c_12_11_6_False_resize <= resize(c_11, 22);
  c_12_11_6_False_shift <= shift_left(c_12_11_6_False_resize, 6);
  c_12_11_2_False_resize <= resize(c_11, 22);
  c_12_11_2_False_shift <= shift_left(c_12_11_2_False_resize, 2);
  c_12_8_0_False_resize <= c_8;
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_11_6_False_shift;
        when "01" => c_12 <= c_12_11_2_False_shift;
        when others => c_12 <= c_12_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[-30], [1], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[-30], [1], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[-38], [-127], [174]]
  with config_select_6 select c_15_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_12,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[-15], [9], [256]]
  c_16_3_0_False_resize <= resize(c_3, 24);
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  c_16_5_8_False_resize <= resize(c_5, 24);
  c_16_5_8_False_shift <= shift_left(c_16_5_8_False_resize, 8);
  with config_select_3 select c_16_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_3_0_False_shift;
        when others => c_16 <= c_16_5_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[46], [54], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[46], [54], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[-152], [864], [55]]
  c_19_18_0_False_resize <= resize(c_18, 26);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  c_19_18_4_False_resize <= resize(c_18, 26);
  c_19_18_4_False_shift <= shift_left(c_19_18_4_False_resize, 4);
  c_19_15_2_False_resize <= resize(c_15, 26);
  c_19_15_2_False_shift <= shift_left(c_19_15_2_False_resize, 2);
  with config_select_7 select c_19_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_18_0_False_shift;
        when "01" => c_19 <= c_19_18_4_False_shift;
        when others => c_19 <= c_19_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[-15], [9], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[-15], [9], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[-15], [9], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 23 and associated fundamentals [[-15], [9], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 24 and associated fundamentals [[137], [873], [201]]
  with config_select_8 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
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
      sub_i => c_24_sub_sel,
      x_i => c_23,
      y_i => c_19,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 28 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 29 and associated fundamentals [[137], [64], [402]]
  c_29_24_1_False_resize <= c_24(24 downto 0);
  c_29_24_1_False_shift <= shift_left(c_29_24_1_False_resize, 1);
  c_29_28_6_False_resize <= resize(c_28, 25);
  c_29_28_6_False_shift <= shift_left(c_29_28_6_False_resize, 6);
  c_29_24_0_False_resize <= c_24(24 downto 0);
  c_29_24_0_False_shift <= shift_left(c_29_24_0_False_resize, 0);
  with config_select_9 select c_29_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_24_1_False_shift;
        when "01" => c_29 <= c_29_28_6_False_shift;
        when others => c_29 <= c_29_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 30 and associated fundamentals [[-15], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 31 and associated fundamentals [[-15], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 32 and associated fundamentals [[46], [9], [7]]
  c_32_31_0_False_resize <= resize(c_31, 22);
  c_32_31_0_False_shift <= shift_left(c_32_31_0_False_resize, 0);
  c_32_8_0_False_resize <= c_8;
  c_32_8_0_False_shift <= shift_left(c_32_8_0_False_resize, 0);
  with config_select_5 select c_32_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_31_0_False_shift;
        when others => c_32 <= c_32_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[46], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[46], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[46], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 36 and associated fundamentals [[46], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 37 and associated fundamentals [[228], [119], [811]]
  with config_select_10 select c_37_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
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
      sub_i => c_37_sub_sel,
      x_i => c_29,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 38 and associated fundamentals [[46], [288], [28]]
  c_38_31_2_False_resize <= resize(c_31, 25);
  c_38_31_2_False_shift <= shift_left(c_38_31_2_False_resize, 2);
  c_38_31_5_False_resize <= resize(c_31, 25);
  c_38_31_5_False_shift <= shift_left(c_38_31_5_False_resize, 5);
  c_38_8_0_False_resize <= resize(c_8, 25);
  c_38_8_0_False_shift <= shift_left(c_38_8_0_False_resize, 0);
  with config_select_5 select c_38_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_31_2_False_shift;
        when "01" => c_38 <= c_38_31_5_False_shift;
        when others => c_38 <= c_38_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 39 and associated fundamentals [[-15], [54], [896]]
  c_39_31_0_False_resize <= resize(c_31, 26);
  c_39_31_0_False_shift <= shift_left(c_39_31_0_False_resize, 0);
  c_39_8_0_False_resize <= resize(c_8, 26);
  c_39_8_0_False_shift <= shift_left(c_39_8_0_False_resize, 0);
  c_39_31_7_False_resize <= resize(c_31, 26);
  c_39_31_7_False_shift <= shift_left(c_39_31_7_False_resize, 7);
  with config_select_5 select c_39_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_31_0_False_shift;
        when "01" => c_39 <= c_39_8_0_False_shift;
        when others => c_39 <= c_39_31_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 40 and associated fundamentals [[107], [630], [-840]]
  with config_select_6 select c_40_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
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
      sub_i => c_40_sub_sel,
      x_i => c_38,
      y_i => c_39,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 41 and associated fundamentals [[-38], [54], [2]]
  c_41_18_0_False_resize <= c_18;
  c_41_18_0_False_shift <= shift_left(c_41_18_0_False_resize, 0);
  c_41_15_0_False_resize <= c_15(21 downto 0);
  c_41_15_0_False_shift <= shift_left(c_41_15_0_False_resize, 0);
  c_41_26_1_False_resize <= resize(c_26, 22);
  c_41_26_1_False_shift <= shift_left(c_41_26_1_False_resize, 1);
  with config_select_7 select c_41_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_18_0_False_shift;
        when "01" => c_41 <= c_41_15_0_False_shift;
        when others => c_41 <= c_41_26_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[-38], [-127], [174]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[-38], [-127], [174]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[107], [630], [-840]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[107], [630], [-840]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 46 and associated fundamentals [[107], [-127], [201]]
  c_46_45_0_False_resize <= c_45(23 downto 0);
  c_46_45_0_False_shift <= shift_left(c_46_45_0_False_resize, 0);
  c_46_43_0_False_resize <= c_43;
  c_46_43_0_False_shift <= shift_left(c_46_43_0_False_resize, 0);
  c_46_24_0_False_resize <= c_24(23 downto 0);
  c_46_24_0_False_shift <= shift_left(c_46_24_0_False_resize, 0);
  with config_select_9 select c_46_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_45_0_False_shift;
        when "01" => c_46 <= c_46_43_0_False_shift;
        when others => c_46 <= c_46_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[-38], [54], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[-38], [54], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 49 and associated fundamentals [[69], [181], [-199]]
  with config_select_10 select c_49_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_49: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_49_sub_sel,
      x_i => c_48,
      y_i => c_46,
      z_o => c_49_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_49_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 51 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[137], [873], [201]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[137], [873], [201]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 54 and associated fundamentals [[137], [16], [-398]]
  c_54_53_0_False_resize <= c_53(24 downto 0);
  c_54_53_0_False_shift <= shift_left(c_54_53_0_False_resize, 0);
  c_54_51_4_False_resize <= resize(c_51, 25);
  c_54_51_4_False_shift <= shift_left(c_54_51_4_False_resize, 4);
  c_54_49_1_False_resize <= resize(c_49, 25);
  c_54_49_1_False_shift <= shift_left(c_54_49_1_False_resize, 1);
  with config_select_11 select c_54_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_53_0_False_shift;
        when "01" => c_54 <= c_54_51_4_False_shift;
        when others => c_54 <= c_54_49_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 55 and associated fundamentals [[-38], [-127], [174]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 56 and associated fundamentals [[-38], [-127], [174]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 57 and associated fundamentals [[-38], [181], [64]]
  c_57_51_6_False_resize <= resize(c_51, 24);
  c_57_51_6_False_shift <= shift_left(c_57_51_6_False_resize, 6);
  c_57_56_0_False_resize <= c_56;
  c_57_56_0_False_shift <= shift_left(c_57_56_0_False_resize, 0);
  c_57_49_0_False_resize <= c_49;
  c_57_49_0_False_shift <= shift_left(c_57_49_0_False_resize, 0);
  with config_select_11 select c_57_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "00" => c_57 <= c_57_51_6_False_shift;
        when "01" => c_57 <= c_57_56_0_False_shift;
        when others => c_57 <= c_57_49_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 58 and associated fundamentals [[175], [197], [-334]]
  with config_select_12 select c_58_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_58: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_58_sub_sel,
      x_i => c_54,
      y_i => c_57,
      z_o => c_58_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_58_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 59 and associated fundamentals [[46], [54], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 60 and associated fundamentals [[46], [54], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[46], [54], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 62 and associated fundamentals [[46], [54], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 63 and associated fundamentals [[138], [-254], [55]]
  c_63_56_1_False_resize <= c_56;
  c_63_56_1_False_shift <= shift_left(c_63_56_1_False_resize, 1);
  c_63_49_1_False_resize <= c_49;
  c_63_49_1_False_shift <= shift_left(c_63_49_1_False_resize, 1);
  c_63_62_0_False_resize <= resize(c_62, 24);
  c_63_62_0_False_shift <= shift_left(c_63_62_0_False_resize, 0);
  with config_select_11 select c_63_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "00" => c_63 <= c_63_56_1_False_shift;
        when "01" => c_63 <= c_63_49_1_False_shift;
        when others => c_63 <= c_63_62_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 64 and associated fundamentals [[-15], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 65 and associated fundamentals [[-15], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 66 and associated fundamentals [[-15], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 67 and associated fundamentals [[-15], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 68 and associated fundamentals [[-15], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 69 and associated fundamentals [[-15], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 70 and associated fundamentals [[2], [18], [-199]]
  c_70_49_0_False_resize <= c_49;
  c_70_49_0_False_shift <= shift_left(c_70_49_0_False_resize, 0);
  c_70_69_1_False_resize <= resize(c_69, 24);
  c_70_69_1_False_shift <= shift_left(c_70_69_1_False_resize, 1);
  c_70_51_1_False_resize <= resize(c_51, 24);
  c_70_51_1_False_shift <= shift_left(c_70_51_1_False_resize, 1);
  with config_select_11 select c_70_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "00" => c_70 <= c_70_49_0_False_shift;
        when "01" => c_70 <= c_70_69_1_False_shift;
        when others => c_70 <= c_70_51_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 71 and associated fundamentals [[278], [-526], [309]]
  with config_select_12 select c_71_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_71: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
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
      x_i => c_63,
      y_i => c_70,
      z_o => c_71_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_71_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 72 and associated fundamentals [[69], [873], [-199]]
  c_72_49_0_False_resize <= resize(c_49, 26);
  c_72_49_0_False_shift <= shift_left(c_72_49_0_False_resize, 0);
  c_72_53_0_False_resize <= c_53;
  c_72_53_0_False_shift <= shift_left(c_72_53_0_False_resize, 0);
  with config_select_11 select c_72_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "0" => c_72 <= c_72_49_0_False_shift;
        when others => c_72 <= c_72_53_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 73 and associated fundamentals [[276], [119], [-796]]
  c_73_37_0_False_resize <= c_37;
  c_73_37_0_False_shift <= shift_left(c_73_37_0_False_resize, 0);
  c_73_49_2_False_resize <= resize(c_49, 26);
  c_73_49_2_False_shift <= shift_left(c_73_49_2_False_resize, 2);
  with config_select_11 select c_73_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "0" => c_73 <= c_73_37_0_False_shift;
        when others => c_73 <= c_73_49_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 12 with id 74 and associated fundamentals [[-483], [635], [1393]]
  inst_adder_node_74: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 27,
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
      x_i => c_72,
      y_i => c_73,
      z_o => c_74_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_74_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 75 and associated fundamentals [[137], [873], [201]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 76 and associated fundamentals [[137], [873], [201]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 77 and associated fundamentals [[548], [788], [1393]]
  c_77_74_0_False_resize <= c_74;
  c_77_74_0_False_shift <= shift_left(c_77_74_0_False_resize, 0);
  c_77_76_2_False_resize <= resize(c_76, 27);
  c_77_76_2_False_shift <= shift_left(c_77_76_2_False_resize, 2);
  c_77_58_2_False_resize <= resize(c_58, 27);
  c_77_58_2_False_shift <= shift_left(c_77_58_2_False_resize, 2);
  with config_select_13 select c_77_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "00" => c_77 <= c_77_74_0_False_shift;
        when "01" => c_77 <= c_77_76_2_False_shift;
        when others => c_77 <= c_77_58_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 78 and associated fundamentals [[-15], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 79 and associated fundamentals [[-15], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 80 and associated fundamentals [[69], [181], [-199]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 81 and associated fundamentals [[69], [181], [-199]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 82 and associated fundamentals [[350], [181], [448]]
  c_82_81_0_False_resize <= resize(c_81, 25);
  c_82_81_0_False_shift <= shift_left(c_82_81_0_False_resize, 0);
  c_82_79_6_False_resize <= resize(c_79, 25);
  c_82_79_6_False_shift <= shift_left(c_82_79_6_False_resize, 6);
  c_82_58_1_False_resize <= c_58;
  c_82_58_1_False_shift <= shift_left(c_82_58_1_False_resize, 1);
  with config_select_13 select c_82_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_82_sel is
        when "00" => c_82 <= c_82_81_0_False_shift;
        when "01" => c_82 <= c_82_79_6_False_shift;
        when others => c_82 <= c_82_58_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 83 and associated fundamentals [[898], [607], [945]]
  with config_select_14 select c_83_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_83: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_83_sub_sel,
      x_i => c_77,
      y_i => c_82,
      z_o => c_83_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_83_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 84 and associated fundamentals [[46], [54], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 85 and associated fundamentals [[46], [54], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 86 and associated fundamentals [[137], [108], [618]]
  c_86_85_1_False_resize <= resize(c_85, 26);
  c_86_85_1_False_shift <= shift_left(c_86_85_1_False_resize, 1);
  c_86_76_0_False_resize <= c_76;
  c_86_76_0_False_shift <= shift_left(c_86_76_0_False_resize, 0);
  c_86_71_1_False_resize <= c_71;
  c_86_71_1_False_shift <= shift_left(c_86_71_1_False_resize, 1);
  with config_select_13 select c_86_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_86_sel is
        when "00" => c_86 <= c_86_85_1_False_shift;
        when "01" => c_86 <= c_86_76_0_False_shift;
        when others => c_86 <= c_86_71_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 87 and associated fundamentals [[-483], [635], [1393]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_74 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 88 and associated fundamentals [[-209], [851], [157]]
  with config_select_14 select c_88_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_88: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
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
      sub_i => c_88_sub_sel,
      x_i => c_87,
      y_i => c_86,
      z_o => c_88_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_88_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 89 and associated fundamentals [[46], [54], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 90 and associated fundamentals [[46], [54], [55]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 91 and associated fundamentals [[175], [197], [-334]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 92 and associated fundamentals [[175], [197], [-334]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 93 and associated fundamentals [[175], [851], [440]]
  c_93_90_3_False_resize <= resize(c_90, 26);
  c_93_90_3_False_shift <= shift_left(c_93_90_3_False_resize, 3);
  c_93_92_0_False_resize <= resize(c_92, 26);
  c_93_92_0_False_shift <= shift_left(c_93_92_0_False_resize, 0);
  c_93_88_0_False_resize <= c_88;
  c_93_88_0_False_shift <= shift_left(c_93_88_0_False_resize, 0);
  with config_select_15 select c_93_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_93_sel is
        when "00" => c_93 <= c_93_90_3_False_shift;
        when "01" => c_93 <= c_93_92_0_False_shift;
        when others => c_93 <= c_93_88_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 94 and associated fundamentals [[-38], [-127], [174]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 95 and associated fundamentals [[-38], [-127], [174]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 96 and associated fundamentals [[107], [630], [-840]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 97 and associated fundamentals [[107], [630], [-840]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 98 and associated fundamentals [[107], [630], [-840]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 99 and associated fundamentals [[107], [630], [-840]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 100 and associated fundamentals [[-966], [-254], [-840]]
  c_100_95_1_False_resize <= resize(c_95, 26);
  c_100_95_1_False_shift <= shift_left(c_100_95_1_False_resize, 1);
  c_100_74_1_False_resize <= c_74(25 downto 0);
  c_100_74_1_False_shift <= shift_left(c_100_74_1_False_resize, 1);
  c_100_99_0_False_resize <= c_99;
  c_100_99_0_False_shift <= shift_left(c_100_99_0_False_resize, 0);
  with config_select_13 select c_100_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_100_sel is
        when "00" => c_100 <= c_100_95_1_False_shift;
        when "01" => c_100 <= c_100_74_1_False_shift;
        when others => c_100 <= c_100_99_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 101 and associated fundamentals [[228], [119], [811]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 102 and associated fundamentals [[228], [119], [811]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 103 and associated fundamentals [[107], [635], [811]]
  c_103_99_0_False_resize <= c_99;
  c_103_99_0_False_shift <= shift_left(c_103_99_0_False_resize, 0);
  c_103_102_0_False_resize <= c_102;
  c_103_102_0_False_shift <= shift_left(c_103_102_0_False_resize, 0);
  c_103_74_0_False_resize <= c_74(25 downto 0);
  c_103_74_0_False_shift <= shift_left(c_103_74_0_False_resize, 0);
  with config_select_13 select c_103_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_103_sel is
        when "00" => c_103 <= c_103_99_0_False_shift;
        when "01" => c_103 <= c_103_102_0_False_shift;
        when others => c_103 <= c_103_74_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 104 and associated fundamentals [[898], [607], [157]]
  c_104_83_0_False_resize <= c_83;
  c_104_83_0_False_shift <= shift_left(c_104_83_0_False_resize, 0);
  c_104_88_0_False_resize <= c_88;
  c_104_88_0_False_shift <= shift_left(c_104_88_0_False_resize, 0);
  with config_select_15 select c_104_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_104_sel is
        when "0" => c_104 <= c_104_83_0_False_shift;
        when others => c_104 <= c_104_88_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 105 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 106 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 107 and associated fundamentals [[278], [873], [8]]
  c_107_106_3_False_resize <= resize(c_106, 26);
  c_107_106_3_False_shift <= shift_left(c_107_106_3_False_resize, 3);
  c_107_76_0_False_resize <= c_76;
  c_107_76_0_False_shift <= shift_left(c_107_76_0_False_resize, 0);
  c_107_71_0_False_resize <= c_71;
  c_107_71_0_False_shift <= shift_left(c_107_71_0_False_resize, 0);
  with config_select_13 select c_107_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_107_sel is
        when "00" => c_107 <= c_107_106_3_False_shift;
        when "01" => c_107 <= c_107_76_0_False_shift;
        when others => c_107 <= c_107_71_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 108 and associated fundamentals [[137], [197], [804]]
  c_108_76_0_False_resize <= c_76;
  c_108_76_0_False_shift <= shift_left(c_108_76_0_False_resize, 0);
  c_108_76_2_False_resize <= c_76;
  c_108_76_2_False_shift <= shift_left(c_108_76_2_False_resize, 2);
  c_108_58_0_False_resize <= resize(c_58, 26);
  c_108_58_0_False_shift <= shift_left(c_108_58_0_False_resize, 0);
  with config_select_13 select c_108_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_108_sel is
        when "00" => c_108 <= c_108_76_0_False_shift;
        when "01" => c_108 <= c_108_76_2_False_shift;
        when others => c_108 <= c_108_58_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 109 and associated fundamentals [[456], [119], [309]]
  c_109_102_0_False_resize <= c_102(24 downto 0);
  c_109_102_0_False_shift <= shift_left(c_109_102_0_False_resize, 0);
  c_109_102_1_False_resize <= c_102(24 downto 0);
  c_109_102_1_False_shift <= shift_left(c_109_102_1_False_resize, 1);
  c_109_71_0_False_resize <= c_71(24 downto 0);
  c_109_71_0_False_shift <= shift_left(c_109_71_0_False_resize, 0);
  with config_select_13 select c_109_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_109_sel is
        when "00" => c_109 <= c_109_102_0_False_shift;
        when "01" => c_109 <= c_109_102_1_False_shift;
        when others => c_109 <= c_109_71_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 110 and associated fundamentals [[278], [-526], [309]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 111 and associated fundamentals [[278], [-526], [309]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 112 and associated fundamentals [[-418], [-526], [-668]]
  c_112_111_0_False_resize <= c_111;
  c_112_111_0_False_shift <= shift_left(c_112_111_0_False_resize, 0);
  c_112_92_1_False_resize <= resize(c_92, 26);
  c_112_92_1_False_shift <= shift_left(c_112_92_1_False_resize, 1);
  c_112_88_1_False_resize <= c_88;
  c_112_88_1_False_shift <= shift_left(c_112_88_1_False_resize, 1);
  with config_select_15 select c_112_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_112_sel is
        when "00" => c_112 <= c_112_111_0_False_shift;
        when "01" => c_112 <= c_112_92_1_False_shift;
        when others => c_112 <= c_112_88_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 113 and associated fundamentals [[69], [144], [174]]
  c_113_69_4_False_resize <= resize(c_69, 24);
  c_113_69_4_False_shift <= shift_left(c_113_69_4_False_resize, 4);
  c_113_56_0_False_resize <= c_56;
  c_113_56_0_False_shift <= shift_left(c_113_56_0_False_resize, 0);
  c_113_49_0_False_resize <= c_49;
  c_113_49_0_False_shift <= shift_left(c_113_49_0_False_resize, 0);
  with config_select_11 select c_113_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_113_sel is
        when "00" => c_113 <= c_113_69_4_False_shift;
        when "01" => c_113 <= c_113_56_0_False_shift;
        when others => c_113 <= c_113_49_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 114 and associated fundamentals [[107], [630], [-840]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 115 and associated fundamentals [[107], [630], [-840]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 116 and associated fundamentals [[46], [630], [945]]
  c_116_90_0_False_resize <= resize(c_90, 26);
  c_116_90_0_False_shift <= shift_left(c_116_90_0_False_resize, 0);
  c_116_83_0_False_resize <= c_83;
  c_116_83_0_False_shift <= shift_left(c_116_83_0_False_resize, 0);
  c_116_115_0_False_resize <= c_115;
  c_116_115_0_False_shift <= shift_left(c_116_115_0_False_resize, 0);
  with config_select_15 select c_116_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_116_sel is
        when "00" => c_116 <= c_116_90_0_False_shift;
        when "01" => c_116 <= c_116_83_0_False_shift;
        when others => c_116 <= c_116_115_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 117 and associated fundamentals [[175], [851], [440]]
  c_117_resize <= c_93;
  c_117 <= shift_left(c_117_resize, 0);
  -- node of type 'register' in stage 14 with id 118 and associated fundamentals [[-966], [-254], [-840]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 119 and associated fundamentals [[-966], [-254], [-840]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 120 and associated fundamentals [[966], [254], [840]]
  c_120_resize <= c_119;
  c_120 <= -shift_left(c_120_resize, 0);
  -- node of type 'register' in stage 14 with id 121 and associated fundamentals [[107], [635], [811]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 122 and associated fundamentals [[107], [635], [811]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 123 and associated fundamentals [[107], [635], [811]]
  c_123_resize <= c_122;
  c_123 <= shift_left(c_123_resize, 0);
  -- node of type 'output' in stage 15 with id 124 and associated fundamentals [[898], [607], [157]]
  c_124_resize <= c_104;
  c_124 <= shift_left(c_124_resize, 0);
  -- node of type 'register' in stage 14 with id 125 and associated fundamentals [[278], [873], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 126 and associated fundamentals [[278], [873], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 127 and associated fundamentals [[278], [873], [8]]
  c_127_resize <= c_126;
  c_127 <= shift_left(c_127_resize, 0);
  -- node of type 'register' in stage 14 with id 128 and associated fundamentals [[137], [197], [804]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 129 and associated fundamentals [[137], [197], [804]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 130 and associated fundamentals [[137], [197], [804]]
  c_130_resize <= c_129;
  c_130 <= shift_left(c_130_resize, 0);
  -- node of type 'register' in stage 14 with id 131 and associated fundamentals [[456], [119], [309]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 132 and associated fundamentals [[456], [119], [309]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 133 and associated fundamentals [[456], [119], [309]]
  c_133_resize <= c_132;
  c_133 <= shift_left(c_133_resize, 0);
  -- node of type 'output' in stage 15 with id 134 and associated fundamentals [[418], [526], [668]]
  c_134_resize <= c_112;
  c_134 <= -shift_left(c_134_resize, 0);
  -- node of type 'register' in stage 12 with id 135 and associated fundamentals [[69], [144], [174]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 136 and associated fundamentals [[69], [144], [174]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_135 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 137 and associated fundamentals [[69], [144], [174]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 138 and associated fundamentals [[69], [144], [174]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 139 and associated fundamentals [[69], [144], [174]]
  c_139_resize <= c_138;
  c_139 <= shift_left(c_139_resize, 0);
  -- node of type 'output' in stage 15 with id 140 and associated fundamentals [[46], [630], [945]]
  c_140_resize <= c_116;
  c_140 <= shift_left(c_140_resize, 0);
end architecture;

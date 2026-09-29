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
  signal config_select_20: std_logic_vector(1 downto 0);
  signal config_select_21: std_logic_vector(1 downto 0);
  signal config_select_22: std_logic_vector(1 downto 0);
  signal config_select_23: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_0_1_False_resize: signed(19 downto 0);
  signal c_1_0_1_False_shift: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_0_3_False_resize: signed(19 downto 0);
  signal c_1_0_3_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_5_0_False_resize: signed(23 downto 0);
  signal c_6_5_0_False_shift: signed(23 downto 0);
  signal c_6_5_6_False_resize: signed(23 downto 0);
  signal c_6_5_6_False_shift: signed(23 downto 0);
  signal c_6_3_3_False_resize: signed(23 downto 0);
  signal c_6_3_3_False_shift: signed(23 downto 0);
  signal c_6_5_7_False_resize: signed(23 downto 0);
  signal c_6_5_7_False_shift: signed(23 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_3_0_False_resize: signed(22 downto 0);
  signal c_7_3_0_False_shift: signed(22 downto 0);
  signal c_7_5_3_False_resize: signed(22 downto 0);
  signal c_7_5_3_False_shift: signed(22 downto 0);
  signal c_7_3_3_False_resize: signed(22 downto 0);
  signal c_7_3_3_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_9_3_1_False_resize: signed(22 downto 0);
  signal c_9_3_1_False_shift: signed(22 downto 0);
  signal c_9_5_0_False_resize: signed(22 downto 0);
  signal c_9_5_0_False_shift: signed(22 downto 0);
  signal c_9_5_2_False_resize: signed(22 downto 0);
  signal c_9_5_2_False_shift: signed(22 downto 0);
  signal c_9_3_3_False_resize: signed(22 downto 0);
  signal c_9_3_3_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_8_1_False_resize: signed(24 downto 0);
  signal c_14_8_1_False_shift: signed(24 downto 0);
  signal c_14_11_0_False_resize: signed(24 downto 0);
  signal c_14_11_0_False_shift: signed(24 downto 0);
  signal c_14_11_7_False_resize: signed(24 downto 0);
  signal c_14_11_7_False_shift: signed(24 downto 0);
  signal c_14_13_0_False_resize: signed(24 downto 0);
  signal c_14_13_0_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(20 downto 0);
  signal c_19: signed(20 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_21_0_False_resize: signed(22 downto 0);
  signal c_22_21_0_False_shift: signed(22 downto 0);
  signal c_22_19_0_False_resize: signed(22 downto 0);
  signal c_22_19_0_False_shift: signed(22 downto 0);
  signal c_22_17_0_False_resize: signed(22 downto 0);
  signal c_22_17_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(15 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_19_2_False_resize: signed(22 downto 0);
  signal c_25_19_2_False_shift: signed(22 downto 0);
  signal c_25_19_0_False_resize: signed(22 downto 0);
  signal c_25_19_0_False_shift: signed(22 downto 0);
  signal c_25_17_0_False_resize: signed(22 downto 0);
  signal c_25_17_0_False_shift: signed(22 downto 0);
  signal c_25_24_7_False_resize: signed(22 downto 0);
  signal c_25_24_7_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_i0_resize: signed(24 downto 0);
  signal c_26_i1_resize: signed(24 downto 0);
  signal c_26_i0_shift: signed(24 downto 0);
  signal c_26_i1_shift: signed(24 downto 0);
  signal c_26_arith: signed(24 downto 0);
  signal c_26_oshift: signed(24 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(25 downto 0);
  signal c_27_8_0_False_resize: signed(25 downto 0);
  signal c_27_8_0_False_shift: signed(25 downto 0);
  signal c_27_8_5_False_resize: signed(25 downto 0);
  signal c_27_8_5_False_shift: signed(25 downto 0);
  signal c_27_11_1_False_resize: signed(25 downto 0);
  signal c_27_11_1_False_shift: signed(25 downto 0);
  signal c_27_11_10_False_resize: signed(25 downto 0);
  signal c_27_11_10_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_19_1_False_resize: signed(23 downto 0);
  signal c_28_19_1_False_shift: signed(23 downto 0);
  signal c_28_17_0_False_resize: signed(23 downto 0);
  signal c_28_17_0_False_shift: signed(23 downto 0);
  signal c_28_24_8_False_resize: signed(23 downto 0);
  signal c_28_24_8_False_shift: signed(23 downto 0);
  signal c_28_21_1_False_resize: signed(23 downto 0);
  signal c_28_21_1_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_i0_resize: signed(25 downto 0);
  signal c_31_i1_resize: signed(25 downto 0);
  signal c_31_i0_shift: signed(25 downto 0);
  signal c_31_i1_shift: signed(25 downto 0);
  signal c_31_arith: signed(25 downto 0);
  signal c_31_oshift: signed(25 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(26 downto 0);
  signal c_32_21_0_False_resize: signed(26 downto 0);
  signal c_32_21_0_False_shift: signed(26 downto 0);
  signal c_32_17_3_False_resize: signed(26 downto 0);
  signal c_32_17_3_False_shift: signed(26 downto 0);
  signal c_32_21_1_False_resize: signed(26 downto 0);
  signal c_32_21_1_False_shift: signed(26 downto 0);
  signal c_32_19_4_False_resize: signed(26 downto 0);
  signal c_32_19_4_False_shift: signed(26 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_31_1_False_resize: signed(25 downto 0);
  signal c_37_31_1_False_shift: signed(25 downto 0);
  signal c_37_31_0_False_resize: signed(25 downto 0);
  signal c_37_31_0_False_shift: signed(25 downto 0);
  signal c_37_34_6_False_resize: signed(25 downto 0);
  signal c_37_34_6_False_shift: signed(25 downto 0);
  signal c_37_36_2_False_resize: signed(25 downto 0);
  signal c_37_36_2_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(26 downto 0);
  signal c_39: signed(26 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_i0_resize: signed(25 downto 0);
  signal c_40_i1_resize: signed(25 downto 0);
  signal c_40_i0_shift: signed(25 downto 0);
  signal c_40_i1_shift: signed(25 downto 0);
  signal c_40_arith: signed(25 downto 0);
  signal c_40_oshift: signed(25 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(15 downto 0);
  signal c_42: signed(15 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_49: signed(26 downto 0);
  signal c_49_48_0_False_resize: signed(26 downto 0);
  signal c_49_48_0_False_shift: signed(26 downto 0);
  signal c_49_40_2_False_resize: signed(26 downto 0);
  signal c_49_40_2_False_shift: signed(26 downto 0);
  signal c_49_42_10_False_resize: signed(26 downto 0);
  signal c_49_42_10_False_shift: signed(26 downto 0);
  signal c_49_46_3_False_resize: signed(26 downto 0);
  signal c_49_46_3_False_shift: signed(26 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_50_17_0_False_resize: signed(24 downto 0);
  signal c_50_17_0_False_shift: signed(24 downto 0);
  signal c_50_19_1_False_resize: signed(24 downto 0);
  signal c_50_19_1_False_shift: signed(24 downto 0);
  signal c_50_sel: std_logic_vector(0 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_i0_resize: signed(25 downto 0);
  signal c_55_i1_resize: signed(25 downto 0);
  signal c_55_i0_shift: signed(25 downto 0);
  signal c_55_i1_shift: signed(25 downto 0);
  signal c_55_arith: signed(25 downto 0);
  signal c_55_oshift: signed(25 downto 0);
  signal c_55_sub_sel: std_logic;
  signal c_56: signed(24 downto 0);
  signal c_57: signed(24 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_60_57_5_False_resize: signed(24 downto 0);
  signal c_60_57_5_False_shift: signed(24 downto 0);
  signal c_60_46_0_False_resize: signed(24 downto 0);
  signal c_60_46_0_False_shift: signed(24 downto 0);
  signal c_60_59_0_False_resize: signed(24 downto 0);
  signal c_60_59_0_False_shift: signed(24 downto 0);
  signal c_60_40_1_False_resize: signed(24 downto 0);
  signal c_60_40_1_False_shift: signed(24 downto 0);
  signal c_60_sel: std_logic_vector(1 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_61_40_0_False_resize: signed(22 downto 0);
  signal c_61_40_0_False_shift: signed(22 downto 0);
  signal c_61_42_0_False_resize: signed(22 downto 0);
  signal c_61_42_0_False_shift: signed(22 downto 0);
  signal c_61_46_2_False_resize: signed(22 downto 0);
  signal c_61_46_2_False_shift: signed(22 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_62_i0_resize: signed(25 downto 0);
  signal c_62_i1_resize: signed(25 downto 0);
  signal c_62_i0_shift: signed(25 downto 0);
  signal c_62_i1_shift: signed(25 downto 0);
  signal c_62_arith: signed(25 downto 0);
  signal c_62_oshift: signed(25 downto 0);
  signal c_62_sub_sel: std_logic;
  signal c_63: signed(15 downto 0);
  signal c_64: signed(15 downto 0);
  signal c_65: signed(20 downto 0);
  signal c_66: signed(20 downto 0);
  signal c_67: signed(20 downto 0);
  signal c_68: signed(20 downto 0);
  signal c_69: signed(20 downto 0);
  signal c_70: signed(20 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_73: signed(26 downto 0);
  signal c_73_72_4_False_resize: signed(26 downto 0);
  signal c_73_72_4_False_shift: signed(26 downto 0);
  signal c_73_70_5_False_resize: signed(26 downto 0);
  signal c_73_70_5_False_shift: signed(26 downto 0);
  signal c_73_62_0_False_resize: signed(26 downto 0);
  signal c_73_62_0_False_shift: signed(26 downto 0);
  signal c_73_64_4_False_resize: signed(26 downto 0);
  signal c_73_64_4_False_shift: signed(26 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_78: signed(26 downto 0);
  signal c_78_62_0_False_resize: signed(26 downto 0);
  signal c_78_62_0_False_shift: signed(26 downto 0);
  signal c_78_75_3_False_resize: signed(26 downto 0);
  signal c_78_75_3_False_shift: signed(26 downto 0);
  signal c_78_62_1_False_resize: signed(26 downto 0);
  signal c_78_62_1_False_shift: signed(26 downto 0);
  signal c_78_77_0_False_resize: signed(26 downto 0);
  signal c_78_77_0_False_shift: signed(26 downto 0);
  signal c_78_sel: std_logic_vector(1 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_79_i0_resize: signed(25 downto 0);
  signal c_79_i1_resize: signed(25 downto 0);
  signal c_79_i0_shift: signed(25 downto 0);
  signal c_79_i1_shift: signed(25 downto 0);
  signal c_79_arith: signed(25 downto 0);
  signal c_79_oshift: signed(25 downto 0);
  signal c_79_sub_sel: std_logic;
  signal c_80: signed(15 downto 0);
  signal c_81: signed(15 downto 0);
  signal c_82: signed(24 downto 0);
  signal c_83: signed(24 downto 0);
  signal c_84: signed(24 downto 0);
  signal c_84_81_0_False_resize: signed(24 downto 0);
  signal c_84_81_0_False_shift: signed(24 downto 0);
  signal c_84_79_0_False_resize: signed(24 downto 0);
  signal c_84_79_0_False_shift: signed(24 downto 0);
  signal c_84_83_0_False_resize: signed(24 downto 0);
  signal c_84_83_0_False_shift: signed(24 downto 0);
  signal c_84_81_2_False_resize: signed(24 downto 0);
  signal c_84_81_2_False_shift: signed(24 downto 0);
  signal c_84_sel: std_logic_vector(1 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_85_26_0_False_resize: signed(25 downto 0);
  signal c_85_26_0_False_shift: signed(25 downto 0);
  signal c_85_36_6_False_resize: signed(25 downto 0);
  signal c_85_36_6_False_shift: signed(25 downto 0);
  signal c_85_44_2_False_resize: signed(25 downto 0);
  signal c_85_44_2_False_shift: signed(25 downto 0);
  signal c_85_36_0_False_resize: signed(25 downto 0);
  signal c_85_36_0_False_shift: signed(25 downto 0);
  signal c_85_sel: std_logic_vector(1 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_89: signed(25 downto 0);
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
  signal c_95: signed(25 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_100: signed(25 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_103_102_0_False_resize: signed(25 downto 0);
  signal c_103_102_0_False_shift: signed(25 downto 0);
  signal c_103_92_0_False_resize: signed(25 downto 0);
  signal c_103_92_0_False_shift: signed(25 downto 0);
  signal c_103_100_0_False_resize: signed(25 downto 0);
  signal c_103_100_0_False_shift: signed(25 downto 0);
  signal c_103_96_0_False_resize: signed(25 downto 0);
  signal c_103_96_0_False_shift: signed(25 downto 0);
  signal c_103_sel: std_logic_vector(1 downto 0);
  signal c_104: signed(23 downto 0);
  signal c_104_57_0_False_resize: signed(23 downto 0);
  signal c_104_57_0_False_shift: signed(23 downto 0);
  signal c_104_40_1_False_resize: signed(23 downto 0);
  signal c_104_40_1_False_shift: signed(23 downto 0);
  signal c_104_42_3_False_resize: signed(23 downto 0);
  signal c_104_42_3_False_shift: signed(23 downto 0);
  signal c_104_40_0_False_resize: signed(23 downto 0);
  signal c_104_40_0_False_shift: signed(23 downto 0);
  signal c_104_sel: std_logic_vector(1 downto 0);
  signal c_105: signed(23 downto 0);
  signal c_106: signed(23 downto 0);
  signal c_107: signed(23 downto 0);
  signal c_108: signed(23 downto 0);
  signal c_109: signed(23 downto 0);
  signal c_110: signed(23 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_111_i0_resize: signed(25 downto 0);
  signal c_111_i1_resize: signed(25 downto 0);
  signal c_111_i0_shift: signed(25 downto 0);
  signal c_111_i1_shift: signed(25 downto 0);
  signal c_111_arith: signed(25 downto 0);
  signal c_111_oshift: signed(25 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_112_77_0_False_resize: signed(25 downto 0);
  signal c_112_77_0_False_shift: signed(25 downto 0);
  signal c_112_62_0_False_resize: signed(25 downto 0);
  signal c_112_62_0_False_shift: signed(25 downto 0);
  signal c_112_70_1_False_resize: signed(25 downto 0);
  signal c_112_70_1_False_shift: signed(25 downto 0);
  signal c_112_sel: std_logic_vector(1 downto 0);
  signal c_113: signed(15 downto 0);
  signal c_114: signed(15 downto 0);
  signal c_115: signed(15 downto 0);
  signal c_116: signed(15 downto 0);
  signal c_117: signed(20 downto 0);
  signal c_118: signed(20 downto 0);
  signal c_119: signed(20 downto 0);
  signal c_120: signed(20 downto 0);
  signal c_121: signed(20 downto 0);
  signal c_122: signed(20 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_123_122_5_False_resize: signed(25 downto 0);
  signal c_123_122_5_False_shift: signed(25 downto 0);
  signal c_123_111_0_False_resize: signed(25 downto 0);
  signal c_123_111_0_False_shift: signed(25 downto 0);
  signal c_123_122_0_False_resize: signed(25 downto 0);
  signal c_123_122_0_False_shift: signed(25 downto 0);
  signal c_123_116_10_False_resize: signed(25 downto 0);
  signal c_123_116_10_False_shift: signed(25 downto 0);
  signal c_123_sel: std_logic_vector(1 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_130: signed(25 downto 0);
  signal c_130_i0_resize: signed(25 downto 0);
  signal c_130_i1_resize: signed(25 downto 0);
  signal c_130_i0_shift: signed(25 downto 0);
  signal c_130_i1_shift: signed(25 downto 0);
  signal c_130_arith: signed(25 downto 0);
  signal c_130_oshift: signed(25 downto 0);
  signal c_130_sub_sel: std_logic;
  signal c_131: signed(25 downto 0);
  signal c_131_57_0_False_resize: signed(25 downto 0);
  signal c_131_57_0_False_shift: signed(25 downto 0);
  signal c_131_68_4_False_resize: signed(25 downto 0);
  signal c_131_68_4_False_shift: signed(25 downto 0);
  signal c_131_40_3_False_resize: signed(25 downto 0);
  signal c_131_40_3_False_shift: signed(25 downto 0);
  signal c_131_59_0_False_resize: signed(25 downto 0);
  signal c_131_59_0_False_shift: signed(25 downto 0);
  signal c_131_sel: std_logic_vector(1 downto 0);
  signal c_132: signed(23 downto 0);
  signal c_133: signed(23 downto 0);
  signal c_134: signed(23 downto 0);
  signal c_135: signed(23 downto 0);
  signal c_136: signed(23 downto 0);
  signal c_137: signed(23 downto 0);
  signal c_138: signed(23 downto 0);
  signal c_139: signed(23 downto 0);
  signal c_140: signed(23 downto 0);
  signal c_141: signed(23 downto 0);
  signal c_142: signed(25 downto 0);
  signal c_143: signed(25 downto 0);
  signal c_144: signed(25 downto 0);
  signal c_145: signed(25 downto 0);
  signal c_146: signed(25 downto 0);
  signal c_147: signed(25 downto 0);
  signal c_148: signed(25 downto 0);
  signal c_149: signed(25 downto 0);
  signal c_150: signed(25 downto 0);
  signal c_150_130_0_False_resize: signed(25 downto 0);
  signal c_150_130_0_False_shift: signed(25 downto 0);
  signal c_150_141_1_False_resize: signed(25 downto 0);
  signal c_150_141_1_False_shift: signed(25 downto 0);
  signal c_150_149_0_False_resize: signed(25 downto 0);
  signal c_150_149_0_False_shift: signed(25 downto 0);
  signal c_150_sel: std_logic_vector(1 downto 0);
  signal c_151: signed(25 downto 0);
  signal c_151_96_0_False_resize: signed(25 downto 0);
  signal c_151_96_0_False_shift: signed(25 downto 0);
  signal c_151_92_0_False_resize: signed(25 downto 0);
  signal c_151_92_0_False_shift: signed(25 downto 0);
  signal c_151_145_0_False_resize: signed(25 downto 0);
  signal c_151_145_0_False_shift: signed(25 downto 0);
  signal c_151_137_3_False_resize: signed(25 downto 0);
  signal c_151_137_3_False_shift: signed(25 downto 0);
  signal c_151_sel: std_logic_vector(1 downto 0);
  signal c_152: signed(24 downto 0);
  signal c_153: signed(24 downto 0);
  signal c_154: signed(24 downto 0);
  signal c_155: signed(24 downto 0);
  signal c_156: signed(24 downto 0);
  signal c_157: signed(24 downto 0);
  signal c_158: signed(24 downto 0);
  signal c_159: signed(24 downto 0);
  signal c_160: signed(25 downto 0);
  signal c_161: signed(25 downto 0);
  signal c_162: signed(25 downto 0);
  signal c_163: signed(25 downto 0);
  signal c_164: signed(25 downto 0);
  signal c_164_111_2_False_resize: signed(25 downto 0);
  signal c_164_111_2_False_shift: signed(25 downto 0);
  signal c_164_159_0_False_resize: signed(25 downto 0);
  signal c_164_159_0_False_shift: signed(25 downto 0);
  signal c_164_163_1_False_resize: signed(25 downto 0);
  signal c_164_163_1_False_shift: signed(25 downto 0);
  signal c_164_161_0_False_resize: signed(25 downto 0);
  signal c_164_161_0_False_shift: signed(25 downto 0);
  signal c_164_sel: std_logic_vector(1 downto 0);
  signal c_165: signed(25 downto 0);
  signal c_166: signed(25 downto 0);
  signal c_167: signed(25 downto 0);
  signal c_168: signed(25 downto 0);
  signal c_169: signed(25 downto 0);
  signal c_170: signed(25 downto 0);
  signal c_171: signed(25 downto 0);
  signal c_172: signed(25 downto 0);
  signal c_173: signed(25 downto 0);
  signal c_173_111_0_False_resize: signed(25 downto 0);
  signal c_173_111_0_False_shift: signed(25 downto 0);
  signal c_173_172_0_False_resize: signed(25 downto 0);
  signal c_173_172_0_False_shift: signed(25 downto 0);
  signal c_173_170_2_False_resize: signed(25 downto 0);
  signal c_173_170_2_False_shift: signed(25 downto 0);
  signal c_173_sel: std_logic_vector(1 downto 0);
  signal c_174: signed(25 downto 0);
  signal c_174_72_0_False_resize: signed(25 downto 0);
  signal c_174_72_0_False_shift: signed(25 downto 0);
  signal c_174_62_1_False_resize: signed(25 downto 0);
  signal c_174_62_1_False_shift: signed(25 downto 0);
  signal c_174_77_0_False_resize: signed(25 downto 0);
  signal c_174_77_0_False_shift: signed(25 downto 0);
  signal c_174_62_0_False_resize: signed(25 downto 0);
  signal c_174_62_0_False_shift: signed(25 downto 0);
  signal c_174_sel: std_logic_vector(1 downto 0);
  signal c_175: signed(25 downto 0);
  signal c_176: signed(25 downto 0);
  signal c_177: signed(25 downto 0);
  signal c_177_147_0_False_resize: signed(25 downto 0);
  signal c_177_147_0_False_shift: signed(25 downto 0);
  signal c_177_176_0_False_resize: signed(25 downto 0);
  signal c_177_176_0_False_shift: signed(25 downto 0);
  signal c_177_111_0_False_resize: signed(25 downto 0);
  signal c_177_111_0_False_shift: signed(25 downto 0);
  signal c_177_sel: std_logic_vector(1 downto 0);
  signal c_178: signed(24 downto 0);
  signal c_179: signed(24 downto 0);
  signal c_180: signed(24 downto 0);
  signal c_181: signed(24 downto 0);
  signal c_182: signed(24 downto 0);
  signal c_183: signed(24 downto 0);
  signal c_184: signed(25 downto 0);
  signal c_185: signed(25 downto 0);
  signal c_186: signed(25 downto 0);
  signal c_187: signed(25 downto 0);
  signal c_188: signed(25 downto 0);
  signal c_188_130_0_False_resize: signed(25 downto 0);
  signal c_188_130_0_False_shift: signed(25 downto 0);
  signal c_188_187_0_False_resize: signed(25 downto 0);
  signal c_188_187_0_False_shift: signed(25 downto 0);
  signal c_188_183_1_False_resize: signed(25 downto 0);
  signal c_188_183_1_False_shift: signed(25 downto 0);
  signal c_188_185_0_False_resize: signed(25 downto 0);
  signal c_188_185_0_False_shift: signed(25 downto 0);
  signal c_188_sel: std_logic_vector(1 downto 0);
  signal c_189: signed(25 downto 0);
  signal c_189_102_0_False_resize: signed(25 downto 0);
  signal c_189_102_0_False_shift: signed(25 downto 0);
  signal c_189_157_0_False_resize: signed(25 downto 0);
  signal c_189_157_0_False_shift: signed(25 downto 0);
  signal c_189_92_0_False_resize: signed(25 downto 0);
  signal c_189_92_0_False_shift: signed(25 downto 0);
  signal c_189_120_4_False_resize: signed(25 downto 0);
  signal c_189_120_4_False_shift: signed(25 downto 0);
  signal c_189_sel: std_logic_vector(1 downto 0);
  signal c_190: signed(24 downto 0);
  signal c_190_100_0_False_resize: signed(24 downto 0);
  signal c_190_100_0_False_shift: signed(24 downto 0);
  signal c_190_120_7_False_resize: signed(24 downto 0);
  signal c_190_120_7_False_shift: signed(24 downto 0);
  signal c_190_92_0_False_resize: signed(24 downto 0);
  signal c_190_92_0_False_shift: signed(24 downto 0);
  signal c_190_120_1_False_resize: signed(24 downto 0);
  signal c_190_120_1_False_shift: signed(24 downto 0);
  signal c_190_sel: std_logic_vector(1 downto 0);
  signal c_191: signed(25 downto 0);
  signal c_192: signed(25 downto 0);
  signal c_193: signed(25 downto 0);
  signal c_194: signed(25 downto 0);
  signal c_195: signed(25 downto 0);
  signal c_196: signed(25 downto 0);
  signal c_197: signed(25 downto 0);
  signal c_198: signed(25 downto 0);
  signal c_199: signed(25 downto 0);
  signal c_200: signed(25 downto 0);
  signal c_201: signed(25 downto 0);
  signal c_201_resize: signed(25 downto 0);
  signal c_202: signed(25 downto 0);
  signal c_202_resize: signed(25 downto 0);
  signal c_203: signed(25 downto 0);
  signal c_204: signed(25 downto 0);
  signal c_205: signed(25 downto 0);
  signal c_206: signed(25 downto 0);
  signal c_207: signed(25 downto 0);
  signal c_207_resize: signed(25 downto 0);
  signal c_208: signed(25 downto 0);
  signal c_209: signed(25 downto 0);
  signal c_210: signed(25 downto 0);
  signal c_210_resize: signed(25 downto 0);
  signal c_211: signed(25 downto 0);
  signal c_212: signed(25 downto 0);
  signal c_213: signed(25 downto 0);
  signal c_213_resize: signed(25 downto 0);
  signal c_214: signed(25 downto 0);
  signal c_215: signed(25 downto 0);
  signal c_216: signed(25 downto 0);
  signal c_217: signed(25 downto 0);
  signal c_218: signed(25 downto 0);
  signal c_219: signed(25 downto 0);
  signal c_220: signed(25 downto 0);
  signal c_221: signed(25 downto 0);
  signal c_222: signed(25 downto 0);
  signal c_222_resize: signed(25 downto 0);
  signal c_223: signed(25 downto 0);
  signal c_224: signed(25 downto 0);
  signal c_225: signed(25 downto 0);
  signal c_225_resize: signed(25 downto 0);
  signal c_226: signed(25 downto 0);
  signal c_226_resize: signed(25 downto 0);
  signal c_227: signed(25 downto 0);
  signal c_228: signed(25 downto 0);
  signal c_229: signed(25 downto 0);
  signal c_230: signed(25 downto 0);
  signal c_231: signed(25 downto 0);
  signal c_231_resize: signed(25 downto 0);
  signal c_232: signed(24 downto 0);
  signal c_233: signed(24 downto 0);
  signal c_234: signed(24 downto 0);
  signal c_235: signed(24 downto 0);
  signal c_236: signed(24 downto 0);
  signal c_236_resize: signed(24 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 201
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_201);
    end if;
  end process;
  -- output node 1 with id 202
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_202);
    end if;
  end process;
  -- output node 2 with id 207
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_207);
    end if;
  end process;
  -- output node 3 with id 210
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_210);
    end if;
  end process;
  -- output node 4 with id 213
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_213);
    end if;
  end process;
  -- output node 5 with id 222
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_222);
    end if;
  end process;
  -- output node 6 with id 225
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_225);
    end if;
  end process;
  -- output node 7 with id 226
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_226);
    end if;
  end process;
  -- output node 8 with id 231
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_231);
    end if;
  end process;
  -- output node 9 with id 236
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_236);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[8], [1], [2], [16]]
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 20);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_3_False_resize <= resize(c_0, 20);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_0_False_shift;
        when "01" => c_1 <= c_1_0_1_False_shift;
        when "10" => c_1 <= c_1_0_4_False_shift;
        when others => c_1 <= c_1_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [8], [1], [1]]
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
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
        when others => c_2 <= c_2_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[7], [9], [3], [17]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 21,
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
      c_3 <= c_3_oshift(20 downto 0);
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [128], [64], [136]]
  c_6_5_0_False_resize <= resize(c_5, 24);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  c_6_5_6_False_resize <= resize(c_5, 24);
  c_6_5_6_False_shift <= shift_left(c_6_5_6_False_resize, 6);
  c_6_3_3_False_resize <= resize(c_3, 24);
  c_6_3_3_False_shift <= shift_left(c_6_3_3_False_resize, 3);
  c_6_5_7_False_resize <= resize(c_5, 24);
  c_6_5_7_False_shift <= shift_left(c_6_5_7_False_resize, 7);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_5_0_False_shift;
        when "01" => c_6 <= c_6_5_6_False_shift;
        when "10" => c_6 <= c_6_3_3_False_shift;
        when others => c_6 <= c_6_5_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[8], [72], [3], [17]]
  c_7_3_0_False_resize <= resize(c_3, 23);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_5_3_False_resize <= resize(c_5, 23);
  c_7_5_3_False_shift <= shift_left(c_7_5_3_False_resize, 3);
  c_7_3_3_False_resize <= resize(c_3, 23);
  c_7_3_3_False_shift <= shift_left(c_7_3_3_False_resize, 3);
  with config_select_3 select c_7_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_3_0_False_shift;
        when "01" => c_7 <= c_7_5_3_False_shift;
        when others => c_7 <= c_7_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[9], [200], [61], [153]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
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
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[1], [72], [6], [4]]
  c_9_3_1_False_resize <= resize(c_3, 23);
  c_9_3_1_False_shift <= shift_left(c_9_3_1_False_resize, 1);
  c_9_5_0_False_resize <= resize(c_5, 23);
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  c_9_5_2_False_resize <= resize(c_5, 23);
  c_9_5_2_False_shift <= shift_left(c_9_5_2_False_resize, 2);
  c_9_3_3_False_resize <= resize(c_3, 23);
  c_9_3_3_False_shift <= shift_left(c_9_3_3_False_resize, 3);
  with config_select_3 select c_9_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_3_1_False_shift;
        when "01" => c_9 <= c_9_5_0_False_shift;
        when "10" => c_9 <= c_9_5_2_False_shift;
        when others => c_9 <= c_9_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[128], [9], [1], [306]]
  c_14_8_1_False_resize <= resize(c_8, 25);
  c_14_8_1_False_shift <= shift_left(c_14_8_1_False_resize, 1);
  c_14_11_0_False_resize <= resize(c_11, 25);
  c_14_11_0_False_shift <= shift_left(c_14_11_0_False_resize, 0);
  c_14_11_7_False_resize <= resize(c_11, 25);
  c_14_11_7_False_shift <= shift_left(c_14_11_7_False_resize, 7);
  c_14_13_0_False_resize <= resize(c_13, 25);
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  with config_select_5 select c_14_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_8_1_False_shift;
        when "01" => c_14 <= c_14_11_0_False_shift;
        when "10" => c_14 <= c_14_11_7_False_shift;
        when others => c_14 <= c_14_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[1], [72], [6], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[1], [72], [6], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[129], [81], [5], [310]]
  with config_select_6 select c_17_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
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
      sub_i => c_17_sub_sel,
      x_i => c_16,
      y_i => c_14,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 22 and associated fundamentals [[7], [81], [61], [17]]
  c_22_21_0_False_resize <= c_21(22 downto 0);
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  c_22_19_0_False_resize <= resize(c_19, 23);
  c_22_19_0_False_shift <= shift_left(c_22_19_0_False_resize, 0);
  c_22_17_0_False_resize <= c_17(22 downto 0);
  c_22_17_0_False_shift <= shift_left(c_22_17_0_False_resize, 0);
  with config_select_7 select c_22_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_21_0_False_shift;
        when "01" => c_22 <= c_22_19_0_False_shift;
        when others => c_22 <= c_22_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[128], [81], [12], [17]]
  c_25_19_2_False_resize <= resize(c_19, 23);
  c_25_19_2_False_shift <= shift_left(c_25_19_2_False_resize, 2);
  c_25_19_0_False_resize <= resize(c_19, 23);
  c_25_19_0_False_shift <= shift_left(c_25_19_0_False_resize, 0);
  c_25_17_0_False_resize <= c_17(22 downto 0);
  c_25_17_0_False_shift <= shift_left(c_25_17_0_False_resize, 0);
  c_25_24_7_False_resize <= resize(c_24, 23);
  c_25_24_7_False_shift <= shift_left(c_25_24_7_False_resize, 7);
  with config_select_7 select c_25_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_19_2_False_shift;
        when "01" => c_25 <= c_25_19_0_False_shift;
        when "10" => c_25 <= c_25_17_0_False_shift;
        when others => c_25 <= c_25_24_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 26 and associated fundamentals [[-228], [486], [220], [102]]
  with config_select_8 select c_26_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 1,
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
      c_26 <= c_26_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 27 and associated fundamentals [[288], [200], [1024], [2]]
  c_27_8_0_False_resize <= resize(c_8, 26);
  c_27_8_0_False_shift <= shift_left(c_27_8_0_False_resize, 0);
  c_27_8_5_False_resize <= resize(c_8, 26);
  c_27_8_5_False_shift <= shift_left(c_27_8_5_False_resize, 5);
  c_27_11_1_False_resize <= resize(c_11, 26);
  c_27_11_1_False_shift <= shift_left(c_27_11_1_False_resize, 1);
  c_27_11_10_False_resize <= resize(c_11, 26);
  c_27_11_10_False_shift <= shift_left(c_27_11_10_False_resize, 10);
  with config_select_5 select c_27_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_8_0_False_shift;
        when "01" => c_27 <= c_27_8_5_False_shift;
        when "10" => c_27 <= c_27_11_1_False_shift;
        when others => c_27 <= c_27_11_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 28 and associated fundamentals [[129], [18], [122], [256]]
  c_28_19_1_False_resize <= resize(c_19, 24);
  c_28_19_1_False_shift <= shift_left(c_28_19_1_False_resize, 1);
  c_28_17_0_False_resize <= c_17(23 downto 0);
  c_28_17_0_False_shift <= shift_left(c_28_17_0_False_resize, 0);
  c_28_24_8_False_resize <= resize(c_24, 24);
  c_28_24_8_False_shift <= shift_left(c_28_24_8_False_resize, 8);
  c_28_21_1_False_resize <= c_21;
  c_28_21_1_False_shift <= shift_left(c_28_21_1_False_resize, 1);
  with config_select_7 select c_28_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_19_1_False_shift;
        when "01" => c_28 <= c_28_17_0_False_shift;
        when "10" => c_28 <= c_28_24_8_False_shift;
        when others => c_28 <= c_28_21_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[288], [200], [1024], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[288], [200], [1024], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 31 and associated fundamentals [[417], [218], [902], [258]]
  with config_select_8 select c_31_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
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
      sub_i => c_31_sub_sel,
      x_i => c_30,
      y_i => c_28,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 32 and associated fundamentals [[1032], [400], [48], [153]]
  c_32_21_0_False_resize <= resize(c_21, 27);
  c_32_21_0_False_shift <= shift_left(c_32_21_0_False_resize, 0);
  c_32_17_3_False_resize <= resize(c_17, 27);
  c_32_17_3_False_shift <= shift_left(c_32_17_3_False_resize, 3);
  c_32_21_1_False_resize <= resize(c_21, 27);
  c_32_21_1_False_shift <= shift_left(c_32_21_1_False_resize, 1);
  c_32_19_4_False_resize <= resize(c_19, 27);
  c_32_19_4_False_shift <= shift_left(c_32_19_4_False_resize, 4);
  with config_select_7 select c_32_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_21_0_False_shift;
        when "01" => c_32 <= c_32_17_3_False_shift;
        when "10" => c_32 <= c_32_21_1_False_shift;
        when others => c_32 <= c_32_19_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 37 and associated fundamentals [[834], [218], [20], [64]]
  c_37_31_1_False_resize <= c_31;
  c_37_31_1_False_shift <= shift_left(c_37_31_1_False_resize, 1);
  c_37_31_0_False_resize <= c_31;
  c_37_31_0_False_shift <= shift_left(c_37_31_0_False_resize, 0);
  c_37_34_6_False_resize <= resize(c_34, 26);
  c_37_34_6_False_shift <= shift_left(c_37_34_6_False_resize, 6);
  c_37_36_2_False_resize <= resize(c_36, 26);
  c_37_36_2_False_shift <= shift_left(c_37_36_2_False_resize, 2);
  with config_select_9 select c_37_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_31_1_False_shift;
        when "01" => c_37 <= c_37_31_0_False_shift;
        when "10" => c_37 <= c_37_34_6_False_shift;
        when others => c_37 <= c_37_36_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[1032], [400], [48], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 39 and associated fundamentals [[1032], [400], [48], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 40 and associated fundamentals [[198], [618], [68], [89]]
  with config_select_10 select c_40_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_40: entity work.adder_node
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
      sub_i => c_40_sub_sel,
      x_i => c_39,
      y_i => c_37,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 42 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 46 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[-228], [486], [220], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 48 and associated fundamentals [[-228], [486], [220], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 49 and associated fundamentals [[1024], [486], [272], [1224]]
  c_49_48_0_False_resize <= resize(c_48, 27);
  c_49_48_0_False_shift <= shift_left(c_49_48_0_False_resize, 0);
  c_49_40_2_False_resize <= resize(c_40, 27);
  c_49_40_2_False_shift <= shift_left(c_49_40_2_False_resize, 2);
  c_49_42_10_False_resize <= resize(c_42, 27);
  c_49_42_10_False_shift <= shift_left(c_49_42_10_False_resize, 10);
  c_49_46_3_False_resize <= resize(c_46, 27);
  c_49_46_3_False_shift <= shift_left(c_49_46_3_False_resize, 3);
  with config_select_11 select c_49_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_48_0_False_shift;
        when "01" => c_49 <= c_49_40_2_False_shift;
        when "10" => c_49 <= c_49_42_10_False_shift;
        when others => c_49 <= c_49_46_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 50 and associated fundamentals [[14], [81], [5], [310]]
  c_50_17_0_False_resize <= c_17;
  c_50_17_0_False_shift <= shift_left(c_50_17_0_False_resize, 0);
  c_50_19_1_False_resize <= resize(c_19, 25);
  c_50_19_1_False_shift <= shift_left(c_50_19_1_False_resize, 1);
  with config_select_7 select c_50_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "0" => c_50 <= c_50_17_0_False_shift;
        when others => c_50 <= c_50_19_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[14], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[14], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[14], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 54 and associated fundamentals [[14], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 55 and associated fundamentals [[1010], [567], [277], [914]]
  with config_select_12 select c_55_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_55: entity work.adder_node
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
      sub_i => c_55_sub_sel,
      x_i => c_49,
      y_i => c_54,
      z_o => c_55_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_55_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[417], [218], [902], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 59 and associated fundamentals [[417], [218], [902], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 60 and associated fundamentals [[396], [200], [160], [258]]
  c_60_57_5_False_resize <= c_57;
  c_60_57_5_False_shift <= shift_left(c_60_57_5_False_resize, 5);
  c_60_46_0_False_resize <= resize(c_46, 25);
  c_60_46_0_False_shift <= shift_left(c_60_46_0_False_resize, 0);
  c_60_59_0_False_resize <= c_59(24 downto 0);
  c_60_59_0_False_shift <= shift_left(c_60_59_0_False_resize, 0);
  c_60_40_1_False_resize <= c_40(24 downto 0);
  c_60_40_1_False_shift <= shift_left(c_60_40_1_False_resize, 1);
  with config_select_11 select c_60_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "00" => c_60 <= c_60_57_5_False_shift;
        when "01" => c_60 <= c_60_46_0_False_shift;
        when "10" => c_60 <= c_60_59_0_False_shift;
        when others => c_60 <= c_60_40_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 61 and associated fundamentals [[36], [1], [1], [89]]
  c_61_40_0_False_resize <= c_40(22 downto 0);
  c_61_40_0_False_shift <= shift_left(c_61_40_0_False_resize, 0);
  c_61_42_0_False_resize <= resize(c_42, 23);
  c_61_42_0_False_shift <= shift_left(c_61_42_0_False_resize, 0);
  c_61_46_2_False_resize <= c_46(22 downto 0);
  c_61_46_2_False_shift <= shift_left(c_61_46_2_False_resize, 2);
  with config_select_11 select c_61_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "00" => c_61 <= c_61_40_0_False_shift;
        when "01" => c_61 <= c_61_42_0_False_shift;
        when others => c_61 <= c_61_46_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 62 and associated fundamentals [[828], [399], [319], [605]]
  with config_select_12 select c_62_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_62: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
      sub_i => c_62_sub_sel,
      x_i => c_60,
      y_i => c_61,
      z_o => c_62_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_62_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 63 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 64 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 65 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 66 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 67 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 68 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 69 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 70 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 71 and associated fundamentals [[198], [618], [68], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 72 and associated fundamentals [[198], [618], [68], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 73 and associated fundamentals [[224], [16], [319], [1424]]
  c_73_72_4_False_resize <= resize(c_72, 27);
  c_73_72_4_False_shift <= shift_left(c_73_72_4_False_resize, 4);
  c_73_70_5_False_resize <= resize(c_70, 27);
  c_73_70_5_False_shift <= shift_left(c_73_70_5_False_resize, 5);
  c_73_62_0_False_resize <= resize(c_62, 27);
  c_73_62_0_False_shift <= shift_left(c_73_62_0_False_resize, 0);
  c_73_64_4_False_resize <= resize(c_64, 27);
  c_73_64_4_False_shift <= shift_left(c_73_64_4_False_resize, 4);
  with config_select_13 select c_73_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "00" => c_73 <= c_73_72_4_False_shift;
        when "01" => c_73 <= c_73_70_5_False_shift;
        when "10" => c_73 <= c_73_62_0_False_shift;
        when others => c_73 <= c_73_64_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 74 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 75 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 76 and associated fundamentals [[417], [218], [902], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 77 and associated fundamentals [[417], [218], [902], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 78 and associated fundamentals [[417], [399], [40], [1210]]
  c_78_62_0_False_resize <= resize(c_62, 27);
  c_78_62_0_False_shift <= shift_left(c_78_62_0_False_resize, 0);
  c_78_75_3_False_resize <= resize(c_75, 27);
  c_78_75_3_False_shift <= shift_left(c_78_75_3_False_resize, 3);
  c_78_62_1_False_resize <= resize(c_62, 27);
  c_78_62_1_False_shift <= shift_left(c_78_62_1_False_resize, 1);
  c_78_77_0_False_resize <= resize(c_77, 27);
  c_78_77_0_False_shift <= shift_left(c_78_77_0_False_resize, 0);
  with config_select_13 select c_78_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "00" => c_78 <= c_78_62_0_False_shift;
        when "01" => c_78 <= c_78_75_3_False_shift;
        when "10" => c_78 <= c_78_62_1_False_shift;
        when others => c_78 <= c_78_77_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 79 and associated fundamentals [[641], [415], [359], [214]]
  with config_select_14 select c_79_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_79: entity work.adder_node
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
      sub_i => c_79_sub_sel,
      x_i => c_73,
      y_i => c_78,
      z_o => c_79_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_79_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 80 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 81 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 82 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 83 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 84 and associated fundamentals [[129], [1], [359], [4]]
  c_84_81_0_False_resize <= resize(c_81, 25);
  c_84_81_0_False_shift <= shift_left(c_84_81_0_False_resize, 0);
  c_84_79_0_False_resize <= c_79(24 downto 0);
  c_84_79_0_False_shift <= shift_left(c_84_79_0_False_resize, 0);
  c_84_83_0_False_resize <= c_83;
  c_84_83_0_False_shift <= shift_left(c_84_83_0_False_resize, 0);
  c_84_81_2_False_resize <= resize(c_81, 25);
  c_84_81_2_False_shift <= shift_left(c_84_81_2_False_resize, 2);
  with config_select_15 select c_84_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_84_sel is
        when "00" => c_84 <= c_84_81_0_False_shift;
        when "01" => c_84 <= c_84_79_0_False_shift;
        when "10" => c_84 <= c_84_83_0_False_shift;
        when others => c_84 <= c_84_81_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 85 and associated fundamentals [[-228], [800], [320], [310]]
  c_85_26_0_False_resize <= resize(c_26, 26);
  c_85_26_0_False_shift <= shift_left(c_85_26_0_False_resize, 0);
  c_85_36_6_False_resize <= resize(c_36, 26);
  c_85_36_6_False_shift <= shift_left(c_85_36_6_False_resize, 6);
  c_85_44_2_False_resize <= resize(c_44, 26);
  c_85_44_2_False_shift <= shift_left(c_85_44_2_False_resize, 2);
  c_85_36_0_False_resize <= resize(c_36, 26);
  c_85_36_0_False_shift <= shift_left(c_85_36_0_False_resize, 0);
  with config_select_9 select c_85_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_85_sel is
        when "00" => c_85 <= c_85_26_0_False_shift;
        when "01" => c_85 <= c_85_36_6_False_shift;
        when "10" => c_85 <= c_85_44_2_False_shift;
        when others => c_85 <= c_85_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 86 and associated fundamentals [[-228], [800], [320], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 87 and associated fundamentals [[-228], [800], [320], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 88 and associated fundamentals [[-228], [800], [320], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 89 and associated fundamentals [[-228], [800], [320], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 90 and associated fundamentals [[-228], [800], [320], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 91 and associated fundamentals [[-228], [800], [320], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 92 and associated fundamentals [[357], [801], [679], [314]]
  with config_select_16 select c_92_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
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
      x_i => c_84,
      y_i => c_91,
      z_o => c_92_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_92_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 93 and associated fundamentals [[417], [218], [902], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 94 and associated fundamentals [[417], [218], [902], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 95 and associated fundamentals [[417], [218], [902], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 96 and associated fundamentals [[417], [218], [902], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 97 and associated fundamentals [[828], [399], [319], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 98 and associated fundamentals [[828], [399], [319], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 99 and associated fundamentals [[828], [399], [319], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 100 and associated fundamentals [[828], [399], [319], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 101 and associated fundamentals [[641], [415], [359], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 102 and associated fundamentals [[641], [415], [359], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 103 and associated fundamentals [[357], [415], [902], [605]]
  c_103_102_0_False_resize <= c_102;
  c_103_102_0_False_shift <= shift_left(c_103_102_0_False_resize, 0);
  c_103_92_0_False_resize <= c_92;
  c_103_92_0_False_shift <= shift_left(c_103_92_0_False_resize, 0);
  c_103_100_0_False_resize <= c_100;
  c_103_100_0_False_shift <= shift_left(c_103_100_0_False_resize, 0);
  c_103_96_0_False_resize <= c_96;
  c_103_96_0_False_shift <= shift_left(c_103_96_0_False_resize, 0);
  with config_select_17 select c_103_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_103_sel is
        when "00" => c_103 <= c_103_102_0_False_shift;
        when "01" => c_103 <= c_103_92_0_False_shift;
        when "10" => c_103 <= c_103_100_0_False_shift;
        when others => c_103 <= c_103_96_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 104 and associated fundamentals [[8], [81], [68], [178]]
  c_104_57_0_False_resize <= c_57(23 downto 0);
  c_104_57_0_False_shift <= shift_left(c_104_57_0_False_resize, 0);
  c_104_40_1_False_resize <= c_40(23 downto 0);
  c_104_40_1_False_shift <= shift_left(c_104_40_1_False_resize, 1);
  c_104_42_3_False_resize <= resize(c_42, 24);
  c_104_42_3_False_shift <= shift_left(c_104_42_3_False_resize, 3);
  c_104_40_0_False_resize <= c_40(23 downto 0);
  c_104_40_0_False_shift <= shift_left(c_104_40_0_False_resize, 0);
  with config_select_11 select c_104_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_104_sel is
        when "00" => c_104 <= c_104_57_0_False_shift;
        when "01" => c_104 <= c_104_40_1_False_shift;
        when "10" => c_104 <= c_104_42_3_False_shift;
        when others => c_104 <= c_104_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 105 and associated fundamentals [[8], [81], [68], [178]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 106 and associated fundamentals [[8], [81], [68], [178]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 107 and associated fundamentals [[8], [81], [68], [178]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 108 and associated fundamentals [[8], [81], [68], [178]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 109 and associated fundamentals [[8], [81], [68], [178]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 110 and associated fundamentals [[8], [81], [68], [178]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 18 with id 111 and associated fundamentals [[341], [253], [766], [249]]
  inst_adder_node_111: entity work.adder_node
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
      x_i => c_103,
      y_i => c_110,
      z_o => c_111_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_111_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 112 and associated fundamentals [[14], [399], [902], [34]]
  c_112_77_0_False_resize <= c_77;
  c_112_77_0_False_shift <= shift_left(c_112_77_0_False_resize, 0);
  c_112_62_0_False_resize <= c_62;
  c_112_62_0_False_shift <= shift_left(c_112_62_0_False_resize, 0);
  c_112_70_1_False_resize <= resize(c_70, 26);
  c_112_70_1_False_shift <= shift_left(c_112_70_1_False_resize, 1);
  with config_select_13 select c_112_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_112_sel is
        when "00" => c_112 <= c_112_77_0_False_shift;
        when "01" => c_112 <= c_112_62_0_False_shift;
        when others => c_112 <= c_112_70_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 113 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 114 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 115 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 116 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 117 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 118 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 119 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 120 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 121 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 122 and associated fundamentals [[7], [9], [3], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 123 and associated fundamentals [[1024], [288], [3], [249]]
  c_123_122_5_False_resize <= resize(c_122, 26);
  c_123_122_5_False_shift <= shift_left(c_123_122_5_False_resize, 5);
  c_123_111_0_False_resize <= c_111;
  c_123_111_0_False_shift <= shift_left(c_123_111_0_False_resize, 0);
  c_123_122_0_False_resize <= resize(c_122, 26);
  c_123_122_0_False_shift <= shift_left(c_123_122_0_False_resize, 0);
  c_123_116_10_False_resize <= resize(c_116, 26);
  c_123_116_10_False_shift <= shift_left(c_123_116_10_False_resize, 10);
  with config_select_19 select c_123_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_123_sel is
        when "00" => c_123 <= c_123_122_5_False_shift;
        when "01" => c_123 <= c_123_111_0_False_shift;
        when "10" => c_123 <= c_123_122_0_False_shift;
        when others => c_123 <= c_123_116_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 124 and associated fundamentals [[14], [399], [902], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 125 and associated fundamentals [[14], [399], [902], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 126 and associated fundamentals [[14], [399], [902], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 127 and associated fundamentals [[14], [399], [902], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 128 and associated fundamentals [[14], [399], [902], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 129 and associated fundamentals [[14], [399], [902], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 20 with id 130 and associated fundamentals [[-1010], [111], [899], [283]]
  with config_select_20 select c_130_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_130: entity work.adder_node
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
      sub_i => c_130_sub_sel,
      x_i => c_129,
      y_i => c_123,
      z_o => c_130_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_130_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 131 and associated fundamentals [[129], [218], [544], [272]]
  c_131_57_0_False_resize <= resize(c_57, 26);
  c_131_57_0_False_shift <= shift_left(c_131_57_0_False_resize, 0);
  c_131_68_4_False_resize <= resize(c_68, 26);
  c_131_68_4_False_shift <= shift_left(c_131_68_4_False_resize, 4);
  c_131_40_3_False_resize <= c_40;
  c_131_40_3_False_shift <= shift_left(c_131_40_3_False_resize, 3);
  c_131_59_0_False_resize <= c_59;
  c_131_59_0_False_shift <= shift_left(c_131_59_0_False_resize, 0);
  with config_select_11 select c_131_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_131_sel is
        when "00" => c_131 <= c_131_57_0_False_shift;
        when "01" => c_131 <= c_131_68_4_False_shift;
        when "10" => c_131 <= c_131_40_3_False_shift;
        when others => c_131 <= c_131_59_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 132 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 133 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 134 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 135 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_134 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 136 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_135 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 137 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 138 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 139 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 140 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 141 and associated fundamentals [[9], [200], [61], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 142 and associated fundamentals [[1010], [567], [277], [914]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 143 and associated fundamentals [[1010], [567], [277], [914]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 144 and associated fundamentals [[1010], [567], [277], [914]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 145 and associated fundamentals [[1010], [567], [277], [914]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 146 and associated fundamentals [[1010], [567], [277], [914]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_145 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 147 and associated fundamentals [[1010], [567], [277], [914]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 148 and associated fundamentals [[1010], [567], [277], [914]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 149 and associated fundamentals [[1010], [567], [277], [914]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 150 and associated fundamentals [[1010], [111], [122], [283]]
  c_150_130_0_False_resize <= c_130;
  c_150_130_0_False_shift <= shift_left(c_150_130_0_False_resize, 0);
  c_150_141_1_False_resize <= resize(c_141, 26);
  c_150_141_1_False_shift <= shift_left(c_150_141_1_False_resize, 1);
  c_150_149_0_False_resize <= c_149;
  c_150_149_0_False_shift <= shift_left(c_150_149_0_False_resize, 0);
  with config_select_21 select c_150_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_150_sel is
        when "00" => c_150 <= c_150_130_0_False_shift;
        when "01" => c_150 <= c_150_141_1_False_shift;
        when others => c_150 <= c_150_149_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 151 and associated fundamentals [[72], [801], [277], [258]]
  c_151_96_0_False_resize <= c_96;
  c_151_96_0_False_shift <= shift_left(c_151_96_0_False_resize, 0);
  c_151_92_0_False_resize <= c_92;
  c_151_92_0_False_shift <= shift_left(c_151_92_0_False_resize, 0);
  c_151_145_0_False_resize <= c_145;
  c_151_145_0_False_shift <= shift_left(c_151_145_0_False_resize, 0);
  c_151_137_3_False_resize <= resize(c_137, 26);
  c_151_137_3_False_shift <= shift_left(c_151_137_3_False_resize, 3);
  with config_select_17 select c_151_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_151_sel is
        when "00" => c_151 <= c_151_96_0_False_shift;
        when "01" => c_151 <= c_151_92_0_False_shift;
        when "10" => c_151 <= c_151_145_0_False_shift;
        when others => c_151 <= c_151_137_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 152 and associated fundamentals [[-228], [486], [220], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 153 and associated fundamentals [[-228], [486], [220], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_152 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 154 and associated fundamentals [[-228], [486], [220], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_153 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 155 and associated fundamentals [[-228], [486], [220], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 156 and associated fundamentals [[-228], [486], [220], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 157 and associated fundamentals [[-228], [486], [220], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_156 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 158 and associated fundamentals [[-228], [486], [220], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 159 and associated fundamentals [[-228], [486], [220], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_158 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 160 and associated fundamentals [[417], [218], [902], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 161 and associated fundamentals [[417], [218], [902], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_160 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 162 and associated fundamentals [[357], [801], [679], [314]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 163 and associated fundamentals [[357], [801], [679], [314]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_162 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 164 and associated fundamentals [[714], [486], [902], [996]]
  c_164_111_2_False_resize <= c_111;
  c_164_111_2_False_shift <= shift_left(c_164_111_2_False_resize, 2);
  c_164_159_0_False_resize <= resize(c_159, 26);
  c_164_159_0_False_shift <= shift_left(c_164_159_0_False_resize, 0);
  c_164_163_1_False_resize <= c_163;
  c_164_163_1_False_shift <= shift_left(c_164_163_1_False_resize, 1);
  c_164_161_0_False_resize <= c_161;
  c_164_161_0_False_shift <= shift_left(c_164_161_0_False_resize, 0);
  with config_select_19 select c_164_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_164_sel is
        when "00" => c_164 <= c_164_111_2_False_shift;
        when "01" => c_164 <= c_164_159_0_False_shift;
        when "10" => c_164 <= c_164_163_1_False_shift;
        when others => c_164 <= c_164_161_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 165 and associated fundamentals [[198], [618], [68], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_165 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 166 and associated fundamentals [[198], [618], [68], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_166 <= c_165 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 167 and associated fundamentals [[198], [618], [68], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_167 <= c_166 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 168 and associated fundamentals [[198], [618], [68], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_168 <= c_167 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 169 and associated fundamentals [[198], [618], [68], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_169 <= c_168 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 170 and associated fundamentals [[198], [618], [68], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_170 <= c_169 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 171 and associated fundamentals [[641], [415], [359], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_171 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 172 and associated fundamentals [[641], [415], [359], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_172 <= c_171 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 173 and associated fundamentals [[792], [253], [359], [214]]
  c_173_111_0_False_resize <= c_111;
  c_173_111_0_False_shift <= shift_left(c_173_111_0_False_resize, 0);
  c_173_172_0_False_resize <= c_172;
  c_173_172_0_False_shift <= shift_left(c_173_172_0_False_resize, 0);
  c_173_170_2_False_resize <= c_170;
  c_173_170_2_False_shift <= shift_left(c_173_170_2_False_resize, 2);
  with config_select_19 select c_173_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_173_sel is
        when "00" => c_173 <= c_173_111_0_False_shift;
        when "01" => c_173 <= c_173_172_0_False_shift;
        when others => c_173 <= c_173_170_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 174 and associated fundamentals [[417], [618], [638], [605]]
  c_174_72_0_False_resize <= c_72;
  c_174_72_0_False_shift <= shift_left(c_174_72_0_False_resize, 0);
  c_174_62_1_False_resize <= c_62;
  c_174_62_1_False_shift <= shift_left(c_174_62_1_False_resize, 1);
  c_174_77_0_False_resize <= c_77;
  c_174_77_0_False_shift <= shift_left(c_174_77_0_False_resize, 0);
  c_174_62_0_False_resize <= c_62;
  c_174_62_0_False_shift <= shift_left(c_174_62_0_False_resize, 0);
  with config_select_13 select c_174_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_174_sel is
        when "00" => c_174 <= c_174_72_0_False_shift;
        when "01" => c_174 <= c_174_62_1_False_shift;
        when "10" => c_174 <= c_174_77_0_False_shift;
        when others => c_174 <= c_174_62_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 175 and associated fundamentals [[828], [399], [319], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_175 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 176 and associated fundamentals [[828], [399], [319], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_175 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 177 and associated fundamentals [[828], [567], [766], [914]]
  c_177_147_0_False_resize <= c_147;
  c_177_147_0_False_shift <= shift_left(c_177_147_0_False_resize, 0);
  c_177_176_0_False_resize <= c_176;
  c_177_176_0_False_shift <= shift_left(c_177_176_0_False_resize, 0);
  c_177_111_0_False_resize <= c_111;
  c_177_111_0_False_shift <= shift_left(c_177_111_0_False_resize, 0);
  with config_select_19 select c_177_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_177_sel is
        when "00" => c_177 <= c_177_147_0_False_shift;
        when "01" => c_177 <= c_177_176_0_False_shift;
        when others => c_177 <= c_177_111_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 178 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_178 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 179 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_179 <= c_178 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 180 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_180 <= c_179 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 181 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_181 <= c_180 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 182 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_182 <= c_181 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 183 and associated fundamentals [[129], [81], [5], [310]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_183 <= c_182 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 184 and associated fundamentals [[641], [415], [359], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_184 <= c_172 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 185 and associated fundamentals [[641], [415], [359], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_185 <= c_184 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 186 and associated fundamentals [[341], [253], [766], [249]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_186 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 187 and associated fundamentals [[341], [253], [766], [249]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_187 <= c_186 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 188 and associated fundamentals [[341], [415], [899], [620]]
  c_188_130_0_False_resize <= c_130;
  c_188_130_0_False_shift <= shift_left(c_188_130_0_False_resize, 0);
  c_188_187_0_False_resize <= c_187;
  c_188_187_0_False_shift <= shift_left(c_188_187_0_False_resize, 0);
  c_188_183_1_False_resize <= resize(c_183, 26);
  c_188_183_1_False_shift <= shift_left(c_188_183_1_False_resize, 1);
  c_188_185_0_False_resize <= c_185;
  c_188_185_0_False_shift <= shift_left(c_188_185_0_False_resize, 0);
  with config_select_21 select c_188_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_188_sel is
        when "00" => c_188 <= c_188_130_0_False_shift;
        when "01" => c_188 <= c_188_187_0_False_shift;
        when "10" => c_188 <= c_188_183_1_False_shift;
        when others => c_188 <= c_188_185_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 189 and associated fundamentals [[641], [144], [679], [102]]
  c_189_102_0_False_resize <= c_102;
  c_189_102_0_False_shift <= shift_left(c_189_102_0_False_resize, 0);
  c_189_157_0_False_resize <= resize(c_157, 26);
  c_189_157_0_False_shift <= shift_left(c_189_157_0_False_resize, 0);
  c_189_92_0_False_resize <= c_92;
  c_189_92_0_False_shift <= shift_left(c_189_92_0_False_resize, 0);
  c_189_120_4_False_resize <= resize(c_120, 26);
  c_189_120_4_False_shift <= shift_left(c_189_120_4_False_resize, 4);
  with config_select_17 select c_189_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_189_sel is
        when "00" => c_189 <= c_189_102_0_False_shift;
        when "01" => c_189 <= c_189_157_0_False_shift;
        when "10" => c_189 <= c_189_92_0_False_shift;
        when others => c_189 <= c_189_120_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 190 and associated fundamentals [[14], [399], [384], [314]]
  c_190_100_0_False_resize <= c_100(24 downto 0);
  c_190_100_0_False_shift <= shift_left(c_190_100_0_False_resize, 0);
  c_190_120_7_False_resize <= resize(c_120, 25);
  c_190_120_7_False_shift <= shift_left(c_190_120_7_False_resize, 7);
  c_190_92_0_False_resize <= c_92(24 downto 0);
  c_190_92_0_False_shift <= shift_left(c_190_92_0_False_resize, 0);
  c_190_120_1_False_resize <= resize(c_120, 25);
  c_190_120_1_False_shift <= shift_left(c_190_120_1_False_resize, 1);
  with config_select_17 select c_190_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_190_sel is
        when "00" => c_190 <= c_190_100_0_False_shift;
        when "01" => c_190 <= c_190_120_7_False_shift;
        when "10" => c_190 <= c_190_92_0_False_shift;
        when others => c_190 <= c_190_120_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 191 and associated fundamentals [[129], [218], [544], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_191 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 192 and associated fundamentals [[129], [218], [544], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_192 <= c_191 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 193 and associated fundamentals [[129], [218], [544], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_193 <= c_192 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 194 and associated fundamentals [[129], [218], [544], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_194 <= c_193 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 195 and associated fundamentals [[129], [218], [544], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_195 <= c_194 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 196 and associated fundamentals [[129], [218], [544], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_196 <= c_195 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 197 and associated fundamentals [[129], [218], [544], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_197 <= c_196 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 198 and associated fundamentals [[129], [218], [544], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_198 <= c_197 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 199 and associated fundamentals [[129], [218], [544], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_199 <= c_198 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 200 and associated fundamentals [[129], [218], [544], [272]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_200 <= c_199 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 201 and associated fundamentals [[129], [218], [544], [272]]
  c_201_resize <= c_200;
  c_201 <= shift_left(c_201_resize, 0);
  -- node of type 'output' in stage 21 with id 202 and associated fundamentals [[1010], [111], [122], [283]]
  c_202_resize <= c_150;
  c_202 <= shift_left(c_202_resize, 0);
  -- node of type 'register' in stage 18 with id 203 and associated fundamentals [[72], [801], [277], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_203 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 204 and associated fundamentals [[72], [801], [277], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_204 <= c_203 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 205 and associated fundamentals [[72], [801], [277], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_205 <= c_204 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 206 and associated fundamentals [[72], [801], [277], [258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_206 <= c_205 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 207 and associated fundamentals [[72], [801], [277], [258]]
  c_207_resize <= c_206;
  c_207 <= shift_left(c_207_resize, 0);
  -- node of type 'register' in stage 20 with id 208 and associated fundamentals [[714], [486], [902], [996]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_208 <= c_164 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 209 and associated fundamentals [[714], [486], [902], [996]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_209 <= c_208 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 210 and associated fundamentals [[714], [486], [902], [996]]
  c_210_resize <= c_209;
  c_210 <= shift_left(c_210_resize, 0);
  -- node of type 'register' in stage 20 with id 211 and associated fundamentals [[792], [253], [359], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_211 <= c_173 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 212 and associated fundamentals [[792], [253], [359], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_212 <= c_211 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 213 and associated fundamentals [[792], [253], [359], [214]]
  c_213_resize <= c_212;
  c_213 <= shift_left(c_213_resize, 0);
  -- node of type 'register' in stage 14 with id 214 and associated fundamentals [[417], [618], [638], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_214 <= c_174 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 215 and associated fundamentals [[417], [618], [638], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_215 <= c_214 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 216 and associated fundamentals [[417], [618], [638], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_216 <= c_215 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 217 and associated fundamentals [[417], [618], [638], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_217 <= c_216 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 218 and associated fundamentals [[417], [618], [638], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_218 <= c_217 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 219 and associated fundamentals [[417], [618], [638], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_219 <= c_218 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 220 and associated fundamentals [[417], [618], [638], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_220 <= c_219 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 221 and associated fundamentals [[417], [618], [638], [605]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_221 <= c_220 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 222 and associated fundamentals [[417], [618], [638], [605]]
  c_222_resize <= c_221;
  c_222 <= shift_left(c_222_resize, 0);
  -- node of type 'register' in stage 20 with id 223 and associated fundamentals [[828], [567], [766], [914]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_223 <= c_177 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 224 and associated fundamentals [[828], [567], [766], [914]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_224 <= c_223 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 225 and associated fundamentals [[828], [567], [766], [914]]
  c_225_resize <= c_224;
  c_225 <= shift_left(c_225_resize, 0);
  -- node of type 'output' in stage 21 with id 226 and associated fundamentals [[341], [415], [899], [620]]
  c_226_resize <= c_188;
  c_226 <= shift_left(c_226_resize, 0);
  -- node of type 'register' in stage 18 with id 227 and associated fundamentals [[641], [144], [679], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_227 <= c_189 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 228 and associated fundamentals [[641], [144], [679], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_228 <= c_227 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 229 and associated fundamentals [[641], [144], [679], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_229 <= c_228 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 230 and associated fundamentals [[641], [144], [679], [102]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_230 <= c_229 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 231 and associated fundamentals [[641], [144], [679], [102]]
  c_231_resize <= c_230;
  c_231 <= shift_left(c_231_resize, 0);
  -- node of type 'register' in stage 18 with id 232 and associated fundamentals [[14], [399], [384], [314]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_232 <= c_190 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 233 and associated fundamentals [[14], [399], [384], [314]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_233 <= c_232 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 234 and associated fundamentals [[14], [399], [384], [314]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_234 <= c_233 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 235 and associated fundamentals [[14], [399], [384], [314]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_235 <= c_234 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 236 and associated fundamentals [[14], [399], [384], [314]]
  c_236_resize <= c_235;
  c_236 <= shift_left(c_236_resize, 0);
end architecture;

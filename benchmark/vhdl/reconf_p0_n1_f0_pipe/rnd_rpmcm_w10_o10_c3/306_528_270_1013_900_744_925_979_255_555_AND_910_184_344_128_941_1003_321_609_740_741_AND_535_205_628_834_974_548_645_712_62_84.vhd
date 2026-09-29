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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_0_3_False_resize: signed(19 downto 0);
  signal c_1_0_3_False_shift: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_0_0_False_resize: signed(20 downto 0);
  signal c_2_0_0_False_shift: signed(20 downto 0);
  signal c_2_0_5_False_resize: signed(20 downto 0);
  signal c_2_0_5_False_shift: signed(20 downto 0);
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
  signal c_6: signed(22 downto 0);
  signal c_6_3_2_False_resize: signed(22 downto 0);
  signal c_6_3_2_False_shift: signed(22 downto 0);
  signal c_6_5_4_False_resize: signed(22 downto 0);
  signal c_6_5_4_False_shift: signed(22 downto 0);
  signal c_6_3_0_False_resize: signed(22 downto 0);
  signal c_6_3_0_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_3_0_False_resize: signed(24 downto 0);
  signal c_7_3_0_False_shift: signed(24 downto 0);
  signal c_7_5_9_False_resize: signed(24 downto 0);
  signal c_7_5_9_False_shift: signed(24 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(25 downto 0);
  signal c_8_i1_resize: signed(25 downto 0);
  signal c_8_i0_shift: signed(25 downto 0);
  signal c_8_i1_shift: signed(25 downto 0);
  signal c_8_arith: signed(25 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_12_0_False_resize: signed(24 downto 0);
  signal c_13_12_0_False_shift: signed(24 downto 0);
  signal c_13_10_1_False_resize: signed(24 downto 0);
  signal c_13_10_1_False_shift: signed(24 downto 0);
  signal c_13_8_5_False_resize: signed(24 downto 0);
  signal c_13_8_5_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_12_3_False_resize: signed(23 downto 0);
  signal c_14_12_3_False_shift: signed(23 downto 0);
  signal c_14_12_1_False_resize: signed(23 downto 0);
  signal c_14_12_1_False_shift: signed(23 downto 0);
  signal c_14_8_0_False_resize: signed(23 downto 0);
  signal c_14_8_0_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(18 downto 0);
  signal c_16_5_0_False_resize: signed(18 downto 0);
  signal c_16_5_0_False_shift: signed(18 downto 0);
  signal c_16_5_3_False_resize: signed(18 downto 0);
  signal c_16_5_3_False_shift: signed(18 downto 0);
  signal c_16_3_0_False_resize: signed(18 downto 0);
  signal c_16_3_0_False_shift: signed(18 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_8_1_False_resize: signed(23 downto 0);
  signal c_17_8_1_False_shift: signed(23 downto 0);
  signal c_17_10_8_False_resize: signed(23 downto 0);
  signal c_17_10_8_False_shift: signed(23 downto 0);
  signal c_17_10_0_False_resize: signed(23 downto 0);
  signal c_17_10_0_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_19: signed(18 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_21: signed(20 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_22_0_False_resize: signed(25 downto 0);
  signal c_25_22_0_False_shift: signed(25 downto 0);
  signal c_25_20_6_False_resize: signed(25 downto 0);
  signal c_25_20_6_False_shift: signed(25 downto 0);
  signal c_25_24_0_False_resize: signed(25 downto 0);
  signal c_25_24_0_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(26 downto 0);
  signal c_26_10_4_False_resize: signed(26 downto 0);
  signal c_26_10_4_False_shift: signed(26 downto 0);
  signal c_26_8_3_False_resize: signed(26 downto 0);
  signal c_26_8_3_False_shift: signed(26 downto 0);
  signal c_26_8_0_False_resize: signed(26 downto 0);
  signal c_26_8_0_False_shift: signed(26 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(26 downto 0);
  signal c_28: signed(26 downto 0);
  signal c_29: signed(28 downto 0);
  signal c_29_i0_resize: signed(28 downto 0);
  signal c_29_i1_resize: signed(28 downto 0);
  signal c_29_i0_shift: signed(28 downto 0);
  signal c_29_i1_shift: signed(28 downto 0);
  signal c_29_arith: signed(28 downto 0);
  signal c_29_oshift: signed(28 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(25 downto 0);
  signal c_30_20_0_False_resize: signed(25 downto 0);
  signal c_30_20_0_False_shift: signed(25 downto 0);
  signal c_30_24_0_False_resize: signed(25 downto 0);
  signal c_30_24_0_False_shift: signed(25 downto 0);
  signal c_30_22_0_False_resize: signed(25 downto 0);
  signal c_30_22_0_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_22_0_False_resize: signed(23 downto 0);
  signal c_31_22_0_False_shift: signed(23 downto 0);
  signal c_31_24_2_False_resize: signed(23 downto 0);
  signal c_31_24_2_False_shift: signed(23 downto 0);
  signal c_31_20_5_False_resize: signed(23 downto 0);
  signal c_31_20_5_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_i0_resize: signed(25 downto 0);
  signal c_32_i1_resize: signed(25 downto 0);
  signal c_32_i0_shift: signed(25 downto 0);
  signal c_32_i1_shift: signed(25 downto 0);
  signal c_32_arith: signed(25 downto 0);
  signal c_32_oshift: signed(25 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(25 downto 0);
  signal c_33_10_1_False_resize: signed(25 downto 0);
  signal c_33_10_1_False_shift: signed(25 downto 0);
  signal c_33_10_8_False_resize: signed(25 downto 0);
  signal c_33_10_8_False_shift: signed(25 downto 0);
  signal c_33_8_0_False_resize: signed(25 downto 0);
  signal c_33_8_0_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(15 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_15_1_False_resize: signed(24 downto 0);
  signal c_36_15_1_False_shift: signed(24 downto 0);
  signal c_36_20_3_False_resize: signed(24 downto 0);
  signal c_36_20_3_False_shift: signed(24 downto 0);
  signal c_36_35_0_False_resize: signed(24 downto 0);
  signal c_36_35_0_False_shift: signed(24 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_i0_resize: signed(25 downto 0);
  signal c_39_i1_resize: signed(25 downto 0);
  signal c_39_i0_shift: signed(25 downto 0);
  signal c_39_i1_shift: signed(25 downto 0);
  signal c_39_arith: signed(25 downto 0);
  signal c_39_oshift: signed(25 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(24 downto 0);
  signal c_40_22_0_False_resize: signed(24 downto 0);
  signal c_40_22_0_False_shift: signed(24 downto 0);
  signal c_40_22_6_False_resize: signed(24 downto 0);
  signal c_40_22_6_False_shift: signed(24 downto 0);
  signal c_40_15_1_False_resize: signed(24 downto 0);
  signal c_40_15_1_False_shift: signed(24 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(20 downto 0);
  signal c_42: signed(20 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_45_42_0_False_resize: signed(22 downto 0);
  signal c_45_42_0_False_shift: signed(22 downto 0);
  signal c_45_29_0_False_resize: signed(22 downto 0);
  signal c_45_29_0_False_shift: signed(22 downto 0);
  signal c_45_44_1_False_resize: signed(22 downto 0);
  signal c_45_44_1_False_shift: signed(22 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_i0_resize: signed(25 downto 0);
  signal c_48_i1_resize: signed(25 downto 0);
  signal c_48_i0_shift: signed(25 downto 0);
  signal c_48_i1_shift: signed(25 downto 0);
  signal c_48_arith: signed(25 downto 0);
  signal c_48_oshift: signed(25 downto 0);
  signal c_48_sub_sel: std_logic;
  signal c_49: signed(24 downto 0);
  signal c_49_32_0_False_resize: signed(24 downto 0);
  signal c_49_32_0_False_shift: signed(24 downto 0);
  signal c_49_42_4_False_resize: signed(24 downto 0);
  signal c_49_42_4_False_shift: signed(24 downto 0);
  signal c_49_44_3_False_resize: signed(24 downto 0);
  signal c_49_44_3_False_shift: signed(24 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_50_35_9_False_resize: signed(24 downto 0);
  signal c_50_35_9_False_shift: signed(24 downto 0);
  signal c_50_35_0_False_resize: signed(24 downto 0);
  signal c_50_35_0_False_shift: signed(24 downto 0);
  signal c_50_20_1_False_resize: signed(24 downto 0);
  signal c_50_20_1_False_shift: signed(24 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_i0_resize: signed(25 downto 0);
  signal c_53_i1_resize: signed(25 downto 0);
  signal c_53_i0_shift: signed(25 downto 0);
  signal c_53_i1_shift: signed(25 downto 0);
  signal c_53_arith: signed(25 downto 0);
  signal c_53_oshift: signed(25 downto 0);
  signal c_53_sub_sel: std_logic;
  signal c_54: signed(25 downto 0);
  signal c_54_53_0_False_resize: signed(25 downto 0);
  signal c_54_53_0_False_shift: signed(25 downto 0);
  signal c_54_53_1_False_resize: signed(25 downto 0);
  signal c_54_53_1_False_shift: signed(25 downto 0);
  signal c_54_48_0_False_resize: signed(25 downto 0);
  signal c_54_48_0_False_shift: signed(25 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_42_0_False_resize: signed(25 downto 0);
  signal c_55_42_0_False_shift: signed(25 downto 0);
  signal c_55_32_2_False_resize: signed(25 downto 0);
  signal c_55_32_2_False_shift: signed(25 downto 0);
  signal c_55_32_0_False_resize: signed(25 downto 0);
  signal c_55_32_0_False_shift: signed(25 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_i0_resize: signed(25 downto 0);
  signal c_58_i1_resize: signed(25 downto 0);
  signal c_58_i0_shift: signed(25 downto 0);
  signal c_58_i1_shift: signed(25 downto 0);
  signal c_58_arith: signed(25 downto 0);
  signal c_58_oshift: signed(25 downto 0);
  signal c_59: signed(15 downto 0);
  signal c_60: signed(15 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(28 downto 0);
  signal c_63_62_2_False_resize: signed(28 downto 0);
  signal c_63_62_2_False_shift: signed(28 downto 0);
  signal c_63_60_4_False_resize: signed(28 downto 0);
  signal c_63_60_4_False_shift: signed(28 downto 0);
  signal c_63_29_0_False_resize: signed(28 downto 0);
  signal c_63_29_0_False_shift: signed(28 downto 0);
  signal c_63_sel: std_logic_vector(1 downto 0);
  signal c_64: signed(20 downto 0);
  signal c_65: signed(20 downto 0);
  signal c_66: signed(28 downto 0);
  signal c_67: signed(28 downto 0);
  signal c_68: signed(26 downto 0);
  signal c_68_67_0_False_resize: signed(26 downto 0);
  signal c_68_67_0_False_shift: signed(26 downto 0);
  signal c_68_48_4_False_resize: signed(26 downto 0);
  signal c_68_48_4_False_shift: signed(26 downto 0);
  signal c_68_65_1_False_resize: signed(26 downto 0);
  signal c_68_65_1_False_shift: signed(26 downto 0);
  signal c_68_sel: std_logic_vector(1 downto 0);
  signal c_69: signed(28 downto 0);
  signal c_70: signed(28 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_i0_resize: signed(25 downto 0);
  signal c_71_i1_resize: signed(25 downto 0);
  signal c_71_i0_shift: signed(25 downto 0);
  signal c_71_i1_shift: signed(25 downto 0);
  signal c_71_arith: signed(25 downto 0);
  signal c_71_oshift: signed(25 downto 0);
  signal c_71_sub_sel: std_logic;
  signal c_72: signed(24 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_76: signed(24 downto 0);
  signal c_77: signed(24 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_80_77_2_False_resize: signed(25 downto 0);
  signal c_80_77_2_False_shift: signed(25 downto 0);
  signal c_80_58_0_False_resize: signed(25 downto 0);
  signal c_80_58_0_False_shift: signed(25 downto 0);
  signal c_80_79_0_False_resize: signed(25 downto 0);
  signal c_80_79_0_False_shift: signed(25 downto 0);
  signal c_80_sel: std_logic_vector(1 downto 0);
  signal c_81: signed(25 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_83_53_0_False_resize: signed(25 downto 0);
  signal c_83_53_0_False_shift: signed(25 downto 0);
  signal c_83_82_5_False_resize: signed(25 downto 0);
  signal c_83_82_5_False_shift: signed(25 downto 0);
  signal c_83_82_0_False_resize: signed(25 downto 0);
  signal c_83_82_0_False_shift: signed(25 downto 0);
  signal c_83_sel: std_logic_vector(1 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_86_i0_resize: signed(25 downto 0);
  signal c_86_i1_resize: signed(25 downto 0);
  signal c_86_i0_shift: signed(25 downto 0);
  signal c_86_i1_shift: signed(25 downto 0);
  signal c_86_arith: signed(25 downto 0);
  signal c_86_oshift: signed(25 downto 0);
  signal c_86_sub_sel: std_logic;
  signal c_87: signed(25 downto 0);
  signal c_87_10_10_False_resize: signed(25 downto 0);
  signal c_87_10_10_False_shift: signed(25 downto 0);
  signal c_87_10_7_False_resize: signed(25 downto 0);
  signal c_87_10_7_False_shift: signed(25 downto 0);
  signal c_87_8_0_False_resize: signed(25 downto 0);
  signal c_87_8_0_False_shift: signed(25 downto 0);
  signal c_87_sel: std_logic_vector(1 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_89: signed(23 downto 0);
  signal c_90: signed(23 downto 0);
  signal c_91: signed(23 downto 0);
  signal c_92: signed(24 downto 0);
  signal c_92_79_1_False_resize: signed(24 downto 0);
  signal c_92_79_1_False_shift: signed(24 downto 0);
  signal c_92_91_0_False_resize: signed(24 downto 0);
  signal c_92_91_0_False_shift: signed(24 downto 0);
  signal c_92_71_0_False_resize: signed(24 downto 0);
  signal c_92_71_0_False_shift: signed(24 downto 0);
  signal c_92_sel: std_logic_vector(1 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_95: signed(25 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_100: signed(25 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_101_i0_resize: signed(25 downto 0);
  signal c_101_i1_resize: signed(25 downto 0);
  signal c_101_i0_shift: signed(25 downto 0);
  signal c_101_i1_shift: signed(25 downto 0);
  signal c_101_arith: signed(25 downto 0);
  signal c_101_oshift: signed(25 downto 0);
  signal c_101_sub_sel: std_logic;
  signal c_102: signed(15 downto 0);
  signal c_103: signed(15 downto 0);
  signal c_104: signed(15 downto 0);
  signal c_105: signed(15 downto 0);
  signal c_106: signed(15 downto 0);
  signal c_107: signed(15 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_109: signed(25 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_112: signed(26 downto 0);
  signal c_112_111_3_False_resize: signed(26 downto 0);
  signal c_112_111_3_False_shift: signed(26 downto 0);
  signal c_112_101_1_False_resize: signed(26 downto 0);
  signal c_112_101_1_False_shift: signed(26 downto 0);
  signal c_112_107_0_False_resize: signed(26 downto 0);
  signal c_112_107_0_False_shift: signed(26 downto 0);
  signal c_112_sel: std_logic_vector(1 downto 0);
  signal c_113: signed(28 downto 0);
  signal c_114: signed(28 downto 0);
  signal c_115: signed(25 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_119_58_0_False_resize: signed(25 downto 0);
  signal c_119_58_0_False_shift: signed(25 downto 0);
  signal c_119_114_0_False_resize: signed(25 downto 0);
  signal c_119_114_0_False_shift: signed(25 downto 0);
  signal c_119_118_0_False_resize: signed(25 downto 0);
  signal c_119_118_0_False_shift: signed(25 downto 0);
  signal c_119_sel: std_logic_vector(1 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_122: signed(25 downto 0);
  signal c_122_i0_resize: signed(25 downto 0);
  signal c_122_i1_resize: signed(25 downto 0);
  signal c_122_i0_shift: signed(25 downto 0);
  signal c_122_i1_shift: signed(25 downto 0);
  signal c_122_arith: signed(25 downto 0);
  signal c_122_oshift: signed(25 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_127: signed(26 downto 0);
  signal c_127_101_0_False_resize: signed(26 downto 0);
  signal c_127_101_0_False_shift: signed(26 downto 0);
  signal c_127_124_0_False_resize: signed(26 downto 0);
  signal c_127_124_0_False_shift: signed(26 downto 0);
  signal c_127_126_1_False_resize: signed(26 downto 0);
  signal c_127_126_1_False_shift: signed(26 downto 0);
  signal c_127_sel: std_logic_vector(1 downto 0);
  signal c_128: signed(24 downto 0);
  signal c_128_60_3_False_resize: signed(24 downto 0);
  signal c_128_60_3_False_shift: signed(24 downto 0);
  signal c_128_39_0_False_resize: signed(24 downto 0);
  signal c_128_39_0_False_shift: signed(24 downto 0);
  signal c_128_60_0_False_resize: signed(24 downto 0);
  signal c_128_60_0_False_shift: signed(24 downto 0);
  signal c_128_sel: std_logic_vector(1 downto 0);
  signal c_129: signed(24 downto 0);
  signal c_130: signed(24 downto 0);
  signal c_131: signed(24 downto 0);
  signal c_132: signed(24 downto 0);
  signal c_133: signed(24 downto 0);
  signal c_134: signed(24 downto 0);
  signal c_135: signed(25 downto 0);
  signal c_135_i0_resize: signed(25 downto 0);
  signal c_135_i1_resize: signed(25 downto 0);
  signal c_135_i0_shift: signed(25 downto 0);
  signal c_135_i1_shift: signed(25 downto 0);
  signal c_135_arith: signed(25 downto 0);
  signal c_135_oshift: signed(25 downto 0);
  signal c_135_sub_sel: std_logic;
  signal c_136: signed(24 downto 0);
  signal c_137: signed(24 downto 0);
  signal c_138: signed(24 downto 0);
  signal c_139: signed(24 downto 0);
  signal c_140: signed(25 downto 0);
  signal c_141: signed(25 downto 0);
  signal c_142: signed(25 downto 0);
  signal c_143: signed(25 downto 0);
  signal c_144: signed(25 downto 0);
  signal c_144_122_0_False_resize: signed(25 downto 0);
  signal c_144_122_0_False_shift: signed(25 downto 0);
  signal c_144_139_1_False_resize: signed(25 downto 0);
  signal c_144_139_1_False_shift: signed(25 downto 0);
  signal c_144_143_0_False_resize: signed(25 downto 0);
  signal c_144_143_0_False_shift: signed(25 downto 0);
  signal c_144_sel: std_logic_vector(1 downto 0);
  signal c_145: signed(25 downto 0);
  signal c_146: signed(25 downto 0);
  signal c_147: signed(25 downto 0);
  signal c_148: signed(25 downto 0);
  signal c_149: signed(25 downto 0);
  signal c_150: signed(25 downto 0);
  signal c_151: signed(25 downto 0);
  signal c_151_101_0_False_resize: signed(25 downto 0);
  signal c_151_101_0_False_shift: signed(25 downto 0);
  signal c_151_126_1_False_resize: signed(25 downto 0);
  signal c_151_126_1_False_shift: signed(25 downto 0);
  signal c_151_150_0_False_resize: signed(25 downto 0);
  signal c_151_150_0_False_shift: signed(25 downto 0);
  signal c_151_sel: std_logic_vector(1 downto 0);
  signal c_152: signed(25 downto 0);
  signal c_152_146_0_False_resize: signed(25 downto 0);
  signal c_152_146_0_False_shift: signed(25 downto 0);
  signal c_152_53_0_False_resize: signed(25 downto 0);
  signal c_152_53_0_False_shift: signed(25 downto 0);
  signal c_152_75_2_False_resize: signed(25 downto 0);
  signal c_152_75_2_False_shift: signed(25 downto 0);
  signal c_152_sel: std_logic_vector(1 downto 0);
  signal c_153: signed(25 downto 0);
  signal c_153_58_0_False_resize: signed(25 downto 0);
  signal c_153_58_0_False_shift: signed(25 downto 0);
  signal c_153_105_7_False_resize: signed(25 downto 0);
  signal c_153_105_7_False_shift: signed(25 downto 0);
  signal c_153_118_1_False_resize: signed(25 downto 0);
  signal c_153_118_1_False_shift: signed(25 downto 0);
  signal c_153_sel: std_logic_vector(1 downto 0);
  signal c_154: signed(25 downto 0);
  signal c_155: signed(25 downto 0);
  signal c_156: signed(25 downto 0);
  signal c_156_135_0_False_resize: signed(25 downto 0);
  signal c_156_135_0_False_shift: signed(25 downto 0);
  signal c_156_155_0_False_resize: signed(25 downto 0);
  signal c_156_155_0_False_shift: signed(25 downto 0);
  signal c_156_143_1_False_resize: signed(25 downto 0);
  signal c_156_143_1_False_shift: signed(25 downto 0);
  signal c_156_sel: std_logic_vector(1 downto 0);
  signal c_157: signed(25 downto 0);
  signal c_158: signed(25 downto 0);
  signal c_159: signed(25 downto 0);
  signal c_160: signed(25 downto 0);
  signal c_161: signed(25 downto 0);
  signal c_162: signed(25 downto 0);
  signal c_163: signed(25 downto 0);
  signal c_163_160_2_False_resize: signed(25 downto 0);
  signal c_163_160_2_False_shift: signed(25 downto 0);
  signal c_163_162_0_False_resize: signed(25 downto 0);
  signal c_163_162_0_False_shift: signed(25 downto 0);
  signal c_163_135_0_False_resize: signed(25 downto 0);
  signal c_163_135_0_False_shift: signed(25 downto 0);
  signal c_163_sel: std_logic_vector(1 downto 0);
  signal c_164: signed(25 downto 0);
  signal c_165: signed(25 downto 0);
  signal c_166: signed(25 downto 0);
  signal c_167: signed(25 downto 0);
  signal c_168: signed(25 downto 0);
  signal c_168_165_0_False_resize: signed(25 downto 0);
  signal c_168_165_0_False_shift: signed(25 downto 0);
  signal c_168_122_0_False_resize: signed(25 downto 0);
  signal c_168_122_0_False_shift: signed(25 downto 0);
  signal c_168_167_0_False_resize: signed(25 downto 0);
  signal c_168_167_0_False_shift: signed(25 downto 0);
  signal c_168_sel: std_logic_vector(1 downto 0);
  signal c_169: signed(25 downto 0);
  signal c_169_158_0_False_resize: signed(25 downto 0);
  signal c_169_158_0_False_shift: signed(25 downto 0);
  signal c_169_86_0_False_resize: signed(25 downto 0);
  signal c_169_86_0_False_shift: signed(25 downto 0);
  signal c_169_sel: std_logic_vector(0 downto 0);
  signal c_170: signed(25 downto 0);
  signal c_170_29_0_False_resize: signed(25 downto 0);
  signal c_170_29_0_False_shift: signed(25 downto 0);
  signal c_170_42_1_False_resize: signed(25 downto 0);
  signal c_170_42_1_False_shift: signed(25 downto 0);
  signal c_170_44_0_False_resize: signed(25 downto 0);
  signal c_170_44_0_False_shift: signed(25 downto 0);
  signal c_170_sel: std_logic_vector(1 downto 0);
  signal c_171: signed(25 downto 0);
  signal c_171_155_0_False_resize: signed(25 downto 0);
  signal c_171_155_0_False_shift: signed(25 downto 0);
  signal c_171_135_0_False_resize: signed(25 downto 0);
  signal c_171_135_0_False_shift: signed(25 downto 0);
  signal c_171_122_0_False_resize: signed(25 downto 0);
  signal c_171_122_0_False_shift: signed(25 downto 0);
  signal c_171_sel: std_logic_vector(1 downto 0);
  signal c_172: signed(25 downto 0);
  signal c_172_resize: signed(25 downto 0);
  signal c_173: signed(25 downto 0);
  signal c_174: signed(25 downto 0);
  signal c_175: signed(25 downto 0);
  signal c_175_resize: signed(25 downto 0);
  signal c_176: signed(25 downto 0);
  signal c_177: signed(25 downto 0);
  signal c_178: signed(25 downto 0);
  signal c_179: signed(25 downto 0);
  signal c_180: signed(25 downto 0);
  signal c_181: signed(25 downto 0);
  signal c_182: signed(25 downto 0);
  signal c_182_resize: signed(25 downto 0);
  signal c_183: signed(25 downto 0);
  signal c_184: signed(25 downto 0);
  signal c_185: signed(25 downto 0);
  signal c_186: signed(25 downto 0);
  signal c_187: signed(25 downto 0);
  signal c_187_resize: signed(25 downto 0);
  signal c_188: signed(25 downto 0);
  signal c_188_resize: signed(25 downto 0);
  signal c_189: signed(25 downto 0);
  signal c_189_resize: signed(25 downto 0);
  signal c_190: signed(25 downto 0);
  signal c_190_resize: signed(25 downto 0);
  signal c_191: signed(25 downto 0);
  signal c_192: signed(25 downto 0);
  signal c_193: signed(25 downto 0);
  signal c_193_resize: signed(25 downto 0);
  signal c_194: signed(25 downto 0);
  signal c_195: signed(25 downto 0);
  signal c_196: signed(25 downto 0);
  signal c_197: signed(25 downto 0);
  signal c_198: signed(25 downto 0);
  signal c_199: signed(25 downto 0);
  signal c_200: signed(25 downto 0);
  signal c_201: signed(25 downto 0);
  signal c_202: signed(25 downto 0);
  signal c_202_resize: signed(25 downto 0);
  signal c_203: signed(25 downto 0);
  signal c_203_resize: signed(25 downto 0);
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
  -- output node 0 with id 172
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_172);
    end if;
  end process;
  -- output node 1 with id 175
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_175);
    end if;
  end process;
  -- output node 2 with id 182
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_182);
    end if;
  end process;
  -- output node 3 with id 187
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_187);
    end if;
  end process;
  -- output node 4 with id 188
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_188);
    end if;
  end process;
  -- output node 5 with id 189
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_189);
    end if;
  end process;
  -- output node 6 with id 190
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_190);
    end if;
  end process;
  -- output node 7 with id 193
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_193);
    end if;
  end process;
  -- output node 8 with id 202
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_202);
    end if;
  end process;
  -- output node 9 with id 203
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_203);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[16], [8], [1]]
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 20);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_0_False_shift;
        when "01" => c_1 <= c_1_0_3_False_shift;
        when others => c_1 <= c_1_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [1], [32]]
  c_2_0_0_False_resize <= resize(c_0, 21);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 21);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[17], [7], [-31]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[17], [16], [-124]]
  c_6_3_2_False_resize <= resize(c_3, 23);
  c_6_3_2_False_shift <= shift_left(c_6_3_2_False_resize, 2);
  c_6_5_4_False_resize <= resize(c_5, 23);
  c_6_5_4_False_shift <= shift_left(c_6_5_4_False_resize, 4);
  c_6_3_0_False_resize <= resize(c_3, 23);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_2_False_shift;
        when "01" => c_6 <= c_6_5_4_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[512], [7], [-31]]
  c_7_3_0_False_resize <= resize(c_3, 25);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_5_9_False_resize <= resize(c_5, 25);
  c_7_5_9_False_shift <= shift_left(c_7_5_9_False_resize, 9);
  with config_select_3 select c_7_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_3_0_False_shift;
        when others => c_7 <= c_7_5_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[529], [9], [-155]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[17], [7], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[17], [7], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[17], [288], [2]]
  c_13_12_0_False_resize <= resize(c_12, 25);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_10_1_False_resize <= resize(c_10, 25);
  c_13_10_1_False_shift <= shift_left(c_13_10_1_False_resize, 1);
  c_13_8_5_False_resize <= c_8(24 downto 0);
  c_13_8_5_False_shift <= shift_left(c_13_8_5_False_resize, 5);
  with config_select_5 select c_13_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_12_0_False_shift;
        when "01" => c_13 <= c_13_10_1_False_shift;
        when others => c_13 <= c_13_8_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[136], [14], [-155]]
  c_14_12_3_False_resize <= resize(c_12, 24);
  c_14_12_3_False_shift <= shift_left(c_14_12_3_False_resize, 3);
  c_14_12_1_False_resize <= resize(c_12, 24);
  c_14_12_1_False_shift <= shift_left(c_14_12_1_False_resize, 1);
  c_14_8_0_False_resize <= c_8(23 downto 0);
  c_14_8_0_False_shift <= shift_left(c_14_8_0_False_resize, 0);
  with config_select_5 select c_14_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_12_3_False_shift;
        when "01" => c_14 <= c_14_12_1_False_shift;
        when others => c_14 <= c_14_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[153], [302], [157]]
  with config_select_6 select c_15_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[1], [7], [8]]
  c_16_5_0_False_resize <= resize(c_5, 19);
  c_16_5_0_False_shift <= shift_left(c_16_5_0_False_resize, 0);
  c_16_5_3_False_resize <= resize(c_5, 19);
  c_16_5_3_False_shift <= shift_left(c_16_5_3_False_resize, 3);
  c_16_3_0_False_resize <= c_3(18 downto 0);
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_5_0_False_shift;
        when "01" => c_16 <= c_16_5_3_False_shift;
        when others => c_16 <= c_16_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[256], [18], [1]]
  c_17_8_1_False_resize <= c_8(23 downto 0);
  c_17_8_1_False_shift <= shift_left(c_17_8_1_False_resize, 1);
  c_17_10_8_False_resize <= resize(c_10, 24);
  c_17_10_8_False_shift <= shift_left(c_17_10_8_False_resize, 8);
  c_17_10_0_False_resize <= resize(c_10, 24);
  c_17_10_0_False_shift <= shift_left(c_17_10_0_False_resize, 0);
  with config_select_5 select c_17_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_8_1_False_shift;
        when "01" => c_17 <= c_17_10_8_False_shift;
        when others => c_17 <= c_17_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[1], [7], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[1], [7], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 20 and associated fundamentals [[-255], [-11], [7]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
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
      x_i => c_19,
      y_i => c_17,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[17], [7], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[17], [7], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[529], [9], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[529], [9], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[17], [-704], [-155]]
  c_25_22_0_False_resize <= resize(c_22, 26);
  c_25_22_0_False_shift <= shift_left(c_25_22_0_False_resize, 0);
  c_25_20_6_False_resize <= resize(c_20, 26);
  c_25_20_6_False_shift <= shift_left(c_25_20_6_False_resize, 6);
  c_25_24_0_False_resize <= c_24;
  c_25_24_0_False_shift <= shift_left(c_25_24_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_22_0_False_shift;
        when "01" => c_25 <= c_25_20_6_False_shift;
        when others => c_25 <= c_25_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 26 and associated fundamentals [[16], [9], [-1240]]
  c_26_10_4_False_resize <= resize(c_10, 27);
  c_26_10_4_False_shift <= shift_left(c_26_10_4_False_resize, 4);
  c_26_8_3_False_resize <= resize(c_8, 27);
  c_26_8_3_False_shift <= shift_left(c_26_8_3_False_resize, 3);
  c_26_8_0_False_resize <= resize(c_8, 27);
  c_26_8_0_False_shift <= shift_left(c_26_8_0_False_resize, 0);
  with config_select_5 select c_26_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_10_4_False_shift;
        when "01" => c_26 <= c_26_8_3_False_shift;
        when others => c_26 <= c_26_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[16], [9], [-1240]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[16], [9], [-1240]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 29 and associated fundamentals [[81], [-740], [-5115]]
  with config_select_8 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 27,
      w_o => 29,
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
      sub_i => c_29_sub_sel,
      x_i => c_25,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 30 and associated fundamentals [[529], [-11], [-31]]
  c_30_20_0_False_resize <= resize(c_20, 26);
  c_30_20_0_False_shift <= shift_left(c_30_20_0_False_resize, 0);
  c_30_24_0_False_resize <= c_24;
  c_30_24_0_False_shift <= shift_left(c_30_24_0_False_resize, 0);
  c_30_22_0_False_resize <= resize(c_22, 26);
  c_30_22_0_False_shift <= shift_left(c_30_22_0_False_resize, 0);
  with config_select_7 select c_30_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_20_0_False_shift;
        when "01" => c_30 <= c_30_24_0_False_shift;
        when others => c_30 <= c_30_22_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 31 and associated fundamentals [[17], [36], [224]]
  c_31_22_0_False_resize <= resize(c_22, 24);
  c_31_22_0_False_shift <= shift_left(c_31_22_0_False_resize, 0);
  c_31_24_2_False_resize <= c_24(23 downto 0);
  c_31_24_2_False_shift <= shift_left(c_31_24_2_False_resize, 2);
  c_31_20_5_False_resize <= c_20;
  c_31_20_5_False_shift <= shift_left(c_31_20_5_False_resize, 5);
  with config_select_7 select c_31_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_22_0_False_shift;
        when "01" => c_31 <= c_31_24_2_False_shift;
        when others => c_31 <= c_31_20_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 32 and associated fundamentals [[563], [-83], [417]]
  with config_select_8 select c_32_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      sub_i => c_32_sub_sel,
      x_i => c_30,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 33 and associated fundamentals [[529], [256], [2]]
  c_33_10_1_False_resize <= resize(c_10, 26);
  c_33_10_1_False_shift <= shift_left(c_33_10_1_False_resize, 1);
  c_33_10_8_False_resize <= resize(c_10, 26);
  c_33_10_8_False_shift <= shift_left(c_33_10_8_False_resize, 8);
  c_33_8_0_False_resize <= c_8;
  c_33_8_0_False_shift <= shift_left(c_33_8_0_False_resize, 0);
  with config_select_5 select c_33_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_10_1_False_shift;
        when "01" => c_33 <= c_33_10_8_False_shift;
        when others => c_33 <= c_33_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 34 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 36 and associated fundamentals [[1], [-88], [314]]
  c_36_15_1_False_resize <= c_15;
  c_36_15_1_False_shift <= shift_left(c_36_15_1_False_resize, 1);
  c_36_20_3_False_resize <= resize(c_20, 25);
  c_36_20_3_False_shift <= shift_left(c_36_20_3_False_resize, 3);
  c_36_35_0_False_resize <= resize(c_35, 25);
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  with config_select_7 select c_36_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_15_1_False_shift;
        when "01" => c_36 <= c_36_20_3_False_shift;
        when others => c_36 <= c_36_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[529], [256], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[529], [256], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 39 and associated fundamentals [[528], [344], [316]]
  with config_select_8 select c_39_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_39_sub_sel,
      x_i => c_38,
      y_i => c_36,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 40 and associated fundamentals [[306], [448], [-31]]
  c_40_22_0_False_resize <= resize(c_22, 25);
  c_40_22_0_False_shift <= shift_left(c_40_22_0_False_resize, 0);
  c_40_22_6_False_resize <= resize(c_22, 25);
  c_40_22_6_False_shift <= shift_left(c_40_22_6_False_resize, 6);
  c_40_15_1_False_resize <= c_15;
  c_40_15_1_False_shift <= shift_left(c_40_15_1_False_resize, 1);
  with config_select_7 select c_40_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_22_0_False_shift;
        when "01" => c_40 <= c_40_22_6_False_shift;
        when others => c_40 <= c_40_15_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[17], [7], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[17], [7], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[-255], [-11], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[-255], [-11], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 45 and associated fundamentals [[81], [7], [14]]
  c_45_42_0_False_resize <= resize(c_42, 23);
  c_45_42_0_False_shift <= shift_left(c_45_42_0_False_resize, 0);
  c_45_29_0_False_resize <= c_29(22 downto 0);
  c_45_29_0_False_shift <= shift_left(c_45_29_0_False_resize, 0);
  c_45_44_1_False_resize <= c_44(22 downto 0);
  c_45_44_1_False_shift <= shift_left(c_45_44_1_False_resize, 1);
  with config_select_9 select c_45_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_42_0_False_shift;
        when "01" => c_45 <= c_45_29_0_False_shift;
        when others => c_45 <= c_45_44_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[306], [448], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[306], [448], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 48 and associated fundamentals [[450], [910], [-90]]
  with config_select_10 select c_48_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_48: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_48_sub_sel,
      x_i => c_47,
      y_i => c_45,
      z_o => c_48_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_48_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 49 and associated fundamentals [[272], [-83], [56]]
  c_49_32_0_False_resize <= c_32(24 downto 0);
  c_49_32_0_False_shift <= shift_left(c_49_32_0_False_resize, 0);
  c_49_42_4_False_resize <= resize(c_42, 25);
  c_49_42_4_False_shift <= shift_left(c_49_42_4_False_resize, 4);
  c_49_44_3_False_resize <= resize(c_44, 25);
  c_49_44_3_False_shift <= shift_left(c_49_44_3_False_resize, 3);
  with config_select_9 select c_49_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_32_0_False_shift;
        when "01" => c_49 <= c_49_42_4_False_shift;
        when others => c_49 <= c_49_44_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 50 and associated fundamentals [[1], [512], [14]]
  c_50_35_9_False_resize <= resize(c_35, 25);
  c_50_35_9_False_shift <= shift_left(c_50_35_9_False_resize, 9);
  c_50_35_0_False_resize <= resize(c_35, 25);
  c_50_35_0_False_shift <= shift_left(c_50_35_0_False_resize, 0);
  c_50_20_1_False_resize <= resize(c_20, 25);
  c_50_20_1_False_shift <= shift_left(c_50_20_1_False_resize, 1);
  with config_select_7 select c_50_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_35_9_False_shift;
        when "01" => c_50 <= c_50_35_0_False_shift;
        when others => c_50 <= c_50_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[1], [512], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[1], [512], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 53 and associated fundamentals [[270], [941], [84]]
  with config_select_10 select c_53_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_53: entity work.adder_node
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
      sub_i => c_53_sub_sel,
      x_i => c_49,
      y_i => c_52,
      z_o => c_53_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_53_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 54 and associated fundamentals [[450], [941], [168]]
  c_54_53_0_False_resize <= c_53;
  c_54_53_0_False_shift <= shift_left(c_54_53_0_False_resize, 0);
  c_54_53_1_False_resize <= c_53;
  c_54_53_1_False_shift <= shift_left(c_54_53_1_False_resize, 1);
  c_54_48_0_False_resize <= c_48;
  c_54_48_0_False_shift <= shift_left(c_54_48_0_False_resize, 0);
  with config_select_11 select c_54_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_53_0_False_shift;
        when "01" => c_54 <= c_54_53_1_False_shift;
        when others => c_54 <= c_54_48_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 55 and associated fundamentals [[563], [-332], [-31]]
  c_55_42_0_False_resize <= resize(c_42, 26);
  c_55_42_0_False_shift <= shift_left(c_55_42_0_False_resize, 0);
  c_55_32_2_False_resize <= c_32;
  c_55_32_2_False_shift <= shift_left(c_55_32_2_False_resize, 2);
  c_55_32_0_False_resize <= c_32;
  c_55_32_0_False_shift <= shift_left(c_55_32_0_False_resize, 0);
  with config_select_9 select c_55_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "00" => c_55 <= c_55_42_0_False_shift;
        when "01" => c_55 <= c_55_32_2_False_shift;
        when others => c_55 <= c_55_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 56 and associated fundamentals [[563], [-332], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 57 and associated fundamentals [[563], [-332], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'add' in stage 12 with id 58 and associated fundamentals [[1013], [609], [137]]
  inst_adder_node_58: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      x_i => c_54,
      y_i => c_57,
      z_o => c_58_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_58_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 59 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 60 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 61 and associated fundamentals [[529], [9], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 62 and associated fundamentals [[529], [9], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 63 and associated fundamentals [[16], [36], [-5115]]
  c_63_62_2_False_resize <= resize(c_62, 29);
  c_63_62_2_False_shift <= shift_left(c_63_62_2_False_resize, 2);
  c_63_60_4_False_resize <= resize(c_60, 29);
  c_63_60_4_False_shift <= shift_left(c_63_60_4_False_resize, 4);
  c_63_29_0_False_resize <= c_29;
  c_63_29_0_False_shift <= shift_left(c_63_29_0_False_resize, 0);
  with config_select_9 select c_63_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "00" => c_63 <= c_63_62_2_False_shift;
        when "01" => c_63 <= c_63_60_4_False_shift;
        when others => c_63 <= c_63_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 64 and associated fundamentals [[17], [7], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 65 and associated fundamentals [[17], [7], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 66 and associated fundamentals [[81], [-740], [-5115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 67 and associated fundamentals [[81], [-740], [-5115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 68 and associated fundamentals [[81], [14], [-1440]]
  c_68_67_0_False_resize <= c_67(26 downto 0);
  c_68_67_0_False_shift <= shift_left(c_68_67_0_False_resize, 0);
  c_68_48_4_False_resize <= resize(c_48, 27);
  c_68_48_4_False_shift <= shift_left(c_68_48_4_False_resize, 4);
  c_68_65_1_False_resize <= resize(c_65, 27);
  c_68_65_1_False_shift <= shift_left(c_68_65_1_False_resize, 1);
  with config_select_11 select c_68_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_68_sel is
        when "00" => c_68 <= c_68_67_0_False_shift;
        when "01" => c_68 <= c_68_48_4_False_shift;
        when others => c_68 <= c_68_65_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 69 and associated fundamentals [[16], [36], [-5115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 70 and associated fundamentals [[16], [36], [-5115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 71 and associated fundamentals [[-308], [92], [645]]
  with config_select_12 select c_71_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_71: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 27,
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
      sub_i => c_71_sub_sel,
      x_i => c_70,
      y_i => c_68,
      z_o => c_71_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_71_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 72 and associated fundamentals [[153], [302], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 73 and associated fundamentals [[153], [302], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 74 and associated fundamentals [[153], [302], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 75 and associated fundamentals [[153], [302], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 76 and associated fundamentals [[153], [302], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 77 and associated fundamentals [[153], [302], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 78 and associated fundamentals [[450], [910], [-90]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 79 and associated fundamentals [[450], [910], [-90]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 80 and associated fundamentals [[450], [609], [628]]
  c_80_77_2_False_resize <= resize(c_77, 26);
  c_80_77_2_False_shift <= shift_left(c_80_77_2_False_resize, 2);
  c_80_58_0_False_resize <= c_58;
  c_80_58_0_False_shift <= shift_left(c_80_58_0_False_resize, 0);
  c_80_79_0_False_resize <= c_79;
  c_80_79_0_False_shift <= shift_left(c_80_79_0_False_resize, 0);
  with config_select_13 select c_80_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_80_sel is
        when "00" => c_80 <= c_80_77_2_False_shift;
        when "01" => c_80 <= c_80_58_0_False_shift;
        when others => c_80 <= c_80_79_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 81 and associated fundamentals [[529], [9], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 82 and associated fundamentals [[529], [9], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 83 and associated fundamentals [[529], [288], [84]]
  c_83_53_0_False_resize <= c_53;
  c_83_53_0_False_shift <= shift_left(c_83_53_0_False_resize, 0);
  c_83_82_5_False_resize <= c_82;
  c_83_82_5_False_shift <= shift_left(c_83_82_5_False_resize, 5);
  c_83_82_0_False_resize <= c_82;
  c_83_82_0_False_shift <= shift_left(c_83_82_0_False_resize, 0);
  with config_select_11 select c_83_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_83_sel is
        when "00" => c_83 <= c_83_53_0_False_shift;
        when "01" => c_83 <= c_83_82_5_False_shift;
        when others => c_83 <= c_83_82_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 84 and associated fundamentals [[529], [288], [84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 85 and associated fundamentals [[529], [288], [84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 86 and associated fundamentals [[979], [321], [712]]
  with config_select_14 select c_86_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_86: entity work.adder_node
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
      sub_i => c_86_sub_sel,
      x_i => c_80,
      y_i => c_85,
      z_o => c_86_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_86_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 87 and associated fundamentals [[128], [1024], [-155]]
  c_87_10_10_False_resize <= resize(c_10, 26);
  c_87_10_10_False_shift <= shift_left(c_87_10_10_False_resize, 10);
  c_87_10_7_False_resize <= resize(c_10, 26);
  c_87_10_7_False_shift <= shift_left(c_87_10_7_False_resize, 7);
  c_87_8_0_False_resize <= c_8;
  c_87_8_0_False_shift <= shift_left(c_87_8_0_False_resize, 0);
  with config_select_5 select c_87_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_87_sel is
        when "00" => c_87 <= c_87_10_10_False_shift;
        when "01" => c_87 <= c_87_10_7_False_shift;
        when others => c_87 <= c_87_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 88 and associated fundamentals [[-255], [-11], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 89 and associated fundamentals [[-255], [-11], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 90 and associated fundamentals [[-255], [-11], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 91 and associated fundamentals [[-255], [-11], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 92 and associated fundamentals [[-308], [-11], [-180]]
  c_92_79_1_False_resize <= c_79(24 downto 0);
  c_92_79_1_False_shift <= shift_left(c_92_79_1_False_resize, 1);
  c_92_91_0_False_resize <= resize(c_91, 25);
  c_92_91_0_False_shift <= shift_left(c_92_91_0_False_resize, 0);
  c_92_71_0_False_resize <= c_71(24 downto 0);
  c_92_71_0_False_shift <= shift_left(c_92_71_0_False_resize, 0);
  with config_select_13 select c_92_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_92_sel is
        when "00" => c_92 <= c_92_79_1_False_shift;
        when "01" => c_92 <= c_92_91_0_False_shift;
        when others => c_92 <= c_92_71_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 93 and associated fundamentals [[128], [1024], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 94 and associated fundamentals [[128], [1024], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 95 and associated fundamentals [[128], [1024], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 96 and associated fundamentals [[128], [1024], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 97 and associated fundamentals [[128], [1024], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 98 and associated fundamentals [[128], [1024], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 99 and associated fundamentals [[128], [1024], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 100 and associated fundamentals [[128], [1024], [-155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 101 and associated fundamentals [[744], [1002], [205]]
  with config_select_14 select c_101_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_101: entity work.adder_node
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
      sub_i => c_101_sub_sel,
      x_i => c_100,
      y_i => c_92,
      z_o => c_101_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_101_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 102 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 103 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 104 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 105 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 106 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 107 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 108 and associated fundamentals [[270], [941], [84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 109 and associated fundamentals [[270], [941], [84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 110 and associated fundamentals [[270], [941], [84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 111 and associated fundamentals [[270], [941], [84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 112 and associated fundamentals [[1488], [1], [672]]
  c_112_111_3_False_resize <= resize(c_111, 27);
  c_112_111_3_False_shift <= shift_left(c_112_111_3_False_resize, 3);
  c_112_101_1_False_resize <= resize(c_101, 27);
  c_112_101_1_False_shift <= shift_left(c_112_101_1_False_resize, 1);
  c_112_107_0_False_resize <= resize(c_107, 27);
  c_112_107_0_False_shift <= shift_left(c_112_107_0_False_resize, 0);
  with config_select_15 select c_112_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_112_sel is
        when "00" => c_112 <= c_112_111_3_False_shift;
        when "01" => c_112 <= c_112_101_1_False_shift;
        when others => c_112 <= c_112_107_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 113 and associated fundamentals [[81], [-740], [-5115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 114 and associated fundamentals [[81], [-740], [-5115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 115 and associated fundamentals [[563], [-83], [417]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 116 and associated fundamentals [[563], [-83], [417]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 117 and associated fundamentals [[563], [-83], [417]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 118 and associated fundamentals [[563], [-83], [417]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_117 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 119 and associated fundamentals [[563], [-740], [137]]
  c_119_58_0_False_resize <= c_58;
  c_119_58_0_False_shift <= shift_left(c_119_58_0_False_resize, 0);
  c_119_114_0_False_resize <= c_114(25 downto 0);
  c_119_114_0_False_shift <= shift_left(c_119_114_0_False_resize, 0);
  c_119_118_0_False_resize <= c_118;
  c_119_118_0_False_shift <= shift_left(c_119_118_0_False_resize, 0);
  with config_select_13 select c_119_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_119_sel is
        when "00" => c_119 <= c_119_58_0_False_shift;
        when "01" => c_119 <= c_119_114_0_False_shift;
        when others => c_119 <= c_119_118_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 120 and associated fundamentals [[563], [-740], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 121 and associated fundamentals [[563], [-740], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 16 with id 122 and associated fundamentals [[925], [741], [535]]
  inst_adder_node_122: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
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
      x_i => c_112,
      y_i => c_121,
      z_o => c_122_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_122_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 123 and associated fundamentals [[563], [-83], [417]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 124 and associated fundamentals [[563], [-83], [417]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 125 and associated fundamentals [[-308], [92], [645]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 126 and associated fundamentals [[-308], [92], [645]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 127 and associated fundamentals [[563], [1002], [1290]]
  c_127_101_0_False_resize <= resize(c_101, 27);
  c_127_101_0_False_shift <= shift_left(c_127_101_0_False_resize, 0);
  c_127_124_0_False_resize <= resize(c_124, 27);
  c_127_124_0_False_shift <= shift_left(c_127_124_0_False_resize, 0);
  c_127_126_1_False_resize <= resize(c_126, 27);
  c_127_126_1_False_shift <= shift_left(c_127_126_1_False_resize, 1);
  with config_select_15 select c_127_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_127_sel is
        when "00" => c_127 <= c_127_101_0_False_shift;
        when "01" => c_127 <= c_127_124_0_False_shift;
        when others => c_127 <= c_127_126_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 128 and associated fundamentals [[8], [1], [316]]
  c_128_60_3_False_resize <= resize(c_60, 25);
  c_128_60_3_False_shift <= shift_left(c_128_60_3_False_resize, 3);
  c_128_39_0_False_resize <= c_39(24 downto 0);
  c_128_39_0_False_shift <= shift_left(c_128_39_0_False_resize, 0);
  c_128_60_0_False_resize <= resize(c_60, 25);
  c_128_60_0_False_shift <= shift_left(c_128_60_0_False_resize, 0);
  with config_select_9 select c_128_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_128_sel is
        when "00" => c_128 <= c_128_60_3_False_shift;
        when "01" => c_128 <= c_128_39_0_False_shift;
        when others => c_128 <= c_128_60_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 129 and associated fundamentals [[8], [1], [316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 130 and associated fundamentals [[8], [1], [316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 131 and associated fundamentals [[8], [1], [316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 132 and associated fundamentals [[8], [1], [316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 133 and associated fundamentals [[8], [1], [316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 134 and associated fundamentals [[8], [1], [316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 135 and associated fundamentals [[555], [1003], [974]]
  with config_select_16 select c_135_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_135: entity work.adder_node
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
      sub_i => c_135_sub_sel,
      x_i => c_127,
      y_i => c_134,
      z_o => c_135_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_135_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 136 and associated fundamentals [[153], [302], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 137 and associated fundamentals [[153], [302], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 138 and associated fundamentals [[153], [302], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 139 and associated fundamentals [[153], [302], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 140 and associated fundamentals [[450], [910], [-90]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 141 and associated fundamentals [[450], [910], [-90]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 142 and associated fundamentals [[450], [910], [-90]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 143 and associated fundamentals [[450], [910], [-90]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_142 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 144 and associated fundamentals [[306], [910], [535]]
  c_144_122_0_False_resize <= c_122;
  c_144_122_0_False_shift <= shift_left(c_144_122_0_False_resize, 0);
  c_144_139_1_False_resize <= resize(c_139, 26);
  c_144_139_1_False_shift <= shift_left(c_144_139_1_False_resize, 1);
  c_144_143_0_False_resize <= c_143;
  c_144_143_0_False_shift <= shift_left(c_144_143_0_False_resize, 0);
  with config_select_17 select c_144_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_144_sel is
        when "00" => c_144 <= c_144_122_0_False_shift;
        when "01" => c_144 <= c_144_139_1_False_shift;
        when others => c_144 <= c_144_143_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 145 and associated fundamentals [[528], [344], [316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 146 and associated fundamentals [[528], [344], [316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_145 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 147 and associated fundamentals [[528], [344], [316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 148 and associated fundamentals [[528], [344], [316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 149 and associated fundamentals [[528], [344], [316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 150 and associated fundamentals [[528], [344], [316]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_149 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 151 and associated fundamentals [[528], [184], [205]]
  c_151_101_0_False_resize <= c_101;
  c_151_101_0_False_shift <= shift_left(c_151_101_0_False_resize, 0);
  c_151_126_1_False_resize <= c_126;
  c_151_126_1_False_shift <= shift_left(c_151_126_1_False_resize, 1);
  c_151_150_0_False_resize <= c_150;
  c_151_150_0_False_shift <= shift_left(c_151_150_0_False_resize, 0);
  with config_select_15 select c_151_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_151_sel is
        when "00" => c_151 <= c_151_101_0_False_shift;
        when "01" => c_151 <= c_151_126_1_False_shift;
        when others => c_151 <= c_151_150_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 152 and associated fundamentals [[270], [344], [628]]
  c_152_146_0_False_resize <= c_146;
  c_152_146_0_False_shift <= shift_left(c_152_146_0_False_resize, 0);
  c_152_53_0_False_resize <= c_53;
  c_152_53_0_False_shift <= shift_left(c_152_53_0_False_resize, 0);
  c_152_75_2_False_resize <= resize(c_75, 26);
  c_152_75_2_False_shift <= shift_left(c_152_75_2_False_resize, 2);
  with config_select_11 select c_152_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_152_sel is
        when "00" => c_152 <= c_152_146_0_False_shift;
        when "01" => c_152 <= c_152_53_0_False_shift;
        when others => c_152 <= c_152_75_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 153 and associated fundamentals [[1013], [128], [834]]
  c_153_58_0_False_resize <= c_58;
  c_153_58_0_False_shift <= shift_left(c_153_58_0_False_resize, 0);
  c_153_105_7_False_resize <= resize(c_105, 26);
  c_153_105_7_False_shift <= shift_left(c_153_105_7_False_resize, 7);
  c_153_118_1_False_resize <= c_118;
  c_153_118_1_False_shift <= shift_left(c_153_118_1_False_resize, 1);
  with config_select_13 select c_153_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_153_sel is
        when "00" => c_153 <= c_153_58_0_False_shift;
        when "01" => c_153 <= c_153_105_7_False_shift;
        when others => c_153 <= c_153_118_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 154 and associated fundamentals [[270], [941], [84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 155 and associated fundamentals [[270], [941], [84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 156 and associated fundamentals [[900], [941], [974]]
  c_156_135_0_False_resize <= c_135;
  c_156_135_0_False_shift <= shift_left(c_156_135_0_False_resize, 0);
  c_156_155_0_False_resize <= c_155;
  c_156_155_0_False_shift <= shift_left(c_156_155_0_False_resize, 0);
  c_156_143_1_False_resize <= c_143;
  c_156_143_1_False_shift <= shift_left(c_156_143_1_False_resize, 1);
  with config_select_17 select c_156_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_156_sel is
        when "00" => c_156 <= c_156_135_0_False_shift;
        when "01" => c_156 <= c_156_155_0_False_shift;
        when others => c_156 <= c_156_143_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 157 and associated fundamentals [[1013], [609], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 158 and associated fundamentals [[1013], [609], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 159 and associated fundamentals [[1013], [609], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_158 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 160 and associated fundamentals [[1013], [609], [137]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_159 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 161 and associated fundamentals [[744], [1002], [205]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 162 and associated fundamentals [[744], [1002], [205]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_161 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 163 and associated fundamentals [[744], [1003], [548]]
  c_163_160_2_False_resize <= c_160;
  c_163_160_2_False_shift <= shift_left(c_163_160_2_False_resize, 2);
  c_163_162_0_False_resize <= c_162;
  c_163_162_0_False_shift <= shift_left(c_163_162_0_False_resize, 0);
  c_163_135_0_False_resize <= c_135;
  c_163_135_0_False_shift <= shift_left(c_163_135_0_False_resize, 0);
  with config_select_17 select c_163_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_163_sel is
        when "00" => c_163 <= c_163_160_2_False_shift;
        when "01" => c_163 <= c_163_162_0_False_shift;
        when others => c_163 <= c_163_135_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 164 and associated fundamentals [[-308], [92], [645]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 165 and associated fundamentals [[-308], [92], [645]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_165 <= c_164 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 166 and associated fundamentals [[979], [321], [712]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_166 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 167 and associated fundamentals [[979], [321], [712]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_167 <= c_166 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 168 and associated fundamentals [[925], [321], [645]]
  c_168_165_0_False_resize <= c_165;
  c_168_165_0_False_shift <= shift_left(c_168_165_0_False_resize, 0);
  c_168_122_0_False_resize <= c_122;
  c_168_122_0_False_shift <= shift_left(c_168_122_0_False_resize, 0);
  c_168_167_0_False_resize <= c_167;
  c_168_167_0_False_shift <= shift_left(c_168_167_0_False_resize, 0);
  with config_select_17 select c_168_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_168_sel is
        when "00" => c_168 <= c_168_165_0_False_shift;
        when "01" => c_168 <= c_168_122_0_False_shift;
        when others => c_168 <= c_168_167_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 169 and associated fundamentals [[979], [609], [712]]
  c_169_158_0_False_resize <= c_158;
  c_169_158_0_False_shift <= shift_left(c_169_158_0_False_resize, 0);
  c_169_86_0_False_resize <= c_86;
  c_169_86_0_False_shift <= shift_left(c_169_86_0_False_resize, 0);
  with config_select_15 select c_169_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_169_sel is
        when "0" => c_169 <= c_169_158_0_False_shift;
        when others => c_169 <= c_169_86_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 170 and associated fundamentals [[-255], [-740], [-62]]
  c_170_29_0_False_resize <= c_29(25 downto 0);
  c_170_29_0_False_shift <= shift_left(c_170_29_0_False_resize, 0);
  c_170_42_1_False_resize <= resize(c_42, 26);
  c_170_42_1_False_shift <= shift_left(c_170_42_1_False_resize, 1);
  c_170_44_0_False_resize <= resize(c_44, 26);
  c_170_44_0_False_shift <= shift_left(c_170_44_0_False_resize, 0);
  with config_select_9 select c_170_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_170_sel is
        when "00" => c_170 <= c_170_29_0_False_shift;
        when "01" => c_170 <= c_170_42_1_False_shift;
        when others => c_170 <= c_170_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 171 and associated fundamentals [[555], [741], [84]]
  c_171_155_0_False_resize <= c_155;
  c_171_155_0_False_shift <= shift_left(c_171_155_0_False_resize, 0);
  c_171_135_0_False_resize <= c_135;
  c_171_135_0_False_shift <= shift_left(c_171_135_0_False_resize, 0);
  c_171_122_0_False_resize <= c_122;
  c_171_122_0_False_shift <= shift_left(c_171_122_0_False_resize, 0);
  with config_select_17 select c_171_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_171_sel is
        when "00" => c_171 <= c_171_155_0_False_shift;
        when "01" => c_171 <= c_171_135_0_False_shift;
        when others => c_171 <= c_171_122_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 172 and associated fundamentals [[306], [910], [535]]
  c_172_resize <= c_144;
  c_172 <= shift_left(c_172_resize, 0);
  -- node of type 'register' in stage 16 with id 173 and associated fundamentals [[528], [184], [205]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_173 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 174 and associated fundamentals [[528], [184], [205]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_174 <= c_173 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 175 and associated fundamentals [[528], [184], [205]]
  c_175_resize <= c_174;
  c_175 <= shift_left(c_175_resize, 0);
  -- node of type 'register' in stage 12 with id 176 and associated fundamentals [[270], [344], [628]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_152 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 177 and associated fundamentals [[270], [344], [628]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_177 <= c_176 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 178 and associated fundamentals [[270], [344], [628]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_178 <= c_177 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 179 and associated fundamentals [[270], [344], [628]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_179 <= c_178 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 180 and associated fundamentals [[270], [344], [628]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_180 <= c_179 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 181 and associated fundamentals [[270], [344], [628]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_181 <= c_180 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 182 and associated fundamentals [[270], [344], [628]]
  c_182_resize <= c_181;
  c_182 <= shift_left(c_182_resize, 0);
  -- node of type 'register' in stage 14 with id 183 and associated fundamentals [[1013], [128], [834]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_183 <= c_153 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 184 and associated fundamentals [[1013], [128], [834]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_184 <= c_183 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 185 and associated fundamentals [[1013], [128], [834]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_185 <= c_184 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 186 and associated fundamentals [[1013], [128], [834]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_186 <= c_185 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 187 and associated fundamentals [[1013], [128], [834]]
  c_187_resize <= c_186;
  c_187 <= shift_left(c_187_resize, 0);
  -- node of type 'output' in stage 17 with id 188 and associated fundamentals [[900], [941], [974]]
  c_188_resize <= c_156;
  c_188 <= shift_left(c_188_resize, 0);
  -- node of type 'output' in stage 17 with id 189 and associated fundamentals [[744], [1003], [548]]
  c_189_resize <= c_163;
  c_189 <= shift_left(c_189_resize, 0);
  -- node of type 'output' in stage 17 with id 190 and associated fundamentals [[925], [321], [645]]
  c_190_resize <= c_168;
  c_190 <= shift_left(c_190_resize, 0);
  -- node of type 'register' in stage 16 with id 191 and associated fundamentals [[979], [609], [712]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_191 <= c_169 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 192 and associated fundamentals [[979], [609], [712]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_192 <= c_191 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 193 and associated fundamentals [[979], [609], [712]]
  c_193_resize <= c_192;
  c_193 <= shift_left(c_193_resize, 0);
  -- node of type 'register' in stage 10 with id 194 and associated fundamentals [[-255], [-740], [-62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_194 <= c_170 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 195 and associated fundamentals [[-255], [-740], [-62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_195 <= c_194 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 196 and associated fundamentals [[-255], [-740], [-62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_196 <= c_195 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 197 and associated fundamentals [[-255], [-740], [-62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_197 <= c_196 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 198 and associated fundamentals [[-255], [-740], [-62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_198 <= c_197 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 199 and associated fundamentals [[-255], [-740], [-62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_199 <= c_198 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 200 and associated fundamentals [[-255], [-740], [-62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_200 <= c_199 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 201 and associated fundamentals [[-255], [-740], [-62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_201 <= c_200 & "";
    end if;
  end process;
  -- node of type 'output' in stage 17 with id 202 and associated fundamentals [[255], [740], [62]]
  c_202_resize <= c_201;
  c_202 <= -shift_left(c_202_resize, 0);
  -- node of type 'output' in stage 17 with id 203 and associated fundamentals [[555], [741], [84]]
  c_203_resize <= c_171;
  c_203 <= shift_left(c_203_resize, 0);
end architecture;

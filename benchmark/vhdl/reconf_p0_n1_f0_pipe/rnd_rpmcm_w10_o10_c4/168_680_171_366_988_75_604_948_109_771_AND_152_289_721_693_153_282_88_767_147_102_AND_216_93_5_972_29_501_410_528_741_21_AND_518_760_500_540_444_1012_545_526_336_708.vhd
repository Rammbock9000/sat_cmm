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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
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
  signal c_6: signed(22 downto 0);
  signal c_6_3_2_False_resize: signed(22 downto 0);
  signal c_6_3_2_False_shift: signed(22 downto 0);
  signal c_6_5_3_False_resize: signed(22 downto 0);
  signal c_6_5_3_False_shift: signed(22 downto 0);
  signal c_6_5_0_False_resize: signed(22 downto 0);
  signal c_6_5_0_False_shift: signed(22 downto 0);
  signal c_6_3_3_False_resize: signed(22 downto 0);
  signal c_6_3_3_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_5_0_False_resize: signed(25 downto 0);
  signal c_7_5_0_False_shift: signed(25 downto 0);
  signal c_7_3_6_False_resize: signed(25 downto 0);
  signal c_7_3_6_False_shift: signed(25 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(25 downto 0);
  signal c_8_i1_resize: signed(25 downto 0);
  signal c_8_i0_shift: signed(25 downto 0);
  signal c_8_i1_shift: signed(25 downto 0);
  signal c_8_arith: signed(25 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_9_3_4_False_resize: signed(22 downto 0);
  signal c_9_3_4_False_shift: signed(22 downto 0);
  signal c_9_5_1_False_resize: signed(22 downto 0);
  signal c_9_5_1_False_shift: signed(22 downto 0);
  signal c_9_3_1_False_resize: signed(22 downto 0);
  signal c_9_3_1_False_shift: signed(22 downto 0);
  signal c_9_3_0_False_resize: signed(22 downto 0);
  signal c_9_3_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_5_9_False_resize: signed(24 downto 0);
  signal c_10_5_9_False_shift: signed(24 downto 0);
  signal c_10_3_0_False_resize: signed(24 downto 0);
  signal c_10_3_0_False_shift: signed(24 downto 0);
  signal c_10_5_0_False_resize: signed(24 downto 0);
  signal c_10_5_0_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(19 downto 0);
  signal c_12_3_0_False_resize: signed(19 downto 0);
  signal c_12_3_0_False_shift: signed(19 downto 0);
  signal c_12_5_3_False_resize: signed(19 downto 0);
  signal c_12_5_3_False_shift: signed(19 downto 0);
  signal c_12_3_1_False_resize: signed(19 downto 0);
  signal c_12_3_1_False_shift: signed(19 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_14_0_False_resize: signed(24 downto 0);
  signal c_17_14_0_False_shift: signed(24 downto 0);
  signal c_17_16_6_False_resize: signed(24 downto 0);
  signal c_17_16_6_False_shift: signed(24 downto 0);
  signal c_17_8_1_False_resize: signed(24 downto 0);
  signal c_17_8_1_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_i0_resize: signed(24 downto 0);
  signal c_20_i1_resize: signed(24 downto 0);
  signal c_20_i0_shift: signed(24 downto 0);
  signal c_20_i1_shift: signed(24 downto 0);
  signal c_20_arith: signed(24 downto 0);
  signal c_20_oshift: signed(24 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_11_3_False_resize: signed(23 downto 0);
  signal c_21_11_3_False_shift: signed(23 downto 0);
  signal c_21_11_4_False_resize: signed(23 downto 0);
  signal c_21_11_4_False_shift: signed(23 downto 0);
  signal c_21_16_3_False_resize: signed(23 downto 0);
  signal c_21_16_3_False_shift: signed(23 downto 0);
  signal c_21_11_0_False_resize: signed(23 downto 0);
  signal c_21_11_0_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_22_14_1_False_resize: signed(19 downto 0);
  signal c_22_14_1_False_shift: signed(19 downto 0);
  signal c_22_11_0_False_resize: signed(19 downto 0);
  signal c_22_11_0_False_shift: signed(19 downto 0);
  signal c_22_16_0_False_resize: signed(19 downto 0);
  signal c_22_16_0_False_shift: signed(19 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(15 downto 0);
  signal c_25: signed(15 downto 0);
  signal c_26: signed(19 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_25_7_False_resize: signed(24 downto 0);
  signal c_30_25_7_False_shift: signed(24 downto 0);
  signal c_30_27_2_False_resize: signed(24 downto 0);
  signal c_30_27_2_False_shift: signed(24 downto 0);
  signal c_30_20_4_False_resize: signed(24 downto 0);
  signal c_30_20_4_False_shift: signed(24 downto 0);
  signal c_30_29_0_False_resize: signed(24 downto 0);
  signal c_30_29_0_False_shift: signed(24 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_23_0_False_resize: signed(23 downto 0);
  signal c_31_23_0_False_shift: signed(23 downto 0);
  signal c_31_25_0_False_resize: signed(23 downto 0);
  signal c_31_25_0_False_shift: signed(23 downto 0);
  signal c_31_20_3_False_resize: signed(23 downto 0);
  signal c_31_20_3_False_shift: signed(23 downto 0);
  signal c_31_27_0_False_resize: signed(23 downto 0);
  signal c_31_27_0_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_i0_resize: signed(23 downto 0);
  signal c_32_i1_resize: signed(23 downto 0);
  signal c_32_i0_shift: signed(23 downto 0);
  signal c_32_i1_shift: signed(23 downto 0);
  signal c_32_arith: signed(23 downto 0);
  signal c_32_oshift: signed(23 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(19 downto 0);
  signal c_34: signed(19 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_41_34_0_False_resize: signed(24 downto 0);
  signal c_41_34_0_False_shift: signed(24 downto 0);
  signal c_41_38_6_False_resize: signed(24 downto 0);
  signal c_41_38_6_False_shift: signed(24 downto 0);
  signal c_41_40_1_False_resize: signed(24 downto 0);
  signal c_41_40_1_False_shift: signed(24 downto 0);
  signal c_41_32_1_False_resize: signed(24 downto 0);
  signal c_41_32_1_False_shift: signed(24 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_43_0_False_resize: signed(25 downto 0);
  signal c_44_43_0_False_shift: signed(25 downto 0);
  signal c_44_40_0_False_resize: signed(25 downto 0);
  signal c_44_40_0_False_shift: signed(25 downto 0);
  signal c_44_32_0_False_resize: signed(25 downto 0);
  signal c_44_32_0_False_shift: signed(25 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(24 downto 0);
  signal c_46_20_1_False_resize: signed(24 downto 0);
  signal c_46_20_1_False_shift: signed(24 downto 0);
  signal c_46_36_0_False_resize: signed(24 downto 0);
  signal c_46_36_0_False_shift: signed(24 downto 0);
  signal c_46_36_5_False_resize: signed(24 downto 0);
  signal c_46_36_5_False_shift: signed(24 downto 0);
  signal c_46_20_4_False_resize: signed(24 downto 0);
  signal c_46_20_4_False_shift: signed(24 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_47_25_9_False_resize: signed(24 downto 0);
  signal c_47_25_9_False_shift: signed(24 downto 0);
  signal c_47_20_0_False_resize: signed(24 downto 0);
  signal c_47_20_0_False_shift: signed(24 downto 0);
  signal c_47_29_1_False_resize: signed(24 downto 0);
  signal c_47_29_1_False_shift: signed(24 downto 0);
  signal c_47_25_3_False_resize: signed(24 downto 0);
  signal c_47_25_3_False_shift: signed(24 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_i0_resize: signed(25 downto 0);
  signal c_48_i1_resize: signed(25 downto 0);
  signal c_48_i0_shift: signed(25 downto 0);
  signal c_48_i1_shift: signed(25 downto 0);
  signal c_48_arith: signed(25 downto 0);
  signal c_48_oshift: signed(25 downto 0);
  signal c_48_sub_sel: std_logic;
  signal c_49: signed(25 downto 0);
  signal c_49_20_2_False_resize: signed(25 downto 0);
  signal c_49_20_2_False_shift: signed(25 downto 0);
  signal c_49_29_6_False_resize: signed(25 downto 0);
  signal c_49_29_6_False_shift: signed(25 downto 0);
  signal c_49_29_3_False_resize: signed(25 downto 0);
  signal c_49_29_3_False_shift: signed(25 downto 0);
  signal c_49_29_0_False_resize: signed(25 downto 0);
  signal c_49_29_0_False_shift: signed(25 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_48_0_False_resize: signed(23 downto 0);
  signal c_50_48_0_False_shift: signed(23 downto 0);
  signal c_50_40_0_False_resize: signed(23 downto 0);
  signal c_50_40_0_False_shift: signed(23 downto 0);
  signal c_50_32_2_False_resize: signed(23 downto 0);
  signal c_50_32_2_False_shift: signed(23 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_i0_resize: signed(25 downto 0);
  signal c_53_i1_resize: signed(25 downto 0);
  signal c_53_i0_shift: signed(25 downto 0);
  signal c_53_i1_shift: signed(25 downto 0);
  signal c_53_arith: signed(25 downto 0);
  signal c_53_oshift: signed(25 downto 0);
  signal c_53_sub_sel: std_logic;
  signal c_54: signed(15 downto 0);
  signal c_55: signed(15 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_56_32_1_False_resize: signed(24 downto 0);
  signal c_56_32_1_False_shift: signed(24 downto 0);
  signal c_56_55_0_False_resize: signed(24 downto 0);
  signal c_56_55_0_False_shift: signed(24 downto 0);
  signal c_56_38_0_False_resize: signed(24 downto 0);
  signal c_56_38_0_False_shift: signed(24 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(19 downto 0);
  signal c_58: signed(19 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_58_0_False_resize: signed(25 downto 0);
  signal c_65_58_0_False_shift: signed(25 downto 0);
  signal c_65_60_2_False_resize: signed(25 downto 0);
  signal c_65_60_2_False_shift: signed(25 downto 0);
  signal c_65_45_2_False_resize: signed(25 downto 0);
  signal c_65_45_2_False_shift: signed(25 downto 0);
  signal c_65_64_0_False_resize: signed(25 downto 0);
  signal c_65_64_0_False_shift: signed(25 downto 0);
  signal c_65_sel: std_logic_vector(1 downto 0);
  signal c_66: signed(24 downto 0);
  signal c_67: signed(24 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_68_i0_resize: signed(25 downto 0);
  signal c_68_i1_resize: signed(25 downto 0);
  signal c_68_i0_shift: signed(25 downto 0);
  signal c_68_i1_shift: signed(25 downto 0);
  signal c_68_arith: signed(25 downto 0);
  signal c_68_oshift: signed(25 downto 0);
  signal c_68_sub_sel: std_logic;
  signal c_69: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_64_3_False_resize: signed(25 downto 0);
  signal c_71_64_3_False_shift: signed(25 downto 0);
  signal c_71_70_3_False_resize: signed(25 downto 0);
  signal c_71_70_3_False_shift: signed(25 downto 0);
  signal c_71_45_0_False_resize: signed(25 downto 0);
  signal c_71_45_0_False_shift: signed(25 downto 0);
  signal c_71_60_3_False_resize: signed(25 downto 0);
  signal c_71_60_3_False_shift: signed(25 downto 0);
  signal c_71_sel: std_logic_vector(1 downto 0);
  signal c_72: signed(22 downto 0);
  signal c_72_14_6_False_resize: signed(22 downto 0);
  signal c_72_14_6_False_shift: signed(22 downto 0);
  signal c_72_11_0_False_resize: signed(22 downto 0);
  signal c_72_11_0_False_shift: signed(22 downto 0);
  signal c_72_14_7_False_resize: signed(22 downto 0);
  signal c_72_14_7_False_shift: signed(22 downto 0);
  signal c_72_sel: std_logic_vector(1 downto 0);
  signal c_73: signed(22 downto 0);
  signal c_74: signed(22 downto 0);
  signal c_75: signed(22 downto 0);
  signal c_76: signed(22 downto 0);
  signal c_77: signed(22 downto 0);
  signal c_78: signed(22 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_79_i0_resize: signed(25 downto 0);
  signal c_79_i1_resize: signed(25 downto 0);
  signal c_79_i0_shift: signed(25 downto 0);
  signal c_79_i1_shift: signed(25 downto 0);
  signal c_79_arith: signed(25 downto 0);
  signal c_79_oshift: signed(25 downto 0);
  signal c_79_sub_sel: std_logic;
  signal c_80: signed(25 downto 0);
  signal c_80_48_0_False_resize: signed(25 downto 0);
  signal c_80_48_0_False_shift: signed(25 downto 0);
  signal c_80_32_0_False_resize: signed(25 downto 0);
  signal c_80_32_0_False_shift: signed(25 downto 0);
  signal c_80_62_3_False_resize: signed(25 downto 0);
  signal c_80_62_3_False_shift: signed(25 downto 0);
  signal c_80_62_0_False_resize: signed(25 downto 0);
  signal c_80_62_0_False_shift: signed(25 downto 0);
  signal c_80_sel: std_logic_vector(1 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_81_40_3_False_resize: signed(23 downto 0);
  signal c_81_40_3_False_shift: signed(23 downto 0);
  signal c_81_32_1_False_resize: signed(23 downto 0);
  signal c_81_32_1_False_shift: signed(23 downto 0);
  signal c_81_32_0_False_resize: signed(23 downto 0);
  signal c_81_32_0_False_shift: signed(23 downto 0);
  signal c_81_34_2_False_resize: signed(23 downto 0);
  signal c_81_34_2_False_shift: signed(23 downto 0);
  signal c_81_sel: std_logic_vector(1 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_82_i0_resize: signed(25 downto 0);
  signal c_82_i1_resize: signed(25 downto 0);
  signal c_82_i0_shift: signed(25 downto 0);
  signal c_82_i1_shift: signed(25 downto 0);
  signal c_82_arith: signed(25 downto 0);
  signal c_82_oshift: signed(25 downto 0);
  signal c_82_sub_sel: std_logic;
  signal c_83: signed(25 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_91: signed(25 downto 0);
  signal c_91_79_0_False_resize: signed(25 downto 0);
  signal c_91_79_0_False_shift: signed(25 downto 0);
  signal c_91_88_0_False_resize: signed(25 downto 0);
  signal c_91_88_0_False_shift: signed(25 downto 0);
  signal c_91_84_3_False_resize: signed(25 downto 0);
  signal c_91_84_3_False_shift: signed(25 downto 0);
  signal c_91_90_0_False_resize: signed(25 downto 0);
  signal c_91_90_0_False_shift: signed(25 downto 0);
  signal c_91_sel: std_logic_vector(1 downto 0);
  signal c_92: signed(24 downto 0);
  signal c_93: signed(24 downto 0);
  signal c_94: signed(24 downto 0);
  signal c_95: signed(24 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_98_88_0_False_resize: signed(25 downto 0);
  signal c_98_88_0_False_shift: signed(25 downto 0);
  signal c_98_97_0_False_resize: signed(25 downto 0);
  signal c_98_97_0_False_shift: signed(25 downto 0);
  signal c_98_79_0_False_resize: signed(25 downto 0);
  signal c_98_79_0_False_shift: signed(25 downto 0);
  signal c_98_95_1_False_resize: signed(25 downto 0);
  signal c_98_95_1_False_shift: signed(25 downto 0);
  signal c_98_sel: std_logic_vector(1 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_99_93_1_False_resize: signed(25 downto 0);
  signal c_99_93_1_False_shift: signed(25 downto 0);
  signal c_99_53_0_False_resize: signed(25 downto 0);
  signal c_99_53_0_False_shift: signed(25 downto 0);
  signal c_99_58_0_False_resize: signed(25 downto 0);
  signal c_99_58_0_False_shift: signed(25 downto 0);
  signal c_99_86_0_False_resize: signed(25 downto 0);
  signal c_99_86_0_False_shift: signed(25 downto 0);
  signal c_99_sel: std_logic_vector(1 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_101: signed(23 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_102_70_0_False_resize: signed(25 downto 0);
  signal c_102_70_0_False_shift: signed(25 downto 0);
  signal c_102_45_1_False_resize: signed(25 downto 0);
  signal c_102_45_1_False_shift: signed(25 downto 0);
  signal c_102_64_0_False_resize: signed(25 downto 0);
  signal c_102_64_0_False_shift: signed(25 downto 0);
  signal c_102_101_2_False_resize: signed(25 downto 0);
  signal c_102_101_2_False_shift: signed(25 downto 0);
  signal c_102_sel: std_logic_vector(1 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_103_90_0_False_resize: signed(25 downto 0);
  signal c_103_90_0_False_shift: signed(25 downto 0);
  signal c_103_79_2_False_resize: signed(25 downto 0);
  signal c_103_79_2_False_shift: signed(25 downto 0);
  signal c_103_84_2_False_resize: signed(25 downto 0);
  signal c_103_84_2_False_shift: signed(25 downto 0);
  signal c_103_68_0_False_resize: signed(25 downto 0);
  signal c_103_68_0_False_shift: signed(25 downto 0);
  signal c_103_sel: std_logic_vector(1 downto 0);
  signal c_104: signed(25 downto 0);
  signal c_105: signed(25 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_106_90_0_False_resize: signed(25 downto 0);
  signal c_106_90_0_False_shift: signed(25 downto 0);
  signal c_106_68_0_False_resize: signed(25 downto 0);
  signal c_106_68_0_False_shift: signed(25 downto 0);
  signal c_106_88_0_False_resize: signed(25 downto 0);
  signal c_106_88_0_False_shift: signed(25 downto 0);
  signal c_106_105_0_False_resize: signed(25 downto 0);
  signal c_106_105_0_False_shift: signed(25 downto 0);
  signal c_106_sel: std_logic_vector(1 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_108: signed(25 downto 0);
  signal c_109: signed(25 downto 0);
  signal c_109_108_1_False_resize: signed(25 downto 0);
  signal c_109_108_1_False_shift: signed(25 downto 0);
  signal c_109_97_1_False_resize: signed(25 downto 0);
  signal c_109_97_1_False_shift: signed(25 downto 0);
  signal c_109_105_3_False_resize: signed(25 downto 0);
  signal c_109_105_3_False_shift: signed(25 downto 0);
  signal c_109_68_0_False_resize: signed(25 downto 0);
  signal c_109_68_0_False_shift: signed(25 downto 0);
  signal c_109_sel: std_logic_vector(1 downto 0);
  signal c_110: signed(25 downto 0);
  signal c_111: signed(25 downto 0);
  signal c_112: signed(25 downto 0);
  signal c_112_108_0_False_resize: signed(25 downto 0);
  signal c_112_108_0_False_shift: signed(25 downto 0);
  signal c_112_84_0_False_resize: signed(25 downto 0);
  signal c_112_84_0_False_shift: signed(25 downto 0);
  signal c_112_68_1_False_resize: signed(25 downto 0);
  signal c_112_68_1_False_shift: signed(25 downto 0);
  signal c_112_111_2_False_resize: signed(25 downto 0);
  signal c_112_111_2_False_shift: signed(25 downto 0);
  signal c_112_sel: std_logic_vector(1 downto 0);
  signal c_113: signed(23 downto 0);
  signal c_114: signed(23 downto 0);
  signal c_115: signed(25 downto 0);
  signal c_115_90_0_False_resize: signed(25 downto 0);
  signal c_115_90_0_False_shift: signed(25 downto 0);
  signal c_115_79_0_False_resize: signed(25 downto 0);
  signal c_115_79_0_False_shift: signed(25 downto 0);
  signal c_115_114_3_False_resize: signed(25 downto 0);
  signal c_115_114_3_False_shift: signed(25 downto 0);
  signal c_115_114_0_False_resize: signed(25 downto 0);
  signal c_115_114_0_False_shift: signed(25 downto 0);
  signal c_115_sel: std_logic_vector(1 downto 0);
  signal c_116: signed(25 downto 0);
  signal c_116_93_0_False_resize: signed(25 downto 0);
  signal c_116_93_0_False_shift: signed(25 downto 0);
  signal c_116_45_1_False_resize: signed(25 downto 0);
  signal c_116_45_1_False_shift: signed(25 downto 0);
  signal c_116_53_0_False_resize: signed(25 downto 0);
  signal c_116_53_0_False_shift: signed(25 downto 0);
  signal c_116_sel: std_logic_vector(1 downto 0);
  signal c_117: signed(25 downto 0);
  signal c_117_resize: signed(25 downto 0);
  signal c_118: signed(25 downto 0);
  signal c_118_resize: signed(25 downto 0);
  signal c_119: signed(25 downto 0);
  signal c_120: signed(25 downto 0);
  signal c_121: signed(25 downto 0);
  signal c_121_resize: signed(25 downto 0);
  signal c_122: signed(25 downto 0);
  signal c_123: signed(25 downto 0);
  signal c_124: signed(25 downto 0);
  signal c_124_resize: signed(25 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_125_resize: signed(25 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_126_resize: signed(25 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_127_resize: signed(25 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_128_resize: signed(25 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_129_resize: signed(25 downto 0);
  signal c_130: signed(25 downto 0);
  signal c_131: signed(25 downto 0);
  signal c_132: signed(25 downto 0);
  signal c_132_resize: signed(25 downto 0);
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
  -- output node 0 with id 117
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_117);
    end if;
  end process;
  -- output node 1 with id 118
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_118);
    end if;
  end process;
  -- output node 2 with id 121
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_121);
    end if;
  end process;
  -- output node 3 with id 124
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_124);
    end if;
  end process;
  -- output node 4 with id 125
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_125);
    end if;
  end process;
  -- output node 5 with id 126
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_126);
    end if;
  end process;
  -- output node 6 with id 127
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_127);
    end if;
  end process;
  -- output node 7 with id 128
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_128);
    end if;
  end process;
  -- output node 8 with id 129
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_129);
    end if;
  end process;
  -- output node 9 with id 132
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_132);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [16], [1], [16]]
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_4_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[2], [2], [2], [1]]
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_1_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[5], [12], [5], [14]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 17,
      w_o => 20,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[20], [1], [8], [112]]
  c_6_3_2_False_resize <= resize(c_3, 23);
  c_6_3_2_False_shift <= shift_left(c_6_3_2_False_resize, 2);
  c_6_5_3_False_resize <= resize(c_5, 23);
  c_6_5_3_False_shift <= shift_left(c_6_5_3_False_resize, 3);
  c_6_5_0_False_resize <= resize(c_5, 23);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  c_6_3_3_False_resize <= resize(c_3, 23);
  c_6_3_3_False_shift <= shift_left(c_6_3_3_False_resize, 3);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_2_False_shift;
        when "01" => c_6 <= c_6_5_3_False_shift;
        when "10" => c_6 <= c_6_5_0_False_shift;
        when others => c_6 <= c_6_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[1], [768], [1], [1]]
  c_7_5_0_False_resize <= resize(c_5, 26);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_3_6_False_resize <= resize(c_3, 26);
  c_7_3_6_False_shift <= shift_left(c_7_3_6_False_resize, 6);
  with config_select_3 select c_7_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_5_0_False_shift;
        when others => c_7 <= c_7_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[21], [-767], [7], [111]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 23,
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
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[80], [12], [2], [28]]
  c_9_3_4_False_resize <= resize(c_3, 23);
  c_9_3_4_False_shift <= shift_left(c_9_3_4_False_resize, 4);
  c_9_5_1_False_resize <= resize(c_5, 23);
  c_9_5_1_False_shift <= shift_left(c_9_5_1_False_resize, 1);
  c_9_3_1_False_resize <= resize(c_3, 23);
  c_9_3_1_False_shift <= shift_left(c_9_3_1_False_resize, 1);
  c_9_3_0_False_resize <= resize(c_3, 23);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_3_4_False_shift;
        when "01" => c_9 <= c_9_5_1_False_shift;
        when "10" => c_9 <= c_9_3_1_False_shift;
        when others => c_9 <= c_9_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[5], [1], [1], [512]]
  c_10_5_9_False_resize <= resize(c_5, 25);
  c_10_5_9_False_shift <= shift_left(c_10_5_9_False_resize, 9);
  c_10_3_0_False_resize <= resize(c_3, 25);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_5_0_False_resize <= resize(c_5, 25);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_5_9_False_shift;
        when "01" => c_10 <= c_10_3_0_False_shift;
        when others => c_10 <= c_10_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[75], [11], [3], [540]]
  with config_select_4 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[10], [8], [10], [14]]
  c_12_3_0_False_resize <= c_3;
  c_12_3_0_False_shift <= shift_left(c_12_3_0_False_resize, 0);
  c_12_5_3_False_resize <= resize(c_5, 20);
  c_12_5_3_False_shift <= shift_left(c_12_5_3_False_resize, 3);
  c_12_3_1_False_resize <= c_3;
  c_12_3_1_False_shift <= shift_left(c_12_3_1_False_resize, 1);
  with config_select_3 select c_12_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_3_0_False_shift;
        when "01" => c_12 <= c_12_5_3_False_shift;
        when others => c_12 <= c_12_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[5], [12], [5], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[5], [12], [5], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[320], [1], [1], [222]]
  c_17_14_0_False_resize <= resize(c_14, 25);
  c_17_14_0_False_shift <= shift_left(c_17_14_0_False_resize, 0);
  c_17_16_6_False_resize <= resize(c_16, 25);
  c_17_16_6_False_shift <= shift_left(c_17_16_6_False_resize, 6);
  c_17_8_1_False_resize <= c_8(24 downto 0);
  c_17_8_1_False_shift <= shift_left(c_17_8_1_False_resize, 1);
  with config_select_5 select c_17_sel <= 
    "00" when "10",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_14_0_False_shift;
        when "01" => c_17 <= c_17_16_6_False_shift;
        when others => c_17 <= c_17_8_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[10], [8], [10], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[10], [8], [10], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 20 and associated fundamentals [[340], [17], [21], [250]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 25,
      w_o => 25,
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
      y_i => c_17,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 21 and associated fundamentals [[75], [176], [24], [112]]
  c_21_11_3_False_resize <= c_11(23 downto 0);
  c_21_11_3_False_shift <= shift_left(c_21_11_3_False_resize, 3);
  c_21_11_4_False_resize <= c_11(23 downto 0);
  c_21_11_4_False_shift <= shift_left(c_21_11_4_False_resize, 4);
  c_21_16_3_False_resize <= resize(c_16, 24);
  c_21_16_3_False_shift <= shift_left(c_21_16_3_False_resize, 3);
  c_21_11_0_False_resize <= c_11(23 downto 0);
  c_21_11_0_False_shift <= shift_left(c_21_11_0_False_resize, 0);
  with config_select_5 select c_21_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_11_3_False_shift;
        when "01" => c_21 <= c_21_11_4_False_shift;
        when "10" => c_21 <= c_21_16_3_False_shift;
        when others => c_21 <= c_21_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 22 and associated fundamentals [[2], [11], [3], [14]]
  c_22_14_1_False_resize <= resize(c_14, 20);
  c_22_14_1_False_shift <= shift_left(c_22_14_1_False_resize, 1);
  c_22_11_0_False_resize <= c_11(19 downto 0);
  c_22_11_0_False_shift <= shift_left(c_22_11_0_False_resize, 0);
  c_22_16_0_False_resize <= c_16;
  c_22_16_0_False_shift <= shift_left(c_22_16_0_False_resize, 0);
  with config_select_5 select c_22_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_14_1_False_shift;
        when "01" => c_22 <= c_22_11_0_False_shift;
        when others => c_22 <= c_22_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 23 and associated fundamentals [[302], [693], [93], [434]]
  with config_select_6 select c_23_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[5], [12], [5], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[5], [12], [5], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[75], [11], [3], [540]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[75], [11], [3], [540]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 30 and associated fundamentals [[128], [11], [336], [56]]
  c_30_25_7_False_resize <= resize(c_25, 25);
  c_30_25_7_False_shift <= shift_left(c_30_25_7_False_resize, 7);
  c_30_27_2_False_resize <= resize(c_27, 25);
  c_30_27_2_False_shift <= shift_left(c_30_27_2_False_resize, 2);
  c_30_20_4_False_resize <= c_20;
  c_30_20_4_False_shift <= shift_left(c_30_20_4_False_resize, 4);
  c_30_29_0_False_resize <= c_29(24 downto 0);
  c_30_29_0_False_shift <= shift_left(c_30_29_0_False_resize, 0);
  with config_select_7 select c_30_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_25_7_False_shift;
        when "01" => c_30 <= c_30_27_2_False_shift;
        when "10" => c_30 <= c_30_20_4_False_shift;
        when others => c_30 <= c_30_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 31 and associated fundamentals [[1], [136], [93], [14]]
  c_31_23_0_False_resize <= c_23(23 downto 0);
  c_31_23_0_False_shift <= shift_left(c_31_23_0_False_resize, 0);
  c_31_25_0_False_resize <= resize(c_25, 24);
  c_31_25_0_False_shift <= shift_left(c_31_25_0_False_resize, 0);
  c_31_20_3_False_resize <= c_20(23 downto 0);
  c_31_20_3_False_shift <= shift_left(c_31_20_3_False_resize, 3);
  c_31_27_0_False_resize <= resize(c_27, 24);
  c_31_27_0_False_shift <= shift_left(c_31_27_0_False_resize, 0);
  with config_select_7 select c_31_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_23_0_False_shift;
        when "01" => c_31 <= c_31_25_0_False_shift;
        when "10" => c_31 <= c_31_20_3_False_shift;
        when others => c_31 <= c_31_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 32 and associated fundamentals [[129], [147], [243], [42]]
  with config_select_8 select c_32_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
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
      sub_i => c_32_sub_sel,
      x_i => c_30,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[5], [12], [5], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[5], [12], [5], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[21], [-767], [7], [111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[21], [-767], [7], [111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[21], [-767], [7], [111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[21], [-767], [7], [111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[340], [17], [21], [250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[340], [17], [21], [250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 41 and associated fundamentals [[258], [34], [448], [14]]
  c_41_34_0_False_resize <= resize(c_34, 25);
  c_41_34_0_False_shift <= shift_left(c_41_34_0_False_resize, 0);
  c_41_38_6_False_resize <= c_38(24 downto 0);
  c_41_38_6_False_shift <= shift_left(c_41_38_6_False_resize, 6);
  c_41_40_1_False_resize <= c_40;
  c_41_40_1_False_shift <= shift_left(c_41_40_1_False_resize, 1);
  c_41_32_1_False_resize <= resize(c_32, 25);
  c_41_32_1_False_shift <= shift_left(c_41_32_1_False_resize, 1);
  with config_select_9 select c_41_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_34_0_False_shift;
        when "01" => c_41 <= c_41_38_6_False_shift;
        when "10" => c_41 <= c_41_40_1_False_shift;
        when others => c_41 <= c_41_32_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[75], [11], [3], [540]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[75], [11], [3], [540]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 44 and associated fundamentals [[75], [17], [243], [540]]
  c_44_43_0_False_resize <= c_43;
  c_44_43_0_False_shift <= shift_left(c_44_43_0_False_resize, 0);
  c_44_40_0_False_resize <= resize(c_40, 26);
  c_44_40_0_False_shift <= shift_left(c_44_40_0_False_resize, 0);
  c_44_32_0_False_resize <= resize(c_32, 26);
  c_44_32_0_False_shift <= shift_left(c_44_32_0_False_resize, 0);
  with config_select_9 select c_44_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_43_0_False_shift;
        when "01" => c_44 <= c_44_40_0_False_shift;
        when others => c_44 <= c_44_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 45 and associated fundamentals [[183], [51], [205], [-526]]
  with config_select_10 select c_45_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_45: entity work.adder_node
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
      sub_i => c_45_sub_sel,
      x_i => c_41,
      y_i => c_44,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 46 and associated fundamentals [[21], [272], [224], [500]]
  c_46_20_1_False_resize <= c_20;
  c_46_20_1_False_shift <= shift_left(c_46_20_1_False_resize, 1);
  c_46_36_0_False_resize <= c_36(24 downto 0);
  c_46_36_0_False_shift <= shift_left(c_46_36_0_False_resize, 0);
  c_46_36_5_False_resize <= c_36(24 downto 0);
  c_46_36_5_False_shift <= shift_left(c_46_36_5_False_resize, 5);
  c_46_20_4_False_resize <= c_20;
  c_46_20_4_False_shift <= shift_left(c_46_20_4_False_resize, 4);
  with config_select_7 select c_46_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_20_1_False_shift;
        when "01" => c_46 <= c_46_36_0_False_shift;
        when "10" => c_46 <= c_46_36_5_False_shift;
        when others => c_46 <= c_46_20_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 47 and associated fundamentals [[150], [17], [8], [512]]
  c_47_25_9_False_resize <= resize(c_25, 25);
  c_47_25_9_False_shift <= shift_left(c_47_25_9_False_resize, 9);
  c_47_20_0_False_resize <= c_20;
  c_47_20_0_False_shift <= shift_left(c_47_20_0_False_resize, 0);
  c_47_29_1_False_resize <= c_29(24 downto 0);
  c_47_29_1_False_shift <= shift_left(c_47_29_1_False_resize, 1);
  c_47_25_3_False_resize <= resize(c_25, 25);
  c_47_25_3_False_shift <= shift_left(c_47_25_3_False_resize, 3);
  with config_select_7 select c_47_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_25_9_False_shift;
        when "01" => c_47 <= c_47_20_0_False_shift;
        when "10" => c_47 <= c_47_29_1_False_shift;
        when others => c_47 <= c_47_25_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 48 and associated fundamentals [[171], [289], [216], [1012]]
  with config_select_8 select c_48_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_48: entity work.adder_node
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
      sub_i => c_48_sub_sel,
      x_i => c_46,
      y_i => c_47,
      z_o => c_48_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_48_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 49 and associated fundamentals [[600], [704], [84], [540]]
  c_49_20_2_False_resize <= resize(c_20, 26);
  c_49_20_2_False_shift <= shift_left(c_49_20_2_False_resize, 2);
  c_49_29_6_False_resize <= c_29;
  c_49_29_6_False_shift <= shift_left(c_49_29_6_False_resize, 6);
  c_49_29_3_False_resize <= c_29;
  c_49_29_3_False_shift <= shift_left(c_49_29_3_False_resize, 3);
  c_49_29_0_False_resize <= c_29;
  c_49_29_0_False_shift <= shift_left(c_49_29_0_False_resize, 0);
  with config_select_7 select c_49_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_20_2_False_shift;
        when "01" => c_49 <= c_49_29_6_False_shift;
        when "10" => c_49 <= c_49_29_3_False_shift;
        when others => c_49 <= c_49_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 50 and associated fundamentals [[171], [17], [216], [168]]
  c_50_48_0_False_resize <= c_48(23 downto 0);
  c_50_48_0_False_shift <= shift_left(c_50_48_0_False_resize, 0);
  c_50_40_0_False_resize <= c_40(23 downto 0);
  c_50_40_0_False_shift <= shift_left(c_50_40_0_False_resize, 0);
  c_50_32_2_False_resize <= c_32;
  c_50_32_2_False_shift <= shift_left(c_50_32_2_False_resize, 2);
  with config_select_9 select c_50_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_48_0_False_shift;
        when "01" => c_50 <= c_50_40_0_False_shift;
        when others => c_50 <= c_50_32_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[600], [704], [84], [540]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[600], [704], [84], [540]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 53 and associated fundamentals [[771], [721], [-132], [708]]
  with config_select_10 select c_53_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_53: entity work.adder_node
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
      sub_i => c_53_sub_sel,
      x_i => c_52,
      y_i => c_50,
      z_o => c_53_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_53_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 54 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 56 and associated fundamentals [[258], [294], [1], [111]]
  c_56_32_1_False_resize <= resize(c_32, 25);
  c_56_32_1_False_shift <= shift_left(c_56_32_1_False_resize, 1);
  c_56_55_0_False_resize <= resize(c_55, 25);
  c_56_55_0_False_shift <= shift_left(c_56_55_0_False_resize, 0);
  c_56_38_0_False_resize <= c_38(24 downto 0);
  c_56_38_0_False_shift <= shift_left(c_56_38_0_False_resize, 0);
  with config_select_9 select c_56_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "00" => c_56 <= c_56_32_1_False_shift;
        when "01" => c_56 <= c_56_55_0_False_shift;
        when others => c_56 <= c_56_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[5], [12], [5], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[5], [12], [5], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[21], [-767], [7], [111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 60 and associated fundamentals [[21], [-767], [7], [111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 61 and associated fundamentals [[302], [693], [93], [434]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 62 and associated fundamentals [[302], [693], [93], [434]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 63 and associated fundamentals [[302], [693], [93], [434]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 64 and associated fundamentals [[302], [693], [93], [434]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 65 and associated fundamentals [[732], [12], [28], [434]]
  c_65_58_0_False_resize <= resize(c_58, 26);
  c_65_58_0_False_shift <= shift_left(c_65_58_0_False_resize, 0);
  c_65_60_2_False_resize <= c_60;
  c_65_60_2_False_shift <= shift_left(c_65_60_2_False_resize, 2);
  c_65_45_2_False_resize <= c_45;
  c_65_45_2_False_shift <= shift_left(c_65_45_2_False_resize, 2);
  c_65_64_0_False_resize <= c_64;
  c_65_64_0_False_shift <= shift_left(c_65_64_0_False_resize, 0);
  with config_select_11 select c_65_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "00" => c_65 <= c_65_58_0_False_shift;
        when "01" => c_65 <= c_65_60_2_False_shift;
        when "10" => c_65 <= c_65_45_2_False_shift;
        when others => c_65 <= c_65_64_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 66 and associated fundamentals [[258], [294], [1], [111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 67 and associated fundamentals [[258], [294], [1], [111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 68 and associated fundamentals [[-474], [282], [29], [545]]
  with config_select_12 select c_68_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_68: entity work.adder_node
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
      sub_i => c_68_sub_sel,
      x_i => c_67,
      y_i => c_65,
      z_o => c_68_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_68_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 69 and associated fundamentals [[75], [11], [3], [540]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 70 and associated fundamentals [[75], [11], [3], [540]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 71 and associated fundamentals [[183], [88], [744], [888]]
  c_71_64_3_False_resize <= c_64;
  c_71_64_3_False_shift <= shift_left(c_71_64_3_False_resize, 3);
  c_71_70_3_False_resize <= c_70;
  c_71_70_3_False_shift <= shift_left(c_71_70_3_False_resize, 3);
  c_71_45_0_False_resize <= c_45;
  c_71_45_0_False_shift <= shift_left(c_71_45_0_False_resize, 0);
  c_71_60_3_False_resize <= c_60;
  c_71_60_3_False_shift <= shift_left(c_71_60_3_False_resize, 3);
  with config_select_11 select c_71_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_71_sel is
        when "00" => c_71 <= c_71_64_3_False_shift;
        when "01" => c_71 <= c_71_70_3_False_shift;
        when "10" => c_71 <= c_71_45_0_False_shift;
        when others => c_71 <= c_71_60_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 72 and associated fundamentals [[64], [64], [3], [128]]
  c_72_14_6_False_resize <= resize(c_14, 23);
  c_72_14_6_False_shift <= shift_left(c_72_14_6_False_resize, 6);
  c_72_11_0_False_resize <= c_11(22 downto 0);
  c_72_11_0_False_shift <= shift_left(c_72_11_0_False_resize, 0);
  c_72_14_7_False_resize <= resize(c_14, 23);
  c_72_14_7_False_shift <= shift_left(c_72_14_7_False_resize, 7);
  with config_select_5 select c_72_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "00" => c_72 <= c_72_14_6_False_shift;
        when "01" => c_72 <= c_72_11_0_False_shift;
        when others => c_72 <= c_72_14_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 73 and associated fundamentals [[64], [64], [3], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 74 and associated fundamentals [[64], [64], [3], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 75 and associated fundamentals [[64], [64], [3], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 76 and associated fundamentals [[64], [64], [3], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 77 and associated fundamentals [[64], [64], [3], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 78 and associated fundamentals [[64], [64], [3], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 79 and associated fundamentals [[247], [152], [741], [760]]
  with config_select_12 select c_79_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_79: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      x_i => c_71,
      y_i => c_78,
      z_o => c_79_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_79_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 80 and associated fundamentals [[129], [289], [744], [434]]
  c_80_48_0_False_resize <= c_48;
  c_80_48_0_False_shift <= shift_left(c_80_48_0_False_resize, 0);
  c_80_32_0_False_resize <= resize(c_32, 26);
  c_80_32_0_False_shift <= shift_left(c_80_32_0_False_resize, 0);
  c_80_62_3_False_resize <= c_62;
  c_80_62_3_False_shift <= shift_left(c_80_62_3_False_resize, 3);
  c_80_62_0_False_resize <= c_62;
  c_80_62_0_False_shift <= shift_left(c_80_62_0_False_resize, 0);
  with config_select_9 select c_80_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_80_sel is
        when "00" => c_80 <= c_80_48_0_False_shift;
        when "01" => c_80 <= c_80_32_0_False_shift;
        when "10" => c_80 <= c_80_62_3_False_shift;
        when others => c_80 <= c_80_62_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 81 and associated fundamentals [[20], [136], [243], [84]]
  c_81_40_3_False_resize <= c_40(23 downto 0);
  c_81_40_3_False_shift <= shift_left(c_81_40_3_False_resize, 3);
  c_81_32_1_False_resize <= c_32;
  c_81_32_1_False_shift <= shift_left(c_81_32_1_False_resize, 1);
  c_81_32_0_False_resize <= c_32;
  c_81_32_0_False_shift <= shift_left(c_81_32_0_False_resize, 0);
  c_81_34_2_False_resize <= resize(c_34, 24);
  c_81_34_2_False_shift <= shift_left(c_81_34_2_False_resize, 2);
  with config_select_9 select c_81_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "00" => c_81 <= c_81_40_3_False_shift;
        when "01" => c_81 <= c_81_32_1_False_shift;
        when "10" => c_81 <= c_81_32_0_False_shift;
        when others => c_81 <= c_81_34_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 82 and associated fundamentals [[109], [153], [501], [518]]
  with config_select_10 select c_82_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_82: entity work.adder_node
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
      sub_i => c_82_sub_sel,
      x_i => c_80,
      y_i => c_81,
      z_o => c_82_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_82_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 83 and associated fundamentals [[21], [-767], [7], [111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 84 and associated fundamentals [[21], [-767], [7], [111]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 85 and associated fundamentals [[171], [289], [216], [1012]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 86 and associated fundamentals [[171], [289], [216], [1012]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 87 and associated fundamentals [[171], [289], [216], [1012]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 88 and associated fundamentals [[171], [289], [216], [1012]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 89 and associated fundamentals [[109], [153], [501], [518]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 90 and associated fundamentals [[109], [153], [501], [518]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 91 and associated fundamentals [[168], [152], [216], [518]]
  c_91_79_0_False_resize <= c_79;
  c_91_79_0_False_shift <= shift_left(c_91_79_0_False_resize, 0);
  c_91_88_0_False_resize <= c_88;
  c_91_88_0_False_shift <= shift_left(c_91_88_0_False_resize, 0);
  c_91_84_3_False_resize <= c_84;
  c_91_84_3_False_shift <= shift_left(c_91_84_3_False_resize, 3);
  c_91_90_0_False_resize <= c_90;
  c_91_90_0_False_shift <= shift_left(c_91_90_0_False_resize, 0);
  with config_select_13 select c_91_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_91_sel is
        when "00" => c_91 <= c_91_79_0_False_shift;
        when "01" => c_91 <= c_91_88_0_False_shift;
        when "10" => c_91 <= c_91_84_3_False_shift;
        when others => c_91 <= c_91_90_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 92 and associated fundamentals [[340], [17], [21], [250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 93 and associated fundamentals [[340], [17], [21], [250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 94 and associated fundamentals [[340], [17], [21], [250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 95 and associated fundamentals [[340], [17], [21], [250]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 96 and associated fundamentals [[302], [693], [93], [434]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 97 and associated fundamentals [[302], [693], [93], [434]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 98 and associated fundamentals [[680], [289], [93], [760]]
  c_98_88_0_False_resize <= c_88;
  c_98_88_0_False_shift <= shift_left(c_98_88_0_False_resize, 0);
  c_98_97_0_False_resize <= c_97;
  c_98_97_0_False_shift <= shift_left(c_98_97_0_False_resize, 0);
  c_98_79_0_False_resize <= c_79;
  c_98_79_0_False_shift <= shift_left(c_98_79_0_False_resize, 0);
  c_98_95_1_False_resize <= resize(c_95, 26);
  c_98_95_1_False_shift <= shift_left(c_98_95_1_False_resize, 1);
  with config_select_13 select c_98_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_98_sel is
        when "00" => c_98 <= c_98_88_0_False_shift;
        when "01" => c_98 <= c_98_97_0_False_shift;
        when "10" => c_98 <= c_98_79_0_False_shift;
        when others => c_98 <= c_98_95_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 99 and associated fundamentals [[171], [721], [5], [500]]
  c_99_93_1_False_resize <= resize(c_93, 26);
  c_99_93_1_False_shift <= shift_left(c_99_93_1_False_resize, 1);
  c_99_53_0_False_resize <= c_53;
  c_99_53_0_False_shift <= shift_left(c_99_53_0_False_resize, 0);
  c_99_58_0_False_resize <= resize(c_58, 26);
  c_99_58_0_False_shift <= shift_left(c_99_58_0_False_resize, 0);
  c_99_86_0_False_resize <= c_86;
  c_99_86_0_False_shift <= shift_left(c_99_86_0_False_resize, 0);
  with config_select_11 select c_99_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_99_sel is
        when "00" => c_99 <= c_99_93_1_False_shift;
        when "01" => c_99 <= c_99_53_0_False_shift;
        when "10" => c_99 <= c_99_58_0_False_shift;
        when others => c_99 <= c_99_86_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 100 and associated fundamentals [[129], [147], [243], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 101 and associated fundamentals [[129], [147], [243], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 102 and associated fundamentals [[366], [693], [972], [540]]
  c_102_70_0_False_resize <= c_70;
  c_102_70_0_False_shift <= shift_left(c_102_70_0_False_resize, 0);
  c_102_45_1_False_resize <= c_45;
  c_102_45_1_False_shift <= shift_left(c_102_45_1_False_resize, 1);
  c_102_64_0_False_resize <= c_64;
  c_102_64_0_False_shift <= shift_left(c_102_64_0_False_resize, 0);
  c_102_101_2_False_resize <= resize(c_101, 26);
  c_102_101_2_False_shift <= shift_left(c_102_101_2_False_resize, 2);
  with config_select_11 select c_102_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_102_sel is
        when "00" => c_102 <= c_102_70_0_False_shift;
        when "01" => c_102 <= c_102_45_1_False_shift;
        when "10" => c_102 <= c_102_64_0_False_shift;
        when others => c_102 <= c_102_101_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 103 and associated fundamentals [[988], [153], [29], [444]]
  c_103_90_0_False_resize <= c_90;
  c_103_90_0_False_shift <= shift_left(c_103_90_0_False_resize, 0);
  c_103_79_2_False_resize <= c_79;
  c_103_79_2_False_shift <= shift_left(c_103_79_2_False_resize, 2);
  c_103_84_2_False_resize <= c_84;
  c_103_84_2_False_shift <= shift_left(c_103_84_2_False_resize, 2);
  c_103_68_0_False_resize <= c_68;
  c_103_68_0_False_shift <= shift_left(c_103_68_0_False_resize, 0);
  with config_select_13 select c_103_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_103_sel is
        when "00" => c_103 <= c_103_90_0_False_shift;
        when "01" => c_103 <= c_103_79_2_False_shift;
        when "10" => c_103 <= c_103_84_2_False_shift;
        when others => c_103 <= c_103_68_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 104 and associated fundamentals [[75], [11], [3], [540]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 105 and associated fundamentals [[75], [11], [3], [540]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 106 and associated fundamentals [[75], [282], [501], [1012]]
  c_106_90_0_False_resize <= c_90;
  c_106_90_0_False_shift <= shift_left(c_106_90_0_False_resize, 0);
  c_106_68_0_False_resize <= c_68;
  c_106_68_0_False_shift <= shift_left(c_106_68_0_False_resize, 0);
  c_106_88_0_False_resize <= c_88;
  c_106_88_0_False_shift <= shift_left(c_106_88_0_False_resize, 0);
  c_106_105_0_False_resize <= c_105;
  c_106_105_0_False_shift <= shift_left(c_106_105_0_False_resize, 0);
  with config_select_13 select c_106_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_106_sel is
        when "00" => c_106 <= c_106_90_0_False_shift;
        when "01" => c_106 <= c_106_68_0_False_shift;
        when "10" => c_106 <= c_106_88_0_False_shift;
        when others => c_106 <= c_106_105_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 107 and associated fundamentals [[183], [51], [205], [-526]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 108 and associated fundamentals [[183], [51], [205], [-526]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 109 and associated fundamentals [[604], [88], [410], [545]]
  c_109_108_1_False_resize <= c_108;
  c_109_108_1_False_shift <= shift_left(c_109_108_1_False_resize, 1);
  c_109_97_1_False_resize <= c_97;
  c_109_97_1_False_shift <= shift_left(c_109_97_1_False_resize, 1);
  c_109_105_3_False_resize <= c_105;
  c_109_105_3_False_shift <= shift_left(c_109_105_3_False_resize, 3);
  c_109_68_0_False_resize <= c_68;
  c_109_68_0_False_shift <= shift_left(c_109_68_0_False_resize, 0);
  with config_select_13 select c_109_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_109_sel is
        when "00" => c_109 <= c_109_108_1_False_shift;
        when "01" => c_109 <= c_109_97_1_False_shift;
        when "10" => c_109 <= c_109_105_3_False_shift;
        when others => c_109 <= c_109_68_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 110 and associated fundamentals [[771], [721], [-132], [708]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 111 and associated fundamentals [[771], [721], [-132], [708]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 112 and associated fundamentals [[-948], [-767], [-528], [-526]]
  c_112_108_0_False_resize <= c_108;
  c_112_108_0_False_shift <= shift_left(c_112_108_0_False_resize, 0);
  c_112_84_0_False_resize <= c_84;
  c_112_84_0_False_shift <= shift_left(c_112_84_0_False_resize, 0);
  c_112_68_1_False_resize <= c_68;
  c_112_68_1_False_shift <= shift_left(c_112_68_1_False_resize, 1);
  c_112_111_2_False_resize <= c_111;
  c_112_111_2_False_shift <= shift_left(c_112_111_2_False_resize, 2);
  with config_select_13 select c_112_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_112_sel is
        when "00" => c_112 <= c_112_108_0_False_shift;
        when "01" => c_112 <= c_112_84_0_False_shift;
        when "10" => c_112 <= c_112_68_1_False_shift;
        when others => c_112 <= c_112_111_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 113 and associated fundamentals [[129], [147], [243], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 114 and associated fundamentals [[129], [147], [243], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 115 and associated fundamentals [[109], [147], [741], [336]]
  c_115_90_0_False_resize <= c_90;
  c_115_90_0_False_shift <= shift_left(c_115_90_0_False_resize, 0);
  c_115_79_0_False_resize <= c_79;
  c_115_79_0_False_shift <= shift_left(c_115_79_0_False_resize, 0);
  c_115_114_3_False_resize <= resize(c_114, 26);
  c_115_114_3_False_shift <= shift_left(c_115_114_3_False_resize, 3);
  c_115_114_0_False_resize <= resize(c_114, 26);
  c_115_114_0_False_shift <= shift_left(c_115_114_0_False_resize, 0);
  with config_select_13 select c_115_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_115_sel is
        when "00" => c_115 <= c_115_90_0_False_shift;
        when "01" => c_115 <= c_115_79_0_False_shift;
        when "10" => c_115 <= c_115_114_3_False_shift;
        when others => c_115 <= c_115_114_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 116 and associated fundamentals [[771], [102], [21], [708]]
  c_116_93_0_False_resize <= resize(c_93, 26);
  c_116_93_0_False_shift <= shift_left(c_116_93_0_False_resize, 0);
  c_116_45_1_False_resize <= c_45;
  c_116_45_1_False_shift <= shift_left(c_116_45_1_False_resize, 1);
  c_116_53_0_False_resize <= c_53;
  c_116_53_0_False_shift <= shift_left(c_116_53_0_False_resize, 0);
  with config_select_11 select c_116_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_116_sel is
        when "00" => c_116 <= c_116_93_0_False_shift;
        when "01" => c_116 <= c_116_45_1_False_shift;
        when others => c_116 <= c_116_53_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 117 and associated fundamentals [[168], [152], [216], [518]]
  c_117_resize <= c_91;
  c_117 <= shift_left(c_117_resize, 0);
  -- node of type 'output' in stage 13 with id 118 and associated fundamentals [[680], [289], [93], [760]]
  c_118_resize <= c_98;
  c_118 <= shift_left(c_118_resize, 0);
  -- node of type 'register' in stage 12 with id 119 and associated fundamentals [[171], [721], [5], [500]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 120 and associated fundamentals [[171], [721], [5], [500]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 121 and associated fundamentals [[171], [721], [5], [500]]
  c_121_resize <= c_120;
  c_121 <= shift_left(c_121_resize, 0);
  -- node of type 'register' in stage 12 with id 122 and associated fundamentals [[366], [693], [972], [540]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 123 and associated fundamentals [[366], [693], [972], [540]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 124 and associated fundamentals [[366], [693], [972], [540]]
  c_124_resize <= c_123;
  c_124 <= shift_left(c_124_resize, 0);
  -- node of type 'output' in stage 13 with id 125 and associated fundamentals [[988], [153], [29], [444]]
  c_125_resize <= c_103;
  c_125 <= shift_left(c_125_resize, 0);
  -- node of type 'output' in stage 13 with id 126 and associated fundamentals [[75], [282], [501], [1012]]
  c_126_resize <= c_106;
  c_126 <= shift_left(c_126_resize, 0);
  -- node of type 'output' in stage 13 with id 127 and associated fundamentals [[604], [88], [410], [545]]
  c_127_resize <= c_109;
  c_127 <= shift_left(c_127_resize, 0);
  -- node of type 'output' in stage 13 with id 128 and associated fundamentals [[948], [767], [528], [526]]
  c_128_resize <= c_112;
  c_128 <= -shift_left(c_128_resize, 0);
  -- node of type 'output' in stage 13 with id 129 and associated fundamentals [[109], [147], [741], [336]]
  c_129_resize <= c_115;
  c_129 <= shift_left(c_129_resize, 0);
  -- node of type 'register' in stage 12 with id 130 and associated fundamentals [[771], [102], [21], [708]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 131 and associated fundamentals [[771], [102], [21], [708]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 132 and associated fundamentals [[771], [102], [21], [708]]
  c_132_resize <= c_131;
  c_132 <= shift_left(c_132_resize, 0);
end architecture;

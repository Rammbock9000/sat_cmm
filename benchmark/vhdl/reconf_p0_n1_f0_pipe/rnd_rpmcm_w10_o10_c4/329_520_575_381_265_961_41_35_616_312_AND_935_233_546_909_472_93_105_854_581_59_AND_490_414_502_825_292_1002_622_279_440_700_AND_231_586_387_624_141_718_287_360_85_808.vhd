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
  signal config_select_20: std_logic_vector(1 downto 0);
  signal config_select_21: std_logic_vector(1 downto 0);
  signal config_select_22: std_logic_vector(1 downto 0);
  signal config_select_23: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_0_1_False_resize: signed(18 downto 0);
  signal c_2_0_1_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_0_2_False_resize: signed(18 downto 0);
  signal c_2_0_2_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
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
  signal c_6_5_2_False_resize: signed(21 downto 0);
  signal c_6_5_2_False_shift: signed(21 downto 0);
  signal c_6_5_6_False_resize: signed(21 downto 0);
  signal c_6_5_6_False_shift: signed(21 downto 0);
  signal c_6_5_0_False_resize: signed(21 downto 0);
  signal c_6_5_0_False_shift: signed(21 downto 0);
  signal c_6_3_0_False_resize: signed(21 downto 0);
  signal c_6_3_0_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_3_2_False_resize: signed(21 downto 0);
  signal c_7_3_2_False_shift: signed(21 downto 0);
  signal c_7_3_0_False_resize: signed(21 downto 0);
  signal c_7_3_0_False_shift: signed(21 downto 0);
  signal c_7_3_3_False_resize: signed(21 downto 0);
  signal c_7_3_3_False_shift: signed(21 downto 0);
  signal c_7_5_0_False_resize: signed(21 downto 0);
  signal c_7_5_0_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_12_0_False_resize: signed(23 downto 0);
  signal c_13_12_0_False_shift: signed(23 downto 0);
  signal c_13_8_0_False_resize: signed(23 downto 0);
  signal c_13_8_0_False_shift: signed(23 downto 0);
  signal c_13_10_8_False_resize: signed(23 downto 0);
  signal c_13_10_8_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_8_0_False_resize: signed(22 downto 0);
  signal c_14_8_0_False_shift: signed(22 downto 0);
  signal c_14_10_4_False_resize: signed(22 downto 0);
  signal c_14_10_4_False_shift: signed(22 downto 0);
  signal c_14_12_2_False_resize: signed(22 downto 0);
  signal c_14_12_2_False_shift: signed(22 downto 0);
  signal c_14_12_0_False_resize: signed(22 downto 0);
  signal c_14_12_0_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(24 downto 0);
  signal c_16_8_6_False_resize: signed(24 downto 0);
  signal c_16_8_6_False_shift: signed(24 downto 0);
  signal c_16_10_3_False_resize: signed(24 downto 0);
  signal c_16_10_3_False_shift: signed(24 downto 0);
  signal c_16_12_7_False_resize: signed(24 downto 0);
  signal c_16_12_7_False_shift: signed(24 downto 0);
  signal c_16_8_0_False_resize: signed(24 downto 0);
  signal c_16_8_0_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_12_0_False_resize: signed(23 downto 0);
  signal c_17_12_0_False_shift: signed(23 downto 0);
  signal c_17_8_2_False_resize: signed(23 downto 0);
  signal c_17_8_2_False_shift: signed(23 downto 0);
  signal c_17_12_2_False_resize: signed(23 downto 0);
  signal c_17_12_2_False_shift: signed(23 downto 0);
  signal c_17_10_0_False_resize: signed(23 downto 0);
  signal c_17_10_0_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(15 downto 0);
  signal c_20: signed(15 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_23_20_5_False_resize: signed(21 downto 0);
  signal c_23_20_5_False_shift: signed(21 downto 0);
  signal c_23_20_4_False_resize: signed(21 downto 0);
  signal c_23_20_4_False_shift: signed(21 downto 0);
  signal c_23_22_0_False_resize: signed(21 downto 0);
  signal c_23_22_0_False_shift: signed(21 downto 0);
  signal c_23_18_2_False_resize: signed(21 downto 0);
  signal c_23_18_2_False_shift: signed(21 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(19 downto 0);
  signal c_25: signed(19 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_18_1_False_resize: signed(25 downto 0);
  signal c_26_18_1_False_shift: signed(25 downto 0);
  signal c_26_15_0_False_resize: signed(25 downto 0);
  signal c_26_15_0_False_shift: signed(25 downto 0);
  signal c_26_25_0_False_resize: signed(25 downto 0);
  signal c_26_25_0_False_shift: signed(25 downto 0);
  signal c_26_22_3_False_resize: signed(25 downto 0);
  signal c_26_22_3_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(25 downto 0);
  signal c_28_25_2_False_resize: signed(25 downto 0);
  signal c_28_25_2_False_shift: signed(25 downto 0);
  signal c_28_15_0_False_resize: signed(25 downto 0);
  signal c_28_15_0_False_shift: signed(25 downto 0);
  signal c_28_20_0_False_resize: signed(25 downto 0);
  signal c_28_20_0_False_shift: signed(25 downto 0);
  signal c_28_22_4_False_resize: signed(25 downto 0);
  signal c_28_22_4_False_shift: signed(25 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(15 downto 0);
  signal c_30: signed(15 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_35_34_0_False_resize: signed(24 downto 0);
  signal c_35_34_0_False_shift: signed(24 downto 0);
  signal c_35_30_6_False_resize: signed(24 downto 0);
  signal c_35_30_6_False_shift: signed(24 downto 0);
  signal c_35_32_0_False_resize: signed(24 downto 0);
  signal c_35_32_0_False_shift: signed(24 downto 0);
  signal c_35_27_0_False_resize: signed(24 downto 0);
  signal c_35_27_0_False_shift: signed(24 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_i0_resize: signed(25 downto 0);
  signal c_38_i1_resize: signed(25 downto 0);
  signal c_38_i0_shift: signed(25 downto 0);
  signal c_38_i1_shift: signed(25 downto 0);
  signal c_38_arith: signed(25 downto 0);
  signal c_38_oshift: signed(25 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(24 downto 0);
  signal c_39_22_0_False_resize: signed(24 downto 0);
  signal c_39_22_0_False_shift: signed(24 downto 0);
  signal c_39_22_7_False_resize: signed(24 downto 0);
  signal c_39_22_7_False_shift: signed(24 downto 0);
  signal c_39_18_5_False_resize: signed(24 downto 0);
  signal c_39_18_5_False_shift: signed(24 downto 0);
  signal c_39_20_1_False_resize: signed(24 downto 0);
  signal c_39_20_1_False_shift: signed(24 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(19 downto 0);
  signal c_41: signed(19 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_30_1_False_resize: signed(25 downto 0);
  signal c_42_30_1_False_shift: signed(25 downto 0);
  signal c_42_27_2_False_resize: signed(25 downto 0);
  signal c_42_27_2_False_shift: signed(25 downto 0);
  signal c_42_41_0_False_resize: signed(25 downto 0);
  signal c_42_41_0_False_shift: signed(25 downto 0);
  signal c_42_32_0_False_resize: signed(25 downto 0);
  signal c_42_32_0_False_shift: signed(25 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(19 downto 0);
  signal c_47: signed(19 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_50_38_0_False_resize: signed(24 downto 0);
  signal c_50_38_0_False_shift: signed(24 downto 0);
  signal c_50_49_1_False_resize: signed(24 downto 0);
  signal c_50_49_1_False_shift: signed(24 downto 0);
  signal c_50_47_3_False_resize: signed(24 downto 0);
  signal c_50_47_3_False_shift: signed(24 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(15 downto 0);
  signal c_52: signed(15 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_47_3_False_resize: signed(25 downto 0);
  signal c_55_47_3_False_shift: signed(25 downto 0);
  signal c_55_45_0_False_resize: signed(25 downto 0);
  signal c_55_45_0_False_shift: signed(25 downto 0);
  signal c_55_54_0_False_resize: signed(25 downto 0);
  signal c_55_54_0_False_shift: signed(25 downto 0);
  signal c_55_52_7_False_resize: signed(25 downto 0);
  signal c_55_52_7_False_shift: signed(25 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_i0_resize: signed(25 downto 0);
  signal c_56_i1_resize: signed(25 downto 0);
  signal c_56_i0_shift: signed(25 downto 0);
  signal c_56_i1_shift: signed(25 downto 0);
  signal c_56_arith: signed(25 downto 0);
  signal c_56_oshift: signed(25 downto 0);
  signal c_56_sub_sel: std_logic;
  signal c_57: signed(15 downto 0);
  signal c_58: signed(15 downto 0);
  signal c_59: signed(24 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_61: signed(24 downto 0);
  signal c_62: signed(24 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_58_6_False_resize: signed(25 downto 0);
  signal c_65_58_6_False_shift: signed(25 downto 0);
  signal c_65_56_0_False_resize: signed(25 downto 0);
  signal c_65_56_0_False_shift: signed(25 downto 0);
  signal c_65_62_0_False_resize: signed(25 downto 0);
  signal c_65_62_0_False_shift: signed(25 downto 0);
  signal c_65_64_1_False_resize: signed(25 downto 0);
  signal c_65_64_1_False_shift: signed(25 downto 0);
  signal c_65_sel: std_logic_vector(1 downto 0);
  signal c_66: signed(24 downto 0);
  signal c_66_45_0_False_resize: signed(24 downto 0);
  signal c_66_45_0_False_shift: signed(24 downto 0);
  signal c_66_54_0_False_resize: signed(24 downto 0);
  signal c_66_54_0_False_shift: signed(24 downto 0);
  signal c_66_60_1_False_resize: signed(24 downto 0);
  signal c_66_60_1_False_shift: signed(24 downto 0);
  signal c_66_sel: std_logic_vector(1 downto 0);
  signal c_67: signed(24 downto 0);
  signal c_68: signed(24 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_69_i0_resize: signed(25 downto 0);
  signal c_69_i1_resize: signed(25 downto 0);
  signal c_69_i0_shift: signed(25 downto 0);
  signal c_69_i1_shift: signed(25 downto 0);
  signal c_69_arith: signed(25 downto 0);
  signal c_69_oshift: signed(25 downto 0);
  signal c_69_sub_sel: std_logic;
  signal c_70: signed(25 downto 0);
  signal c_70_52_2_False_resize: signed(25 downto 0);
  signal c_70_52_2_False_shift: signed(25 downto 0);
  signal c_70_52_1_False_resize: signed(25 downto 0);
  signal c_70_52_1_False_shift: signed(25 downto 0);
  signal c_70_47_0_False_resize: signed(25 downto 0);
  signal c_70_47_0_False_shift: signed(25 downto 0);
  signal c_70_45_0_False_resize: signed(25 downto 0);
  signal c_70_45_0_False_shift: signed(25 downto 0);
  signal c_70_sel: std_logic_vector(1 downto 0);
  signal c_71: signed(19 downto 0);
  signal c_72: signed(19 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_73_58_4_False_resize: signed(24 downto 0);
  signal c_73_58_4_False_shift: signed(24 downto 0);
  signal c_73_56_0_False_resize: signed(24 downto 0);
  signal c_73_56_0_False_shift: signed(24 downto 0);
  signal c_73_58_9_False_resize: signed(24 downto 0);
  signal c_73_58_9_False_shift: signed(24 downto 0);
  signal c_73_72_3_False_resize: signed(24 downto 0);
  signal c_73_72_3_False_shift: signed(24 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_76: signed(24 downto 0);
  signal c_76_i0_resize: signed(24 downto 0);
  signal c_76_i1_resize: signed(24 downto 0);
  signal c_76_i0_shift: signed(24 downto 0);
  signal c_76_i1_shift: signed(24 downto 0);
  signal c_76_arith: signed(24 downto 0);
  signal c_76_oshift: signed(24 downto 0);
  signal c_76_sub_sel: std_logic;
  signal c_77: signed(22 downto 0);
  signal c_78: signed(22 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_81: signed(25 downto 0);
  signal c_81_80_4_False_resize: signed(25 downto 0);
  signal c_81_80_4_False_shift: signed(25 downto 0);
  signal c_81_58_7_False_resize: signed(25 downto 0);
  signal c_81_58_7_False_shift: signed(25 downto 0);
  signal c_81_56_0_False_resize: signed(25 downto 0);
  signal c_81_56_0_False_shift: signed(25 downto 0);
  signal c_81_78_1_False_resize: signed(25 downto 0);
  signal c_81_78_1_False_shift: signed(25 downto 0);
  signal c_81_sel: std_logic_vector(1 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_86_85_0_False_resize: signed(25 downto 0);
  signal c_86_85_0_False_shift: signed(25 downto 0);
  signal c_86_69_2_False_resize: signed(25 downto 0);
  signal c_86_69_2_False_shift: signed(25 downto 0);
  signal c_86_83_0_False_resize: signed(25 downto 0);
  signal c_86_83_0_False_shift: signed(25 downto 0);
  signal c_86_76_0_False_resize: signed(25 downto 0);
  signal c_86_76_0_False_shift: signed(25 downto 0);
  signal c_86_sel: std_logic_vector(1 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_89_i0_resize: signed(25 downto 0);
  signal c_89_i1_resize: signed(25 downto 0);
  signal c_89_i0_shift: signed(25 downto 0);
  signal c_89_i1_shift: signed(25 downto 0);
  signal c_89_arith: signed(25 downto 0);
  signal c_89_oshift: signed(25 downto 0);
  signal c_89_sub_sel: std_logic;
  signal c_90: signed(26 downto 0);
  signal c_90_15_0_False_resize: signed(26 downto 0);
  signal c_90_15_0_False_shift: signed(26 downto 0);
  signal c_90_25_0_False_resize: signed(26 downto 0);
  signal c_90_25_0_False_shift: signed(26 downto 0);
  signal c_90_25_1_False_resize: signed(26 downto 0);
  signal c_90_25_1_False_shift: signed(26 downto 0);
  signal c_90_15_2_False_resize: signed(26 downto 0);
  signal c_90_15_2_False_shift: signed(26 downto 0);
  signal c_90_sel: std_logic_vector(1 downto 0);
  signal c_91: signed(15 downto 0);
  signal c_92: signed(15 downto 0);
  signal c_93: signed(15 downto 0);
  signal c_94: signed(15 downto 0);
  signal c_95: signed(24 downto 0);
  signal c_96: signed(24 downto 0);
  signal c_97: signed(24 downto 0);
  signal c_98: signed(24 downto 0);
  signal c_99: signed(24 downto 0);
  signal c_100: signed(24 downto 0);
  signal c_101: signed(24 downto 0);
  signal c_102: signed(24 downto 0);
  signal c_103: signed(24 downto 0);
  signal c_104: signed(24 downto 0);
  signal c_105: signed(24 downto 0);
  signal c_106: signed(24 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_107_106_1_False_resize: signed(25 downto 0);
  signal c_107_106_1_False_shift: signed(25 downto 0);
  signal c_107_104_0_False_resize: signed(25 downto 0);
  signal c_107_104_0_False_shift: signed(25 downto 0);
  signal c_107_89_0_False_resize: signed(25 downto 0);
  signal c_107_89_0_False_shift: signed(25 downto 0);
  signal c_107_94_5_False_resize: signed(25 downto 0);
  signal c_107_94_5_False_shift: signed(25 downto 0);
  signal c_107_sel: std_logic_vector(1 downto 0);
  signal c_108: signed(26 downto 0);
  signal c_109: signed(26 downto 0);
  signal c_110: signed(26 downto 0);
  signal c_111: signed(26 downto 0);
  signal c_112: signed(26 downto 0);
  signal c_113: signed(26 downto 0);
  signal c_114: signed(26 downto 0);
  signal c_115: signed(26 downto 0);
  signal c_116: signed(26 downto 0);
  signal c_117: signed(26 downto 0);
  signal c_118: signed(24 downto 0);
  signal c_118_i0_resize: signed(24 downto 0);
  signal c_118_i1_resize: signed(24 downto 0);
  signal c_118_i0_shift: signed(24 downto 0);
  signal c_118_i1_shift: signed(24 downto 0);
  signal c_118_arith: signed(24 downto 0);
  signal c_118_oshift: signed(24 downto 0);
  signal c_118_sub_sel: std_logic;
  signal c_119: signed(22 downto 0);
  signal c_120: signed(22 downto 0);
  signal c_121: signed(22 downto 0);
  signal c_122: signed(22 downto 0);
  signal c_123: signed(22 downto 0);
  signal c_124: signed(22 downto 0);
  signal c_125: signed(25 downto 0);
  signal c_126: signed(25 downto 0);
  signal c_127: signed(25 downto 0);
  signal c_128: signed(25 downto 0);
  signal c_129: signed(25 downto 0);
  signal c_130: signed(25 downto 0);
  signal c_131: signed(25 downto 0);
  signal c_132: signed(25 downto 0);
  signal c_133: signed(25 downto 0);
  signal c_134: signed(25 downto 0);
  signal c_135: signed(25 downto 0);
  signal c_135_132_0_False_resize: signed(25 downto 0);
  signal c_135_132_0_False_shift: signed(25 downto 0);
  signal c_135_134_0_False_resize: signed(25 downto 0);
  signal c_135_134_0_False_shift: signed(25 downto 0);
  signal c_135_118_1_False_resize: signed(25 downto 0);
  signal c_135_118_1_False_shift: signed(25 downto 0);
  signal c_135_124_1_False_resize: signed(25 downto 0);
  signal c_135_124_1_False_shift: signed(25 downto 0);
  signal c_135_sel: std_logic_vector(1 downto 0);
  signal c_136: signed(19 downto 0);
  signal c_137: signed(19 downto 0);
  signal c_138: signed(26 downto 0);
  signal c_138_102_1_False_resize: signed(26 downto 0);
  signal c_138_102_1_False_shift: signed(26 downto 0);
  signal c_138_85_0_False_resize: signed(26 downto 0);
  signal c_138_85_0_False_shift: signed(26 downto 0);
  signal c_138_137_9_False_resize: signed(26 downto 0);
  signal c_138_137_9_False_shift: signed(26 downto 0);
  signal c_138_76_1_False_resize: signed(26 downto 0);
  signal c_138_76_1_False_shift: signed(26 downto 0);
  signal c_138_sel: std_logic_vector(1 downto 0);
  signal c_139: signed(26 downto 0);
  signal c_140: signed(26 downto 0);
  signal c_141: signed(26 downto 0);
  signal c_142: signed(26 downto 0);
  signal c_143: signed(25 downto 0);
  signal c_143_i0_resize: signed(25 downto 0);
  signal c_143_i1_resize: signed(25 downto 0);
  signal c_143_i0_shift: signed(25 downto 0);
  signal c_143_i1_shift: signed(25 downto 0);
  signal c_143_arith: signed(25 downto 0);
  signal c_143_oshift: signed(25 downto 0);
  signal c_144: signed(25 downto 0);
  signal c_144_83_0_False_resize: signed(25 downto 0);
  signal c_144_83_0_False_shift: signed(25 downto 0);
  signal c_144_76_0_False_resize: signed(25 downto 0);
  signal c_144_76_0_False_shift: signed(25 downto 0);
  signal c_144_69_0_False_resize: signed(25 downto 0);
  signal c_144_69_0_False_shift: signed(25 downto 0);
  signal c_144_sel: std_logic_vector(1 downto 0);
  signal c_145: signed(25 downto 0);
  signal c_146: signed(25 downto 0);
  signal c_147: signed(25 downto 0);
  signal c_148: signed(25 downto 0);
  signal c_149: signed(25 downto 0);
  signal c_150: signed(25 downto 0);
  signal c_151: signed(25 downto 0);
  signal c_151_89_0_False_resize: signed(25 downto 0);
  signal c_151_89_0_False_shift: signed(25 downto 0);
  signal c_151_148_3_False_resize: signed(25 downto 0);
  signal c_151_148_3_False_shift: signed(25 downto 0);
  signal c_151_89_1_False_resize: signed(25 downto 0);
  signal c_151_89_1_False_shift: signed(25 downto 0);
  signal c_151_150_0_False_resize: signed(25 downto 0);
  signal c_151_150_0_False_shift: signed(25 downto 0);
  signal c_151_sel: std_logic_vector(1 downto 0);
  signal c_152: signed(25 downto 0);
  signal c_152_89_0_False_resize: signed(25 downto 0);
  signal c_152_89_0_False_shift: signed(25 downto 0);
  signal c_152_148_1_False_resize: signed(25 downto 0);
  signal c_152_148_1_False_shift: signed(25 downto 0);
  signal c_152_130_1_False_resize: signed(25 downto 0);
  signal c_152_130_1_False_shift: signed(25 downto 0);
  signal c_152_148_0_False_resize: signed(25 downto 0);
  signal c_152_148_0_False_shift: signed(25 downto 0);
  signal c_152_sel: std_logic_vector(1 downto 0);
  signal c_153: signed(24 downto 0);
  signal c_154: signed(24 downto 0);
  signal c_155: signed(24 downto 0);
  signal c_156: signed(24 downto 0);
  signal c_157: signed(24 downto 0);
  signal c_158: signed(24 downto 0);
  signal c_159: signed(24 downto 0);
  signal c_160: signed(24 downto 0);
  signal c_161: signed(25 downto 0);
  signal c_162: signed(25 downto 0);
  signal c_163: signed(25 downto 0);
  signal c_163_162_0_False_resize: signed(25 downto 0);
  signal c_163_162_0_False_shift: signed(25 downto 0);
  signal c_163_160_2_False_resize: signed(25 downto 0);
  signal c_163_160_2_False_shift: signed(25 downto 0);
  signal c_163_160_0_False_resize: signed(25 downto 0);
  signal c_163_160_0_False_shift: signed(25 downto 0);
  signal c_163_143_0_False_resize: signed(25 downto 0);
  signal c_163_143_0_False_shift: signed(25 downto 0);
  signal c_163_sel: std_logic_vector(1 downto 0);
  signal c_164: signed(24 downto 0);
  signal c_164_100_0_False_resize: signed(24 downto 0);
  signal c_164_100_0_False_shift: signed(24 downto 0);
  signal c_164_56_2_False_resize: signed(24 downto 0);
  signal c_164_56_2_False_shift: signed(24 downto 0);
  signal c_164_78_3_False_resize: signed(24 downto 0);
  signal c_164_78_3_False_shift: signed(24 downto 0);
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
  signal c_174: signed(25 downto 0);
  signal c_175: signed(24 downto 0);
  signal c_176: signed(24 downto 0);
  signal c_177: signed(25 downto 0);
  signal c_177_170_1_False_resize: signed(25 downto 0);
  signal c_177_170_1_False_shift: signed(25 downto 0);
  signal c_177_176_0_False_resize: signed(25 downto 0);
  signal c_177_176_0_False_shift: signed(25 downto 0);
  signal c_177_143_0_False_resize: signed(25 downto 0);
  signal c_177_143_0_False_shift: signed(25 downto 0);
  signal c_177_174_0_False_resize: signed(25 downto 0);
  signal c_177_174_0_False_shift: signed(25 downto 0);
  signal c_177_sel: std_logic_vector(1 downto 0);
  signal c_178: signed(25 downto 0);
  signal c_179: signed(25 downto 0);
  signal c_180: signed(25 downto 0);
  signal c_181: signed(25 downto 0);
  signal c_182: signed(25 downto 0);
  signal c_183: signed(25 downto 0);
  signal c_184: signed(24 downto 0);
  signal c_185: signed(24 downto 0);
  signal c_186: signed(24 downto 0);
  signal c_187: signed(24 downto 0);
  signal c_188: signed(25 downto 0);
  signal c_188_183_0_False_resize: signed(25 downto 0);
  signal c_188_183_0_False_shift: signed(25 downto 0);
  signal c_188_187_0_False_resize: signed(25 downto 0);
  signal c_188_187_0_False_shift: signed(25 downto 0);
  signal c_188_143_0_False_resize: signed(25 downto 0);
  signal c_188_143_0_False_shift: signed(25 downto 0);
  signal c_188_sel: std_logic_vector(1 downto 0);
  signal c_189: signed(25 downto 0);
  signal c_190: signed(25 downto 0);
  signal c_191: signed(25 downto 0);
  signal c_191_118_0_False_resize: signed(25 downto 0);
  signal c_191_118_0_False_shift: signed(25 downto 0);
  signal c_191_132_0_False_resize: signed(25 downto 0);
  signal c_191_132_0_False_shift: signed(25 downto 0);
  signal c_191_190_0_False_resize: signed(25 downto 0);
  signal c_191_190_0_False_shift: signed(25 downto 0);
  signal c_191_sel: std_logic_vector(1 downto 0);
  signal c_192: signed(25 downto 0);
  signal c_193: signed(25 downto 0);
  signal c_194: signed(25 downto 0);
  signal c_194_170_3_False_resize: signed(25 downto 0);
  signal c_194_170_3_False_shift: signed(25 downto 0);
  signal c_194_143_0_False_resize: signed(25 downto 0);
  signal c_194_143_0_False_shift: signed(25 downto 0);
  signal c_194_193_2_False_resize: signed(25 downto 0);
  signal c_194_193_2_False_shift: signed(25 downto 0);
  signal c_194_183_0_False_resize: signed(25 downto 0);
  signal c_194_183_0_False_shift: signed(25 downto 0);
  signal c_194_sel: std_logic_vector(1 downto 0);
  signal c_195: signed(25 downto 0);
  signal c_195_158_2_False_resize: signed(25 downto 0);
  signal c_195_158_2_False_shift: signed(25 downto 0);
  signal c_195_185_3_False_resize: signed(25 downto 0);
  signal c_195_185_3_False_shift: signed(25 downto 0);
  signal c_195_118_3_False_resize: signed(25 downto 0);
  signal c_195_118_3_False_shift: signed(25 downto 0);
  signal c_195_124_0_False_resize: signed(25 downto 0);
  signal c_195_124_0_False_shift: signed(25 downto 0);
  signal c_195_sel: std_logic_vector(1 downto 0);
  signal c_196: signed(25 downto 0);
  signal c_197: signed(25 downto 0);
  signal c_198: signed(25 downto 0);
  signal c_199: signed(25 downto 0);
  signal c_200: signed(25 downto 0);
  signal c_201: signed(25 downto 0);
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
  signal c_211: signed(25 downto 0);
  signal c_212: signed(25 downto 0);
  signal c_212_resize: signed(25 downto 0);
  signal c_213: signed(25 downto 0);
  signal c_213_resize: signed(25 downto 0);
  signal c_214: signed(24 downto 0);
  signal c_215: signed(24 downto 0);
  signal c_216: signed(24 downto 0);
  signal c_217: signed(24 downto 0);
  signal c_218: signed(24 downto 0);
  signal c_219: signed(24 downto 0);
  signal c_220: signed(24 downto 0);
  signal c_221: signed(24 downto 0);
  signal c_222: signed(24 downto 0);
  signal c_222_resize: signed(24 downto 0);
  signal c_223: signed(25 downto 0);
  signal c_223_resize: signed(25 downto 0);
  signal c_224: signed(25 downto 0);
  signal c_224_resize: signed(25 downto 0);
  signal c_225: signed(25 downto 0);
  signal c_226: signed(25 downto 0);
  signal c_227: signed(25 downto 0);
  signal c_227_resize: signed(25 downto 0);
  signal c_228: signed(25 downto 0);
  signal c_228_resize: signed(25 downto 0);
  signal c_229: signed(25 downto 0);
  signal c_230: signed(25 downto 0);
  signal c_231: signed(25 downto 0);
  signal c_231_resize: signed(25 downto 0);
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
  -- output node 0 with id 202
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_202);
    end if;
  end process;
  -- output node 1 with id 207
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_207);
    end if;
  end process;
  -- output node 2 with id 212
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_212);
    end if;
  end process;
  -- output node 3 with id 213
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_213);
    end if;
  end process;
  -- output node 4 with id 222
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_222);
    end if;
  end process;
  -- output node 5 with id 223
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_223);
    end if;
  end process;
  -- output node 6 with id 224
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_224);
    end if;
  end process;
  -- output node 7 with id 227
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_227);
    end if;
  end process;
  -- output node 8 with id 228
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_228);
    end if;
  end process;
  -- output node 9 with id 231
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_231);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [16], [1], [1]]
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when "11",
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[2], [1], [4], [8]]
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 19);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_2_False_resize <= resize(c_0, 19);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_1_False_shift;
        when "10" => c_2 <= c_2_0_3_False_shift;
        when others => c_2 <= c_2_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [15], [5], [9]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[64], [1], [5], [4]]
  c_6_5_2_False_resize <= resize(c_5, 22);
  c_6_5_2_False_shift <= shift_left(c_6_5_2_False_resize, 2);
  c_6_5_6_False_resize <= resize(c_5, 22);
  c_6_5_6_False_shift <= shift_left(c_6_5_6_False_resize, 6);
  c_6_5_0_False_resize <= resize(c_5, 22);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  c_6_3_0_False_resize <= resize(c_3, 22);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_5_2_False_shift;
        when "01" => c_6 <= c_6_5_6_False_shift;
        when "10" => c_6 <= c_6_5_0_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[3], [60], [40], [1]]
  c_7_3_2_False_resize <= resize(c_3, 22);
  c_7_3_2_False_shift <= shift_left(c_7_3_2_False_resize, 2);
  c_7_3_0_False_resize <= resize(c_3, 22);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_3_3_False_resize <= resize(c_3, 22);
  c_7_3_3_False_shift <= shift_left(c_7_3_3_False_resize, 3);
  c_7_5_0_False_resize <= resize(c_5, 22);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_3_2_False_shift;
        when "01" => c_7 <= c_7_3_0_False_shift;
        when "10" => c_7 <= c_7_3_3_False_shift;
        when others => c_7 <= c_7_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[67], [-59], [-35], [3]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[3], [15], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[3], [15], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[3], [-59], [256], [3]]
  c_13_12_0_False_resize <= resize(c_12, 24);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_8_0_False_resize <= resize(c_8, 24);
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  c_13_10_8_False_resize <= resize(c_10, 24);
  c_13_10_8_False_shift <= shift_left(c_13_10_8_False_resize, 8);
  with config_select_5 select c_13_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_12_0_False_shift;
        when "01" => c_13 <= c_13_8_0_False_shift;
        when others => c_13 <= c_13_10_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[67], [16], [5], [36]]
  c_14_8_0_False_resize <= c_8;
  c_14_8_0_False_shift <= shift_left(c_14_8_0_False_resize, 0);
  c_14_10_4_False_resize <= resize(c_10, 23);
  c_14_10_4_False_shift <= shift_left(c_14_10_4_False_resize, 4);
  c_14_12_2_False_resize <= resize(c_12, 23);
  c_14_12_2_False_shift <= shift_left(c_14_12_2_False_resize, 2);
  c_14_12_0_False_resize <= resize(c_12, 23);
  c_14_12_0_False_shift <= shift_left(c_14_12_0_False_resize, 0);
  with config_select_5 select c_14_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_8_0_False_shift;
        when "01" => c_14 <= c_14_10_4_False_shift;
        when "10" => c_14 <= c_14_12_2_False_shift;
        when others => c_14 <= c_14_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[-265], [-123], [276], [-141]]
  with config_select_6 select c_15_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 25,
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
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[384], [8], [-35], [192]]
  c_16_8_6_False_resize <= resize(c_8, 25);
  c_16_8_6_False_shift <= shift_left(c_16_8_6_False_resize, 6);
  c_16_10_3_False_resize <= resize(c_10, 25);
  c_16_10_3_False_shift <= shift_left(c_16_10_3_False_resize, 3);
  c_16_12_7_False_resize <= resize(c_12, 25);
  c_16_12_7_False_shift <= shift_left(c_16_12_7_False_resize, 7);
  c_16_8_0_False_resize <= resize(c_8, 25);
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_8_6_False_shift;
        when "01" => c_16 <= c_16_10_3_False_shift;
        when "10" => c_16 <= c_16_12_7_False_shift;
        when others => c_16 <= c_16_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[3], [1], [-140], [36]]
  c_17_12_0_False_resize <= resize(c_12, 24);
  c_17_12_0_False_shift <= shift_left(c_17_12_0_False_resize, 0);
  c_17_8_2_False_resize <= resize(c_8, 24);
  c_17_8_2_False_shift <= shift_left(c_17_8_2_False_resize, 2);
  c_17_12_2_False_resize <= resize(c_12, 24);
  c_17_12_2_False_shift <= shift_left(c_17_12_2_False_resize, 2);
  c_17_10_0_False_resize <= resize(c_10, 24);
  c_17_10_0_False_shift <= shift_left(c_17_10_0_False_resize, 0);
  with config_select_5 select c_17_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_12_0_False_shift;
        when "01" => c_17 <= c_17_8_2_False_shift;
        when "10" => c_17 <= c_17_12_2_False_shift;
        when others => c_17 <= c_17_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 18 and associated fundamentals [[381], [9], [-175], [156]]
  with config_select_6 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[32], [36], [16], [3]]
  c_23_20_5_False_resize <= resize(c_20, 22);
  c_23_20_5_False_shift <= shift_left(c_23_20_5_False_resize, 5);
  c_23_20_4_False_resize <= resize(c_20, 22);
  c_23_20_4_False_shift <= shift_left(c_23_20_4_False_resize, 4);
  c_23_22_0_False_resize <= c_22(21 downto 0);
  c_23_22_0_False_shift <= shift_left(c_23_22_0_False_resize, 0);
  c_23_18_2_False_resize <= c_18(21 downto 0);
  c_23_18_2_False_shift <= shift_left(c_23_18_2_False_resize, 2);
  with config_select_7 select c_23_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_20_5_False_shift;
        when "01" => c_23 <= c_23_20_4_False_shift;
        when "10" => c_23 <= c_23_22_0_False_shift;
        when others => c_23 <= c_23_18_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[3], [15], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[3], [15], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[536], [-123], [5], [312]]
  c_26_18_1_False_resize <= resize(c_18, 26);
  c_26_18_1_False_shift <= shift_left(c_26_18_1_False_resize, 1);
  c_26_15_0_False_resize <= resize(c_15, 26);
  c_26_15_0_False_shift <= shift_left(c_26_15_0_False_resize, 0);
  c_26_25_0_False_resize <= resize(c_25, 26);
  c_26_25_0_False_shift <= shift_left(c_26_25_0_False_resize, 0);
  c_26_22_3_False_resize <= resize(c_22, 26);
  c_26_22_3_False_shift <= shift_left(c_26_22_3_False_resize, 3);
  with config_select_7 select c_26_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_18_1_False_shift;
        when "01" => c_26 <= c_26_15_0_False_shift;
        when "10" => c_26 <= c_26_25_0_False_shift;
        when others => c_26 <= c_26_22_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 27 and associated fundamentals [[-24], [699], [251], [360]]
  with config_select_8 select c_27_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_27_sub_sel,
      x_i => c_23,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 28 and associated fundamentals [[-265], [-944], [20], [1]]
  c_28_25_2_False_resize <= resize(c_25, 26);
  c_28_25_2_False_shift <= shift_left(c_28_25_2_False_resize, 2);
  c_28_15_0_False_resize <= resize(c_15, 26);
  c_28_15_0_False_shift <= shift_left(c_28_15_0_False_resize, 0);
  c_28_20_0_False_resize <= resize(c_20, 26);
  c_28_20_0_False_shift <= shift_left(c_28_20_0_False_resize, 0);
  c_28_22_4_False_resize <= resize(c_22, 26);
  c_28_22_4_False_shift <= shift_left(c_28_22_4_False_resize, 4);
  with config_select_7 select c_28_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_25_2_False_shift;
        when "01" => c_28 <= c_28_15_0_False_shift;
        when "10" => c_28 <= c_28_20_0_False_shift;
        when others => c_28 <= c_28_22_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 30 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 35 and associated fundamentals [[64], [9], [-35], [360]]
  c_35_34_0_False_resize <= c_34;
  c_35_34_0_False_shift <= shift_left(c_35_34_0_False_resize, 0);
  c_35_30_6_False_resize <= resize(c_30, 25);
  c_35_30_6_False_shift <= shift_left(c_35_30_6_False_resize, 6);
  c_35_32_0_False_resize <= resize(c_32, 25);
  c_35_32_0_False_shift <= shift_left(c_35_32_0_False_resize, 0);
  c_35_27_0_False_resize <= c_27(24 downto 0);
  c_35_27_0_False_shift <= shift_left(c_35_27_0_False_resize, 0);
  with config_select_9 select c_35_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_34_0_False_shift;
        when "01" => c_35 <= c_35_30_6_False_shift;
        when "10" => c_35 <= c_35_32_0_False_shift;
        when others => c_35 <= c_35_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[-265], [-944], [20], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 37 and associated fundamentals [[-265], [-944], [20], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 38 and associated fundamentals [[-329], [-935], [55], [-359]]
  with config_select_10 select c_38_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_38: entity work.adder_node
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
      sub_i => c_38_sub_sel,
      x_i => c_37,
      y_i => c_35,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 39 and associated fundamentals [[67], [288], [2], [384]]
  c_39_22_0_False_resize <= resize(c_22, 25);
  c_39_22_0_False_shift <= shift_left(c_39_22_0_False_resize, 0);
  c_39_22_7_False_resize <= resize(c_22, 25);
  c_39_22_7_False_shift <= shift_left(c_39_22_7_False_resize, 7);
  c_39_18_5_False_resize <= c_18;
  c_39_18_5_False_shift <= shift_left(c_39_18_5_False_resize, 5);
  c_39_20_1_False_resize <= resize(c_20, 25);
  c_39_20_1_False_shift <= shift_left(c_39_20_1_False_resize, 1);
  with config_select_7 select c_39_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_22_0_False_shift;
        when "01" => c_39 <= c_39_22_7_False_shift;
        when "10" => c_39 <= c_39_18_5_False_shift;
        when others => c_39 <= c_39_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[3], [15], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[3], [15], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 42 and associated fundamentals [[2], [15], [1004], [3]]
  c_42_30_1_False_resize <= resize(c_30, 26);
  c_42_30_1_False_shift <= shift_left(c_42_30_1_False_resize, 1);
  c_42_27_2_False_resize <= c_27;
  c_42_27_2_False_shift <= shift_left(c_42_27_2_False_resize, 2);
  c_42_41_0_False_resize <= resize(c_41, 26);
  c_42_41_0_False_shift <= shift_left(c_42_41_0_False_resize, 0);
  c_42_32_0_False_resize <= resize(c_32, 26);
  c_42_32_0_False_shift <= shift_left(c_42_32_0_False_resize, 0);
  with config_select_9 select c_42_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_30_1_False_shift;
        when "01" => c_42 <= c_42_27_2_False_shift;
        when "10" => c_42 <= c_42_41_0_False_shift;
        when others => c_42 <= c_42_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[67], [288], [2], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[67], [288], [2], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 45 and associated fundamentals [[65], [273], [-1002], [387]]
  with config_select_10 select c_45_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
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
      x_i => c_44,
      y_i => c_42,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[3], [15], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[3], [15], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 49 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 50 and associated fundamentals [[24], [-118], [55], [-359]]
  c_50_38_0_False_resize <= c_38(24 downto 0);
  c_50_38_0_False_shift <= shift_left(c_50_38_0_False_resize, 0);
  c_50_49_1_False_resize <= resize(c_49, 25);
  c_50_49_1_False_shift <= shift_left(c_50_49_1_False_resize, 1);
  c_50_47_3_False_resize <= resize(c_47, 25);
  c_50_47_3_False_shift <= shift_left(c_50_47_3_False_resize, 3);
  with config_select_11 select c_50_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_38_0_False_shift;
        when "01" => c_50 <= c_50_49_1_False_shift;
        when others => c_50 <= c_50_47_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 53 and associated fundamentals [[-24], [699], [251], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 54 and associated fundamentals [[-24], [699], [251], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 55 and associated fundamentals [[65], [699], [128], [72]]
  c_55_47_3_False_resize <= resize(c_47, 26);
  c_55_47_3_False_shift <= shift_left(c_55_47_3_False_resize, 3);
  c_55_45_0_False_resize <= c_45;
  c_55_45_0_False_shift <= shift_left(c_55_45_0_False_resize, 0);
  c_55_54_0_False_resize <= c_54;
  c_55_54_0_False_shift <= shift_left(c_55_54_0_False_resize, 0);
  c_55_52_7_False_resize <= resize(c_52, 26);
  c_55_52_7_False_shift <= shift_left(c_55_52_7_False_resize, 7);
  with config_select_11 select c_55_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "00" => c_55 <= c_55_47_3_False_shift;
        when "01" => c_55 <= c_55_45_0_False_shift;
        when "10" => c_55 <= c_55_54_0_False_shift;
        when others => c_55 <= c_55_52_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 56 and associated fundamentals [[-41], [581], [-73], [-287]]
  with config_select_12 select c_56_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_56: entity work.adder_node
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
      sub_i => c_56_sub_sel,
      x_i => c_50,
      y_i => c_55,
      z_o => c_56_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_56_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 57 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 58 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 60 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 61 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 62 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 63 and associated fundamentals [[65], [273], [-1002], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 64 and associated fundamentals [[65], [273], [-1002], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 65 and associated fundamentals [[130], [581], [64], [156]]
  c_65_58_6_False_resize <= resize(c_58, 26);
  c_65_58_6_False_shift <= shift_left(c_65_58_6_False_resize, 6);
  c_65_56_0_False_resize <= c_56;
  c_65_56_0_False_shift <= shift_left(c_65_56_0_False_resize, 0);
  c_65_62_0_False_resize <= resize(c_62, 26);
  c_65_62_0_False_shift <= shift_left(c_65_62_0_False_resize, 0);
  c_65_64_1_False_resize <= c_64;
  c_65_64_1_False_shift <= shift_left(c_65_64_1_False_resize, 1);
  with config_select_13 select c_65_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "00" => c_65 <= c_65_58_6_False_shift;
        when "01" => c_65 <= c_65_56_0_False_shift;
        when "10" => c_65 <= c_65_62_0_False_shift;
        when others => c_65 <= c_65_64_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 66 and associated fundamentals [[-24], [273], [-350], [387]]
  c_66_45_0_False_resize <= c_45(24 downto 0);
  c_66_45_0_False_shift <= shift_left(c_66_45_0_False_resize, 0);
  c_66_54_0_False_resize <= c_54(24 downto 0);
  c_66_54_0_False_shift <= shift_left(c_66_54_0_False_resize, 0);
  c_66_60_1_False_resize <= c_60;
  c_66_60_1_False_shift <= shift_left(c_66_60_1_False_resize, 1);
  with config_select_11 select c_66_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_66_sel is
        when "00" => c_66 <= c_66_45_0_False_shift;
        when "01" => c_66 <= c_66_54_0_False_shift;
        when others => c_66 <= c_66_60_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 67 and associated fundamentals [[-24], [273], [-350], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 68 and associated fundamentals [[-24], [273], [-350], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 69 and associated fundamentals [[154], [854], [414], [-231]]
  with config_select_14 select c_69_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_69: entity work.adder_node
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
      sub_i => c_69_sub_sel,
      x_i => c_65,
      y_i => c_68,
      z_o => c_69_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_69_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 70 and associated fundamentals [[2], [15], [-1002], [4]]
  c_70_52_2_False_resize <= resize(c_52, 26);
  c_70_52_2_False_shift <= shift_left(c_70_52_2_False_resize, 2);
  c_70_52_1_False_resize <= resize(c_52, 26);
  c_70_52_1_False_shift <= shift_left(c_70_52_1_False_resize, 1);
  c_70_47_0_False_resize <= resize(c_47, 26);
  c_70_47_0_False_shift <= shift_left(c_70_47_0_False_resize, 0);
  c_70_45_0_False_resize <= c_45;
  c_70_45_0_False_shift <= shift_left(c_70_45_0_False_resize, 0);
  with config_select_11 select c_70_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "00" => c_70 <= c_70_52_2_False_shift;
        when "01" => c_70 <= c_70_52_1_False_shift;
        when "10" => c_70 <= c_70_47_0_False_shift;
        when others => c_70 <= c_70_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 71 and associated fundamentals [[3], [15], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 72 and associated fundamentals [[3], [15], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 73 and associated fundamentals [[-41], [120], [512], [16]]
  c_73_58_4_False_resize <= resize(c_58, 25);
  c_73_58_4_False_shift <= shift_left(c_73_58_4_False_resize, 4);
  c_73_56_0_False_resize <= c_56(24 downto 0);
  c_73_56_0_False_shift <= shift_left(c_73_56_0_False_resize, 0);
  c_73_58_9_False_resize <= resize(c_58, 25);
  c_73_58_9_False_shift <= shift_left(c_73_58_9_False_resize, 9);
  c_73_72_3_False_resize <= resize(c_72, 25);
  c_73_72_3_False_shift <= shift_left(c_73_72_3_False_resize, 3);
  with config_select_13 select c_73_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "00" => c_73 <= c_73_58_4_False_shift;
        when "01" => c_73 <= c_73_56_0_False_shift;
        when "10" => c_73 <= c_73_58_9_False_shift;
        when others => c_73 <= c_73_72_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 74 and associated fundamentals [[2], [15], [-1002], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 75 and associated fundamentals [[2], [15], [-1002], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 76 and associated fundamentals [[-39], [-105], [-490], [20]]
  with config_select_14 select c_76_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_76: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_76_sub_sel,
      x_i => c_75,
      y_i => c_73,
      z_o => c_76_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_76_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 77 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 78 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 79 and associated fundamentals [[-329], [-935], [55], [-359]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 80 and associated fundamentals [[-329], [-935], [55], [-359]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 81 and associated fundamentals [[-41], [128], [880], [6]]
  c_81_80_4_False_resize <= c_80;
  c_81_80_4_False_shift <= shift_left(c_81_80_4_False_resize, 4);
  c_81_58_7_False_resize <= resize(c_58, 26);
  c_81_58_7_False_shift <= shift_left(c_81_58_7_False_resize, 7);
  c_81_56_0_False_resize <= c_56;
  c_81_56_0_False_shift <= shift_left(c_81_56_0_False_resize, 0);
  c_81_78_1_False_resize <= resize(c_78, 26);
  c_81_78_1_False_shift <= shift_left(c_81_78_1_False_resize, 1);
  with config_select_13 select c_81_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "00" => c_81 <= c_81_80_4_False_shift;
        when "01" => c_81 <= c_81_58_7_False_shift;
        when "10" => c_81 <= c_81_56_0_False_shift;
        when others => c_81 <= c_81_78_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 82 and associated fundamentals [[-329], [-935], [55], [-359]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 83 and associated fundamentals [[-329], [-935], [55], [-359]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 84 and associated fundamentals [[-41], [581], [-73], [-287]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 85 and associated fundamentals [[-41], [581], [-73], [-287]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 86 and associated fundamentals [[616], [-105], [55], [-287]]
  c_86_85_0_False_resize <= c_85;
  c_86_85_0_False_shift <= shift_left(c_86_85_0_False_resize, 0);
  c_86_69_2_False_resize <= c_69;
  c_86_69_2_False_shift <= shift_left(c_86_69_2_False_resize, 2);
  c_86_83_0_False_resize <= c_83;
  c_86_83_0_False_shift <= shift_left(c_86_83_0_False_resize, 0);
  c_86_76_0_False_resize <= resize(c_76, 26);
  c_86_76_0_False_shift <= shift_left(c_86_76_0_False_resize, 0);
  with config_select_15 select c_86_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_86_sel is
        when "00" => c_86 <= c_86_85_0_False_shift;
        when "01" => c_86 <= c_86_69_2_False_shift;
        when "10" => c_86 <= c_86_83_0_False_shift;
        when others => c_86 <= c_86_76_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 87 and associated fundamentals [[-41], [128], [880], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 88 and associated fundamentals [[-41], [128], [880], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 89 and associated fundamentals [[575], [233], [825], [293]]
  with config_select_16 select c_89_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_89: entity work.adder_node
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
      sub_i => c_89_sub_sel,
      x_i => c_88,
      y_i => c_86,
      z_o => c_89_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_89_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 90 and associated fundamentals [[3], [30], [1104], [-141]]
  c_90_15_0_False_resize <= resize(c_15, 27);
  c_90_15_0_False_shift <= shift_left(c_90_15_0_False_resize, 0);
  c_90_25_0_False_resize <= resize(c_25, 27);
  c_90_25_0_False_shift <= shift_left(c_90_25_0_False_resize, 0);
  c_90_25_1_False_resize <= resize(c_25, 27);
  c_90_25_1_False_shift <= shift_left(c_90_25_1_False_resize, 1);
  c_90_15_2_False_resize <= resize(c_15, 27);
  c_90_15_2_False_shift <= shift_left(c_90_15_2_False_resize, 2);
  with config_select_7 select c_90_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_90_sel is
        when "00" => c_90 <= c_90_15_0_False_shift;
        when "01" => c_90 <= c_90_25_0_False_shift;
        when "10" => c_90 <= c_90_25_1_False_shift;
        when others => c_90 <= c_90_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 91 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 92 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 93 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 94 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 95 and associated fundamentals [[-265], [-123], [276], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 96 and associated fundamentals [[-265], [-123], [276], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 97 and associated fundamentals [[-265], [-123], [276], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 98 and associated fundamentals [[-265], [-123], [276], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 99 and associated fundamentals [[-265], [-123], [276], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 100 and associated fundamentals [[-265], [-123], [276], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 101 and associated fundamentals [[-265], [-123], [276], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 102 and associated fundamentals [[-265], [-123], [276], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 103 and associated fundamentals [[-265], [-123], [276], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_102 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 104 and associated fundamentals [[-265], [-123], [276], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 105 and associated fundamentals [[-39], [-105], [-490], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 106 and associated fundamentals [[-39], [-105], [-490], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 107 and associated fundamentals [[32], [-123], [825], [40]]
  c_107_106_1_False_resize <= resize(c_106, 26);
  c_107_106_1_False_shift <= shift_left(c_107_106_1_False_resize, 1);
  c_107_104_0_False_resize <= resize(c_104, 26);
  c_107_104_0_False_shift <= shift_left(c_107_104_0_False_resize, 0);
  c_107_89_0_False_resize <= c_89;
  c_107_89_0_False_shift <= shift_left(c_107_89_0_False_resize, 0);
  c_107_94_5_False_resize <= resize(c_94, 26);
  c_107_94_5_False_shift <= shift_left(c_107_94_5_False_resize, 5);
  with config_select_17 select c_107_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_107_sel is
        when "00" => c_107 <= c_107_106_1_False_shift;
        when "01" => c_107 <= c_107_104_0_False_shift;
        when "10" => c_107 <= c_107_89_0_False_shift;
        when others => c_107 <= c_107_94_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 108 and associated fundamentals [[3], [30], [1104], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 109 and associated fundamentals [[3], [30], [1104], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 110 and associated fundamentals [[3], [30], [1104], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 111 and associated fundamentals [[3], [30], [1104], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 112 and associated fundamentals [[3], [30], [1104], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 113 and associated fundamentals [[3], [30], [1104], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 114 and associated fundamentals [[3], [30], [1104], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 115 and associated fundamentals [[3], [30], [1104], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_115 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 116 and associated fundamentals [[3], [30], [1104], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_115 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 117 and associated fundamentals [[3], [30], [1104], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_117 <= c_116 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 18 with id 118 and associated fundamentals [[35], [-93], [279], [-101]]
  with config_select_18 select c_118_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_118: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
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
      sub_i => c_118_sub_sel,
      x_i => c_117,
      y_i => c_107,
      z_o => c_118_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_118_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 119 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 120 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 121 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 122 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 123 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 124 and associated fundamentals [[67], [-59], [-35], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 125 and associated fundamentals [[-24], [699], [251], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 126 and associated fundamentals [[-24], [699], [251], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 127 and associated fundamentals [[-24], [699], [251], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 128 and associated fundamentals [[-24], [699], [251], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 129 and associated fundamentals [[-24], [699], [251], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 130 and associated fundamentals [[-24], [699], [251], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 131 and associated fundamentals [[-24], [699], [251], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 132 and associated fundamentals [[-24], [699], [251], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 133 and associated fundamentals [[575], [233], [825], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 134 and associated fundamentals [[575], [233], [825], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 135 and associated fundamentals [[575], [699], [-70], [-202]]
  c_135_132_0_False_resize <= c_132;
  c_135_132_0_False_shift <= shift_left(c_135_132_0_False_resize, 0);
  c_135_134_0_False_resize <= c_134;
  c_135_134_0_False_shift <= shift_left(c_135_134_0_False_resize, 0);
  c_135_118_1_False_resize <= resize(c_118, 26);
  c_135_118_1_False_shift <= shift_left(c_135_118_1_False_resize, 1);
  c_135_124_1_False_resize <= resize(c_124, 26);
  c_135_124_1_False_shift <= shift_left(c_135_124_1_False_resize, 1);
  with config_select_19 select c_135_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_135_sel is
        when "00" => c_135 <= c_135_132_0_False_shift;
        when "01" => c_135 <= c_135_134_0_False_shift;
        when "10" => c_135 <= c_135_118_1_False_shift;
        when others => c_135 <= c_135_124_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 136 and associated fundamentals [[3], [15], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 137 and associated fundamentals [[3], [15], [5], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 138 and associated fundamentals [[1536], [-210], [552], [-287]]
  c_138_102_1_False_resize <= resize(c_102, 27);
  c_138_102_1_False_shift <= shift_left(c_138_102_1_False_resize, 1);
  c_138_85_0_False_resize <= resize(c_85, 27);
  c_138_85_0_False_shift <= shift_left(c_138_85_0_False_resize, 0);
  c_138_137_9_False_resize <= resize(c_137, 27);
  c_138_137_9_False_shift <= shift_left(c_138_137_9_False_resize, 9);
  c_138_76_1_False_resize <= resize(c_76, 27);
  c_138_76_1_False_shift <= shift_left(c_138_76_1_False_resize, 1);
  with config_select_15 select c_138_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_138_sel is
        when "00" => c_138 <= c_138_102_1_False_shift;
        when "01" => c_138 <= c_138_85_0_False_shift;
        when "10" => c_138 <= c_138_137_9_False_shift;
        when others => c_138 <= c_138_76_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 139 and associated fundamentals [[1536], [-210], [552], [-287]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 140 and associated fundamentals [[1536], [-210], [552], [-287]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 141 and associated fundamentals [[1536], [-210], [552], [-287]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 142 and associated fundamentals [[1536], [-210], [552], [-287]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_142 <= c_141 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 20 with id 143 and associated fundamentals [[-961], [909], [-622], [85]]
  inst_adder_node_143: entity work.adder_node
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
      x_i => c_135,
      y_i => c_142,
      z_o => c_143_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_143_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 144 and associated fundamentals [[-329], [-935], [-490], [-231]]
  c_144_83_0_False_resize <= c_83;
  c_144_83_0_False_shift <= shift_left(c_144_83_0_False_resize, 0);
  c_144_76_0_False_resize <= resize(c_76, 26);
  c_144_76_0_False_shift <= shift_left(c_144_76_0_False_resize, 0);
  c_144_69_0_False_resize <= c_69;
  c_144_69_0_False_shift <= shift_left(c_144_69_0_False_resize, 0);
  with config_select_15 select c_144_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_144_sel is
        when "00" => c_144 <= c_144_83_0_False_shift;
        when "01" => c_144 <= c_144_76_0_False_shift;
        when others => c_144 <= c_144_69_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 145 and associated fundamentals [[65], [273], [-1002], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 146 and associated fundamentals [[65], [273], [-1002], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_145 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 147 and associated fundamentals [[65], [273], [-1002], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 148 and associated fundamentals [[65], [273], [-1002], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 149 and associated fundamentals [[154], [854], [414], [-231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 150 and associated fundamentals [[154], [854], [414], [-231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_149 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 151 and associated fundamentals [[520], [233], [414], [586]]
  c_151_89_0_False_resize <= c_89;
  c_151_89_0_False_shift <= shift_left(c_151_89_0_False_resize, 0);
  c_151_148_3_False_resize <= c_148;
  c_151_148_3_False_shift <= shift_left(c_151_148_3_False_resize, 3);
  c_151_89_1_False_resize <= c_89;
  c_151_89_1_False_shift <= shift_left(c_151_89_1_False_resize, 1);
  c_151_150_0_False_resize <= c_150;
  c_151_150_0_False_shift <= shift_left(c_151_150_0_False_resize, 0);
  with config_select_17 select c_151_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_151_sel is
        when "00" => c_151 <= c_151_89_0_False_shift;
        when "01" => c_151 <= c_151_148_3_False_shift;
        when "10" => c_151 <= c_151_89_1_False_shift;
        when others => c_151 <= c_151_150_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 152 and associated fundamentals [[575], [546], [502], [387]]
  c_152_89_0_False_resize <= c_89;
  c_152_89_0_False_shift <= shift_left(c_152_89_0_False_resize, 0);
  c_152_148_1_False_resize <= c_148;
  c_152_148_1_False_shift <= shift_left(c_152_148_1_False_resize, 1);
  c_152_130_1_False_resize <= c_130;
  c_152_130_1_False_shift <= shift_left(c_152_130_1_False_resize, 1);
  c_152_148_0_False_resize <= c_148;
  c_152_148_0_False_shift <= shift_left(c_152_148_0_False_resize, 0);
  with config_select_17 select c_152_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_152_sel is
        when "00" => c_152 <= c_152_89_0_False_shift;
        when "01" => c_152 <= c_152_148_1_False_shift;
        when "10" => c_152 <= c_152_130_1_False_shift;
        when others => c_152 <= c_152_148_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 153 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 154 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_154 <= c_153 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 155 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_154 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 156 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 157 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_156 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 158 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 159 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_159 <= c_158 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 160 and associated fundamentals [[381], [9], [-175], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_159 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 161 and associated fundamentals [[575], [233], [825], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_134 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 162 and associated fundamentals [[575], [233], [825], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_161 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 163 and associated fundamentals [[381], [909], [825], [624]]
  c_163_162_0_False_resize <= c_162;
  c_163_162_0_False_shift <= shift_left(c_163_162_0_False_resize, 0);
  c_163_160_2_False_resize <= resize(c_160, 26);
  c_163_160_2_False_shift <= shift_left(c_163_160_2_False_resize, 2);
  c_163_160_0_False_resize <= resize(c_160, 26);
  c_163_160_0_False_shift <= shift_left(c_163_160_0_False_resize, 0);
  c_163_143_0_False_resize <= c_143;
  c_163_143_0_False_shift <= shift_left(c_163_143_0_False_resize, 0);
  with config_select_21 select c_163_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_163_sel is
        when "00" => c_163 <= c_163_162_0_False_shift;
        when "01" => c_163 <= c_163_160_2_False_shift;
        when "10" => c_163 <= c_163_160_0_False_shift;
        when others => c_163 <= c_163_143_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 164 and associated fundamentals [[-265], [-472], [-292], [-141]]
  c_164_100_0_False_resize <= c_100;
  c_164_100_0_False_shift <= shift_left(c_164_100_0_False_resize, 0);
  c_164_56_2_False_resize <= c_56(24 downto 0);
  c_164_56_2_False_shift <= shift_left(c_164_56_2_False_resize, 2);
  c_164_78_3_False_resize <= resize(c_78, 25);
  c_164_78_3_False_shift <= shift_left(c_164_78_3_False_resize, 3);
  with config_select_13 select c_164_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_164_sel is
        when "00" => c_164 <= c_164_100_0_False_shift;
        when "01" => c_164 <= c_164_56_2_False_shift;
        when others => c_164 <= c_164_78_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 165 and associated fundamentals [[-329], [-935], [55], [-359]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_165 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 166 and associated fundamentals [[-329], [-935], [55], [-359]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_166 <= c_165 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 167 and associated fundamentals [[-329], [-935], [55], [-359]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_167 <= c_166 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 168 and associated fundamentals [[-329], [-935], [55], [-359]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_168 <= c_167 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 169 and associated fundamentals [[-329], [-935], [55], [-359]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_169 <= c_168 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 170 and associated fundamentals [[-329], [-935], [55], [-359]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_170 <= c_169 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 171 and associated fundamentals [[65], [273], [-1002], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_171 <= c_148 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 172 and associated fundamentals [[65], [273], [-1002], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_172 <= c_171 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 173 and associated fundamentals [[65], [273], [-1002], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_173 <= c_172 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 174 and associated fundamentals [[65], [273], [-1002], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_174 <= c_173 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 175 and associated fundamentals [[35], [-93], [279], [-101]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_175 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 176 and associated fundamentals [[35], [-93], [279], [-101]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_175 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 177 and associated fundamentals [[-961], [-93], [-1002], [-718]]
  c_177_170_1_False_resize <= c_170;
  c_177_170_1_False_shift <= shift_left(c_177_170_1_False_resize, 1);
  c_177_176_0_False_resize <= resize(c_176, 26);
  c_177_176_0_False_shift <= shift_left(c_177_176_0_False_resize, 0);
  c_177_143_0_False_resize <= c_143;
  c_177_143_0_False_shift <= shift_left(c_177_143_0_False_resize, 0);
  c_177_174_0_False_resize <= c_174;
  c_177_174_0_False_shift <= shift_left(c_177_174_0_False_resize, 0);
  with config_select_21 select c_177_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_177_sel is
        when "00" => c_177 <= c_177_170_1_False_shift;
        when "01" => c_177 <= c_177_176_0_False_shift;
        when "10" => c_177 <= c_177_143_0_False_shift;
        when others => c_177 <= c_177_174_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 178 and associated fundamentals [[-41], [581], [-73], [-287]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_178 <= c_85 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 179 and associated fundamentals [[-41], [581], [-73], [-287]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_179 <= c_178 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 180 and associated fundamentals [[-41], [581], [-73], [-287]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_180 <= c_179 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 181 and associated fundamentals [[-41], [581], [-73], [-287]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_181 <= c_180 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 182 and associated fundamentals [[-41], [581], [-73], [-287]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_182 <= c_181 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 183 and associated fundamentals [[-41], [581], [-73], [-287]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_183 <= c_182 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 184 and associated fundamentals [[-39], [-105], [-490], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_184 <= c_106 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 185 and associated fundamentals [[-39], [-105], [-490], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_185 <= c_184 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 186 and associated fundamentals [[-39], [-105], [-490], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_186 <= c_185 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 187 and associated fundamentals [[-39], [-105], [-490], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_187 <= c_186 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 188 and associated fundamentals [[-41], [-105], [-622], [-287]]
  c_188_183_0_False_resize <= c_183;
  c_188_183_0_False_shift <= shift_left(c_188_183_0_False_resize, 0);
  c_188_187_0_False_resize <= resize(c_187, 26);
  c_188_187_0_False_shift <= shift_left(c_188_187_0_False_resize, 0);
  c_188_143_0_False_resize <= c_143;
  c_188_143_0_False_shift <= shift_left(c_188_143_0_False_resize, 0);
  with config_select_21 select c_188_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_188_sel is
        when "00" => c_188 <= c_188_183_0_False_shift;
        when "01" => c_188 <= c_188_187_0_False_shift;
        when others => c_188 <= c_188_143_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 189 and associated fundamentals [[154], [854], [414], [-231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_189 <= c_150 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 190 and associated fundamentals [[154], [854], [414], [-231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_190 <= c_189 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 191 and associated fundamentals [[35], [854], [279], [360]]
  c_191_118_0_False_resize <= resize(c_118, 26);
  c_191_118_0_False_shift <= shift_left(c_191_118_0_False_resize, 0);
  c_191_132_0_False_resize <= c_132;
  c_191_132_0_False_shift <= shift_left(c_191_132_0_False_resize, 0);
  c_191_190_0_False_resize <= c_190;
  c_191_190_0_False_shift <= shift_left(c_191_190_0_False_resize, 0);
  with config_select_19 select c_191_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_191_sel is
        when "00" => c_191 <= c_191_118_0_False_shift;
        when "01" => c_191 <= c_191_132_0_False_shift;
        when others => c_191 <= c_191_190_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 192 and associated fundamentals [[154], [854], [414], [-231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_192 <= c_190 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 193 and associated fundamentals [[154], [854], [414], [-231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_193 <= c_192 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 194 and associated fundamentals [[616], [581], [440], [85]]
  c_194_170_3_False_resize <= c_170;
  c_194_170_3_False_shift <= shift_left(c_194_170_3_False_resize, 3);
  c_194_143_0_False_resize <= c_143;
  c_194_143_0_False_shift <= shift_left(c_194_143_0_False_resize, 0);
  c_194_193_2_False_resize <= c_193;
  c_194_193_2_False_shift <= shift_left(c_194_193_2_False_resize, 2);
  c_194_183_0_False_resize <= c_183;
  c_194_183_0_False_shift <= shift_left(c_194_183_0_False_resize, 0);
  with config_select_21 select c_194_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_194_sel is
        when "00" => c_194 <= c_194_170_3_False_shift;
        when "01" => c_194 <= c_194_143_0_False_shift;
        when "10" => c_194 <= c_194_193_2_False_shift;
        when others => c_194 <= c_194_183_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 195 and associated fundamentals [[-312], [-59], [-700], [-808]]
  c_195_158_2_False_resize <= resize(c_158, 26);
  c_195_158_2_False_shift <= shift_left(c_195_158_2_False_resize, 2);
  c_195_185_3_False_resize <= resize(c_185, 26);
  c_195_185_3_False_shift <= shift_left(c_195_185_3_False_resize, 3);
  c_195_118_3_False_resize <= resize(c_118, 26);
  c_195_118_3_False_shift <= shift_left(c_195_118_3_False_resize, 3);
  c_195_124_0_False_resize <= resize(c_124, 26);
  c_195_124_0_False_shift <= shift_left(c_195_124_0_False_resize, 0);
  with config_select_19 select c_195_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_195_sel is
        when "00" => c_195 <= c_195_158_2_False_shift;
        when "01" => c_195 <= c_195_185_3_False_shift;
        when "10" => c_195 <= c_195_118_3_False_shift;
        when others => c_195 <= c_195_124_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 196 and associated fundamentals [[-329], [-935], [-490], [-231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_196 <= c_144 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 197 and associated fundamentals [[-329], [-935], [-490], [-231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_197 <= c_196 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 198 and associated fundamentals [[-329], [-935], [-490], [-231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_198 <= c_197 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 199 and associated fundamentals [[-329], [-935], [-490], [-231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_199 <= c_198 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 200 and associated fundamentals [[-329], [-935], [-490], [-231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_200 <= c_199 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 201 and associated fundamentals [[-329], [-935], [-490], [-231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_201 <= c_200 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 202 and associated fundamentals [[329], [935], [490], [231]]
  c_202_resize <= c_201;
  c_202 <= -shift_left(c_202_resize, 0);
  -- node of type 'register' in stage 18 with id 203 and associated fundamentals [[520], [233], [414], [586]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_203 <= c_151 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 204 and associated fundamentals [[520], [233], [414], [586]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_204 <= c_203 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 205 and associated fundamentals [[520], [233], [414], [586]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_205 <= c_204 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 206 and associated fundamentals [[520], [233], [414], [586]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_206 <= c_205 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 207 and associated fundamentals [[520], [233], [414], [586]]
  c_207_resize <= c_206;
  c_207 <= shift_left(c_207_resize, 0);
  -- node of type 'register' in stage 18 with id 208 and associated fundamentals [[575], [546], [502], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_208 <= c_152 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 209 and associated fundamentals [[575], [546], [502], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_209 <= c_208 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 210 and associated fundamentals [[575], [546], [502], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_210 <= c_209 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 211 and associated fundamentals [[575], [546], [502], [387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_211 <= c_210 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 212 and associated fundamentals [[575], [546], [502], [387]]
  c_212_resize <= c_211;
  c_212 <= shift_left(c_212_resize, 0);
  -- node of type 'output' in stage 21 with id 213 and associated fundamentals [[381], [909], [825], [624]]
  c_213_resize <= c_163;
  c_213 <= shift_left(c_213_resize, 0);
  -- node of type 'register' in stage 14 with id 214 and associated fundamentals [[-265], [-472], [-292], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_214 <= c_164 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 215 and associated fundamentals [[-265], [-472], [-292], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_215 <= c_214 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 216 and associated fundamentals [[-265], [-472], [-292], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_216 <= c_215 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 217 and associated fundamentals [[-265], [-472], [-292], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_217 <= c_216 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 218 and associated fundamentals [[-265], [-472], [-292], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_218 <= c_217 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 219 and associated fundamentals [[-265], [-472], [-292], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_219 <= c_218 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 220 and associated fundamentals [[-265], [-472], [-292], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_220 <= c_219 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 221 and associated fundamentals [[-265], [-472], [-292], [-141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_221 <= c_220 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 222 and associated fundamentals [[265], [472], [292], [141]]
  c_222_resize <= c_221;
  c_222 <= -shift_left(c_222_resize, 0);
  -- node of type 'output' in stage 21 with id 223 and associated fundamentals [[961], [93], [1002], [718]]
  c_223_resize <= c_177;
  c_223 <= -shift_left(c_223_resize, 0);
  -- node of type 'output' in stage 21 with id 224 and associated fundamentals [[41], [105], [622], [287]]
  c_224_resize <= c_188;
  c_224 <= -shift_left(c_224_resize, 0);
  -- node of type 'register' in stage 20 with id 225 and associated fundamentals [[35], [854], [279], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_225 <= c_191 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 226 and associated fundamentals [[35], [854], [279], [360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_226 <= c_225 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 227 and associated fundamentals [[35], [854], [279], [360]]
  c_227_resize <= c_226;
  c_227 <= shift_left(c_227_resize, 0);
  -- node of type 'output' in stage 21 with id 228 and associated fundamentals [[616], [581], [440], [85]]
  c_228_resize <= c_194;
  c_228 <= shift_left(c_228_resize, 0);
  -- node of type 'register' in stage 20 with id 229 and associated fundamentals [[-312], [-59], [-700], [-808]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_229 <= c_195 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 230 and associated fundamentals [[-312], [-59], [-700], [-808]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_230 <= c_229 & "";
    end if;
  end process;
  -- node of type 'output' in stage 21 with id 231 and associated fundamentals [[312], [59], [700], [808]]
  c_231_resize <= c_230;
  c_231 <= -shift_left(c_231_resize, 0);
end architecture;

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
    y_8: out std_logic_vector(24 downto 0);
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
  signal config_select_24: std_logic_vector(1 downto 0);
  signal config_select_25: std_logic_vector(1 downto 0);
  signal config_select_26: std_logic_vector(1 downto 0);
  signal config_select_27: std_logic_vector(1 downto 0);
  signal config_select_28: std_logic_vector(1 downto 0);
  signal config_select_29: std_logic_vector(1 downto 0);
  signal config_select_30: std_logic_vector(1 downto 0);
  signal config_select_31: std_logic_vector(1 downto 0);
  signal config_select_32: std_logic_vector(1 downto 0);
  signal config_select_33: std_logic_vector(1 downto 0);
  signal config_select_34: std_logic_vector(1 downto 0);
  signal config_select_35: std_logic_vector(1 downto 0);
  signal config_select_36: std_logic_vector(1 downto 0);
  signal config_select_37: std_logic_vector(1 downto 0);
  signal config_select_38: std_logic_vector(1 downto 0);
  signal config_select_39: std_logic_vector(1 downto 0);
  signal config_select_40: std_logic_vector(1 downto 0);
  signal config_select_41: std_logic_vector(1 downto 0);
  signal config_select_42: std_logic_vector(1 downto 0);
  signal config_select_43: std_logic_vector(1 downto 0);
  signal config_select_44: std_logic_vector(1 downto 0);
  signal config_select_45: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(27 downto 0);
  signal c_1_0_12_False_resize: signed(27 downto 0);
  signal c_1_0_12_False_shift: signed(27 downto 0);
  signal c_1_0_8_False_resize: signed(27 downto 0);
  signal c_1_0_8_False_shift: signed(27 downto 0);
  signal c_1_0_9_False_resize: signed(27 downto 0);
  signal c_1_0_9_False_shift: signed(27 downto 0);
  signal c_1_0_0_False_resize: signed(27 downto 0);
  signal c_1_0_0_False_shift: signed(27 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(27 downto 0);
  signal c_2_0_7_False_resize: signed(27 downto 0);
  signal c_2_0_7_False_shift: signed(27 downto 0);
  signal c_2_0_5_False_resize: signed(27 downto 0);
  signal c_2_0_5_False_shift: signed(27 downto 0);
  signal c_2_0_12_False_resize: signed(27 downto 0);
  signal c_2_0_12_False_shift: signed(27 downto 0);
  signal c_2_0_0_False_resize: signed(27 downto 0);
  signal c_2_0_0_False_shift: signed(27 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(28 downto 0);
  signal c_3_i0_resize: signed(28 downto 0);
  signal c_3_i1_resize: signed(28 downto 0);
  signal c_3_i0_shift: signed(28 downto 0);
  signal c_3_i1_shift: signed(28 downto 0);
  signal c_3_arith: signed(28 downto 0);
  signal c_3_oshift: signed(28 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(27 downto 0);
  signal c_6_5_5_False_resize: signed(27 downto 0);
  signal c_6_5_5_False_shift: signed(27 downto 0);
  signal c_6_5_0_False_resize: signed(27 downto 0);
  signal c_6_5_0_False_shift: signed(27 downto 0);
  signal c_6_5_12_False_resize: signed(27 downto 0);
  signal c_6_5_12_False_shift: signed(27 downto 0);
  signal c_6_3_0_False_resize: signed(27 downto 0);
  signal c_6_3_0_False_shift: signed(27 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(26 downto 0);
  signal c_7_0_5_False_resize: signed(26 downto 0);
  signal c_7_0_5_False_shift: signed(26 downto 0);
  signal c_7_0_11_False_resize: signed(26 downto 0);
  signal c_7_0_11_False_shift: signed(26 downto 0);
  signal c_7_0_2_False_resize: signed(26 downto 0);
  signal c_7_0_2_False_shift: signed(26 downto 0);
  signal c_7_0_0_False_resize: signed(26 downto 0);
  signal c_7_0_0_False_shift: signed(26 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(26 downto 0);
  signal c_9: signed(26 downto 0);
  signal c_10: signed(28 downto 0);
  signal c_10_i0_resize: signed(28 downto 0);
  signal c_10_i1_resize: signed(28 downto 0);
  signal c_10_i0_shift: signed(28 downto 0);
  signal c_10_i1_shift: signed(28 downto 0);
  signal c_10_arith: signed(28 downto 0);
  signal c_10_oshift: signed(28 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(23 downto 0);
  signal c_11_0_8_False_resize: signed(23 downto 0);
  signal c_11_0_8_False_shift: signed(23 downto 0);
  signal c_11_0_1_False_resize: signed(23 downto 0);
  signal c_11_0_1_False_shift: signed(23 downto 0);
  signal c_11_0_0_False_resize: signed(23 downto 0);
  signal c_11_0_0_False_shift: signed(23 downto 0);
  signal c_11_0_3_False_resize: signed(23 downto 0);
  signal c_11_0_3_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_3_5_False_resize: signed(23 downto 0);
  signal c_12_3_5_False_shift: signed(23 downto 0);
  signal c_12_5_8_False_resize: signed(23 downto 0);
  signal c_12_5_8_False_shift: signed(23 downto 0);
  signal c_12_5_0_False_resize: signed(23 downto 0);
  signal c_12_5_0_False_shift: signed(23 downto 0);
  signal c_12_5_5_False_resize: signed(23 downto 0);
  signal c_12_5_5_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_16: signed(28 downto 0);
  signal c_17: signed(28 downto 0);
  signal c_18: signed(28 downto 0);
  signal c_18_17_8_False_resize: signed(28 downto 0);
  signal c_18_17_8_False_shift: signed(28 downto 0);
  signal c_18_10_4_False_resize: signed(28 downto 0);
  signal c_18_10_4_False_shift: signed(28 downto 0);
  signal c_18_17_0_False_resize: signed(28 downto 0);
  signal c_18_17_0_False_shift: signed(28 downto 0);
  signal c_18_10_0_False_resize: signed(28 downto 0);
  signal c_18_10_0_False_shift: signed(28 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(15 downto 0);
  signal c_20: signed(15 downto 0);
  signal c_21: signed(26 downto 0);
  signal c_21_15_1_False_resize: signed(26 downto 0);
  signal c_21_15_1_False_shift: signed(26 downto 0);
  signal c_21_20_4_False_resize: signed(26 downto 0);
  signal c_21_20_4_False_shift: signed(26 downto 0);
  signal c_21_15_0_False_resize: signed(26 downto 0);
  signal c_21_15_0_False_shift: signed(26 downto 0);
  signal c_21_15_2_False_resize: signed(26 downto 0);
  signal c_21_15_2_False_shift: signed(26 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_i0_resize: signed(24 downto 0);
  signal c_22_i1_resize: signed(24 downto 0);
  signal c_22_i0_shift: signed(24 downto 0);
  signal c_22_i1_shift: signed(24 downto 0);
  signal c_22_arith: signed(24 downto 0);
  signal c_22_oshift: signed(24 downto 0);
  signal c_23: signed(26 downto 0);
  signal c_23_20_0_False_resize: signed(26 downto 0);
  signal c_23_20_0_False_shift: signed(26 downto 0);
  signal c_23_20_1_False_resize: signed(26 downto 0);
  signal c_23_20_1_False_shift: signed(26 downto 0);
  signal c_23_20_6_False_resize: signed(26 downto 0);
  signal c_23_20_6_False_shift: signed(26 downto 0);
  signal c_23_15_2_False_resize: signed(26 downto 0);
  signal c_23_15_2_False_shift: signed(26 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(15 downto 0);
  signal c_26: signed(27 downto 0);
  signal c_26_25_12_False_resize: signed(27 downto 0);
  signal c_26_25_12_False_shift: signed(27 downto 0);
  signal c_26_22_0_False_resize: signed(27 downto 0);
  signal c_26_22_0_False_shift: signed(27 downto 0);
  signal c_26_22_1_False_resize: signed(27 downto 0);
  signal c_26_22_1_False_shift: signed(27 downto 0);
  signal c_26_25_0_False_resize: signed(27 downto 0);
  signal c_26_25_0_False_shift: signed(27 downto 0);
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
  signal c_30: signed(26 downto 0);
  signal c_30_25_7_False_resize: signed(26 downto 0);
  signal c_30_25_7_False_shift: signed(26 downto 0);
  signal c_30_22_2_False_resize: signed(26 downto 0);
  signal c_30_22_2_False_shift: signed(26 downto 0);
  signal c_30_25_0_False_resize: signed(26 downto 0);
  signal c_30_25_0_False_shift: signed(26 downto 0);
  signal c_30_25_11_False_resize: signed(26 downto 0);
  signal c_30_25_11_False_shift: signed(26 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_15_3_False_resize: signed(24 downto 0);
  signal c_31_15_3_False_shift: signed(24 downto 0);
  signal c_31_20_0_False_resize: signed(24 downto 0);
  signal c_31_20_0_False_shift: signed(24 downto 0);
  signal c_31_20_4_False_resize: signed(24 downto 0);
  signal c_31_20_4_False_shift: signed(24 downto 0);
  signal c_31_15_0_False_resize: signed(24 downto 0);
  signal c_31_15_0_False_shift: signed(24 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_34: signed(29 downto 0);
  signal c_34_i0_resize: signed(29 downto 0);
  signal c_34_i1_resize: signed(29 downto 0);
  signal c_34_i0_shift: signed(29 downto 0);
  signal c_34_i1_shift: signed(29 downto 0);
  signal c_34_arith: signed(29 downto 0);
  signal c_34_oshift: signed(29 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(22 downto 0);
  signal c_35_20_4_False_resize: signed(22 downto 0);
  signal c_35_20_4_False_shift: signed(22 downto 0);
  signal c_35_20_0_False_resize: signed(22 downto 0);
  signal c_35_20_0_False_shift: signed(22 downto 0);
  signal c_35_15_1_False_resize: signed(22 downto 0);
  signal c_35_15_1_False_shift: signed(22 downto 0);
  signal c_35_10_0_False_resize: signed(22 downto 0);
  signal c_35_10_0_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(15 downto 0);
  signal c_37: signed(15 downto 0);
  signal c_38: signed(28 downto 0);
  signal c_39: signed(28 downto 0);
  signal c_40: signed(28 downto 0);
  signal c_41: signed(28 downto 0);
  signal c_42: signed(29 downto 0);
  signal c_42_37_3_False_resize: signed(29 downto 0);
  signal c_42_37_3_False_shift: signed(29 downto 0);
  signal c_42_34_0_False_resize: signed(29 downto 0);
  signal c_42_34_0_False_shift: signed(29 downto 0);
  signal c_42_41_0_False_resize: signed(29 downto 0);
  signal c_42_41_0_False_shift: signed(29 downto 0);
  signal c_42_34_3_False_resize: signed(29 downto 0);
  signal c_42_34_3_False_shift: signed(29 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_47: signed(29 downto 0);
  signal c_47_i0_resize: signed(29 downto 0);
  signal c_47_i1_resize: signed(29 downto 0);
  signal c_47_i0_shift: signed(29 downto 0);
  signal c_47_i1_shift: signed(29 downto 0);
  signal c_47_arith: signed(29 downto 0);
  signal c_47_oshift: signed(29 downto 0);
  signal c_47_sub_sel: std_logic;
  signal c_48: signed(28 downto 0);
  signal c_49: signed(28 downto 0);
  signal c_50: signed(29 downto 0);
  signal c_51: signed(29 downto 0);
  signal c_52: signed(29 downto 0);
  signal c_52_47_0_False_resize: signed(29 downto 0);
  signal c_52_47_0_False_shift: signed(29 downto 0);
  signal c_52_51_3_False_resize: signed(29 downto 0);
  signal c_52_51_3_False_shift: signed(29 downto 0);
  signal c_52_49_0_False_resize: signed(29 downto 0);
  signal c_52_49_0_False_shift: signed(29 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_57: signed(27 downto 0);
  signal c_57_37_4_False_resize: signed(27 downto 0);
  signal c_57_37_4_False_shift: signed(27 downto 0);
  signal c_57_37_0_False_resize: signed(27 downto 0);
  signal c_57_37_0_False_shift: signed(27 downto 0);
  signal c_57_34_1_False_resize: signed(27 downto 0);
  signal c_57_34_1_False_shift: signed(27 downto 0);
  signal c_57_56_1_False_resize: signed(27 downto 0);
  signal c_57_56_1_False_shift: signed(27 downto 0);
  signal c_57_sel: std_logic_vector(1 downto 0);
  signal c_58: signed(27 downto 0);
  signal c_59: signed(27 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_60_i0_resize: signed(24 downto 0);
  signal c_60_i1_resize: signed(24 downto 0);
  signal c_60_i0_shift: signed(24 downto 0);
  signal c_60_i1_shift: signed(24 downto 0);
  signal c_60_arith: signed(24 downto 0);
  signal c_60_oshift: signed(24 downto 0);
  signal c_60_sub_sel: std_logic;
  signal c_61: signed(28 downto 0);
  signal c_62: signed(28 downto 0);
  signal c_63: signed(28 downto 0);
  signal c_64: signed(28 downto 0);
  signal c_65: signed(24 downto 0);
  signal c_66: signed(24 downto 0);
  signal c_67: signed(27 downto 0);
  signal c_67_34_1_False_resize: signed(27 downto 0);
  signal c_67_34_1_False_shift: signed(27 downto 0);
  signal c_67_37_0_False_resize: signed(27 downto 0);
  signal c_67_37_0_False_shift: signed(27 downto 0);
  signal c_67_64_2_False_resize: signed(27 downto 0);
  signal c_67_64_2_False_shift: signed(27 downto 0);
  signal c_67_66_0_False_resize: signed(27 downto 0);
  signal c_67_66_0_False_shift: signed(27 downto 0);
  signal c_67_sel: std_logic_vector(1 downto 0);
  signal c_68: signed(26 downto 0);
  signal c_68_20_7_False_resize: signed(26 downto 0);
  signal c_68_20_7_False_shift: signed(26 downto 0);
  signal c_68_10_1_False_resize: signed(26 downto 0);
  signal c_68_10_1_False_shift: signed(26 downto 0);
  signal c_68_15_4_False_resize: signed(26 downto 0);
  signal c_68_15_4_False_shift: signed(26 downto 0);
  signal c_68_20_0_False_resize: signed(26 downto 0);
  signal c_68_20_0_False_shift: signed(26 downto 0);
  signal c_68_sel: std_logic_vector(1 downto 0);
  signal c_69: signed(26 downto 0);
  signal c_70: signed(26 downto 0);
  signal c_71: signed(26 downto 0);
  signal c_72: signed(26 downto 0);
  signal c_73: signed(27 downto 0);
  signal c_73_i0_resize: signed(27 downto 0);
  signal c_73_i1_resize: signed(27 downto 0);
  signal c_73_i0_shift: signed(27 downto 0);
  signal c_73_i1_shift: signed(27 downto 0);
  signal c_73_arith: signed(27 downto 0);
  signal c_73_oshift: signed(27 downto 0);
  signal c_73_sub_sel: std_logic;
  signal c_74: signed(28 downto 0);
  signal c_75: signed(28 downto 0);
  signal c_76: signed(28 downto 0);
  signal c_77: signed(28 downto 0);
  signal c_78: signed(28 downto 0);
  signal c_79: signed(28 downto 0);
  signal c_80: signed(27 downto 0);
  signal c_81: signed(27 downto 0);
  signal c_82: signed(26 downto 0);
  signal c_82_79_1_False_resize: signed(26 downto 0);
  signal c_82_79_1_False_shift: signed(26 downto 0);
  signal c_82_60_0_False_resize: signed(26 downto 0);
  signal c_82_60_0_False_shift: signed(26 downto 0);
  signal c_82_81_0_False_resize: signed(26 downto 0);
  signal c_82_81_0_False_shift: signed(26 downto 0);
  signal c_82_77_0_False_resize: signed(26 downto 0);
  signal c_82_77_0_False_shift: signed(26 downto 0);
  signal c_82_sel: std_logic_vector(1 downto 0);
  signal c_83: signed(15 downto 0);
  signal c_84: signed(15 downto 0);
  signal c_85: signed(15 downto 0);
  signal c_86: signed(15 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_87_86_8_False_resize: signed(25 downto 0);
  signal c_87_86_8_False_shift: signed(25 downto 0);
  signal c_87_79_0_False_resize: signed(25 downto 0);
  signal c_87_79_0_False_shift: signed(25 downto 0);
  signal c_87_60_1_False_resize: signed(25 downto 0);
  signal c_87_60_1_False_shift: signed(25 downto 0);
  signal c_87_sel: std_logic_vector(1 downto 0);
  signal c_88: signed(26 downto 0);
  signal c_88_i0_resize: signed(26 downto 0);
  signal c_88_i1_resize: signed(26 downto 0);
  signal c_88_i0_shift: signed(26 downto 0);
  signal c_88_i1_shift: signed(26 downto 0);
  signal c_88_arith: signed(26 downto 0);
  signal c_88_oshift: signed(26 downto 0);
  signal c_88_sub_sel: std_logic;
  signal c_89: signed(28 downto 0);
  signal c_90: signed(28 downto 0);
  signal c_91: signed(28 downto 0);
  signal c_92: signed(28 downto 0);
  signal c_93: signed(28 downto 0);
  signal c_94: signed(28 downto 0);
  signal c_95: signed(28 downto 0);
  signal c_96: signed(28 downto 0);
  signal c_97: signed(27 downto 0);
  signal c_98: signed(27 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_99_98_2_False_resize: signed(25 downto 0);
  signal c_99_98_2_False_shift: signed(25 downto 0);
  signal c_99_88_0_False_resize: signed(25 downto 0);
  signal c_99_88_0_False_shift: signed(25 downto 0);
  signal c_99_96_1_False_resize: signed(25 downto 0);
  signal c_99_96_1_False_shift: signed(25 downto 0);
  signal c_99_94_5_False_resize: signed(25 downto 0);
  signal c_99_94_5_False_shift: signed(25 downto 0);
  signal c_99_sel: std_logic_vector(1 downto 0);
  signal c_100: signed(15 downto 0);
  signal c_101: signed(15 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_102_96_0_False_resize: signed(25 downto 0);
  signal c_102_96_0_False_shift: signed(25 downto 0);
  signal c_102_101_0_False_resize: signed(25 downto 0);
  signal c_102_101_0_False_shift: signed(25 downto 0);
  signal c_102_88_1_False_resize: signed(25 downto 0);
  signal c_102_88_1_False_shift: signed(25 downto 0);
  signal c_102_101_8_False_resize: signed(25 downto 0);
  signal c_102_101_8_False_shift: signed(25 downto 0);
  signal c_102_sel: std_logic_vector(1 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_103_i0_resize: signed(25 downto 0);
  signal c_103_i1_resize: signed(25 downto 0);
  signal c_103_i0_shift: signed(25 downto 0);
  signal c_103_i1_shift: signed(25 downto 0);
  signal c_103_arith: signed(25 downto 0);
  signal c_103_oshift: signed(25 downto 0);
  signal c_103_sub_sel: std_logic;
  signal c_104: signed(15 downto 0);
  signal c_105: signed(15 downto 0);
  signal c_106: signed(25 downto 0);
  signal c_106_105_10_False_resize: signed(25 downto 0);
  signal c_106_105_10_False_shift: signed(25 downto 0);
  signal c_106_105_1_False_resize: signed(25 downto 0);
  signal c_106_105_1_False_shift: signed(25 downto 0);
  signal c_106_103_0_False_resize: signed(25 downto 0);
  signal c_106_103_0_False_shift: signed(25 downto 0);
  signal c_106_sel: std_logic_vector(1 downto 0);
  signal c_107: signed(29 downto 0);
  signal c_108: signed(29 downto 0);
  signal c_109: signed(29 downto 0);
  signal c_110: signed(29 downto 0);
  signal c_111: signed(29 downto 0);
  signal c_112: signed(29 downto 0);
  signal c_113: signed(27 downto 0);
  signal c_114: signed(27 downto 0);
  signal c_115: signed(29 downto 0);
  signal c_115_112_8_False_resize: signed(29 downto 0);
  signal c_115_112_8_False_shift: signed(29 downto 0);
  signal c_115_103_0_False_resize: signed(29 downto 0);
  signal c_115_103_0_False_shift: signed(29 downto 0);
  signal c_115_114_0_False_resize: signed(29 downto 0);
  signal c_115_114_0_False_shift: signed(29 downto 0);
  signal c_115_105_0_False_resize: signed(29 downto 0);
  signal c_115_105_0_False_shift: signed(29 downto 0);
  signal c_115_sel: std_logic_vector(1 downto 0);
  signal c_116: signed(29 downto 0);
  signal c_116_i0_resize: signed(29 downto 0);
  signal c_116_i1_resize: signed(29 downto 0);
  signal c_116_i0_shift: signed(29 downto 0);
  signal c_116_i1_shift: signed(29 downto 0);
  signal c_116_arith: signed(29 downto 0);
  signal c_116_oshift: signed(29 downto 0);
  signal c_116_sub_sel: std_logic;
  signal c_117: signed(24 downto 0);
  signal c_117_56_0_False_resize: signed(24 downto 0);
  signal c_117_56_0_False_shift: signed(24 downto 0);
  signal c_117_29_0_False_resize: signed(24 downto 0);
  signal c_117_29_0_False_shift: signed(24 downto 0);
  signal c_117_66_2_False_resize: signed(24 downto 0);
  signal c_117_66_2_False_shift: signed(24 downto 0);
  signal c_117_sel: std_logic_vector(1 downto 0);
  signal c_118: signed(28 downto 0);
  signal c_119: signed(28 downto 0);
  signal c_120: signed(28 downto 0);
  signal c_121: signed(28 downto 0);
  signal c_122: signed(24 downto 0);
  signal c_123: signed(24 downto 0);
  signal c_124: signed(24 downto 0);
  signal c_125: signed(24 downto 0);
  signal c_126: signed(24 downto 0);
  signal c_127: signed(24 downto 0);
  signal c_128: signed(24 downto 0);
  signal c_129: signed(24 downto 0);
  signal c_130: signed(24 downto 0);
  signal c_131: signed(24 downto 0);
  signal c_132: signed(24 downto 0);
  signal c_133: signed(24 downto 0);
  signal c_134: signed(24 downto 0);
  signal c_135: signed(24 downto 0);
  signal c_136: signed(24 downto 0);
  signal c_137: signed(24 downto 0);
  signal c_138: signed(24 downto 0);
  signal c_139: signed(24 downto 0);
  signal c_140: signed(24 downto 0);
  signal c_141: signed(24 downto 0);
  signal c_142: signed(26 downto 0);
  signal c_142_121_2_False_resize: signed(26 downto 0);
  signal c_142_121_2_False_shift: signed(26 downto 0);
  signal c_142_116_4_False_resize: signed(26 downto 0);
  signal c_142_116_4_False_shift: signed(26 downto 0);
  signal c_142_141_0_False_resize: signed(26 downto 0);
  signal c_142_141_0_False_shift: signed(26 downto 0);
  signal c_142_131_3_False_resize: signed(26 downto 0);
  signal c_142_131_3_False_shift: signed(26 downto 0);
  signal c_142_sel: std_logic_vector(1 downto 0);
  signal c_143: signed(24 downto 0);
  signal c_144: signed(24 downto 0);
  signal c_145: signed(24 downto 0);
  signal c_146: signed(24 downto 0);
  signal c_147: signed(24 downto 0);
  signal c_148: signed(24 downto 0);
  signal c_149: signed(24 downto 0);
  signal c_150: signed(24 downto 0);
  signal c_151: signed(24 downto 0);
  signal c_152: signed(24 downto 0);
  signal c_153: signed(25 downto 0);
  signal c_153_i0_resize: signed(25 downto 0);
  signal c_153_i1_resize: signed(25 downto 0);
  signal c_153_i0_shift: signed(25 downto 0);
  signal c_153_i1_shift: signed(25 downto 0);
  signal c_153_arith: signed(25 downto 0);
  signal c_153_oshift: signed(25 downto 0);
  signal c_153_sub_sel: std_logic;
  signal c_154: signed(27 downto 0);
  signal c_154_20_2_False_resize: signed(27 downto 0);
  signal c_154_20_2_False_shift: signed(27 downto 0);
  signal c_154_20_12_False_resize: signed(27 downto 0);
  signal c_154_20_12_False_shift: signed(27 downto 0);
  signal c_154_15_0_False_resize: signed(27 downto 0);
  signal c_154_15_0_False_shift: signed(27 downto 0);
  signal c_154_sel: std_logic_vector(1 downto 0);
  signal c_155: signed(15 downto 0);
  signal c_156: signed(15 downto 0);
  signal c_157: signed(27 downto 0);
  signal c_158: signed(27 downto 0);
  signal c_159: signed(26 downto 0);
  signal c_159_156_0_False_resize: signed(26 downto 0);
  signal c_159_156_0_False_shift: signed(26 downto 0);
  signal c_159_156_4_False_resize: signed(26 downto 0);
  signal c_159_156_4_False_shift: signed(26 downto 0);
  signal c_159_116_3_False_resize: signed(26 downto 0);
  signal c_159_116_3_False_shift: signed(26 downto 0);
  signal c_159_158_4_False_resize: signed(26 downto 0);
  signal c_159_158_4_False_shift: signed(26 downto 0);
  signal c_159_sel: std_logic_vector(1 downto 0);
  signal c_160: signed(27 downto 0);
  signal c_161: signed(27 downto 0);
  signal c_162: signed(27 downto 0);
  signal c_163: signed(27 downto 0);
  signal c_164: signed(27 downto 0);
  signal c_165: signed(27 downto 0);
  signal c_166: signed(27 downto 0);
  signal c_167: signed(27 downto 0);
  signal c_168: signed(27 downto 0);
  signal c_169: signed(27 downto 0);
  signal c_170: signed(27 downto 0);
  signal c_171: signed(27 downto 0);
  signal c_172: signed(27 downto 0);
  signal c_173: signed(27 downto 0);
  signal c_174: signed(29 downto 0);
  signal c_174_i0_resize: signed(29 downto 0);
  signal c_174_i1_resize: signed(29 downto 0);
  signal c_174_i0_shift: signed(29 downto 0);
  signal c_174_i1_shift: signed(29 downto 0);
  signal c_174_arith: signed(29 downto 0);
  signal c_174_oshift: signed(29 downto 0);
  signal c_174_sub_sel: std_logic;
  signal c_175: signed(15 downto 0);
  signal c_176: signed(15 downto 0);
  signal c_177: signed(28 downto 0);
  signal c_178: signed(28 downto 0);
  signal c_179: signed(28 downto 0);
  signal c_180: signed(28 downto 0);
  signal c_181: signed(28 downto 0);
  signal c_182: signed(28 downto 0);
  signal c_183: signed(24 downto 0);
  signal c_184: signed(24 downto 0);
  signal c_185: signed(24 downto 0);
  signal c_186: signed(24 downto 0);
  signal c_187: signed(24 downto 0);
  signal c_188: signed(24 downto 0);
  signal c_189: signed(24 downto 0);
  signal c_190: signed(24 downto 0);
  signal c_191: signed(26 downto 0);
  signal c_191_182_0_False_resize: signed(26 downto 0);
  signal c_191_182_0_False_shift: signed(26 downto 0);
  signal c_191_176_6_False_resize: signed(26 downto 0);
  signal c_191_176_6_False_shift: signed(26 downto 0);
  signal c_191_190_4_False_resize: signed(26 downto 0);
  signal c_191_190_4_False_shift: signed(26 downto 0);
  signal c_191_153_1_False_resize: signed(26 downto 0);
  signal c_191_153_1_False_shift: signed(26 downto 0);
  signal c_191_sel: std_logic_vector(1 downto 0);
  signal c_192: signed(27 downto 0);
  signal c_193: signed(27 downto 0);
  signal c_194: signed(26 downto 0);
  signal c_195: signed(26 downto 0);
  signal c_196: signed(26 downto 0);
  signal c_197: signed(26 downto 0);
  signal c_198: signed(26 downto 0);
  signal c_199: signed(26 downto 0);
  signal c_200: signed(25 downto 0);
  signal c_200_193_1_False_resize: signed(25 downto 0);
  signal c_200_193_1_False_shift: signed(25 downto 0);
  signal c_200_199_0_False_resize: signed(25 downto 0);
  signal c_200_199_0_False_shift: signed(25 downto 0);
  signal c_200_174_3_False_resize: signed(25 downto 0);
  signal c_200_174_3_False_shift: signed(25 downto 0);
  signal c_200_176_5_False_resize: signed(25 downto 0);
  signal c_200_176_5_False_shift: signed(25 downto 0);
  signal c_200_sel: std_logic_vector(1 downto 0);
  signal c_201: signed(25 downto 0);
  signal c_201_i0_resize: signed(25 downto 0);
  signal c_201_i1_resize: signed(25 downto 0);
  signal c_201_i0_shift: signed(25 downto 0);
  signal c_201_i1_shift: signed(25 downto 0);
  signal c_201_arith: signed(25 downto 0);
  signal c_201_oshift: signed(25 downto 0);
  signal c_201_sub_sel: std_logic;
  signal c_202: signed(15 downto 0);
  signal c_203: signed(15 downto 0);
  signal c_204: signed(24 downto 0);
  signal c_205: signed(24 downto 0);
  signal c_206: signed(24 downto 0);
  signal c_207: signed(24 downto 0);
  signal c_208: signed(29 downto 0);
  signal c_209: signed(29 downto 0);
  signal c_210: signed(29 downto 0);
  signal c_211: signed(29 downto 0);
  signal c_212: signed(29 downto 0);
  signal c_213: signed(29 downto 0);
  signal c_214: signed(29 downto 0);
  signal c_215: signed(29 downto 0);
  signal c_216: signed(29 downto 0);
  signal c_217: signed(29 downto 0);
  signal c_218: signed(29 downto 0);
  signal c_219: signed(29 downto 0);
  signal c_220: signed(25 downto 0);
  signal c_220_201_0_False_resize: signed(25 downto 0);
  signal c_220_201_0_False_shift: signed(25 downto 0);
  signal c_220_207_0_False_resize: signed(25 downto 0);
  signal c_220_207_0_False_shift: signed(25 downto 0);
  signal c_220_203_1_False_resize: signed(25 downto 0);
  signal c_220_203_1_False_shift: signed(25 downto 0);
  signal c_220_219_2_False_resize: signed(25 downto 0);
  signal c_220_219_2_False_shift: signed(25 downto 0);
  signal c_220_sel: std_logic_vector(1 downto 0);
  signal c_221: signed(24 downto 0);
  signal c_222: signed(24 downto 0);
  signal c_223: signed(29 downto 0);
  signal c_224: signed(29 downto 0);
  signal c_225: signed(29 downto 0);
  signal c_226: signed(29 downto 0);
  signal c_227: signed(26 downto 0);
  signal c_227_226_9_False_resize: signed(26 downto 0);
  signal c_227_226_9_False_shift: signed(26 downto 0);
  signal c_227_222_1_False_resize: signed(26 downto 0);
  signal c_227_222_1_False_shift: signed(26 downto 0);
  signal c_227_201_0_False_resize: signed(26 downto 0);
  signal c_227_201_0_False_shift: signed(26 downto 0);
  signal c_227_sel: std_logic_vector(1 downto 0);
  signal c_228: signed(26 downto 0);
  signal c_228_i0_resize: signed(26 downto 0);
  signal c_228_i1_resize: signed(26 downto 0);
  signal c_228_i0_shift: signed(26 downto 0);
  signal c_228_i1_shift: signed(26 downto 0);
  signal c_228_arith: signed(26 downto 0);
  signal c_228_oshift: signed(26 downto 0);
  signal c_229: signed(25 downto 0);
  signal c_229_201_1_False_resize: signed(25 downto 0);
  signal c_229_201_1_False_shift: signed(25 downto 0);
  signal c_229_203_1_False_resize: signed(25 downto 0);
  signal c_229_203_1_False_shift: signed(25 downto 0);
  signal c_229_203_3_False_resize: signed(25 downto 0);
  signal c_229_203_3_False_shift: signed(25 downto 0);
  signal c_229_207_0_False_resize: signed(25 downto 0);
  signal c_229_207_0_False_shift: signed(25 downto 0);
  signal c_229_sel: std_logic_vector(1 downto 0);
  signal c_230: signed(27 downto 0);
  signal c_230_203_2_False_resize: signed(27 downto 0);
  signal c_230_203_2_False_shift: signed(27 downto 0);
  signal c_230_219_0_False_resize: signed(27 downto 0);
  signal c_230_219_0_False_shift: signed(27 downto 0);
  signal c_230_201_7_False_resize: signed(27 downto 0);
  signal c_230_201_7_False_shift: signed(27 downto 0);
  signal c_230_207_4_False_resize: signed(27 downto 0);
  signal c_230_207_4_False_shift: signed(27 downto 0);
  signal c_230_sel: std_logic_vector(1 downto 0);
  signal c_231: signed(29 downto 0);
  signal c_231_i0_resize: signed(29 downto 0);
  signal c_231_i1_resize: signed(29 downto 0);
  signal c_231_i0_shift: signed(29 downto 0);
  signal c_231_i1_shift: signed(29 downto 0);
  signal c_231_arith: signed(29 downto 0);
  signal c_231_oshift: signed(29 downto 0);
  signal c_231_sub_sel: std_logic;
  signal c_232: signed(28 downto 0);
  signal c_232_119_9_False_resize: signed(28 downto 0);
  signal c_232_119_9_False_shift: signed(28 downto 0);
  signal c_232_105_0_False_resize: signed(28 downto 0);
  signal c_232_105_0_False_shift: signed(28 downto 0);
  signal c_232_195_0_False_resize: signed(28 downto 0);
  signal c_232_195_0_False_shift: signed(28 downto 0);
  signal c_232_103_3_False_resize: signed(28 downto 0);
  signal c_232_103_3_False_shift: signed(28 downto 0);
  signal c_232_sel: std_logic_vector(1 downto 0);
  signal c_233: signed(15 downto 0);
  signal c_234: signed(15 downto 0);
  signal c_235: signed(24 downto 0);
  signal c_236: signed(24 downto 0);
  signal c_237: signed(24 downto 0);
  signal c_238: signed(24 downto 0);
  signal c_239: signed(24 downto 0);
  signal c_240: signed(24 downto 0);
  signal c_241: signed(24 downto 0);
  signal c_241_234_7_False_resize: signed(24 downto 0);
  signal c_241_234_7_False_shift: signed(24 downto 0);
  signal c_241_228_0_False_resize: signed(24 downto 0);
  signal c_241_228_0_False_shift: signed(24 downto 0);
  signal c_241_234_6_False_resize: signed(24 downto 0);
  signal c_241_234_6_False_shift: signed(24 downto 0);
  signal c_241_240_2_False_resize: signed(24 downto 0);
  signal c_241_240_2_False_shift: signed(24 downto 0);
  signal c_241_sel: std_logic_vector(1 downto 0);
  signal c_242: signed(28 downto 0);
  signal c_243: signed(28 downto 0);
  signal c_244: signed(28 downto 0);
  signal c_245: signed(28 downto 0);
  signal c_246: signed(28 downto 0);
  signal c_247: signed(28 downto 0);
  signal c_248: signed(28 downto 0);
  signal c_249: signed(28 downto 0);
  signal c_250: signed(28 downto 0);
  signal c_250_i0_resize: signed(28 downto 0);
  signal c_250_i1_resize: signed(28 downto 0);
  signal c_250_i0_shift: signed(28 downto 0);
  signal c_250_i1_shift: signed(28 downto 0);
  signal c_250_arith: signed(28 downto 0);
  signal c_250_oshift: signed(28 downto 0);
  signal c_250_sub_sel: std_logic;
  signal c_251: signed(29 downto 0);
  signal c_252: signed(29 downto 0);
  signal c_253: signed(25 downto 0);
  signal c_254: signed(25 downto 0);
  signal c_255: signed(25 downto 0);
  signal c_256: signed(25 downto 0);
  signal c_257: signed(29 downto 0);
  signal c_257_252_0_False_resize: signed(29 downto 0);
  signal c_257_252_0_False_shift: signed(29 downto 0);
  signal c_257_231_9_False_resize: signed(29 downto 0);
  signal c_257_231_9_False_shift: signed(29 downto 0);
  signal c_257_256_0_False_resize: signed(29 downto 0);
  signal c_257_256_0_False_shift: signed(29 downto 0);
  signal c_257_234_3_False_resize: signed(29 downto 0);
  signal c_257_234_3_False_shift: signed(29 downto 0);
  signal c_257_sel: std_logic_vector(1 downto 0);
  signal c_258: signed(28 downto 0);
  signal c_259: signed(28 downto 0);
  signal c_260: signed(28 downto 0);
  signal c_261: signed(28 downto 0);
  signal c_262: signed(28 downto 0);
  signal c_263: signed(28 downto 0);
  signal c_264: signed(28 downto 0);
  signal c_264_234_4_False_resize: signed(28 downto 0);
  signal c_264_234_4_False_shift: signed(28 downto 0);
  signal c_264_234_0_False_resize: signed(28 downto 0);
  signal c_264_234_0_False_shift: signed(28 downto 0);
  signal c_264_263_3_False_resize: signed(28 downto 0);
  signal c_264_263_3_False_shift: signed(28 downto 0);
  signal c_264_231_4_False_resize: signed(28 downto 0);
  signal c_264_231_4_False_shift: signed(28 downto 0);
  signal c_264_sel: std_logic_vector(1 downto 0);
  signal c_265: signed(29 downto 0);
  signal c_265_i0_resize: signed(29 downto 0);
  signal c_265_i1_resize: signed(29 downto 0);
  signal c_265_i0_shift: signed(29 downto 0);
  signal c_265_i1_shift: signed(29 downto 0);
  signal c_265_arith: signed(29 downto 0);
  signal c_265_oshift: signed(29 downto 0);
  signal c_266: signed(29 downto 0);
  signal c_267: signed(29 downto 0);
  signal c_268: signed(26 downto 0);
  signal c_269: signed(26 downto 0);
  signal c_270: signed(29 downto 0);
  signal c_271: signed(29 downto 0);
  signal c_272: signed(29 downto 0);
  signal c_272_269_0_False_resize: signed(29 downto 0);
  signal c_272_269_0_False_shift: signed(29 downto 0);
  signal c_272_271_0_False_resize: signed(29 downto 0);
  signal c_272_271_0_False_shift: signed(29 downto 0);
  signal c_272_267_0_False_resize: signed(29 downto 0);
  signal c_272_267_0_False_shift: signed(29 downto 0);
  signal c_272_250_0_False_resize: signed(29 downto 0);
  signal c_272_250_0_False_shift: signed(29 downto 0);
  signal c_272_sel: std_logic_vector(1 downto 0);
  signal c_273: signed(24 downto 0);
  signal c_274: signed(24 downto 0);
  signal c_275: signed(24 downto 0);
  signal c_276: signed(24 downto 0);
  signal c_277: signed(24 downto 0);
  signal c_278: signed(24 downto 0);
  signal c_279: signed(29 downto 0);
  signal c_279_278_0_False_resize: signed(29 downto 0);
  signal c_279_278_0_False_shift: signed(29 downto 0);
  signal c_279_269_0_False_resize: signed(29 downto 0);
  signal c_279_269_0_False_shift: signed(29 downto 0);
  signal c_279_265_0_False_resize: signed(29 downto 0);
  signal c_279_265_0_False_shift: signed(29 downto 0);
  signal c_279_276_0_False_resize: signed(29 downto 0);
  signal c_279_276_0_False_shift: signed(29 downto 0);
  signal c_279_sel: std_logic_vector(1 downto 0);
  signal c_280: signed(24 downto 0);
  signal c_280_i0_resize: signed(29 downto 0);
  signal c_280_i1_resize: signed(29 downto 0);
  signal c_280_i0_shift: signed(29 downto 0);
  signal c_280_i1_shift: signed(29 downto 0);
  signal c_280_arith: signed(29 downto 0);
  signal c_280_oshift: signed(24 downto 0);
  signal c_280_sub_sel: std_logic;
  signal c_281: signed(15 downto 0);
  signal c_282: signed(15 downto 0);
  signal c_283: signed(15 downto 0);
  signal c_284: signed(15 downto 0);
  signal c_285: signed(28 downto 0);
  signal c_286: signed(28 downto 0);
  signal c_287: signed(28 downto 0);
  signal c_288: signed(28 downto 0);
  signal c_289: signed(28 downto 0);
  signal c_290: signed(28 downto 0);
  signal c_291: signed(28 downto 0);
  signal c_292: signed(28 downto 0);
  signal c_293: signed(29 downto 0);
  signal c_294: signed(29 downto 0);
  signal c_295: signed(29 downto 0);
  signal c_296: signed(29 downto 0);
  signal c_297: signed(29 downto 0);
  signal c_298: signed(29 downto 0);
  signal c_299: signed(29 downto 0);
  signal c_300: signed(29 downto 0);
  signal c_301: signed(29 downto 0);
  signal c_302: signed(29 downto 0);
  signal c_303: signed(29 downto 0);
  signal c_304: signed(29 downto 0);
  signal c_305: signed(28 downto 0);
  signal c_305_284_0_False_resize: signed(28 downto 0);
  signal c_305_284_0_False_shift: signed(28 downto 0);
  signal c_305_280_3_False_resize: signed(28 downto 0);
  signal c_305_280_3_False_shift: signed(28 downto 0);
  signal c_305_292_0_False_resize: signed(28 downto 0);
  signal c_305_292_0_False_shift: signed(28 downto 0);
  signal c_305_304_2_False_resize: signed(28 downto 0);
  signal c_305_304_2_False_shift: signed(28 downto 0);
  signal c_305_sel: std_logic_vector(1 downto 0);
  signal c_306: signed(25 downto 0);
  signal c_306_176_3_False_resize: signed(25 downto 0);
  signal c_306_176_3_False_shift: signed(25 downto 0);
  signal c_306_153_0_False_resize: signed(25 downto 0);
  signal c_306_153_0_False_shift: signed(25 downto 0);
  signal c_306_205_1_False_resize: signed(25 downto 0);
  signal c_306_205_1_False_shift: signed(25 downto 0);
  signal c_306_sel: std_logic_vector(1 downto 0);
  signal c_307: signed(25 downto 0);
  signal c_308: signed(25 downto 0);
  signal c_309: signed(25 downto 0);
  signal c_310: signed(25 downto 0);
  signal c_311: signed(25 downto 0);
  signal c_312: signed(25 downto 0);
  signal c_313: signed(25 downto 0);
  signal c_314: signed(25 downto 0);
  signal c_315: signed(28 downto 0);
  signal c_315_i0_resize: signed(28 downto 0);
  signal c_315_i1_resize: signed(28 downto 0);
  signal c_315_i0_shift: signed(28 downto 0);
  signal c_315_i1_shift: signed(28 downto 0);
  signal c_315_arith: signed(28 downto 0);
  signal c_315_oshift: signed(28 downto 0);
  signal c_315_sub_sel: std_logic;
  signal c_316: signed(29 downto 0);
  signal c_316_176_0_False_resize: signed(29 downto 0);
  signal c_316_176_0_False_shift: signed(29 downto 0);
  signal c_316_174_2_False_resize: signed(29 downto 0);
  signal c_316_174_2_False_shift: signed(29 downto 0);
  signal c_316_sel: std_logic_vector(0 downto 0);
  signal c_317: signed(29 downto 0);
  signal c_317_205_4_False_resize: signed(29 downto 0);
  signal c_317_205_4_False_shift: signed(29 downto 0);
  signal c_317_182_0_False_resize: signed(29 downto 0);
  signal c_317_182_0_False_shift: signed(29 downto 0);
  signal c_317_174_0_False_resize: signed(29 downto 0);
  signal c_317_174_0_False_shift: signed(29 downto 0);
  signal c_317_199_4_False_resize: signed(29 downto 0);
  signal c_317_199_4_False_shift: signed(29 downto 0);
  signal c_317_sel: std_logic_vector(1 downto 0);
  signal c_318: signed(29 downto 0);
  signal c_318_i0_resize: signed(29 downto 0);
  signal c_318_i1_resize: signed(29 downto 0);
  signal c_318_i0_shift: signed(29 downto 0);
  signal c_318_i1_shift: signed(29 downto 0);
  signal c_318_arith: signed(29 downto 0);
  signal c_318_oshift: signed(29 downto 0);
  signal c_319: signed(24 downto 0);
  signal c_320: signed(24 downto 0);
  signal c_321: signed(25 downto 0);
  signal c_321_228_1_False_resize: signed(25 downto 0);
  signal c_321_228_1_False_shift: signed(25 downto 0);
  signal c_321_228_0_False_resize: signed(25 downto 0);
  signal c_321_228_0_False_shift: signed(25 downto 0);
  signal c_321_252_5_False_resize: signed(25 downto 0);
  signal c_321_252_5_False_shift: signed(25 downto 0);
  signal c_321_320_6_False_resize: signed(25 downto 0);
  signal c_321_320_6_False_shift: signed(25 downto 0);
  signal c_321_sel: std_logic_vector(1 downto 0);
  signal c_322: signed(28 downto 0);
  signal c_323: signed(28 downto 0);
  signal c_324: signed(24 downto 0);
  signal c_324_282_0_False_resize: signed(24 downto 0);
  signal c_324_282_0_False_shift: signed(24 downto 0);
  signal c_324_271_0_False_resize: signed(24 downto 0);
  signal c_324_271_0_False_shift: signed(24 downto 0);
  signal c_324_265_0_False_resize: signed(24 downto 0);
  signal c_324_265_0_False_shift: signed(24 downto 0);
  signal c_324_323_0_False_resize: signed(24 downto 0);
  signal c_324_323_0_False_shift: signed(24 downto 0);
  signal c_324_sel: std_logic_vector(1 downto 0);
  signal c_325: signed(25 downto 0);
  signal c_326: signed(25 downto 0);
  signal c_327: signed(25 downto 0);
  signal c_327_i0_resize: signed(25 downto 0);
  signal c_327_i1_resize: signed(25 downto 0);
  signal c_327_i0_shift: signed(25 downto 0);
  signal c_327_i1_shift: signed(25 downto 0);
  signal c_327_arith: signed(25 downto 0);
  signal c_327_oshift: signed(25 downto 0);
  signal c_328: signed(27 downto 0);
  signal c_328_22_6_False_resize: signed(27 downto 0);
  signal c_328_22_6_False_shift: signed(27 downto 0);
  signal c_328_25_0_False_resize: signed(27 downto 0);
  signal c_328_25_0_False_shift: signed(27 downto 0);
  signal c_328_22_0_False_resize: signed(27 downto 0);
  signal c_328_22_0_False_shift: signed(27 downto 0);
  signal c_328_22_3_False_resize: signed(27 downto 0);
  signal c_328_22_3_False_shift: signed(27 downto 0);
  signal c_328_sel: std_logic_vector(1 downto 0);
  signal c_329: signed(25 downto 0);
  signal c_330: signed(25 downto 0);
  signal c_331: signed(25 downto 0);
  signal c_332: signed(25 downto 0);
  signal c_333: signed(26 downto 0);
  signal c_333_284_0_False_resize: signed(26 downto 0);
  signal c_333_284_0_False_shift: signed(26 downto 0);
  signal c_333_280_0_False_resize: signed(26 downto 0);
  signal c_333_280_0_False_shift: signed(26 downto 0);
  signal c_333_332_2_False_resize: signed(26 downto 0);
  signal c_333_332_2_False_shift: signed(26 downto 0);
  signal c_333_327_2_False_resize: signed(26 downto 0);
  signal c_333_327_2_False_shift: signed(26 downto 0);
  signal c_333_sel: std_logic_vector(1 downto 0);
  signal c_334: signed(27 downto 0);
  signal c_335: signed(27 downto 0);
  signal c_336: signed(27 downto 0);
  signal c_337: signed(27 downto 0);
  signal c_338: signed(27 downto 0);
  signal c_339: signed(27 downto 0);
  signal c_340: signed(27 downto 0);
  signal c_341: signed(27 downto 0);
  signal c_342: signed(27 downto 0);
  signal c_343: signed(27 downto 0);
  signal c_344: signed(27 downto 0);
  signal c_345: signed(27 downto 0);
  signal c_346: signed(27 downto 0);
  signal c_347: signed(27 downto 0);
  signal c_348: signed(27 downto 0);
  signal c_349: signed(27 downto 0);
  signal c_350: signed(27 downto 0);
  signal c_351: signed(27 downto 0);
  signal c_352: signed(27 downto 0);
  signal c_353: signed(27 downto 0);
  signal c_354: signed(27 downto 0);
  signal c_355: signed(27 downto 0);
  signal c_356: signed(28 downto 0);
  signal c_356_i0_resize: signed(28 downto 0);
  signal c_356_i1_resize: signed(28 downto 0);
  signal c_356_i0_shift: signed(28 downto 0);
  signal c_356_i1_shift: signed(28 downto 0);
  signal c_356_arith: signed(28 downto 0);
  signal c_356_oshift: signed(28 downto 0);
  signal c_356_sub_sel: std_logic;
  signal c_357: signed(24 downto 0);
  signal c_358: signed(24 downto 0);
  signal c_359: signed(24 downto 0);
  signal c_360: signed(24 downto 0);
  signal c_361: signed(24 downto 0);
  signal c_362: signed(24 downto 0);
  signal c_363: signed(25 downto 0);
  signal c_364: signed(25 downto 0);
  signal c_365: signed(25 downto 0);
  signal c_366: signed(25 downto 0);
  signal c_367: signed(25 downto 0);
  signal c_368: signed(25 downto 0);
  signal c_369: signed(24 downto 0);
  signal c_369_358_2_False_resize: signed(24 downto 0);
  signal c_369_358_2_False_shift: signed(24 downto 0);
  signal c_369_362_0_False_resize: signed(24 downto 0);
  signal c_369_362_0_False_shift: signed(24 downto 0);
  signal c_369_327_0_False_resize: signed(24 downto 0);
  signal c_369_327_0_False_shift: signed(24 downto 0);
  signal c_369_368_0_False_resize: signed(24 downto 0);
  signal c_369_368_0_False_shift: signed(24 downto 0);
  signal c_369_sel: std_logic_vector(1 downto 0);
  signal c_370: signed(25 downto 0);
  signal c_370_139_0_False_resize: signed(25 downto 0);
  signal c_370_139_0_False_shift: signed(25 downto 0);
  signal c_370_103_0_False_resize: signed(25 downto 0);
  signal c_370_103_0_False_shift: signed(25 downto 0);
  signal c_370_178_5_False_resize: signed(25 downto 0);
  signal c_370_178_5_False_shift: signed(25 downto 0);
  signal c_370_105_1_False_resize: signed(25 downto 0);
  signal c_370_105_1_False_shift: signed(25 downto 0);
  signal c_370_sel: std_logic_vector(1 downto 0);
  signal c_371: signed(25 downto 0);
  signal c_372: signed(25 downto 0);
  signal c_373: signed(25 downto 0);
  signal c_374: signed(25 downto 0);
  signal c_375: signed(25 downto 0);
  signal c_376: signed(25 downto 0);
  signal c_377: signed(25 downto 0);
  signal c_378: signed(25 downto 0);
  signal c_379: signed(25 downto 0);
  signal c_380: signed(25 downto 0);
  signal c_381: signed(25 downto 0);
  signal c_382: signed(25 downto 0);
  signal c_383: signed(25 downto 0);
  signal c_383_i0_resize: signed(25 downto 0);
  signal c_383_i1_resize: signed(25 downto 0);
  signal c_383_i0_shift: signed(25 downto 0);
  signal c_383_i1_shift: signed(25 downto 0);
  signal c_383_arith: signed(25 downto 0);
  signal c_383_oshift: signed(25 downto 0);
  signal c_383_sub_sel: std_logic;
  signal c_384: signed(29 downto 0);
  signal c_385: signed(29 downto 0);
  signal c_386: signed(29 downto 0);
  signal c_387: signed(29 downto 0);
  signal c_388: signed(29 downto 0);
  signal c_389: signed(29 downto 0);
  signal c_390: signed(29 downto 0);
  signal c_391: signed(29 downto 0);
  signal c_392: signed(29 downto 0);
  signal c_392_304_0_False_resize: signed(29 downto 0);
  signal c_392_304_0_False_shift: signed(29 downto 0);
  signal c_392_280_0_False_resize: signed(29 downto 0);
  signal c_392_280_0_False_shift: signed(29 downto 0);
  signal c_392_391_0_False_resize: signed(29 downto 0);
  signal c_392_391_0_False_shift: signed(29 downto 0);
  signal c_392_385_2_False_resize: signed(29 downto 0);
  signal c_392_385_2_False_shift: signed(29 downto 0);
  signal c_392_sel: std_logic_vector(1 downto 0);
  signal c_393: signed(15 downto 0);
  signal c_394: signed(15 downto 0);
  signal c_395: signed(24 downto 0);
  signal c_396: signed(24 downto 0);
  signal c_397: signed(28 downto 0);
  signal c_397_396_0_False_resize: signed(28 downto 0);
  signal c_397_396_0_False_shift: signed(28 downto 0);
  signal c_397_394_7_False_resize: signed(28 downto 0);
  signal c_397_394_7_False_shift: signed(28 downto 0);
  signal c_397_356_1_False_resize: signed(28 downto 0);
  signal c_397_356_1_False_shift: signed(28 downto 0);
  signal c_397_383_4_False_resize: signed(28 downto 0);
  signal c_397_383_4_False_shift: signed(28 downto 0);
  signal c_397_sel: std_logic_vector(1 downto 0);
  signal c_398: signed(29 downto 0);
  signal c_399: signed(29 downto 0);
  signal c_400: signed(29 downto 0);
  signal c_400_i0_resize: signed(29 downto 0);
  signal c_400_i1_resize: signed(29 downto 0);
  signal c_400_i0_shift: signed(29 downto 0);
  signal c_400_i1_shift: signed(29 downto 0);
  signal c_400_arith: signed(29 downto 0);
  signal c_400_oshift: signed(29 downto 0);
  signal c_400_sub_sel: std_logic;
  signal c_401: signed(24 downto 0);
  signal c_402: signed(24 downto 0);
  signal c_403: signed(24 downto 0);
  signal c_404: signed(24 downto 0);
  signal c_405: signed(26 downto 0);
  signal c_406: signed(26 downto 0);
  signal c_407: signed(26 downto 0);
  signal c_408: signed(26 downto 0);
  signal c_409: signed(29 downto 0);
  signal c_409_394_2_False_resize: signed(29 downto 0);
  signal c_409_394_2_False_shift: signed(29 downto 0);
  signal c_409_315_1_False_resize: signed(29 downto 0);
  signal c_409_315_1_False_shift: signed(29 downto 0);
  signal c_409_408_1_False_resize: signed(29 downto 0);
  signal c_409_408_1_False_shift: signed(29 downto 0);
  signal c_409_404_0_False_resize: signed(29 downto 0);
  signal c_409_404_0_False_shift: signed(29 downto 0);
  signal c_409_sel: std_logic_vector(1 downto 0);
  signal c_410: signed(15 downto 0);
  signal c_411: signed(15 downto 0);
  signal c_412: signed(28 downto 0);
  signal c_413: signed(28 downto 0);
  signal c_414: signed(28 downto 0);
  signal c_415: signed(28 downto 0);
  signal c_416: signed(28 downto 0);
  signal c_417: signed(28 downto 0);
  signal c_418: signed(24 downto 0);
  signal c_418_417_3_False_resize: signed(24 downto 0);
  signal c_418_417_3_False_shift: signed(24 downto 0);
  signal c_418_400_0_False_resize: signed(24 downto 0);
  signal c_418_400_0_False_shift: signed(24 downto 0);
  signal c_418_411_8_False_resize: signed(24 downto 0);
  signal c_418_411_8_False_shift: signed(24 downto 0);
  signal c_418_411_0_False_resize: signed(24 downto 0);
  signal c_418_411_0_False_shift: signed(24 downto 0);
  signal c_418_sel: std_logic_vector(1 downto 0);
  signal c_419: signed(29 downto 0);
  signal c_420: signed(29 downto 0);
  signal c_421: signed(29 downto 0);
  signal c_421_i0_resize: signed(29 downto 0);
  signal c_421_i1_resize: signed(29 downto 0);
  signal c_421_i0_shift: signed(29 downto 0);
  signal c_421_i1_shift: signed(29 downto 0);
  signal c_421_arith: signed(29 downto 0);
  signal c_421_oshift: signed(29 downto 0);
  signal c_421_sub_sel: std_logic;
  signal c_422: signed(29 downto 0);
  signal c_423: signed(29 downto 0);
  signal c_424: signed(29 downto 0);
  signal c_425: signed(29 downto 0);
  signal c_426: signed(29 downto 0);
  signal c_427: signed(29 downto 0);
  signal c_428: signed(25 downto 0);
  signal c_429: signed(25 downto 0);
  signal c_430: signed(26 downto 0);
  signal c_430_427_0_False_resize: signed(26 downto 0);
  signal c_430_427_0_False_shift: signed(26 downto 0);
  signal c_430_429_1_False_resize: signed(26 downto 0);
  signal c_430_429_1_False_shift: signed(26 downto 0);
  signal c_430_425_2_False_resize: signed(26 downto 0);
  signal c_430_425_2_False_shift: signed(26 downto 0);
  signal c_430_356_9_False_resize: signed(26 downto 0);
  signal c_430_356_9_False_shift: signed(26 downto 0);
  signal c_430_sel: std_logic_vector(1 downto 0);
  signal c_431: signed(15 downto 0);
  signal c_432: signed(15 downto 0);
  signal c_433: signed(24 downto 0);
  signal c_434: signed(24 downto 0);
  signal c_435: signed(24 downto 0);
  signal c_436: signed(24 downto 0);
  signal c_437: signed(25 downto 0);
  signal c_438: signed(25 downto 0);
  signal c_439: signed(25 downto 0);
  signal c_440: signed(25 downto 0);
  signal c_441: signed(25 downto 0);
  signal c_442: signed(25 downto 0);
  signal c_443: signed(25 downto 0);
  signal c_443_432_5_False_resize: signed(25 downto 0);
  signal c_443_432_5_False_shift: signed(25 downto 0);
  signal c_443_442_0_False_resize: signed(25 downto 0);
  signal c_443_442_0_False_shift: signed(25 downto 0);
  signal c_443_436_1_False_resize: signed(25 downto 0);
  signal c_443_436_1_False_shift: signed(25 downto 0);
  signal c_443_421_0_False_resize: signed(25 downto 0);
  signal c_443_421_0_False_shift: signed(25 downto 0);
  signal c_443_sel: std_logic_vector(1 downto 0);
  signal c_444: signed(26 downto 0);
  signal c_445: signed(26 downto 0);
  signal c_446: signed(26 downto 0);
  signal c_447: signed(26 downto 0);
  signal c_448: signed(25 downto 0);
  signal c_448_i0_resize: signed(25 downto 0);
  signal c_448_i1_resize: signed(25 downto 0);
  signal c_448_i0_shift: signed(25 downto 0);
  signal c_448_i1_shift: signed(25 downto 0);
  signal c_448_arith: signed(25 downto 0);
  signal c_448_oshift: signed(25 downto 0);
  signal c_449: signed(24 downto 0);
  signal c_450: signed(24 downto 0);
  signal c_451: signed(28 downto 0);
  signal c_451_425_0_False_resize: signed(28 downto 0);
  signal c_451_425_0_False_shift: signed(28 downto 0);
  signal c_451_356_0_False_resize: signed(28 downto 0);
  signal c_451_356_0_False_shift: signed(28 downto 0);
  signal c_451_450_0_False_resize: signed(28 downto 0);
  signal c_451_450_0_False_shift: signed(28 downto 0);
  signal c_451_415_0_False_resize: signed(28 downto 0);
  signal c_451_415_0_False_shift: signed(28 downto 0);
  signal c_451_sel: std_logic_vector(1 downto 0);
  signal c_452: signed(29 downto 0);
  signal c_453: signed(29 downto 0);
  signal c_454: signed(29 downto 0);
  signal c_455: signed(29 downto 0);
  signal c_456: signed(29 downto 0);
  signal c_457: signed(29 downto 0);
  signal c_458: signed(29 downto 0);
  signal c_459: signed(29 downto 0);
  signal c_460: signed(29 downto 0);
  signal c_461: signed(29 downto 0);
  signal c_462: signed(29 downto 0);
  signal c_463: signed(29 downto 0);
  signal c_464: signed(29 downto 0);
  signal c_465: signed(29 downto 0);
  signal c_466: signed(29 downto 0);
  signal c_467: signed(29 downto 0);
  signal c_468: signed(28 downto 0);
  signal c_469: signed(28 downto 0);
  signal c_470: signed(28 downto 0);
  signal c_471: signed(28 downto 0);
  signal c_472: signed(28 downto 0);
  signal c_473: signed(28 downto 0);
  signal c_474: signed(28 downto 0);
  signal c_475: signed(28 downto 0);
  signal c_476: signed(28 downto 0);
  signal c_477: signed(28 downto 0);
  signal c_478: signed(25 downto 0);
  signal c_479: signed(25 downto 0);
  signal c_480: signed(25 downto 0);
  signal c_481: signed(25 downto 0);
  signal c_482: signed(25 downto 0);
  signal c_483: signed(25 downto 0);
  signal c_484: signed(29 downto 0);
  signal c_484_483_0_False_resize: signed(29 downto 0);
  signal c_484_483_0_False_shift: signed(29 downto 0);
  signal c_484_467_0_False_resize: signed(29 downto 0);
  signal c_484_467_0_False_shift: signed(29 downto 0);
  signal c_484_448_0_False_resize: signed(29 downto 0);
  signal c_484_448_0_False_shift: signed(29 downto 0);
  signal c_484_477_0_False_resize: signed(29 downto 0);
  signal c_484_477_0_False_shift: signed(29 downto 0);
  signal c_484_sel: std_logic_vector(1 downto 0);
  signal c_485: signed(28 downto 0);
  signal c_486: signed(28 downto 0);
  signal c_487: signed(28 downto 0);
  signal c_488: signed(28 downto 0);
  signal c_489: signed(28 downto 0);
  signal c_490: signed(28 downto 0);
  signal c_491: signed(25 downto 0);
  signal c_491_i0_resize: signed(26 downto 0);
  signal c_491_i1_resize: signed(26 downto 0);
  signal c_491_i0_shift: signed(26 downto 0);
  signal c_491_i1_shift: signed(26 downto 0);
  signal c_491_arith: signed(26 downto 0);
  signal c_491_oshift: signed(25 downto 0);
  signal c_491_sub_sel: std_logic;
  signal c_492: signed(28 downto 0);
  signal c_493: signed(28 downto 0);
  signal c_494: signed(28 downto 0);
  signal c_495: signed(28 downto 0);
  signal c_496: signed(28 downto 0);
  signal c_497: signed(28 downto 0);
  signal c_498: signed(28 downto 0);
  signal c_499: signed(28 downto 0);
  signal c_500: signed(28 downto 0);
  signal c_501: signed(28 downto 0);
  signal c_502: signed(28 downto 0);
  signal c_503: signed(28 downto 0);
  signal c_504: signed(29 downto 0);
  signal c_504_231_4_False_resize: signed(29 downto 0);
  signal c_504_231_4_False_shift: signed(29 downto 0);
  signal c_504_234_3_False_resize: signed(29 downto 0);
  signal c_504_234_3_False_shift: signed(29 downto 0);
  signal c_504_231_0_False_resize: signed(29 downto 0);
  signal c_504_231_0_False_shift: signed(29 downto 0);
  signal c_504_503_0_False_resize: signed(29 downto 0);
  signal c_504_503_0_False_shift: signed(29 downto 0);
  signal c_504_sel: std_logic_vector(1 downto 0);
  signal c_505: signed(26 downto 0);
  signal c_506: signed(26 downto 0);
  signal c_507: signed(26 downto 0);
  signal c_508: signed(26 downto 0);
  signal c_509: signed(29 downto 0);
  signal c_510: signed(29 downto 0);
  signal c_511: signed(29 downto 0);
  signal c_512: signed(29 downto 0);
  signal c_513: signed(28 downto 0);
  signal c_513_421_0_False_resize: signed(28 downto 0);
  signal c_513_421_0_False_shift: signed(28 downto 0);
  signal c_513_508_0_False_resize: signed(28 downto 0);
  signal c_513_508_0_False_shift: signed(28 downto 0);
  signal c_513_432_9_False_resize: signed(28 downto 0);
  signal c_513_432_9_False_shift: signed(28 downto 0);
  signal c_513_512_3_False_resize: signed(28 downto 0);
  signal c_513_512_3_False_shift: signed(28 downto 0);
  signal c_513_sel: std_logic_vector(1 downto 0);
  signal c_514: signed(29 downto 0);
  signal c_515: signed(29 downto 0);
  signal c_516: signed(29 downto 0);
  signal c_517: signed(29 downto 0);
  signal c_518: signed(29 downto 0);
  signal c_519: signed(29 downto 0);
  signal c_520: signed(29 downto 0);
  signal c_521: signed(29 downto 0);
  signal c_522: signed(29 downto 0);
  signal c_523: signed(29 downto 0);
  signal c_524: signed(29 downto 0);
  signal c_524_i0_resize: signed(29 downto 0);
  signal c_524_i1_resize: signed(29 downto 0);
  signal c_524_i0_shift: signed(29 downto 0);
  signal c_524_i1_shift: signed(29 downto 0);
  signal c_524_arith: signed(29 downto 0);
  signal c_524_oshift: signed(29 downto 0);
  signal c_524_sub_sel: std_logic;
  signal c_525: signed(26 downto 0);
  signal c_525_408_1_False_resize: signed(26 downto 0);
  signal c_525_408_1_False_shift: signed(26 downto 0);
  signal c_525_383_0_False_resize: signed(26 downto 0);
  signal c_525_383_0_False_shift: signed(26 downto 0);
  signal c_525_471_0_False_resize: signed(26 downto 0);
  signal c_525_471_0_False_shift: signed(26 downto 0);
  signal c_525_415_8_False_resize: signed(26 downto 0);
  signal c_525_415_8_False_shift: signed(26 downto 0);
  signal c_525_sel: std_logic_vector(1 downto 0);
  signal c_526: signed(24 downto 0);
  signal c_526_234_2_False_resize: signed(24 downto 0);
  signal c_526_234_2_False_shift: signed(24 downto 0);
  signal c_526_228_1_False_resize: signed(24 downto 0);
  signal c_526_228_1_False_shift: signed(24 downto 0);
  signal c_526_252_0_False_resize: signed(24 downto 0);
  signal c_526_252_0_False_shift: signed(24 downto 0);
  signal c_526_320_0_False_resize: signed(24 downto 0);
  signal c_526_320_0_False_shift: signed(24 downto 0);
  signal c_526_sel: std_logic_vector(1 downto 0);
  signal c_527: signed(24 downto 0);
  signal c_528: signed(24 downto 0);
  signal c_529: signed(24 downto 0);
  signal c_530: signed(24 downto 0);
  signal c_531: signed(24 downto 0);
  signal c_532: signed(24 downto 0);
  signal c_533: signed(26 downto 0);
  signal c_533_i0_resize: signed(26 downto 0);
  signal c_533_i1_resize: signed(26 downto 0);
  signal c_533_i0_shift: signed(26 downto 0);
  signal c_533_i1_shift: signed(26 downto 0);
  signal c_533_arith: signed(26 downto 0);
  signal c_533_oshift: signed(26 downto 0);
  signal c_534: signed(25 downto 0);
  signal c_534_284_8_False_resize: signed(25 downto 0);
  signal c_534_284_8_False_shift: signed(25 downto 0);
  signal c_534_292_0_False_resize: signed(25 downto 0);
  signal c_534_292_0_False_shift: signed(25 downto 0);
  signal c_534_327_0_False_resize: signed(25 downto 0);
  signal c_534_327_0_False_shift: signed(25 downto 0);
  signal c_534_292_1_False_resize: signed(25 downto 0);
  signal c_534_292_1_False_shift: signed(25 downto 0);
  signal c_534_sel: std_logic_vector(1 downto 0);
  signal c_535: signed(25 downto 0);
  signal c_536: signed(25 downto 0);
  signal c_537: signed(25 downto 0);
  signal c_538: signed(25 downto 0);
  signal c_539: signed(25 downto 0);
  signal c_540: signed(25 downto 0);
  signal c_541: signed(25 downto 0);
  signal c_542: signed(25 downto 0);
  signal c_543: signed(25 downto 0);
  signal c_544: signed(25 downto 0);
  signal c_545: signed(25 downto 0);
  signal c_546: signed(25 downto 0);
  signal c_547: signed(25 downto 0);
  signal c_548: signed(25 downto 0);
  signal c_549: signed(25 downto 0);
  signal c_550: signed(25 downto 0);
  signal c_551: signed(25 downto 0);
  signal c_552: signed(25 downto 0);
  signal c_553: signed(25 downto 0);
  signal c_554: signed(25 downto 0);
  signal c_555: signed(25 downto 0);
  signal c_556: signed(25 downto 0);
  signal c_557: signed(24 downto 0);
  signal c_558: signed(24 downto 0);
  signal c_559: signed(24 downto 0);
  signal c_560: signed(24 downto 0);
  signal c_561: signed(24 downto 0);
  signal c_562: signed(24 downto 0);
  signal c_563: signed(25 downto 0);
  signal c_563_524_0_False_resize: signed(25 downto 0);
  signal c_563_524_0_False_shift: signed(25 downto 0);
  signal c_563_556_0_False_resize: signed(25 downto 0);
  signal c_563_556_0_False_shift: signed(25 downto 0);
  signal c_563_562_1_False_resize: signed(25 downto 0);
  signal c_563_562_1_False_shift: signed(25 downto 0);
  signal c_563_554_0_False_resize: signed(25 downto 0);
  signal c_563_554_0_False_shift: signed(25 downto 0);
  signal c_563_sel: std_logic_vector(1 downto 0);
  signal c_564: signed(25 downto 0);
  signal c_565: signed(25 downto 0);
  signal c_566: signed(25 downto 0);
  signal c_567: signed(25 downto 0);
  signal c_568: signed(25 downto 0);
  signal c_569: signed(25 downto 0);
  signal c_570: signed(25 downto 0);
  signal c_571: signed(25 downto 0);
  signal c_572: signed(25 downto 0);
  signal c_572_i0_resize: signed(25 downto 0);
  signal c_572_i1_resize: signed(25 downto 0);
  signal c_572_i0_shift: signed(25 downto 0);
  signal c_572_i1_shift: signed(25 downto 0);
  signal c_572_arith: signed(25 downto 0);
  signal c_572_oshift: signed(25 downto 0);
  signal c_572_sub_sel: std_logic;
  signal c_573: signed(15 downto 0);
  signal c_574: signed(15 downto 0);
  signal c_575: signed(24 downto 0);
  signal c_576: signed(24 downto 0);
  signal c_577: signed(24 downto 0);
  signal c_578: signed(24 downto 0);
  signal c_579: signed(24 downto 0);
  signal c_580: signed(24 downto 0);
  signal c_581: signed(29 downto 0);
  signal c_582: signed(29 downto 0);
  signal c_583: signed(29 downto 0);
  signal c_584: signed(29 downto 0);
  signal c_585: signed(29 downto 0);
  signal c_586: signed(29 downto 0);
  signal c_587: signed(29 downto 0);
  signal c_588: signed(29 downto 0);
  signal c_589: signed(29 downto 0);
  signal c_590: signed(29 downto 0);
  signal c_591: signed(25 downto 0);
  signal c_591_448_1_False_resize: signed(25 downto 0);
  signal c_591_448_1_False_shift: signed(25 downto 0);
  signal c_591_590_0_False_resize: signed(25 downto 0);
  signal c_591_590_0_False_shift: signed(25 downto 0);
  signal c_591_574_0_False_resize: signed(25 downto 0);
  signal c_591_574_0_False_shift: signed(25 downto 0);
  signal c_591_580_1_False_resize: signed(25 downto 0);
  signal c_591_580_1_False_shift: signed(25 downto 0);
  signal c_591_sel: std_logic_vector(1 downto 0);
  signal c_592: signed(25 downto 0);
  signal c_592_394_0_False_resize: signed(25 downto 0);
  signal c_592_394_0_False_shift: signed(25 downto 0);
  signal c_592_394_3_False_resize: signed(25 downto 0);
  signal c_592_394_3_False_shift: signed(25 downto 0);
  signal c_592_315_0_False_resize: signed(25 downto 0);
  signal c_592_315_0_False_shift: signed(25 downto 0);
  signal c_592_548_4_False_resize: signed(25 downto 0);
  signal c_592_548_4_False_shift: signed(25 downto 0);
  signal c_592_sel: std_logic_vector(1 downto 0);
  signal c_593: signed(25 downto 0);
  signal c_594: signed(25 downto 0);
  signal c_595: signed(25 downto 0);
  signal c_596: signed(25 downto 0);
  signal c_597: signed(25 downto 0);
  signal c_598: signed(25 downto 0);
  signal c_599: signed(25 downto 0);
  signal c_599_i0_resize: signed(25 downto 0);
  signal c_599_i1_resize: signed(25 downto 0);
  signal c_599_i0_shift: signed(25 downto 0);
  signal c_599_i1_shift: signed(25 downto 0);
  signal c_599_arith: signed(25 downto 0);
  signal c_599_oshift: signed(25 downto 0);
  signal c_599_sub_sel: std_logic;
  signal c_600: signed(15 downto 0);
  signal c_601: signed(15 downto 0);
  signal c_602: signed(28 downto 0);
  signal c_603: signed(28 downto 0);
  signal c_604: signed(28 downto 0);
  signal c_605: signed(28 downto 0);
  signal c_606: signed(28 downto 0);
  signal c_607: signed(28 downto 0);
  signal c_608: signed(28 downto 0);
  signal c_609: signed(28 downto 0);
  signal c_610: signed(27 downto 0);
  signal c_610_599_0_False_resize: signed(27 downto 0);
  signal c_610_599_0_False_shift: signed(27 downto 0);
  signal c_610_607_2_False_resize: signed(27 downto 0);
  signal c_610_607_2_False_shift: signed(27 downto 0);
  signal c_610_601_12_False_resize: signed(27 downto 0);
  signal c_610_601_12_False_shift: signed(27 downto 0);
  signal c_610_609_0_False_resize: signed(27 downto 0);
  signal c_610_609_0_False_shift: signed(27 downto 0);
  signal c_610_sel: std_logic_vector(1 downto 0);
  signal c_611: signed(27 downto 0);
  signal c_612: signed(27 downto 0);
  signal c_613: signed(27 downto 0);
  signal c_614: signed(27 downto 0);
  signal c_615: signed(27 downto 0);
  signal c_616: signed(27 downto 0);
  signal c_617: signed(27 downto 0);
  signal c_618: signed(27 downto 0);
  signal c_619: signed(27 downto 0);
  signal c_620: signed(27 downto 0);
  signal c_621: signed(27 downto 0);
  signal c_622: signed(27 downto 0);
  signal c_623: signed(27 downto 0);
  signal c_624: signed(27 downto 0);
  signal c_625: signed(27 downto 0);
  signal c_626: signed(27 downto 0);
  signal c_627: signed(27 downto 0);
  signal c_628: signed(27 downto 0);
  signal c_629: signed(28 downto 0);
  signal c_630: signed(28 downto 0);
  signal c_631: signed(28 downto 0);
  signal c_632: signed(28 downto 0);
  signal c_633: signed(28 downto 0);
  signal c_634: signed(28 downto 0);
  signal c_635: signed(28 downto 0);
  signal c_636: signed(28 downto 0);
  signal c_637: signed(27 downto 0);
  signal c_637_609_6_False_resize: signed(27 downto 0);
  signal c_637_609_6_False_shift: signed(27 downto 0);
  signal c_637_491_0_False_resize: signed(27 downto 0);
  signal c_637_491_0_False_shift: signed(27 downto 0);
  signal c_637_636_0_False_resize: signed(27 downto 0);
  signal c_637_636_0_False_shift: signed(27 downto 0);
  signal c_637_628_0_False_resize: signed(27 downto 0);
  signal c_637_628_0_False_shift: signed(27 downto 0);
  signal c_637_sel: std_logic_vector(1 downto 0);
  signal c_638: signed(24 downto 0);
  signal c_638_i0_resize: signed(24 downto 0);
  signal c_638_i1_resize: signed(24 downto 0);
  signal c_638_i0_shift: signed(24 downto 0);
  signal c_638_i1_shift: signed(24 downto 0);
  signal c_638_arith: signed(24 downto 0);
  signal c_638_oshift: signed(24 downto 0);
  signal c_638_sub_sel: std_logic;
  signal c_639: signed(29 downto 0);
  signal c_640: signed(29 downto 0);
  signal c_641: signed(29 downto 0);
  signal c_642: signed(29 downto 0);
  signal c_643: signed(29 downto 0);
  signal c_644: signed(29 downto 0);
  signal c_645: signed(29 downto 0);
  signal c_646: signed(29 downto 0);
  signal c_647: signed(29 downto 0);
  signal c_648: signed(29 downto 0);
  signal c_649: signed(29 downto 0);
  signal c_650: signed(29 downto 0);
  signal c_651: signed(29 downto 0);
  signal c_651_524_5_False_resize: signed(29 downto 0);
  signal c_651_524_5_False_shift: signed(29 downto 0);
  signal c_651_650_0_False_resize: signed(29 downto 0);
  signal c_651_650_0_False_shift: signed(29 downto 0);
  signal c_651_646_0_False_resize: signed(29 downto 0);
  signal c_651_646_0_False_shift: signed(29 downto 0);
  signal c_651_648_0_False_resize: signed(29 downto 0);
  signal c_651_648_0_False_shift: signed(29 downto 0);
  signal c_651_sel: std_logic_vector(1 downto 0);
  signal c_652: signed(28 downto 0);
  signal c_653: signed(28 downto 0);
  signal c_654: signed(28 downto 0);
  signal c_655: signed(28 downto 0);
  signal c_656: signed(28 downto 0);
  signal c_657: signed(28 downto 0);
  signal c_658: signed(28 downto 0);
  signal c_659: signed(28 downto 0);
  signal c_660: signed(26 downto 0);
  signal c_661: signed(26 downto 0);
  signal c_662: signed(29 downto 0);
  signal c_662_524_0_False_resize: signed(29 downto 0);
  signal c_662_524_0_False_shift: signed(29 downto 0);
  signal c_662_590_0_False_resize: signed(29 downto 0);
  signal c_662_590_0_False_shift: signed(29 downto 0);
  signal c_662_661_1_False_resize: signed(29 downto 0);
  signal c_662_661_1_False_shift: signed(29 downto 0);
  signal c_662_659_0_False_resize: signed(29 downto 0);
  signal c_662_659_0_False_shift: signed(29 downto 0);
  signal c_662_sel: std_logic_vector(1 downto 0);
  signal c_663: signed(29 downto 0);
  signal c_663_i0_resize: signed(29 downto 0);
  signal c_663_i1_resize: signed(29 downto 0);
  signal c_663_i0_shift: signed(29 downto 0);
  signal c_663_i1_shift: signed(29 downto 0);
  signal c_663_arith: signed(29 downto 0);
  signal c_663_oshift: signed(29 downto 0);
  signal c_663_sub_sel: std_logic;
  signal c_664: signed(25 downto 0);
  signal c_664_205_2_False_resize: signed(25 downto 0);
  signal c_664_205_2_False_shift: signed(25 downto 0);
  signal c_664_174_6_False_resize: signed(25 downto 0);
  signal c_664_174_6_False_shift: signed(25 downto 0);
  signal c_664_236_1_False_resize: signed(25 downto 0);
  signal c_664_236_1_False_shift: signed(25 downto 0);
  signal c_664_176_0_False_resize: signed(25 downto 0);
  signal c_664_176_0_False_shift: signed(25 downto 0);
  signal c_664_sel: std_logic_vector(1 downto 0);
  signal c_665: signed(29 downto 0);
  signal c_666: signed(29 downto 0);
  signal c_667: signed(29 downto 0);
  signal c_668: signed(29 downto 0);
  signal c_669: signed(29 downto 0);
  signal c_670: signed(29 downto 0);
  signal c_671: signed(29 downto 0);
  signal c_672: signed(29 downto 0);
  signal c_673: signed(29 downto 0);
  signal c_674: signed(29 downto 0);
  signal c_675: signed(29 downto 0);
  signal c_676: signed(29 downto 0);
  signal c_677: signed(24 downto 0);
  signal c_678: signed(24 downto 0);
  signal c_679: signed(24 downto 0);
  signal c_680: signed(24 downto 0);
  signal c_681: signed(25 downto 0);
  signal c_682: signed(25 downto 0);
  signal c_683: signed(25 downto 0);
  signal c_684: signed(25 downto 0);
  signal c_685: signed(24 downto 0);
  signal c_685_680_0_False_resize: signed(24 downto 0);
  signal c_685_680_0_False_shift: signed(24 downto 0);
  signal c_685_638_0_False_resize: signed(24 downto 0);
  signal c_685_638_0_False_shift: signed(24 downto 0);
  signal c_685_676_3_False_resize: signed(24 downto 0);
  signal c_685_676_3_False_shift: signed(24 downto 0);
  signal c_685_684_0_False_resize: signed(24 downto 0);
  signal c_685_684_0_False_shift: signed(24 downto 0);
  signal c_685_sel: std_logic_vector(1 downto 0);
  signal c_686: signed(25 downto 0);
  signal c_687: signed(25 downto 0);
  signal c_688: signed(25 downto 0);
  signal c_689: signed(25 downto 0);
  signal c_690: signed(25 downto 0);
  signal c_691: signed(25 downto 0);
  signal c_692: signed(25 downto 0);
  signal c_693: signed(25 downto 0);
  signal c_694: signed(25 downto 0);
  signal c_695: signed(25 downto 0);
  signal c_696: signed(25 downto 0);
  signal c_697: signed(25 downto 0);
  signal c_698: signed(25 downto 0);
  signal c_699: signed(25 downto 0);
  signal c_700: signed(25 downto 0);
  signal c_701: signed(25 downto 0);
  signal c_702: signed(25 downto 0);
  signal c_703: signed(25 downto 0);
  signal c_704: signed(25 downto 0);
  signal c_705: signed(25 downto 0);
  signal c_706: signed(25 downto 0);
  signal c_706_i0_resize: signed(25 downto 0);
  signal c_706_i1_resize: signed(25 downto 0);
  signal c_706_i0_shift: signed(25 downto 0);
  signal c_706_i1_shift: signed(25 downto 0);
  signal c_706_arith: signed(25 downto 0);
  signal c_706_oshift: signed(25 downto 0);
  signal c_706_sub_sel: std_logic;
  signal c_707: signed(24 downto 0);
  signal c_708: signed(24 downto 0);
  signal c_709: signed(24 downto 0);
  signal c_710: signed(24 downto 0);
  signal c_711: signed(24 downto 0);
  signal c_712: signed(24 downto 0);
  signal c_713: signed(24 downto 0);
  signal c_714: signed(24 downto 0);
  signal c_715: signed(24 downto 0);
  signal c_716: signed(24 downto 0);
  signal c_717: signed(29 downto 0);
  signal c_718: signed(29 downto 0);
  signal c_719: signed(25 downto 0);
  signal c_720: signed(25 downto 0);
  signal c_721: signed(25 downto 0);
  signal c_721_599_0_False_resize: signed(25 downto 0);
  signal c_721_599_0_False_shift: signed(25 downto 0);
  signal c_721_720_0_False_resize: signed(25 downto 0);
  signal c_721_720_0_False_shift: signed(25 downto 0);
  signal c_721_718_1_False_resize: signed(25 downto 0);
  signal c_721_718_1_False_shift: signed(25 downto 0);
  signal c_721_716_1_False_resize: signed(25 downto 0);
  signal c_721_716_1_False_shift: signed(25 downto 0);
  signal c_721_sel: std_logic_vector(1 downto 0);
  signal c_722: signed(26 downto 0);
  signal c_723: signed(26 downto 0);
  signal c_724: signed(26 downto 0);
  signal c_725: signed(26 downto 0);
  signal c_726: signed(26 downto 0);
  signal c_727: signed(26 downto 0);
  signal c_728: signed(26 downto 0);
  signal c_729: signed(26 downto 0);
  signal c_730: signed(26 downto 0);
  signal c_731: signed(26 downto 0);
  signal c_732: signed(25 downto 0);
  signal c_733: signed(25 downto 0);
  signal c_734: signed(25 downto 0);
  signal c_735: signed(25 downto 0);
  signal c_736: signed(24 downto 0);
  signal c_737: signed(24 downto 0);
  signal c_738: signed(25 downto 0);
  signal c_738_706_0_False_resize: signed(25 downto 0);
  signal c_738_706_0_False_shift: signed(25 downto 0);
  signal c_738_735_0_False_resize: signed(25 downto 0);
  signal c_738_735_0_False_shift: signed(25 downto 0);
  signal c_738_737_4_False_resize: signed(25 downto 0);
  signal c_738_737_4_False_shift: signed(25 downto 0);
  signal c_738_731_0_False_resize: signed(25 downto 0);
  signal c_738_731_0_False_shift: signed(25 downto 0);
  signal c_738_sel: std_logic_vector(1 downto 0);
  signal c_739: signed(24 downto 0);
  signal c_740: signed(24 downto 0);
  signal c_741: signed(24 downto 0);
  signal c_742: signed(24 downto 0);
  signal c_743: signed(24 downto 0);
  signal c_744: signed(24 downto 0);
  signal c_745: signed(29 downto 0);
  signal c_746: signed(29 downto 0);
  signal c_747: signed(29 downto 0);
  signal c_748: signed(29 downto 0);
  signal c_749: signed(29 downto 0);
  signal c_750: signed(29 downto 0);
  signal c_751: signed(29 downto 0);
  signal c_752: signed(29 downto 0);
  signal c_753: signed(25 downto 0);
  signal c_753_680_1_False_resize: signed(25 downto 0);
  signal c_753_680_1_False_shift: signed(25 downto 0);
  signal c_753_752_0_False_resize: signed(25 downto 0);
  signal c_753_752_0_False_shift: signed(25 downto 0);
  signal c_753_744_0_False_resize: signed(25 downto 0);
  signal c_753_744_0_False_shift: signed(25 downto 0);
  signal c_753_638_0_False_resize: signed(25 downto 0);
  signal c_753_638_0_False_shift: signed(25 downto 0);
  signal c_753_sel: std_logic_vector(1 downto 0);
  signal c_754: signed(29 downto 0);
  signal c_755: signed(29 downto 0);
  signal c_756: signed(25 downto 0);
  signal c_756_755_0_False_resize: signed(25 downto 0);
  signal c_756_755_0_False_shift: signed(25 downto 0);
  signal c_756_572_2_False_resize: signed(25 downto 0);
  signal c_756_572_2_False_shift: signed(25 downto 0);
  signal c_756_491_0_False_resize: signed(25 downto 0);
  signal c_756_491_0_False_shift: signed(25 downto 0);
  signal c_756_663_0_False_resize: signed(25 downto 0);
  signal c_756_663_0_False_shift: signed(25 downto 0);
  signal c_756_sel: std_logic_vector(1 downto 0);
  signal c_757: signed(25 downto 0);
  signal c_757_630_0_False_resize: signed(25 downto 0);
  signal c_757_630_0_False_shift: signed(25 downto 0);
  signal c_757_533_1_False_resize: signed(25 downto 0);
  signal c_757_533_1_False_shift: signed(25 downto 0);
  signal c_757_479_0_False_resize: signed(25 downto 0);
  signal c_757_479_0_False_shift: signed(25 downto 0);
  signal c_757_558_0_False_resize: signed(25 downto 0);
  signal c_757_558_0_False_shift: signed(25 downto 0);
  signal c_757_sel: std_logic_vector(1 downto 0);
  signal c_758: signed(24 downto 0);
  signal c_759: signed(24 downto 0);
  signal c_760: signed(26 downto 0);
  signal c_761: signed(26 downto 0);
  signal c_762: signed(26 downto 0);
  signal c_763: signed(26 downto 0);
  signal c_764: signed(26 downto 0);
  signal c_765: signed(26 downto 0);
  signal c_766: signed(25 downto 0);
  signal c_766_759_0_False_resize: signed(25 downto 0);
  signal c_766_759_0_False_shift: signed(25 downto 0);
  signal c_766_765_0_False_resize: signed(25 downto 0);
  signal c_766_765_0_False_shift: signed(25 downto 0);
  signal c_766_706_0_False_resize: signed(25 downto 0);
  signal c_766_706_0_False_shift: signed(25 downto 0);
  signal c_766_sel: std_logic_vector(1 downto 0);
  signal c_767: signed(28 downto 0);
  signal c_768: signed(28 downto 0);
  signal c_769: signed(28 downto 0);
  signal c_770: signed(28 downto 0);
  signal c_771: signed(28 downto 0);
  signal c_772: signed(28 downto 0);
  signal c_773: signed(28 downto 0);
  signal c_774: signed(28 downto 0);
  signal c_775: signed(25 downto 0);
  signal c_775_774_0_False_resize: signed(25 downto 0);
  signal c_775_774_0_False_shift: signed(25 downto 0);
  signal c_775_599_0_False_resize: signed(25 downto 0);
  signal c_775_599_0_False_shift: signed(25 downto 0);
  signal c_775_572_0_False_resize: signed(25 downto 0);
  signal c_775_572_0_False_shift: signed(25 downto 0);
  signal c_775_663_0_False_resize: signed(25 downto 0);
  signal c_775_663_0_False_shift: signed(25 downto 0);
  signal c_775_sel: std_logic_vector(1 downto 0);
  signal c_776: signed(29 downto 0);
  signal c_777: signed(29 downto 0);
  signal c_778: signed(29 downto 0);
  signal c_779: signed(29 downto 0);
  signal c_780: signed(29 downto 0);
  signal c_781: signed(29 downto 0);
  signal c_782: signed(29 downto 0);
  signal c_783: signed(29 downto 0);
  signal c_784: signed(29 downto 0);
  signal c_785: signed(29 downto 0);
  signal c_786: signed(29 downto 0);
  signal c_787: signed(29 downto 0);
  signal c_788: signed(29 downto 0);
  signal c_789: signed(29 downto 0);
  signal c_790: signed(29 downto 0);
  signal c_791: signed(29 downto 0);
  signal c_792: signed(29 downto 0);
  signal c_793: signed(29 downto 0);
  signal c_794: signed(29 downto 0);
  signal c_795: signed(29 downto 0);
  signal c_796: signed(25 downto 0);
  signal c_796_795_1_False_resize: signed(25 downto 0);
  signal c_796_795_1_False_shift: signed(25 downto 0);
  signal c_796_793_2_False_resize: signed(25 downto 0);
  signal c_796_793_2_False_shift: signed(25 downto 0);
  signal c_796_684_0_False_resize: signed(25 downto 0);
  signal c_796_684_0_False_shift: signed(25 downto 0);
  signal c_796_638_1_False_resize: signed(25 downto 0);
  signal c_796_638_1_False_shift: signed(25 downto 0);
  signal c_796_sel: std_logic_vector(1 downto 0);
  signal c_797: signed(29 downto 0);
  signal c_798: signed(29 downto 0);
  signal c_799: signed(29 downto 0);
  signal c_800: signed(29 downto 0);
  signal c_801: signed(29 downto 0);
  signal c_802: signed(29 downto 0);
  signal c_803: signed(24 downto 0);
  signal c_803_800_0_False_resize: signed(24 downto 0);
  signal c_803_800_0_False_shift: signed(24 downto 0);
  signal c_803_802_0_False_resize: signed(24 downto 0);
  signal c_803_802_0_False_shift: signed(24 downto 0);
  signal c_803_706_1_False_resize: signed(24 downto 0);
  signal c_803_706_1_False_shift: signed(24 downto 0);
  signal c_803_706_0_False_resize: signed(24 downto 0);
  signal c_803_706_0_False_shift: signed(24 downto 0);
  signal c_803_sel: std_logic_vector(1 downto 0);
  signal c_804: signed(29 downto 0);
  signal c_805: signed(29 downto 0);
  signal c_806: signed(25 downto 0);
  signal c_806_805_0_False_resize: signed(25 downto 0);
  signal c_806_805_0_False_shift: signed(25 downto 0);
  signal c_806_727_0_False_resize: signed(25 downto 0);
  signal c_806_727_0_False_shift: signed(25 downto 0);
  signal c_806_599_1_False_resize: signed(25 downto 0);
  signal c_806_599_1_False_shift: signed(25 downto 0);
  signal c_806_491_0_False_resize: signed(25 downto 0);
  signal c_806_491_0_False_shift: signed(25 downto 0);
  signal c_806_sel: std_logic_vector(1 downto 0);
  signal c_807: signed(25 downto 0);
  signal c_808: signed(25 downto 0);
  signal c_809: signed(25 downto 0);
  signal c_810: signed(25 downto 0);
  signal c_811: signed(25 downto 0);
  signal c_811_resize: signed(25 downto 0);
  signal c_812: signed(25 downto 0);
  signal c_812_resize: signed(25 downto 0);
  signal c_813: signed(25 downto 0);
  signal c_814: signed(25 downto 0);
  signal c_815: signed(25 downto 0);
  signal c_815_resize: signed(25 downto 0);
  signal c_816: signed(25 downto 0);
  signal c_817: signed(25 downto 0);
  signal c_818: signed(25 downto 0);
  signal c_819: signed(25 downto 0);
  signal c_820: signed(25 downto 0);
  signal c_820_resize: signed(25 downto 0);
  signal c_821: signed(25 downto 0);
  signal c_822: signed(25 downto 0);
  signal c_823: signed(25 downto 0);
  signal c_824: signed(25 downto 0);
  signal c_825: signed(25 downto 0);
  signal c_826: signed(25 downto 0);
  signal c_827: signed(25 downto 0);
  signal c_828: signed(25 downto 0);
  signal c_829: signed(25 downto 0);
  signal c_830: signed(25 downto 0);
  signal c_831: signed(25 downto 0);
  signal c_831_resize: signed(25 downto 0);
  signal c_832: signed(25 downto 0);
  signal c_832_resize: signed(25 downto 0);
  signal c_833: signed(25 downto 0);
  signal c_834: signed(25 downto 0);
  signal c_835: signed(25 downto 0);
  signal c_836: signed(25 downto 0);
  signal c_837: signed(25 downto 0);
  signal c_837_resize: signed(25 downto 0);
  signal c_838: signed(25 downto 0);
  signal c_839: signed(25 downto 0);
  signal c_840: signed(25 downto 0);
  signal c_840_resize: signed(25 downto 0);
  signal c_841: signed(24 downto 0);
  signal c_841_resize: signed(24 downto 0);
  signal c_842: signed(25 downto 0);
  signal c_843: signed(25 downto 0);
  signal c_844: signed(25 downto 0);
  signal c_845: signed(25 downto 0);
  signal c_846: signed(25 downto 0);
  signal c_846_resize: signed(25 downto 0);
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
      config_select_24 <= config_select_23;
      config_select_25 <= config_select_24;
      config_select_26 <= config_select_25;
      config_select_27 <= config_select_26;
      config_select_28 <= config_select_27;
      config_select_29 <= config_select_28;
      config_select_30 <= config_select_29;
      config_select_31 <= config_select_30;
      config_select_32 <= config_select_31;
      config_select_33 <= config_select_32;
      config_select_34 <= config_select_33;
      config_select_35 <= config_select_34;
      config_select_36 <= config_select_35;
      config_select_37 <= config_select_36;
      config_select_38 <= config_select_37;
      config_select_39 <= config_select_38;
      config_select_40 <= config_select_39;
      config_select_41 <= config_select_40;
      config_select_42 <= config_select_41;
      config_select_43 <= config_select_42;
      config_select_44 <= config_select_43;
      config_select_45 <= config_select_44;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 811
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_811);
    end if;
  end process;
  -- output node 1 with id 812
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_812);
    end if;
  end process;
  -- output node 2 with id 815
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_815);
    end if;
  end process;
  -- output node 3 with id 820
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_820);
    end if;
  end process;
  -- output node 4 with id 831
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_831);
    end if;
  end process;
  -- output node 5 with id 832
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_832);
    end if;
  end process;
  -- output node 6 with id 837
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_837);
    end if;
  end process;
  -- output node 7 with id 840
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_840);
    end if;
  end process;
  -- output node 8 with id 841
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_841);
    end if;
  end process;
  -- output node 9 with id 846
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_846);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [256], [4096], [512]]
  c_1_0_12_False_resize <= resize(c_0, 28);
  c_1_0_12_False_shift <= shift_left(c_1_0_12_False_resize, 12);
  c_1_0_8_False_resize <= resize(c_0, 28);
  c_1_0_8_False_shift <= shift_left(c_1_0_8_False_resize, 8);
  c_1_0_9_False_resize <= resize(c_0, 28);
  c_1_0_9_False_shift <= shift_left(c_1_0_9_False_resize, 9);
  c_1_0_0_False_resize <= resize(c_0, 28);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_12_False_shift;
        when "01" => c_1 <= c_1_0_8_False_shift;
        when "10" => c_1 <= c_1_0_9_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [32], [4096], [128]]
  c_2_0_7_False_resize <= resize(c_0, 28);
  c_2_0_7_False_shift <= shift_left(c_2_0_7_False_resize, 7);
  c_2_0_5_False_resize <= resize(c_0, 28);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  c_2_0_12_False_resize <= resize(c_0, 28);
  c_2_0_12_False_shift <= shift_left(c_2_0_12_False_resize, 12);
  c_2_0_0_False_resize <= resize(c_0, 28);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_7_False_shift;
        when "01" => c_2 <= c_2_0_5_False_shift;
        when "10" => c_2 <= c_2_0_12_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[2], [288], [8192], [384]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 28,
      w_o => 29,
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
      c_3 <= c_3_oshift(28 downto 0);
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [32], [4096], [384]]
  c_6_5_5_False_resize <= resize(c_5, 28);
  c_6_5_5_False_shift <= shift_left(c_6_5_5_False_resize, 5);
  c_6_5_0_False_resize <= resize(c_5, 28);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  c_6_5_12_False_resize <= resize(c_5, 28);
  c_6_5_12_False_shift <= shift_left(c_6_5_12_False_resize, 12);
  c_6_3_0_False_resize <= c_3(27 downto 0);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_5_5_False_shift;
        when "01" => c_6 <= c_6_5_0_False_shift;
        when "10" => c_6 <= c_6_5_12_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[1], [4], [2048], [32]]
  c_7_0_5_False_resize <= resize(c_0, 27);
  c_7_0_5_False_shift <= shift_left(c_7_0_5_False_resize, 5);
  c_7_0_11_False_resize <= resize(c_0, 27);
  c_7_0_11_False_shift <= shift_left(c_7_0_11_False_resize, 11);
  c_7_0_2_False_resize <= resize(c_0, 27);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  c_7_0_0_False_resize <= resize(c_0, 27);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_5_False_shift;
        when "01" => c_7 <= c_7_0_11_False_shift;
        when "10" => c_7 <= c_7_0_2_False_shift;
        when others => c_7 <= c_7_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [4], [2048], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [4], [2048], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[0], [28], [6144], [352]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
      w_o => 29,
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
      c_10 <= c_10_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[2], [8], [256], [1]]
  c_11_0_8_False_resize <= resize(c_0, 24);
  c_11_0_8_False_shift <= shift_left(c_11_0_8_False_resize, 8);
  c_11_0_1_False_resize <= resize(c_0, 24);
  c_11_0_1_False_shift <= shift_left(c_11_0_1_False_resize, 1);
  c_11_0_0_False_resize <= resize(c_0, 24);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  c_11_0_3_False_resize <= resize(c_0, 24);
  c_11_0_3_False_shift <= shift_left(c_11_0_3_False_resize, 3);
  with config_select_1 select c_11_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_0_8_False_shift;
        when "01" => c_11 <= c_11_0_1_False_shift;
        when "10" => c_11 <= c_11_0_0_False_shift;
        when others => c_11 <= c_11_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[64], [1], [256], [32]]
  c_12_3_5_False_resize <= c_3(23 downto 0);
  c_12_3_5_False_shift <= shift_left(c_12_3_5_False_resize, 5);
  c_12_5_8_False_resize <= resize(c_5, 24);
  c_12_5_8_False_shift <= shift_left(c_12_5_8_False_resize, 8);
  c_12_5_0_False_resize <= resize(c_5, 24);
  c_12_5_0_False_shift <= shift_left(c_12_5_0_False_resize, 0);
  c_12_5_5_False_resize <= resize(c_5, 24);
  c_12_5_5_False_shift <= shift_left(c_12_5_5_False_resize, 5);
  with config_select_3 select c_12_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_3_5_False_shift;
        when "01" => c_12 <= c_12_5_8_False_shift;
        when "10" => c_12 <= c_12_5_0_False_shift;
        when others => c_12 <= c_12_5_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 13 and associated fundamentals [[2], [8], [256], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[2], [8], [256], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 15 and associated fundamentals [[66], [9], [512], [33]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 25,
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
      x_i => c_14,
      y_i => c_12,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[512], [448], [8192], [352]]
  c_18_17_8_False_resize <= c_17;
  c_18_17_8_False_shift <= shift_left(c_18_17_8_False_resize, 8);
  c_18_10_4_False_resize <= c_10;
  c_18_10_4_False_shift <= shift_left(c_18_10_4_False_resize, 4);
  c_18_17_0_False_resize <= c_17;
  c_18_17_0_False_shift <= shift_left(c_18_17_0_False_resize, 0);
  c_18_10_0_False_resize <= c_10;
  c_18_10_0_False_shift <= shift_left(c_18_10_0_False_resize, 0);
  with config_select_5 select c_18_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_17_8_False_shift;
        when "01" => c_18 <= c_18_10_4_False_shift;
        when "10" => c_18 <= c_18_17_0_False_shift;
        when others => c_18 <= c_18_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 21 and associated fundamentals [[16], [9], [2048], [66]]
  c_21_15_1_False_resize <= resize(c_15, 27);
  c_21_15_1_False_shift <= shift_left(c_21_15_1_False_resize, 1);
  c_21_20_4_False_resize <= resize(c_20, 27);
  c_21_20_4_False_shift <= shift_left(c_21_20_4_False_resize, 4);
  c_21_15_0_False_resize <= resize(c_15, 27);
  c_21_15_0_False_shift <= shift_left(c_21_15_0_False_resize, 0);
  c_21_15_2_False_resize <= resize(c_15, 27);
  c_21_15_2_False_shift <= shift_left(c_21_15_2_False_resize, 2);
  with config_select_5 select c_21_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_15_1_False_shift;
        when "01" => c_21 <= c_21_20_4_False_shift;
        when "10" => c_21 <= c_21_15_0_False_shift;
        when others => c_21 <= c_21_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 22 and associated fundamentals [[448], [412], [0], [88]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 27,
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
      x_i => c_18,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 23 and associated fundamentals [[1], [2], [2048], [64]]
  c_23_20_0_False_resize <= resize(c_20, 27);
  c_23_20_0_False_shift <= shift_left(c_23_20_0_False_resize, 0);
  c_23_20_1_False_resize <= resize(c_20, 27);
  c_23_20_1_False_shift <= shift_left(c_23_20_1_False_resize, 1);
  c_23_20_6_False_resize <= resize(c_20, 27);
  c_23_20_6_False_shift <= shift_left(c_23_20_6_False_resize, 6);
  c_23_15_2_False_resize <= resize(c_15, 27);
  c_23_15_2_False_shift <= shift_left(c_23_15_2_False_resize, 2);
  with config_select_5 select c_23_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_20_0_False_shift;
        when "01" => c_23 <= c_23_20_1_False_shift;
        when "10" => c_23 <= c_23_20_6_False_shift;
        when others => c_23 <= c_23_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[896], [412], [4096], [1]]
  c_26_25_12_False_resize <= resize(c_25, 28);
  c_26_25_12_False_shift <= shift_left(c_26_25_12_False_resize, 12);
  c_26_22_0_False_resize <= resize(c_22, 28);
  c_26_22_0_False_shift <= shift_left(c_26_22_0_False_resize, 0);
  c_26_22_1_False_resize <= resize(c_22, 28);
  c_26_22_1_False_shift <= shift_left(c_26_22_1_False_resize, 1);
  c_26_25_0_False_resize <= resize(c_25, 28);
  c_26_25_0_False_shift <= shift_left(c_26_25_0_False_resize, 0);
  with config_select_7 select c_26_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_25_12_False_shift;
        when "01" => c_26 <= c_26_22_0_False_shift;
        when "10" => c_26 <= c_26_22_1_False_shift;
        when others => c_26 <= c_26_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[1], [2], [2048], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[1], [2], [2048], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 29 and associated fundamentals [[898], [416], [8192], [129]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 28,
      w_o => 29,
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
      x_i => c_28,
      y_i => c_26,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 30 and associated fundamentals [[128], [1648], [1], [2048]]
  c_30_25_7_False_resize <= resize(c_25, 27);
  c_30_25_7_False_shift <= shift_left(c_30_25_7_False_resize, 7);
  c_30_22_2_False_resize <= resize(c_22, 27);
  c_30_22_2_False_shift <= shift_left(c_30_22_2_False_resize, 2);
  c_30_25_0_False_resize <= resize(c_25, 27);
  c_30_25_0_False_shift <= shift_left(c_30_25_0_False_resize, 0);
  c_30_25_11_False_resize <= resize(c_25, 27);
  c_30_25_11_False_shift <= shift_left(c_30_25_11_False_resize, 11);
  with config_select_7 select c_30_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_25_7_False_shift;
        when "01" => c_30 <= c_30_22_2_False_shift;
        when "10" => c_30 <= c_30_25_0_False_shift;
        when others => c_30 <= c_30_25_11_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[16], [9], [1], [264]]
  c_31_15_3_False_resize <= c_15;
  c_31_15_3_False_shift <= shift_left(c_31_15_3_False_resize, 3);
  c_31_20_0_False_resize <= resize(c_20, 25);
  c_31_20_0_False_shift <= shift_left(c_31_20_0_False_resize, 0);
  c_31_20_4_False_resize <= resize(c_20, 25);
  c_31_20_4_False_shift <= shift_left(c_31_20_4_False_resize, 4);
  c_31_15_0_False_resize <= c_15;
  c_31_15_0_False_shift <= shift_left(c_31_15_0_False_resize, 0);
  with config_select_5 select c_31_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_15_3_False_shift;
        when "01" => c_31 <= c_31_20_0_False_shift;
        when "10" => c_31 <= c_31_20_4_False_shift;
        when others => c_31 <= c_31_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[16], [9], [1], [264]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[16], [9], [1], [264]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 34 and associated fundamentals [[640], [1360], [33], [10496]]
  with config_select_8 select c_34_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 25,
      w_o => 30,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_34_sub_sel,
      x_i => c_30,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 35 and associated fundamentals [[0], [1], [16], [66]]
  c_35_20_4_False_resize <= resize(c_20, 23);
  c_35_20_4_False_shift <= shift_left(c_35_20_4_False_resize, 4);
  c_35_20_0_False_resize <= resize(c_20, 23);
  c_35_20_0_False_shift <= shift_left(c_35_20_0_False_resize, 0);
  c_35_15_1_False_resize <= c_15(22 downto 0);
  c_35_15_1_False_shift <= shift_left(c_35_15_1_False_resize, 1);
  c_35_10_0_False_resize <= c_10(22 downto 0);
  c_35_10_0_False_shift <= shift_left(c_35_10_0_False_resize, 0);
  with config_select_5 select c_35_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_20_4_False_shift;
        when "01" => c_35 <= c_35_20_0_False_shift;
        when "10" => c_35 <= c_35_15_1_False_shift;
        when others => c_35 <= c_35_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 37 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 38 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 42 and associated fundamentals [[0], [10880], [33], [8]]
  c_42_37_3_False_resize <= resize(c_37, 30);
  c_42_37_3_False_shift <= shift_left(c_42_37_3_False_resize, 3);
  c_42_34_0_False_resize <= c_34;
  c_42_34_0_False_shift <= shift_left(c_42_34_0_False_resize, 0);
  c_42_41_0_False_resize <= resize(c_41, 30);
  c_42_41_0_False_shift <= shift_left(c_42_41_0_False_resize, 0);
  c_42_34_3_False_resize <= c_34;
  c_42_34_3_False_shift <= shift_left(c_42_34_3_False_resize, 3);
  with config_select_9 select c_42_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_37_3_False_shift;
        when "01" => c_42 <= c_42_34_0_False_shift;
        when "10" => c_42 <= c_42_41_0_False_shift;
        when others => c_42 <= c_42_34_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[0], [1], [16], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[0], [1], [16], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[0], [1], [16], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[0], [1], [16], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 47 and associated fundamentals [[0], [-10879], [49], [74]]
  with config_select_10 select c_47_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_47: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 30,
      w_o => 30,
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
      x_i => c_46,
      y_i => c_42,
      z_o => c_47_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_47_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 49 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 51 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 52 and associated fundamentals [[898], [-10879], [264], [74]]
  c_52_47_0_False_resize <= c_47;
  c_52_47_0_False_shift <= shift_left(c_52_47_0_False_resize, 0);
  c_52_51_3_False_resize <= c_51;
  c_52_51_3_False_shift <= shift_left(c_52_51_3_False_resize, 3);
  c_52_49_0_False_resize <= resize(c_49, 30);
  c_52_49_0_False_shift <= shift_left(c_52_49_0_False_resize, 0);
  with config_select_11 select c_52_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "00" => c_52 <= c_52_47_0_False_shift;
        when "01" => c_52 <= c_52_51_3_False_shift;
        when others => c_52 <= c_52_49_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 53 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 54 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 55 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 57 and associated fundamentals [[132], [2720], [1], [16]]
  c_57_37_4_False_resize <= resize(c_37, 28);
  c_57_37_4_False_shift <= shift_left(c_57_37_4_False_resize, 4);
  c_57_37_0_False_resize <= resize(c_37, 28);
  c_57_37_0_False_shift <= shift_left(c_57_37_0_False_resize, 0);
  c_57_34_1_False_resize <= c_34(27 downto 0);
  c_57_34_1_False_shift <= shift_left(c_57_34_1_False_resize, 1);
  c_57_56_1_False_resize <= resize(c_56, 28);
  c_57_56_1_False_shift <= shift_left(c_57_56_1_False_resize, 1);
  with config_select_9 select c_57_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "00" => c_57 <= c_57_37_4_False_shift;
        when "01" => c_57 <= c_57_37_0_False_shift;
        when "10" => c_57 <= c_57_34_1_False_shift;
        when others => c_57 <= c_57_56_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[132], [2720], [1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 59 and associated fundamentals [[132], [2720], [1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 60 and associated fundamentals [[370], [1], [268], [10]]
  with config_select_12 select c_60_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_60: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 28,
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
      sub_i => c_60_sub_sel,
      x_i => c_52,
      y_i => c_59,
      z_o => c_60_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_60_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 61 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 62 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 63 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 64 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 65 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 66 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 67 and associated fundamentals [[8], [2720], [0], [1]]
  c_67_34_1_False_resize <= c_34(27 downto 0);
  c_67_34_1_False_shift <= shift_left(c_67_34_1_False_resize, 1);
  c_67_37_0_False_resize <= resize(c_37, 28);
  c_67_37_0_False_shift <= shift_left(c_67_37_0_False_resize, 0);
  c_67_64_2_False_resize <= c_64(27 downto 0);
  c_67_64_2_False_shift <= shift_left(c_67_64_2_False_resize, 2);
  c_67_66_0_False_resize <= resize(c_66, 28);
  c_67_66_0_False_shift <= shift_left(c_67_66_0_False_resize, 0);
  with config_select_9 select c_67_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_67_sel is
        when "00" => c_67 <= c_67_34_1_False_shift;
        when "01" => c_67 <= c_67_37_0_False_shift;
        when "10" => c_67 <= c_67_64_2_False_shift;
        when others => c_67 <= c_67_66_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 68 and associated fundamentals [[1056], [56], [128], [1]]
  c_68_20_7_False_resize <= resize(c_20, 27);
  c_68_20_7_False_shift <= shift_left(c_68_20_7_False_resize, 7);
  c_68_10_1_False_resize <= c_10(26 downto 0);
  c_68_10_1_False_shift <= shift_left(c_68_10_1_False_resize, 1);
  c_68_15_4_False_resize <= resize(c_15, 27);
  c_68_15_4_False_shift <= shift_left(c_68_15_4_False_resize, 4);
  c_68_20_0_False_resize <= resize(c_20, 27);
  c_68_20_0_False_shift <= shift_left(c_68_20_0_False_resize, 0);
  with config_select_5 select c_68_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_68_sel is
        when "00" => c_68 <= c_68_20_7_False_shift;
        when "01" => c_68 <= c_68_10_1_False_shift;
        when "10" => c_68 <= c_68_15_4_False_shift;
        when others => c_68 <= c_68_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 69 and associated fundamentals [[1056], [56], [128], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 70 and associated fundamentals [[1056], [56], [128], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 71 and associated fundamentals [[1056], [56], [128], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 72 and associated fundamentals [[1056], [56], [128], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 73 and associated fundamentals [[-1048], [2776], [128], [2]]
  with config_select_10 select c_73_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_73: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
      w_o => 28,
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
      sub_i => c_73_sub_sel,
      x_i => c_67,
      y_i => c_72,
      z_o => c_73_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_73_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 74 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 75 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 76 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 77 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 78 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 79 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 80 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 81 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 82 and associated fundamentals [[-1048], [28], [268], [258]]
  c_82_79_1_False_resize <= c_79(26 downto 0);
  c_82_79_1_False_shift <= shift_left(c_82_79_1_False_resize, 1);
  c_82_60_0_False_resize <= resize(c_60, 27);
  c_82_60_0_False_shift <= shift_left(c_82_60_0_False_resize, 0);
  c_82_81_0_False_resize <= c_81(26 downto 0);
  c_82_81_0_False_shift <= shift_left(c_82_81_0_False_resize, 0);
  c_82_77_0_False_resize <= c_77(26 downto 0);
  c_82_77_0_False_shift <= shift_left(c_82_77_0_False_resize, 0);
  with config_select_13 select c_82_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_82_sel is
        when "00" => c_82 <= c_82_79_1_False_shift;
        when "01" => c_82 <= c_82_60_0_False_shift;
        when "10" => c_82 <= c_82_81_0_False_shift;
        when others => c_82 <= c_82_77_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 83 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 84 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 85 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 86 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 87 and associated fundamentals [[256], [416], [536], [129]]
  c_87_86_8_False_resize <= resize(c_86, 26);
  c_87_86_8_False_shift <= shift_left(c_87_86_8_False_resize, 8);
  c_87_79_0_False_resize <= c_79(25 downto 0);
  c_87_79_0_False_shift <= shift_left(c_87_79_0_False_resize, 0);
  c_87_60_1_False_resize <= resize(c_60, 26);
  c_87_60_1_False_shift <= shift_left(c_87_60_1_False_resize, 1);
  with config_select_13 select c_87_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_87_sel is
        when "00" => c_87 <= c_87_86_8_False_shift;
        when "01" => c_87 <= c_87_79_0_False_shift;
        when others => c_87 <= c_87_60_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 88 and associated fundamentals [[-1840], [-360], [0], [645]]
  with config_select_14 select c_88_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_88: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
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
      sub_i => c_88_sub_sel,
      x_i => c_82,
      y_i => c_87,
      z_o => c_88_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_88_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 89 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 90 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 91 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 92 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 93 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 94 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 95 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 96 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 97 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 98 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 99 and associated fundamentals [[64], [56], [512], [645]]
  c_99_98_2_False_resize <= c_98(25 downto 0);
  c_99_98_2_False_shift <= shift_left(c_99_98_2_False_resize, 2);
  c_99_88_0_False_resize <= c_88(25 downto 0);
  c_99_88_0_False_shift <= shift_left(c_99_88_0_False_resize, 0);
  c_99_96_1_False_resize <= c_96(25 downto 0);
  c_99_96_1_False_shift <= shift_left(c_99_96_1_False_resize, 1);
  c_99_94_5_False_resize <= c_94(25 downto 0);
  c_99_94_5_False_shift <= shift_left(c_99_94_5_False_resize, 5);
  with config_select_15 select c_99_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_99_sel is
        when "00" => c_99 <= c_99_98_2_False_shift;
        when "01" => c_99 <= c_99_88_0_False_shift;
        when "10" => c_99 <= c_99_96_1_False_shift;
        when others => c_99 <= c_99_94_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 100 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 101 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_101 <= c_100 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 102 and associated fundamentals [[1], [-720], [256], [352]]
  c_102_96_0_False_resize <= c_96(25 downto 0);
  c_102_96_0_False_shift <= shift_left(c_102_96_0_False_resize, 0);
  c_102_101_0_False_resize <= resize(c_101, 26);
  c_102_101_0_False_shift <= shift_left(c_102_101_0_False_resize, 0);
  c_102_88_1_False_resize <= c_88(25 downto 0);
  c_102_88_1_False_shift <= shift_left(c_102_88_1_False_resize, 1);
  c_102_101_8_False_resize <= resize(c_101, 26);
  c_102_101_8_False_shift <= shift_left(c_102_101_8_False_resize, 8);
  with config_select_15 select c_102_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_102_sel is
        when "00" => c_102 <= c_102_96_0_False_shift;
        when "01" => c_102 <= c_102_101_0_False_shift;
        when "10" => c_102 <= c_102_88_1_False_shift;
        when others => c_102 <= c_102_101_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 16 with id 103 and associated fundamentals [[63], [776], [768], [293]]
  with config_select_16 select c_103_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_103: entity work.adder_node
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
      sub_i => c_103_sub_sel,
      x_i => c_99,
      y_i => c_102,
      z_o => c_103_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_103 <= c_103_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 104 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_101 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 105 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 106 and associated fundamentals [[2], [776], [1024], [2]]
  c_106_105_10_False_resize <= resize(c_105, 26);
  c_106_105_10_False_shift <= shift_left(c_106_105_10_False_resize, 10);
  c_106_105_1_False_resize <= resize(c_105, 26);
  c_106_105_1_False_shift <= shift_left(c_106_105_1_False_resize, 1);
  c_106_103_0_False_resize <= c_103;
  c_106_103_0_False_shift <= shift_left(c_106_103_0_False_resize, 0);
  with config_select_17 select c_106_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_106_sel is
        when "00" => c_106 <= c_106_105_10_False_shift;
        when "01" => c_106 <= c_106_105_1_False_shift;
        when others => c_106 <= c_106_103_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 107 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_107 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 108 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_108 <= c_107 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 109 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_109 <= c_108 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 110 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_110 <= c_109 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 111 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_111 <= c_110 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 112 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_112 <= c_111 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 113 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_113 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 114 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_114 <= c_113 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 115 and associated fundamentals [[1], [2776], [8448], [293]]
  c_115_112_8_False_resize <= c_112;
  c_115_112_8_False_shift <= shift_left(c_115_112_8_False_resize, 8);
  c_115_103_0_False_resize <= resize(c_103, 30);
  c_115_103_0_False_shift <= shift_left(c_115_103_0_False_resize, 0);
  c_115_114_0_False_resize <= resize(c_114, 30);
  c_115_114_0_False_shift <= shift_left(c_115_114_0_False_resize, 0);
  c_115_105_0_False_resize <= resize(c_105, 30);
  c_115_105_0_False_shift <= shift_left(c_115_105_0_False_resize, 0);
  with config_select_17 select c_115_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_115_sel is
        when "00" => c_115 <= c_115_112_8_False_shift;
        when "01" => c_115 <= c_115_103_0_False_shift;
        when "10" => c_115 <= c_115_114_0_False_shift;
        when others => c_115 <= c_115_105_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 18 with id 116 and associated fundamentals [[3], [-2000], [9472], [295]]
  with config_select_18 select c_116_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_116: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 30,
      w_o => 30,
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
      sub_i => c_116_sub_sel,
      x_i => c_106,
      y_i => c_115,
      z_o => c_116_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_116 <= c_116_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 117 and associated fundamentals [[66], [416], [512], [352]]
  c_117_56_0_False_resize <= c_56;
  c_117_56_0_False_shift <= shift_left(c_117_56_0_False_resize, 0);
  c_117_29_0_False_resize <= c_29(24 downto 0);
  c_117_29_0_False_shift <= shift_left(c_117_29_0_False_resize, 0);
  c_117_66_2_False_resize <= c_66;
  c_117_66_2_False_shift <= shift_left(c_117_66_2_False_resize, 2);
  with config_select_9 select c_117_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_117_sel is
        when "00" => c_117 <= c_117_56_0_False_shift;
        when "01" => c_117 <= c_117_29_0_False_shift;
        when others => c_117 <= c_117_66_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 118 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_118 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 119 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_119 <= c_118 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 120 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_120 <= c_119 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 121 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_121 <= c_120 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 122 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_122 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 123 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_123 <= c_122 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 124 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_124 <= c_123 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 125 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_125 <= c_124 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 126 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_126 <= c_125 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 127 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_127 <= c_126 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 128 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_128 <= c_127 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 129 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_129 <= c_128 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 130 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_130 <= c_129 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 131 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_131 <= c_130 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 132 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_132 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 133 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_133 <= c_132 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 134 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_134 <= c_133 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 135 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_135 <= c_134 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 136 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_136 <= c_135 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 137 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_137 <= c_136 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 138 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_138 <= c_137 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 139 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_139 <= c_138 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 140 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_140 <= c_139 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 141 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_141 <= c_140 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 142 and associated fundamentals [[48], [1152], [0], [264]]
  c_142_121_2_False_resize <= c_121(26 downto 0);
  c_142_121_2_False_shift <= shift_left(c_142_121_2_False_resize, 2);
  c_142_116_4_False_resize <= c_116(26 downto 0);
  c_142_116_4_False_shift <= shift_left(c_142_116_4_False_resize, 4);
  c_142_141_0_False_resize <= resize(c_141, 27);
  c_142_141_0_False_shift <= shift_left(c_142_141_0_False_resize, 0);
  c_142_131_3_False_resize <= resize(c_131, 27);
  c_142_131_3_False_shift <= shift_left(c_142_131_3_False_resize, 3);
  with config_select_19 select c_142_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_142_sel is
        when "00" => c_142 <= c_142_121_2_False_shift;
        when "01" => c_142 <= c_142_116_4_False_shift;
        when "10" => c_142 <= c_142_141_0_False_shift;
        when others => c_142 <= c_142_131_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 143 and associated fundamentals [[66], [416], [512], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_143 <= c_117 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 144 and associated fundamentals [[66], [416], [512], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_144 <= c_143 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 145 and associated fundamentals [[66], [416], [512], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_145 <= c_144 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 146 and associated fundamentals [[66], [416], [512], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_146 <= c_145 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 147 and associated fundamentals [[66], [416], [512], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_147 <= c_146 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 148 and associated fundamentals [[66], [416], [512], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_148 <= c_147 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 149 and associated fundamentals [[66], [416], [512], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_149 <= c_148 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 150 and associated fundamentals [[66], [416], [512], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_150 <= c_149 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 151 and associated fundamentals [[66], [416], [512], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_151 <= c_150 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 152 and associated fundamentals [[66], [416], [512], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_152 <= c_151 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 20 with id 153 and associated fundamentals [[114], [-736], [512], [616]]
  with config_select_20 select c_153_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_153: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_153_sub_sel,
      x_i => c_152,
      y_i => c_142,
      z_o => c_153_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_153 <= c_153_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 154 and associated fundamentals [[4096], [9], [4], [4]]
  c_154_20_2_False_resize <= resize(c_20, 28);
  c_154_20_2_False_shift <= shift_left(c_154_20_2_False_resize, 2);
  c_154_20_12_False_resize <= resize(c_20, 28);
  c_154_20_12_False_shift <= shift_left(c_154_20_12_False_resize, 12);
  c_154_15_0_False_resize <= resize(c_15, 28);
  c_154_15_0_False_shift <= shift_left(c_154_15_0_False_resize, 0);
  with config_select_5 select c_154_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_154_sel is
        when "00" => c_154 <= c_154_20_2_False_shift;
        when "01" => c_154 <= c_154_20_12_False_shift;
        when others => c_154 <= c_154_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 155 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_155 <= c_105 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 156 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_156 <= c_155 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 157 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_157 <= c_114 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 158 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_158 <= c_157 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 19 with id 159 and associated fundamentals [[24], [16], [2048], [1]]
  c_159_156_0_False_resize <= resize(c_156, 27);
  c_159_156_0_False_shift <= shift_left(c_159_156_0_False_resize, 0);
  c_159_156_4_False_resize <= resize(c_156, 27);
  c_159_156_4_False_shift <= shift_left(c_159_156_4_False_resize, 4);
  c_159_116_3_False_resize <= c_116(26 downto 0);
  c_159_116_3_False_shift <= shift_left(c_159_116_3_False_resize, 3);
  c_159_158_4_False_resize <= c_158(26 downto 0);
  c_159_158_4_False_shift <= shift_left(c_159_158_4_False_resize, 4);
  with config_select_19 select c_159_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_159_sel is
        when "00" => c_159 <= c_159_156_0_False_shift;
        when "01" => c_159 <= c_159_156_4_False_shift;
        when "10" => c_159 <= c_159_116_3_False_shift;
        when others => c_159 <= c_159_158_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 160 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_160 <= c_154 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 161 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_161 <= c_160 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 162 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_162 <= c_161 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 163 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_163 <= c_162 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 164 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_164 <= c_163 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 165 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_165 <= c_164 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 166 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_166 <= c_165 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 167 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_167 <= c_166 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 168 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_168 <= c_167 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 169 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_169 <= c_168 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 170 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_170 <= c_169 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 171 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_171 <= c_170 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 172 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_172 <= c_171 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 173 and associated fundamentals [[4096], [9], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_173 <= c_172 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 20 with id 174 and associated fundamentals [[8216], [2], [2056], [7]]
  with config_select_20 select c_174_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_174: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
      w_o => 30,
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
      sub_i => c_174_sub_sel,
      x_i => c_173,
      y_i => c_159,
      z_o => c_174_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_174 <= c_174_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 175 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_175 <= c_156 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 176 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_176 <= c_175 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 177 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_177 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 178 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_178 <= c_177 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 179 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_179 <= c_178 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 180 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_180 <= c_179 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 181 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_181 <= c_180 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 182 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_182 <= c_181 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 183 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_183 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 184 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_184 <= c_183 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 185 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_185 <= c_184 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 186 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_186 <= c_185 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 187 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_187 <= c_186 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 188 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_188 <= c_187 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 189 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_189 <= c_188 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 190 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_190 <= c_189 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 191 and associated fundamentals [[0], [16], [64], [1232]]
  c_191_182_0_False_resize <= c_182(26 downto 0);
  c_191_182_0_False_shift <= shift_left(c_191_182_0_False_resize, 0);
  c_191_176_6_False_resize <= resize(c_176, 27);
  c_191_176_6_False_shift <= shift_left(c_191_176_6_False_resize, 6);
  c_191_190_4_False_resize <= resize(c_190, 27);
  c_191_190_4_False_shift <= shift_left(c_191_190_4_False_resize, 4);
  c_191_153_1_False_resize <= resize(c_153, 27);
  c_191_153_1_False_shift <= shift_left(c_191_153_1_False_resize, 1);
  with config_select_21 select c_191_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_191_sel is
        when "00" => c_191 <= c_191_182_0_False_shift;
        when "01" => c_191 <= c_191_176_6_False_shift;
        when "10" => c_191 <= c_191_190_4_False_shift;
        when others => c_191 <= c_191_153_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 192 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_192 <= c_158 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 193 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_193 <= c_192 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 194 and associated fundamentals [[-1840], [-360], [0], [645]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_194 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 195 and associated fundamentals [[-1840], [-360], [0], [645]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_195 <= c_194 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 196 and associated fundamentals [[-1840], [-360], [0], [645]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_196 <= c_195 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 197 and associated fundamentals [[-1840], [-360], [0], [645]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_197 <= c_196 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 198 and associated fundamentals [[-1840], [-360], [0], [645]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_198 <= c_197 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 199 and associated fundamentals [[-1840], [-360], [0], [645]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_199 <= c_198 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 200 and associated fundamentals [[32], [16], [256], [645]]
  c_200_193_1_False_resize <= c_193(25 downto 0);
  c_200_193_1_False_shift <= shift_left(c_200_193_1_False_resize, 1);
  c_200_199_0_False_resize <= c_199(25 downto 0);
  c_200_199_0_False_shift <= shift_left(c_200_199_0_False_resize, 0);
  c_200_174_3_False_resize <= c_174(25 downto 0);
  c_200_174_3_False_shift <= shift_left(c_200_174_3_False_resize, 3);
  c_200_176_5_False_resize <= resize(c_176, 26);
  c_200_176_5_False_shift <= shift_left(c_200_176_5_False_resize, 5);
  with config_select_21 select c_200_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_200_sel is
        when "00" => c_200 <= c_200_193_1_False_shift;
        when "01" => c_200 <= c_200_199_0_False_shift;
        when "10" => c_200 <= c_200_174_3_False_shift;
        when others => c_200 <= c_200_176_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 22 with id 201 and associated fundamentals [[32], [32], [320], [587]]
  with config_select_22 select c_201_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_201: entity work.adder_node
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
      sub_i => c_201_sub_sel,
      x_i => c_191,
      y_i => c_200,
      z_o => c_201_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_201 <= c_201_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 202 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_202 <= c_176 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 203 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_203 <= c_202 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 204 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_204 <= c_131 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 205 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_205 <= c_204 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 206 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_206 <= c_205 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 207 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_207 <= c_206 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 208 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_208 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 209 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_209 <= c_208 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 210 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_210 <= c_209 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 211 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_211 <= c_210 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 212 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_212 <= c_211 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 213 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_213 <= c_212 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 214 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_214 <= c_213 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 215 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_215 <= c_214 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 216 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_216 <= c_215 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 217 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_217 <= c_216 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 218 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_218 <= c_217 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 219 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_219 <= c_218 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 23 with id 220 and associated fundamentals [[2], [9], [196], [587]]
  c_220_201_0_False_resize <= c_201;
  c_220_201_0_False_shift <= shift_left(c_220_201_0_False_resize, 0);
  c_220_207_0_False_resize <= resize(c_207, 26);
  c_220_207_0_False_shift <= shift_left(c_220_207_0_False_resize, 0);
  c_220_203_1_False_resize <= resize(c_203, 26);
  c_220_203_1_False_shift <= shift_left(c_220_203_1_False_resize, 1);
  c_220_219_2_False_resize <= c_219(25 downto 0);
  c_220_219_2_False_shift <= shift_left(c_220_219_2_False_resize, 2);
  with config_select_23 select c_220_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_220_sel is
        when "00" => c_220 <= c_220_201_0_False_shift;
        when "01" => c_220 <= c_220_207_0_False_shift;
        when "10" => c_220 <= c_220_203_1_False_shift;
        when others => c_220 <= c_220_219_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 221 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_221 <= c_190 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 222 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_222 <= c_221 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 223 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_223 <= c_116 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 224 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_224 <= c_223 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 225 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_225 <= c_224 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 226 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_226 <= c_225 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 23 with id 227 and associated fundamentals [[1536], [32], [536], [20]]
  c_227_226_9_False_resize <= c_226(26 downto 0);
  c_227_226_9_False_shift <= shift_left(c_227_226_9_False_resize, 9);
  c_227_222_1_False_resize <= resize(c_222, 27);
  c_227_222_1_False_shift <= shift_left(c_227_222_1_False_resize, 1);
  c_227_201_0_False_resize <= resize(c_201, 27);
  c_227_201_0_False_shift <= shift_left(c_227_201_0_False_resize, 0);
  with config_select_23 select c_227_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_227_sel is
        when "00" => c_227 <= c_227_226_9_False_shift;
        when "01" => c_227 <= c_227_222_1_False_shift;
        when others => c_227 <= c_227_201_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 24 with id 228 and associated fundamentals [[1538], [41], [732], [607]]
  inst_adder_node_228: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 27,
      w_o => 27,
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
      x_i => c_220,
      y_i => c_227,
      z_o => c_228_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_228 <= c_228_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 23 with id 229 and associated fundamentals [[2], [8], [640], [33]]
  c_229_201_1_False_resize <= c_201;
  c_229_201_1_False_shift <= shift_left(c_229_201_1_False_resize, 1);
  c_229_203_1_False_resize <= resize(c_203, 26);
  c_229_203_1_False_shift <= shift_left(c_229_203_1_False_resize, 1);
  c_229_203_3_False_resize <= resize(c_203, 26);
  c_229_203_3_False_shift <= shift_left(c_229_203_3_False_resize, 3);
  c_229_207_0_False_resize <= resize(c_207, 26);
  c_229_207_0_False_shift <= shift_left(c_229_207_0_False_resize, 0);
  with config_select_23 select c_229_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_229_sel is
        when "00" => c_229 <= c_229_201_1_False_shift;
        when "01" => c_229 <= c_229_203_1_False_shift;
        when "10" => c_229 <= c_229_203_3_False_shift;
        when others => c_229 <= c_229_207_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 23 with id 230 and associated fundamentals [[4096], [144], [49], [4]]
  c_230_203_2_False_resize <= resize(c_203, 28);
  c_230_203_2_False_shift <= shift_left(c_230_203_2_False_resize, 2);
  c_230_219_0_False_resize <= c_219(27 downto 0);
  c_230_219_0_False_shift <= shift_left(c_230_219_0_False_resize, 0);
  c_230_201_7_False_resize <= resize(c_201, 28);
  c_230_201_7_False_shift <= shift_left(c_230_201_7_False_resize, 7);
  c_230_207_4_False_resize <= resize(c_207, 28);
  c_230_207_4_False_shift <= shift_left(c_230_207_4_False_resize, 4);
  with config_select_23 select c_230_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_230_sel is
        when "00" => c_230 <= c_230_203_2_False_shift;
        when "01" => c_230 <= c_230_219_0_False_shift;
        when "10" => c_230 <= c_230_201_7_False_shift;
        when others => c_230 <= c_230_207_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 24 with id 231 and associated fundamentals [[8194], [296], [542], [25]]
  with config_select_24 select c_231_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_231: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 28,
      w_o => 30,
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
      sub_i => c_231_sub_sel,
      x_i => c_229,
      y_i => c_230,
      z_o => c_231_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_231 <= c_231_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 232 and associated fundamentals [[1024], [6208], [0], [1]]
  c_232_119_9_False_resize <= c_119;
  c_232_119_9_False_shift <= shift_left(c_232_119_9_False_resize, 9);
  c_232_105_0_False_resize <= resize(c_105, 29);
  c_232_105_0_False_shift <= shift_left(c_232_105_0_False_resize, 0);
  c_232_195_0_False_resize <= resize(c_195, 29);
  c_232_195_0_False_shift <= shift_left(c_232_195_0_False_resize, 0);
  c_232_103_3_False_resize <= resize(c_103, 29);
  c_232_103_3_False_shift <= shift_left(c_232_103_3_False_resize, 3);
  with config_select_17 select c_232_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_232_sel is
        when "00" => c_232 <= c_232_119_9_False_shift;
        when "01" => c_232 <= c_232_105_0_False_shift;
        when "10" => c_232 <= c_232_195_0_False_shift;
        when others => c_232 <= c_232_103_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 233 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_233 <= c_203 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 234 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_234 <= c_233 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 235 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_235 <= c_141 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 236 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_236 <= c_235 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 237 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_237 <= c_236 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 238 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_238 <= c_237 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 239 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_239 <= c_238 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 240 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_240 <= c_239 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 241 and associated fundamentals [[128], [41], [64], [352]]
  c_241_234_7_False_resize <= resize(c_234, 25);
  c_241_234_7_False_shift <= shift_left(c_241_234_7_False_resize, 7);
  c_241_228_0_False_resize <= c_228(24 downto 0);
  c_241_228_0_False_shift <= shift_left(c_241_228_0_False_resize, 0);
  c_241_234_6_False_resize <= resize(c_234, 25);
  c_241_234_6_False_shift <= shift_left(c_241_234_6_False_resize, 6);
  c_241_240_2_False_resize <= c_240;
  c_241_240_2_False_shift <= shift_left(c_241_240_2_False_resize, 2);
  with config_select_25 select c_241_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_241_sel is
        when "00" => c_241 <= c_241_234_7_False_shift;
        when "01" => c_241 <= c_241_228_0_False_shift;
        when "10" => c_241 <= c_241_234_6_False_shift;
        when others => c_241 <= c_241_240_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 242 and associated fundamentals [[1024], [6208], [0], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_242 <= c_232 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 243 and associated fundamentals [[1024], [6208], [0], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_243 <= c_242 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 244 and associated fundamentals [[1024], [6208], [0], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_244 <= c_243 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 245 and associated fundamentals [[1024], [6208], [0], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_245 <= c_244 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 246 and associated fundamentals [[1024], [6208], [0], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_246 <= c_245 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 247 and associated fundamentals [[1024], [6208], [0], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_247 <= c_246 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 248 and associated fundamentals [[1024], [6208], [0], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_248 <= c_247 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 249 and associated fundamentals [[1024], [6208], [0], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_249 <= c_248 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 26 with id 250 and associated fundamentals [[1152], [6167], [64], [353]]
  with config_select_26 select c_250_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_250: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 25,
      w_o => 29,
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
      sub_i => c_250_sub_sel,
      x_i => c_249,
      y_i => c_241,
      z_o => c_250_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_250 <= c_250_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 251 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_251 <= c_226 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 252 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_252 <= c_251 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 253 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_253 <= c_153 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 254 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_254 <= c_253 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 255 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_255 <= c_254 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 256 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_256 <= c_255 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 257 and associated fundamentals [[114], [-2000], [8], [12800]]
  c_257_252_0_False_resize <= c_252;
  c_257_252_0_False_shift <= shift_left(c_257_252_0_False_resize, 0);
  c_257_231_9_False_resize <= c_231;
  c_257_231_9_False_shift <= shift_left(c_257_231_9_False_resize, 9);
  c_257_256_0_False_resize <= resize(c_256, 30);
  c_257_256_0_False_shift <= shift_left(c_257_256_0_False_resize, 0);
  c_257_234_3_False_resize <= resize(c_234, 30);
  c_257_234_3_False_shift <= shift_left(c_257_234_3_False_resize, 3);
  with config_select_25 select c_257_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_257_sel is
        when "00" => c_257 <= c_257_252_0_False_shift;
        when "01" => c_257 <= c_257_231_9_False_shift;
        when "10" => c_257 <= c_257_256_0_False_shift;
        when others => c_257 <= c_257_234_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 258 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_258 <= c_121 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 259 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_259 <= c_258 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 260 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_260 <= c_259 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 261 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_261 <= c_260 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 262 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_262 <= c_261 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 263 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_263 <= c_262 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 264 and associated fundamentals [[16], [4736], [16], [1]]
  c_264_234_4_False_resize <= resize(c_234, 29);
  c_264_234_4_False_shift <= shift_left(c_264_234_4_False_resize, 4);
  c_264_234_0_False_resize <= resize(c_234, 29);
  c_264_234_0_False_shift <= shift_left(c_264_234_0_False_resize, 0);
  c_264_263_3_False_resize <= c_263;
  c_264_263_3_False_shift <= shift_left(c_264_263_3_False_resize, 3);
  c_264_231_4_False_resize <= c_231(28 downto 0);
  c_264_231_4_False_shift <= shift_left(c_264_231_4_False_resize, 4);
  with config_select_25 select c_264_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_264_sel is
        when "00" => c_264 <= c_264_234_4_False_shift;
        when "01" => c_264 <= c_264_234_0_False_shift;
        when "10" => c_264 <= c_264_263_3_False_shift;
        when others => c_264 <= c_264_231_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 26 with id 265 and associated fundamentals [[130], [2736], [24], [12801]]
  inst_adder_node_265: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
      w_o => 30,
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
      x_i => c_257,
      y_i => c_264,
      z_o => c_265_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_265 <= c_265_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 266 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_266 <= c_252 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 267 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_267 <= c_266 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 268 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_268 <= c_228 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 269 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_269 <= c_268 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 270 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_270 <= c_231 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 271 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_271 <= c_270 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 272 and associated fundamentals [[8194], [6167], [9472], [607]]
  c_272_269_0_False_resize <= resize(c_269, 30);
  c_272_269_0_False_shift <= shift_left(c_272_269_0_False_resize, 0);
  c_272_271_0_False_resize <= c_271;
  c_272_271_0_False_shift <= shift_left(c_272_271_0_False_resize, 0);
  c_272_267_0_False_resize <= c_267;
  c_272_267_0_False_shift <= shift_left(c_272_267_0_False_resize, 0);
  c_272_250_0_False_resize <= resize(c_250, 30);
  c_272_250_0_False_shift <= shift_left(c_272_250_0_False_resize, 0);
  with config_select_27 select c_272_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_272_sel is
        when "00" => c_272 <= c_272_269_0_False_shift;
        when "01" => c_272 <= c_272_271_0_False_shift;
        when "10" => c_272 <= c_272_267_0_False_shift;
        when others => c_272 <= c_272_250_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 273 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_273 <= c_207 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 274 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_274 <= c_273 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 275 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_275 <= c_274 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 276 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_276 <= c_275 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 277 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_277 <= c_240 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 278 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_278 <= c_277 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 279 and associated fundamentals [[1538], [9], [0], [12801]]
  c_279_278_0_False_resize <= resize(c_278, 30);
  c_279_278_0_False_shift <= shift_left(c_279_278_0_False_resize, 0);
  c_279_269_0_False_resize <= resize(c_269, 30);
  c_279_269_0_False_shift <= shift_left(c_279_269_0_False_resize, 0);
  c_279_265_0_False_resize <= c_265;
  c_279_265_0_False_shift <= shift_left(c_279_265_0_False_resize, 0);
  c_279_276_0_False_resize <= resize(c_276, 30);
  c_279_276_0_False_shift <= shift_left(c_279_276_0_False_resize, 0);
  with config_select_27 select c_279_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_279_sel is
        when "00" => c_279 <= c_279_278_0_False_shift;
        when "01" => c_279 <= c_279_269_0_False_shift;
        when "10" => c_279 <= c_279_265_0_False_shift;
        when others => c_279 <= c_279_276_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 28 with id 280 and associated fundamentals [[208], [193], [296], [419]]
  with config_select_28 select c_280_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_280: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 30,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 5,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_280_sub_sel,
      x_i => c_272,
      y_i => c_279,
      z_o => c_280_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_280 <= c_280_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 281 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_281 <= c_234 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 282 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_282 <= c_281 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 283 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_283 <= c_282 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 284 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_284 <= c_283 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 285 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_285 <= c_182 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 286 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_286 <= c_285 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 287 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_287 <= c_286 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 288 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_288 <= c_287 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 289 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_289 <= c_288 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 290 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_290 <= c_289 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 291 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_291 <= c_290 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 292 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_292 <= c_291 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 293 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_293 <= c_112 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 294 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_294 <= c_293 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 295 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_295 <= c_294 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 296 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_296 <= c_295 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 297 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_297 <= c_296 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 298 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_298 <= c_297 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 299 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_299 <= c_298 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 300 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_300 <= c_299 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 301 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_301 <= c_300 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 302 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_302 <= c_301 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 303 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_303 <= c_302 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 304 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_304 <= c_303 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 305 and associated fundamentals [[2560], [1], [6144], [3352]]
  c_305_284_0_False_resize <= resize(c_284, 29);
  c_305_284_0_False_shift <= shift_left(c_305_284_0_False_resize, 0);
  c_305_280_3_False_resize <= resize(c_280, 29);
  c_305_280_3_False_shift <= shift_left(c_305_280_3_False_resize, 3);
  c_305_292_0_False_resize <= c_292;
  c_305_292_0_False_shift <= shift_left(c_305_292_0_False_resize, 0);
  c_305_304_2_False_resize <= c_304(28 downto 0);
  c_305_304_2_False_shift <= shift_left(c_305_304_2_False_resize, 2);
  with config_select_29 select c_305_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_305_sel is
        when "00" => c_305 <= c_305_284_0_False_shift;
        when "01" => c_305 <= c_305_280_3_False_shift;
        when "10" => c_305 <= c_305_292_0_False_shift;
        when others => c_305 <= c_305_304_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 306 and associated fundamentals [[132], [-736], [8], [8]]
  c_306_176_3_False_resize <= resize(c_176, 26);
  c_306_176_3_False_shift <= shift_left(c_306_176_3_False_resize, 3);
  c_306_153_0_False_resize <= c_153;
  c_306_153_0_False_shift <= shift_left(c_306_153_0_False_resize, 0);
  c_306_205_1_False_resize <= resize(c_205, 26);
  c_306_205_1_False_shift <= shift_left(c_306_205_1_False_resize, 1);
  with config_select_21 select c_306_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_306_sel is
        when "00" => c_306 <= c_306_176_3_False_shift;
        when "01" => c_306 <= c_306_153_0_False_shift;
        when others => c_306 <= c_306_205_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 307 and associated fundamentals [[132], [-736], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_307 <= c_306 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 308 and associated fundamentals [[132], [-736], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_308 <= c_307 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 309 and associated fundamentals [[132], [-736], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_309 <= c_308 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 310 and associated fundamentals [[132], [-736], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_310 <= c_309 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 311 and associated fundamentals [[132], [-736], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_311 <= c_310 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 312 and associated fundamentals [[132], [-736], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_312 <= c_311 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 313 and associated fundamentals [[132], [-736], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_313 <= c_312 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 314 and associated fundamentals [[132], [-736], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_314 <= c_313 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 30 with id 315 and associated fundamentals [[2692], [737], [6152], [3360]]
  with config_select_30 select c_315_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_315: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 26,
      w_o => 29,
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
      sub_i => c_315_sub_sel,
      x_i => c_305,
      y_i => c_314,
      z_o => c_315_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_315 <= c_315_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 316 and associated fundamentals [[1], [1], [8224], [1]]
  c_316_176_0_False_resize <= resize(c_176, 30);
  c_316_176_0_False_shift <= shift_left(c_316_176_0_False_resize, 0);
  c_316_174_2_False_resize <= c_174;
  c_316_174_2_False_shift <= shift_left(c_316_174_2_False_resize, 2);
  with config_select_21 select c_316_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_316_sel is
        when "0" => c_316 <= c_316_176_0_False_shift;
        when others => c_316 <= c_316_174_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 317 and associated fundamentals [[1056], [2], [6144], [10320]]
  c_317_205_4_False_resize <= resize(c_205, 30);
  c_317_205_4_False_shift <= shift_left(c_317_205_4_False_resize, 4);
  c_317_182_0_False_resize <= resize(c_182, 30);
  c_317_182_0_False_shift <= shift_left(c_317_182_0_False_resize, 0);
  c_317_174_0_False_resize <= c_174;
  c_317_174_0_False_shift <= shift_left(c_317_174_0_False_resize, 0);
  c_317_199_4_False_resize <= resize(c_199, 30);
  c_317_199_4_False_shift <= shift_left(c_317_199_4_False_resize, 4);
  with config_select_21 select c_317_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_317_sel is
        when "00" => c_317 <= c_317_205_4_False_shift;
        when "01" => c_317 <= c_317_182_0_False_shift;
        when "10" => c_317 <= c_317_174_0_False_shift;
        when others => c_317 <= c_317_199_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 22 with id 318 and associated fundamentals [[1057], [3], [14368], [10321]]
  inst_adder_node_318: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 30,
      w_o => 30,
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
      x_i => c_316,
      y_i => c_317,
      z_o => c_318_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_318 <= c_318_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 319 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_319 <= c_222 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 320 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_320 <= c_319 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 321 and associated fundamentals [[96], [82], [732], [640]]
  c_321_228_1_False_resize <= c_228(25 downto 0);
  c_321_228_1_False_shift <= shift_left(c_321_228_1_False_resize, 1);
  c_321_228_0_False_resize <= c_228(25 downto 0);
  c_321_228_0_False_shift <= shift_left(c_321_228_0_False_resize, 0);
  c_321_252_5_False_resize <= c_252(25 downto 0);
  c_321_252_5_False_shift <= shift_left(c_321_252_5_False_resize, 5);
  c_321_320_6_False_resize <= resize(c_320, 26);
  c_321_320_6_False_shift <= shift_left(c_321_320_6_False_resize, 6);
  with config_select_25 select c_321_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_321_sel is
        when "00" => c_321 <= c_321_228_1_False_shift;
        when "01" => c_321 <= c_321_228_0_False_shift;
        when "10" => c_321 <= c_321_252_5_False_shift;
        when others => c_321 <= c_321_320_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 322 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_322 <= c_263 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 323 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_323 <= c_322 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 27 with id 324 and associated fundamentals [[130], [296], [1], [384]]
  c_324_282_0_False_resize <= resize(c_282, 25);
  c_324_282_0_False_shift <= shift_left(c_324_282_0_False_resize, 0);
  c_324_271_0_False_resize <= c_271(24 downto 0);
  c_324_271_0_False_shift <= shift_left(c_324_271_0_False_resize, 0);
  c_324_265_0_False_resize <= c_265(24 downto 0);
  c_324_265_0_False_shift <= shift_left(c_324_265_0_False_resize, 0);
  c_324_323_0_False_resize <= c_323(24 downto 0);
  c_324_323_0_False_shift <= shift_left(c_324_323_0_False_resize, 0);
  with config_select_27 select c_324_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_324_sel is
        when "00" => c_324 <= c_324_282_0_False_shift;
        when "01" => c_324 <= c_324_271_0_False_shift;
        when "10" => c_324 <= c_324_265_0_False_shift;
        when others => c_324 <= c_324_323_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 325 and associated fundamentals [[96], [82], [732], [640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_325 <= c_321 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 326 and associated fundamentals [[96], [82], [732], [640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_326 <= c_325 & "";
    end if;
  end process;
  -- node of type 'add' in stage 28 with id 327 and associated fundamentals [[226], [378], [733], [1024]]
  inst_adder_node_327: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      x_i => c_326,
      y_i => c_324,
      z_o => c_327_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_327 <= c_327_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 328 and associated fundamentals [[3584], [1], [0], [88]]
  c_328_22_6_False_resize <= resize(c_22, 28);
  c_328_22_6_False_shift <= shift_left(c_328_22_6_False_resize, 6);
  c_328_25_0_False_resize <= resize(c_25, 28);
  c_328_25_0_False_shift <= shift_left(c_328_25_0_False_resize, 0);
  c_328_22_0_False_resize <= resize(c_22, 28);
  c_328_22_0_False_shift <= shift_left(c_328_22_0_False_resize, 0);
  c_328_22_3_False_resize <= resize(c_22, 28);
  c_328_22_3_False_shift <= shift_left(c_328_22_3_False_resize, 3);
  with config_select_7 select c_328_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_328_sel is
        when "00" => c_328 <= c_328_22_6_False_shift;
        when "01" => c_328 <= c_328_25_0_False_shift;
        when "10" => c_328 <= c_328_22_0_False_shift;
        when others => c_328 <= c_328_22_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 329 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_329 <= c_256 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 330 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_330 <= c_329 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 331 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_331 <= c_330 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 332 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_332 <= c_331 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 333 and associated fundamentals [[456], [1512], [1], [419]]
  c_333_284_0_False_resize <= resize(c_284, 27);
  c_333_284_0_False_shift <= shift_left(c_333_284_0_False_resize, 0);
  c_333_280_0_False_resize <= resize(c_280, 27);
  c_333_280_0_False_shift <= shift_left(c_333_280_0_False_resize, 0);
  c_333_332_2_False_resize <= resize(c_332, 27);
  c_333_332_2_False_shift <= shift_left(c_333_332_2_False_resize, 2);
  c_333_327_2_False_resize <= resize(c_327, 27);
  c_333_327_2_False_shift <= shift_left(c_333_327_2_False_resize, 2);
  with config_select_29 select c_333_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_333_sel is
        when "00" => c_333 <= c_333_284_0_False_shift;
        when "01" => c_333 <= c_333_280_0_False_shift;
        when "10" => c_333 <= c_333_332_2_False_shift;
        when others => c_333 <= c_333_327_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 334 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_334 <= c_328 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 335 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_335 <= c_334 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 336 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_336 <= c_335 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 337 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_337 <= c_336 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 338 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_338 <= c_337 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 339 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_339 <= c_338 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 340 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_340 <= c_339 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 341 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_341 <= c_340 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 342 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_342 <= c_341 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 343 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_343 <= c_342 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 344 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_344 <= c_343 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 345 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_345 <= c_344 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 346 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_346 <= c_345 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 347 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_347 <= c_346 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 348 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_348 <= c_347 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 349 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_349 <= c_348 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 350 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_350 <= c_349 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 351 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_351 <= c_350 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 352 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_352 <= c_351 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 353 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_353 <= c_352 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 354 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_354 <= c_353 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 355 and associated fundamentals [[3584], [1], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_355 <= c_354 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 30 with id 356 and associated fundamentals [[6256], [3026], [2], [-662]]
  with config_select_30 select c_356_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_356: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
      w_o => 29,
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
      sub_i => c_356_sub_sel,
      x_i => c_355,
      y_i => c_333,
      z_o => c_356_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_356 <= c_356_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 357 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_357 <= c_278 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 358 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_358 <= c_357 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 359 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_359 <= c_320 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 360 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_360 <= c_359 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 361 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_361 <= c_360 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 362 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_362 <= c_361 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 363 and associated fundamentals [[32], [32], [320], [587]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_363 <= c_201 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 364 and associated fundamentals [[32], [32], [320], [587]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_364 <= c_363 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 365 and associated fundamentals [[32], [32], [320], [587]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_365 <= c_364 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 366 and associated fundamentals [[32], [32], [320], [587]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_366 <= c_365 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 367 and associated fundamentals [[32], [32], [320], [587]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_367 <= c_366 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 368 and associated fundamentals [[32], [32], [320], [587]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_368 <= c_367 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 369 and associated fundamentals [[226], [32], [268], [352]]
  c_369_358_2_False_resize <= c_358;
  c_369_358_2_False_shift <= shift_left(c_369_358_2_False_resize, 2);
  c_369_362_0_False_resize <= c_362;
  c_369_362_0_False_shift <= shift_left(c_369_362_0_False_resize, 0);
  c_369_327_0_False_resize <= c_327(24 downto 0);
  c_369_327_0_False_shift <= shift_left(c_369_327_0_False_resize, 0);
  c_369_368_0_False_resize <= c_368(24 downto 0);
  c_369_368_0_False_shift <= shift_left(c_369_368_0_False_resize, 0);
  with config_select_29 select c_369_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_369_sel is
        when "00" => c_369 <= c_369_358_2_False_shift;
        when "01" => c_369 <= c_369_362_0_False_shift;
        when "10" => c_369 <= c_369_327_0_False_shift;
        when others => c_369 <= c_369_368_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 17 with id 370 and associated fundamentals [[63], [896], [2], [88]]
  c_370_139_0_False_resize <= resize(c_139, 26);
  c_370_139_0_False_shift <= shift_left(c_370_139_0_False_resize, 0);
  c_370_103_0_False_resize <= c_103;
  c_370_103_0_False_shift <= shift_left(c_370_103_0_False_resize, 0);
  c_370_178_5_False_resize <= c_178(25 downto 0);
  c_370_178_5_False_shift <= shift_left(c_370_178_5_False_resize, 5);
  c_370_105_1_False_resize <= resize(c_105, 26);
  c_370_105_1_False_shift <= shift_left(c_370_105_1_False_resize, 1);
  with config_select_17 select c_370_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_370_sel is
        when "00" => c_370 <= c_370_139_0_False_shift;
        when "01" => c_370 <= c_370_103_0_False_shift;
        when "10" => c_370 <= c_370_178_5_False_shift;
        when others => c_370 <= c_370_105_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 371 and associated fundamentals [[63], [896], [2], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_371 <= c_370 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 372 and associated fundamentals [[63], [896], [2], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_372 <= c_371 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 373 and associated fundamentals [[63], [896], [2], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_373 <= c_372 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 374 and associated fundamentals [[63], [896], [2], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_374 <= c_373 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 375 and associated fundamentals [[63], [896], [2], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_375 <= c_374 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 376 and associated fundamentals [[63], [896], [2], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_376 <= c_375 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 377 and associated fundamentals [[63], [896], [2], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_377 <= c_376 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 378 and associated fundamentals [[63], [896], [2], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_378 <= c_377 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 379 and associated fundamentals [[63], [896], [2], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_379 <= c_378 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 380 and associated fundamentals [[63], [896], [2], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_380 <= c_379 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 381 and associated fundamentals [[63], [896], [2], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_381 <= c_380 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 382 and associated fundamentals [[63], [896], [2], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_382 <= c_381 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 30 with id 383 and associated fundamentals [[163], [928], [270], [264]]
  with config_select_30 select c_383_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_383: entity work.adder_node
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
      sub_i => c_383_sub_sel,
      x_i => c_369,
      y_i => c_382,
      z_o => c_383_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_383 <= c_383_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 384 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_384 <= c_265 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 385 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_385 <= c_384 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 386 and associated fundamentals [[1057], [3], [14368], [10321]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_386 <= c_318 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 387 and associated fundamentals [[1057], [3], [14368], [10321]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_387 <= c_386 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 388 and associated fundamentals [[1057], [3], [14368], [10321]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_388 <= c_387 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 389 and associated fundamentals [[1057], [3], [14368], [10321]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_389 <= c_388 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 390 and associated fundamentals [[1057], [3], [14368], [10321]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_390 <= c_389 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 391 and associated fundamentals [[1057], [3], [14368], [10321]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_391 <= c_390 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 392 and associated fundamentals [[520], [193], [14368], [10496]]
  c_392_304_0_False_resize <= c_304;
  c_392_304_0_False_shift <= shift_left(c_392_304_0_False_resize, 0);
  c_392_280_0_False_resize <= resize(c_280, 30);
  c_392_280_0_False_shift <= shift_left(c_392_280_0_False_resize, 0);
  c_392_391_0_False_resize <= c_391;
  c_392_391_0_False_shift <= shift_left(c_392_391_0_False_resize, 0);
  c_392_385_2_False_resize <= c_385;
  c_392_385_2_False_shift <= shift_left(c_392_385_2_False_resize, 2);
  with config_select_29 select c_392_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_392_sel is
        when "00" => c_392 <= c_392_304_0_False_shift;
        when "01" => c_392 <= c_392_280_0_False_shift;
        when "10" => c_392 <= c_392_391_0_False_shift;
        when others => c_392 <= c_392_385_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 393 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_393 <= c_284 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 394 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_394 <= c_393 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 395 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_395 <= c_362 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 396 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_396 <= c_395 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 31 with id 397 and associated fundamentals [[370], [128], [4], [4224]]
  c_397_396_0_False_resize <= resize(c_396, 29);
  c_397_396_0_False_shift <= shift_left(c_397_396_0_False_resize, 0);
  c_397_394_7_False_resize <= resize(c_394, 29);
  c_397_394_7_False_shift <= shift_left(c_397_394_7_False_resize, 7);
  c_397_356_1_False_resize <= c_356;
  c_397_356_1_False_shift <= shift_left(c_397_356_1_False_resize, 1);
  c_397_383_4_False_resize <= resize(c_383, 29);
  c_397_383_4_False_shift <= shift_left(c_397_383_4_False_resize, 4);
  with config_select_31 select c_397_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_397_sel is
        when "00" => c_397 <= c_397_396_0_False_shift;
        when "01" => c_397 <= c_397_394_7_False_shift;
        when "10" => c_397 <= c_397_356_1_False_shift;
        when others => c_397 <= c_397_383_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 398 and associated fundamentals [[520], [193], [14368], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_398 <= c_392 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 399 and associated fundamentals [[520], [193], [14368], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_399 <= c_398 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 32 with id 400 and associated fundamentals [[150], [321], [14364], [14720]]
  with config_select_32 select c_400_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_400: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
      w_o => 30,
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
      sub_i => c_400_sub_sel,
      x_i => c_399,
      y_i => c_397,
      z_o => c_400_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_400 <= c_400_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 401 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_401 <= c_276 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 402 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_402 <= c_401 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 403 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_403 <= c_402 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 404 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_404 <= c_403 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 405 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_405 <= c_269 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 406 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_406 <= c_405 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 407 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_407 <= c_406 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 408 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_408 <= c_407 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 31 with id 409 and associated fundamentals [[4], [82], [12304], [33]]
  c_409_394_2_False_resize <= resize(c_394, 30);
  c_409_394_2_False_shift <= shift_left(c_409_394_2_False_resize, 2);
  c_409_315_1_False_resize <= resize(c_315, 30);
  c_409_315_1_False_shift <= shift_left(c_409_315_1_False_resize, 1);
  c_409_408_1_False_resize <= resize(c_408, 30);
  c_409_408_1_False_shift <= shift_left(c_409_408_1_False_resize, 1);
  c_409_404_0_False_resize <= resize(c_404, 30);
  c_409_404_0_False_shift <= shift_left(c_409_404_0_False_resize, 0);
  with config_select_31 select c_409_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_409_sel is
        when "00" => c_409 <= c_409_394_2_False_shift;
        when "01" => c_409 <= c_409_315_1_False_shift;
        when "10" => c_409 <= c_409_408_1_False_shift;
        when others => c_409 <= c_409_404_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 410 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_410 <= c_394 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 411 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_411 <= c_410 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 412 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_412 <= c_323 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 413 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_413 <= c_412 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 414 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_414 <= c_413 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 415 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_415 <= c_414 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 416 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_416 <= c_415 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 417 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_417 <= c_416 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 33 with id 418 and associated fundamentals [[16], [321], [1], [256]]
  c_418_417_3_False_resize <= c_417(24 downto 0);
  c_418_417_3_False_shift <= shift_left(c_418_417_3_False_resize, 3);
  c_418_400_0_False_resize <= c_400(24 downto 0);
  c_418_400_0_False_shift <= shift_left(c_418_400_0_False_resize, 0);
  c_418_411_8_False_resize <= resize(c_411, 25);
  c_418_411_8_False_shift <= shift_left(c_418_411_8_False_resize, 8);
  c_418_411_0_False_resize <= resize(c_411, 25);
  c_418_411_0_False_shift <= shift_left(c_418_411_0_False_resize, 0);
  with config_select_33 select c_418_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_418_sel is
        when "00" => c_418 <= c_418_417_3_False_shift;
        when "01" => c_418 <= c_418_400_0_False_shift;
        when "10" => c_418 <= c_418_411_8_False_shift;
        when others => c_418 <= c_418_411_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 419 and associated fundamentals [[4], [82], [12304], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_419 <= c_409 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 420 and associated fundamentals [[4], [82], [12304], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_420 <= c_419 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 34 with id 421 and associated fundamentals [[20], [-239], [12303], [-223]]
  with config_select_34 select c_421_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_421: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 25,
      w_o => 30,
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
      sub_i => c_421_sub_sel,
      x_i => c_420,
      y_i => c_418,
      z_o => c_421_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_421 <= c_421_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 422 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_422 <= c_271 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 423 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_423 <= c_422 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 424 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_424 <= c_423 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 425 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_425 <= c_424 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 426 and associated fundamentals [[1057], [3], [14368], [10321]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_426 <= c_391 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 427 and associated fundamentals [[1057], [3], [14368], [10321]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_427 <= c_426 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 428 and associated fundamentals [[226], [378], [733], [1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_428 <= c_327 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 429 and associated fundamentals [[226], [378], [733], [1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_429 <= c_428 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 31 with id 430 and associated fundamentals [[1057], [756], [1024], [100]]
  c_430_427_0_False_resize <= c_427(26 downto 0);
  c_430_427_0_False_shift <= shift_left(c_430_427_0_False_resize, 0);
  c_430_429_1_False_resize <= resize(c_429, 27);
  c_430_429_1_False_shift <= shift_left(c_430_429_1_False_resize, 1);
  c_430_425_2_False_resize <= c_425(26 downto 0);
  c_430_425_2_False_shift <= shift_left(c_430_425_2_False_resize, 2);
  c_430_356_9_False_resize <= c_356(26 downto 0);
  c_430_356_9_False_shift <= shift_left(c_430_356_9_False_resize, 9);
  with config_select_31 select c_430_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_430_sel is
        when "00" => c_430 <= c_430_427_0_False_shift;
        when "01" => c_430 <= c_430_429_1_False_shift;
        when "10" => c_430 <= c_430_425_2_False_shift;
        when others => c_430 <= c_430_356_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 431 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_431 <= c_411 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 432 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_432 <= c_431 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 433 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_433 <= c_396 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 434 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_434 <= c_433 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 435 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_435 <= c_434 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 436 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_436 <= c_435 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 437 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_437 <= c_332 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 438 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_438 <= c_437 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 439 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_439 <= c_438 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 440 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_440 <= c_439 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 441 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_441 <= c_440 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 442 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_442 <= c_441 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 35 with id 443 and associated fundamentals [[114], [32], [536], [-223]]
  c_443_432_5_False_resize <= resize(c_432, 26);
  c_443_432_5_False_shift <= shift_left(c_443_432_5_False_resize, 5);
  c_443_442_0_False_resize <= c_442;
  c_443_442_0_False_shift <= shift_left(c_443_442_0_False_resize, 0);
  c_443_436_1_False_resize <= resize(c_436, 26);
  c_443_436_1_False_shift <= shift_left(c_443_436_1_False_resize, 1);
  c_443_421_0_False_resize <= c_421(25 downto 0);
  c_443_421_0_False_shift <= shift_left(c_443_421_0_False_resize, 0);
  with config_select_35 select c_443_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_443_sel is
        when "00" => c_443 <= c_443_432_5_False_shift;
        when "01" => c_443 <= c_443_442_0_False_shift;
        when "10" => c_443 <= c_443_436_1_False_shift;
        when others => c_443 <= c_443_421_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 444 and associated fundamentals [[1057], [756], [1024], [100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_444 <= c_430 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 445 and associated fundamentals [[1057], [756], [1024], [100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_445 <= c_444 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 446 and associated fundamentals [[1057], [756], [1024], [100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_446 <= c_445 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 447 and associated fundamentals [[1057], [756], [1024], [100]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_447 <= c_446 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 36 with id 448 and associated fundamentals [[943], [724], [488], [323]]
  inst_adder_node_448: entity work.adder_node
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
      x_i => c_447,
      y_i => c_443,
      z_o => c_448_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_448 <= c_448_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 449 and associated fundamentals [[208], [193], [296], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_449 <= c_280 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 450 and associated fundamentals [[208], [193], [296], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_450 <= c_449 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 31 with id 451 and associated fundamentals [[6256], [288], [542], [419]]
  c_451_425_0_False_resize <= c_425(28 downto 0);
  c_451_425_0_False_shift <= shift_left(c_451_425_0_False_resize, 0);
  c_451_356_0_False_resize <= c_356;
  c_451_356_0_False_shift <= shift_left(c_451_356_0_False_resize, 0);
  c_451_450_0_False_resize <= resize(c_450, 29);
  c_451_450_0_False_shift <= shift_left(c_451_450_0_False_resize, 0);
  c_451_415_0_False_resize <= c_415;
  c_451_415_0_False_shift <= shift_left(c_451_415_0_False_resize, 0);
  with config_select_31 select c_451_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_451_sel is
        when "00" => c_451 <= c_451_425_0_False_shift;
        when "01" => c_451 <= c_451_356_0_False_shift;
        when "10" => c_451 <= c_451_450_0_False_shift;
        when others => c_451 <= c_451_415_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 452 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_452 <= c_174 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 453 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_453 <= c_452 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 454 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_454 <= c_453 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 455 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_455 <= c_454 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 456 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_456 <= c_455 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 457 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_457 <= c_456 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 458 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_458 <= c_457 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 459 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_459 <= c_458 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 460 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_460 <= c_459 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 461 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_461 <= c_460 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 462 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_462 <= c_461 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 463 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_463 <= c_462 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 464 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_464 <= c_463 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 465 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_465 <= c_464 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 466 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_466 <= c_465 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 467 and associated fundamentals [[8216], [2], [2056], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_467 <= c_466 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 468 and associated fundamentals [[1152], [6167], [64], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_468 <= c_250 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 469 and associated fundamentals [[1152], [6167], [64], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_469 <= c_468 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 470 and associated fundamentals [[1152], [6167], [64], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_470 <= c_469 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 471 and associated fundamentals [[1152], [6167], [64], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_471 <= c_470 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 472 and associated fundamentals [[1152], [6167], [64], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_472 <= c_471 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 473 and associated fundamentals [[1152], [6167], [64], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_473 <= c_472 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 474 and associated fundamentals [[1152], [6167], [64], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_474 <= c_473 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 475 and associated fundamentals [[1152], [6167], [64], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_475 <= c_474 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 476 and associated fundamentals [[1152], [6167], [64], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_476 <= c_475 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 477 and associated fundamentals [[1152], [6167], [64], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_477 <= c_476 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 478 and associated fundamentals [[163], [928], [270], [264]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_478 <= c_383 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 479 and associated fundamentals [[163], [928], [270], [264]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_479 <= c_478 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 480 and associated fundamentals [[163], [928], [270], [264]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_480 <= c_479 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 481 and associated fundamentals [[163], [928], [270], [264]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_481 <= c_480 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 482 and associated fundamentals [[163], [928], [270], [264]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_482 <= c_481 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 483 and associated fundamentals [[163], [928], [270], [264]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_483 <= c_482 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 484 and associated fundamentals [[8216], [724], [270], [353]]
  c_484_483_0_False_resize <= resize(c_483, 30);
  c_484_483_0_False_shift <= shift_left(c_484_483_0_False_resize, 0);
  c_484_467_0_False_resize <= c_467;
  c_484_467_0_False_shift <= shift_left(c_484_467_0_False_resize, 0);
  c_484_448_0_False_resize <= resize(c_448, 30);
  c_484_448_0_False_shift <= shift_left(c_484_448_0_False_resize, 0);
  c_484_477_0_False_resize <= resize(c_477, 30);
  c_484_477_0_False_shift <= shift_left(c_484_477_0_False_resize, 0);
  with config_select_37 select c_484_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_484_sel is
        when "00" => c_484 <= c_484_483_0_False_shift;
        when "01" => c_484 <= c_484_467_0_False_shift;
        when "10" => c_484 <= c_484_448_0_False_shift;
        when others => c_484 <= c_484_477_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 485 and associated fundamentals [[6256], [288], [542], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_485 <= c_451 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 486 and associated fundamentals [[6256], [288], [542], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_486 <= c_485 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 487 and associated fundamentals [[6256], [288], [542], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_487 <= c_486 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 488 and associated fundamentals [[6256], [288], [542], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_488 <= c_487 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 489 and associated fundamentals [[6256], [288], [542], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_489 <= c_488 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 490 and associated fundamentals [[6256], [288], [542], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_490 <= c_489 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 38 with id 491 and associated fundamentals [[-980], [506], [136], [33]]
  with config_select_38 select c_491_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_491: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 30,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_491_sub_sel,
      x_i => c_490,
      y_i => c_484,
      z_o => c_491_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_491 <= c_491_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 492 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_492 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 493 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_493 <= c_492 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 494 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_494 <= c_493 & "";
    end if;
  end process;
  -- node of type 'register' in stage 16 with id 495 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_495 <= c_494 & "";
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 496 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_496 <= c_495 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 497 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_497 <= c_496 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 498 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_498 <= c_497 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 499 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_499 <= c_498 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 500 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_500 <= c_499 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 501 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_501 <= c_500 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 502 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_502 <= c_501 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 503 and associated fundamentals [[898], [416], [8192], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_503 <= c_502 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 504 and associated fundamentals [[8], [416], [8672], [25]]
  c_504_231_4_False_resize <= c_231;
  c_504_231_4_False_shift <= shift_left(c_504_231_4_False_resize, 4);
  c_504_234_3_False_resize <= resize(c_234, 30);
  c_504_234_3_False_shift <= shift_left(c_504_234_3_False_resize, 3);
  c_504_231_0_False_resize <= c_231;
  c_504_231_0_False_shift <= shift_left(c_504_231_0_False_resize, 0);
  c_504_503_0_False_resize <= resize(c_503, 30);
  c_504_503_0_False_shift <= shift_left(c_504_503_0_False_resize, 0);
  with config_select_25 select c_504_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_504_sel is
        when "00" => c_504 <= c_504_231_4_False_shift;
        when "01" => c_504 <= c_504_234_3_False_shift;
        when "10" => c_504 <= c_504_231_0_False_shift;
        when others => c_504 <= c_504_503_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 505 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_505 <= c_408 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 506 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_506 <= c_505 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 507 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_507 <= c_506 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 508 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_508 <= c_507 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 509 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_509 <= c_425 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 510 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_510 <= c_509 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 511 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_511 <= c_510 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 512 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_512 <= c_511 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 35 with id 513 and associated fundamentals [[20], [41], [4336], [512]]
  c_513_421_0_False_resize <= c_421(28 downto 0);
  c_513_421_0_False_shift <= shift_left(c_513_421_0_False_resize, 0);
  c_513_508_0_False_resize <= resize(c_508, 29);
  c_513_508_0_False_shift <= shift_left(c_513_508_0_False_resize, 0);
  c_513_432_9_False_resize <= resize(c_432, 29);
  c_513_432_9_False_shift <= shift_left(c_513_432_9_False_resize, 9);
  c_513_512_3_False_resize <= c_512(28 downto 0);
  c_513_512_3_False_shift <= shift_left(c_513_512_3_False_resize, 3);
  with config_select_35 select c_513_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_513_sel is
        when "00" => c_513 <= c_513_421_0_False_shift;
        when "01" => c_513 <= c_513_508_0_False_shift;
        when "10" => c_513 <= c_513_432_9_False_shift;
        when others => c_513 <= c_513_512_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 514 and associated fundamentals [[8], [416], [8672], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_514 <= c_504 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 515 and associated fundamentals [[8], [416], [8672], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_515 <= c_514 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 516 and associated fundamentals [[8], [416], [8672], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_516 <= c_515 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 517 and associated fundamentals [[8], [416], [8672], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_517 <= c_516 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 518 and associated fundamentals [[8], [416], [8672], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_518 <= c_517 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 519 and associated fundamentals [[8], [416], [8672], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_519 <= c_518 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 520 and associated fundamentals [[8], [416], [8672], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_520 <= c_519 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 521 and associated fundamentals [[8], [416], [8672], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_521 <= c_520 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 522 and associated fundamentals [[8], [416], [8672], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_522 <= c_521 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 523 and associated fundamentals [[8], [416], [8672], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_523 <= c_522 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 36 with id 524 and associated fundamentals [[28], [457], [13008], [-487]]
  with config_select_36 select c_524_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_524: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
      w_o => 30,
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
      sub_i => c_524_sub_sel,
      x_i => c_523,
      y_i => c_513,
      z_o => c_524_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_524 <= c_524_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 31 with id 525 and associated fundamentals [[512], [928], [1464], [353]]
  c_525_408_1_False_resize <= c_408;
  c_525_408_1_False_shift <= shift_left(c_525_408_1_False_resize, 1);
  c_525_383_0_False_resize <= resize(c_383, 27);
  c_525_383_0_False_shift <= shift_left(c_525_383_0_False_resize, 0);
  c_525_471_0_False_resize <= c_471(26 downto 0);
  c_525_471_0_False_shift <= shift_left(c_525_471_0_False_resize, 0);
  c_525_415_8_False_resize <= c_415(26 downto 0);
  c_525_415_8_False_shift <= shift_left(c_525_415_8_False_resize, 8);
  with config_select_31 select c_525_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_525_sel is
        when "00" => c_525 <= c_525_408_1_False_shift;
        when "01" => c_525 <= c_525_383_0_False_shift;
        when "10" => c_525 <= c_525_471_0_False_shift;
        when others => c_525 <= c_525_415_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 25 with id 526 and associated fundamentals [[3], [82], [268], [4]]
  c_526_234_2_False_resize <= resize(c_234, 25);
  c_526_234_2_False_shift <= shift_left(c_526_234_2_False_resize, 2);
  c_526_228_1_False_resize <= c_228(24 downto 0);
  c_526_228_1_False_shift <= shift_left(c_526_228_1_False_resize, 1);
  c_526_252_0_False_resize <= c_252(24 downto 0);
  c_526_252_0_False_shift <= shift_left(c_526_252_0_False_resize, 0);
  c_526_320_0_False_resize <= c_320;
  c_526_320_0_False_shift <= shift_left(c_526_320_0_False_resize, 0);
  with config_select_25 select c_526_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_526_sel is
        when "00" => c_526 <= c_526_234_2_False_shift;
        when "01" => c_526 <= c_526_228_1_False_shift;
        when "10" => c_526 <= c_526_252_0_False_shift;
        when others => c_526 <= c_526_320_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 527 and associated fundamentals [[3], [82], [268], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_527 <= c_526 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 528 and associated fundamentals [[3], [82], [268], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_528 <= c_527 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 529 and associated fundamentals [[3], [82], [268], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_529 <= c_528 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 530 and associated fundamentals [[3], [82], [268], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_530 <= c_529 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 531 and associated fundamentals [[3], [82], [268], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_531 <= c_530 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 532 and associated fundamentals [[3], [82], [268], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_532 <= c_531 & "";
    end if;
  end process;
  -- node of type 'add' in stage 32 with id 533 and associated fundamentals [[515], [1010], [1732], [357]]
  inst_adder_node_533: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 25,
      w_o => 27,
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
      x_i => c_525,
      y_i => c_532,
      z_o => c_533_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_533 <= c_533_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 29 with id 534 and associated fundamentals [[226], [28], [256], [704]]
  c_534_284_8_False_resize <= resize(c_284, 26);
  c_534_284_8_False_shift <= shift_left(c_534_284_8_False_resize, 8);
  c_534_292_0_False_resize <= c_292(25 downto 0);
  c_534_292_0_False_shift <= shift_left(c_534_292_0_False_resize, 0);
  c_534_327_0_False_resize <= c_327;
  c_534_327_0_False_shift <= shift_left(c_534_327_0_False_resize, 0);
  c_534_292_1_False_resize <= c_292(25 downto 0);
  c_534_292_1_False_shift <= shift_left(c_534_292_1_False_resize, 1);
  with config_select_29 select c_534_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_534_sel is
        when "00" => c_534 <= c_534_284_8_False_shift;
        when "01" => c_534 <= c_534_292_0_False_shift;
        when "10" => c_534 <= c_534_327_0_False_shift;
        when others => c_534 <= c_534_292_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 17 with id 535 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_535 <= c_103 & "";
    end if;
  end process;
  -- node of type 'register' in stage 18 with id 536 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_536 <= c_535 & "";
    end if;
  end process;
  -- node of type 'register' in stage 19 with id 537 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_537 <= c_536 & "";
    end if;
  end process;
  -- node of type 'register' in stage 20 with id 538 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_538 <= c_537 & "";
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 539 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_539 <= c_538 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 540 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_540 <= c_539 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 541 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_541 <= c_540 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 542 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_542 <= c_541 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 543 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_543 <= c_542 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 544 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_544 <= c_543 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 545 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_545 <= c_544 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 546 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_546 <= c_545 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 547 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_547 <= c_546 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 548 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_548 <= c_547 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 549 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_549 <= c_548 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 550 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_550 <= c_549 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 551 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_551 <= c_550 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 552 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_552 <= c_551 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 553 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_553 <= c_552 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 554 and associated fundamentals [[63], [776], [768], [293]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_554 <= c_553 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 555 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_555 <= c_442 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 556 and associated fundamentals [[114], [-736], [512], [616]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_556 <= c_555 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 557 and associated fundamentals [[208], [193], [296], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_557 <= c_450 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 558 and associated fundamentals [[208], [193], [296], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_558 <= c_557 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 559 and associated fundamentals [[208], [193], [296], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_559 <= c_558 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 560 and associated fundamentals [[208], [193], [296], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_560 <= c_559 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 561 and associated fundamentals [[208], [193], [296], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_561 <= c_560 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 562 and associated fundamentals [[208], [193], [296], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_562 <= c_561 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 563 and associated fundamentals [[416], [-736], [768], [-487]]
  c_563_524_0_False_resize <= c_524(25 downto 0);
  c_563_524_0_False_shift <= shift_left(c_563_524_0_False_resize, 0);
  c_563_556_0_False_resize <= c_556;
  c_563_556_0_False_shift <= shift_left(c_563_556_0_False_resize, 0);
  c_563_562_1_False_resize <= resize(c_562, 26);
  c_563_562_1_False_shift <= shift_left(c_563_562_1_False_resize, 1);
  c_563_554_0_False_resize <= c_554;
  c_563_554_0_False_shift <= shift_left(c_563_554_0_False_resize, 0);
  with config_select_37 select c_563_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_563_sel is
        when "00" => c_563 <= c_563_524_0_False_shift;
        when "01" => c_563 <= c_563_556_0_False_shift;
        when "10" => c_563 <= c_563_562_1_False_shift;
        when others => c_563 <= c_563_554_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 564 and associated fundamentals [[226], [28], [256], [704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_564 <= c_534 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 565 and associated fundamentals [[226], [28], [256], [704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_565 <= c_564 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 566 and associated fundamentals [[226], [28], [256], [704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_566 <= c_565 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 567 and associated fundamentals [[226], [28], [256], [704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_567 <= c_566 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 568 and associated fundamentals [[226], [28], [256], [704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_568 <= c_567 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 569 and associated fundamentals [[226], [28], [256], [704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_569 <= c_568 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 570 and associated fundamentals [[226], [28], [256], [704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_570 <= c_569 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 571 and associated fundamentals [[226], [28], [256], [704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_571 <= c_570 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 38 with id 572 and associated fundamentals [[-190], [764], [1024], [217]]
  with config_select_38 select c_572_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_572: entity work.adder_node
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
      sub_i => c_572_sub_sel,
      x_i => c_571,
      y_i => c_563,
      z_o => c_572_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_572 <= c_572_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 573 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_573 <= c_432 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 574 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_574 <= c_573 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 575 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_575 <= c_404 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 576 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_576 <= c_575 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 577 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_577 <= c_576 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 578 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_578 <= c_577 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 579 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_579 <= c_578 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 580 and associated fundamentals [[66], [9], [512], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_580 <= c_579 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 581 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_581 <= c_267 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 582 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_582 <= c_581 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 583 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_583 <= c_582 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 584 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_584 <= c_583 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 585 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_585 <= c_584 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 586 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_586 <= c_585 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 587 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_587 <= c_586 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 588 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_588 <= c_587 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 589 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_589 <= c_588 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 590 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_590 <= c_589 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 591 and associated fundamentals [[3], [18], [976], [1]]
  c_591_448_1_False_resize <= c_448;
  c_591_448_1_False_shift <= shift_left(c_591_448_1_False_resize, 1);
  c_591_590_0_False_resize <= c_590(25 downto 0);
  c_591_590_0_False_shift <= shift_left(c_591_590_0_False_resize, 0);
  c_591_574_0_False_resize <= resize(c_574, 26);
  c_591_574_0_False_shift <= shift_left(c_591_574_0_False_resize, 0);
  c_591_580_1_False_resize <= resize(c_580, 26);
  c_591_580_1_False_shift <= shift_left(c_591_580_1_False_resize, 1);
  with config_select_37 select c_591_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_591_sel is
        when "00" => c_591 <= c_591_448_1_False_shift;
        when "01" => c_591 <= c_591_590_0_False_shift;
        when "10" => c_591 <= c_591_574_0_False_shift;
        when others => c_591 <= c_591_580_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 31 with id 592 and associated fundamentals [[1008], [737], [1], [8]]
  c_592_394_0_False_resize <= resize(c_394, 26);
  c_592_394_0_False_shift <= shift_left(c_592_394_0_False_resize, 0);
  c_592_394_3_False_resize <= resize(c_394, 26);
  c_592_394_3_False_shift <= shift_left(c_592_394_3_False_resize, 3);
  c_592_315_0_False_resize <= c_315(25 downto 0);
  c_592_315_0_False_shift <= shift_left(c_592_315_0_False_resize, 0);
  c_592_548_4_False_resize <= c_548;
  c_592_548_4_False_shift <= shift_left(c_592_548_4_False_resize, 4);
  with config_select_31 select c_592_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_592_sel is
        when "00" => c_592 <= c_592_394_0_False_shift;
        when "01" => c_592 <= c_592_394_3_False_shift;
        when "10" => c_592 <= c_592_315_0_False_shift;
        when others => c_592 <= c_592_548_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 593 and associated fundamentals [[1008], [737], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_593 <= c_592 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 594 and associated fundamentals [[1008], [737], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_594 <= c_593 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 595 and associated fundamentals [[1008], [737], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_595 <= c_594 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 596 and associated fundamentals [[1008], [737], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_596 <= c_595 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 597 and associated fundamentals [[1008], [737], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_597 <= c_596 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 598 and associated fundamentals [[1008], [737], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_598 <= c_597 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 38 with id 599 and associated fundamentals [[1011], [-719], [977], [9]]
  with config_select_38 select c_599_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_599: entity work.adder_node
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
      sub_i => c_599_sub_sel,
      x_i => c_591,
      y_i => c_598,
      z_o => c_599_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_599 <= c_599_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 600 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_600 <= c_574 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 601 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_601 <= c_600 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 602 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_602 <= c_417 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 603 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_603 <= c_602 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 604 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_604 <= c_603 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 605 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_605 <= c_604 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 606 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_606 <= c_605 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 607 and associated fundamentals [[2], [288], [8192], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_607 <= c_606 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 608 and associated fundamentals [[1152], [6167], [64], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_608 <= c_477 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 609 and associated fundamentals [[1152], [6167], [64], [353]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_609 <= c_608 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 39 with id 610 and associated fundamentals [[1011], [1152], [4096], [353]]
  c_610_599_0_False_resize <= resize(c_599, 28);
  c_610_599_0_False_shift <= shift_left(c_610_599_0_False_resize, 0);
  c_610_607_2_False_resize <= c_607(27 downto 0);
  c_610_607_2_False_shift <= shift_left(c_610_607_2_False_resize, 2);
  c_610_601_12_False_resize <= resize(c_601, 28);
  c_610_601_12_False_shift <= shift_left(c_610_601_12_False_resize, 12);
  c_610_609_0_False_resize <= c_609(27 downto 0);
  c_610_609_0_False_shift <= shift_left(c_610_609_0_False_resize, 0);
  with config_select_39 select c_610_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_610_sel is
        when "00" => c_610 <= c_610_599_0_False_shift;
        when "01" => c_610 <= c_610_607_2_False_shift;
        when "10" => c_610 <= c_610_601_12_False_shift;
        when others => c_610 <= c_610_609_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 21 with id 611 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_611 <= c_193 & "";
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 612 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_612 <= c_611 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 613 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_613 <= c_612 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 614 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_614 <= c_613 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 615 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_615 <= c_614 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 616 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_616 <= c_615 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 617 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_617 <= c_616 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 618 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_618 <= c_617 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 619 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_619 <= c_618 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 620 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_620 <= c_619 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 621 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_621 <= c_620 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 622 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_622 <= c_621 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 623 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_623 <= c_622 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 624 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_624 <= c_623 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 625 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_625 <= c_624 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 626 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_626 <= c_625 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 627 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_627 <= c_626 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 628 and associated fundamentals [[-1048], [2776], [128], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_628 <= c_627 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 629 and associated fundamentals [[2692], [737], [6152], [3360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_629 <= c_315 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 630 and associated fundamentals [[2692], [737], [6152], [3360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_630 <= c_629 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 631 and associated fundamentals [[2692], [737], [6152], [3360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_631 <= c_630 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 632 and associated fundamentals [[2692], [737], [6152], [3360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_632 <= c_631 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 633 and associated fundamentals [[2692], [737], [6152], [3360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_633 <= c_632 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 634 and associated fundamentals [[2692], [737], [6152], [3360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_634 <= c_633 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 635 and associated fundamentals [[2692], [737], [6152], [3360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_635 <= c_634 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 636 and associated fundamentals [[2692], [737], [6152], [3360]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_636 <= c_635 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 39 with id 637 and associated fundamentals [[-980], [737], [4096], [2]]
  c_637_609_6_False_resize <= c_609(27 downto 0);
  c_637_609_6_False_shift <= shift_left(c_637_609_6_False_resize, 6);
  c_637_491_0_False_resize <= resize(c_491, 28);
  c_637_491_0_False_shift <= shift_left(c_637_491_0_False_resize, 0);
  c_637_636_0_False_resize <= c_636(27 downto 0);
  c_637_636_0_False_shift <= shift_left(c_637_636_0_False_resize, 0);
  c_637_628_0_False_resize <= c_628;
  c_637_628_0_False_shift <= shift_left(c_637_628_0_False_resize, 0);
  with config_select_39 select c_637_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_637_sel is
        when "00" => c_637 <= c_637_609_6_False_shift;
        when "01" => c_637 <= c_637_491_0_False_shift;
        when "10" => c_637 <= c_637_636_0_False_shift;
        when others => c_637 <= c_637_628_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 40 with id 638 and associated fundamentals [[31], [415], [0], [355]]
  with config_select_40 select c_638_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_638: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 28,
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
      sub_i => c_638_sub_sel,
      x_i => c_610,
      y_i => c_637,
      z_o => c_638_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_638 <= c_638_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 639 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_639 <= c_304 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 640 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_640 <= c_639 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 641 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_641 <= c_640 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 642 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_642 <= c_641 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 643 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_643 <= c_642 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 644 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_644 <= c_643 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 645 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_645 <= c_644 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 646 and associated fundamentals [[640], [1360], [33], [10496]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_646 <= c_645 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 647 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_647 <= c_512 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 648 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_648 <= c_647 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 649 and associated fundamentals [[20], [-239], [12303], [-223]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_649 <= c_421 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 650 and associated fundamentals [[20], [-239], [12303], [-223]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_650 <= c_649 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 651 and associated fundamentals [[896], [296], [12303], [10496]]
  c_651_524_5_False_resize <= c_524;
  c_651_524_5_False_shift <= shift_left(c_651_524_5_False_resize, 5);
  c_651_650_0_False_resize <= c_650;
  c_651_650_0_False_shift <= shift_left(c_651_650_0_False_resize, 0);
  c_651_646_0_False_resize <= c_646;
  c_651_646_0_False_shift <= shift_left(c_651_646_0_False_resize, 0);
  c_651_648_0_False_resize <= c_648;
  c_651_648_0_False_shift <= shift_left(c_651_648_0_False_resize, 0);
  with config_select_37 select c_651_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_651_sel is
        when "00" => c_651 <= c_651_524_5_False_shift;
        when "01" => c_651 <= c_651_650_0_False_shift;
        when "10" => c_651 <= c_651_646_0_False_shift;
        when others => c_651 <= c_651_648_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 652 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_652 <= c_292 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 653 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_653 <= c_652 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 654 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_654 <= c_653 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 655 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_655 <= c_654 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 656 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_656 <= c_655 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 657 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_657 <= c_656 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 658 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_658 <= c_657 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 659 and associated fundamentals [[0], [28], [6144], [352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_659 <= c_658 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 660 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_660 <= c_508 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 661 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_661 <= c_660 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 37 with id 662 and associated fundamentals [[3], [82], [13008], [352]]
  c_662_524_0_False_resize <= c_524;
  c_662_524_0_False_shift <= shift_left(c_662_524_0_False_resize, 0);
  c_662_590_0_False_resize <= c_590;
  c_662_590_0_False_shift <= shift_left(c_662_590_0_False_resize, 0);
  c_662_661_1_False_resize <= resize(c_661, 30);
  c_662_661_1_False_shift <= shift_left(c_662_661_1_False_resize, 1);
  c_662_659_0_False_resize <= resize(c_659, 30);
  c_662_659_0_False_shift <= shift_left(c_662_659_0_False_resize, 0);
  with config_select_37 select c_662_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_662_sel is
        when "00" => c_662 <= c_662_524_0_False_shift;
        when "01" => c_662 <= c_662_590_0_False_shift;
        when "10" => c_662 <= c_662_661_1_False_shift;
        when others => c_662 <= c_662_659_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 38 with id 663 and associated fundamentals [[899], [378], [-705], [10144]]
  with config_select_38 select c_663_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_663: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 30,
      w_o => 30,
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
      sub_i => c_663_sub_sel,
      x_i => c_651,
      y_i => c_662,
      z_o => c_663_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_663 <= c_663_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 21 with id 664 and associated fundamentals [[264], [824], [1], [448]]
  c_664_205_2_False_resize <= resize(c_205, 26);
  c_664_205_2_False_shift <= shift_left(c_664_205_2_False_resize, 2);
  c_664_174_6_False_resize <= c_174(25 downto 0);
  c_664_174_6_False_shift <= shift_left(c_664_174_6_False_resize, 6);
  c_664_236_1_False_resize <= resize(c_236, 26);
  c_664_236_1_False_shift <= shift_left(c_664_236_1_False_resize, 1);
  c_664_176_0_False_resize <= resize(c_176, 26);
  c_664_176_0_False_shift <= shift_left(c_664_176_0_False_resize, 0);
  with config_select_21 select c_664_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_664_sel is
        when "00" => c_664 <= c_664_205_2_False_shift;
        when "01" => c_664 <= c_664_174_6_False_shift;
        when "10" => c_664 <= c_664_236_1_False_shift;
        when others => c_664 <= c_664_176_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 665 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_665 <= c_385 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 666 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_666 <= c_665 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 667 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_667 <= c_666 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 668 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_668 <= c_667 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 669 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_669 <= c_668 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 670 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_670 <= c_669 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 671 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_671 <= c_670 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 672 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_672 <= c_671 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 673 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_673 <= c_672 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 674 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_674 <= c_673 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 675 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_675 <= c_674 & "";
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 676 and associated fundamentals [[130], [2736], [24], [12801]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_676 <= c_675 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 677 and associated fundamentals [[208], [193], [296], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_677 <= c_562 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 678 and associated fundamentals [[208], [193], [296], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_678 <= c_677 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 679 and associated fundamentals [[208], [193], [296], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_679 <= c_678 & "";
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 680 and associated fundamentals [[208], [193], [296], [419]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_680 <= c_679 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 681 and associated fundamentals [[943], [724], [488], [323]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_681 <= c_448 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 682 and associated fundamentals [[943], [724], [488], [323]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_682 <= c_681 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 683 and associated fundamentals [[943], [724], [488], [323]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_683 <= c_682 & "";
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 684 and associated fundamentals [[943], [724], [488], [323]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_684 <= c_683 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 41 with id 685 and associated fundamentals [[31], [193], [192], [323]]
  c_685_680_0_False_resize <= c_680;
  c_685_680_0_False_shift <= shift_left(c_685_680_0_False_resize, 0);
  c_685_638_0_False_resize <= c_638;
  c_685_638_0_False_shift <= shift_left(c_685_638_0_False_resize, 0);
  c_685_676_3_False_resize <= c_676(24 downto 0);
  c_685_676_3_False_shift <= shift_left(c_685_676_3_False_resize, 3);
  c_685_684_0_False_resize <= c_684(24 downto 0);
  c_685_684_0_False_shift <= shift_left(c_685_684_0_False_resize, 0);
  with config_select_41 select c_685_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_685_sel is
        when "00" => c_685 <= c_685_680_0_False_shift;
        when "01" => c_685 <= c_685_638_0_False_shift;
        when "10" => c_685 <= c_685_676_3_False_shift;
        when others => c_685 <= c_685_684_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 22 with id 686 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_686 <= c_664 & "";
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 687 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_687 <= c_686 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 688 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_688 <= c_687 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 689 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_689 <= c_688 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 690 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_690 <= c_689 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 691 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_691 <= c_690 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 692 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_692 <= c_691 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 693 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_693 <= c_692 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 694 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_694 <= c_693 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 695 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_695 <= c_694 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 696 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_696 <= c_695 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 697 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_697 <= c_696 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 698 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_698 <= c_697 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 699 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_699 <= c_698 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 700 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_700 <= c_699 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 701 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_701 <= c_700 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 702 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_702 <= c_701 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 703 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_703 <= c_702 & "";
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 704 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_704 <= c_703 & "";
    end if;
  end process;
  -- node of type 'register' in stage 41 with id 705 and associated fundamentals [[264], [824], [1], [448]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_705 <= c_704 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 42 with id 706 and associated fundamentals [[233], [631], [193], [771]]
  with config_select_42 select c_706_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_706: entity work.adder_node
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
      sub_i => c_706_sub_sel,
      x_i => c_705,
      y_i => c_685,
      z_o => c_706_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_706 <= c_706_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 707 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_707 <= c_358 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 708 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_708 <= c_707 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 709 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_709 <= c_708 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 710 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_710 <= c_709 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 711 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_711 <= c_710 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 712 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_712 <= c_711 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 713 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_713 <= c_712 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 714 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_714 <= c_713 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 715 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_715 <= c_714 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 716 and associated fundamentals [[448], [412], [0], [88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_716 <= c_715 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 717 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_717 <= c_590 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 718 and associated fundamentals [[3], [-2000], [9472], [295]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_718 <= c_717 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 719 and associated fundamentals [[163], [928], [270], [264]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_719 <= c_483 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 720 and associated fundamentals [[163], [928], [270], [264]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_720 <= c_719 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 39 with id 721 and associated fundamentals [[1011], [824], [270], [590]]
  c_721_599_0_False_resize <= c_599;
  c_721_599_0_False_shift <= shift_left(c_721_599_0_False_resize, 0);
  c_721_720_0_False_resize <= c_720;
  c_721_720_0_False_shift <= shift_left(c_721_720_0_False_resize, 0);
  c_721_718_1_False_resize <= c_718(25 downto 0);
  c_721_718_1_False_shift <= shift_left(c_721_718_1_False_resize, 1);
  c_721_716_1_False_resize <= resize(c_716, 26);
  c_721_716_1_False_shift <= shift_left(c_721_716_1_False_resize, 1);
  with config_select_39 select c_721_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_721_sel is
        when "00" => c_721 <= c_721_599_0_False_shift;
        when "01" => c_721 <= c_721_720_0_False_shift;
        when "10" => c_721 <= c_721_718_1_False_shift;
        when others => c_721 <= c_721_716_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 722 and associated fundamentals [[515], [1010], [1732], [357]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_722 <= c_533 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 723 and associated fundamentals [[515], [1010], [1732], [357]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_723 <= c_722 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 724 and associated fundamentals [[515], [1010], [1732], [357]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_724 <= c_723 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 725 and associated fundamentals [[515], [1010], [1732], [357]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_725 <= c_724 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 726 and associated fundamentals [[515], [1010], [1732], [357]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_726 <= c_725 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 727 and associated fundamentals [[515], [1010], [1732], [357]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_727 <= c_726 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 728 and associated fundamentals [[515], [1010], [1732], [357]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_728 <= c_727 & "";
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 729 and associated fundamentals [[515], [1010], [1732], [357]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_729 <= c_728 & "";
    end if;
  end process;
  -- node of type 'register' in stage 41 with id 730 and associated fundamentals [[515], [1010], [1732], [357]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_730 <= c_729 & "";
    end if;
  end process;
  -- node of type 'register' in stage 42 with id 731 and associated fundamentals [[515], [1010], [1732], [357]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_731 <= c_730 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 732 and associated fundamentals [[1011], [-719], [977], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_732 <= c_599 & "";
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 733 and associated fundamentals [[1011], [-719], [977], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_733 <= c_732 & "";
    end if;
  end process;
  -- node of type 'register' in stage 41 with id 734 and associated fundamentals [[1011], [-719], [977], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_734 <= c_733 & "";
    end if;
  end process;
  -- node of type 'register' in stage 42 with id 735 and associated fundamentals [[1011], [-719], [977], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_735 <= c_734 & "";
    end if;
  end process;
  -- node of type 'register' in stage 41 with id 736 and associated fundamentals [[31], [415], [0], [355]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_736 <= c_638 & "";
    end if;
  end process;
  -- node of type 'register' in stage 42 with id 737 and associated fundamentals [[31], [415], [0], [355]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_737 <= c_736 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 43 with id 738 and associated fundamentals [[496], [1010], [977], [771]]
  c_738_706_0_False_resize <= c_706;
  c_738_706_0_False_shift <= shift_left(c_738_706_0_False_resize, 0);
  c_738_735_0_False_resize <= c_735;
  c_738_735_0_False_shift <= shift_left(c_738_735_0_False_resize, 0);
  c_738_737_4_False_resize <= resize(c_737, 26);
  c_738_737_4_False_shift <= shift_left(c_738_737_4_False_resize, 4);
  c_738_731_0_False_resize <= c_731(25 downto 0);
  c_738_731_0_False_shift <= shift_left(c_738_731_0_False_resize, 0);
  with config_select_43 select c_738_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_738_sel is
        when "00" => c_738 <= c_738_706_0_False_shift;
        when "01" => c_738 <= c_738_735_0_False_shift;
        when "10" => c_738 <= c_738_737_4_False_shift;
        when others => c_738 <= c_738_731_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 739 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_739 <= c_436 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 740 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_740 <= c_739 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 741 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_741 <= c_740 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 742 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_742 <= c_741 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 743 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_743 <= c_742 & "";
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 744 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_744 <= c_743 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 745 and associated fundamentals [[150], [321], [14364], [14720]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_745 <= c_400 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 746 and associated fundamentals [[150], [321], [14364], [14720]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_746 <= c_745 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 747 and associated fundamentals [[150], [321], [14364], [14720]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_747 <= c_746 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 748 and associated fundamentals [[150], [321], [14364], [14720]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_748 <= c_747 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 749 and associated fundamentals [[150], [321], [14364], [14720]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_749 <= c_748 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 750 and associated fundamentals [[150], [321], [14364], [14720]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_750 <= c_749 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 751 and associated fundamentals [[150], [321], [14364], [14720]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_751 <= c_750 & "";
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 752 and associated fundamentals [[150], [321], [14364], [14720]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_752 <= c_751 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 41 with id 753 and associated fundamentals [[150], [415], [268], [838]]
  c_753_680_1_False_resize <= resize(c_680, 26);
  c_753_680_1_False_shift <= shift_left(c_753_680_1_False_resize, 1);
  c_753_752_0_False_resize <= c_752(25 downto 0);
  c_753_752_0_False_shift <= shift_left(c_753_752_0_False_resize, 0);
  c_753_744_0_False_resize <= resize(c_744, 26);
  c_753_744_0_False_shift <= shift_left(c_753_744_0_False_resize, 0);
  c_753_638_0_False_resize <= resize(c_638, 26);
  c_753_638_0_False_shift <= shift_left(c_753_638_0_False_resize, 0);
  with config_select_41 select c_753_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_753_sel is
        when "00" => c_753 <= c_753_680_1_False_shift;
        when "01" => c_753 <= c_753_752_0_False_shift;
        when "10" => c_753 <= c_753_744_0_False_shift;
        when others => c_753 <= c_753_638_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 754 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_754 <= c_648 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 755 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_755 <= c_754 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 39 with id 756 and associated fundamentals [[899], [506], [542], [868]]
  c_756_755_0_False_resize <= c_755(25 downto 0);
  c_756_755_0_False_shift <= shift_left(c_756_755_0_False_resize, 0);
  c_756_572_2_False_resize <= c_572;
  c_756_572_2_False_shift <= shift_left(c_756_572_2_False_resize, 2);
  c_756_491_0_False_resize <= c_491;
  c_756_491_0_False_shift <= shift_left(c_756_491_0_False_resize, 0);
  c_756_663_0_False_resize <= c_663(25 downto 0);
  c_756_663_0_False_shift <= shift_left(c_756_663_0_False_resize, 0);
  with config_select_39 select c_756_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_756_sel is
        when "00" => c_756 <= c_756_755_0_False_shift;
        when "01" => c_756 <= c_756_572_2_False_shift;
        when "10" => c_756 <= c_756_491_0_False_shift;
        when others => c_756 <= c_756_663_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 33 with id 757 and associated fundamentals [[163], [737], [296], [714]]
  c_757_630_0_False_resize <= c_630(25 downto 0);
  c_757_630_0_False_shift <= shift_left(c_757_630_0_False_resize, 0);
  c_757_533_1_False_resize <= c_533(25 downto 0);
  c_757_533_1_False_shift <= shift_left(c_757_533_1_False_resize, 1);
  c_757_479_0_False_resize <= c_479;
  c_757_479_0_False_shift <= shift_left(c_757_479_0_False_resize, 0);
  c_757_558_0_False_resize <= resize(c_558, 26);
  c_757_558_0_False_shift <= shift_left(c_757_558_0_False_resize, 0);
  with config_select_33 select c_757_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_757_sel is
        when "00" => c_757 <= c_757_630_0_False_shift;
        when "01" => c_757 <= c_757_533_1_False_shift;
        when "10" => c_757 <= c_757_479_0_False_shift;
        when others => c_757 <= c_757_558_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 41 with id 758 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_758 <= c_744 & "";
    end if;
  end process;
  -- node of type 'register' in stage 42 with id 759 and associated fundamentals [[370], [1], [268], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_759 <= c_758 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 760 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_760 <= c_661 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 761 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_761 <= c_760 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 762 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_762 <= c_761 & "";
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 763 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_763 <= c_762 & "";
    end if;
  end process;
  -- node of type 'register' in stage 41 with id 764 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_764 <= c_763 & "";
    end if;
  end process;
  -- node of type 'register' in stage 42 with id 765 and associated fundamentals [[1538], [41], [732], [607]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_765 <= c_764 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 43 with id 766 and associated fundamentals [[370], [631], [732], [607]]
  c_766_759_0_False_resize <= resize(c_759, 26);
  c_766_759_0_False_shift <= shift_left(c_766_759_0_False_resize, 0);
  c_766_765_0_False_resize <= c_765(25 downto 0);
  c_766_765_0_False_shift <= shift_left(c_766_765_0_False_resize, 0);
  c_766_706_0_False_resize <= c_706;
  c_766_706_0_False_shift <= shift_left(c_766_706_0_False_resize, 0);
  with config_select_43 select c_766_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_766_sel is
        when "00" => c_766 <= c_766_759_0_False_shift;
        when "01" => c_766 <= c_766_765_0_False_shift;
        when others => c_766 <= c_766_706_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 767 and associated fundamentals [[6256], [3026], [2], [-662]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_767 <= c_356 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 768 and associated fundamentals [[6256], [3026], [2], [-662]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_768 <= c_767 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 769 and associated fundamentals [[6256], [3026], [2], [-662]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_769 <= c_768 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 770 and associated fundamentals [[6256], [3026], [2], [-662]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_770 <= c_769 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 771 and associated fundamentals [[6256], [3026], [2], [-662]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_771 <= c_770 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 772 and associated fundamentals [[6256], [3026], [2], [-662]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_772 <= c_771 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 773 and associated fundamentals [[6256], [3026], [2], [-662]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_773 <= c_772 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 774 and associated fundamentals [[6256], [3026], [2], [-662]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_774 <= c_773 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 39 with id 775 and associated fundamentals [[-190], [-719], [-705], [-662]]
  c_775_774_0_False_resize <= c_774(25 downto 0);
  c_775_774_0_False_shift <= shift_left(c_775_774_0_False_resize, 0);
  c_775_599_0_False_resize <= c_599;
  c_775_599_0_False_shift <= shift_left(c_775_599_0_False_resize, 0);
  c_775_572_0_False_resize <= c_572;
  c_775_572_0_False_shift <= shift_left(c_775_572_0_False_resize, 0);
  c_775_663_0_False_resize <= c_663(25 downto 0);
  c_775_663_0_False_shift <= shift_left(c_775_663_0_False_resize, 0);
  with config_select_39 select c_775_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_775_sel is
        when "00" => c_775 <= c_775_774_0_False_shift;
        when "01" => c_775 <= c_775_599_0_False_shift;
        when "10" => c_775 <= c_775_572_0_False_shift;
        when others => c_775 <= c_775_663_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 23 with id 776 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_776 <= c_219 & "";
    end if;
  end process;
  -- node of type 'register' in stage 24 with id 777 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_777 <= c_776 & "";
    end if;
  end process;
  -- node of type 'register' in stage 25 with id 778 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_778 <= c_777 & "";
    end if;
  end process;
  -- node of type 'register' in stage 26 with id 779 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_779 <= c_778 & "";
    end if;
  end process;
  -- node of type 'register' in stage 27 with id 780 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_780 <= c_779 & "";
    end if;
  end process;
  -- node of type 'register' in stage 28 with id 781 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_781 <= c_780 & "";
    end if;
  end process;
  -- node of type 'register' in stage 29 with id 782 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_782 <= c_781 & "";
    end if;
  end process;
  -- node of type 'register' in stage 30 with id 783 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_783 <= c_782 & "";
    end if;
  end process;
  -- node of type 'register' in stage 31 with id 784 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_784 <= c_783 & "";
    end if;
  end process;
  -- node of type 'register' in stage 32 with id 785 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_785 <= c_784 & "";
    end if;
  end process;
  -- node of type 'register' in stage 33 with id 786 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_786 <= c_785 & "";
    end if;
  end process;
  -- node of type 'register' in stage 34 with id 787 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_787 <= c_786 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 788 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_788 <= c_787 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 789 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_789 <= c_788 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 790 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_790 <= c_789 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 791 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_791 <= c_790 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 792 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_792 <= c_791 & "";
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 793 and associated fundamentals [[0], [-10879], [49], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_793 <= c_792 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 794 and associated fundamentals [[899], [378], [-705], [10144]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_794 <= c_663 & "";
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 795 and associated fundamentals [[899], [378], [-705], [10144]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_795 <= c_794 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 41 with id 796 and associated fundamentals [[943], [756], [196], [710]]
  c_796_795_1_False_resize <= c_795(25 downto 0);
  c_796_795_1_False_shift <= shift_left(c_796_795_1_False_resize, 1);
  c_796_793_2_False_resize <= c_793(25 downto 0);
  c_796_793_2_False_shift <= shift_left(c_796_793_2_False_resize, 2);
  c_796_684_0_False_resize <= c_684;
  c_796_684_0_False_shift <= shift_left(c_796_684_0_False_resize, 0);
  c_796_638_1_False_resize <= resize(c_638, 26);
  c_796_638_1_False_shift <= shift_left(c_796_638_1_False_resize, 1);
  with config_select_41 select c_796_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_796_sel is
        when "00" => c_796 <= c_796_795_1_False_shift;
        when "01" => c_796 <= c_796_793_2_False_shift;
        when "10" => c_796 <= c_796_684_0_False_shift;
        when others => c_796 <= c_796_638_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 797 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_797 <= c_755 & "";
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 798 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_798 <= c_797 & "";
    end if;
  end process;
  -- node of type 'register' in stage 41 with id 799 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_799 <= c_798 & "";
    end if;
  end process;
  -- node of type 'register' in stage 42 with id 800 and associated fundamentals [[8194], [296], [542], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_800 <= c_799 & "";
    end if;
  end process;
  -- node of type 'register' in stage 41 with id 801 and associated fundamentals [[150], [321], [14364], [14720]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_801 <= c_752 & "";
    end if;
  end process;
  -- node of type 'register' in stage 42 with id 802 and associated fundamentals [[150], [321], [14364], [14720]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_802 <= c_801 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 43 with id 803 and associated fundamentals [[466], [321], [193], [25]]
  c_803_800_0_False_resize <= c_800(24 downto 0);
  c_803_800_0_False_shift <= shift_left(c_803_800_0_False_resize, 0);
  c_803_802_0_False_resize <= c_802(24 downto 0);
  c_803_802_0_False_shift <= shift_left(c_803_802_0_False_resize, 0);
  c_803_706_1_False_resize <= c_706(24 downto 0);
  c_803_706_1_False_shift <= shift_left(c_803_706_1_False_resize, 1);
  c_803_706_0_False_resize <= c_706(24 downto 0);
  c_803_706_0_False_shift <= shift_left(c_803_706_0_False_resize, 0);
  with config_select_43 select c_803_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_803_sel is
        when "00" => c_803 <= c_803_800_0_False_shift;
        when "01" => c_803 <= c_803_802_0_False_shift;
        when "10" => c_803 <= c_803_706_1_False_shift;
        when others => c_803 <= c_803_706_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 804 and associated fundamentals [[28], [457], [13008], [-487]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_804 <= c_524 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 805 and associated fundamentals [[28], [457], [13008], [-487]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_805 <= c_804 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 39 with id 806 and associated fundamentals [[515], [457], [136], [18]]
  c_806_805_0_False_resize <= c_805(25 downto 0);
  c_806_805_0_False_shift <= shift_left(c_806_805_0_False_resize, 0);
  c_806_727_0_False_resize <= c_727(25 downto 0);
  c_806_727_0_False_shift <= shift_left(c_806_727_0_False_resize, 0);
  c_806_599_1_False_resize <= c_599;
  c_806_599_1_False_shift <= shift_left(c_806_599_1_False_resize, 1);
  c_806_491_0_False_resize <= c_491;
  c_806_491_0_False_shift <= shift_left(c_806_491_0_False_resize, 0);
  with config_select_39 select c_806_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_806_sel is
        when "00" => c_806 <= c_806_805_0_False_shift;
        when "01" => c_806 <= c_806_727_0_False_shift;
        when "10" => c_806 <= c_806_599_1_False_shift;
        when others => c_806 <= c_806_491_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 807 and associated fundamentals [[1011], [824], [270], [590]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_807 <= c_721 & "";
    end if;
  end process;
  -- node of type 'register' in stage 41 with id 808 and associated fundamentals [[1011], [824], [270], [590]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_808 <= c_807 & "";
    end if;
  end process;
  -- node of type 'register' in stage 42 with id 809 and associated fundamentals [[1011], [824], [270], [590]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_809 <= c_808 & "";
    end if;
  end process;
  -- node of type 'register' in stage 43 with id 810 and associated fundamentals [[1011], [824], [270], [590]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_810 <= c_809 & "";
    end if;
  end process;
  -- node of type 'output' in stage 43 with id 811 and associated fundamentals [[1011], [824], [270], [590]]
  c_811_resize <= c_810;
  c_811 <= shift_left(c_811_resize, 0);
  -- node of type 'output' in stage 43 with id 812 and associated fundamentals [[496], [1010], [977], [771]]
  c_812_resize <= c_738;
  c_812 <= shift_left(c_812_resize, 0);
  -- node of type 'register' in stage 42 with id 813 and associated fundamentals [[150], [415], [268], [838]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_813 <= c_753 & "";
    end if;
  end process;
  -- node of type 'register' in stage 43 with id 814 and associated fundamentals [[150], [415], [268], [838]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_814 <= c_813 & "";
    end if;
  end process;
  -- node of type 'output' in stage 43 with id 815 and associated fundamentals [[150], [415], [268], [838]]
  c_815_resize <= c_814;
  c_815 <= shift_left(c_815_resize, 0);
  -- node of type 'register' in stage 40 with id 816 and associated fundamentals [[899], [506], [542], [868]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_816 <= c_756 & "";
    end if;
  end process;
  -- node of type 'register' in stage 41 with id 817 and associated fundamentals [[899], [506], [542], [868]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_817 <= c_816 & "";
    end if;
  end process;
  -- node of type 'register' in stage 42 with id 818 and associated fundamentals [[899], [506], [542], [868]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_818 <= c_817 & "";
    end if;
  end process;
  -- node of type 'register' in stage 43 with id 819 and associated fundamentals [[899], [506], [542], [868]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_819 <= c_818 & "";
    end if;
  end process;
  -- node of type 'output' in stage 43 with id 820 and associated fundamentals [[899], [506], [542], [868]]
  c_820_resize <= c_819;
  c_820 <= shift_left(c_820_resize, 0);
  -- node of type 'register' in stage 34 with id 821 and associated fundamentals [[163], [737], [296], [714]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_821 <= c_757 & "";
    end if;
  end process;
  -- node of type 'register' in stage 35 with id 822 and associated fundamentals [[163], [737], [296], [714]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_822 <= c_821 & "";
    end if;
  end process;
  -- node of type 'register' in stage 36 with id 823 and associated fundamentals [[163], [737], [296], [714]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_823 <= c_822 & "";
    end if;
  end process;
  -- node of type 'register' in stage 37 with id 824 and associated fundamentals [[163], [737], [296], [714]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_824 <= c_823 & "";
    end if;
  end process;
  -- node of type 'register' in stage 38 with id 825 and associated fundamentals [[163], [737], [296], [714]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_825 <= c_824 & "";
    end if;
  end process;
  -- node of type 'register' in stage 39 with id 826 and associated fundamentals [[163], [737], [296], [714]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_826 <= c_825 & "";
    end if;
  end process;
  -- node of type 'register' in stage 40 with id 827 and associated fundamentals [[163], [737], [296], [714]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_827 <= c_826 & "";
    end if;
  end process;
  -- node of type 'register' in stage 41 with id 828 and associated fundamentals [[163], [737], [296], [714]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_828 <= c_827 & "";
    end if;
  end process;
  -- node of type 'register' in stage 42 with id 829 and associated fundamentals [[163], [737], [296], [714]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_829 <= c_828 & "";
    end if;
  end process;
  -- node of type 'register' in stage 43 with id 830 and associated fundamentals [[163], [737], [296], [714]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_830 <= c_829 & "";
    end if;
  end process;
  -- node of type 'output' in stage 43 with id 831 and associated fundamentals [[163], [737], [296], [714]]
  c_831_resize <= c_830;
  c_831 <= shift_left(c_831_resize, 0);
  -- node of type 'output' in stage 43 with id 832 and associated fundamentals [[370], [631], [732], [607]]
  c_832_resize <= c_766;
  c_832 <= shift_left(c_832_resize, 0);
  -- node of type 'register' in stage 40 with id 833 and associated fundamentals [[-190], [-719], [-705], [-662]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_833 <= c_775 & "";
    end if;
  end process;
  -- node of type 'register' in stage 41 with id 834 and associated fundamentals [[-190], [-719], [-705], [-662]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_834 <= c_833 & "";
    end if;
  end process;
  -- node of type 'register' in stage 42 with id 835 and associated fundamentals [[-190], [-719], [-705], [-662]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_835 <= c_834 & "";
    end if;
  end process;
  -- node of type 'register' in stage 43 with id 836 and associated fundamentals [[-190], [-719], [-705], [-662]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_836 <= c_835 & "";
    end if;
  end process;
  -- node of type 'output' in stage 43 with id 837 and associated fundamentals [[190], [719], [705], [662]]
  c_837_resize <= c_836;
  c_837 <= -shift_left(c_837_resize, 0);
  -- node of type 'register' in stage 42 with id 838 and associated fundamentals [[943], [756], [196], [710]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_838 <= c_796 & "";
    end if;
  end process;
  -- node of type 'register' in stage 43 with id 839 and associated fundamentals [[943], [756], [196], [710]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_839 <= c_838 & "";
    end if;
  end process;
  -- node of type 'output' in stage 43 with id 840 and associated fundamentals [[943], [756], [196], [710]]
  c_840_resize <= c_839;
  c_840 <= shift_left(c_840_resize, 0);
  -- node of type 'output' in stage 43 with id 841 and associated fundamentals [[466], [321], [193], [25]]
  c_841_resize <= c_803;
  c_841 <= shift_left(c_841_resize, 0);
  -- node of type 'register' in stage 40 with id 842 and associated fundamentals [[515], [457], [136], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_842 <= c_806 & "";
    end if;
  end process;
  -- node of type 'register' in stage 41 with id 843 and associated fundamentals [[515], [457], [136], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_843 <= c_842 & "";
    end if;
  end process;
  -- node of type 'register' in stage 42 with id 844 and associated fundamentals [[515], [457], [136], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_844 <= c_843 & "";
    end if;
  end process;
  -- node of type 'register' in stage 43 with id 845 and associated fundamentals [[515], [457], [136], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_845 <= c_844 & "";
    end if;
  end process;
  -- node of type 'output' in stage 43 with id 846 and associated fundamentals [[515], [457], [136], [18]]
  c_846_resize <= c_845;
  c_846 <= shift_left(c_846_resize, 0);
end architecture;

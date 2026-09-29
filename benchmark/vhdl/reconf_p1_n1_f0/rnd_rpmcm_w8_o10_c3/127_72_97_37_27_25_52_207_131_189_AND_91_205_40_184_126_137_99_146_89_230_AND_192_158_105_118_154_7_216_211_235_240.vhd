library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_i0_resize: signed(20 downto 0);
  signal c_1_i1_resize: signed(20 downto 0);
  signal c_1_i0_shift: signed(20 downto 0);
  signal c_1_i1_shift: signed(20 downto 0);
  signal c_1_arith: signed(20 downto 0);
  signal c_1_oshift: signed(20 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(23 downto 0);
  signal c_3_1_4_False_resize: signed(23 downto 0);
  signal c_3_1_4_False_shift: signed(23 downto 0);
  signal c_3_2_1_False_resize: signed(23 downto 0);
  signal c_3_2_1_False_shift: signed(23 downto 0);
  signal c_3_2_0_False_resize: signed(23 downto 0);
  signal c_3_2_0_False_shift: signed(23 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(20 downto 0);
  signal c_4_1_0_False_resize: signed(20 downto 0);
  signal c_4_1_0_False_shift: signed(20 downto 0);
  signal c_4_1_1_False_resize: signed(20 downto 0);
  signal c_4_1_1_False_shift: signed(20 downto 0);
  signal c_4_2_2_False_resize: signed(20 downto 0);
  signal c_4_2_2_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(23 downto 0);
  signal c_6_0_0_False_resize: signed(23 downto 0);
  signal c_6_0_0_False_shift: signed(23 downto 0);
  signal c_6_0_8_False_resize: signed(23 downto 0);
  signal c_6_0_8_False_shift: signed(23 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_0_0_False_resize: signed(18 downto 0);
  signal c_7_0_0_False_shift: signed(18 downto 0);
  signal c_7_0_1_False_resize: signed(18 downto 0);
  signal c_7_0_1_False_shift: signed(18 downto 0);
  signal c_7_0_3_False_resize: signed(18 downto 0);
  signal c_7_0_3_False_shift: signed(18 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(20 downto 0);
  signal c_9_0_0_False_resize: signed(20 downto 0);
  signal c_9_0_0_False_shift: signed(20 downto 0);
  signal c_9_0_5_False_resize: signed(20 downto 0);
  signal c_9_0_5_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(17 downto 0);
  signal c_10_0_0_False_resize: signed(17 downto 0);
  signal c_10_0_0_False_shift: signed(17 downto 0);
  signal c_10_0_1_False_resize: signed(17 downto 0);
  signal c_10_0_1_False_shift: signed(17 downto 0);
  signal c_10_0_2_False_resize: signed(17 downto 0);
  signal c_10_0_2_False_shift: signed(17 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_i0_resize: signed(20 downto 0);
  signal c_11_i1_resize: signed(20 downto 0);
  signal c_11_i0_shift: signed(20 downto 0);
  signal c_11_i1_shift: signed(20 downto 0);
  signal c_11_arith: signed(20 downto 0);
  signal c_11_oshift: signed(20 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(20 downto 0);
  signal c_12_i0_resize: signed(20 downto 0);
  signal c_12_i1_resize: signed(20 downto 0);
  signal c_12_i0_shift: signed(20 downto 0);
  signal c_12_i1_shift: signed(20 downto 0);
  signal c_12_arith: signed(20 downto 0);
  signal c_12_oshift: signed(20 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_13_2_2_False_resize: signed(19 downto 0);
  signal c_13_2_2_False_shift: signed(19 downto 0);
  signal c_13_2_0_False_resize: signed(19 downto 0);
  signal c_13_2_0_False_shift: signed(19 downto 0);
  signal c_13_2_4_False_resize: signed(19 downto 0);
  signal c_13_2_4_False_shift: signed(19 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(20 downto 0);
  signal c_14_2_5_False_resize: signed(20 downto 0);
  signal c_14_2_5_False_shift: signed(20 downto 0);
  signal c_14_2_1_False_resize: signed(20 downto 0);
  signal c_14_2_1_False_shift: signed(20 downto 0);
  signal c_14_2_0_False_resize: signed(20 downto 0);
  signal c_14_2_0_False_shift: signed(20 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_15_i0_resize: signed(21 downto 0);
  signal c_15_i1_resize: signed(21 downto 0);
  signal c_15_i0_shift: signed(21 downto 0);
  signal c_15_i1_shift: signed(21 downto 0);
  signal c_15_arith: signed(21 downto 0);
  signal c_15_oshift: signed(21 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_1_4_False_resize: signed(23 downto 0);
  signal c_16_1_4_False_shift: signed(23 downto 0);
  signal c_16_2_6_False_resize: signed(23 downto 0);
  signal c_16_2_6_False_shift: signed(23 downto 0);
  signal c_16_2_0_False_resize: signed(23 downto 0);
  signal c_16_2_0_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_18: signed(20 downto 0);
  signal c_18_12_0_False_resize: signed(20 downto 0);
  signal c_18_12_0_False_shift: signed(20 downto 0);
  signal c_18_12_1_False_resize: signed(20 downto 0);
  signal c_18_12_1_False_shift: signed(20 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_12_0_False_resize: signed(21 downto 0);
  signal c_19_12_0_False_shift: signed(21 downto 0);
  signal c_19_11_0_False_resize: signed(21 downto 0);
  signal c_19_11_0_False_shift: signed(21 downto 0);
  signal c_19_11_1_False_resize: signed(21 downto 0);
  signal c_19_11_1_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(17 downto 0);
  signal c_21_0_0_False_resize: signed(17 downto 0);
  signal c_21_0_0_False_shift: signed(17 downto 0);
  signal c_21_0_2_False_resize: signed(17 downto 0);
  signal c_21_0_2_False_shift: signed(17 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_22_i0_resize: signed(19 downto 0);
  signal c_22_i1_resize: signed(19 downto 0);
  signal c_22_i0_shift: signed(19 downto 0);
  signal c_22_i1_shift: signed(19 downto 0);
  signal c_22_arith: signed(19 downto 0);
  signal c_22_oshift: signed(19 downto 0);
  signal c_23: signed(19 downto 0);
  signal c_23_12_0_False_resize: signed(19 downto 0);
  signal c_23_12_0_False_shift: signed(19 downto 0);
  signal c_23_11_2_False_resize: signed(19 downto 0);
  signal c_23_11_2_False_shift: signed(19 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_22_0_False_resize: signed(22 downto 0);
  signal c_24_22_0_False_shift: signed(22 downto 0);
  signal c_24_11_1_False_resize: signed(22 downto 0);
  signal c_24_11_1_False_shift: signed(22 downto 0);
  signal c_24_11_2_False_resize: signed(22 downto 0);
  signal c_24_11_2_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_26_1_0_False_resize: signed(21 downto 0);
  signal c_26_1_0_False_shift: signed(21 downto 0);
  signal c_26_1_2_False_resize: signed(21 downto 0);
  signal c_26_1_2_False_shift: signed(21 downto 0);
  signal c_26_2_5_False_resize: signed(21 downto 0);
  signal c_26_2_5_False_shift: signed(21 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_i0_resize: signed(22 downto 0);
  signal c_27_i1_resize: signed(22 downto 0);
  signal c_27_i0_shift: signed(22 downto 0);
  signal c_27_i1_shift: signed(22 downto 0);
  signal c_27_arith: signed(22 downto 0);
  signal c_27_oshift: signed(22 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(22 downto 0);
  signal c_28_2_4_False_resize: signed(22 downto 0);
  signal c_28_2_4_False_shift: signed(22 downto 0);
  signal c_28_2_5_False_resize: signed(22 downto 0);
  signal c_28_2_5_False_shift: signed(22 downto 0);
  signal c_28_1_0_False_resize: signed(22 downto 0);
  signal c_28_1_0_False_shift: signed(22 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(20 downto 0);
  signal c_30_22_0_False_resize: signed(20 downto 0);
  signal c_30_22_0_False_shift: signed(20 downto 0);
  signal c_30_11_0_False_resize: signed(20 downto 0);
  signal c_30_11_0_False_shift: signed(20 downto 0);
  signal c_30_12_0_False_resize: signed(20 downto 0);
  signal c_30_12_0_False_shift: signed(20 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(20 downto 0);
  signal c_32_22_0_False_resize: signed(20 downto 0);
  signal c_32_22_0_False_shift: signed(20 downto 0);
  signal c_32_12_0_False_resize: signed(20 downto 0);
  signal c_32_12_0_False_shift: signed(20 downto 0);
  signal c_32_12_1_False_resize: signed(20 downto 0);
  signal c_32_12_1_False_shift: signed(20 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(20 downto 0);
  signal c_33_12_0_False_resize: signed(20 downto 0);
  signal c_33_12_0_False_shift: signed(20 downto 0);
  signal c_33_8_3_False_resize: signed(20 downto 0);
  signal c_33_8_3_False_shift: signed(20 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(19 downto 0);
  signal c_35_2_0_False_resize: signed(19 downto 0);
  signal c_35_2_0_False_shift: signed(19 downto 0);
  signal c_35_1_0_False_resize: signed(19 downto 0);
  signal c_35_1_0_False_shift: signed(19 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_36_i0_resize: signed(22 downto 0);
  signal c_36_i1_resize: signed(22 downto 0);
  signal c_36_i0_shift: signed(22 downto 0);
  signal c_36_i1_shift: signed(22 downto 0);
  signal c_36_arith: signed(22 downto 0);
  signal c_36_oshift: signed(22 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(23 downto 0);
  signal c_37_i0_resize: signed(23 downto 0);
  signal c_37_i1_resize: signed(23 downto 0);
  signal c_37_i0_shift: signed(23 downto 0);
  signal c_37_i1_shift: signed(23 downto 0);
  signal c_37_arith: signed(23 downto 0);
  signal c_37_oshift: signed(23 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_27_1_False_resize: signed(23 downto 0);
  signal c_39_27_1_False_shift: signed(23 downto 0);
  signal c_39_17_0_False_resize: signed(23 downto 0);
  signal c_39_17_0_False_shift: signed(23 downto 0);
  signal c_39_15_1_False_resize: signed(23 downto 0);
  signal c_39_15_1_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_5_2_False_resize: signed(22 downto 0);
  signal c_41_5_2_False_shift: signed(22 downto 0);
  signal c_41_36_0_False_resize: signed(22 downto 0);
  signal c_41_36_0_False_shift: signed(22 downto 0);
  signal c_41_37_0_False_resize: signed(22 downto 0);
  signal c_41_37_0_False_shift: signed(22 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_42_resize: signed(22 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_37_0_False_resize: signed(23 downto 0);
  signal c_43_37_0_False_shift: signed(23 downto 0);
  signal c_43_5_0_False_resize: signed(23 downto 0);
  signal c_43_5_0_False_shift: signed(23 downto 0);
  signal c_43_36_1_False_resize: signed(23 downto 0);
  signal c_43_36_1_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_29_1_False_resize: signed(23 downto 0);
  signal c_45_29_1_False_shift: signed(23 downto 0);
  signal c_45_27_0_False_resize: signed(23 downto 0);
  signal c_45_27_0_False_shift: signed(23 downto 0);
  signal c_45_17_1_False_resize: signed(23 downto 0);
  signal c_45_17_1_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_17_1_False_resize: signed(23 downto 0);
  signal c_48_17_1_False_shift: signed(23 downto 0);
  signal c_48_27_0_False_resize: signed(23 downto 0);
  signal c_48_27_0_False_shift: signed(23 downto 0);
  signal c_48_29_3_False_resize: signed(23 downto 0);
  signal c_48_29_3_False_shift: signed(23 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_resize: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_37_0_False_resize: signed(23 downto 0);
  signal c_52_37_0_False_shift: signed(23 downto 0);
  signal c_52_29_0_False_resize: signed(23 downto 0);
  signal c_52_29_0_False_shift: signed(23 downto 0);
  signal c_52_5_0_False_resize: signed(23 downto 0);
  signal c_52_5_0_False_shift: signed(23 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 1 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 2 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 3 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 4 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 5 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 6 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 7 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 8 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 9 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_53);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[20], [12], [12]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 4,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[3], [1], [1]]
  with config_select_1 select c_2_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[3], [2], [192]]
  c_3_1_4_False_resize <= resize(c_1, 24);
  c_3_1_4_False_shift <= shift_left(c_3_1_4_False_resize, 4);
  c_3_2_1_False_resize <= resize(c_2, 24);
  c_3_2_1_False_shift <= shift_left(c_3_2_1_False_resize, 1);
  c_3_2_0_False_resize <= resize(c_2, 24);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_1_4_False_shift;
        when "01" => c_3 <= c_3_2_1_False_shift;
        when others => c_3 <= c_3_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[20], [4], [24]]
  c_4_1_0_False_resize <= c_1;
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_1_1_False_resize <= c_1;
  c_4_1_1_False_shift <= shift_left(c_4_1_1_False_resize, 1);
  c_4_2_2_False_resize <= resize(c_2, 21);
  c_4_2_2_False_shift <= shift_left(c_4_2_2_False_resize, 2);
  with config_select_2 select c_4_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_1_0_False_shift;
        when "01" => c_4 <= c_4_1_1_False_shift;
        when others => c_4 <= c_4_2_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[-37], [10], [240]]
  with config_select_3 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[1], [256], [1]]
  c_6_0_0_False_resize <= resize(c_0, 24);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_8_False_resize <= resize(c_0, 24);
  c_6_0_8_False_shift <= shift_left(c_6_0_8_False_resize, 8);
  with config_select_1 select c_6_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_0_0_False_shift;
        when others => c_6 <= c_6_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[8], [2], [1]]
  c_7_0_0_False_resize <= resize(c_0, 19);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_1_False_resize <= resize(c_0, 19);
  c_7_0_1_False_shift <= shift_left(c_7_0_1_False_resize, 1);
  c_7_0_3_False_resize <= resize(c_0, 19);
  c_7_0_3_False_shift <= shift_left(c_7_0_3_False_resize, 3);
  with config_select_1 select c_7_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_0_False_shift;
        when "01" => c_7 <= c_7_0_1_False_shift;
        when others => c_7 <= c_7_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[-7], [254], [2]]
  with config_select_2 select c_8_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 19,
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
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[1], [32], [1]]
  c_9_0_0_False_resize <= resize(c_0, 21);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_5_False_resize <= resize(c_0, 21);
  c_9_0_5_False_shift <= shift_left(c_9_0_5_False_resize, 5);
  with config_select_1 select c_9_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_0_0_False_shift;
        when others => c_9 <= c_9_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[2], [1], [4]]
  c_10_0_0_False_resize <= resize(c_0, 18);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_0_1_False_resize <= resize(c_0, 18);
  c_10_0_1_False_shift <= shift_left(c_10_0_1_False_resize, 1);
  c_10_0_2_False_resize <= resize(c_0, 18);
  c_10_0_2_False_shift <= shift_left(c_10_0_2_False_resize, 2);
  with config_select_1 select c_10_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_0_0_False_shift;
        when "01" => c_10 <= c_10_0_1_False_shift;
        when others => c_10 <= c_10_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 11 and associated fundamentals [[3], [31], [-3]]
  with config_select_2 select c_11_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 18,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 12 and associated fundamentals [[23], [13], [13]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 18,
      w_o => 21,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[12], [16], [1]]
  c_13_2_2_False_resize <= resize(c_2, 20);
  c_13_2_2_False_shift <= shift_left(c_13_2_2_False_resize, 2);
  c_13_2_0_False_resize <= resize(c_2, 20);
  c_13_2_0_False_shift <= shift_left(c_13_2_0_False_resize, 0);
  c_13_2_4_False_resize <= resize(c_2, 20);
  c_13_2_4_False_shift <= shift_left(c_13_2_4_False_resize, 4);
  with config_select_2 select c_13_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_2_2_False_shift;
        when "01" => c_13 <= c_13_2_0_False_shift;
        when others => c_13 <= c_13_2_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[6], [1], [32]]
  c_14_2_5_False_resize <= resize(c_2, 21);
  c_14_2_5_False_shift <= shift_left(c_14_2_5_False_resize, 5);
  c_14_2_1_False_resize <= resize(c_2, 21);
  c_14_2_1_False_shift <= shift_left(c_14_2_1_False_resize, 1);
  c_14_2_0_False_resize <= resize(c_2, 21);
  c_14_2_0_False_shift <= shift_left(c_14_2_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_2_5_False_shift;
        when "01" => c_14 <= c_14_2_1_False_shift;
        when others => c_14 <= c_14_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[36], [30], [-62]]
  with config_select_3 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 22,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[3], [192], [64]]
  c_16_1_4_False_resize <= resize(c_1, 24);
  c_16_1_4_False_shift <= shift_left(c_16_1_4_False_resize, 4);
  c_16_2_6_False_resize <= resize(c_2, 24);
  c_16_2_6_False_shift <= shift_left(c_16_2_6_False_resize, 6);
  c_16_2_0_False_resize <= resize(c_2, 24);
  c_16_2_0_False_shift <= shift_left(c_16_2_0_False_resize, 0);
  with config_select_2 select c_16_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_1_4_False_shift;
        when "01" => c_16 <= c_16_2_6_False_shift;
        when others => c_16 <= c_16_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 17 and associated fundamentals [[26], [205], [77]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      x_i => c_16,
      y_i => c_12,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[23], [26], [26]]
  c_18_12_0_False_resize <= c_12;
  c_18_12_0_False_shift <= shift_left(c_18_12_0_False_resize, 0);
  c_18_12_1_False_resize <= c_12;
  c_18_12_1_False_shift <= shift_left(c_18_12_1_False_resize, 1);
  with config_select_3 select c_18_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_12_0_False_shift;
        when others => c_18 <= c_18_12_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[23], [62], [-3]]
  c_19_12_0_False_resize <= resize(c_12, 22);
  c_19_12_0_False_shift <= shift_left(c_19_12_0_False_resize, 0);
  c_19_11_0_False_resize <= resize(c_11, 22);
  c_19_11_0_False_shift <= shift_left(c_19_11_0_False_resize, 0);
  c_19_11_1_False_resize <= resize(c_11, 22);
  c_19_11_1_False_shift <= shift_left(c_19_11_1_False_resize, 1);
  with config_select_3 select c_19_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_12_0_False_shift;
        when "01" => c_19 <= c_19_11_0_False_shift;
        when others => c_19 <= c_19_11_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[207], [146], [211]]
  with config_select_4 select c_20_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 21 and associated fundamentals [[4], [1], [4]]
  c_21_0_0_False_resize <= resize(c_0, 18);
  c_21_0_0_False_shift <= shift_left(c_21_0_0_False_resize, 0);
  c_21_0_2_False_resize <= resize(c_0, 18);
  c_21_0_2_False_shift <= shift_left(c_21_0_2_False_resize, 2);
  with config_select_1 select c_21_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_0_0_False_shift;
        when others => c_21 <= c_21_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 22 and associated fundamentals [[13], [3], [15]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 20,
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
      x_i => c_21,
      y_i => c_2,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[12], [13], [13]]
  c_23_12_0_False_resize <= c_12(19 downto 0);
  c_23_12_0_False_shift <= shift_left(c_23_12_0_False_resize, 0);
  c_23_11_2_False_resize <= c_11(19 downto 0);
  c_23_11_2_False_shift <= shift_left(c_23_11_2_False_resize, 2);
  with config_select_3 select c_23_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_12_0_False_shift;
        when others => c_23 <= c_23_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[13], [124], [-6]]
  c_24_22_0_False_resize <= resize(c_22, 23);
  c_24_22_0_False_shift <= shift_left(c_24_22_0_False_resize, 0);
  c_24_11_1_False_resize <= resize(c_11, 23);
  c_24_11_1_False_shift <= shift_left(c_24_11_1_False_resize, 1);
  c_24_11_2_False_resize <= resize(c_11, 23);
  c_24_11_2_False_shift <= shift_left(c_24_11_2_False_resize, 2);
  with config_select_3 select c_24_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_22_0_False_shift;
        when "01" => c_24 <= c_24_11_1_False_shift;
        when others => c_24 <= c_24_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 25 and associated fundamentals [[25], [137], [7]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 26 and associated fundamentals [[20], [48], [32]]
  c_26_1_0_False_resize <= resize(c_1, 22);
  c_26_1_0_False_shift <= shift_left(c_26_1_0_False_resize, 0);
  c_26_1_2_False_resize <= resize(c_1, 22);
  c_26_1_2_False_shift <= shift_left(c_26_1_2_False_resize, 2);
  c_26_2_5_False_resize <= resize(c_2, 22);
  c_26_2_5_False_shift <= shift_left(c_26_2_5_False_resize, 5);
  with config_select_2 select c_26_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_1_0_False_shift;
        when "01" => c_26 <= c_26_1_2_False_shift;
        when others => c_26 <= c_26_2_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 27 and associated fundamentals [[27], [99], [79]]
  with config_select_3 select c_27_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
      sub_i => c_27_sub_sel,
      x_i => c_26,
      y_i => c_22,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 28 and associated fundamentals [[96], [16], [12]]
  c_28_2_4_False_resize <= resize(c_2, 23);
  c_28_2_4_False_shift <= shift_left(c_28_2_4_False_resize, 4);
  c_28_2_5_False_resize <= resize(c_2, 23);
  c_28_2_5_False_shift <= shift_left(c_28_2_5_False_resize, 5);
  c_28_1_0_False_resize <= resize(c_1, 23);
  c_28_1_0_False_shift <= shift_left(c_28_1_0_False_resize, 0);
  with config_select_2 select c_28_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_2_4_False_shift;
        when "01" => c_28 <= c_28_2_5_False_shift;
        when others => c_28 <= c_28_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 29 and associated fundamentals [[189], [63], [27]]
  with config_select_3 select c_29_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      sub_i => c_29_sub_sel,
      x_i => c_28,
      y_i => c_11,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[13], [31], [13]]
  c_30_22_0_False_resize <= resize(c_22, 21);
  c_30_22_0_False_shift <= shift_left(c_30_22_0_False_resize, 0);
  c_30_11_0_False_resize <= c_11;
  c_30_11_0_False_shift <= shift_left(c_30_11_0_False_resize, 0);
  c_30_12_0_False_resize <= c_12;
  c_30_12_0_False_shift <= shift_left(c_30_12_0_False_resize, 0);
  with config_select_3 select c_30_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_22_0_False_shift;
        when "01" => c_30 <= c_30_11_0_False_shift;
        when others => c_30 <= c_30_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 31 and associated fundamentals [[-131], [-89], [-235]]
  with config_select_4 select c_31_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      sub_i => c_31_sub_sel,
      x_i => c_30,
      y_i => c_15,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[13], [13], [26]]
  c_32_22_0_False_resize <= resize(c_22, 21);
  c_32_22_0_False_shift <= shift_left(c_32_22_0_False_resize, 0);
  c_32_12_0_False_resize <= c_12;
  c_32_12_0_False_shift <= shift_left(c_32_12_0_False_resize, 0);
  c_32_12_1_False_resize <= c_12;
  c_32_12_1_False_shift <= shift_left(c_32_12_1_False_resize, 1);
  with config_select_3 select c_32_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_22_0_False_shift;
        when "01" => c_32 <= c_32_12_0_False_shift;
        when others => c_32 <= c_32_12_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[23], [13], [16]]
  c_33_12_0_False_resize <= c_12;
  c_33_12_0_False_shift <= shift_left(c_33_12_0_False_resize, 0);
  c_33_8_3_False_resize <= c_8(20 downto 0);
  c_33_8_3_False_shift <= shift_left(c_33_8_3_False_resize, 3);
  with config_select_3 select c_33_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_12_0_False_shift;
        when others => c_33 <= c_33_8_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 34 and associated fundamentals [[127], [91], [192]]
  with config_select_4 select c_34_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      sub_i => c_34_sub_sel,
      x_i => c_32,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 35 and associated fundamentals [[3], [12], [1]]
  c_35_2_0_False_resize <= resize(c_2, 20);
  c_35_2_0_False_shift <= shift_left(c_35_2_0_False_resize, 0);
  c_35_1_0_False_resize <= c_1(19 downto 0);
  c_35_1_0_False_shift <= shift_left(c_35_1_0_False_resize, 0);
  with config_select_2 select c_35_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_2_0_False_shift;
        when others => c_35 <= c_35_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 36 and associated fundamentals [[-181], [-92], [105]]
  with config_select_3 select c_36_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_36_sub_sel,
      x_i => c_35,
      y_i => c_12,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 37 and associated fundamentals [[97], [230], [-118]]
  with config_select_3 select c_37_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_37_sub_sel,
      x_i => c_8,
      y_i => c_22,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 38 and associated fundamentals [[127], [91], [192]]
  c_38_resize <= c_34;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 4 with id 39 and associated fundamentals [[72], [205], [158]]
  c_39_27_1_False_resize <= resize(c_27, 24);
  c_39_27_1_False_shift <= shift_left(c_39_27_1_False_resize, 1);
  c_39_17_0_False_resize <= c_17;
  c_39_17_0_False_shift <= shift_left(c_39_17_0_False_resize, 0);
  c_39_15_1_False_resize <= resize(c_15, 24);
  c_39_15_1_False_shift <= shift_left(c_39_15_1_False_resize, 1);
  with config_select_4 select c_39_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_27_1_False_shift;
        when "01" => c_39 <= c_39_17_0_False_shift;
        when others => c_39 <= c_39_15_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 40 and associated fundamentals [[72], [205], [158]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'mux' in stage 4 with id 41 and associated fundamentals [[97], [40], [105]]
  c_41_5_2_False_resize <= c_5(22 downto 0);
  c_41_5_2_False_shift <= shift_left(c_41_5_2_False_resize, 2);
  c_41_36_0_False_resize <= c_36;
  c_41_36_0_False_shift <= shift_left(c_41_36_0_False_resize, 0);
  c_41_37_0_False_resize <= c_37(22 downto 0);
  c_41_37_0_False_shift <= shift_left(c_41_37_0_False_resize, 0);
  with config_select_4 select c_41_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_5_2_False_shift;
        when "01" => c_41 <= c_41_36_0_False_shift;
        when others => c_41 <= c_41_37_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[97], [40], [105]]
  c_42_resize <= c_41;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'mux' in stage 4 with id 43 and associated fundamentals [[-37], [-184], [-118]]
  c_43_37_0_False_resize <= c_37;
  c_43_37_0_False_shift <= shift_left(c_43_37_0_False_resize, 0);
  c_43_5_0_False_resize <= c_5;
  c_43_5_0_False_shift <= shift_left(c_43_5_0_False_resize, 0);
  c_43_36_1_False_resize <= resize(c_36, 24);
  c_43_36_1_False_shift <= shift_left(c_43_36_1_False_resize, 1);
  with config_select_4 select c_43_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_37_0_False_shift;
        when "01" => c_43 <= c_43_5_0_False_shift;
        when others => c_43 <= c_43_36_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[37], [184], [118]]
  c_44_resize <= c_43;
  c_44 <= -shift_left(c_44_resize, 0);
  -- node of type 'mux' in stage 4 with id 45 and associated fundamentals [[27], [126], [154]]
  c_45_29_1_False_resize <= c_29;
  c_45_29_1_False_shift <= shift_left(c_45_29_1_False_resize, 1);
  c_45_27_0_False_resize <= resize(c_27, 24);
  c_45_27_0_False_shift <= shift_left(c_45_27_0_False_resize, 0);
  c_45_17_1_False_resize <= c_17;
  c_45_17_1_False_shift <= shift_left(c_45_17_1_False_resize, 1);
  with config_select_4 select c_45_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_29_1_False_shift;
        when "01" => c_45 <= c_45_27_0_False_shift;
        when others => c_45 <= c_45_17_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[27], [126], [154]]
  c_46_resize <= c_45;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[25], [137], [7]]
  c_47_resize <= c_25;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 4 with id 48 and associated fundamentals [[52], [99], [216]]
  c_48_17_1_False_resize <= c_17;
  c_48_17_1_False_shift <= shift_left(c_48_17_1_False_resize, 1);
  c_48_27_0_False_resize <= resize(c_27, 24);
  c_48_27_0_False_shift <= shift_left(c_48_27_0_False_resize, 0);
  c_48_29_3_False_resize <= c_29;
  c_48_29_3_False_shift <= shift_left(c_48_29_3_False_resize, 3);
  with config_select_4 select c_48_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_17_1_False_shift;
        when "01" => c_48 <= c_48_27_0_False_shift;
        when others => c_48 <= c_48_29_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 49 and associated fundamentals [[52], [99], [216]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 4 with id 50 and associated fundamentals [[207], [146], [211]]
  c_50_resize <= c_20;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 4 with id 51 and associated fundamentals [[131], [89], [235]]
  c_51_resize <= c_31;
  c_51 <= -shift_left(c_51_resize, 0);
  -- node of type 'mux' in stage 4 with id 52 and associated fundamentals [[189], [230], [240]]
  c_52_37_0_False_resize <= c_37;
  c_52_37_0_False_shift <= shift_left(c_52_37_0_False_resize, 0);
  c_52_29_0_False_resize <= c_29;
  c_52_29_0_False_shift <= shift_left(c_52_29_0_False_resize, 0);
  c_52_5_0_False_resize <= c_5;
  c_52_5_0_False_shift <= shift_left(c_52_5_0_False_resize, 0);
  with config_select_4 select c_52_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "00" => c_52 <= c_52_37_0_False_shift;
        when "01" => c_52 <= c_52_29_0_False_shift;
        when others => c_52 <= c_52_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 53 and associated fundamentals [[189], [230], [240]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
end architecture;

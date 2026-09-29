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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_4_i0_resize: signed(17 downto 0);
  signal c_4_i1_resize: signed(17 downto 0);
  signal c_4_i0_shift: signed(17 downto 0);
  signal c_4_i1_shift: signed(17 downto 0);
  signal c_4_arith: signed(17 downto 0);
  signal c_4_oshift: signed(17 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_1_4_False_resize: signed(19 downto 0);
  signal c_5_1_4_False_shift: signed(19 downto 0);
  signal c_5_1_0_False_resize: signed(19 downto 0);
  signal c_5_1_0_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(16 downto 0);
  signal c_7_1_0_False_resize: signed(16 downto 0);
  signal c_7_1_0_False_shift: signed(16 downto 0);
  signal c_7_1_1_False_resize: signed(16 downto 0);
  signal c_7_1_1_False_shift: signed(16 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_10_2_0_False_resize: signed(19 downto 0);
  signal c_10_2_0_False_shift: signed(19 downto 0);
  signal c_10_1_0_False_resize: signed(19 downto 0);
  signal c_10_1_0_False_shift: signed(19 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(19 downto 0);
  signal c_12_1_0_False_resize: signed(19 downto 0);
  signal c_12_1_0_False_shift: signed(19 downto 0);
  signal c_12_2_0_False_resize: signed(19 downto 0);
  signal c_12_2_0_False_shift: signed(19 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_16_i0_resize: signed(20 downto 0);
  signal c_16_i1_resize: signed(20 downto 0);
  signal c_16_i0_shift: signed(20 downto 0);
  signal c_16_i1_shift: signed(20 downto 0);
  signal c_16_arith: signed(20 downto 0);
  signal c_16_oshift: signed(20 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_14_0_False_resize: signed(24 downto 0);
  signal c_17_14_0_False_shift: signed(24 downto 0);
  signal c_17_4_4_False_resize: signed(24 downto 0);
  signal c_17_4_4_False_shift: signed(24 downto 0);
  signal c_17_9_1_False_resize: signed(24 downto 0);
  signal c_17_9_1_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_14_0_False_resize: signed(25 downto 0);
  signal c_18_14_0_False_shift: signed(25 downto 0);
  signal c_18_4_0_False_resize: signed(25 downto 0);
  signal c_18_4_0_False_shift: signed(25 downto 0);
  signal c_18_9_5_False_resize: signed(25 downto 0);
  signal c_18_9_5_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(18 downto 0);
  signal c_20_4_0_False_resize: signed(18 downto 0);
  signal c_20_4_0_False_shift: signed(18 downto 0);
  signal c_20_4_1_False_resize: signed(18 downto 0);
  signal c_20_4_1_False_shift: signed(18 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_15_1_False_resize: signed(25 downto 0);
  signal c_21_15_1_False_shift: signed(25 downto 0);
  signal c_21_9_1_False_resize: signed(25 downto 0);
  signal c_21_9_1_False_shift: signed(25 downto 0);
  signal c_21_13_0_False_resize: signed(25 downto 0);
  signal c_21_13_0_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(26 downto 0);
  signal c_23_13_0_False_resize: signed(26 downto 0);
  signal c_23_13_0_False_shift: signed(26 downto 0);
  signal c_23_16_6_False_resize: signed(26 downto 0);
  signal c_23_16_6_False_shift: signed(26 downto 0);
  signal c_23_4_6_False_resize: signed(26 downto 0);
  signal c_23_4_6_False_shift: signed(26 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(27 downto 0);
  signal c_24_4_0_False_resize: signed(27 downto 0);
  signal c_24_4_0_False_shift: signed(27 downto 0);
  signal c_24_13_1_False_resize: signed(27 downto 0);
  signal c_24_13_1_False_shift: signed(27 downto 0);
  signal c_24_13_4_False_resize: signed(27 downto 0);
  signal c_24_13_4_False_shift: signed(27 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(24 downto 0);
  signal c_25_sub_sel_left: std_logic;
  signal c_25_sub_sel_right: std_logic;
  signal c_26: signed(23 downto 0);
  signal c_26_11_0_False_resize: signed(23 downto 0);
  signal c_26_11_0_False_shift: signed(23 downto 0);
  signal c_26_4_1_False_resize: signed(23 downto 0);
  signal c_26_4_1_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_4_7_False_resize: signed(25 downto 0);
  signal c_27_4_7_False_shift: signed(25 downto 0);
  signal c_27_4_8_False_resize: signed(25 downto 0);
  signal c_27_4_8_False_shift: signed(25 downto 0);
  signal c_27_14_0_False_resize: signed(25 downto 0);
  signal c_27_14_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_9_2_False_resize: signed(23 downto 0);
  signal c_29_9_2_False_shift: signed(23 downto 0);
  signal c_29_13_0_False_resize: signed(23 downto 0);
  signal c_29_13_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(20 downto 0);
  signal c_30_4_0_False_resize: signed(20 downto 0);
  signal c_30_4_0_False_shift: signed(20 downto 0);
  signal c_30_4_3_False_resize: signed(20 downto 0);
  signal c_30_4_3_False_shift: signed(20 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_i0_resize: signed(25 downto 0);
  signal c_31_i1_resize: signed(25 downto 0);
  signal c_31_i0_shift: signed(25 downto 0);
  signal c_31_i1_shift: signed(25 downto 0);
  signal c_31_arith: signed(25 downto 0);
  signal c_31_oshift: signed(25 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(23 downto 0);
  signal c_32_16_2_False_resize: signed(23 downto 0);
  signal c_32_16_2_False_shift: signed(23 downto 0);
  signal c_32_13_0_False_resize: signed(23 downto 0);
  signal c_32_13_0_False_shift: signed(23 downto 0);
  signal c_32_9_3_False_resize: signed(23 downto 0);
  signal c_32_9_3_False_shift: signed(23 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_6_0_False_resize: signed(24 downto 0);
  signal c_33_6_0_False_shift: signed(24 downto 0);
  signal c_33_11_0_False_resize: signed(24 downto 0);
  signal c_33_11_0_False_shift: signed(24 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_i0_resize: signed(25 downto 0);
  signal c_34_i1_resize: signed(25 downto 0);
  signal c_34_i0_shift: signed(25 downto 0);
  signal c_34_i1_shift: signed(25 downto 0);
  signal c_34_arith: signed(25 downto 0);
  signal c_34_oshift: signed(25 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(23 downto 0);
  signal c_35_16_0_False_resize: signed(23 downto 0);
  signal c_35_16_0_False_shift: signed(23 downto 0);
  signal c_35_4_6_False_resize: signed(23 downto 0);
  signal c_35_4_6_False_shift: signed(23 downto 0);
  signal c_35_16_1_False_resize: signed(23 downto 0);
  signal c_35_16_1_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_14_1_False_resize: signed(25 downto 0);
  signal c_36_14_1_False_shift: signed(25 downto 0);
  signal c_36_6_0_False_resize: signed(25 downto 0);
  signal c_36_6_0_False_shift: signed(25 downto 0);
  signal c_36_4_0_False_resize: signed(25 downto 0);
  signal c_36_4_0_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(24 downto 0);
  signal c_38_14_0_False_resize: signed(24 downto 0);
  signal c_38_14_0_False_shift: signed(24 downto 0);
  signal c_38_9_1_False_resize: signed(24 downto 0);
  signal c_38_9_1_False_shift: signed(24 downto 0);
  signal c_38_9_3_False_resize: signed(24 downto 0);
  signal c_38_9_3_False_shift: signed(24 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_4_0_False_resize: signed(23 downto 0);
  signal c_39_4_0_False_shift: signed(23 downto 0);
  signal c_39_11_0_False_resize: signed(23 downto 0);
  signal c_39_11_0_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_i0_resize: signed(25 downto 0);
  signal c_40_i1_resize: signed(25 downto 0);
  signal c_40_i0_shift: signed(25 downto 0);
  signal c_40_i1_shift: signed(25 downto 0);
  signal c_40_arith: signed(25 downto 0);
  signal c_40_oshift: signed(25 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(24 downto 0);
  signal c_41_4_0_False_resize: signed(24 downto 0);
  signal c_41_4_0_False_shift: signed(24 downto 0);
  signal c_41_6_0_False_resize: signed(24 downto 0);
  signal c_41_6_0_False_shift: signed(24 downto 0);
  signal c_41_4_7_False_resize: signed(24 downto 0);
  signal c_41_4_7_False_shift: signed(24 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_42_15_0_False_resize: signed(24 downto 0);
  signal c_42_15_0_False_shift: signed(24 downto 0);
  signal c_42_6_5_False_resize: signed(24 downto 0);
  signal c_42_6_5_False_shift: signed(24 downto 0);
  signal c_42_4_2_False_resize: signed(24 downto 0);
  signal c_42_4_2_False_shift: signed(24 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_i0_resize: signed(25 downto 0);
  signal c_43_i1_resize: signed(25 downto 0);
  signal c_43_i0_shift: signed(25 downto 0);
  signal c_43_i1_shift: signed(25 downto 0);
  signal c_43_arith: signed(25 downto 0);
  signal c_43_oshift: signed(25 downto 0);
  signal c_44: signed(20 downto 0);
  signal c_44_6_1_False_resize: signed(20 downto 0);
  signal c_44_6_1_False_shift: signed(20 downto 0);
  signal c_44_4_0_False_resize: signed(20 downto 0);
  signal c_44_4_0_False_shift: signed(20 downto 0);
  signal c_44_4_2_False_resize: signed(20 downto 0);
  signal c_44_4_2_False_shift: signed(20 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(21 downto 0);
  signal c_45_9_0_False_resize: signed(21 downto 0);
  signal c_45_9_0_False_shift: signed(21 downto 0);
  signal c_45_4_0_False_resize: signed(21 downto 0);
  signal c_45_4_0_False_shift: signed(21 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_i0_resize: signed(25 downto 0);
  signal c_46_i1_resize: signed(25 downto 0);
  signal c_46_i0_shift: signed(25 downto 0);
  signal c_46_i1_shift: signed(25 downto 0);
  signal c_46_arith: signed(25 downto 0);
  signal c_46_oshift: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_resize: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_resize: signed(25 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_53_resize: signed(24 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_resize: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_resize: signed(25 downto 0);
begin
  config_select_0 <= config_select;
  process(clk)
  begin
    if rising_edge(clk) then
      config_select_1 <= config_select;
      config_select_2 <= config_select;
      config_select_3 <= config_select;
      config_select_4 <= config_select;
      config_select_5 <= config_select;
      config_select_6 <= config_select;
      config_select_7 <= config_select;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 1 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 2 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 3 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 4 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 5 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 6 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 7 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 8 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 9 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_56);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[9], [9], [9]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(19 downto 0);
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1], [1]]
  c_3 <= c_1 & "";
  -- node of type 'add' in stage 3 with id 4 and associated fundamentals [[3], [3], [3]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      x_i => c_3,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(17 downto 0);
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[1], [16], [1]]
  c_5_1_4_False_resize <= resize(c_1, 20);
  c_5_1_4_False_shift <= shift_left(c_5_1_4_False_resize, 4);
  c_5_1_0_False_resize <= resize(c_1, 20);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_1_4_False_shift when "0",
    c_5_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[15], [257], [15]]
  with config_select_3 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 25,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_3,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(24 downto 0);
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[1], [2], [2]]
  c_7_1_0_False_resize <= resize(c_1, 17);
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  c_7_1_1_False_resize <= resize(c_1, 17);
  c_7_1_1_False_shift <= shift_left(c_7_1_1_False_resize, 1);
  with config_select_2 select c_7_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_1_0_False_shift when "0",
    c_7_1_1_False_shift when others;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[9], [9], [9]]
  c_8 <= c_2 & "";
  -- node of type 'add' in stage 3 with id 9 and associated fundamentals [[25], [41], [41]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 20,
      w_o => 22,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(21 downto 0);
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[1], [1], [9]]
  c_10_2_0_False_resize <= c_2;
  c_10_2_0_False_shift <= shift_left(c_10_2_0_False_resize, 0);
  c_10_1_0_False_resize <= resize(c_1, 20);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_10_sel select c_10 <=
    c_10_2_0_False_shift when "00",
    c_10_1_0_False_shift when "01",
    to_signed(0, 20) when others;
  -- node of type 'add_sub' in stage 3 with id 11 and associated fundamentals [[143], [143], [153]]
  with config_select_3 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_11_sub_sel,
      x_i => c_8,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(23 downto 0);
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[9], [1], [1]]
  c_12_1_0_False_resize <= resize(c_1, 20);
  c_12_1_0_False_shift <= shift_left(c_12_1_0_False_resize, 0);
  c_12_2_0_False_resize <= c_2;
  c_12_2_0_False_shift <= shift_left(c_12_2_0_False_resize, 0);
  with config_select_2 select c_12_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_1_0_False_shift when "0",
    c_12_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 13 and associated fundamentals [[153], [143], [143]]
  with config_select_3 select c_13_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_13_sub_sel,
      x_i => c_8,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(23 downto 0);
  -- node of type 'add' in stage 3 with id 14 and associated fundamentals [[265], [265], [265]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 25,
      s_x_i => 8,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_3,
      y_i => c_8,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(24 downto 0);
  -- node of type 'add' in stage 3 with id 15 and associated fundamentals [[257], [257], [257]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 8,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_3,
      y_i => c_3,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(24 downto 0);
  -- node of type 'add' in stage 3 with id 16 and associated fundamentals [[25], [25], [25]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 21,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_3,
      y_i => c_8,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(20 downto 0);
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[48], [82], [265]]
  c_17_14_0_False_resize <= c_14;
  c_17_14_0_False_shift <= shift_left(c_17_14_0_False_resize, 0);
  c_17_4_4_False_resize <= resize(c_4, 25);
  c_17_4_4_False_shift <= shift_left(c_17_4_4_False_resize, 4);
  c_17_9_1_False_resize <= resize(c_9, 25);
  c_17_9_1_False_shift <= shift_left(c_17_9_1_False_resize, 1);
  with config_select_4 select c_17_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_14_0_False_shift when "00",
    c_17_4_4_False_shift when "01",
    c_17_9_1_False_shift when others;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[800], [3], [265]]
  c_18_14_0_False_resize <= resize(c_14, 26);
  c_18_14_0_False_shift <= shift_left(c_18_14_0_False_resize, 0);
  c_18_4_0_False_resize <= resize(c_4, 26);
  c_18_4_0_False_shift <= shift_left(c_18_4_0_False_resize, 0);
  c_18_9_5_False_resize <= resize(c_9, 26);
  c_18_9_5_False_shift <= shift_left(c_18_9_5_False_resize, 5);
  with config_select_4 select c_18_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_18_sel select c_18 <=
    c_18_14_0_False_shift when "00",
    c_18_4_0_False_shift when "01",
    c_18_9_5_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 19 and associated fundamentals [[896], [161], [795]]
  with config_select_5 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[3], [6], [3]]
  c_20_4_0_False_resize <= resize(c_4, 19);
  c_20_4_0_False_shift <= shift_left(c_20_4_0_False_resize, 0);
  c_20_4_1_False_resize <= resize(c_4, 19);
  c_20_4_1_False_shift <= shift_left(c_20_4_1_False_resize, 1);
  with config_select_4 select c_20_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_4_0_False_shift when "0",
    c_20_4_1_False_shift when others;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[50], [143], [514]]
  c_21_15_1_False_resize <= resize(c_15, 26);
  c_21_15_1_False_shift <= shift_left(c_21_15_1_False_resize, 1);
  c_21_9_1_False_resize <= resize(c_9, 26);
  c_21_9_1_False_shift <= shift_left(c_21_9_1_False_resize, 1);
  c_21_13_0_False_resize <= resize(c_13, 26);
  c_21_13_0_False_shift <= shift_left(c_21_13_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_15_1_False_shift when "00",
    c_21_9_1_False_shift when "01",
    c_21_13_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 22 and associated fundamentals [[142], [241], [706]]
  with config_select_5 select c_22_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 6,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[153], [192], [1600]]
  c_23_13_0_False_resize <= resize(c_13, 27);
  c_23_13_0_False_shift <= shift_left(c_23_13_0_False_resize, 0);
  c_23_16_6_False_resize <= resize(c_16, 27);
  c_23_16_6_False_shift <= shift_left(c_23_16_6_False_resize, 6);
  c_23_4_6_False_resize <= resize(c_4, 27);
  c_23_4_6_False_shift <= shift_left(c_23_4_6_False_resize, 6);
  with config_select_4 select c_23_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_13_0_False_shift when "00",
    c_23_16_6_False_shift when "01",
    c_23_4_6_False_shift when others;
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[3], [286], [2288]]
  c_24_4_0_False_resize <= resize(c_4, 28);
  c_24_4_0_False_shift <= shift_left(c_24_4_0_False_resize, 0);
  c_24_13_1_False_resize <= resize(c_13, 28);
  c_24_13_1_False_shift <= shift_left(c_24_13_1_False_resize, 1);
  c_24_13_4_False_resize <= resize(c_13, 28);
  c_24_13_4_False_shift <= shift_left(c_24_13_4_False_resize, 4);
  with config_select_4 select c_24_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_24_sel select c_24 <=
    c_24_4_0_False_shift when "00",
    c_24_13_1_False_shift when "01",
    c_24_13_4_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 25 and associated fundamentals [[75], [239], [344]]
  with config_select_5 select c_25_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  with config_select_5 select c_25_sub_sel_right <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 28,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_25_sub_sel_left,
      sub_b_i => c_25_sub_sel_right,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(24 downto 0);
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[143], [6], [153]]
  c_26_11_0_False_resize <= c_11;
  c_26_11_0_False_shift <= shift_left(c_26_11_0_False_resize, 0);
  c_26_4_1_False_resize <= resize(c_4, 24);
  c_26_4_1_False_shift <= shift_left(c_26_4_1_False_resize, 1);
  with config_select_4 select c_26_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_26_sel select c_26 <=
    c_26_11_0_False_shift when "0",
    c_26_4_1_False_shift when others;
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[265], [768], [384]]
  c_27_4_7_False_resize <= resize(c_4, 26);
  c_27_4_7_False_shift <= shift_left(c_27_4_7_False_resize, 7);
  c_27_4_8_False_resize <= resize(c_4, 26);
  c_27_4_8_False_shift <= shift_left(c_27_4_8_False_resize, 8);
  c_27_14_0_False_resize <= resize(c_14, 26);
  c_27_14_0_False_shift <= shift_left(c_27_14_0_False_resize, 0);
  with config_select_4 select c_27_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_4_7_False_shift when "00",
    c_27_4_8_False_shift when "01",
    c_27_14_0_False_shift when others;
  -- node of type 'add' in stage 5 with id 28 and associated fundamentals [[551], [780], [690]]
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  c_28 <= c_28_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[153], [143], [164]]
  c_29_9_2_False_resize <= resize(c_9, 24);
  c_29_9_2_False_shift <= shift_left(c_29_9_2_False_resize, 2);
  c_29_13_0_False_resize <= c_13;
  c_29_13_0_False_shift <= shift_left(c_29_13_0_False_resize, 0);
  with config_select_4 select c_29_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_29_sel select c_29 <=
    c_29_9_2_False_shift when "0",
    c_29_13_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 30 and associated fundamentals [[3], [24], [3]]
  c_30_4_0_False_resize <= resize(c_4, 21);
  c_30_4_0_False_shift <= shift_left(c_30_4_0_False_resize, 0);
  c_30_4_3_False_resize <= resize(c_4, 21);
  c_30_4_3_False_shift <= shift_left(c_30_4_3_False_resize, 3);
  with config_select_4 select c_30_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_30_sel select c_30 <=
    c_30_4_0_False_shift when "0",
    c_30_4_3_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 31 and associated fundamentals [[609], [596], [659]]
  with config_select_5 select c_31_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_31_sub_sel,
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  c_31 <= c_31_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 32 and associated fundamentals [[200], [143], [100]]
  c_32_16_2_False_resize <= resize(c_16, 24);
  c_32_16_2_False_shift <= shift_left(c_32_16_2_False_resize, 2);
  c_32_13_0_False_resize <= c_13;
  c_32_13_0_False_shift <= shift_left(c_32_13_0_False_resize, 0);
  c_32_9_3_False_resize <= resize(c_9, 24);
  c_32_9_3_False_shift <= shift_left(c_32_9_3_False_resize, 3);
  with config_select_4 select c_32_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_32_sel select c_32 <=
    c_32_16_2_False_shift when "00",
    c_32_13_0_False_shift when "01",
    c_32_9_3_False_shift when others;
  -- node of type 'mux' in stage 4 with id 33 and associated fundamentals [[143], [257], [15]]
  c_33_6_0_False_resize <= c_6;
  c_33_6_0_False_shift <= shift_left(c_33_6_0_False_resize, 0);
  c_33_11_0_False_resize <= resize(c_11, 25);
  c_33_11_0_False_shift <= shift_left(c_33_11_0_False_resize, 0);
  with config_select_4 select c_33_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_33_sel select c_33 <=
    c_33_6_0_False_shift when "0",
    c_33_11_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 34 and associated fundamentals [[657], [829], [415]]
  with config_select_5 select c_34_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_34_sub_sel,
      x_i => c_32,
      y_i => c_33,
      z_o => c_34_oshift
    );
  c_34 <= c_34_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 35 and associated fundamentals [[192], [25], [50]]
  c_35_16_0_False_resize <= resize(c_16, 24);
  c_35_16_0_False_shift <= shift_left(c_35_16_0_False_resize, 0);
  c_35_4_6_False_resize <= resize(c_4, 24);
  c_35_4_6_False_shift <= shift_left(c_35_4_6_False_resize, 6);
  c_35_16_1_False_resize <= resize(c_16, 24);
  c_35_16_1_False_shift <= shift_left(c_35_16_1_False_resize, 1);
  with config_select_4 select c_35_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_35_sel select c_35 <=
    c_35_16_0_False_shift when "00",
    c_35_4_6_False_shift when "01",
    c_35_16_1_False_shift when others;
  -- node of type 'mux' in stage 4 with id 36 and associated fundamentals [[15], [530], [3]]
  c_36_14_1_False_resize <= resize(c_14, 26);
  c_36_14_1_False_shift <= shift_left(c_36_14_1_False_resize, 1);
  c_36_6_0_False_resize <= resize(c_6, 26);
  c_36_6_0_False_shift <= shift_left(c_36_6_0_False_resize, 0);
  c_36_4_0_False_resize <= resize(c_4, 26);
  c_36_4_0_False_shift <= shift_left(c_36_4_0_False_resize, 0);
  with config_select_4 select c_36_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_36_sel select c_36 <=
    c_36_14_1_False_shift when "00",
    c_36_6_0_False_shift when "01",
    c_36_4_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 37 and associated fundamentals [[783], [630], [197]]
  with config_select_5 select c_37_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
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
      sub_i => c_37_sub_sel,
      x_i => c_35,
      y_i => c_36,
      z_o => c_37_oshift
    );
  c_37 <= c_37_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 38 and associated fundamentals [[200], [82], [265]]
  c_38_14_0_False_resize <= c_14;
  c_38_14_0_False_shift <= shift_left(c_38_14_0_False_resize, 0);
  c_38_9_1_False_resize <= resize(c_9, 25);
  c_38_9_1_False_shift <= shift_left(c_38_9_1_False_resize, 1);
  c_38_9_3_False_resize <= resize(c_9, 25);
  c_38_9_3_False_shift <= shift_left(c_38_9_3_False_resize, 3);
  with config_select_4 select c_38_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_38_sel select c_38 <=
    c_38_14_0_False_shift when "00",
    c_38_9_1_False_shift when "01",
    c_38_9_3_False_shift when others;
  -- node of type 'mux' in stage 4 with id 39 and associated fundamentals [[143], [3], [153]]
  c_39_4_0_False_resize <= resize(c_4, 24);
  c_39_4_0_False_shift <= shift_left(c_39_4_0_False_resize, 0);
  c_39_11_0_False_resize <= c_11;
  c_39_11_0_False_shift <= shift_left(c_39_11_0_False_resize, 0);
  with config_select_4 select c_39_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_39_sel select c_39 <=
    c_39_4_0_False_shift when "0",
    c_39_11_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 40 and associated fundamentals [[943], [331], [907]]
  with config_select_5 select c_40_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_40_sub_sel,
      x_i => c_38,
      y_i => c_39,
      z_o => c_40_oshift
    );
  c_40 <= c_40_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 41 and associated fundamentals [[3], [257], [384]]
  c_41_4_0_False_resize <= resize(c_4, 25);
  c_41_4_0_False_shift <= shift_left(c_41_4_0_False_resize, 0);
  c_41_6_0_False_resize <= c_6;
  c_41_6_0_False_shift <= shift_left(c_41_6_0_False_resize, 0);
  c_41_4_7_False_resize <= resize(c_4, 25);
  c_41_4_7_False_shift <= shift_left(c_41_4_7_False_resize, 7);
  with config_select_4 select c_41_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_41_sel select c_41 <=
    c_41_4_0_False_shift when "00",
    c_41_6_0_False_shift when "01",
    c_41_4_7_False_shift when others;
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[480], [12], [257]]
  c_42_15_0_False_resize <= c_15;
  c_42_15_0_False_shift <= shift_left(c_42_15_0_False_resize, 0);
  c_42_6_5_False_resize <= c_6;
  c_42_6_5_False_shift <= shift_left(c_42_6_5_False_resize, 5);
  c_42_4_2_False_resize <= resize(c_4, 25);
  c_42_4_2_False_shift <= shift_left(c_42_4_2_False_resize, 2);
  with config_select_4 select c_42_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_42_sel select c_42 <=
    c_42_15_0_False_shift when "00",
    c_42_6_5_False_shift when "01",
    c_42_4_2_False_shift when others;
  -- node of type 'add' in stage 5 with id 43 and associated fundamentals [[963], [281], [898]]
  inst_adder_node_43: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      x_i => c_41,
      y_i => c_42,
      z_o => c_43_oshift
    );
  c_43 <= c_43_oshift(25 downto 0);
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[30], [3], [12]]
  c_44_6_1_False_resize <= c_6(20 downto 0);
  c_44_6_1_False_shift <= shift_left(c_44_6_1_False_resize, 1);
  c_44_4_0_False_resize <= resize(c_4, 21);
  c_44_4_0_False_shift <= shift_left(c_44_4_0_False_resize, 0);
  c_44_4_2_False_resize <= resize(c_4, 21);
  c_44_4_2_False_shift <= shift_left(c_44_4_2_False_resize, 2);
  with config_select_4 select c_44_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_44_sel select c_44 <=
    c_44_6_1_False_shift when "00",
    c_44_4_0_False_shift when "01",
    c_44_4_2_False_shift when others;
  -- node of type 'mux' in stage 4 with id 45 and associated fundamentals [[25], [3], [41]]
  c_45_9_0_False_resize <= c_9;
  c_45_9_0_False_shift <= shift_left(c_45_9_0_False_resize, 0);
  c_45_4_0_False_resize <= resize(c_4, 22);
  c_45_4_0_False_shift <= shift_left(c_45_4_0_False_resize, 0);
  with config_select_4 select c_45_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_45_sel select c_45 <=
    c_45_9_0_False_shift when "0",
    c_45_4_0_False_shift when others;
  -- node of type 'add' in stage 5 with id 46 and associated fundamentals [[985], [99], [425]]
  inst_adder_node_46: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_44,
      y_i => c_45,
      z_o => c_46_oshift
    );
  c_46 <= c_46_oshift(25 downto 0);
  -- node of type 'output' in stage 5 with id 47 and associated fundamentals [[783], [630], [197]]
  c_47_resize <= c_37;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 5 with id 48 and associated fundamentals [[609], [596], [659]]
  c_48_resize <= c_31;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 5 with id 49 and associated fundamentals [[943], [331], [907]]
  c_49_resize <= c_40;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 5 with id 50 and associated fundamentals [[551], [780], [690]]
  c_50_resize <= c_28;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 5 with id 51 and associated fundamentals [[142], [241], [706]]
  c_51_resize <= c_22;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'output' in stage 5 with id 52 and associated fundamentals [[963], [281], [898]]
  c_52_resize <= c_43;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'output' in stage 5 with id 53 and associated fundamentals [[75], [239], [344]]
  c_53_resize <= c_25;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'output' in stage 5 with id 54 and associated fundamentals [[896], [161], [795]]
  c_54_resize <= c_19;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'output' in stage 5 with id 55 and associated fundamentals [[985], [99], [425]]
  c_55_resize <= c_46;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'output' in stage 5 with id 56 and associated fundamentals [[657], [829], [415]]
  c_56_resize <= c_34;
  c_56 <= shift_left(c_56_resize, 0);
end architecture;

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
    y_4: out std_logic_vector(22 downto 0);
    y_5: out std_logic_vector(22 downto 0);
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
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_i0_resize: signed(17 downto 0);
  signal c_3_i1_resize: signed(17 downto 0);
  signal c_3_i0_shift: signed(17 downto 0);
  signal c_3_i1_shift: signed(17 downto 0);
  signal c_3_arith: signed(17 downto 0);
  signal c_3_oshift: signed(17 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(20 downto 0);
  signal c_4_1_0_False_resize: signed(20 downto 0);
  signal c_4_1_0_False_shift: signed(20 downto 0);
  signal c_4_3_3_False_resize: signed(20 downto 0);
  signal c_4_3_3_False_shift: signed(20 downto 0);
  signal c_4_3_1_False_resize: signed(20 downto 0);
  signal c_4_3_1_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_1_0_False_resize: signed(19 downto 0);
  signal c_5_1_0_False_shift: signed(19 downto 0);
  signal c_5_1_1_False_resize: signed(19 downto 0);
  signal c_5_1_1_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(23 downto 0);
  signal c_7_2_0_False_resize: signed(23 downto 0);
  signal c_7_2_0_False_shift: signed(23 downto 0);
  signal c_7_3_6_False_resize: signed(23 downto 0);
  signal c_7_3_6_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_1_0_False_resize: signed(23 downto 0);
  signal c_8_1_0_False_shift: signed(23 downto 0);
  signal c_8_1_6_False_resize: signed(23 downto 0);
  signal c_8_1_6_False_shift: signed(23 downto 0);
  signal c_8_2_3_False_resize: signed(23 downto 0);
  signal c_8_2_3_False_shift: signed(23 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(16 downto 0);
  signal c_10_0_0_False_resize: signed(16 downto 0);
  signal c_10_0_0_False_shift: signed(16 downto 0);
  signal c_10_0_1_False_resize: signed(16 downto 0);
  signal c_10_0_1_False_shift: signed(16 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_11_i0_resize: signed(19 downto 0);
  signal c_11_i1_resize: signed(19 downto 0);
  signal c_11_i0_shift: signed(19 downto 0);
  signal c_11_i1_shift: signed(19 downto 0);
  signal c_11_arith: signed(19 downto 0);
  signal c_11_oshift: signed(19 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(22 downto 0);
  signal c_12_2_0_False_resize: signed(22 downto 0);
  signal c_12_2_0_False_shift: signed(22 downto 0);
  signal c_12_2_4_False_resize: signed(22 downto 0);
  signal c_12_2_4_False_shift: signed(22 downto 0);
  signal c_12_3_6_False_resize: signed(22 downto 0);
  signal c_12_3_6_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_3_1_False_resize: signed(21 downto 0);
  signal c_13_3_1_False_shift: signed(21 downto 0);
  signal c_13_2_0_False_resize: signed(21 downto 0);
  signal c_13_2_0_False_shift: signed(21 downto 0);
  signal c_13_2_3_False_resize: signed(21 downto 0);
  signal c_13_2_3_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(21 downto 0);
  signal c_15_3_0_False_resize: signed(21 downto 0);
  signal c_15_3_0_False_shift: signed(21 downto 0);
  signal c_15_2_3_False_resize: signed(21 downto 0);
  signal c_15_2_3_False_shift: signed(21 downto 0);
  signal c_15_2_0_False_resize: signed(21 downto 0);
  signal c_15_2_0_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(19 downto 0);
  signal c_17_3_2_False_resize: signed(19 downto 0);
  signal c_17_3_2_False_shift: signed(19 downto 0);
  signal c_17_2_0_False_resize: signed(19 downto 0);
  signal c_17_2_0_False_shift: signed(19 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_18_1_0_False_resize: signed(18 downto 0);
  signal c_18_1_0_False_shift: signed(18 downto 0);
  signal c_18_3_0_False_resize: signed(18 downto 0);
  signal c_18_3_0_False_shift: signed(18 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(22 downto 0);
  signal c_20_1_0_False_resize: signed(22 downto 0);
  signal c_20_1_0_False_shift: signed(22 downto 0);
  signal c_20_3_4_False_resize: signed(22 downto 0);
  signal c_20_3_4_False_shift: signed(22 downto 0);
  signal c_20_2_4_False_resize: signed(22 downto 0);
  signal c_20_2_4_False_shift: signed(22 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_i0_resize: signed(23 downto 0);
  signal c_21_i1_resize: signed(23 downto 0);
  signal c_21_i0_shift: signed(23 downto 0);
  signal c_21_i1_shift: signed(23 downto 0);
  signal c_21_arith: signed(23 downto 0);
  signal c_21_oshift: signed(23 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_22_1_2_False_resize: signed(20 downto 0);
  signal c_22_1_2_False_shift: signed(20 downto 0);
  signal c_22_1_0_False_resize: signed(20 downto 0);
  signal c_22_1_0_False_shift: signed(20 downto 0);
  signal c_22_3_3_False_resize: signed(20 downto 0);
  signal c_22_3_3_False_shift: signed(20 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_23_2_3_False_resize: signed(21 downto 0);
  signal c_23_2_3_False_shift: signed(21 downto 0);
  signal c_23_1_0_False_resize: signed(21 downto 0);
  signal c_23_1_0_False_shift: signed(21 downto 0);
  signal c_23_2_0_False_resize: signed(21 downto 0);
  signal c_23_2_0_False_shift: signed(21 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(21 downto 0);
  signal c_24_i0_resize: signed(21 downto 0);
  signal c_24_i1_resize: signed(21 downto 0);
  signal c_24_i0_shift: signed(21 downto 0);
  signal c_24_i1_shift: signed(21 downto 0);
  signal c_24_arith: signed(21 downto 0);
  signal c_24_oshift: signed(21 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(24 downto 0);
  signal c_25_1_6_False_resize: signed(24 downto 0);
  signal c_25_1_6_False_shift: signed(24 downto 0);
  signal c_25_3_4_False_resize: signed(24 downto 0);
  signal c_25_3_4_False_shift: signed(24 downto 0);
  signal c_25_2_0_False_resize: signed(24 downto 0);
  signal c_25_2_0_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(18 downto 0);
  signal c_27_3_1_False_resize: signed(18 downto 0);
  signal c_27_3_1_False_shift: signed(18 downto 0);
  signal c_27_2_0_False_resize: signed(18 downto 0);
  signal c_27_2_0_False_shift: signed(18 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_i0_resize: signed(22 downto 0);
  signal c_28_i1_resize: signed(22 downto 0);
  signal c_28_i0_shift: signed(22 downto 0);
  signal c_28_i1_shift: signed(22 downto 0);
  signal c_28_arith: signed(22 downto 0);
  signal c_28_oshift: signed(22 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(21 downto 0);
  signal c_29_1_3_False_resize: signed(21 downto 0);
  signal c_29_1_3_False_shift: signed(21 downto 0);
  signal c_29_1_0_False_resize: signed(21 downto 0);
  signal c_29_1_0_False_shift: signed(21 downto 0);
  signal c_29_2_0_False_resize: signed(21 downto 0);
  signal c_29_2_0_False_shift: signed(21 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_30_1_5_False_resize: signed(22 downto 0);
  signal c_30_1_5_False_shift: signed(22 downto 0);
  signal c_30_3_5_False_resize: signed(22 downto 0);
  signal c_30_3_5_False_shift: signed(22 downto 0);
  signal c_30_2_0_False_resize: signed(22 downto 0);
  signal c_30_2_0_False_shift: signed(22 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_i0_resize: signed(22 downto 0);
  signal c_31_i1_resize: signed(22 downto 0);
  signal c_31_i0_shift: signed(22 downto 0);
  signal c_31_i1_shift: signed(22 downto 0);
  signal c_31_arith: signed(22 downto 0);
  signal c_31_oshift: signed(22 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(23 downto 0);
  signal c_32_6_0_False_resize: signed(23 downto 0);
  signal c_32_6_0_False_shift: signed(23 downto 0);
  signal c_32_21_0_False_resize: signed(23 downto 0);
  signal c_32_21_0_False_shift: signed(23 downto 0);
  signal c_32_6_3_False_resize: signed(23 downto 0);
  signal c_32_6_3_False_shift: signed(23 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_resize: signed(23 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_19_1_False_resize: signed(23 downto 0);
  signal c_34_19_1_False_shift: signed(23 downto 0);
  signal c_34_16_0_False_resize: signed(23 downto 0);
  signal c_34_16_0_False_shift: signed(23 downto 0);
  signal c_34_26_0_False_resize: signed(23 downto 0);
  signal c_34_26_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_resize: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_19_0_False_resize: signed(23 downto 0);
  signal c_36_19_0_False_shift: signed(23 downto 0);
  signal c_36_31_2_False_resize: signed(23 downto 0);
  signal c_36_31_2_False_shift: signed(23 downto 0);
  signal c_36_28_0_False_resize: signed(23 downto 0);
  signal c_36_28_0_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_31_0_False_resize: signed(23 downto 0);
  signal c_38_31_0_False_shift: signed(23 downto 0);
  signal c_38_21_1_False_resize: signed(23 downto 0);
  signal c_38_21_1_False_shift: signed(23 downto 0);
  signal c_38_14_0_False_resize: signed(23 downto 0);
  signal c_38_14_0_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_40_16_0_False_resize: signed(22 downto 0);
  signal c_40_16_0_False_shift: signed(22 downto 0);
  signal c_40_24_1_False_resize: signed(22 downto 0);
  signal c_40_24_1_False_shift: signed(22 downto 0);
  signal c_40_31_0_False_resize: signed(22 downto 0);
  signal c_40_31_0_False_shift: signed(22 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_resize: signed(22 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_42_24_3_False_resize: signed(22 downto 0);
  signal c_42_24_3_False_shift: signed(22 downto 0);
  signal c_42_9_1_False_resize: signed(22 downto 0);
  signal c_42_9_1_False_shift: signed(22 downto 0);
  signal c_42_19_0_False_resize: signed(22 downto 0);
  signal c_42_19_0_False_shift: signed(22 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_43_resize: signed(22 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_44_6_0_False_resize: signed(22 downto 0);
  signal c_44_6_0_False_shift: signed(22 downto 0);
  signal c_44_21_0_False_resize: signed(22 downto 0);
  signal c_44_21_0_False_shift: signed(22 downto 0);
  signal c_44_28_0_False_resize: signed(22 downto 0);
  signal c_44_28_0_False_shift: signed(22 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_14_1_False_resize: signed(23 downto 0);
  signal c_46_14_1_False_shift: signed(23 downto 0);
  signal c_46_6_0_False_resize: signed(23 downto 0);
  signal c_46_6_0_False_shift: signed(23 downto 0);
  signal c_46_14_0_False_resize: signed(23 downto 0);
  signal c_46_14_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_9_0_False_resize: signed(23 downto 0);
  signal c_48_9_0_False_shift: signed(23 downto 0);
  signal c_48_16_0_False_resize: signed(23 downto 0);
  signal c_48_16_0_False_shift: signed(23 downto 0);
  signal c_48_28_0_False_resize: signed(23 downto 0);
  signal c_48_28_0_False_shift: signed(23 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_26_2_False_resize: signed(23 downto 0);
  signal c_50_26_2_False_shift: signed(23 downto 0);
  signal c_50_9_0_False_resize: signed(23 downto 0);
  signal c_50_9_0_False_shift: signed(23 downto 0);
  signal c_50_24_0_False_resize: signed(23 downto 0);
  signal c_50_24_0_False_shift: signed(23 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
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
  -- output node 0 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 1 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 2 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 3 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 4 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 5 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 6 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 7 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 8 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 9 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_51);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [5], [5]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 2 and associated fundamentals [[7], [7], [7]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 3 and associated fundamentals [[1], [3], [3]]
  with config_select_1 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
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
      sub_i => c_3_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[3], [24], [6]]
  c_4_1_0_False_resize <= resize(c_1, 21);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_3_3_False_resize <= resize(c_3, 21);
  c_4_3_3_False_shift <= shift_left(c_4_3_3_False_resize, 3);
  c_4_3_1_False_resize <= resize(c_3, 21);
  c_4_3_1_False_shift <= shift_left(c_4_3_1_False_resize, 1);
  with config_select_2 select c_4_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_1_0_False_shift;
        when "01" => c_4 <= c_4_3_3_False_shift;
        when others => c_4 <= c_4_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[3], [5], [10]]
  c_5_1_0_False_resize <= resize(c_1, 20);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  c_5_1_1_False_resize <= resize(c_1, 20);
  c_5_1_1_False_shift <= shift_left(c_5_1_1_False_resize, 1);
  with config_select_2 select c_5_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_0_False_shift;
        when others => c_5 <= c_5_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[3], [43], [22]]
  with config_select_3 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 22,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[7], [192], [7]]
  c_7_2_0_False_resize <= resize(c_2, 24);
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  c_7_3_6_False_resize <= resize(c_3, 24);
  c_7_3_6_False_shift <= shift_left(c_7_3_6_False_resize, 6);
  with config_select_2 select c_7_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_2_0_False_shift;
        when others => c_7 <= c_7_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[192], [5], [56]]
  c_8_1_0_False_resize <= resize(c_1, 24);
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  c_8_1_6_False_resize <= resize(c_1, 24);
  c_8_1_6_False_shift <= shift_left(c_8_1_6_False_resize, 6);
  c_8_2_3_False_resize <= resize(c_2, 24);
  c_8_2_3_False_shift <= shift_left(c_8_2_3_False_resize, 3);
  with config_select_2 select c_8_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_1_0_False_shift;
        when "01" => c_8 <= c_8_1_6_False_shift;
        when others => c_8 <= c_8_2_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[-185], [197], [63]]
  with config_select_3 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[1], [1], [2]]
  c_10_0_0_False_resize <= resize(c_0, 17);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_0_1_False_resize <= resize(c_0, 17);
  c_10_0_1_False_shift <= shift_left(c_10_0_1_False_resize, 1);
  with config_select_1 select c_10_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_0_0_False_shift;
        when others => c_10 <= c_10_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 11 and associated fundamentals [[5], [1], [11]]
  with config_select_2 select c_11_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 18,
      w_o => 20,
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
      sub_i => c_11_sub_sel,
      x_i => c_10,
      y_i => c_3,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[64], [112], [7]]
  c_12_2_0_False_resize <= resize(c_2, 23);
  c_12_2_0_False_shift <= shift_left(c_12_2_0_False_resize, 0);
  c_12_2_4_False_resize <= resize(c_2, 23);
  c_12_2_4_False_shift <= shift_left(c_12_2_4_False_resize, 4);
  c_12_3_6_False_resize <= resize(c_3, 23);
  c_12_3_6_False_shift <= shift_left(c_12_3_6_False_resize, 6);
  with config_select_2 select c_12_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_2_0_False_shift;
        when "01" => c_12 <= c_12_2_4_False_shift;
        when others => c_12 <= c_12_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[7], [6], [56]]
  c_13_3_1_False_resize <= resize(c_3, 22);
  c_13_3_1_False_shift <= shift_left(c_13_3_1_False_resize, 1);
  c_13_2_0_False_resize <= resize(c_2, 22);
  c_13_2_0_False_shift <= shift_left(c_13_2_0_False_resize, 0);
  c_13_2_3_False_resize <= resize(c_2, 22);
  c_13_2_3_False_shift <= shift_left(c_13_2_3_False_resize, 3);
  with config_select_2 select c_13_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_3_1_False_shift;
        when "01" => c_13 <= c_13_2_0_False_shift;
        when others => c_13 <= c_13_2_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 14 and associated fundamentals [[121], [218], [70]]
  with config_select_3 select c_14_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[7], [56], [3]]
  c_15_3_0_False_resize <= resize(c_3, 22);
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  c_15_2_3_False_resize <= resize(c_2, 22);
  c_15_2_3_False_shift <= shift_left(c_15_2_3_False_resize, 3);
  c_15_2_0_False_resize <= resize(c_2, 22);
  c_15_2_0_False_shift <= shift_left(c_15_2_0_False_resize, 0);
  with config_select_2 select c_15_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_3_0_False_shift;
        when "01" => c_15 <= c_15_2_3_False_shift;
        when others => c_15 <= c_15_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 16 and associated fundamentals [[-73], [72], [-173]]
  with config_select_3 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_16_sub_sel,
      x_i => c_15,
      y_i => c_11,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[7], [7], [12]]
  c_17_3_2_False_resize <= resize(c_3, 20);
  c_17_3_2_False_shift <= shift_left(c_17_3_2_False_resize, 2);
  c_17_2_0_False_resize <= resize(c_2, 20);
  c_17_2_0_False_shift <= shift_left(c_17_2_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_3_2_False_shift;
        when others => c_17 <= c_17_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[3], [5], [3]]
  c_18_1_0_False_resize <= c_1;
  c_18_1_0_False_shift <= shift_left(c_18_1_0_False_resize, 0);
  c_18_3_0_False_resize <= resize(c_3, 19);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  with config_select_2 select c_18_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_1_0_False_shift;
        when others => c_18 <= c_18_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[115], [107], [195]]
  with config_select_3 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 20 and associated fundamentals [[3], [112], [48]]
  c_20_1_0_False_resize <= resize(c_1, 23);
  c_20_1_0_False_shift <= shift_left(c_20_1_0_False_resize, 0);
  c_20_3_4_False_resize <= resize(c_3, 23);
  c_20_3_4_False_shift <= shift_left(c_20_3_4_False_resize, 4);
  c_20_2_4_False_resize <= resize(c_2, 23);
  c_20_2_4_False_shift <= shift_left(c_20_2_4_False_resize, 4);
  with config_select_2 select c_20_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_1_0_False_shift;
        when "01" => c_20 <= c_20_3_4_False_shift;
        when others => c_20 <= c_20_2_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 21 and associated fundamentals [[1], [223], [85]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_20,
      y_i => c_11,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 22 and associated fundamentals [[12], [5], [24]]
  c_22_1_2_False_resize <= resize(c_1, 21);
  c_22_1_2_False_shift <= shift_left(c_22_1_2_False_resize, 2);
  c_22_1_0_False_resize <= resize(c_1, 21);
  c_22_1_0_False_shift <= shift_left(c_22_1_0_False_resize, 0);
  c_22_3_3_False_resize <= resize(c_3, 21);
  c_22_3_3_False_shift <= shift_left(c_22_3_3_False_resize, 3);
  with config_select_2 select c_22_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_1_2_False_shift;
        when "01" => c_22 <= c_22_1_0_False_shift;
        when others => c_22 <= c_22_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 23 and associated fundamentals [[7], [56], [5]]
  c_23_2_3_False_resize <= resize(c_2, 22);
  c_23_2_3_False_shift <= shift_left(c_23_2_3_False_resize, 3);
  c_23_1_0_False_resize <= resize(c_1, 22);
  c_23_1_0_False_shift <= shift_left(c_23_1_0_False_resize, 0);
  c_23_2_0_False_resize <= resize(c_2, 22);
  c_23_2_0_False_shift <= shift_left(c_23_2_0_False_resize, 0);
  with config_select_2 select c_23_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_2_3_False_shift;
        when "01" => c_23 <= c_23_1_0_False_shift;
        when others => c_23 <= c_23_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 24 and associated fundamentals [[5], [-51], [29]]
  with config_select_3 select c_24_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 25 and associated fundamentals [[7], [320], [48]]
  c_25_1_6_False_resize <= resize(c_1, 25);
  c_25_1_6_False_shift <= shift_left(c_25_1_6_False_resize, 6);
  c_25_3_4_False_resize <= resize(c_3, 25);
  c_25_3_4_False_shift <= shift_left(c_25_3_4_False_resize, 4);
  c_25_2_0_False_resize <= resize(c_2, 25);
  c_25_2_0_False_shift <= shift_left(c_25_2_0_False_resize, 0);
  with config_select_2 select c_25_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_1_6_False_shift;
        when "01" => c_25 <= c_25_3_4_False_shift;
        when others => c_25 <= c_25_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 26 and associated fundamentals [[13], [-316], [92]]
  with config_select_3 select c_26_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 25,
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
      sub_i => c_26_sub_sel,
      x_i => c_11,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 27 and associated fundamentals [[7], [7], [6]]
  c_27_3_1_False_resize <= resize(c_3, 19);
  c_27_3_1_False_shift <= shift_left(c_27_3_1_False_resize, 1);
  c_27_2_0_False_resize <= c_2;
  c_27_2_0_False_shift <= shift_left(c_27_2_0_False_resize, 0);
  with config_select_2 select c_27_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_3_1_False_shift;
        when others => c_27 <= c_27_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 28 and associated fundamentals [[117], [-111], [107]]
  with config_select_3 select c_28_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_28_sub_sel,
      x_i => c_11,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 29 and associated fundamentals [[7], [40], [5]]
  c_29_1_3_False_resize <= resize(c_1, 22);
  c_29_1_3_False_shift <= shift_left(c_29_1_3_False_resize, 3);
  c_29_1_0_False_resize <= resize(c_1, 22);
  c_29_1_0_False_shift <= shift_left(c_29_1_0_False_resize, 0);
  c_29_2_0_False_resize <= resize(c_2, 22);
  c_29_2_0_False_shift <= shift_left(c_29_2_0_False_resize, 0);
  with config_select_2 select c_29_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_1_3_False_shift;
        when "01" => c_29 <= c_29_1_0_False_shift;
        when others => c_29 <= c_29_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 30 and associated fundamentals [[96], [7], [96]]
  c_30_1_5_False_resize <= resize(c_1, 23);
  c_30_1_5_False_shift <= shift_left(c_30_1_5_False_resize, 5);
  c_30_3_5_False_resize <= resize(c_3, 23);
  c_30_3_5_False_shift <= shift_left(c_30_3_5_False_resize, 5);
  c_30_2_0_False_resize <= resize(c_2, 23);
  c_30_2_0_False_shift <= shift_left(c_30_2_0_False_resize, 0);
  with config_select_2 select c_30_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_1_5_False_shift;
        when "01" => c_30 <= c_30_3_5_False_shift;
        when others => c_30 <= c_30_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 31 and associated fundamentals [[103], [47], [-91]]
  with config_select_3 select c_31_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_31_sub_sel,
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 32 and associated fundamentals [[3], [223], [176]]
  c_32_6_0_False_resize <= resize(c_6, 24);
  c_32_6_0_False_shift <= shift_left(c_32_6_0_False_resize, 0);
  c_32_21_0_False_resize <= c_21;
  c_32_21_0_False_shift <= shift_left(c_32_21_0_False_resize, 0);
  c_32_6_3_False_resize <= resize(c_6, 24);
  c_32_6_3_False_shift <= shift_left(c_32_6_3_False_resize, 3);
  with config_select_4 select c_32_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_6_0_False_shift;
        when "01" => c_32 <= c_32_21_0_False_shift;
        when others => c_32 <= c_32_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 33 and associated fundamentals [[3], [223], [176]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 4 with id 34 and associated fundamentals [[230], [72], [92]]
  c_34_19_1_False_resize <= c_19;
  c_34_19_1_False_shift <= shift_left(c_34_19_1_False_resize, 1);
  c_34_16_0_False_resize <= c_16;
  c_34_16_0_False_shift <= shift_left(c_34_16_0_False_resize, 0);
  c_34_26_0_False_resize <= c_26;
  c_34_26_0_False_shift <= shift_left(c_34_26_0_False_resize, 0);
  with config_select_4 select c_34_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_19_1_False_shift;
        when "01" => c_34 <= c_34_16_0_False_shift;
        when others => c_34 <= c_34_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 35 and associated fundamentals [[230], [72], [92]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'mux' in stage 4 with id 36 and associated fundamentals [[117], [188], [195]]
  c_36_19_0_False_resize <= c_19;
  c_36_19_0_False_shift <= shift_left(c_36_19_0_False_resize, 0);
  c_36_31_2_False_resize <= resize(c_31, 24);
  c_36_31_2_False_shift <= shift_left(c_36_31_2_False_resize, 2);
  c_36_28_0_False_resize <= resize(c_28, 24);
  c_36_28_0_False_shift <= shift_left(c_36_28_0_False_resize, 0);
  with config_select_4 select c_36_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_19_0_False_shift;
        when "01" => c_36 <= c_36_31_2_False_shift;
        when others => c_36 <= c_36_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 37 and associated fundamentals [[117], [188], [195]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 4 with id 38 and associated fundamentals [[103], [218], [170]]
  c_38_31_0_False_resize <= resize(c_31, 24);
  c_38_31_0_False_shift <= shift_left(c_38_31_0_False_resize, 0);
  c_38_21_1_False_resize <= c_21;
  c_38_21_1_False_shift <= shift_left(c_38_21_1_False_resize, 1);
  c_38_14_0_False_resize <= c_14;
  c_38_14_0_False_shift <= shift_left(c_38_14_0_False_resize, 0);
  with config_select_4 select c_38_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_31_0_False_shift;
        when "01" => c_38 <= c_38_21_1_False_shift;
        when others => c_38 <= c_38_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[103], [218], [170]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[-73], [-102], [-91]]
  c_40_16_0_False_resize <= c_16(22 downto 0);
  c_40_16_0_False_shift <= shift_left(c_40_16_0_False_resize, 0);
  c_40_24_1_False_resize <= resize(c_24, 23);
  c_40_24_1_False_shift <= shift_left(c_40_24_1_False_resize, 1);
  c_40_31_0_False_resize <= c_31;
  c_40_31_0_False_shift <= shift_left(c_40_31_0_False_resize, 0);
  with config_select_4 select c_40_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_16_0_False_shift;
        when "01" => c_40 <= c_40_24_1_False_shift;
        when others => c_40 <= c_40_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[73], [102], [91]]
  c_41_resize <= c_40;
  c_41 <= -shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[40], [107], [126]]
  c_42_24_3_False_resize <= resize(c_24, 23);
  c_42_24_3_False_shift <= shift_left(c_42_24_3_False_resize, 3);
  c_42_9_1_False_resize <= c_9(22 downto 0);
  c_42_9_1_False_shift <= shift_left(c_42_9_1_False_resize, 1);
  c_42_19_0_False_resize <= c_19(22 downto 0);
  c_42_19_0_False_shift <= shift_left(c_42_19_0_False_resize, 0);
  with config_select_4 select c_42_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_24_3_False_shift;
        when "01" => c_42 <= c_42_9_1_False_shift;
        when others => c_42 <= c_42_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[40], [107], [126]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[1], [43], [107]]
  c_44_6_0_False_resize <= resize(c_6, 23);
  c_44_6_0_False_shift <= shift_left(c_44_6_0_False_resize, 0);
  c_44_21_0_False_resize <= c_21(22 downto 0);
  c_44_21_0_False_shift <= shift_left(c_44_21_0_False_resize, 0);
  c_44_28_0_False_resize <= c_28;
  c_44_28_0_False_shift <= shift_left(c_44_28_0_False_resize, 0);
  with config_select_4 select c_44_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_6_0_False_shift;
        when "01" => c_44 <= c_44_21_0_False_shift;
        when others => c_44 <= c_44_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[2], [86], [214]]
  c_45_resize <= resize(c_44, 24);
  c_45 <= shift_left(c_45_resize, 1);
  -- node of type 'mux' in stage 4 with id 46 and associated fundamentals [[242], [43], [70]]
  c_46_14_1_False_resize <= c_14;
  c_46_14_1_False_shift <= shift_left(c_46_14_1_False_resize, 1);
  c_46_6_0_False_resize <= resize(c_6, 24);
  c_46_6_0_False_shift <= shift_left(c_46_6_0_False_resize, 0);
  c_46_14_0_False_resize <= c_14;
  c_46_14_0_False_shift <= shift_left(c_46_14_0_False_resize, 0);
  with config_select_4 select c_46_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_14_1_False_shift;
        when "01" => c_46 <= c_46_6_0_False_shift;
        when others => c_46 <= c_46_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[242], [43], [70]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 4 with id 48 and associated fundamentals [[-185], [-111], [-173]]
  c_48_9_0_False_resize <= c_9;
  c_48_9_0_False_shift <= shift_left(c_48_9_0_False_resize, 0);
  c_48_16_0_False_resize <= c_16;
  c_48_16_0_False_shift <= shift_left(c_48_16_0_False_resize, 0);
  c_48_28_0_False_resize <= resize(c_28, 24);
  c_48_28_0_False_shift <= shift_left(c_48_28_0_False_resize, 0);
  with config_select_4 select c_48_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_9_0_False_shift;
        when "01" => c_48 <= c_48_16_0_False_shift;
        when others => c_48 <= c_48_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 49 and associated fundamentals [[185], [111], [173]]
  c_49_resize <= c_48;
  c_49 <= -shift_left(c_49_resize, 0);
  -- node of type 'mux' in stage 4 with id 50 and associated fundamentals [[52], [197], [29]]
  c_50_26_2_False_resize <= c_26;
  c_50_26_2_False_shift <= shift_left(c_50_26_2_False_resize, 2);
  c_50_9_0_False_resize <= c_9;
  c_50_9_0_False_shift <= shift_left(c_50_9_0_False_resize, 0);
  c_50_24_0_False_resize <= resize(c_24, 24);
  c_50_24_0_False_shift <= shift_left(c_50_24_0_False_resize, 0);
  with config_select_4 select c_50_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_26_2_False_shift;
        when "01" => c_50 <= c_50_9_0_False_shift;
        when others => c_50 <= c_50_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 51 and associated fundamentals [[52], [197], [29]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
end architecture;

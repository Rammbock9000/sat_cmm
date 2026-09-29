library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(22 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(22 downto 0);
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
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(21 downto 0);
  signal c_2_1_3_False_resize: signed(21 downto 0);
  signal c_2_1_3_False_shift: signed(21 downto 0);
  signal c_2_1_0_False_resize: signed(21 downto 0);
  signal c_2_1_0_False_shift: signed(21 downto 0);
  signal c_2_1_4_False_resize: signed(21 downto 0);
  signal c_2_1_4_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_1_5_False_resize: signed(20 downto 0);
  signal c_3_1_5_False_shift: signed(20 downto 0);
  signal c_3_1_0_False_resize: signed(20 downto 0);
  signal c_3_1_0_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_i0_resize: signed(18 downto 0);
  signal c_5_i1_resize: signed(18 downto 0);
  signal c_5_i0_shift: signed(18 downto 0);
  signal c_5_i1_shift: signed(18 downto 0);
  signal c_5_arith: signed(18 downto 0);
  signal c_5_oshift: signed(18 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(16 downto 0);
  signal c_6_0_0_False_resize: signed(16 downto 0);
  signal c_6_0_0_False_shift: signed(16 downto 0);
  signal c_6_0_1_False_resize: signed(16 downto 0);
  signal c_6_0_1_False_shift: signed(16 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(16 downto 0);
  signal c_7_0_0_False_resize: signed(16 downto 0);
  signal c_7_0_0_False_shift: signed(16 downto 0);
  signal c_7_0_1_False_resize: signed(16 downto 0);
  signal c_7_0_1_False_shift: signed(16 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_8_i0_resize: signed(18 downto 0);
  signal c_8_i1_resize: signed(18 downto 0);
  signal c_8_i0_shift: signed(18 downto 0);
  signal c_8_i1_shift: signed(18 downto 0);
  signal c_8_arith: signed(18 downto 0);
  signal c_8_oshift: signed(18 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(20 downto 0);
  signal c_9_1_3_False_resize: signed(20 downto 0);
  signal c_9_1_3_False_shift: signed(20 downto 0);
  signal c_9_5_0_False_resize: signed(20 downto 0);
  signal c_9_5_0_False_shift: signed(20 downto 0);
  signal c_9_1_0_False_resize: signed(20 downto 0);
  signal c_9_1_0_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_1_4_False_resize: signed(22 downto 0);
  signal c_10_1_4_False_shift: signed(22 downto 0);
  signal c_10_5_0_False_resize: signed(22 downto 0);
  signal c_10_5_0_False_shift: signed(22 downto 0);
  signal c_10_5_4_False_resize: signed(22 downto 0);
  signal c_10_5_4_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(18 downto 0);
  signal c_12_1_0_False_resize: signed(18 downto 0);
  signal c_12_1_0_False_shift: signed(18 downto 0);
  signal c_12_1_1_False_resize: signed(18 downto 0);
  signal c_12_1_1_False_shift: signed(18 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_1_3_False_resize: signed(20 downto 0);
  signal c_13_1_3_False_shift: signed(20 downto 0);
  signal c_13_5_1_False_resize: signed(20 downto 0);
  signal c_13_5_1_False_shift: signed(20 downto 0);
  signal c_13_5_0_False_resize: signed(20 downto 0);
  signal c_13_5_0_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_14_i0_resize: signed(19 downto 0);
  signal c_14_i1_resize: signed(19 downto 0);
  signal c_14_i0_shift: signed(19 downto 0);
  signal c_14_i1_shift: signed(19 downto 0);
  signal c_14_arith: signed(19 downto 0);
  signal c_14_oshift: signed(19 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(19 downto 0);
  signal c_15_i0_resize: signed(19 downto 0);
  signal c_15_i1_resize: signed(19 downto 0);
  signal c_15_i0_shift: signed(19 downto 0);
  signal c_15_i1_shift: signed(19 downto 0);
  signal c_15_arith: signed(19 downto 0);
  signal c_15_oshift: signed(19 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_5_0_False_resize: signed(23 downto 0);
  signal c_16_5_0_False_shift: signed(23 downto 0);
  signal c_16_1_0_False_resize: signed(23 downto 0);
  signal c_16_1_0_False_shift: signed(23 downto 0);
  signal c_16_15_4_False_resize: signed(23 downto 0);
  signal c_16_15_4_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_15_1_False_resize: signed(21 downto 0);
  signal c_17_15_1_False_shift: signed(21 downto 0);
  signal c_17_15_3_False_resize: signed(21 downto 0);
  signal c_17_15_3_False_shift: signed(21 downto 0);
  signal c_17_5_0_False_resize: signed(21 downto 0);
  signal c_17_5_0_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(22 downto 0);
  signal c_19_5_4_False_resize: signed(22 downto 0);
  signal c_19_5_4_False_shift: signed(22 downto 0);
  signal c_19_15_0_False_resize: signed(22 downto 0);
  signal c_19_15_0_False_shift: signed(22 downto 0);
  signal c_19_15_1_False_resize: signed(22 downto 0);
  signal c_19_15_1_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(21 downto 0);
  signal c_21_1_4_False_resize: signed(21 downto 0);
  signal c_21_1_4_False_shift: signed(21 downto 0);
  signal c_21_15_0_False_resize: signed(21 downto 0);
  signal c_21_15_0_False_shift: signed(21 downto 0);
  signal c_21_1_0_False_resize: signed(21 downto 0);
  signal c_21_1_0_False_shift: signed(21 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_22_1_3_False_resize: signed(20 downto 0);
  signal c_22_1_3_False_shift: signed(20 downto 0);
  signal c_22_5_0_False_resize: signed(20 downto 0);
  signal c_22_5_0_False_shift: signed(20 downto 0);
  signal c_22_15_2_False_resize: signed(20 downto 0);
  signal c_22_15_2_False_shift: signed(20 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_23_i0_resize: signed(21 downto 0);
  signal c_23_i1_resize: signed(21 downto 0);
  signal c_23_i0_shift: signed(21 downto 0);
  signal c_23_i1_shift: signed(21 downto 0);
  signal c_23_arith: signed(21 downto 0);
  signal c_23_oshift: signed(21 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(21 downto 0);
  signal c_24_1_1_False_resize: signed(21 downto 0);
  signal c_24_1_1_False_shift: signed(21 downto 0);
  signal c_24_5_0_False_resize: signed(21 downto 0);
  signal c_24_5_0_False_shift: signed(21 downto 0);
  signal c_24_1_4_False_resize: signed(21 downto 0);
  signal c_24_1_4_False_shift: signed(21 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_i0_resize: signed(22 downto 0);
  signal c_25_i1_resize: signed(22 downto 0);
  signal c_25_i0_shift: signed(22 downto 0);
  signal c_25_i1_shift: signed(22 downto 0);
  signal c_25_arith: signed(22 downto 0);
  signal c_25_oshift: signed(22 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(21 downto 0);
  signal c_26_1_3_False_resize: signed(21 downto 0);
  signal c_26_1_3_False_shift: signed(21 downto 0);
  signal c_26_1_0_False_resize: signed(21 downto 0);
  signal c_26_1_0_False_shift: signed(21 downto 0);
  signal c_26_5_4_False_resize: signed(21 downto 0);
  signal c_26_5_4_False_shift: signed(21 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_28: signed(19 downto 0);
  signal c_28_5_0_False_resize: signed(19 downto 0);
  signal c_28_5_0_False_shift: signed(19 downto 0);
  signal c_28_5_1_False_resize: signed(19 downto 0);
  signal c_28_5_1_False_shift: signed(19 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(19 downto 0);
  signal c_29_5_2_False_resize: signed(19 downto 0);
  signal c_29_5_2_False_shift: signed(19 downto 0);
  signal c_29_1_0_False_resize: signed(19 downto 0);
  signal c_29_1_0_False_shift: signed(19 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(22 downto 0);
  signal c_31_i0_resize: signed(22 downto 0);
  signal c_31_i1_resize: signed(22 downto 0);
  signal c_31_i0_shift: signed(22 downto 0);
  signal c_31_i1_shift: signed(22 downto 0);
  signal c_31_arith: signed(22 downto 0);
  signal c_31_oshift: signed(22 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(22 downto 0);
  signal c_32_14_0_False_resize: signed(22 downto 0);
  signal c_32_14_0_False_shift: signed(22 downto 0);
  signal c_32_20_3_False_resize: signed(22 downto 0);
  signal c_32_20_3_False_shift: signed(22 downto 0);
  signal c_32_11_0_False_resize: signed(22 downto 0);
  signal c_32_11_0_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_33_resize: signed(22 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_27_0_False_resize: signed(23 downto 0);
  signal c_34_27_0_False_shift: signed(23 downto 0);
  signal c_34_20_0_False_resize: signed(23 downto 0);
  signal c_34_20_0_False_shift: signed(23 downto 0);
  signal c_34_14_0_False_resize: signed(23 downto 0);
  signal c_34_14_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_resize: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_11_0_False_resize: signed(23 downto 0);
  signal c_36_11_0_False_shift: signed(23 downto 0);
  signal c_36_25_4_False_resize: signed(23 downto 0);
  signal c_36_25_4_False_shift: signed(23 downto 0);
  signal c_36_18_0_False_resize: signed(23 downto 0);
  signal c_36_18_0_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_11_0_False_resize: signed(23 downto 0);
  signal c_38_11_0_False_shift: signed(23 downto 0);
  signal c_38_14_3_False_resize: signed(23 downto 0);
  signal c_38_14_3_False_shift: signed(23 downto 0);
  signal c_38_25_1_False_resize: signed(23 downto 0);
  signal c_38_25_1_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_40_4_0_False_resize: signed(21 downto 0);
  signal c_40_4_0_False_shift: signed(21 downto 0);
  signal c_40_25_0_False_resize: signed(21 downto 0);
  signal c_40_25_0_False_shift: signed(21 downto 0);
  signal c_40_23_0_False_resize: signed(21 downto 0);
  signal c_40_23_0_False_shift: signed(21 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_resize: signed(22 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_30_0_False_resize: signed(23 downto 0);
  signal c_42_30_0_False_shift: signed(23 downto 0);
  signal c_42_27_0_False_resize: signed(23 downto 0);
  signal c_42_27_0_False_shift: signed(23 downto 0);
  signal c_42_27_1_False_resize: signed(23 downto 0);
  signal c_42_27_1_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_44_4_0_False_resize: signed(22 downto 0);
  signal c_44_4_0_False_shift: signed(22 downto 0);
  signal c_44_18_0_False_resize: signed(22 downto 0);
  signal c_44_18_0_False_shift: signed(22 downto 0);
  signal c_44_23_0_False_resize: signed(22 downto 0);
  signal c_44_23_0_False_shift: signed(22 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_45_resize: signed(22 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_4_0_False_resize: signed(23 downto 0);
  signal c_46_4_0_False_shift: signed(23 downto 0);
  signal c_46_30_0_False_resize: signed(23 downto 0);
  signal c_46_30_0_False_shift: signed(23 downto 0);
  signal c_46_30_2_False_resize: signed(23 downto 0);
  signal c_46_30_2_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_23_0_False_resize: signed(23 downto 0);
  signal c_48_23_0_False_shift: signed(23 downto 0);
  signal c_48_20_0_False_resize: signed(23 downto 0);
  signal c_48_20_0_False_shift: signed(23 downto 0);
  signal c_48_18_0_False_resize: signed(23 downto 0);
  signal c_48_18_0_False_shift: signed(23 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_resize: signed(23 downto 0);
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
  -- output node 9 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_50);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [3], [1]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[48], [24], [1]]
  c_2_1_3_False_resize <= resize(c_1, 22);
  c_2_1_3_False_shift <= shift_left(c_2_1_3_False_resize, 3);
  c_2_1_0_False_resize <= resize(c_1, 22);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  c_2_1_4_False_resize <= resize(c_1, 22);
  c_2_1_4_False_shift <= shift_left(c_2_1_4_False_resize, 4);
  with config_select_2 select c_2_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_1_3_False_shift;
        when "01" => c_2 <= c_2_1_0_False_shift;
        when others => c_2 <= c_2_1_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[3], [3], [32]]
  c_3_1_5_False_resize <= resize(c_1, 21);
  c_3_1_5_False_shift <= shift_left(c_3_1_5_False_resize, 5);
  c_3_1_0_False_resize <= resize(c_1, 21);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_5_False_shift;
        when others => c_3 <= c_3_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 4 and associated fundamentals [[45], [21], [-31]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
      w_o => 22,
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
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 5 and associated fundamentals [[5], [5], [3]]
  with config_select_1 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
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
      sub_i => c_5_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[1], [2], [1]]
  c_6_0_0_False_resize <= resize(c_0, 17);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_1_False_resize <= resize(c_0, 17);
  c_6_0_1_False_shift <= shift_left(c_6_0_1_False_resize, 1);
  with config_select_1 select c_6_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_0_0_False_shift;
        when others => c_6 <= c_6_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[2], [1], [1]]
  c_7_0_0_False_resize <= resize(c_0, 17);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_1_False_resize <= resize(c_0, 17);
  c_7_0_1_False_shift <= shift_left(c_7_0_1_False_resize, 1);
  with config_select_1 select c_7_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_0_False_shift;
        when others => c_7 <= c_7_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[-7], [-2], [5]]
  with config_select_2 select c_8_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 17,
      w_o => 19,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[24], [5], [1]]
  c_9_1_3_False_resize <= resize(c_1, 21);
  c_9_1_3_False_shift <= shift_left(c_9_1_3_False_resize, 3);
  c_9_5_0_False_resize <= resize(c_5, 21);
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  c_9_1_0_False_resize <= resize(c_1, 21);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_1_3_False_shift;
        when "01" => c_9 <= c_9_5_0_False_shift;
        when others => c_9 <= c_9_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[5], [80], [16]]
  c_10_1_4_False_resize <= resize(c_1, 23);
  c_10_1_4_False_shift <= shift_left(c_10_1_4_False_resize, 4);
  c_10_5_0_False_resize <= resize(c_5, 23);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  c_10_5_4_False_resize <= resize(c_5, 23);
  c_10_5_4_False_shift <= shift_left(c_10_5_4_False_resize, 4);
  with config_select_2 select c_10_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_1_4_False_shift;
        when "01" => c_10 <= c_10_5_0_False_shift;
        when others => c_10 <= c_10_5_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 11 and associated fundamentals [[29], [85], [-15]]
  with config_select_3 select c_11_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[3], [6], [1]]
  c_12_1_0_False_resize <= resize(c_1, 19);
  c_12_1_0_False_shift <= shift_left(c_12_1_0_False_resize, 0);
  c_12_1_1_False_resize <= resize(c_1, 19);
  c_12_1_1_False_shift <= shift_left(c_12_1_1_False_resize, 1);
  with config_select_2 select c_12_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_1_0_False_shift;
        when others => c_12 <= c_12_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[5], [24], [6]]
  c_13_1_3_False_resize <= resize(c_1, 21);
  c_13_1_3_False_shift <= shift_left(c_13_1_3_False_resize, 3);
  c_13_5_1_False_resize <= resize(c_5, 21);
  c_13_5_1_False_shift <= shift_left(c_13_5_1_False_resize, 1);
  c_13_5_0_False_resize <= resize(c_5, 21);
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  with config_select_2 select c_13_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_1_3_False_shift;
        when "01" => c_13 <= c_13_5_1_False_shift;
        when others => c_13 <= c_13_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 14 and associated fundamentals [[11], [-12], [8]]
  with config_select_3 select c_14_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 20,
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
      c_14 <= c_14_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 15 and associated fundamentals [[9], [9], [-7]]
  with config_select_1 select c_15_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_15_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[144], [5], [1]]
  c_16_5_0_False_resize <= resize(c_5, 24);
  c_16_5_0_False_shift <= shift_left(c_16_5_0_False_resize, 0);
  c_16_1_0_False_resize <= resize(c_1, 24);
  c_16_1_0_False_shift <= shift_left(c_16_1_0_False_resize, 0);
  c_16_15_4_False_resize <= resize(c_15, 24);
  c_16_15_4_False_shift <= shift_left(c_16_15_4_False_resize, 4);
  with config_select_2 select c_16_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_5_0_False_shift;
        when "01" => c_16 <= c_16_1_0_False_shift;
        when others => c_16 <= c_16_15_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[5], [18], [-56]]
  c_17_15_1_False_resize <= resize(c_15, 22);
  c_17_15_1_False_shift <= shift_left(c_17_15_1_False_resize, 1);
  c_17_15_3_False_resize <= resize(c_15, 22);
  c_17_15_3_False_shift <= shift_left(c_17_15_3_False_resize, 3);
  c_17_5_0_False_resize <= resize(c_5, 22);
  c_17_5_0_False_shift <= shift_left(c_17_5_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_15_1_False_shift;
        when "01" => c_17 <= c_17_15_3_False_shift;
        when others => c_17 <= c_17_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 18 and associated fundamentals [[154], [-31], [113]]
  with config_select_3 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 19 and associated fundamentals [[9], [80], [-14]]
  c_19_5_4_False_resize <= resize(c_5, 23);
  c_19_5_4_False_shift <= shift_left(c_19_5_4_False_resize, 4);
  c_19_15_0_False_resize <= resize(c_15, 23);
  c_19_15_0_False_shift <= shift_left(c_19_15_0_False_resize, 0);
  c_19_15_1_False_resize <= resize(c_15, 23);
  c_19_15_1_False_shift <= shift_left(c_19_15_1_False_resize, 1);
  with config_select_2 select c_19_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_5_4_False_shift;
        when "01" => c_19 <= c_19_15_0_False_shift;
        when others => c_19 <= c_19_15_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 20 and associated fundamentals [[-215], [16], [174]]
  with config_select_3 select c_20_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 5,
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
      x_i => c_8,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 21 and associated fundamentals [[9], [48], [1]]
  c_21_1_4_False_resize <= resize(c_1, 22);
  c_21_1_4_False_shift <= shift_left(c_21_1_4_False_resize, 4);
  c_21_15_0_False_resize <= resize(c_15, 22);
  c_21_15_0_False_shift <= shift_left(c_21_15_0_False_resize, 0);
  c_21_1_0_False_resize <= resize(c_1, 22);
  c_21_1_0_False_shift <= shift_left(c_21_1_0_False_resize, 0);
  with config_select_2 select c_21_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_1_4_False_shift;
        when "01" => c_21 <= c_21_15_0_False_shift;
        when others => c_21 <= c_21_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 22 and associated fundamentals [[24], [5], [-28]]
  c_22_1_3_False_resize <= resize(c_1, 21);
  c_22_1_3_False_shift <= shift_left(c_22_1_3_False_resize, 3);
  c_22_5_0_False_resize <= resize(c_5, 21);
  c_22_5_0_False_shift <= shift_left(c_22_5_0_False_resize, 0);
  c_22_15_2_False_resize <= resize(c_15, 21);
  c_22_15_2_False_shift <= shift_left(c_22_15_2_False_resize, 2);
  with config_select_2 select c_22_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_1_3_False_shift;
        when "01" => c_22 <= c_22_5_0_False_shift;
        when others => c_22 <= c_22_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 23 and associated fundamentals [[-39], [58], [-55]]
  with config_select_3 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
      w_o => 22,
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
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 24 and associated fundamentals [[48], [6], [3]]
  c_24_1_1_False_resize <= resize(c_1, 22);
  c_24_1_1_False_shift <= shift_left(c_24_1_1_False_resize, 1);
  c_24_5_0_False_resize <= resize(c_5, 22);
  c_24_5_0_False_shift <= shift_left(c_24_5_0_False_resize, 0);
  c_24_1_4_False_resize <= resize(c_1, 22);
  c_24_1_4_False_shift <= shift_left(c_24_1_4_False_resize, 4);
  with config_select_2 select c_24_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_1_1_False_shift;
        when "01" => c_24 <= c_24_5_0_False_shift;
        when others => c_24 <= c_24_1_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 25 and associated fundamentals [[-103], [-14], [11]]
  with config_select_3 select c_25_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_25_sub_sel,
      x_i => c_8,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 26 and associated fundamentals [[3], [24], [48]]
  c_26_1_3_False_resize <= resize(c_1, 22);
  c_26_1_3_False_shift <= shift_left(c_26_1_3_False_resize, 3);
  c_26_1_0_False_resize <= resize(c_1, 22);
  c_26_1_0_False_shift <= shift_left(c_26_1_0_False_resize, 0);
  c_26_5_4_False_resize <= resize(c_5, 22);
  c_26_5_4_False_shift <= shift_left(c_26_5_4_False_resize, 4);
  with config_select_2 select c_26_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_1_3_False_shift;
        when "01" => c_26 <= c_26_1_0_False_shift;
        when others => c_26 <= c_26_5_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 27 and associated fundamentals [[19], [98], [187]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 24,
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
      x_i => c_26,
      y_i => c_8,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 28 and associated fundamentals [[10], [5], [3]]
  c_28_5_0_False_resize <= resize(c_5, 20);
  c_28_5_0_False_shift <= shift_left(c_28_5_0_False_resize, 0);
  c_28_5_1_False_resize <= resize(c_5, 20);
  c_28_5_1_False_shift <= shift_left(c_28_5_1_False_resize, 1);
  with config_select_2 select c_28_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_5_0_False_shift;
        when others => c_28 <= c_28_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 29 and associated fundamentals [[3], [3], [12]]
  c_29_5_2_False_resize <= resize(c_5, 20);
  c_29_5_2_False_shift <= shift_left(c_29_5_2_False_resize, 2);
  c_29_1_0_False_resize <= resize(c_1, 20);
  c_29_1_0_False_shift <= shift_left(c_29_1_0_False_resize, 0);
  with config_select_2 select c_29_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_5_2_False_shift;
        when others => c_29 <= c_29_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 30 and associated fundamentals [[157], [77], [60]]
  with config_select_3 select c_30_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
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
      sub_i => c_30_sub_sel,
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 31 and associated fundamentals [[-125], [-38], [-5]]
  with config_select_4 select c_31_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_31_sub_sel,
      x_i => c_25,
      y_i => c_14,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 32 and associated fundamentals [[29], [128], [8]]
  c_32_14_0_False_resize <= resize(c_14, 23);
  c_32_14_0_False_shift <= shift_left(c_32_14_0_False_resize, 0);
  c_32_20_3_False_resize <= c_20(22 downto 0);
  c_32_20_3_False_shift <= shift_left(c_32_20_3_False_resize, 3);
  c_32_11_0_False_resize <= c_11;
  c_32_11_0_False_shift <= shift_left(c_32_11_0_False_resize, 0);
  with config_select_4 select c_32_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_14_0_False_shift;
        when "01" => c_32 <= c_32_20_3_False_shift;
        when others => c_32 <= c_32_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 33 and associated fundamentals [[29], [128], [8]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 4 with id 34 and associated fundamentals [[11], [98], [174]]
  c_34_27_0_False_resize <= c_27;
  c_34_27_0_False_shift <= shift_left(c_34_27_0_False_resize, 0);
  c_34_20_0_False_resize <= c_20;
  c_34_20_0_False_shift <= shift_left(c_34_20_0_False_resize, 0);
  c_34_14_0_False_resize <= resize(c_14, 24);
  c_34_14_0_False_shift <= shift_left(c_34_14_0_False_resize, 0);
  with config_select_4 select c_34_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_27_0_False_shift;
        when "01" => c_34 <= c_34_20_0_False_shift;
        when others => c_34 <= c_34_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 35 and associated fundamentals [[11], [98], [174]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'mux' in stage 4 with id 36 and associated fundamentals [[154], [85], [176]]
  c_36_11_0_False_resize <= resize(c_11, 24);
  c_36_11_0_False_shift <= shift_left(c_36_11_0_False_resize, 0);
  c_36_25_4_False_resize <= resize(c_25, 24);
  c_36_25_4_False_shift <= shift_left(c_36_25_4_False_resize, 4);
  c_36_18_0_False_resize <= c_18;
  c_36_18_0_False_shift <= shift_left(c_36_18_0_False_resize, 0);
  with config_select_4 select c_36_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_11_0_False_shift;
        when "01" => c_36 <= c_36_25_4_False_shift;
        when others => c_36 <= c_36_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 37 and associated fundamentals [[154], [85], [176]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 4 with id 38 and associated fundamentals [[-206], [-96], [-15]]
  c_38_11_0_False_resize <= resize(c_11, 24);
  c_38_11_0_False_shift <= shift_left(c_38_11_0_False_resize, 0);
  c_38_14_3_False_resize <= resize(c_14, 24);
  c_38_14_3_False_shift <= shift_left(c_38_14_3_False_resize, 3);
  c_38_25_1_False_resize <= resize(c_25, 24);
  c_38_25_1_False_shift <= shift_left(c_38_25_1_False_resize, 1);
  with config_select_4 select c_38_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_11_0_False_shift;
        when "01" => c_38 <= c_38_14_3_False_shift;
        when others => c_38 <= c_38_25_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[206], [96], [15]]
  c_39_resize <= c_38;
  c_39 <= -shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[-39], [-14], [-31]]
  c_40_4_0_False_resize <= c_4;
  c_40_4_0_False_shift <= shift_left(c_40_4_0_False_resize, 0);
  c_40_25_0_False_resize <= c_25(21 downto 0);
  c_40_25_0_False_shift <= shift_left(c_40_25_0_False_resize, 0);
  c_40_23_0_False_resize <= c_23;
  c_40_23_0_False_shift <= shift_left(c_40_23_0_False_resize, 0);
  with config_select_4 select c_40_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_4_0_False_shift;
        when "01" => c_40 <= c_40_25_0_False_shift;
        when others => c_40 <= c_40_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[78], [28], [62]]
  c_41_resize <= resize(c_40, 23);
  c_41 <= -shift_left(c_41_resize, 1);
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[38], [77], [187]]
  c_42_30_0_False_resize <= c_30;
  c_42_30_0_False_shift <= shift_left(c_42_30_0_False_resize, 0);
  c_42_27_0_False_resize <= c_27;
  c_42_27_0_False_shift <= shift_left(c_42_27_0_False_resize, 0);
  c_42_27_1_False_resize <= c_27;
  c_42_27_1_False_shift <= shift_left(c_42_27_1_False_resize, 1);
  with config_select_4 select c_42_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_30_0_False_shift;
        when "01" => c_42 <= c_42_27_0_False_shift;
        when others => c_42 <= c_42_27_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[38], [77], [187]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[45], [58], [113]]
  c_44_4_0_False_resize <= resize(c_4, 23);
  c_44_4_0_False_shift <= shift_left(c_44_4_0_False_resize, 0);
  c_44_18_0_False_resize <= c_18(22 downto 0);
  c_44_18_0_False_shift <= shift_left(c_44_18_0_False_resize, 0);
  c_44_23_0_False_resize <= resize(c_23, 23);
  c_44_23_0_False_shift <= shift_left(c_44_23_0_False_resize, 0);
  with config_select_4 select c_44_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_4_0_False_shift;
        when "01" => c_44 <= c_44_18_0_False_shift;
        when others => c_44 <= c_44_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[45], [58], [113]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'mux' in stage 4 with id 46 and associated fundamentals [[157], [21], [240]]
  c_46_4_0_False_resize <= resize(c_4, 24);
  c_46_4_0_False_shift <= shift_left(c_46_4_0_False_resize, 0);
  c_46_30_0_False_resize <= c_30;
  c_46_30_0_False_shift <= shift_left(c_46_30_0_False_resize, 0);
  c_46_30_2_False_resize <= c_30;
  c_46_30_2_False_shift <= shift_left(c_46_30_2_False_resize, 2);
  with config_select_4 select c_46_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_4_0_False_shift;
        when "01" => c_46 <= c_46_30_0_False_shift;
        when others => c_46 <= c_46_30_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[157], [21], [240]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 4 with id 48 and associated fundamentals [[-215], [-31], [-55]]
  c_48_23_0_False_resize <= resize(c_23, 24);
  c_48_23_0_False_shift <= shift_left(c_48_23_0_False_resize, 0);
  c_48_20_0_False_resize <= c_20;
  c_48_20_0_False_shift <= shift_left(c_48_20_0_False_resize, 0);
  c_48_18_0_False_resize <= c_18;
  c_48_18_0_False_shift <= shift_left(c_48_18_0_False_resize, 0);
  with config_select_4 select c_48_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_23_0_False_shift;
        when "01" => c_48 <= c_48_20_0_False_shift;
        when others => c_48 <= c_48_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 49 and associated fundamentals [[215], [31], [55]]
  c_49_resize <= c_48;
  c_49 <= -shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 4 with id 50 and associated fundamentals [[250], [76], [10]]
  c_50_resize <= resize(c_31, 24);
  c_50 <= -shift_left(c_50_resize, 1);
end architecture;

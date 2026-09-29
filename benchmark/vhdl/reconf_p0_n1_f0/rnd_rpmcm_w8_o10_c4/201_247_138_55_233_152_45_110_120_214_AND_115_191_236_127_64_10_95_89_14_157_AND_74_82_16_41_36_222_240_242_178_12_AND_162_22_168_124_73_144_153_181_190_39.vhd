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
    y_3: out std_logic_vector(22 downto 0);
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
  signal config_select_7: std_logic_vector(1 downto 0);
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal config_select_12: std_logic_vector(1 downto 0);
  signal config_select_13: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_1_False_resize: signed(17 downto 0);
  signal c_1_0_1_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(16 downto 0);
  signal c_3_0_0_False_resize: signed(16 downto 0);
  signal c_3_0_0_False_shift: signed(16 downto 0);
  signal c_3_0_1_False_resize: signed(16 downto 0);
  signal c_3_0_1_False_shift: signed(16 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_i0_resize: signed(19 downto 0);
  signal c_4_i1_resize: signed(19 downto 0);
  signal c_4_i0_shift: signed(19 downto 0);
  signal c_4_i1_shift: signed(19 downto 0);
  signal c_4_arith: signed(19 downto 0);
  signal c_4_oshift: signed(19 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(21 downto 0);
  signal c_5_4_3_False_resize: signed(21 downto 0);
  signal c_5_4_3_False_shift: signed(21 downto 0);
  signal c_5_2_0_False_resize: signed(21 downto 0);
  signal c_5_2_0_False_shift: signed(21 downto 0);
  signal c_5_4_1_False_resize: signed(21 downto 0);
  signal c_5_4_1_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_0_0_False_resize: signed(18 downto 0);
  signal c_6_0_0_False_shift: signed(18 downto 0);
  signal c_6_0_3_False_resize: signed(18 downto 0);
  signal c_6_0_3_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(20 downto 0);
  signal c_8_0_0_False_resize: signed(20 downto 0);
  signal c_8_0_0_False_shift: signed(20 downto 0);
  signal c_8_2_0_False_resize: signed(20 downto 0);
  signal c_8_2_0_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_4_2_False_resize: signed(20 downto 0);
  signal c_9_4_2_False_shift: signed(20 downto 0);
  signal c_9_0_4_False_resize: signed(20 downto 0);
  signal c_9_0_4_False_shift: signed(20 downto 0);
  signal c_9_2_0_False_resize: signed(20 downto 0);
  signal c_9_2_0_False_shift: signed(20 downto 0);
  signal c_9_4_3_False_resize: signed(20 downto 0);
  signal c_9_4_3_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(21 downto 0);
  signal c_11_4_1_False_resize: signed(21 downto 0);
  signal c_11_4_1_False_shift: signed(21 downto 0);
  signal c_11_0_6_False_resize: signed(21 downto 0);
  signal c_11_0_6_False_shift: signed(21 downto 0);
  signal c_11_2_0_False_resize: signed(21 downto 0);
  signal c_11_2_0_False_shift: signed(21 downto 0);
  signal c_11_0_5_False_resize: signed(21 downto 0);
  signal c_11_0_5_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_0_2_False_resize: signed(22 downto 0);
  signal c_12_0_2_False_shift: signed(22 downto 0);
  signal c_12_7_0_False_resize: signed(22 downto 0);
  signal c_12_7_0_False_shift: signed(22 downto 0);
  signal c_12_10_0_False_resize: signed(22 downto 0);
  signal c_12_10_0_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(20 downto 0);
  signal c_14_0_0_False_resize: signed(20 downto 0);
  signal c_14_0_0_False_shift: signed(20 downto 0);
  signal c_14_2_1_False_resize: signed(20 downto 0);
  signal c_14_2_1_False_shift: signed(20 downto 0);
  signal c_14_0_3_False_resize: signed(20 downto 0);
  signal c_14_0_3_False_shift: signed(20 downto 0);
  signal c_14_4_2_False_resize: signed(20 downto 0);
  signal c_14_4_2_False_shift: signed(20 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_15_4_0_False_resize: signed(19 downto 0);
  signal c_15_4_0_False_shift: signed(19 downto 0);
  signal c_15_2_0_False_resize: signed(19 downto 0);
  signal c_15_2_0_False_shift: signed(19 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(21 downto 0);
  signal c_17_4_2_False_resize: signed(21 downto 0);
  signal c_17_4_2_False_shift: signed(21 downto 0);
  signal c_17_2_1_False_resize: signed(21 downto 0);
  signal c_17_2_1_False_shift: signed(21 downto 0);
  signal c_17_7_0_False_resize: signed(21 downto 0);
  signal c_17_7_0_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_18_13_0_False_resize: signed(21 downto 0);
  signal c_18_13_0_False_shift: signed(21 downto 0);
  signal c_18_16_1_False_resize: signed(21 downto 0);
  signal c_18_16_1_False_shift: signed(21 downto 0);
  signal c_18_4_1_False_resize: signed(21 downto 0);
  signal c_18_4_1_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(25 downto 0);
  signal c_20_10_0_False_resize: signed(25 downto 0);
  signal c_20_10_0_False_shift: signed(25 downto 0);
  signal c_20_7_4_False_resize: signed(25 downto 0);
  signal c_20_7_4_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(26 downto 0);
  signal c_21_4_0_False_resize: signed(26 downto 0);
  signal c_21_4_0_False_shift: signed(26 downto 0);
  signal c_21_13_4_False_resize: signed(26 downto 0);
  signal c_21_13_4_False_shift: signed(26 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(23 downto 0);
  signal c_23_19_0_False_resize: signed(23 downto 0);
  signal c_23_19_0_False_shift: signed(23 downto 0);
  signal c_23_13_2_False_resize: signed(23 downto 0);
  signal c_23_13_2_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_4_0_False_resize: signed(22 downto 0);
  signal c_24_4_0_False_shift: signed(22 downto 0);
  signal c_24_4_2_False_resize: signed(22 downto 0);
  signal c_24_4_2_False_shift: signed(22 downto 0);
  signal c_24_7_1_False_resize: signed(22 downto 0);
  signal c_24_7_1_False_shift: signed(22 downto 0);
  signal c_24_10_0_False_resize: signed(22 downto 0);
  signal c_24_10_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_i0_resize: signed(22 downto 0);
  signal c_25_i1_resize: signed(22 downto 0);
  signal c_25_i0_shift: signed(22 downto 0);
  signal c_25_i1_shift: signed(22 downto 0);
  signal c_25_arith: signed(22 downto 0);
  signal c_25_oshift: signed(22 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(24 downto 0);
  signal c_26_4_6_False_resize: signed(24 downto 0);
  signal c_26_4_6_False_shift: signed(24 downto 0);
  signal c_26_4_0_False_resize: signed(24 downto 0);
  signal c_26_4_0_False_shift: signed(24 downto 0);
  signal c_26_19_1_False_resize: signed(24 downto 0);
  signal c_26_19_1_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_0_0_False_resize: signed(23 downto 0);
  signal c_27_0_0_False_shift: signed(23 downto 0);
  signal c_27_19_0_False_resize: signed(23 downto 0);
  signal c_27_19_0_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_i0_resize: signed(23 downto 0);
  signal c_28_i1_resize: signed(23 downto 0);
  signal c_28_i0_shift: signed(23 downto 0);
  signal c_28_i1_shift: signed(23 downto 0);
  signal c_28_arith: signed(23 downto 0);
  signal c_28_oshift: signed(23 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(23 downto 0);
  signal c_29_resize: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_7_1_False_resize: signed(23 downto 0);
  signal c_30_7_1_False_shift: signed(23 downto 0);
  signal c_30_28_0_False_resize: signed(23 downto 0);
  signal c_30_28_0_False_shift: signed(23 downto 0);
  signal c_30_13_0_False_resize: signed(23 downto 0);
  signal c_30_13_0_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_resize: signed(23 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_0_3_False_resize: signed(22 downto 0);
  signal c_32_0_3_False_shift: signed(22 downto 0);
  signal c_32_25_0_False_resize: signed(22 downto 0);
  signal c_32_25_0_False_shift: signed(22 downto 0);
  signal c_32_13_1_False_resize: signed(22 downto 0);
  signal c_32_13_1_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_resize: signed(23 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_7_0_False_resize: signed(22 downto 0);
  signal c_34_7_0_False_shift: signed(22 downto 0);
  signal c_34_25_0_False_resize: signed(22 downto 0);
  signal c_34_25_0_False_shift: signed(22 downto 0);
  signal c_34_2_2_False_resize: signed(22 downto 0);
  signal c_34_2_2_False_shift: signed(22 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_resize: signed(22 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_16_0_False_resize: signed(23 downto 0);
  signal c_36_16_0_False_shift: signed(23 downto 0);
  signal c_36_2_2_False_resize: signed(23 downto 0);
  signal c_36_2_2_False_shift: signed(23 downto 0);
  signal c_36_0_6_False_resize: signed(23 downto 0);
  signal c_36_0_6_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_13_3_False_resize: signed(23 downto 0);
  signal c_38_13_3_False_shift: signed(23 downto 0);
  signal c_38_7_1_False_resize: signed(23 downto 0);
  signal c_38_7_1_False_shift: signed(23 downto 0);
  signal c_38_4_4_False_resize: signed(23 downto 0);
  signal c_38_4_4_False_shift: signed(23 downto 0);
  signal c_38_28_0_False_resize: signed(23 downto 0);
  signal c_38_28_0_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_28_0_False_resize: signed(23 downto 0);
  signal c_40_28_0_False_shift: signed(23 downto 0);
  signal c_40_25_4_False_resize: signed(23 downto 0);
  signal c_40_25_4_False_shift: signed(23 downto 0);
  signal c_40_10_0_False_resize: signed(23 downto 0);
  signal c_40_10_0_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_7_1_False_resize: signed(23 downto 0);
  signal c_42_7_1_False_shift: signed(23 downto 0);
  signal c_42_16_0_False_resize: signed(23 downto 0);
  signal c_42_16_0_False_shift: signed(23 downto 0);
  signal c_42_13_1_False_resize: signed(23 downto 0);
  signal c_42_13_1_False_shift: signed(23 downto 0);
  signal c_42_22_0_False_resize: signed(23 downto 0);
  signal c_42_22_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_44_2_2_False_resize: signed(22 downto 0);
  signal c_44_2_2_False_shift: signed(22 downto 0);
  signal c_44_10_0_False_resize: signed(22 downto 0);
  signal c_44_10_0_False_shift: signed(22 downto 0);
  signal c_44_2_0_False_resize: signed(22 downto 0);
  signal c_44_2_0_False_shift: signed(22 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_22_0_False_resize: signed(23 downto 0);
  signal c_46_22_0_False_shift: signed(23 downto 0);
  signal c_46_7_0_False_resize: signed(23 downto 0);
  signal c_46_7_0_False_shift: signed(23 downto 0);
  signal c_46_16_2_False_resize: signed(23 downto 0);
  signal c_46_16_2_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
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
      config_select_8 <= config_select;
      config_select_9 <= config_select;
      config_select_10 <= config_select;
      config_select_11 <= config_select;
      config_select_12 <= config_select;
      config_select_13 <= config_select;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 1 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 2 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 3 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 4 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 5 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 6 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 7 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 8 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 9 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_47);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 18);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "00",
    c_1_0_1_False_shift when "01",
    c_1_0_2_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[15], [7], [9], [31]]
  with config_select_2 select c_2_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(20 downto 0);
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[2], [1], [1], [2]]
  c_3_0_0_False_resize <= resize(c_0, 17);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_1_False_resize <= resize(c_0, 17);
  c_3_0_1_False_shift <= shift_left(c_3_0_1_False_resize, 1);
  with config_select_1 select c_3_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_0_False_shift when "0",
    c_3_0_1_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[7], [3], [5], [9]]
  with config_select_2 select c_4_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
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
      sub_i => c_4_sub_sel,
      x_i => c_3,
      y_i => c_0,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(19 downto 0);
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[56], [6], [40], [31]]
  c_5_4_3_False_resize <= resize(c_4, 22);
  c_5_4_3_False_shift <= shift_left(c_5_4_3_False_resize, 3);
  c_5_2_0_False_resize <= resize(c_2, 22);
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  c_5_4_1_False_resize <= resize(c_4, 22);
  c_5_4_1_False_shift <= shift_left(c_5_4_1_False_resize, 1);
  with config_select_3 select c_5_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "11",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_4_3_False_shift when "00",
    c_5_2_0_False_shift when "01",
    c_5_4_1_False_shift when others;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[1], [1], [1], [8]]
  c_6_0_0_False_resize <= resize(c_0, 19);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_3_False_resize <= resize(c_0, 19);
  c_6_0_3_False_shift <= shift_left(c_6_0_3_False_resize, 3);
  with config_select_1 select c_6_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_0_0_False_shift when "0",
    c_6_0_3_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[55], [5], [41], [39]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(21 downto 0);
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[15], [1], [9], [31]]
  c_8_0_0_False_resize <= resize(c_0, 21);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_2_0_False_resize <= c_2;
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when "11",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_0_0_False_shift when "0",
    c_8_2_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[15], [24], [20], [16]]
  c_9_4_2_False_resize <= resize(c_4, 21);
  c_9_4_2_False_shift <= shift_left(c_9_4_2_False_resize, 2);
  c_9_0_4_False_resize <= resize(c_0, 21);
  c_9_0_4_False_shift <= shift_left(c_9_0_4_False_resize, 4);
  c_9_2_0_False_resize <= c_2;
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  c_9_4_3_False_resize <= resize(c_4, 21);
  c_9_4_3_False_shift <= shift_left(c_9_4_3_False_resize, 3);
  with config_select_3 select c_9_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  with c_9_sel select c_9 <=
    c_9_4_2_False_shift when "00",
    c_9_0_4_False_shift when "01",
    c_9_2_0_False_shift when "10",
    c_9_4_3_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[-45], [-95], [89], [95]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 23,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  c_10 <= c_10_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[15], [64], [32], [18]]
  c_11_4_1_False_resize <= resize(c_4, 22);
  c_11_4_1_False_shift <= shift_left(c_11_4_1_False_resize, 1);
  c_11_0_6_False_resize <= resize(c_0, 22);
  c_11_0_6_False_shift <= shift_left(c_11_0_6_False_resize, 6);
  c_11_2_0_False_resize <= resize(c_2, 22);
  c_11_2_0_False_shift <= shift_left(c_11_2_0_False_resize, 0);
  c_11_0_5_False_resize <= resize(c_0, 22);
  c_11_0_5_False_shift <= shift_left(c_11_0_5_False_resize, 5);
  with config_select_3 select c_11_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_11_sel select c_11 <=
    c_11_4_1_False_shift when "00",
    c_11_0_6_False_shift when "01",
    c_11_2_0_False_shift when "10",
    c_11_0_5_False_shift when others;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[4], [5], [89], [4]]
  c_12_0_2_False_resize <= resize(c_0, 23);
  c_12_0_2_False_shift <= shift_left(c_12_0_2_False_resize, 2);
  c_12_7_0_False_resize <= resize(c_7, 23);
  c_12_7_0_False_shift <= shift_left(c_12_7_0_False_resize, 0);
  c_12_10_0_False_resize <= c_10;
  c_12_10_0_False_shift <= shift_left(c_12_10_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_0_2_False_shift when "00",
    c_12_7_0_False_shift when "01",
    c_12_10_0_False_shift when others;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[19], [59], [121], [22]]
  with config_select_6 select c_13_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(22 downto 0);
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[30], [12], [1], [8]]
  c_14_0_0_False_resize <= resize(c_0, 21);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_2_1_False_resize <= c_2;
  c_14_2_1_False_shift <= shift_left(c_14_2_1_False_resize, 1);
  c_14_0_3_False_resize <= resize(c_0, 21);
  c_14_0_3_False_shift <= shift_left(c_14_0_3_False_resize, 3);
  c_14_4_2_False_resize <= resize(c_4, 21);
  c_14_4_2_False_shift <= shift_left(c_14_4_2_False_resize, 2);
  with config_select_3 select c_14_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  with c_14_sel select c_14 <=
    c_14_0_0_False_shift when "00",
    c_14_2_1_False_shift when "01",
    c_14_0_3_False_shift when "10",
    c_14_4_2_False_shift when others;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[7], [7], [5], [9]]
  c_15_4_0_False_resize <= c_4;
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_2_0_False_resize <= c_2(19 downto 0);
  c_15_2_0_False_shift <= shift_left(c_15_2_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_4_0_False_shift when "0",
    c_15_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 16 and associated fundamentals [[233], [89], [3], [73]]
  with config_select_4 select c_16_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[55], [14], [20], [36]]
  c_17_4_2_False_resize <= resize(c_4, 22);
  c_17_4_2_False_shift <= shift_left(c_17_4_2_False_resize, 2);
  c_17_2_1_False_resize <= resize(c_2, 22);
  c_17_2_1_False_shift <= shift_left(c_17_2_1_False_resize, 1);
  c_17_7_0_False_resize <= c_7;
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  with config_select_5 select c_17_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_4_2_False_shift when "00",
    c_17_2_1_False_shift when "01",
    c_17_7_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 18 and associated fundamentals [[19], [59], [6], [18]]
  c_18_13_0_False_resize <= c_13(21 downto 0);
  c_18_13_0_False_shift <= shift_left(c_18_13_0_False_resize, 0);
  c_18_16_1_False_resize <= c_16(21 downto 0);
  c_18_16_1_False_shift <= shift_left(c_18_16_1_False_resize, 1);
  c_18_4_1_False_resize <= resize(c_4, 22);
  c_18_4_1_False_shift <= shift_left(c_18_4_1_False_resize, 1);
  with config_select_7 select c_18_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_18_sel select c_18 <=
    c_18_13_0_False_shift when "00",
    c_18_16_1_False_shift when "01",
    c_18_4_1_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 19 and associated fundamentals [[201], [115], [74], [162]]
  with config_select_8 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[-45], [80], [656], [95]]
  c_20_10_0_False_resize <= resize(c_10, 26);
  c_20_10_0_False_shift <= shift_left(c_20_10_0_False_resize, 0);
  c_20_7_4_False_resize <= resize(c_7, 26);
  c_20_7_4_False_shift <= shift_left(c_20_7_4_False_resize, 4);
  with config_select_5 select c_20_sel <= 
    "0" when "11",
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_10_0_False_shift when "0",
    c_20_7_4_False_shift when others;
  -- node of type 'mux' in stage 7 with id 21 and associated fundamentals [[304], [3], [1936], [9]]
  c_21_4_0_False_resize <= resize(c_4, 27);
  c_21_4_0_False_shift <= shift_left(c_21_4_0_False_resize, 0);
  c_21_13_4_False_resize <= resize(c_13, 27);
  c_21_13_4_False_shift <= shift_left(c_21_13_4_False_resize, 4);
  with config_select_7 select c_21_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "10",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_4_0_False_shift when "0",
    c_21_13_4_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 22 and associated fundamentals [[214], [157], [-624], [181]]
  with config_select_8 select c_22_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 27,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(23 downto 0);
  -- node of type 'mux' in stage 9 with id 23 and associated fundamentals [[76], [115], [74], [162]]
  c_23_19_0_False_resize <= c_19;
  c_23_19_0_False_shift <= shift_left(c_23_19_0_False_resize, 0);
  c_23_13_2_False_resize <= resize(c_13, 24);
  c_23_13_2_False_shift <= shift_left(c_23_13_2_False_resize, 2);
  with config_select_9 select c_23_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "01",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_19_0_False_shift when "0",
    c_23_13_2_False_shift when others;
  -- node of type 'mux' in stage 5 with id 24 and associated fundamentals [[7], [12], [89], [78]]
  c_24_4_0_False_resize <= resize(c_4, 23);
  c_24_4_0_False_shift <= shift_left(c_24_4_0_False_resize, 0);
  c_24_4_2_False_resize <= resize(c_4, 23);
  c_24_4_2_False_shift <= shift_left(c_24_4_2_False_resize, 2);
  c_24_7_1_False_resize <= resize(c_7, 23);
  c_24_7_1_False_shift <= shift_left(c_24_7_1_False_resize, 1);
  c_24_10_0_False_resize <= c_10;
  c_24_10_0_False_shift <= shift_left(c_24_10_0_False_resize, 0);
  with config_select_5 select c_24_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_24_sel select c_24 <=
    c_24_4_0_False_shift when "00",
    c_24_4_2_False_shift when "01",
    c_24_7_1_False_shift when "10",
    c_24_10_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 25 and associated fundamentals [[69], [127], [-15], [84]]
  with config_select_10 select c_25_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_25_sub_sel,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(22 downto 0);
  -- node of type 'mux' in stage 9 with id 26 and associated fundamentals [[448], [192], [148], [9]]
  c_26_4_6_False_resize <= resize(c_4, 25);
  c_26_4_6_False_shift <= shift_left(c_26_4_6_False_resize, 6);
  c_26_4_0_False_resize <= resize(c_4, 25);
  c_26_4_0_False_shift <= shift_left(c_26_4_0_False_resize, 0);
  c_26_19_1_False_resize <= resize(c_19, 25);
  c_26_19_1_False_shift <= shift_left(c_26_19_1_False_resize, 1);
  with config_select_9 select c_26_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  with c_26_sel select c_26 <=
    c_26_4_6_False_shift when "00",
    c_26_4_0_False_shift when "01",
    c_26_19_1_False_shift when others;
  -- node of type 'mux' in stage 9 with id 27 and associated fundamentals [[201], [1], [74], [162]]
  c_27_0_0_False_resize <= resize(c_0, 24);
  c_27_0_0_False_shift <= shift_left(c_27_0_0_False_resize, 0);
  c_27_19_0_False_resize <= c_19;
  c_27_19_0_False_shift <= shift_left(c_27_19_0_False_resize, 0);
  with config_select_9 select c_27_sel <= 
    "0" when "01",
    "1" when "11",
    "1" when "10",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_0_0_False_shift when "0",
    c_27_19_0_False_shift when others;
  -- node of type 'add_sub' in stage 10 with id 28 and associated fundamentals [[247], [191], [222], [-153]]
  with config_select_10 select c_28_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
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
      sub_i => c_28_sub_sel,
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  c_28 <= c_28_oshift(23 downto 0);
  -- node of type 'output' in stage 8 with id 29 and associated fundamentals [[201], [115], [74], [162]]
  c_29_resize <= c_19;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'mux' in stage 11 with id 30 and associated fundamentals [[247], [191], [82], [22]]
  c_30_7_1_False_resize <= resize(c_7, 24);
  c_30_7_1_False_shift <= shift_left(c_30_7_1_False_resize, 1);
  c_30_28_0_False_resize <= c_28;
  c_30_28_0_False_shift <= shift_left(c_30_28_0_False_resize, 0);
  c_30_13_0_False_resize <= resize(c_13, 24);
  c_30_13_0_False_shift <= shift_left(c_30_13_0_False_resize, 0);
  with config_select_11 select c_30_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  with c_30_sel select c_30 <=
    c_30_7_1_False_shift when "00",
    c_30_28_0_False_shift when "01",
    c_30_13_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 31 and associated fundamentals [[247], [191], [82], [22]]
  c_31_resize <= c_30;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'mux' in stage 11 with id 32 and associated fundamentals [[69], [118], [8], [84]]
  c_32_0_3_False_resize <= resize(c_0, 23);
  c_32_0_3_False_shift <= shift_left(c_32_0_3_False_resize, 3);
  c_32_25_0_False_resize <= c_25;
  c_32_25_0_False_shift <= shift_left(c_32_25_0_False_resize, 0);
  c_32_13_1_False_resize <= c_13;
  c_32_13_1_False_shift <= shift_left(c_32_13_1_False_resize, 1);
  with config_select_11 select c_32_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "11",
    "10" when others;
  with c_32_sel select c_32 <=
    c_32_0_3_False_shift when "00",
    c_32_25_0_False_shift when "01",
    c_32_13_1_False_shift when others;
  -- node of type 'output' in stage 11 with id 33 and associated fundamentals [[138], [236], [16], [168]]
  c_33_resize <= resize(c_32, 24);
  c_33 <= shift_left(c_33_resize, 1);
  -- node of type 'mux' in stage 11 with id 34 and associated fundamentals [[55], [127], [41], [124]]
  c_34_7_0_False_resize <= resize(c_7, 23);
  c_34_7_0_False_shift <= shift_left(c_34_7_0_False_resize, 0);
  c_34_25_0_False_resize <= c_25;
  c_34_25_0_False_shift <= shift_left(c_34_25_0_False_resize, 0);
  c_34_2_2_False_resize <= resize(c_2, 23);
  c_34_2_2_False_shift <= shift_left(c_34_2_2_False_resize, 2);
  with config_select_11 select c_34_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_34_sel select c_34 <=
    c_34_7_0_False_shift when "00",
    c_34_25_0_False_shift when "01",
    c_34_2_2_False_shift when others;
  -- node of type 'output' in stage 11 with id 35 and associated fundamentals [[55], [127], [41], [124]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'mux' in stage 5 with id 36 and associated fundamentals [[233], [64], [36], [73]]
  c_36_16_0_False_resize <= c_16;
  c_36_16_0_False_shift <= shift_left(c_36_16_0_False_resize, 0);
  c_36_2_2_False_resize <= resize(c_2, 24);
  c_36_2_2_False_shift <= shift_left(c_36_2_2_False_resize, 2);
  c_36_0_6_False_resize <= resize(c_0, 24);
  c_36_0_6_False_shift <= shift_left(c_36_0_6_False_resize, 6);
  with config_select_5 select c_36_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  with c_36_sel select c_36 <=
    c_36_16_0_False_shift when "00",
    c_36_2_2_False_shift when "01",
    c_36_0_6_False_shift when others;
  -- node of type 'output' in stage 5 with id 37 and associated fundamentals [[233], [64], [36], [73]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 11 with id 38 and associated fundamentals [[152], [10], [222], [144]]
  c_38_13_3_False_resize <= resize(c_13, 24);
  c_38_13_3_False_shift <= shift_left(c_38_13_3_False_resize, 3);
  c_38_7_1_False_resize <= resize(c_7, 24);
  c_38_7_1_False_shift <= shift_left(c_38_7_1_False_resize, 1);
  c_38_4_4_False_resize <= resize(c_4, 24);
  c_38_4_4_False_shift <= shift_left(c_38_4_4_False_resize, 4);
  c_38_28_0_False_resize <= c_28;
  c_38_28_0_False_shift <= shift_left(c_38_28_0_False_resize, 0);
  with config_select_11 select c_38_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_38_sel select c_38 <=
    c_38_13_3_False_shift when "00",
    c_38_7_1_False_shift when "01",
    c_38_4_4_False_shift when "10",
    c_38_28_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 39 and associated fundamentals [[152], [10], [222], [144]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 11 with id 40 and associated fundamentals [[-45], [-95], [-240], [-153]]
  c_40_28_0_False_resize <= c_28;
  c_40_28_0_False_shift <= shift_left(c_40_28_0_False_resize, 0);
  c_40_25_4_False_resize <= resize(c_25, 24);
  c_40_25_4_False_shift <= shift_left(c_40_25_4_False_resize, 4);
  c_40_10_0_False_resize <= resize(c_10, 24);
  c_40_10_0_False_shift <= shift_left(c_40_10_0_False_resize, 0);
  with config_select_11 select c_40_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "10" when others;
  with c_40_sel select c_40 <=
    c_40_28_0_False_shift when "00",
    c_40_25_4_False_shift when "01",
    c_40_10_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 41 and associated fundamentals [[45], [95], [240], [153]]
  c_41_resize <= c_40;
  c_41 <= -shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 9 with id 42 and associated fundamentals [[110], [89], [242], [181]]
  c_42_7_1_False_resize <= resize(c_7, 24);
  c_42_7_1_False_shift <= shift_left(c_42_7_1_False_resize, 1);
  c_42_16_0_False_resize <= c_16;
  c_42_16_0_False_shift <= shift_left(c_42_16_0_False_resize, 0);
  c_42_13_1_False_resize <= resize(c_13, 24);
  c_42_13_1_False_shift <= shift_left(c_42_13_1_False_resize, 1);
  c_42_22_0_False_resize <= c_22;
  c_42_22_0_False_shift <= shift_left(c_42_22_0_False_resize, 0);
  with config_select_9 select c_42_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  with c_42_sel select c_42 <=
    c_42_7_1_False_shift when "00",
    c_42_16_0_False_shift when "01",
    c_42_13_1_False_shift when "10",
    c_42_22_0_False_shift when others;
  -- node of type 'output' in stage 9 with id 43 and associated fundamentals [[110], [89], [242], [181]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 5 with id 44 and associated fundamentals [[60], [7], [89], [95]]
  c_44_2_2_False_resize <= resize(c_2, 23);
  c_44_2_2_False_shift <= shift_left(c_44_2_2_False_resize, 2);
  c_44_10_0_False_resize <= c_10;
  c_44_10_0_False_shift <= shift_left(c_44_10_0_False_resize, 0);
  c_44_2_0_False_resize <= resize(c_2, 23);
  c_44_2_0_False_shift <= shift_left(c_44_2_0_False_resize, 0);
  with config_select_5 select c_44_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "11",
    "10" when others;
  with c_44_sel select c_44 <=
    c_44_2_2_False_shift when "00",
    c_44_10_0_False_shift when "01",
    c_44_2_0_False_shift when others;
  -- node of type 'output' in stage 5 with id 45 and associated fundamentals [[120], [14], [178], [190]]
  c_45_resize <= resize(c_44, 24);
  c_45 <= shift_left(c_45_resize, 1);
  -- node of type 'mux' in stage 9 with id 46 and associated fundamentals [[214], [157], [12], [39]]
  c_46_22_0_False_resize <= c_22;
  c_46_22_0_False_shift <= shift_left(c_46_22_0_False_resize, 0);
  c_46_7_0_False_resize <= resize(c_7, 24);
  c_46_7_0_False_shift <= shift_left(c_46_7_0_False_resize, 0);
  c_46_16_2_False_resize <= c_16;
  c_46_16_2_False_shift <= shift_left(c_46_16_2_False_resize, 2);
  with config_select_9 select c_46_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "11",
    "10" when others;
  with c_46_sel select c_46 <=
    c_46_22_0_False_shift when "00",
    c_46_7_0_False_shift when "01",
    c_46_16_2_False_shift when others;
  -- node of type 'output' in stage 9 with id 47 and associated fundamentals [[214], [157], [12], [39]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
end architecture;

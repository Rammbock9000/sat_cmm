library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(22 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(22 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(22 downto 0);
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
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(23 downto 0);
  signal c_4_1_0_False_resize: signed(23 downto 0);
  signal c_4_1_0_False_shift: signed(23 downto 0);
  signal c_4_2_4_False_resize: signed(23 downto 0);
  signal c_4_2_4_False_shift: signed(23 downto 0);
  signal c_4_3_1_False_resize: signed(23 downto 0);
  signal c_4_3_1_False_shift: signed(23 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_2_2_False_resize: signed(20 downto 0);
  signal c_5_2_2_False_shift: signed(20 downto 0);
  signal c_5_2_0_False_resize: signed(20 downto 0);
  signal c_5_2_0_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_0_0_False_resize: signed(21 downto 0);
  signal c_7_0_0_False_shift: signed(21 downto 0);
  signal c_7_0_6_False_resize: signed(21 downto 0);
  signal c_7_0_6_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_8_0_4_False_resize: signed(19 downto 0);
  signal c_8_0_4_False_shift: signed(19 downto 0);
  signal c_8_0_0_False_resize: signed(19 downto 0);
  signal c_8_0_0_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(23 downto 0);
  signal c_10_3_0_False_resize: signed(23 downto 0);
  signal c_10_3_0_False_shift: signed(23 downto 0);
  signal c_10_2_1_False_resize: signed(23 downto 0);
  signal c_10_2_1_False_shift: signed(23 downto 0);
  signal c_10_2_0_False_resize: signed(23 downto 0);
  signal c_10_2_0_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_1_0_False_resize: signed(23 downto 0);
  signal c_11_1_0_False_shift: signed(23 downto 0);
  signal c_11_2_5_False_resize: signed(23 downto 0);
  signal c_11_2_5_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_1_4_False_resize: signed(21 downto 0);
  signal c_13_1_4_False_shift: signed(21 downto 0);
  signal c_13_1_0_False_resize: signed(21 downto 0);
  signal c_13_1_0_False_shift: signed(21 downto 0);
  signal c_13_2_2_False_resize: signed(21 downto 0);
  signal c_13_2_2_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_2_2_False_resize: signed(24 downto 0);
  signal c_14_2_2_False_shift: signed(24 downto 0);
  signal c_14_3_1_False_resize: signed(24 downto 0);
  signal c_14_3_1_False_shift: signed(24 downto 0);
  signal c_14_1_0_False_resize: signed(24 downto 0);
  signal c_14_1_0_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(20 downto 0);
  signal c_16_1_0_False_resize: signed(20 downto 0);
  signal c_16_1_0_False_shift: signed(20 downto 0);
  signal c_16_2_2_False_resize: signed(20 downto 0);
  signal c_16_2_2_False_shift: signed(20 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_1_5_False_resize: signed(22 downto 0);
  signal c_17_1_5_False_shift: signed(22 downto 0);
  signal c_17_1_4_False_resize: signed(22 downto 0);
  signal c_17_1_4_False_shift: signed(22 downto 0);
  signal c_17_2_0_False_resize: signed(22 downto 0);
  signal c_17_2_0_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_i0_resize: signed(22 downto 0);
  signal c_18_i1_resize: signed(22 downto 0);
  signal c_18_i0_shift: signed(22 downto 0);
  signal c_18_i1_shift: signed(22 downto 0);
  signal c_18_arith: signed(22 downto 0);
  signal c_18_oshift: signed(22 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(21 downto 0);
  signal c_19_1_3_False_resize: signed(21 downto 0);
  signal c_19_1_3_False_shift: signed(21 downto 0);
  signal c_19_1_0_False_resize: signed(21 downto 0);
  signal c_19_1_0_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_1_3_False_resize: signed(23 downto 0);
  signal c_20_1_3_False_shift: signed(23 downto 0);
  signal c_20_1_1_False_resize: signed(23 downto 0);
  signal c_20_1_1_False_shift: signed(23 downto 0);
  signal c_20_3_0_False_resize: signed(23 downto 0);
  signal c_20_3_0_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_i0_resize: signed(23 downto 0);
  signal c_21_i1_resize: signed(23 downto 0);
  signal c_21_i0_shift: signed(23 downto 0);
  signal c_21_i1_shift: signed(23 downto 0);
  signal c_21_arith: signed(23 downto 0);
  signal c_21_oshift: signed(23 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_3_0_False_resize: signed(22 downto 0);
  signal c_22_3_0_False_shift: signed(22 downto 0);
  signal c_22_1_0_False_resize: signed(22 downto 0);
  signal c_22_1_0_False_shift: signed(22 downto 0);
  signal c_22_2_0_False_resize: signed(22 downto 0);
  signal c_22_2_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(22 downto 0);
  signal c_24_2_0_False_resize: signed(22 downto 0);
  signal c_24_2_0_False_shift: signed(22 downto 0);
  signal c_24_3_0_False_resize: signed(22 downto 0);
  signal c_24_3_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_2_4_False_resize: signed(21 downto 0);
  signal c_25_2_4_False_shift: signed(21 downto 0);
  signal c_25_2_1_False_resize: signed(21 downto 0);
  signal c_25_2_1_False_shift: signed(21 downto 0);
  signal c_25_2_0_False_resize: signed(21 downto 0);
  signal c_25_2_0_False_shift: signed(21 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_i0_resize: signed(22 downto 0);
  signal c_26_i1_resize: signed(22 downto 0);
  signal c_26_i0_shift: signed(22 downto 0);
  signal c_26_i1_shift: signed(22 downto 0);
  signal c_26_arith: signed(22 downto 0);
  signal c_26_oshift: signed(22 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(20 downto 0);
  signal c_27_1_3_False_resize: signed(20 downto 0);
  signal c_27_1_3_False_shift: signed(20 downto 0);
  signal c_27_1_0_False_resize: signed(20 downto 0);
  signal c_27_1_0_False_shift: signed(20 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_i0_resize: signed(22 downto 0);
  signal c_28_i1_resize: signed(22 downto 0);
  signal c_28_i0_shift: signed(22 downto 0);
  signal c_28_i1_shift: signed(22 downto 0);
  signal c_28_arith: signed(22 downto 0);
  signal c_28_oshift: signed(22 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_1_3_False_resize: signed(23 downto 0);
  signal c_30_1_3_False_shift: signed(23 downto 0);
  signal c_30_1_0_False_resize: signed(23 downto 0);
  signal c_30_1_0_False_shift: signed(23 downto 0);
  signal c_30_3_0_False_resize: signed(23 downto 0);
  signal c_30_3_0_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(20 downto 0);
  signal c_31_2_2_False_resize: signed(20 downto 0);
  signal c_31_2_2_False_shift: signed(20 downto 0);
  signal c_31_2_0_False_resize: signed(20 downto 0);
  signal c_31_2_0_False_shift: signed(20 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_i0_resize: signed(22 downto 0);
  signal c_32_i1_resize: signed(22 downto 0);
  signal c_32_i0_shift: signed(22 downto 0);
  signal c_32_i1_shift: signed(22 downto 0);
  signal c_32_arith: signed(22 downto 0);
  signal c_32_oshift: signed(22 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(23 downto 0);
  signal c_33_resize: signed(23 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_12_0_False_resize: signed(22 downto 0);
  signal c_34_12_0_False_shift: signed(22 downto 0);
  signal c_34_32_0_False_resize: signed(22 downto 0);
  signal c_34_32_0_False_shift: signed(22 downto 0);
  signal c_34_23_0_False_resize: signed(22 downto 0);
  signal c_34_23_0_False_shift: signed(22 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_resize: signed(22 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_12_0_False_resize: signed(23 downto 0);
  signal c_36_12_0_False_shift: signed(23 downto 0);
  signal c_36_21_0_False_resize: signed(23 downto 0);
  signal c_36_21_0_False_shift: signed(23 downto 0);
  signal c_36_26_1_False_resize: signed(23 downto 0);
  signal c_36_26_1_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_38_12_0_False_resize: signed(22 downto 0);
  signal c_38_12_0_False_shift: signed(22 downto 0);
  signal c_38_12_3_False_resize: signed(22 downto 0);
  signal c_38_12_3_False_shift: signed(22 downto 0);
  signal c_38_21_0_False_resize: signed(22 downto 0);
  signal c_38_21_0_False_shift: signed(22 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_39_resize: signed(22 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_21_0_False_resize: signed(23 downto 0);
  signal c_40_21_0_False_shift: signed(23 downto 0);
  signal c_40_18_1_False_resize: signed(23 downto 0);
  signal c_40_18_1_False_shift: signed(23 downto 0);
  signal c_40_26_0_False_resize: signed(23 downto 0);
  signal c_40_26_0_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_42_23_0_False_resize: signed(22 downto 0);
  signal c_42_23_0_False_shift: signed(22 downto 0);
  signal c_42_32_0_False_resize: signed(22 downto 0);
  signal c_42_32_0_False_shift: signed(22 downto 0);
  signal c_42_28_1_False_resize: signed(22 downto 0);
  signal c_42_28_1_False_shift: signed(22 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_43_resize: signed(22 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_15_0_False_resize: signed(23 downto 0);
  signal c_44_15_0_False_shift: signed(23 downto 0);
  signal c_44_32_1_False_resize: signed(23 downto 0);
  signal c_44_32_1_False_shift: signed(23 downto 0);
  signal c_44_26_1_False_resize: signed(23 downto 0);
  signal c_44_26_1_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_46_15_1_False_resize: signed(22 downto 0);
  signal c_46_15_1_False_shift: signed(22 downto 0);
  signal c_46_26_2_False_resize: signed(22 downto 0);
  signal c_46_26_2_False_shift: signed(22 downto 0);
  signal c_46_18_0_False_resize: signed(22 downto 0);
  signal c_46_18_0_False_shift: signed(22 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_47_resize: signed(22 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_23_0_False_resize: signed(23 downto 0);
  signal c_48_23_0_False_shift: signed(23 downto 0);
  signal c_48_28_0_False_resize: signed(23 downto 0);
  signal c_48_28_0_False_shift: signed(23 downto 0);
  signal c_48_15_1_False_resize: signed(23 downto 0);
  signal c_48_15_1_False_shift: signed(23 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_28_1_False_resize: signed(23 downto 0);
  signal c_50_28_1_False_shift: signed(23 downto 0);
  signal c_50_6_1_False_resize: signed(23 downto 0);
  signal c_50_6_1_False_shift: signed(23 downto 0);
  signal c_50_18_0_False_resize: signed(23 downto 0);
  signal c_50_18_0_False_shift: signed(23 downto 0);
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
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[-3], [-3], [5]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
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
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[5], [5], [3]]
  with config_select_1 select c_2_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
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
      sub_i => c_2_sub_sel,
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
  -- node of type 'add_sub' in stage 1 with id 3 and associated fundamentals [[-127], [-127], [129]]
  with config_select_1 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 7,
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
      c_3 <= c_3_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[-254], [-3], [48]]
  c_4_1_0_False_resize <= resize(c_1, 24);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_2_4_False_resize <= resize(c_2, 24);
  c_4_2_4_False_shift <= shift_left(c_4_2_4_False_resize, 4);
  c_4_3_1_False_resize <= c_3;
  c_4_3_1_False_shift <= shift_left(c_4_3_1_False_resize, 1);
  with config_select_2 select c_4_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_1_0_False_shift;
        when "01" => c_4 <= c_4_2_4_False_shift;
        when others => c_4 <= c_4_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[20], [20], [3]]
  c_5_2_2_False_resize <= resize(c_2, 21);
  c_5_2_2_False_shift <= shift_left(c_5_2_2_False_resize, 2);
  c_5_2_0_False_resize <= resize(c_2, 21);
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_2_2_False_shift;
        when others => c_5 <= c_5_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 6 and associated fundamentals [[-274], [-23], [45]]
  inst_adder_node_6: entity work.adder_node
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
      sub => True
    )
    port map (
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[64], [1], [64]]
  c_7_0_0_False_resize <= resize(c_0, 22);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_6_False_resize <= resize(c_0, 22);
  c_7_0_6_False_shift <= shift_left(c_7_0_6_False_resize, 6);
  with config_select_1 select c_7_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_0_False_shift;
        when others => c_7 <= c_7_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[1], [16], [1]]
  c_8_0_4_False_resize <= resize(c_0, 20);
  c_8_0_4_False_shift <= shift_left(c_8_0_4_False_resize, 4);
  c_8_0_0_False_resize <= resize(c_0, 20);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  with config_select_1 select c_8_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_0_4_False_shift;
        when others => c_8 <= c_8_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[63], [17], [63]]
  with config_select_2 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[5], [10], [129]]
  c_10_3_0_False_resize <= c_3;
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_2_1_False_resize <= resize(c_2, 24);
  c_10_2_1_False_shift <= shift_left(c_10_2_1_False_resize, 1);
  c_10_2_0_False_resize <= resize(c_2, 24);
  c_10_2_0_False_shift <= shift_left(c_10_2_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_3_0_False_shift;
        when "01" => c_10 <= c_10_2_1_False_shift;
        when others => c_10 <= c_10_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[160], [-3], [96]]
  c_11_1_0_False_resize <= resize(c_1, 24);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_2_5_False_resize <= resize(c_2, 24);
  c_11_2_5_False_shift <= shift_left(c_11_2_5_False_resize, 5);
  with config_select_2 select c_11_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_1_0_False_shift;
        when others => c_11 <= c_11_2_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 12 and associated fundamentals [[-155], [13], [33]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[-3], [-48], [12]]
  c_13_1_4_False_resize <= resize(c_1, 22);
  c_13_1_4_False_shift <= shift_left(c_13_1_4_False_resize, 4);
  c_13_1_0_False_resize <= resize(c_1, 22);
  c_13_1_0_False_shift <= shift_left(c_13_1_0_False_resize, 0);
  c_13_2_2_False_resize <= resize(c_2, 22);
  c_13_2_2_False_shift <= shift_left(c_13_2_2_False_resize, 2);
  with config_select_2 select c_13_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_1_4_False_shift;
        when "01" => c_13 <= c_13_1_0_False_shift;
        when others => c_13 <= c_13_2_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[20], [-3], [258]]
  c_14_2_2_False_resize <= resize(c_2, 25);
  c_14_2_2_False_shift <= shift_left(c_14_2_2_False_resize, 2);
  c_14_3_1_False_resize <= resize(c_3, 25);
  c_14_3_1_False_shift <= shift_left(c_14_3_1_False_resize, 1);
  c_14_1_0_False_resize <= resize(c_1, 25);
  c_14_1_0_False_shift <= shift_left(c_14_1_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_2_2_False_shift;
        when "01" => c_14 <= c_14_3_1_False_shift;
        when others => c_14 <= c_14_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[-23], [-51], [-246]]
  with config_select_3 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[-3], [20], [12]]
  c_16_1_0_False_resize <= resize(c_1, 21);
  c_16_1_0_False_shift <= shift_left(c_16_1_0_False_resize, 0);
  c_16_2_2_False_resize <= resize(c_2, 21);
  c_16_2_2_False_shift <= shift_left(c_16_2_2_False_resize, 2);
  with config_select_2 select c_16_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_1_0_False_shift;
        when others => c_16 <= c_16_2_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[-96], [5], [80]]
  c_17_1_5_False_resize <= resize(c_1, 23);
  c_17_1_5_False_shift <= shift_left(c_17_1_5_False_resize, 5);
  c_17_1_4_False_resize <= resize(c_1, 23);
  c_17_1_4_False_shift <= shift_left(c_17_1_4_False_resize, 4);
  c_17_2_0_False_resize <= resize(c_2, 23);
  c_17_2_0_False_shift <= shift_left(c_17_2_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_1_5_False_shift;
        when "01" => c_17 <= c_17_1_4_False_shift;
        when others => c_17 <= c_17_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 18 and associated fundamentals [[-102], [35], [-56]]
  with config_select_3 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 19 and associated fundamentals [[-3], [-24], [40]]
  c_19_1_3_False_resize <= resize(c_1, 22);
  c_19_1_3_False_shift <= shift_left(c_19_1_3_False_resize, 3);
  c_19_1_0_False_resize <= resize(c_1, 22);
  c_19_1_0_False_shift <= shift_left(c_19_1_0_False_resize, 0);
  with config_select_2 select c_19_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_1_3_False_shift;
        when others => c_19 <= c_19_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 20 and associated fundamentals [[-24], [-6], [129]]
  c_20_1_3_False_resize <= resize(c_1, 24);
  c_20_1_3_False_shift <= shift_left(c_20_1_3_False_resize, 3);
  c_20_1_1_False_resize <= resize(c_1, 24);
  c_20_1_1_False_shift <= shift_left(c_20_1_1_False_resize, 1);
  c_20_3_0_False_resize <= c_3;
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  with config_select_2 select c_20_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_1_3_False_shift;
        when "01" => c_20 <= c_20_1_1_False_shift;
        when others => c_20 <= c_20_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 21 and associated fundamentals [[42], [-36], [-178]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 22 and associated fundamentals [[-127], [5], [5]]
  c_22_3_0_False_resize <= c_3(22 downto 0);
  c_22_3_0_False_shift <= shift_left(c_22_3_0_False_resize, 0);
  c_22_1_0_False_resize <= resize(c_1, 23);
  c_22_1_0_False_shift <= shift_left(c_22_1_0_False_resize, 0);
  c_22_2_0_False_resize <= resize(c_2, 23);
  c_22_2_0_False_shift <= shift_left(c_22_2_0_False_resize, 0);
  with config_select_2 select c_22_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_3_0_False_shift;
        when "01" => c_22 <= c_22_1_0_False_shift;
        when others => c_22 <= c_22_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 23 and associated fundamentals [[125], [73], [-247]]
  with config_select_3 select c_23_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_9,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 24 and associated fundamentals [[5], [-127], [3]]
  c_24_2_0_False_resize <= resize(c_2, 23);
  c_24_2_0_False_shift <= shift_left(c_24_2_0_False_resize, 0);
  c_24_3_0_False_resize <= c_3(22 downto 0);
  c_24_3_0_False_shift <= shift_left(c_24_3_0_False_resize, 0);
  with config_select_2 select c_24_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_2_0_False_shift;
        when others => c_24 <= c_24_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 25 and associated fundamentals [[5], [10], [48]]
  c_25_2_4_False_resize <= resize(c_2, 22);
  c_25_2_4_False_shift <= shift_left(c_25_2_4_False_resize, 4);
  c_25_2_1_False_resize <= resize(c_2, 22);
  c_25_2_1_False_shift <= shift_left(c_25_2_1_False_resize, 1);
  c_25_2_0_False_resize <= resize(c_2, 22);
  c_25_2_0_False_shift <= shift_left(c_25_2_0_False_resize, 0);
  with config_select_2 select c_25_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_2_4_False_shift;
        when "01" => c_25 <= c_25_2_1_False_shift;
        when others => c_25 <= c_25_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 26 and associated fundamentals [[-5], [-107], [-93]]
  with config_select_3 select c_26_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 27 and associated fundamentals [[-24], [-24], [5]]
  c_27_1_3_False_resize <= resize(c_1, 21);
  c_27_1_3_False_shift <= shift_left(c_27_1_3_False_resize, 3);
  c_27_1_0_False_resize <= resize(c_1, 21);
  c_27_1_0_False_shift <= shift_left(c_27_1_0_False_resize, 0);
  with config_select_2 select c_27_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_1_3_False_shift;
        when others => c_27 <= c_27_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 28 and associated fundamentals [[87], [-7], [58]]
  with config_select_3 select c_28_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
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
      sub_i => c_28_sub_sel,
      x_i => c_9,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 29 and associated fundamentals [[-232], [-59], [-133]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
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
      x_i => c_6,
      y_i => c_21,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 30 and associated fundamentals [[-3], [-24], [129]]
  c_30_1_3_False_resize <= resize(c_1, 24);
  c_30_1_3_False_shift <= shift_left(c_30_1_3_False_resize, 3);
  c_30_1_0_False_resize <= resize(c_1, 24);
  c_30_1_0_False_shift <= shift_left(c_30_1_0_False_resize, 0);
  c_30_3_0_False_resize <= c_3;
  c_30_3_0_False_shift <= shift_left(c_30_3_0_False_resize, 0);
  with config_select_2 select c_30_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_1_3_False_shift;
        when "01" => c_30 <= c_30_1_0_False_shift;
        when others => c_30 <= c_30_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 31 and associated fundamentals [[20], [5], [12]]
  c_31_2_2_False_resize <= resize(c_2, 21);
  c_31_2_2_False_shift <= shift_left(c_31_2_2_False_resize, 2);
  c_31_2_0_False_resize <= resize(c_2, 21);
  c_31_2_0_False_shift <= shift_left(c_31_2_0_False_resize, 0);
  with config_select_2 select c_31_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_2_2_False_shift;
        when others => c_31 <= c_31_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 32 and associated fundamentals [[17], [-29], [117]]
  with config_select_3 select c_32_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_32_sub_sel,
      x_i => c_30,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 33 and associated fundamentals [[232], [59], [133]]
  c_33_resize <= c_29;
  c_33 <= -shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 4 with id 34 and associated fundamentals [[125], [13], [117]]
  c_34_12_0_False_resize <= c_12(22 downto 0);
  c_34_12_0_False_shift <= shift_left(c_34_12_0_False_resize, 0);
  c_34_32_0_False_resize <= c_32;
  c_34_32_0_False_shift <= shift_left(c_34_32_0_False_resize, 0);
  c_34_23_0_False_resize <= c_23(22 downto 0);
  c_34_23_0_False_shift <= shift_left(c_34_23_0_False_resize, 0);
  with config_select_4 select c_34_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_12_0_False_shift;
        when "01" => c_34 <= c_34_32_0_False_shift;
        when others => c_34 <= c_34_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 35 and associated fundamentals [[125], [13], [117]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'mux' in stage 4 with id 36 and associated fundamentals [[-155], [-36], [-186]]
  c_36_12_0_False_resize <= c_12;
  c_36_12_0_False_shift <= shift_left(c_36_12_0_False_resize, 0);
  c_36_21_0_False_resize <= c_21;
  c_36_21_0_False_shift <= shift_left(c_36_21_0_False_resize, 0);
  c_36_26_1_False_resize <= resize(c_26, 24);
  c_36_26_1_False_shift <= shift_left(c_36_26_1_False_resize, 1);
  with config_select_4 select c_36_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_12_0_False_shift;
        when "01" => c_36 <= c_36_21_0_False_shift;
        when others => c_36 <= c_36_26_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 37 and associated fundamentals [[155], [36], [186]]
  c_37_resize <= c_36;
  c_37 <= -shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 4 with id 38 and associated fundamentals [[42], [104], [33]]
  c_38_12_0_False_resize <= c_12(22 downto 0);
  c_38_12_0_False_shift <= shift_left(c_38_12_0_False_resize, 0);
  c_38_12_3_False_resize <= c_12(22 downto 0);
  c_38_12_3_False_shift <= shift_left(c_38_12_3_False_resize, 3);
  c_38_21_0_False_resize <= c_21(22 downto 0);
  c_38_21_0_False_shift <= shift_left(c_38_21_0_False_resize, 0);
  with config_select_4 select c_38_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_12_0_False_shift;
        when "01" => c_38 <= c_38_12_3_False_shift;
        when others => c_38 <= c_38_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[42], [104], [33]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[-204], [-107], [-178]]
  c_40_21_0_False_resize <= c_21;
  c_40_21_0_False_shift <= shift_left(c_40_21_0_False_resize, 0);
  c_40_18_1_False_resize <= resize(c_18, 24);
  c_40_18_1_False_shift <= shift_left(c_40_18_1_False_resize, 1);
  c_40_26_0_False_resize <= resize(c_26, 24);
  c_40_26_0_False_shift <= shift_left(c_40_26_0_False_resize, 0);
  with config_select_4 select c_40_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_21_0_False_shift;
        when "01" => c_40 <= c_40_18_1_False_shift;
        when others => c_40 <= c_40_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[204], [107], [178]]
  c_41_resize <= c_40;
  c_41 <= -shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[17], [73], [116]]
  c_42_23_0_False_resize <= c_23(22 downto 0);
  c_42_23_0_False_shift <= shift_left(c_42_23_0_False_resize, 0);
  c_42_32_0_False_resize <= c_32;
  c_42_32_0_False_shift <= shift_left(c_42_32_0_False_resize, 0);
  c_42_28_1_False_resize <= c_28;
  c_42_28_1_False_shift <= shift_left(c_42_28_1_False_resize, 1);
  with config_select_4 select c_42_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_23_0_False_shift;
        when "01" => c_42 <= c_42_32_0_False_shift;
        when others => c_42 <= c_42_28_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[17], [73], [116]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[-10], [-58], [-246]]
  c_44_15_0_False_resize <= c_15;
  c_44_15_0_False_shift <= shift_left(c_44_15_0_False_resize, 0);
  c_44_32_1_False_resize <= resize(c_32, 24);
  c_44_32_1_False_shift <= shift_left(c_44_32_1_False_resize, 1);
  c_44_26_1_False_resize <= resize(c_26, 24);
  c_44_26_1_False_shift <= shift_left(c_44_26_1_False_resize, 1);
  with config_select_4 select c_44_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_15_0_False_shift;
        when "01" => c_44 <= c_44_32_1_False_shift;
        when others => c_44 <= c_44_26_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[10], [58], [246]]
  c_45_resize <= c_44;
  c_45 <= -shift_left(c_45_resize, 0);
  -- node of type 'mux' in stage 4 with id 46 and associated fundamentals [[-20], [-102], [-56]]
  c_46_15_1_False_resize <= c_15(22 downto 0);
  c_46_15_1_False_shift <= shift_left(c_46_15_1_False_resize, 1);
  c_46_26_2_False_resize <= c_26;
  c_46_26_2_False_shift <= shift_left(c_46_26_2_False_resize, 2);
  c_46_18_0_False_resize <= c_18;
  c_46_18_0_False_shift <= shift_left(c_46_18_0_False_resize, 0);
  with config_select_4 select c_46_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_15_1_False_shift;
        when "01" => c_46 <= c_46_26_2_False_shift;
        when others => c_46 <= c_46_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[20], [102], [56]]
  c_47_resize <= c_46;
  c_47 <= -shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 4 with id 48 and associated fundamentals [[-46], [-7], [-247]]
  c_48_23_0_False_resize <= c_23;
  c_48_23_0_False_shift <= shift_left(c_48_23_0_False_resize, 0);
  c_48_28_0_False_resize <= resize(c_28, 24);
  c_48_28_0_False_shift <= shift_left(c_48_28_0_False_resize, 0);
  c_48_15_1_False_resize <= c_15;
  c_48_15_1_False_shift <= shift_left(c_48_15_1_False_resize, 1);
  with config_select_4 select c_48_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_23_0_False_shift;
        when "01" => c_48 <= c_48_28_0_False_shift;
        when others => c_48 <= c_48_15_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 49 and associated fundamentals [[46], [7], [247]]
  c_49_resize <= c_48;
  c_49 <= -shift_left(c_49_resize, 0);
  -- node of type 'mux' in stage 4 with id 50 and associated fundamentals [[174], [35], [90]]
  c_50_28_1_False_resize <= resize(c_28, 24);
  c_50_28_1_False_shift <= shift_left(c_50_28_1_False_resize, 1);
  c_50_6_1_False_resize <= c_6;
  c_50_6_1_False_shift <= shift_left(c_50_6_1_False_resize, 1);
  c_50_18_0_False_resize <= resize(c_18, 24);
  c_50_18_0_False_shift <= shift_left(c_50_18_0_False_resize, 0);
  with config_select_4 select c_50_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_28_1_False_shift;
        when "01" => c_50 <= c_50_6_1_False_shift;
        when others => c_50 <= c_50_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 51 and associated fundamentals [[174], [35], [90]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
end architecture;

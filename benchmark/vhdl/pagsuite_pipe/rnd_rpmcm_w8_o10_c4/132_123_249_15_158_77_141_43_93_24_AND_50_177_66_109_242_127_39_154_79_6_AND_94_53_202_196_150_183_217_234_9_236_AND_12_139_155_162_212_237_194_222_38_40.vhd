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
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(22 downto 0);
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
  signal c_1: signed(15 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(18 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_4_0_0_False_resize: signed(17 downto 0);
  signal c_4_0_0_False_shift: signed(17 downto 0);
  signal c_4_0_2_False_resize: signed(17 downto 0);
  signal c_4_0_2_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_i0_resize: signed(19 downto 0);
  signal c_5_i1_resize: signed(19 downto 0);
  signal c_5_i0_shift: signed(19 downto 0);
  signal c_5_i1_shift: signed(19 downto 0);
  signal c_5_arith: signed(19 downto 0);
  signal c_5_oshift: signed(19 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(17 downto 0);
  signal c_7_0_2_False_resize: signed(17 downto 0);
  signal c_7_0_2_False_shift: signed(17 downto 0);
  signal c_7_0_0_False_resize: signed(17 downto 0);
  signal c_7_0_0_False_shift: signed(17 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_8_i0_resize: signed(19 downto 0);
  signal c_8_i1_resize: signed(19 downto 0);
  signal c_8_i0_shift: signed(19 downto 0);
  signal c_8_i1_shift: signed(19 downto 0);
  signal c_8_arith: signed(19 downto 0);
  signal c_8_oshift: signed(19 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(17 downto 0);
  signal c_9_0_1_False_resize: signed(17 downto 0);
  signal c_9_0_1_False_shift: signed(17 downto 0);
  signal c_9_0_0_False_resize: signed(17 downto 0);
  signal c_9_0_0_False_shift: signed(17 downto 0);
  signal c_9_0_2_False_resize: signed(17 downto 0);
  signal c_9_0_2_False_shift: signed(17 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_10_i0_resize: signed(19 downto 0);
  signal c_10_i1_resize: signed(19 downto 0);
  signal c_10_i0_shift: signed(19 downto 0);
  signal c_10_i1_shift: signed(19 downto 0);
  signal c_10_arith: signed(19 downto 0);
  signal c_10_oshift: signed(19 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(23 downto 0);
  signal c_11_8_6_False_resize: signed(23 downto 0);
  signal c_11_8_6_False_shift: signed(23 downto 0);
  signal c_11_3_0_False_resize: signed(23 downto 0);
  signal c_11_3_0_False_shift: signed(23 downto 0);
  signal c_11_10_0_False_resize: signed(23 downto 0);
  signal c_11_10_0_False_shift: signed(23 downto 0);
  signal c_11_10_5_False_resize: signed(23 downto 0);
  signal c_11_10_5_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_8_3_False_resize: signed(21 downto 0);
  signal c_12_8_3_False_shift: signed(21 downto 0);
  signal c_12_8_1_False_resize: signed(21 downto 0);
  signal c_12_8_1_False_shift: signed(21 downto 0);
  signal c_12_5_0_False_resize: signed(21 downto 0);
  signal c_12_5_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel_left: std_logic;
  signal c_13_sub_sel_right: std_logic;
  signal c_14: signed(23 downto 0);
  signal c_14_5_4_False_resize: signed(23 downto 0);
  signal c_14_5_4_False_shift: signed(23 downto 0);
  signal c_14_8_6_False_resize: signed(23 downto 0);
  signal c_14_8_6_False_shift: signed(23 downto 0);
  signal c_14_5_5_False_resize: signed(23 downto 0);
  signal c_14_5_5_False_shift: signed(23 downto 0);
  signal c_14_3_0_False_resize: signed(23 downto 0);
  signal c_14_3_0_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_15_5_2_False_resize: signed(20 downto 0);
  signal c_15_5_2_False_shift: signed(20 downto 0);
  signal c_15_3_0_False_resize: signed(20 downto 0);
  signal c_15_3_0_False_shift: signed(20 downto 0);
  signal c_15_5_0_False_resize: signed(20 downto 0);
  signal c_15_5_0_False_shift: signed(20 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(21 downto 0);
  signal c_17_3_0_False_resize: signed(21 downto 0);
  signal c_17_3_0_False_shift: signed(21 downto 0);
  signal c_17_8_4_False_resize: signed(21 downto 0);
  signal c_17_8_4_False_shift: signed(21 downto 0);
  signal c_17_8_0_False_resize: signed(21 downto 0);
  signal c_17_8_0_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_18_3_4_False_resize: signed(21 downto 0);
  signal c_18_3_4_False_shift: signed(21 downto 0);
  signal c_18_3_0_False_resize: signed(21 downto 0);
  signal c_18_3_0_False_shift: signed(21 downto 0);
  signal c_18_6_2_False_resize: signed(21 downto 0);
  signal c_18_6_2_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_i0_resize: signed(22 downto 0);
  signal c_19_i1_resize: signed(22 downto 0);
  signal c_19_i0_shift: signed(22 downto 0);
  signal c_19_i1_shift: signed(22 downto 0);
  signal c_19_arith: signed(22 downto 0);
  signal c_19_oshift: signed(22 downto 0);
  signal c_19_sub_sel_left: std_logic;
  signal c_19_sub_sel_right: std_logic;
  signal c_20: signed(19 downto 0);
  signal c_20_3_0_False_resize: signed(19 downto 0);
  signal c_20_3_0_False_shift: signed(19 downto 0);
  signal c_20_10_0_False_resize: signed(19 downto 0);
  signal c_20_10_0_False_shift: signed(19 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(20 downto 0);
  signal c_21_10_1_False_resize: signed(20 downto 0);
  signal c_21_10_1_False_shift: signed(20 downto 0);
  signal c_21_3_1_False_resize: signed(20 downto 0);
  signal c_21_3_1_False_shift: signed(20 downto 0);
  signal c_21_10_0_False_resize: signed(20 downto 0);
  signal c_21_10_0_False_shift: signed(20 downto 0);
  signal c_21_3_3_False_resize: signed(20 downto 0);
  signal c_21_3_3_False_shift: signed(20 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(21 downto 0);
  signal c_23_6_3_False_resize: signed(21 downto 0);
  signal c_23_6_3_False_shift: signed(21 downto 0);
  signal c_23_6_0_False_resize: signed(21 downto 0);
  signal c_23_6_0_False_shift: signed(21 downto 0);
  signal c_23_8_2_False_resize: signed(21 downto 0);
  signal c_23_8_2_False_shift: signed(21 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(20 downto 0);
  signal c_24_5_1_False_resize: signed(20 downto 0);
  signal c_24_5_1_False_shift: signed(20 downto 0);
  signal c_24_3_0_False_resize: signed(20 downto 0);
  signal c_24_3_0_False_shift: signed(20 downto 0);
  signal c_24_6_0_False_resize: signed(20 downto 0);
  signal c_24_6_0_False_shift: signed(20 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(20 downto 0);
  signal c_26_3_0_False_resize: signed(20 downto 0);
  signal c_26_3_0_False_shift: signed(20 downto 0);
  signal c_26_10_1_False_resize: signed(20 downto 0);
  signal c_26_10_1_False_shift: signed(20 downto 0);
  signal c_26_6_1_False_resize: signed(20 downto 0);
  signal c_26_6_1_False_shift: signed(20 downto 0);
  signal c_26_8_0_False_resize: signed(20 downto 0);
  signal c_26_8_0_False_shift: signed(20 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_27_3_2_False_resize: signed(19 downto 0);
  signal c_27_3_2_False_shift: signed(19 downto 0);
  signal c_27_3_1_False_resize: signed(19 downto 0);
  signal c_27_3_1_False_shift: signed(19 downto 0);
  signal c_27_10_0_False_resize: signed(19 downto 0);
  signal c_27_10_0_False_shift: signed(19 downto 0);
  signal c_27_3_0_False_resize: signed(19 downto 0);
  signal c_27_3_0_False_shift: signed(19 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_i0_resize: signed(23 downto 0);
  signal c_28_i1_resize: signed(23 downto 0);
  signal c_28_i0_shift: signed(23 downto 0);
  signal c_28_i1_shift: signed(23 downto 0);
  signal c_28_arith: signed(23 downto 0);
  signal c_28_oshift: signed(23 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(20 downto 0);
  signal c_29_3_2_False_resize: signed(20 downto 0);
  signal c_29_3_2_False_shift: signed(20 downto 0);
  signal c_29_3_1_False_resize: signed(20 downto 0);
  signal c_29_3_1_False_shift: signed(20 downto 0);
  signal c_29_3_0_False_resize: signed(20 downto 0);
  signal c_29_3_0_False_shift: signed(20 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(18 downto 0);
  signal c_30_6_0_False_resize: signed(18 downto 0);
  signal c_30_6_0_False_shift: signed(18 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_32: signed(20 downto 0);
  signal c_32_8_1_False_resize: signed(20 downto 0);
  signal c_32_8_1_False_shift: signed(20 downto 0);
  signal c_32_8_0_False_resize: signed(20 downto 0);
  signal c_32_8_0_False_shift: signed(20 downto 0);
  signal c_32_10_2_False_resize: signed(20 downto 0);
  signal c_32_10_2_False_shift: signed(20 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_33_3_4_False_resize: signed(21 downto 0);
  signal c_33_3_4_False_shift: signed(21 downto 0);
  signal c_33_3_0_False_resize: signed(21 downto 0);
  signal c_33_3_0_False_shift: signed(21 downto 0);
  signal c_33_6_0_False_resize: signed(21 downto 0);
  signal c_33_6_0_False_shift: signed(21 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(20 downto 0);
  signal c_35_5_1_False_resize: signed(20 downto 0);
  signal c_35_5_1_False_shift: signed(20 downto 0);
  signal c_35_10_0_False_resize: signed(20 downto 0);
  signal c_35_10_0_False_shift: signed(20 downto 0);
  signal c_35_3_3_False_resize: signed(20 downto 0);
  signal c_35_3_3_False_shift: signed(20 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(19 downto 0);
  signal c_36_8_0_False_resize: signed(19 downto 0);
  signal c_36_8_0_False_shift: signed(19 downto 0);
  signal c_36_3_0_False_resize: signed(19 downto 0);
  signal c_36_3_0_False_shift: signed(19 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_i0_resize: signed(23 downto 0);
  signal c_37_i1_resize: signed(23 downto 0);
  signal c_37_i0_shift: signed(23 downto 0);
  signal c_37_i1_shift: signed(23 downto 0);
  signal c_37_arith: signed(23 downto 0);
  signal c_37_oshift: signed(23 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(22 downto 0);
  signal c_38_8_5_False_resize: signed(22 downto 0);
  signal c_38_8_5_False_shift: signed(22 downto 0);
  signal c_38_6_0_False_resize: signed(22 downto 0);
  signal c_38_6_0_False_shift: signed(22 downto 0);
  signal c_38_3_0_False_resize: signed(22 downto 0);
  signal c_38_3_0_False_shift: signed(22 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(21 downto 0);
  signal c_39_3_0_False_resize: signed(21 downto 0);
  signal c_39_3_0_False_shift: signed(21 downto 0);
  signal c_39_8_3_False_resize: signed(21 downto 0);
  signal c_39_8_3_False_shift: signed(21 downto 0);
  signal c_39_8_2_False_resize: signed(21 downto 0);
  signal c_39_8_2_False_shift: signed(21 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_i0_resize: signed(23 downto 0);
  signal c_40_i1_resize: signed(23 downto 0);
  signal c_40_i0_shift: signed(23 downto 0);
  signal c_40_i1_shift: signed(23 downto 0);
  signal c_40_arith: signed(23 downto 0);
  signal c_40_oshift: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_49_resize: signed(22 downto 0);
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
  -- output node 0 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 1 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 2 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 3 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 4 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 5 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 6 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 7 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_48);
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
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [2]]
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[3], [3], [3], [5]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
      w_o => 19,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [1], [4], [4]]
  c_4_0_0_False_resize <= resize(c_0, 18);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_2_False_resize <= resize(c_0, 18);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 5 and associated fundamentals [[5], [5], [15], [15]]
  with config_select_2 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 18,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_1,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[7], [9], [7], [7]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_6_sub_sel,
      x_i => c_1,
      y_i => c_1,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[4], [4], [4], [1]]
  c_7_0_2_False_resize <= resize(c_0, 18);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  c_7_0_0_False_resize <= resize(c_0, 18);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_2_False_shift;
        when others => c_7 <= c_7_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[9], [7], [9], [3]]
  with config_select_2 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_1,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[4], [4], [1], [2]]
  c_9_0_1_False_resize <= resize(c_0, 18);
  c_9_0_1_False_shift <= shift_left(c_9_0_1_False_resize, 1);
  c_9_0_0_False_resize <= resize(c_0, 18);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_2_False_resize <= resize(c_0, 18);
  c_9_0_2_False_shift <= shift_left(c_9_0_2_False_resize, 2);
  with config_select_1 select c_9_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_0_1_False_shift;
        when "01" => c_9 <= c_9_0_0_False_shift;
        when others => c_9 <= c_9_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 10 and associated fundamentals [[15], [15], [5], [9]]
  with config_select_2 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 18,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_1,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[15], [3], [160], [192]]
  c_11_8_6_False_resize <= resize(c_8, 24);
  c_11_8_6_False_shift <= shift_left(c_11_8_6_False_resize, 6);
  c_11_3_0_False_resize <= resize(c_3, 24);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  c_11_10_0_False_resize <= resize(c_10, 24);
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  c_11_10_5_False_resize <= resize(c_10, 24);
  c_11_10_5_False_shift <= shift_left(c_11_10_5_False_resize, 5);
  with config_select_3 select c_11_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_8_6_False_shift;
        when "01" => c_11 <= c_11_3_0_False_shift;
        when "10" => c_11 <= c_11_10_0_False_shift;
        when others => c_11 <= c_11_10_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[0], [56], [18], [15]]
  c_12_8_3_False_resize <= resize(c_8, 22);
  c_12_8_3_False_shift <= shift_left(c_12_8_3_False_resize, 3);
  c_12_8_1_False_resize <= resize(c_8, 22);
  c_12_8_1_False_shift <= shift_left(c_12_8_1_False_resize, 1);
  c_12_5_0_False_resize <= resize(c_5, 22);
  c_12_5_0_False_shift <= shift_left(c_12_5_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_8_3_False_shift;
        when "01" => c_12 <= c_12_8_1_False_shift;
        when "10" => c_12 <= c_12_5_0_False_shift;
        when others => c_12 <= to_signed(0, 22);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[15], [109], [196], [162]]
  with config_select_4 select c_13_sub_sel_left <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  with config_select_4 select c_13_sub_sel_right <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
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
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_13_sub_sel_left,
      sub_b_i => c_13_sub_sel_right,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[3], [160], [240], [192]]
  c_14_5_4_False_resize <= resize(c_5, 24);
  c_14_5_4_False_shift <= shift_left(c_14_5_4_False_resize, 4);
  c_14_8_6_False_resize <= resize(c_8, 24);
  c_14_8_6_False_shift <= shift_left(c_14_8_6_False_resize, 6);
  c_14_5_5_False_resize <= resize(c_5, 24);
  c_14_5_5_False_shift <= shift_left(c_14_5_5_False_resize, 5);
  c_14_3_0_False_resize <= resize(c_3, 24);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_5_4_False_shift;
        when "01" => c_14 <= c_14_8_6_False_shift;
        when "10" => c_14 <= c_14_5_5_False_shift;
        when others => c_14 <= c_14_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[20], [3], [3], [15]]
  c_15_5_2_False_resize <= resize(c_5, 21);
  c_15_5_2_False_shift <= shift_left(c_15_5_2_False_resize, 2);
  c_15_3_0_False_resize <= resize(c_3, 21);
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  c_15_5_0_False_resize <= resize(c_5, 21);
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_5_2_False_shift;
        when "01" => c_15 <= c_15_3_0_False_shift;
        when others => c_15 <= c_15_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 16 and associated fundamentals [[43], [154], [234], [222]]
  with config_select_4 select c_16_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[3], [7], [9], [48]]
  c_17_3_0_False_resize <= resize(c_3, 22);
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  c_17_8_4_False_resize <= resize(c_8, 22);
  c_17_8_4_False_shift <= shift_left(c_17_8_4_False_resize, 4);
  c_17_8_0_False_resize <= resize(c_8, 22);
  c_17_8_0_False_shift <= shift_left(c_17_8_0_False_resize, 0);
  with config_select_3 select c_17_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_3_0_False_shift;
        when "01" => c_17 <= c_17_8_4_False_shift;
        when others => c_17 <= c_17_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[48], [36], [0], [5]]
  c_18_3_4_False_resize <= resize(c_3, 22);
  c_18_3_4_False_shift <= shift_left(c_18_3_4_False_resize, 4);
  c_18_3_0_False_resize <= resize(c_3, 22);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  c_18_6_2_False_resize <= resize(c_6, 22);
  c_18_6_2_False_shift <= shift_left(c_18_6_2_False_resize, 2);
  with config_select_3 select c_18_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_3_4_False_shift;
        when "01" => c_18 <= c_18_3_0_False_shift;
        when "10" => c_18 <= c_18_6_2_False_shift;
        when others => c_18 <= to_signed(0, 22);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 19 and associated fundamentals [[93], [79], [9], [38]]
  with config_select_4 select c_19_sub_sel_left <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  with config_select_4 select c_19_sub_sel_right <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_19_sub_sel_left,
      sub_b_i => c_19_sub_sel_right,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[3], [15], [5], [5]]
  c_20_3_0_False_resize <= resize(c_3, 20);
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  c_20_10_0_False_resize <= c_10;
  c_20_10_0_False_shift <= shift_left(c_20_10_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "0" when "11",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_3_0_False_shift;
        when others => c_20 <= c_20_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[15], [24], [6], [18]]
  c_21_10_1_False_resize <= resize(c_10, 21);
  c_21_10_1_False_shift <= shift_left(c_21_10_1_False_resize, 1);
  c_21_3_1_False_resize <= resize(c_3, 21);
  c_21_3_1_False_shift <= shift_left(c_21_3_1_False_resize, 1);
  c_21_10_0_False_resize <= resize(c_10, 21);
  c_21_10_0_False_shift <= shift_left(c_21_10_0_False_resize, 0);
  c_21_3_3_False_resize <= resize(c_3, 21);
  c_21_3_3_False_shift <= shift_left(c_21_3_3_False_resize, 3);
  with config_select_3 select c_21_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_10_1_False_shift;
        when "01" => c_21 <= c_21_3_1_False_shift;
        when "10" => c_21 <= c_21_10_0_False_shift;
        when others => c_21 <= c_21_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 22 and associated fundamentals [[123], [177], [53], [139]]
  with config_select_4 select c_22_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
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
      sub_i => c_22_sub_sel,
      x_i => c_21,
      y_i => c_20,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[36], [9], [56], [56]]
  c_23_6_3_False_resize <= resize(c_6, 22);
  c_23_6_3_False_shift <= shift_left(c_23_6_3_False_resize, 3);
  c_23_6_0_False_resize <= resize(c_6, 22);
  c_23_6_0_False_shift <= shift_left(c_23_6_0_False_resize, 0);
  c_23_8_2_False_resize <= resize(c_8, 22);
  c_23_8_2_False_shift <= shift_left(c_23_8_2_False_resize, 2);
  with config_select_3 select c_23_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_6_3_False_shift;
        when "01" => c_23 <= c_23_6_0_False_shift;
        when others => c_23 <= c_23_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[3], [3], [7], [30]]
  c_24_5_1_False_resize <= resize(c_5, 21);
  c_24_5_1_False_shift <= shift_left(c_24_5_1_False_resize, 1);
  c_24_3_0_False_resize <= resize(c_3, 21);
  c_24_3_0_False_shift <= shift_left(c_24_3_0_False_resize, 0);
  c_24_6_0_False_resize <= resize(c_6, 21);
  c_24_6_0_False_shift <= shift_left(c_24_6_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_5_1_False_shift;
        when "01" => c_24 <= c_24_3_0_False_shift;
        when others => c_24 <= c_24_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 25 and associated fundamentals [[141], [39], [217], [194]]
  with config_select_4 select c_25_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
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
      sub_i => c_25_sub_sel,
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
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[9], [18], [10], [5]]
  c_26_3_0_False_resize <= resize(c_3, 21);
  c_26_3_0_False_shift <= shift_left(c_26_3_0_False_resize, 0);
  c_26_10_1_False_resize <= resize(c_10, 21);
  c_26_10_1_False_shift <= shift_left(c_26_10_1_False_resize, 1);
  c_26_6_1_False_resize <= resize(c_6, 21);
  c_26_6_1_False_shift <= shift_left(c_26_6_1_False_resize, 1);
  c_26_8_0_False_resize <= resize(c_8, 21);
  c_26_8_0_False_shift <= shift_left(c_26_8_0_False_resize, 0);
  with config_select_3 select c_26_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_3_0_False_shift;
        when "01" => c_26 <= c_26_10_1_False_shift;
        when "10" => c_26 <= c_26_6_1_False_shift;
        when others => c_26 <= c_26_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[15], [3], [12], [10]]
  c_27_3_2_False_resize <= resize(c_3, 20);
  c_27_3_2_False_shift <= shift_left(c_27_3_2_False_resize, 2);
  c_27_3_1_False_resize <= resize(c_3, 20);
  c_27_3_1_False_shift <= shift_left(c_27_3_1_False_resize, 1);
  c_27_10_0_False_resize <= c_10;
  c_27_10_0_False_shift <= shift_left(c_27_10_0_False_resize, 0);
  c_27_3_0_False_resize <= resize(c_3, 20);
  c_27_3_0_False_shift <= shift_left(c_27_3_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_3_2_False_shift;
        when "01" => c_27 <= c_27_3_1_False_shift;
        when "10" => c_27 <= c_27_10_0_False_shift;
        when others => c_27 <= c_27_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 28 and associated fundamentals [[249], [66], [202], [155]]
  with config_select_4 select c_28_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
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
      sub_i => c_28_sub_sel,
      x_i => c_27,
      y_i => c_26,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[12], [3], [6], [20]]
  c_29_3_2_False_resize <= resize(c_3, 21);
  c_29_3_2_False_shift <= shift_left(c_29_3_2_False_resize, 2);
  c_29_3_1_False_resize <= resize(c_3, 21);
  c_29_3_1_False_shift <= shift_left(c_29_3_1_False_resize, 1);
  c_29_3_0_False_resize <= resize(c_3, 21);
  c_29_3_0_False_shift <= shift_left(c_29_3_0_False_resize, 0);
  with config_select_3 select c_29_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_3_2_False_shift;
        when "01" => c_29 <= c_29_3_1_False_shift;
        when others => c_29 <= c_29_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[0], [0], [7], [0]]
  c_30_6_0_False_resize <= c_6(18 downto 0);
  c_30_6_0_False_shift <= shift_left(c_30_6_0_False_resize, 0);
  with config_select_3 select c_30_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_6_0_False_shift;
        when others => c_30 <= to_signed(0, 19);
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 31 and associated fundamentals [[24], [6], [236], [40]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[9], [14], [20], [3]]
  c_32_8_1_False_resize <= resize(c_8, 21);
  c_32_8_1_False_shift <= shift_left(c_32_8_1_False_resize, 1);
  c_32_8_0_False_resize <= resize(c_8, 21);
  c_32_8_0_False_shift <= shift_left(c_32_8_0_False_resize, 0);
  c_32_10_2_False_resize <= resize(c_10, 21);
  c_32_10_2_False_shift <= shift_left(c_32_10_2_False_resize, 2);
  with config_select_3 select c_32_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_8_1_False_shift;
        when "01" => c_32 <= c_32_8_0_False_shift;
        when others => c_32 <= c_32_10_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[48], [3], [7], [0]]
  c_33_3_4_False_resize <= resize(c_3, 22);
  c_33_3_4_False_shift <= shift_left(c_33_3_4_False_resize, 4);
  c_33_3_0_False_resize <= resize(c_3, 22);
  c_33_3_0_False_shift <= shift_left(c_33_3_0_False_resize, 0);
  c_33_6_0_False_resize <= resize(c_6, 22);
  c_33_6_0_False_shift <= shift_left(c_33_6_0_False_resize, 0);
  with config_select_3 select c_33_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_3_4_False_shift;
        when "01" => c_33 <= c_33_3_0_False_shift;
        when "10" => c_33 <= c_33_6_0_False_shift;
        when others => c_33 <= to_signed(0, 22);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 34 and associated fundamentals [[132], [50], [94], [12]]
  with config_select_4 select c_34_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 1,
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
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[10], [15], [24], [30]]
  c_35_5_1_False_resize <= resize(c_5, 21);
  c_35_5_1_False_shift <= shift_left(c_35_5_1_False_resize, 1);
  c_35_10_0_False_resize <= resize(c_10, 21);
  c_35_10_0_False_shift <= shift_left(c_35_10_0_False_resize, 0);
  c_35_3_3_False_resize <= resize(c_3, 21);
  c_35_3_3_False_shift <= shift_left(c_35_3_3_False_resize, 3);
  with config_select_3 select c_35_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_5_1_False_shift;
        when "01" => c_35 <= c_35_10_0_False_shift;
        when others => c_35 <= c_35_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 36 and associated fundamentals [[3], [7], [9], [3]]
  c_36_8_0_False_resize <= c_8;
  c_36_8_0_False_shift <= shift_left(c_36_8_0_False_resize, 0);
  c_36_3_0_False_resize <= resize(c_3, 20);
  c_36_3_0_False_shift <= shift_left(c_36_3_0_False_resize, 0);
  with config_select_3 select c_36_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_8_0_False_shift;
        when others => c_36 <= c_36_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 37 and associated fundamentals [[77], [127], [183], [237]]
  with config_select_4 select c_37_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
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
      sub_i => c_37_sub_sel,
      x_i => c_35,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 38 and associated fundamentals [[7], [9], [3], [96]]
  c_38_8_5_False_resize <= resize(c_8, 23);
  c_38_8_5_False_shift <= shift_left(c_38_8_5_False_resize, 5);
  c_38_6_0_False_resize <= resize(c_6, 23);
  c_38_6_0_False_shift <= shift_left(c_38_6_0_False_resize, 0);
  c_38_3_0_False_resize <= resize(c_3, 23);
  c_38_3_0_False_shift <= shift_left(c_38_3_0_False_resize, 0);
  with config_select_3 select c_38_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_8_5_False_shift;
        when "01" => c_38 <= c_38_6_0_False_shift;
        when others => c_38 <= c_38_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 39 and associated fundamentals [[36], [56], [36], [5]]
  c_39_3_0_False_resize <= resize(c_3, 22);
  c_39_3_0_False_shift <= shift_left(c_39_3_0_False_resize, 0);
  c_39_8_3_False_resize <= resize(c_8, 22);
  c_39_8_3_False_shift <= shift_left(c_39_8_3_False_resize, 3);
  c_39_8_2_False_resize <= resize(c_8, 22);
  c_39_8_2_False_shift <= shift_left(c_39_8_2_False_resize, 2);
  with config_select_3 select c_39_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_3_0_False_shift;
        when "01" => c_39 <= c_39_8_3_False_shift;
        when others => c_39 <= c_39_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 40 and associated fundamentals [[158], [242], [150], [212]]
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_38,
      y_i => c_39,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[132], [50], [94], [12]]
  c_41_resize <= c_34;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[123], [177], [53], [139]]
  c_42_resize <= c_22;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[249], [66], [202], [155]]
  c_43_resize <= c_28;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[15], [109], [196], [162]]
  c_44_resize <= c_13;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[158], [242], [150], [212]]
  c_45_resize <= c_40;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[77], [127], [183], [237]]
  c_46_resize <= c_37;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[141], [39], [217], [194]]
  c_47_resize <= c_25;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[43], [154], [234], [222]]
  c_48_resize <= c_16;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 4 with id 49 and associated fundamentals [[93], [79], [9], [38]]
  c_49_resize <= c_19;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 4 with id 50 and associated fundamentals [[24], [6], [236], [40]]
  c_50_resize <= c_31;
  c_50 <= shift_left(c_50_resize, 0);
end architecture;

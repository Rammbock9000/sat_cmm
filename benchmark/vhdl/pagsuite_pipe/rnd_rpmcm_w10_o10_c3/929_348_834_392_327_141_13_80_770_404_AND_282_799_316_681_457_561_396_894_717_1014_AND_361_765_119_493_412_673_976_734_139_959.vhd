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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_4_2_0_False_resize: signed(17 downto 0);
  signal c_4_2_0_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(15 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_i0_resize: signed(18 downto 0);
  signal c_7_i1_resize: signed(18 downto 0);
  signal c_7_i0_shift: signed(18 downto 0);
  signal c_7_i1_shift: signed(18 downto 0);
  signal c_7_arith: signed(18 downto 0);
  signal c_7_oshift: signed(18 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_i0_resize: signed(21 downto 0);
  signal c_8_i1_resize: signed(21 downto 0);
  signal c_8_i0_shift: signed(21 downto 0);
  signal c_8_i1_shift: signed(21 downto 0);
  signal c_8_arith: signed(21 downto 0);
  signal c_8_oshift: signed(21 downto 0);
  signal c_9: signed(17 downto 0);
  signal c_9_2_0_False_resize: signed(17 downto 0);
  signal c_9_2_0_False_shift: signed(17 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_i0_resize: signed(21 downto 0);
  signal c_10_i1_resize: signed(21 downto 0);
  signal c_10_i0_shift: signed(21 downto 0);
  signal c_10_i1_shift: signed(21 downto 0);
  signal c_10_arith: signed(21 downto 0);
  signal c_10_oshift: signed(21 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(21 downto 0);
  signal c_13_i0_resize: signed(21 downto 0);
  signal c_13_i1_resize: signed(21 downto 0);
  signal c_13_i0_shift: signed(21 downto 0);
  signal c_13_i1_shift: signed(21 downto 0);
  signal c_13_arith: signed(21 downto 0);
  signal c_13_oshift: signed(21 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_5_5_False_resize: signed(22 downto 0);
  signal c_14_5_5_False_shift: signed(22 downto 0);
  signal c_14_7_0_False_resize: signed(22 downto 0);
  signal c_14_7_0_False_shift: signed(22 downto 0);
  signal c_14_13_0_False_resize: signed(22 downto 0);
  signal c_14_13_0_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_15_5_4_False_resize: signed(21 downto 0);
  signal c_15_5_4_False_shift: signed(21 downto 0);
  signal c_15_5_0_False_resize: signed(21 downto 0);
  signal c_15_5_0_False_shift: signed(21 downto 0);
  signal c_15_7_0_False_resize: signed(21 downto 0);
  signal c_15_7_0_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(23 downto 0);
  signal c_17_5_1_False_resize: signed(23 downto 0);
  signal c_17_5_1_False_shift: signed(23 downto 0);
  signal c_17_7_5_False_resize: signed(23 downto 0);
  signal c_17_7_5_False_shift: signed(23 downto 0);
  signal c_17_5_0_False_resize: signed(23 downto 0);
  signal c_17_5_0_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_5_7_False_resize: signed(25 downto 0);
  signal c_18_5_7_False_shift: signed(25 downto 0);
  signal c_18_8_4_False_resize: signed(25 downto 0);
  signal c_18_8_4_False_shift: signed(25 downto 0);
  signal c_18_7_0_False_resize: signed(25 downto 0);
  signal c_18_7_0_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_12_1_False_resize: signed(23 downto 0);
  signal c_20_12_1_False_shift: signed(23 downto 0);
  signal c_20_5_0_False_resize: signed(23 downto 0);
  signal c_20_5_0_False_shift: signed(23 downto 0);
  signal c_20_7_4_False_resize: signed(23 downto 0);
  signal c_20_7_4_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_11_0_False_resize: signed(24 downto 0);
  signal c_21_11_0_False_shift: signed(24 downto 0);
  signal c_21_11_2_False_resize: signed(24 downto 0);
  signal c_21_11_2_False_shift: signed(24 downto 0);
  signal c_21_5_0_False_resize: signed(24 downto 0);
  signal c_21_5_0_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(22 downto 0);
  signal c_23_7_4_False_resize: signed(22 downto 0);
  signal c_23_7_4_False_shift: signed(22 downto 0);
  signal c_23_10_0_False_resize: signed(22 downto 0);
  signal c_23_10_0_False_shift: signed(22 downto 0);
  signal c_23_10_5_False_resize: signed(22 downto 0);
  signal c_23_10_5_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_5_2_False_resize: signed(22 downto 0);
  signal c_24_5_2_False_shift: signed(22 downto 0);
  signal c_24_12_0_False_resize: signed(22 downto 0);
  signal c_24_12_0_False_shift: signed(22 downto 0);
  signal c_24_10_0_False_resize: signed(22 downto 0);
  signal c_24_10_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_5_2_False_resize: signed(24 downto 0);
  signal c_26_5_2_False_shift: signed(24 downto 0);
  signal c_26_7_6_False_resize: signed(24 downto 0);
  signal c_26_7_6_False_shift: signed(24 downto 0);
  signal c_26_5_0_False_resize: signed(24 downto 0);
  signal c_26_5_0_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_13_4_False_resize: signed(25 downto 0);
  signal c_27_13_4_False_shift: signed(25 downto 0);
  signal c_27_11_2_False_resize: signed(25 downto 0);
  signal c_27_11_2_False_shift: signed(25 downto 0);
  signal c_27_13_0_False_resize: signed(25 downto 0);
  signal c_27_13_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_29_10_4_False_resize: signed(21 downto 0);
  signal c_29_10_4_False_shift: signed(21 downto 0);
  signal c_29_8_0_False_resize: signed(21 downto 0);
  signal c_29_8_0_False_shift: signed(21 downto 0);
  signal c_29_5_1_False_resize: signed(21 downto 0);
  signal c_29_5_1_False_shift: signed(21 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_30_12_0_False_resize: signed(22 downto 0);
  signal c_30_12_0_False_shift: signed(22 downto 0);
  signal c_30_10_0_False_resize: signed(22 downto 0);
  signal c_30_10_0_False_shift: signed(22 downto 0);
  signal c_30_8_0_False_resize: signed(22 downto 0);
  signal c_30_8_0_False_shift: signed(22 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_i0_resize: signed(25 downto 0);
  signal c_31_i1_resize: signed(25 downto 0);
  signal c_31_i0_shift: signed(25 downto 0);
  signal c_31_i1_shift: signed(25 downto 0);
  signal c_31_arith: signed(25 downto 0);
  signal c_31_oshift: signed(25 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(21 downto 0);
  signal c_32_10_4_False_resize: signed(21 downto 0);
  signal c_32_10_4_False_shift: signed(21 downto 0);
  signal c_32_10_0_False_resize: signed(21 downto 0);
  signal c_32_10_0_False_shift: signed(21 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_33_12_0_False_resize: signed(22 downto 0);
  signal c_33_12_0_False_shift: signed(22 downto 0);
  signal c_33_7_2_False_resize: signed(22 downto 0);
  signal c_33_7_2_False_shift: signed(22 downto 0);
  signal c_33_8_0_False_resize: signed(22 downto 0);
  signal c_33_8_0_False_shift: signed(22 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_34_i0_resize: signed(24 downto 0);
  signal c_34_i1_resize: signed(24 downto 0);
  signal c_34_i0_shift: signed(24 downto 0);
  signal c_34_i1_shift: signed(24 downto 0);
  signal c_34_arith: signed(24 downto 0);
  signal c_34_oshift: signed(24 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(23 downto 0);
  signal c_35_12_1_False_resize: signed(23 downto 0);
  signal c_35_12_1_False_shift: signed(23 downto 0);
  signal c_35_10_2_False_resize: signed(23 downto 0);
  signal c_35_10_2_False_shift: signed(23 downto 0);
  signal c_35_8_0_False_resize: signed(23 downto 0);
  signal c_35_8_0_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(18 downto 0);
  signal c_36_7_0_False_resize: signed(18 downto 0);
  signal c_36_7_0_False_shift: signed(18 downto 0);
  signal c_36_5_0_False_resize: signed(18 downto 0);
  signal c_36_5_0_False_shift: signed(18 downto 0);
  signal c_36_5_1_False_resize: signed(18 downto 0);
  signal c_36_5_1_False_shift: signed(18 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(22 downto 0);
  signal c_38_5_5_False_resize: signed(22 downto 0);
  signal c_38_5_5_False_shift: signed(22 downto 0);
  signal c_38_7_3_False_resize: signed(22 downto 0);
  signal c_38_7_3_False_shift: signed(22 downto 0);
  signal c_38_10_0_False_resize: signed(22 downto 0);
  signal c_38_10_0_False_shift: signed(22 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_8_1_False_resize: signed(23 downto 0);
  signal c_39_8_1_False_shift: signed(23 downto 0);
  signal c_39_12_0_False_resize: signed(23 downto 0);
  signal c_39_12_0_False_shift: signed(23 downto 0);
  signal c_39_8_2_False_resize: signed(23 downto 0);
  signal c_39_8_2_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_i0_resize: signed(25 downto 0);
  signal c_40_i1_resize: signed(25 downto 0);
  signal c_40_i0_shift: signed(25 downto 0);
  signal c_40_i1_shift: signed(25 downto 0);
  signal c_40_arith: signed(25 downto 0);
  signal c_40_oshift: signed(25 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(22 downto 0);
  signal c_41_5_3_False_resize: signed(22 downto 0);
  signal c_41_5_3_False_shift: signed(22 downto 0);
  signal c_41_7_4_False_resize: signed(22 downto 0);
  signal c_41_7_4_False_shift: signed(22 downto 0);
  signal c_41_8_0_False_resize: signed(22 downto 0);
  signal c_41_8_0_False_shift: signed(22 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_42_10_1_False_resize: signed(22 downto 0);
  signal c_42_10_1_False_shift: signed(22 downto 0);
  signal c_42_11_0_False_resize: signed(22 downto 0);
  signal c_42_11_0_False_shift: signed(22 downto 0);
  signal c_42_8_0_False_resize: signed(22 downto 0);
  signal c_42_8_0_False_shift: signed(22 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_i0_resize: signed(25 downto 0);
  signal c_43_i1_resize: signed(25 downto 0);
  signal c_43_i0_shift: signed(25 downto 0);
  signal c_43_i1_shift: signed(25 downto 0);
  signal c_43_arith: signed(25 downto 0);
  signal c_43_oshift: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_resize: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_resize: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_resize: signed(24 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_resize: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_resize: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 1 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 2 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 3 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 4 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 5 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 6 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 7 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 8 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 9 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_53);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[3], [3], [3]]
  inst_adder_node_2: entity work.adder_node
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
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[3], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[0], [0], [3]]
  c_4_2_0_False_resize <= c_2;
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_2_0_False_shift;
        when others => c_4 <= to_signed(0, 18);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[3], [3], [45]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 22,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_1 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 7 and associated fundamentals [[7], [7], [7]]
  inst_adder_node_7: entity work.adder_node
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
      x_i => c_6,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 8 and associated fundamentals [[33], [33], [33]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_6,
      y_i => c_6,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[3], [3], [0]]
  c_9_2_0_False_resize <= c_2;
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_2_0_False_shift;
        when others => c_9 <= to_signed(0, 18);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 10 and associated fundamentals [[45], [45], [3]]
  with config_select_3 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 22,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_3,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 11 and associated fundamentals [[95], [95], [97]]
  with config_select_3 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 23,
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
      sub_i => c_11_sub_sel,
      x_i => c_3,
      y_i => c_6,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 12 and associated fundamentals [[97], [97], [95]]
  with config_select_3 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 23,
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
      sub_i => c_12_sub_sel,
      x_i => c_3,
      y_i => c_6,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 13 and associated fundamentals [[63], [63], [63]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 6,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_6,
      y_i => c_6,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[96], [63], [7]]
  c_14_5_5_False_resize <= resize(c_5, 23);
  c_14_5_5_False_shift <= shift_left(c_14_5_5_False_resize, 5);
  c_14_7_0_False_resize <= resize(c_7, 23);
  c_14_7_0_False_shift <= shift_left(c_14_7_0_False_resize, 0);
  c_14_13_0_False_resize <= resize(c_13, 23);
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  with config_select_4 select c_14_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_5_5_False_shift;
        when "01" => c_14 <= c_14_7_0_False_shift;
        when others => c_14 <= c_14_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[7], [48], [45]]
  c_15_5_4_False_resize <= c_5;
  c_15_5_4_False_shift <= shift_left(c_15_5_4_False_resize, 4);
  c_15_5_0_False_resize <= c_5;
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  c_15_7_0_False_resize <= resize(c_7, 22);
  c_15_7_0_False_shift <= shift_left(c_15_7_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_5_4_False_shift;
        when "01" => c_15 <= c_15_5_0_False_shift;
        when others => c_15 <= c_15_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 16 and associated fundamentals [[80], [894], [734]]
  with config_select_5 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 1,
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
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[3], [6], [224]]
  c_17_5_1_False_resize <= resize(c_5, 24);
  c_17_5_1_False_shift <= shift_left(c_17_5_1_False_resize, 1);
  c_17_7_5_False_resize <= resize(c_7, 24);
  c_17_7_5_False_shift <= shift_left(c_17_7_5_False_resize, 5);
  c_17_5_0_False_resize <= resize(c_5, 24);
  c_17_5_0_False_shift <= shift_left(c_17_5_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_5_1_False_shift;
        when "01" => c_17 <= c_17_7_5_False_shift;
        when others => c_17 <= c_17_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[7], [384], [528]]
  c_18_5_7_False_resize <= resize(c_5, 26);
  c_18_5_7_False_shift <= shift_left(c_18_5_7_False_resize, 7);
  c_18_8_4_False_resize <= resize(c_8, 26);
  c_18_8_4_False_shift <= shift_left(c_18_8_4_False_resize, 4);
  c_18_7_0_False_resize <= resize(c_7, 26);
  c_18_7_0_False_shift <= shift_left(c_18_7_0_False_resize, 0);
  with config_select_4 select c_18_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_5_7_False_shift;
        when "01" => c_18 <= c_18_8_4_False_shift;
        when others => c_18 <= c_18_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 19 and associated fundamentals [[13], [396], [976]]
  inst_adder_node_19: entity work.adder_node
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
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[3], [194], [112]]
  c_20_12_1_False_resize <= resize(c_12, 24);
  c_20_12_1_False_shift <= shift_left(c_20_12_1_False_resize, 1);
  c_20_5_0_False_resize <= resize(c_5, 24);
  c_20_5_0_False_shift <= shift_left(c_20_5_0_False_resize, 0);
  c_20_7_4_False_resize <= resize(c_7, 24);
  c_20_7_4_False_shift <= shift_left(c_20_7_4_False_resize, 4);
  with config_select_4 select c_20_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_12_1_False_shift;
        when "01" => c_20 <= c_20_5_0_False_shift;
        when others => c_20 <= c_20_7_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[380], [95], [45]]
  c_21_11_0_False_resize <= resize(c_11, 25);
  c_21_11_0_False_shift <= shift_left(c_21_11_0_False_resize, 0);
  c_21_11_2_False_resize <= resize(c_11, 25);
  c_21_11_2_False_shift <= shift_left(c_21_11_2_False_resize, 2);
  c_21_5_0_False_resize <= resize(c_5, 25);
  c_21_5_0_False_shift <= shift_left(c_21_5_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_11_0_False_shift;
        when "01" => c_21 <= c_21_11_2_False_shift;
        when others => c_21 <= c_21_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 22 and associated fundamentals [[392], [681], [493]]
  with config_select_5 select c_22_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[45], [112], [96]]
  c_23_7_4_False_resize <= resize(c_7, 23);
  c_23_7_4_False_shift <= shift_left(c_23_7_4_False_resize, 4);
  c_23_10_0_False_resize <= resize(c_10, 23);
  c_23_10_0_False_shift <= shift_left(c_23_10_0_False_resize, 0);
  c_23_10_5_False_resize <= resize(c_10, 23);
  c_23_10_5_False_shift <= shift_left(c_23_10_5_False_resize, 5);
  with config_select_4 select c_23_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_7_4_False_shift;
        when "01" => c_23 <= c_23_10_0_False_shift;
        when others => c_23 <= c_23_10_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[12], [97], [3]]
  c_24_5_2_False_resize <= resize(c_5, 23);
  c_24_5_2_False_shift <= shift_left(c_24_5_2_False_resize, 2);
  c_24_12_0_False_resize <= c_12;
  c_24_12_0_False_shift <= shift_left(c_24_12_0_False_resize, 0);
  c_24_10_0_False_resize <= resize(c_10, 23);
  c_24_10_0_False_shift <= shift_left(c_24_10_0_False_resize, 0);
  with config_select_4 select c_24_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_5_2_False_shift;
        when "01" => c_24 <= c_24_12_0_False_shift;
        when others => c_24 <= c_24_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 25 and associated fundamentals [[348], [799], [765]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 26,
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
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[12], [3], [448]]
  c_26_5_2_False_resize <= resize(c_5, 25);
  c_26_5_2_False_shift <= shift_left(c_26_5_2_False_resize, 2);
  c_26_7_6_False_resize <= resize(c_7, 25);
  c_26_7_6_False_shift <= shift_left(c_26_7_6_False_resize, 6);
  c_26_5_0_False_resize <= resize(c_5, 25);
  c_26_5_0_False_shift <= shift_left(c_26_5_0_False_resize, 0);
  with config_select_4 select c_26_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_5_2_False_shift;
        when "01" => c_26 <= c_26_7_6_False_shift;
        when others => c_26 <= c_26_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[380], [1008], [63]]
  c_27_13_4_False_resize <= resize(c_13, 26);
  c_27_13_4_False_shift <= shift_left(c_27_13_4_False_resize, 4);
  c_27_11_2_False_resize <= resize(c_11, 26);
  c_27_11_2_False_shift <= shift_left(c_27_11_2_False_resize, 2);
  c_27_13_0_False_resize <= resize(c_13, 26);
  c_27_13_0_False_shift <= shift_left(c_27_13_0_False_resize, 0);
  with config_select_4 select c_27_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_13_4_False_shift;
        when "01" => c_27 <= c_27_11_2_False_shift;
        when others => c_27 <= c_27_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 28 and associated fundamentals [[404], [1014], [959]]
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 25,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[6], [33], [48]]
  c_29_10_4_False_resize <= c_10;
  c_29_10_4_False_shift <= shift_left(c_29_10_4_False_resize, 4);
  c_29_8_0_False_resize <= c_8;
  c_29_8_0_False_shift <= shift_left(c_29_8_0_False_resize, 0);
  c_29_5_1_False_resize <= c_5;
  c_29_5_1_False_shift <= shift_left(c_29_5_1_False_resize, 1);
  with config_select_4 select c_29_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_10_4_False_shift;
        when "01" => c_29 <= c_29_8_0_False_shift;
        when others => c_29 <= c_29_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 30 and associated fundamentals [[45], [33], [95]]
  c_30_12_0_False_resize <= c_12;
  c_30_12_0_False_shift <= shift_left(c_30_12_0_False_resize, 0);
  c_30_10_0_False_resize <= resize(c_10, 23);
  c_30_10_0_False_shift <= shift_left(c_30_10_0_False_resize, 0);
  c_30_8_0_False_resize <= resize(c_8, 23);
  c_30_8_0_False_shift <= shift_left(c_30_8_0_False_resize, 0);
  with config_select_4 select c_30_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_12_0_False_shift;
        when "01" => c_30 <= c_30_10_0_False_shift;
        when others => c_30 <= c_30_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 31 and associated fundamentals [[141], [561], [673]]
  with config_select_5 select c_31_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_31_sub_sel,
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 32 and associated fundamentals [[45], [45], [48]]
  c_32_10_4_False_resize <= c_10;
  c_32_10_4_False_shift <= shift_left(c_32_10_4_False_resize, 4);
  c_32_10_0_False_resize <= c_10;
  c_32_10_0_False_shift <= shift_left(c_32_10_0_False_resize, 0);
  with config_select_4 select c_32_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_10_4_False_shift;
        when others => c_32 <= c_32_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 33 and associated fundamentals [[33], [97], [28]]
  c_33_12_0_False_resize <= c_12;
  c_33_12_0_False_shift <= shift_left(c_33_12_0_False_resize, 0);
  c_33_7_2_False_resize <= resize(c_7, 23);
  c_33_7_2_False_shift <= shift_left(c_33_7_2_False_resize, 2);
  c_33_8_0_False_resize <= resize(c_8, 23);
  c_33_8_0_False_shift <= shift_left(c_33_8_0_False_resize, 0);
  with config_select_4 select c_33_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_12_0_False_shift;
        when "01" => c_33 <= c_33_7_2_False_shift;
        when others => c_33 <= c_33_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 34 and associated fundamentals [[327], [457], [412]]
  with config_select_5 select c_34_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 25,
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
      c_34 <= c_34_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 35 and associated fundamentals [[194], [180], [33]]
  c_35_12_1_False_resize <= resize(c_12, 24);
  c_35_12_1_False_shift <= shift_left(c_35_12_1_False_resize, 1);
  c_35_10_2_False_resize <= resize(c_10, 24);
  c_35_10_2_False_shift <= shift_left(c_35_10_2_False_resize, 2);
  c_35_8_0_False_resize <= resize(c_8, 24);
  c_35_8_0_False_shift <= shift_left(c_35_8_0_False_resize, 0);
  with config_select_4 select c_35_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_12_1_False_shift;
        when "01" => c_35 <= c_35_10_2_False_shift;
        when others => c_35 <= c_35_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 36 and associated fundamentals [[6], [3], [7]]
  c_36_7_0_False_resize <= c_7;
  c_36_7_0_False_shift <= shift_left(c_36_7_0_False_resize, 0);
  c_36_5_0_False_resize <= c_5(18 downto 0);
  c_36_5_0_False_shift <= shift_left(c_36_5_0_False_resize, 0);
  c_36_5_1_False_resize <= c_5(18 downto 0);
  c_36_5_1_False_shift <= shift_left(c_36_5_1_False_resize, 1);
  with config_select_4 select c_36_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_7_0_False_shift;
        when "01" => c_36 <= c_36_5_0_False_shift;
        when others => c_36 <= c_36_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 37 and associated fundamentals [[770], [717], [139]]
  with config_select_5 select c_37_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 19,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 38 and associated fundamentals [[96], [56], [3]]
  c_38_5_5_False_resize <= resize(c_5, 23);
  c_38_5_5_False_shift <= shift_left(c_38_5_5_False_resize, 5);
  c_38_7_3_False_resize <= resize(c_7, 23);
  c_38_7_3_False_shift <= shift_left(c_38_7_3_False_resize, 3);
  c_38_10_0_False_resize <= resize(c_10, 23);
  c_38_10_0_False_shift <= shift_left(c_38_10_0_False_resize, 0);
  with config_select_4 select c_38_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_5_5_False_shift;
        when "01" => c_38 <= c_38_7_3_False_shift;
        when others => c_38 <= c_38_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 39 and associated fundamentals [[66], [132], [95]]
  c_39_8_1_False_resize <= resize(c_8, 24);
  c_39_8_1_False_shift <= shift_left(c_39_8_1_False_resize, 1);
  c_39_12_0_False_resize <= resize(c_12, 24);
  c_39_12_0_False_shift <= shift_left(c_39_12_0_False_resize, 0);
  c_39_8_2_False_resize <= resize(c_8, 24);
  c_39_8_2_False_shift <= shift_left(c_39_8_2_False_resize, 2);
  with config_select_4 select c_39_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_8_1_False_shift;
        when "01" => c_39 <= c_39_12_0_False_shift;
        when others => c_39 <= c_39_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 40 and associated fundamentals [[834], [316], [119]]
  with config_select_5 select c_40_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_40_sub_sel,
      x_i => c_38,
      y_i => c_39,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 41 and associated fundamentals [[112], [24], [33]]
  c_41_5_3_False_resize <= resize(c_5, 23);
  c_41_5_3_False_shift <= shift_left(c_41_5_3_False_resize, 3);
  c_41_7_4_False_resize <= resize(c_7, 23);
  c_41_7_4_False_shift <= shift_left(c_41_7_4_False_resize, 4);
  c_41_8_0_False_resize <= resize(c_8, 23);
  c_41_8_0_False_shift <= shift_left(c_41_8_0_False_resize, 0);
  with config_select_4 select c_41_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_5_3_False_shift;
        when "01" => c_41 <= c_41_7_4_False_shift;
        when others => c_41 <= c_41_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[33], [90], [97]]
  c_42_10_1_False_resize <= resize(c_10, 23);
  c_42_10_1_False_shift <= shift_left(c_42_10_1_False_resize, 1);
  c_42_11_0_False_resize <= c_11;
  c_42_11_0_False_shift <= shift_left(c_42_11_0_False_resize, 0);
  c_42_8_0_False_resize <= resize(c_8, 23);
  c_42_8_0_False_shift <= shift_left(c_42_8_0_False_resize, 0);
  with config_select_4 select c_42_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_10_1_False_shift;
        when "01" => c_42 <= c_42_11_0_False_shift;
        when others => c_42 <= c_42_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 43 and associated fundamentals [[929], [282], [361]]
  inst_adder_node_43: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 0,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_43_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 44 and associated fundamentals [[929], [282], [361]]
  c_44_resize <= c_43;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 5 with id 45 and associated fundamentals [[348], [799], [765]]
  c_45_resize <= c_25;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 5 with id 46 and associated fundamentals [[834], [316], [119]]
  c_46_resize <= c_40;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 5 with id 47 and associated fundamentals [[392], [681], [493]]
  c_47_resize <= c_22;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 5 with id 48 and associated fundamentals [[327], [457], [412]]
  c_48_resize <= c_34;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 5 with id 49 and associated fundamentals [[141], [561], [673]]
  c_49_resize <= c_31;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 5 with id 50 and associated fundamentals [[13], [396], [976]]
  c_50_resize <= c_19;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 5 with id 51 and associated fundamentals [[80], [894], [734]]
  c_51_resize <= c_16;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'output' in stage 5 with id 52 and associated fundamentals [[770], [717], [139]]
  c_52_resize <= c_37;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'output' in stage 5 with id 53 and associated fundamentals [[404], [1014], [959]]
  c_53_resize <= c_28;
  c_53 <= shift_left(c_53_resize, 0);
end architecture;

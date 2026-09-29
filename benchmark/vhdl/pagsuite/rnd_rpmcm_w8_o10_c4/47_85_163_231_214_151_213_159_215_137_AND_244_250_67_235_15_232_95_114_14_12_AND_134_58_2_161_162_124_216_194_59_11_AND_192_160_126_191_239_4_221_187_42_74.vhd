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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_2_0_False_resize: signed(18 downto 0);
  signal c_4_2_0_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(18 downto 0);
  signal c_6_1_1_False_resize: signed(18 downto 0);
  signal c_6_1_1_False_shift: signed(18 downto 0);
  signal c_6_2_0_False_resize: signed(18 downto 0);
  signal c_6_2_0_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_i0_resize: signed(19 downto 0);
  signal c_7_i1_resize: signed(19 downto 0);
  signal c_7_i0_shift: signed(19 downto 0);
  signal c_7_i1_shift: signed(19 downto 0);
  signal c_7_arith: signed(19 downto 0);
  signal c_7_oshift: signed(19 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(18 downto 0);
  signal c_8_1_1_False_resize: signed(18 downto 0);
  signal c_8_1_1_False_shift: signed(18 downto 0);
  signal c_8_2_0_False_resize: signed(18 downto 0);
  signal c_8_2_0_False_shift: signed(18 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_i0_resize: signed(19 downto 0);
  signal c_9_i1_resize: signed(19 downto 0);
  signal c_9_i0_shift: signed(19 downto 0);
  signal c_9_i1_shift: signed(19 downto 0);
  signal c_9_arith: signed(19 downto 0);
  signal c_9_oshift: signed(19 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(18 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_i0_resize: signed(20 downto 0);
  signal c_11_i1_resize: signed(20 downto 0);
  signal c_11_i0_shift: signed(20 downto 0);
  signal c_11_i1_shift: signed(20 downto 0);
  signal c_11_arith: signed(20 downto 0);
  signal c_11_oshift: signed(20 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_2_3_False_resize: signed(21 downto 0);
  signal c_12_2_3_False_shift: signed(21 downto 0);
  signal c_12_2_0_False_resize: signed(21 downto 0);
  signal c_12_2_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(24 downto 0);
  signal c_14_13_7_False_resize: signed(24 downto 0);
  signal c_14_13_7_False_shift: signed(24 downto 0);
  signal c_14_9_5_False_resize: signed(24 downto 0);
  signal c_14_9_5_False_shift: signed(24 downto 0);
  signal c_14_13_0_False_resize: signed(24 downto 0);
  signal c_14_13_0_False_shift: signed(24 downto 0);
  signal c_14_5_2_False_resize: signed(24 downto 0);
  signal c_14_5_2_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_5_5_False_resize: signed(22 downto 0);
  signal c_15_5_5_False_shift: signed(22 downto 0);
  signal c_15_7_0_False_resize: signed(22 downto 0);
  signal c_15_7_0_False_shift: signed(22 downto 0);
  signal c_15_11_2_False_resize: signed(22 downto 0);
  signal c_15_11_2_False_shift: signed(22 downto 0);
  signal c_15_13_5_False_resize: signed(22 downto 0);
  signal c_15_13_5_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(23 downto 0);
  signal c_17_13_5_False_resize: signed(23 downto 0);
  signal c_17_13_5_False_shift: signed(23 downto 0);
  signal c_17_9_5_False_resize: signed(23 downto 0);
  signal c_17_9_5_False_shift: signed(23 downto 0);
  signal c_17_11_3_False_resize: signed(23 downto 0);
  signal c_17_11_3_False_shift: signed(23 downto 0);
  signal c_17_7_0_False_resize: signed(23 downto 0);
  signal c_17_7_0_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_18_11_0_False_resize: signed(21 downto 0);
  signal c_18_11_0_False_shift: signed(21 downto 0);
  signal c_18_7_0_False_resize: signed(21 downto 0);
  signal c_18_7_0_False_shift: signed(21 downto 0);
  signal c_18_7_3_False_resize: signed(21 downto 0);
  signal c_18_7_3_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_7_3_False_resize: signed(22 downto 0);
  signal c_20_7_3_False_shift: signed(22 downto 0);
  signal c_20_13_0_False_resize: signed(22 downto 0);
  signal c_20_13_0_False_shift: signed(22 downto 0);
  signal c_20_13_6_False_resize: signed(22 downto 0);
  signal c_20_13_6_False_shift: signed(22 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_7_0_False_resize: signed(23 downto 0);
  signal c_21_7_0_False_shift: signed(23 downto 0);
  signal c_21_5_3_False_resize: signed(23 downto 0);
  signal c_21_5_3_False_shift: signed(23 downto 0);
  signal c_21_9_5_False_resize: signed(23 downto 0);
  signal c_21_9_5_False_shift: signed(23 downto 0);
  signal c_21_5_0_False_resize: signed(23 downto 0);
  signal c_21_5_0_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(19 downto 0);
  signal c_23_9_0_False_resize: signed(19 downto 0);
  signal c_23_9_0_False_shift: signed(19 downto 0);
  signal c_23_7_1_False_resize: signed(19 downto 0);
  signal c_23_7_1_False_shift: signed(19 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_25: signed(20 downto 0);
  signal c_25_7_1_False_resize: signed(20 downto 0);
  signal c_25_7_1_False_shift: signed(20 downto 0);
  signal c_25_13_1_False_resize: signed(20 downto 0);
  signal c_25_13_1_False_shift: signed(20 downto 0);
  signal c_25_13_0_False_resize: signed(20 downto 0);
  signal c_25_13_0_False_shift: signed(20 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_13_7_False_resize: signed(22 downto 0);
  signal c_26_13_7_False_shift: signed(22 downto 0);
  signal c_26_7_7_False_resize: signed(22 downto 0);
  signal c_26_7_7_False_shift: signed(22 downto 0);
  signal c_26_13_0_False_resize: signed(22 downto 0);
  signal c_26_13_0_False_shift: signed(22 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(21 downto 0);
  signal c_28_7_2_False_resize: signed(21 downto 0);
  signal c_28_7_2_False_shift: signed(21 downto 0);
  signal c_28_11_0_False_resize: signed(21 downto 0);
  signal c_28_11_0_False_shift: signed(21 downto 0);
  signal c_28_7_3_False_resize: signed(21 downto 0);
  signal c_28_7_3_False_shift: signed(21 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_5_1_False_resize: signed(23 downto 0);
  signal c_29_5_1_False_shift: signed(23 downto 0);
  signal c_29_11_1_False_resize: signed(23 downto 0);
  signal c_29_11_1_False_shift: signed(23 downto 0);
  signal c_29_5_0_False_resize: signed(23 downto 0);
  signal c_29_5_0_False_shift: signed(23 downto 0);
  signal c_29_7_0_False_resize: signed(23 downto 0);
  signal c_29_7_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(21 downto 0);
  signal c_31_9_3_False_resize: signed(21 downto 0);
  signal c_31_9_3_False_shift: signed(21 downto 0);
  signal c_31_9_1_False_resize: signed(21 downto 0);
  signal c_31_9_1_False_shift: signed(21 downto 0);
  signal c_31_13_0_False_resize: signed(21 downto 0);
  signal c_31_13_0_False_shift: signed(21 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_13_7_False_resize: signed(22 downto 0);
  signal c_32_13_7_False_shift: signed(22 downto 0);
  signal c_32_13_0_False_resize: signed(22 downto 0);
  signal c_32_13_0_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_i0_resize: signed(23 downto 0);
  signal c_33_i1_resize: signed(23 downto 0);
  signal c_33_i0_shift: signed(23 downto 0);
  signal c_33_i1_shift: signed(23 downto 0);
  signal c_33_arith: signed(23 downto 0);
  signal c_33_oshift: signed(23 downto 0);
  signal c_33_sub_sel_left: std_logic;
  signal c_33_sub_sel_right: std_logic;
  signal c_34: signed(23 downto 0);
  signal c_34_13_8_False_resize: signed(23 downto 0);
  signal c_34_13_8_False_shift: signed(23 downto 0);
  signal c_34_5_0_False_resize: signed(23 downto 0);
  signal c_34_5_0_False_shift: signed(23 downto 0);
  signal c_34_13_0_False_resize: signed(23 downto 0);
  signal c_34_13_0_False_shift: signed(23 downto 0);
  signal c_34_7_0_False_resize: signed(23 downto 0);
  signal c_34_7_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_7_3_False_resize: signed(22 downto 0);
  signal c_35_7_3_False_shift: signed(22 downto 0);
  signal c_35_9_2_False_resize: signed(22 downto 0);
  signal c_35_9_2_False_shift: signed(22 downto 0);
  signal c_35_9_3_False_resize: signed(22 downto 0);
  signal c_35_9_3_False_shift: signed(22 downto 0);
  signal c_35_5_0_False_resize: signed(22 downto 0);
  signal c_35_5_0_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_i0_resize: signed(23 downto 0);
  signal c_36_i1_resize: signed(23 downto 0);
  signal c_36_i0_shift: signed(23 downto 0);
  signal c_36_i1_shift: signed(23 downto 0);
  signal c_36_arith: signed(23 downto 0);
  signal c_36_oshift: signed(23 downto 0);
  signal c_36_sub_sel_left: std_logic;
  signal c_36_sub_sel_right: std_logic;
  signal c_37: signed(19 downto 0);
  signal c_37_9_0_False_resize: signed(19 downto 0);
  signal c_37_9_0_False_shift: signed(19 downto 0);
  signal c_37_7_1_False_resize: signed(19 downto 0);
  signal c_37_7_1_False_shift: signed(19 downto 0);
  signal c_37_13_3_False_resize: signed(19 downto 0);
  signal c_37_13_3_False_shift: signed(19 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_38_9_0_False_resize: signed(22 downto 0);
  signal c_38_9_0_False_shift: signed(22 downto 0);
  signal c_38_7_1_False_resize: signed(22 downto 0);
  signal c_38_7_1_False_shift: signed(22 downto 0);
  signal c_38_13_0_False_resize: signed(22 downto 0);
  signal c_38_13_0_False_shift: signed(22 downto 0);
  signal c_38_13_1_False_resize: signed(22 downto 0);
  signal c_38_13_1_False_shift: signed(22 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_i0_resize: signed(23 downto 0);
  signal c_39_i1_resize: signed(23 downto 0);
  signal c_39_i0_shift: signed(23 downto 0);
  signal c_39_i1_shift: signed(23 downto 0);
  signal c_39_arith: signed(23 downto 0);
  signal c_39_oshift: signed(23 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(22 downto 0);
  signal c_40_9_3_False_resize: signed(22 downto 0);
  signal c_40_9_3_False_shift: signed(22 downto 0);
  signal c_40_5_0_False_resize: signed(22 downto 0);
  signal c_40_5_0_False_shift: signed(22 downto 0);
  signal c_40_5_7_False_resize: signed(22 downto 0);
  signal c_40_5_7_False_shift: signed(22 downto 0);
  signal c_40_9_4_False_resize: signed(22 downto 0);
  signal c_40_9_4_False_shift: signed(22 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_5_0_False_resize: signed(22 downto 0);
  signal c_41_5_0_False_shift: signed(22 downto 0);
  signal c_41_13_0_False_resize: signed(22 downto 0);
  signal c_41_13_0_False_shift: signed(22 downto 0);
  signal c_41_11_0_False_resize: signed(22 downto 0);
  signal c_41_11_0_False_shift: signed(22 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_i0_resize: signed(23 downto 0);
  signal c_42_i1_resize: signed(23 downto 0);
  signal c_42_i0_shift: signed(23 downto 0);
  signal c_42_i1_shift: signed(23 downto 0);
  signal c_42_arith: signed(23 downto 0);
  signal c_42_oshift: signed(23 downto 0);
  signal c_42_sub_sel: std_logic;
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
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_resize: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_resize: signed(23 downto 0);
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
  -- output node 0 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 1 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 2 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 3 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 4 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 5 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_48);
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
  -- output node 9 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_52);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'sub' in stage 1 with id 2 and associated fundamentals [[7], [7], [7], [7]]
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
  c_2 <= c_2_oshift(18 downto 0);
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1], [1], [1]]
  c_3 <= c_1 & "";
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[0], [7], [7], [7]]
  c_4_2_0_False_resize <= c_2;
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "01",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_2_0_False_shift when "0",
    to_signed(0, 19) when others;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[1], [111], [111], [111]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 23,
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
  c_5 <= c_5_oshift(22 downto 0);
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[2], [0], [7], [7]]
  c_6_1_1_False_resize <= resize(c_1, 19);
  c_6_1_1_False_shift <= shift_left(c_6_1_1_False_resize, 1);
  c_6_2_0_False_resize <= c_2;
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "11",
    "10" when others;
  with c_6_sel select c_6 <=
    c_6_1_1_False_shift when "00",
    c_6_2_0_False_shift when "01",
    to_signed(0, 19) when others;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[5], [1], [13], [13]]
  with config_select_3 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 19,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_3,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(19 downto 0);
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[7], [2], [2], [2]]
  c_8_1_1_False_resize <= resize(c_1, 19);
  c_8_1_1_False_shift <= shift_left(c_8_1_1_False_resize, 1);
  c_8_2_0_False_resize <= c_2;
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  with config_select_2 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_1_1_False_shift when "0",
    c_8_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[13], [5], [5], [5]]
  with config_select_3 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
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
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_3,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(19 downto 0);
  -- node of type 'register' in stage 2 with id 10 and associated fundamentals [[7], [7], [7], [7]]
  c_10 <= c_2 & "";
  -- node of type 'sub' in stage 3 with id 11 and associated fundamentals [[25], [25], [25], [25]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 21,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_3,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(20 downto 0);
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[56], [7], [0], [0]]
  c_12_2_3_False_resize <= resize(c_2, 22);
  c_12_2_3_False_shift <= shift_left(c_12_2_3_False_resize, 3);
  c_12_2_0_False_resize <= resize(c_2, 22);
  c_12_2_0_False_shift <= shift_left(c_12_2_0_False_resize, 0);
  with config_select_2 select c_12_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_2_3_False_shift when "00",
    c_12_2_0_False_shift when "01",
    to_signed(0, 22) when others;
  -- node of type 'add_sub' in stage 3 with id 13 and associated fundamentals [[111], [13], [1], [1]]
  with config_select_3 select c_13_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
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
      sub_i => c_13_sub_sel,
      x_i => c_12,
      y_i => c_3,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(22 downto 0);
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[111], [444], [160], [128]]
  c_14_13_7_False_resize <= resize(c_13, 25);
  c_14_13_7_False_shift <= shift_left(c_14_13_7_False_resize, 7);
  c_14_9_5_False_resize <= resize(c_9, 25);
  c_14_9_5_False_shift <= shift_left(c_14_9_5_False_resize, 5);
  c_14_13_0_False_resize <= resize(c_13, 25);
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  c_14_5_2_False_resize <= resize(c_5, 25);
  c_14_5_2_False_shift <= shift_left(c_14_5_2_False_resize, 2);
  with config_select_4 select c_14_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_14_sel select c_14 <=
    c_14_13_7_False_shift when "00",
    c_14_9_5_False_shift when "01",
    c_14_13_0_False_shift when "10",
    c_14_5_2_False_shift when others;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[32], [100], [13], [32]]
  c_15_5_5_False_resize <= c_5;
  c_15_5_5_False_shift <= shift_left(c_15_5_5_False_resize, 5);
  c_15_7_0_False_resize <= resize(c_7, 23);
  c_15_7_0_False_shift <= shift_left(c_15_7_0_False_resize, 0);
  c_15_11_2_False_resize <= resize(c_11, 23);
  c_15_11_2_False_shift <= shift_left(c_15_11_2_False_resize, 2);
  c_15_13_5_False_resize <= c_13;
  c_15_13_5_False_shift <= shift_left(c_15_13_5_False_resize, 5);
  with config_select_4 select c_15_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  with c_15_sel select c_15 <=
    c_15_5_5_False_shift when "00",
    c_15_7_0_False_shift when "01",
    c_15_11_2_False_shift when "10",
    c_15_13_5_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 16 and associated fundamentals [[47], [244], [134], [192]]
  with config_select_5 select c_16_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
  c_16 <= c_16_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[5], [200], [32], [160]]
  c_17_13_5_False_resize <= resize(c_13, 24);
  c_17_13_5_False_shift <= shift_left(c_17_13_5_False_resize, 5);
  c_17_9_5_False_resize <= resize(c_9, 24);
  c_17_9_5_False_shift <= shift_left(c_17_9_5_False_resize, 5);
  c_17_11_3_False_resize <= resize(c_11, 24);
  c_17_11_3_False_shift <= shift_left(c_17_11_3_False_resize, 3);
  c_17_7_0_False_resize <= resize(c_7, 24);
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  with c_17_sel select c_17 <=
    c_17_13_5_False_shift when "00",
    c_17_9_5_False_shift when "01",
    c_17_11_3_False_shift when "10",
    c_17_7_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[40], [25], [13], [0]]
  c_18_11_0_False_resize <= resize(c_11, 22);
  c_18_11_0_False_shift <= shift_left(c_18_11_0_False_resize, 0);
  c_18_7_0_False_resize <= resize(c_7, 22);
  c_18_7_0_False_shift <= shift_left(c_18_7_0_False_resize, 0);
  c_18_7_3_False_resize <= resize(c_7, 22);
  c_18_7_3_False_shift <= shift_left(c_18_7_3_False_resize, 3);
  with config_select_4 select c_18_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_18_sel select c_18 <=
    c_18_11_0_False_shift when "00",
    c_18_7_0_False_shift when "01",
    c_18_7_3_False_shift when "10",
    to_signed(0, 22) when others;
  -- node of type 'add' in stage 5 with id 19 and associated fundamentals [[85], [250], [58], [160]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[111], [8], [1], [64]]
  c_20_7_3_False_resize <= resize(c_7, 23);
  c_20_7_3_False_shift <= shift_left(c_20_7_3_False_resize, 3);
  c_20_13_0_False_resize <= c_13;
  c_20_13_0_False_shift <= shift_left(c_20_13_0_False_resize, 0);
  c_20_13_6_False_resize <= c_13;
  c_20_13_6_False_shift <= shift_left(c_20_13_6_False_resize, 6);
  with config_select_4 select c_20_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "10",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_7_3_False_shift when "00",
    c_20_13_0_False_shift when "01",
    c_20_13_6_False_shift when others;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[8], [1], [160], [111]]
  c_21_7_0_False_resize <= resize(c_7, 24);
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  c_21_5_3_False_resize <= resize(c_5, 24);
  c_21_5_3_False_shift <= shift_left(c_21_5_3_False_resize, 3);
  c_21_9_5_False_resize <= resize(c_9, 24);
  c_21_9_5_False_shift <= shift_left(c_21_9_5_False_resize, 5);
  c_21_5_0_False_resize <= resize(c_5, 24);
  c_21_5_0_False_shift <= shift_left(c_21_5_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  with c_21_sel select c_21 <=
    c_21_7_0_False_shift when "00",
    c_21_5_3_False_shift when "01",
    c_21_9_5_False_shift when "10",
    c_21_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 22 and associated fundamentals [[214], [15], [162], [239]]
  with config_select_5 select c_22_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[13], [2], [5], [5]]
  c_23_9_0_False_resize <= c_9;
  c_23_9_0_False_shift <= shift_left(c_23_9_0_False_resize, 0);
  c_23_7_1_False_resize <= c_7;
  c_23_7_1_False_shift <= shift_left(c_23_7_1_False_resize, 1);
  with config_select_4 select c_23_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_9_0_False_shift when "0",
    c_23_7_1_False_shift when others;
  -- node of type 'add' in stage 5 with id 24 and associated fundamentals [[137], [12], [11], [74]]
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
      w_o => 24,
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
      x_i => c_23,
      y_i => c_20,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[10], [26], [1], [1]]
  c_25_7_1_False_resize <= resize(c_7, 21);
  c_25_7_1_False_shift <= shift_left(c_25_7_1_False_resize, 1);
  c_25_13_1_False_resize <= c_13(20 downto 0);
  c_25_13_1_False_shift <= shift_left(c_25_13_1_False_resize, 1);
  c_25_13_0_False_resize <= c_13(20 downto 0);
  c_25_13_0_False_shift <= shift_left(c_25_13_0_False_resize, 0);
  with config_select_4 select c_25_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "10" when others;
  with c_25_sel select c_25 <=
    c_25_7_1_False_shift when "00",
    c_25_13_1_False_shift when "01",
    c_25_13_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[111], [128], [128], [0]]
  c_26_13_7_False_resize <= c_13;
  c_26_13_7_False_shift <= shift_left(c_26_13_7_False_resize, 7);
  c_26_7_7_False_resize <= resize(c_7, 23);
  c_26_7_7_False_shift <= shift_left(c_26_7_7_False_resize, 7);
  c_26_13_0_False_resize <= c_13;
  c_26_13_0_False_shift <= shift_left(c_26_13_0_False_resize, 0);
  with config_select_4 select c_26_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_26_sel select c_26 <=
    c_26_13_7_False_shift when "00",
    c_26_7_7_False_shift when "01",
    c_26_13_0_False_shift when "10",
    to_signed(0, 23) when others;
  -- node of type 'add_sub' in stage 5 with id 27 and associated fundamentals [[151], [232], [124], [4]]
  with config_select_5 select c_27_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      sub_i => c_27_sub_sel,
      x_i => c_26,
      y_i => c_25,
      z_o => c_27_oshift
    );
  c_27 <= c_27_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[20], [8], [52], [25]]
  c_28_7_2_False_resize <= resize(c_7, 22);
  c_28_7_2_False_shift <= shift_left(c_28_7_2_False_resize, 2);
  c_28_11_0_False_resize <= resize(c_11, 22);
  c_28_11_0_False_shift <= shift_left(c_28_11_0_False_resize, 0);
  c_28_7_3_False_resize <= resize(c_7, 22);
  c_28_7_3_False_shift <= shift_left(c_28_7_3_False_resize, 3);
  with config_select_4 select c_28_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "11",
    "10" when others;
  with c_28_sel select c_28 <=
    c_28_7_2_False_shift when "00",
    c_28_11_0_False_shift when "01",
    c_28_7_3_False_shift when others;
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[1], [50], [222], [13]]
  c_29_5_1_False_resize <= resize(c_5, 24);
  c_29_5_1_False_shift <= shift_left(c_29_5_1_False_resize, 1);
  c_29_11_1_False_resize <= resize(c_11, 24);
  c_29_11_1_False_shift <= shift_left(c_29_11_1_False_resize, 1);
  c_29_5_0_False_resize <= resize(c_5, 24);
  c_29_5_0_False_shift <= shift_left(c_29_5_0_False_resize, 0);
  c_29_7_0_False_resize <= resize(c_7, 24);
  c_29_7_0_False_shift <= shift_left(c_29_7_0_False_resize, 0);
  with config_select_4 select c_29_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_29_sel select c_29 <=
    c_29_5_1_False_shift when "00",
    c_29_11_1_False_shift when "01",
    c_29_5_0_False_shift when "10",
    c_29_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 30 and associated fundamentals [[159], [114], [194], [187]]
  with config_select_5 select c_30_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
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
      sub_i => c_30_sub_sel,
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  c_30 <= c_30_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 31 and associated fundamentals [[26], [40], [1], [1]]
  c_31_9_3_False_resize <= resize(c_9, 22);
  c_31_9_3_False_shift <= shift_left(c_31_9_3_False_resize, 3);
  c_31_9_1_False_resize <= resize(c_9, 22);
  c_31_9_1_False_shift <= shift_left(c_31_9_1_False_resize, 1);
  c_31_13_0_False_resize <= c_13(21 downto 0);
  c_31_13_0_False_shift <= shift_left(c_31_13_0_False_resize, 0);
  with config_select_4 select c_31_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  with c_31_sel select c_31 <=
    c_31_9_3_False_shift when "00",
    c_31_9_1_False_shift when "01",
    c_31_13_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 32 and associated fundamentals [[111], [13], [0], [128]]
  c_32_13_7_False_resize <= c_13;
  c_32_13_7_False_shift <= shift_left(c_32_13_7_False_resize, 7);
  c_32_13_0_False_resize <= c_13;
  c_32_13_0_False_shift <= shift_left(c_32_13_0_False_resize, 0);
  with config_select_4 select c_32_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  with c_32_sel select c_32 <=
    c_32_13_7_False_shift when "00",
    c_32_13_0_False_shift when "01",
    to_signed(0, 23) when others;
  -- node of type 'add_sub' in stage 5 with id 33 and associated fundamentals [[163], [67], [2], [126]]
  with config_select_5 select c_33_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  with config_select_5 select c_33_sub_sel_right <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_33_sub_sel_left,
      sub_b_i => c_33_sub_sel_right,
      x_i => c_31,
      y_i => c_32,
      z_o => c_33_oshift
    );
  c_33 <= c_33_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 34 and associated fundamentals [[5], [111], [256], [1]]
  c_34_13_8_False_resize <= resize(c_13, 24);
  c_34_13_8_False_shift <= shift_left(c_34_13_8_False_resize, 8);
  c_34_5_0_False_resize <= resize(c_5, 24);
  c_34_5_0_False_shift <= shift_left(c_34_5_0_False_resize, 0);
  c_34_13_0_False_resize <= resize(c_13, 24);
  c_34_13_0_False_shift <= shift_left(c_34_13_0_False_resize, 0);
  c_34_7_0_False_resize <= resize(c_7, 24);
  c_34_7_0_False_shift <= shift_left(c_34_7_0_False_resize, 0);
  with config_select_4 select c_34_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  with c_34_sel select c_34 <=
    c_34_13_8_False_shift when "00",
    c_34_5_0_False_shift when "01",
    c_34_13_0_False_shift when "10",
    c_34_7_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 35 and associated fundamentals [[104], [8], [20], [111]]
  c_35_7_3_False_resize <= resize(c_7, 23);
  c_35_7_3_False_shift <= shift_left(c_35_7_3_False_resize, 3);
  c_35_9_2_False_resize <= resize(c_9, 23);
  c_35_9_2_False_shift <= shift_left(c_35_9_2_False_resize, 2);
  c_35_9_3_False_resize <= resize(c_9, 23);
  c_35_9_3_False_shift <= shift_left(c_35_9_3_False_resize, 3);
  c_35_5_0_False_resize <= c_5;
  c_35_5_0_False_shift <= shift_left(c_35_5_0_False_resize, 0);
  with config_select_4 select c_35_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  with c_35_sel select c_35 <=
    c_35_7_3_False_shift when "00",
    c_35_9_2_False_shift when "01",
    c_35_9_3_False_shift when "10",
    c_35_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 36 and associated fundamentals [[213], [95], [216], [221]]
  with config_select_5 select c_36_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  with config_select_5 select c_36_sub_sel_right <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_a_i => c_36_sub_sel_left,
      sub_b_i => c_36_sub_sel_right,
      x_i => c_34,
      y_i => c_35,
      z_o => c_36_oshift
    );
  c_36 <= c_36_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 37 and associated fundamentals [[13], [2], [8], [5]]
  c_37_9_0_False_resize <= c_9;
  c_37_9_0_False_shift <= shift_left(c_37_9_0_False_resize, 0);
  c_37_7_1_False_resize <= c_7;
  c_37_7_1_False_shift <= shift_left(c_37_7_1_False_resize, 1);
  c_37_13_3_False_resize <= c_13(19 downto 0);
  c_37_13_3_False_shift <= shift_left(c_37_13_3_False_resize, 3);
  with config_select_4 select c_37_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  with c_37_sel select c_37 <=
    c_37_9_0_False_shift when "00",
    c_37_7_1_False_shift when "01",
    c_37_13_3_False_shift when others;
  -- node of type 'mux' in stage 4 with id 38 and associated fundamentals [[111], [2], [5], [2]]
  c_38_9_0_False_resize <= resize(c_9, 23);
  c_38_9_0_False_shift <= shift_left(c_38_9_0_False_resize, 0);
  c_38_7_1_False_resize <= resize(c_7, 23);
  c_38_7_1_False_shift <= shift_left(c_38_7_1_False_resize, 1);
  c_38_13_0_False_resize <= c_13;
  c_38_13_0_False_shift <= shift_left(c_38_13_0_False_resize, 0);
  c_38_13_1_False_resize <= c_13;
  c_38_13_1_False_shift <= shift_left(c_38_13_1_False_resize, 1);
  with config_select_4 select c_38_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_38_sel select c_38 <=
    c_38_9_0_False_shift when "00",
    c_38_7_1_False_shift when "01",
    c_38_13_0_False_shift when "10",
    c_38_13_1_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 39 and associated fundamentals [[215], [14], [59], [42]]
  with config_select_5 select c_39_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
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
      sub_i => c_39_sub_sel,
      x_i => c_37,
      y_i => c_38,
      z_o => c_39_oshift
    );
  c_39 <= c_39_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[128], [111], [80], [40]]
  c_40_9_3_False_resize <= resize(c_9, 23);
  c_40_9_3_False_shift <= shift_left(c_40_9_3_False_resize, 3);
  c_40_5_0_False_resize <= c_5;
  c_40_5_0_False_shift <= shift_left(c_40_5_0_False_resize, 0);
  c_40_5_7_False_resize <= c_5;
  c_40_5_7_False_shift <= shift_left(c_40_5_7_False_resize, 7);
  c_40_9_4_False_resize <= resize(c_9, 23);
  c_40_9_4_False_shift <= shift_left(c_40_9_4_False_resize, 4);
  with config_select_4 select c_40_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  with c_40_sel select c_40 <=
    c_40_9_3_False_shift when "00",
    c_40_5_0_False_shift when "01",
    c_40_5_7_False_shift when "10",
    c_40_9_4_False_shift when others;
  -- node of type 'mux' in stage 4 with id 41 and associated fundamentals [[25], [13], [1], [111]]
  c_41_5_0_False_resize <= c_5;
  c_41_5_0_False_shift <= shift_left(c_41_5_0_False_resize, 0);
  c_41_13_0_False_resize <= c_13;
  c_41_13_0_False_shift <= shift_left(c_41_13_0_False_resize, 0);
  c_41_11_0_False_resize <= resize(c_11, 23);
  c_41_11_0_False_shift <= shift_left(c_41_11_0_False_resize, 0);
  with config_select_4 select c_41_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  with c_41_sel select c_41 <=
    c_41_5_0_False_shift when "00",
    c_41_13_0_False_shift when "01",
    c_41_11_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 42 and associated fundamentals [[231], [235], [161], [191]]
  with config_select_5 select c_42_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_42_sub_sel,
      x_i => c_40,
      y_i => c_41,
      z_o => c_42_oshift
    );
  c_42 <= c_42_oshift(23 downto 0);
  -- node of type 'output' in stage 5 with id 43 and associated fundamentals [[47], [244], [134], [192]]
  c_43_resize <= c_16;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 5 with id 44 and associated fundamentals [[85], [250], [58], [160]]
  c_44_resize <= c_19;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 5 with id 45 and associated fundamentals [[163], [67], [2], [126]]
  c_45_resize <= c_33;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 5 with id 46 and associated fundamentals [[231], [235], [161], [191]]
  c_46_resize <= c_42;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 5 with id 47 and associated fundamentals [[214], [15], [162], [239]]
  c_47_resize <= c_22;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 5 with id 48 and associated fundamentals [[151], [232], [124], [4]]
  c_48_resize <= c_27;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 5 with id 49 and associated fundamentals [[213], [95], [216], [221]]
  c_49_resize <= c_36;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 5 with id 50 and associated fundamentals [[159], [114], [194], [187]]
  c_50_resize <= c_30;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 5 with id 51 and associated fundamentals [[215], [14], [59], [42]]
  c_51_resize <= c_39;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'output' in stage 5 with id 52 and associated fundamentals [[137], [12], [11], [74]]
  c_52_resize <= c_24;
  c_52 <= shift_left(c_52_resize, 0);
end architecture;

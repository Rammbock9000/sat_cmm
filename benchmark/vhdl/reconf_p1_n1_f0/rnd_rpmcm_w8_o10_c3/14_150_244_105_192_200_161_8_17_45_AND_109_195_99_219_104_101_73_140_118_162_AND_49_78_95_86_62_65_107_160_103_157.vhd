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
  signal c_4: signed(23 downto 0);
  signal c_4_1_5_False_resize: signed(23 downto 0);
  signal c_4_1_5_False_shift: signed(23 downto 0);
  signal c_4_1_0_False_resize: signed(23 downto 0);
  signal c_4_1_0_False_shift: signed(23 downto 0);
  signal c_4_3_5_False_resize: signed(23 downto 0);
  signal c_4_3_5_False_shift: signed(23 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_1_1_False_resize: signed(23 downto 0);
  signal c_5_1_1_False_shift: signed(23 downto 0);
  signal c_5_2_0_False_resize: signed(23 downto 0);
  signal c_5_2_0_False_shift: signed(23 downto 0);
  signal c_5_2_5_False_resize: signed(23 downto 0);
  signal c_5_2_5_False_shift: signed(23 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(21 downto 0);
  signal c_7_1_4_False_resize: signed(21 downto 0);
  signal c_7_1_4_False_shift: signed(21 downto 0);
  signal c_7_3_3_False_resize: signed(21 downto 0);
  signal c_7_3_3_False_shift: signed(21 downto 0);
  signal c_7_3_0_False_resize: signed(21 downto 0);
  signal c_7_3_0_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_3_0_False_resize: signed(22 downto 0);
  signal c_8_3_0_False_shift: signed(22 downto 0);
  signal c_8_2_4_False_resize: signed(22 downto 0);
  signal c_8_2_4_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(20 downto 0);
  signal c_10_3_5_False_resize: signed(20 downto 0);
  signal c_10_3_5_False_shift: signed(20 downto 0);
  signal c_10_3_0_False_resize: signed(20 downto 0);
  signal c_10_3_0_False_shift: signed(20 downto 0);
  signal c_10_3_3_False_resize: signed(20 downto 0);
  signal c_10_3_3_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_3_5_False_resize: signed(22 downto 0);
  signal c_11_3_5_False_shift: signed(22 downto 0);
  signal c_11_1_0_False_resize: signed(22 downto 0);
  signal c_11_1_0_False_shift: signed(22 downto 0);
  signal c_11_2_0_False_resize: signed(22 downto 0);
  signal c_11_2_0_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(19 downto 0);
  signal c_13_2_0_False_resize: signed(19 downto 0);
  signal c_13_2_0_False_shift: signed(19 downto 0);
  signal c_13_2_1_False_resize: signed(19 downto 0);
  signal c_13_2_1_False_shift: signed(19 downto 0);
  signal c_13_3_1_False_resize: signed(19 downto 0);
  signal c_13_3_1_False_shift: signed(19 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(18 downto 0);
  signal c_14_2_0_False_resize: signed(18 downto 0);
  signal c_14_2_0_False_shift: signed(18 downto 0);
  signal c_14_3_3_False_resize: signed(18 downto 0);
  signal c_14_3_3_False_shift: signed(18 downto 0);
  signal c_14_3_0_False_resize: signed(18 downto 0);
  signal c_14_3_0_False_shift: signed(18 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_i0_resize: signed(22 downto 0);
  signal c_15_i1_resize: signed(22 downto 0);
  signal c_15_i0_shift: signed(22 downto 0);
  signal c_15_i1_shift: signed(22 downto 0);
  signal c_15_arith: signed(22 downto 0);
  signal c_15_oshift: signed(22 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_0_0_False_resize: signed(21 downto 0);
  signal c_16_0_0_False_shift: signed(21 downto 0);
  signal c_16_0_6_False_resize: signed(21 downto 0);
  signal c_16_0_6_False_shift: signed(21 downto 0);
  signal c_16_0_2_False_resize: signed(21 downto 0);
  signal c_16_0_2_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_i0_resize: signed(21 downto 0);
  signal c_17_i1_resize: signed(21 downto 0);
  signal c_17_i0_shift: signed(21 downto 0);
  signal c_17_i1_shift: signed(21 downto 0);
  signal c_17_arith: signed(21 downto 0);
  signal c_17_oshift: signed(21 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_2_6_False_resize: signed(24 downto 0);
  signal c_18_2_6_False_shift: signed(24 downto 0);
  signal c_18_1_0_False_resize: signed(24 downto 0);
  signal c_18_1_0_False_shift: signed(24 downto 0);
  signal c_18_2_0_False_resize: signed(24 downto 0);
  signal c_18_2_0_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_i0_resize: signed(22 downto 0);
  signal c_19_i1_resize: signed(22 downto 0);
  signal c_19_i0_shift: signed(22 downto 0);
  signal c_19_i1_shift: signed(22 downto 0);
  signal c_19_arith: signed(22 downto 0);
  signal c_19_oshift: signed(22 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(18 downto 0);
  signal c_20_3_1_False_resize: signed(18 downto 0);
  signal c_20_3_1_False_shift: signed(18 downto 0);
  signal c_20_3_0_False_resize: signed(18 downto 0);
  signal c_20_3_0_False_shift: signed(18 downto 0);
  signal c_20_2_0_False_resize: signed(18 downto 0);
  signal c_20_2_0_False_shift: signed(18 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(20 downto 0);
  signal c_21_1_2_False_resize: signed(20 downto 0);
  signal c_21_1_2_False_shift: signed(20 downto 0);
  signal c_21_1_0_False_resize: signed(20 downto 0);
  signal c_21_1_0_False_shift: signed(20 downto 0);
  signal c_21_3_0_False_resize: signed(20 downto 0);
  signal c_21_3_0_False_shift: signed(20 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_23_1_0_False_resize: signed(21 downto 0);
  signal c_23_1_0_False_shift: signed(21 downto 0);
  signal c_23_3_4_False_resize: signed(21 downto 0);
  signal c_23_3_4_False_shift: signed(21 downto 0);
  signal c_23_2_3_False_resize: signed(21 downto 0);
  signal c_23_2_3_False_shift: signed(21 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(20 downto 0);
  signal c_24_2_2_False_resize: signed(20 downto 0);
  signal c_24_2_2_False_shift: signed(20 downto 0);
  signal c_24_3_2_False_resize: signed(20 downto 0);
  signal c_24_3_2_False_shift: signed(20 downto 0);
  signal c_24_3_0_False_resize: signed(20 downto 0);
  signal c_24_3_0_False_shift: signed(20 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(23 downto 0);
  signal c_27_1_5_False_resize: signed(23 downto 0);
  signal c_27_1_5_False_shift: signed(23 downto 0);
  signal c_27_3_0_False_resize: signed(23 downto 0);
  signal c_27_3_0_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_2_0_False_resize: signed(23 downto 0);
  signal c_28_2_0_False_shift: signed(23 downto 0);
  signal c_28_3_0_False_resize: signed(23 downto 0);
  signal c_28_3_0_False_shift: signed(23 downto 0);
  signal c_28_3_6_False_resize: signed(23 downto 0);
  signal c_28_3_6_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_30_1_0_False_resize: signed(22 downto 0);
  signal c_30_1_0_False_shift: signed(22 downto 0);
  signal c_30_2_4_False_resize: signed(22 downto 0);
  signal c_30_2_4_False_shift: signed(22 downto 0);
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
  signal c_32: signed(22 downto 0);
  signal c_32_15_0_False_resize: signed(22 downto 0);
  signal c_32_15_0_False_shift: signed(22 downto 0);
  signal c_32_25_0_False_resize: signed(22 downto 0);
  signal c_32_25_0_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_33_resize: signed(22 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_6_0_False_resize: signed(23 downto 0);
  signal c_34_6_0_False_shift: signed(23 downto 0);
  signal c_34_6_1_False_resize: signed(23 downto 0);
  signal c_34_6_1_False_shift: signed(23 downto 0);
  signal c_34_29_0_False_resize: signed(23 downto 0);
  signal c_34_29_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_resize: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_22_0_False_resize: signed(23 downto 0);
  signal c_36_22_0_False_shift: signed(23 downto 0);
  signal c_36_12_0_False_resize: signed(23 downto 0);
  signal c_36_12_0_False_shift: signed(23 downto 0);
  signal c_36_9_0_False_resize: signed(23 downto 0);
  signal c_36_9_0_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_31_0_False_resize: signed(23 downto 0);
  signal c_38_31_0_False_shift: signed(23 downto 0);
  signal c_38_6_0_False_resize: signed(23 downto 0);
  signal c_38_6_0_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_40_31_2_False_resize: signed(22 downto 0);
  signal c_40_31_2_False_shift: signed(22 downto 0);
  signal c_40_19_1_False_resize: signed(22 downto 0);
  signal c_40_19_1_False_shift: signed(22 downto 0);
  signal c_40_25_0_False_resize: signed(22 downto 0);
  signal c_40_25_0_False_shift: signed(22 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_12_3_False_resize: signed(23 downto 0);
  signal c_42_12_3_False_shift: signed(23 downto 0);
  signal c_42_22_0_False_resize: signed(23 downto 0);
  signal c_42_22_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_19_0_False_resize: signed(23 downto 0);
  signal c_44_19_0_False_shift: signed(23 downto 0);
  signal c_44_29_0_False_resize: signed(23 downto 0);
  signal c_44_29_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_12_5_False_resize: signed(23 downto 0);
  signal c_46_12_5_False_shift: signed(23 downto 0);
  signal c_46_25_0_False_resize: signed(23 downto 0);
  signal c_46_25_0_False_shift: signed(23 downto 0);
  signal c_46_15_0_False_resize: signed(23 downto 0);
  signal c_46_15_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_48_9_0_False_resize: signed(22 downto 0);
  signal c_48_9_0_False_shift: signed(22 downto 0);
  signal c_48_29_0_False_resize: signed(22 downto 0);
  signal c_48_29_0_False_shift: signed(22 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
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
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [5], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
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
  -- node of type 'add_sub' in stage 1 with id 3 and associated fundamentals [[1], [3], [1]]
  with config_select_1 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
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
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[160], [5], [32]]
  c_4_1_5_False_resize <= resize(c_1, 24);
  c_4_1_5_False_shift <= shift_left(c_4_1_5_False_resize, 5);
  c_4_1_0_False_resize <= resize(c_1, 24);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_3_5_False_resize <= resize(c_3, 24);
  c_4_3_5_False_shift <= shift_left(c_4_3_5_False_resize, 5);
  with config_select_2 select c_4_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_1_5_False_shift;
        when "01" => c_4 <= c_4_1_0_False_shift;
        when others => c_4 <= c_4_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[10], [224], [7]]
  c_5_1_1_False_resize <= resize(c_1, 24);
  c_5_1_1_False_shift <= shift_left(c_5_1_1_False_resize, 1);
  c_5_2_0_False_resize <= resize(c_2, 24);
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  c_5_2_5_False_resize <= resize(c_2, 24);
  c_5_2_5_False_shift <= shift_left(c_5_2_5_False_resize, 5);
  with config_select_2 select c_5_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_1_1_False_shift;
        when "01" => c_5 <= c_5_2_0_False_shift;
        when others => c_5 <= c_5_2_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[150], [-219], [39]]
  with config_select_3 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
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
      sub_i => c_6_sub_sel,
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
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[8], [3], [48]]
  c_7_1_4_False_resize <= resize(c_1, 22);
  c_7_1_4_False_shift <= shift_left(c_7_1_4_False_resize, 4);
  c_7_3_3_False_resize <= resize(c_3, 22);
  c_7_3_3_False_shift <= shift_left(c_7_3_3_False_resize, 3);
  c_7_3_0_False_resize <= resize(c_3, 22);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_1_4_False_shift;
        when "01" => c_7 <= c_7_3_3_False_shift;
        when others => c_7 <= c_7_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[1], [112], [1]]
  c_8_3_0_False_resize <= resize(c_3, 23);
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  c_8_2_4_False_resize <= resize(c_2, 23);
  c_8_2_4_False_shift <= shift_left(c_8_2_4_False_resize, 4);
  with config_select_2 select c_8_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_3_0_False_shift;
        when others => c_8 <= c_8_2_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[17], [118], [95]]
  with config_select_3 select c_9_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[32], [3], [8]]
  c_10_3_5_False_resize <= resize(c_3, 21);
  c_10_3_5_False_shift <= shift_left(c_10_3_5_False_resize, 5);
  c_10_3_0_False_resize <= resize(c_3, 21);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_3_3_False_resize <= resize(c_3, 21);
  c_10_3_3_False_shift <= shift_left(c_10_3_3_False_resize, 3);
  with config_select_2 select c_10_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_3_5_False_shift;
        when "01" => c_10 <= c_10_3_0_False_shift;
        when others => c_10 <= c_10_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[7], [96], [3]]
  c_11_3_5_False_resize <= resize(c_3, 23);
  c_11_3_5_False_shift <= shift_left(c_11_3_5_False_resize, 5);
  c_11_1_0_False_resize <= resize(c_1, 23);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_2_0_False_resize <= resize(c_2, 23);
  c_11_2_0_False_shift <= shift_left(c_11_2_0_False_resize, 0);
  with config_select_2 select c_11_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_3_5_False_shift;
        when "01" => c_11 <= c_11_1_0_False_shift;
        when others => c_11 <= c_11_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 12 and associated fundamentals [[25], [99], [5]]
  with config_select_3 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[2], [14], [7]]
  c_13_2_0_False_resize <= resize(c_2, 20);
  c_13_2_0_False_shift <= shift_left(c_13_2_0_False_resize, 0);
  c_13_2_1_False_resize <= resize(c_2, 20);
  c_13_2_1_False_shift <= shift_left(c_13_2_1_False_resize, 1);
  c_13_3_1_False_resize <= resize(c_3, 20);
  c_13_3_1_False_shift <= shift_left(c_13_3_1_False_resize, 1);
  with config_select_2 select c_13_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_2_0_False_shift;
        when "01" => c_13 <= c_13_2_1_False_shift;
        when others => c_13 <= c_13_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[8], [3], [7]]
  c_14_2_0_False_resize <= c_2;
  c_14_2_0_False_shift <= shift_left(c_14_2_0_False_resize, 0);
  c_14_3_3_False_resize <= resize(c_3, 19);
  c_14_3_3_False_shift <= shift_left(c_14_3_3_False_resize, 3);
  c_14_3_0_False_resize <= resize(c_3, 19);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_2_0_False_shift;
        when "01" => c_14 <= c_14_3_3_False_shift;
        when others => c_14 <= c_14_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 15 and associated fundamentals [[8], [109], [49]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 23,
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
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 16 and associated fundamentals [[64], [4], [1]]
  c_16_0_0_False_resize <= resize(c_0, 22);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_0_6_False_resize <= resize(c_0, 22);
  c_16_0_6_False_shift <= shift_left(c_16_0_6_False_resize, 6);
  c_16_0_2_False_resize <= resize(c_0, 22);
  c_16_0_2_False_shift <= shift_left(c_16_0_2_False_resize, 2);
  with config_select_1 select c_16_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_0_0_False_shift;
        when "01" => c_16 <= c_16_0_6_False_shift;
        when others => c_16 <= c_16_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 17 and associated fundamentals [[-50], [10], [13]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 22,
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
      x_i => c_2,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[448], [7], [3]]
  c_18_2_6_False_resize <= resize(c_2, 25);
  c_18_2_6_False_shift <= shift_left(c_18_2_6_False_resize, 6);
  c_18_1_0_False_resize <= resize(c_1, 25);
  c_18_1_0_False_shift <= shift_left(c_18_1_0_False_resize, 0);
  c_18_2_0_False_resize <= resize(c_2, 25);
  c_18_2_0_False_shift <= shift_left(c_18_2_0_False_resize, 0);
  with config_select_2 select c_18_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_2_6_False_shift;
        when "01" => c_18 <= c_18_1_0_False_shift;
        when others => c_18 <= c_18_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[48], [73], [107]]
  with config_select_3 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 23,
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
      sub_i => c_19_sub_sel,
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
  -- node of type 'mux' in stage 2 with id 20 and associated fundamentals [[7], [3], [2]]
  c_20_3_1_False_resize <= resize(c_3, 19);
  c_20_3_1_False_shift <= shift_left(c_20_3_1_False_resize, 1);
  c_20_3_0_False_resize <= resize(c_3, 19);
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  c_20_2_0_False_resize <= c_2;
  c_20_2_0_False_shift <= shift_left(c_20_2_0_False_resize, 0);
  with config_select_2 select c_20_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_3_1_False_shift;
        when "01" => c_20 <= c_20_3_0_False_shift;
        when others => c_20 <= c_20_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 21 and associated fundamentals [[20], [5], [1]]
  c_21_1_2_False_resize <= resize(c_1, 21);
  c_21_1_2_False_shift <= shift_left(c_21_1_2_False_resize, 2);
  c_21_1_0_False_resize <= resize(c_1, 21);
  c_21_1_0_False_shift <= shift_left(c_21_1_0_False_resize, 0);
  c_21_3_0_False_resize <= resize(c_3, 21);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  with config_select_2 select c_21_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_1_2_False_shift;
        when "01" => c_21 <= c_21_1_0_False_shift;
        when others => c_21 <= c_21_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 22 and associated fundamentals [[244], [101], [65]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 24,
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
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 23 and associated fundamentals [[5], [56], [16]]
  c_23_1_0_False_resize <= resize(c_1, 22);
  c_23_1_0_False_shift <= shift_left(c_23_1_0_False_resize, 0);
  c_23_3_4_False_resize <= resize(c_3, 22);
  c_23_3_4_False_shift <= shift_left(c_23_3_4_False_resize, 4);
  c_23_2_3_False_resize <= resize(c_2, 22);
  c_23_2_3_False_shift <= shift_left(c_23_2_3_False_resize, 3);
  with config_select_2 select c_23_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_1_0_False_shift;
        when "01" => c_23 <= c_23_3_4_False_shift;
        when others => c_23 <= c_23_2_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 24 and associated fundamentals [[4], [28], [1]]
  c_24_2_2_False_resize <= resize(c_2, 21);
  c_24_2_2_False_shift <= shift_left(c_24_2_2_False_resize, 2);
  c_24_3_2_False_resize <= resize(c_3, 21);
  c_24_3_2_False_shift <= shift_left(c_24_3_2_False_resize, 2);
  c_24_3_0_False_resize <= resize(c_3, 21);
  c_24_3_0_False_shift <= shift_left(c_24_3_0_False_resize, 0);
  with config_select_2 select c_24_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_2_2_False_shift;
        when "01" => c_24 <= c_24_3_2_False_shift;
        when others => c_24 <= c_24_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 25 and associated fundamentals [[14], [140], [31]]
  with config_select_3 select c_25_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 22,
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
  -- node of type 'add_sub' in stage 4 with id 26 and associated fundamentals [[45], [162], [157]]
  with config_select_4 select c_26_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_26_sub_sel,
      x_i => c_25,
      y_i => c_9,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 27 and associated fundamentals [[160], [3], [96]]
  c_27_1_5_False_resize <= resize(c_1, 24);
  c_27_1_5_False_shift <= shift_left(c_27_1_5_False_resize, 5);
  c_27_3_0_False_resize <= resize(c_3, 24);
  c_27_3_0_False_shift <= shift_left(c_27_3_0_False_resize, 0);
  with config_select_2 select c_27_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_1_5_False_shift;
        when others => c_27 <= c_27_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 28 and associated fundamentals [[1], [192], [7]]
  c_28_2_0_False_resize <= resize(c_2, 24);
  c_28_2_0_False_shift <= shift_left(c_28_2_0_False_resize, 0);
  c_28_3_0_False_resize <= resize(c_3, 24);
  c_28_3_0_False_shift <= shift_left(c_28_3_0_False_resize, 0);
  c_28_3_6_False_resize <= resize(c_3, 24);
  c_28_3_6_False_shift <= shift_left(c_28_3_6_False_resize, 6);
  with config_select_2 select c_28_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_2_0_False_shift;
        when "01" => c_28 <= c_28_3_0_False_shift;
        when others => c_28 <= c_28_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 29 and associated fundamentals [[161], [195], [103]]
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
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 30 and associated fundamentals [[5], [7], [112]]
  c_30_1_0_False_resize <= resize(c_1, 23);
  c_30_1_0_False_shift <= shift_left(c_30_1_0_False_resize, 0);
  c_30_2_4_False_resize <= resize(c_2, 23);
  c_30_2_4_False_shift <= shift_left(c_30_2_4_False_resize, 4);
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
        when "00" => c_30 <= c_30_1_0_False_shift;
        when "01" => c_30 <= c_30_2_4_False_shift;
        when others => c_30 <= c_30_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 31 and associated fundamentals [[-105], [13], [-86]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 23,
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
      x_i => c_17,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 32 and associated fundamentals [[14], [109], [49]]
  c_32_15_0_False_resize <= c_15;
  c_32_15_0_False_shift <= shift_left(c_32_15_0_False_resize, 0);
  c_32_25_0_False_resize <= c_25(22 downto 0);
  c_32_25_0_False_shift <= shift_left(c_32_25_0_False_resize, 0);
  with config_select_4 select c_32_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_15_0_False_shift;
        when others => c_32 <= c_32_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 33 and associated fundamentals [[14], [109], [49]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 4 with id 34 and associated fundamentals [[150], [195], [78]]
  c_34_6_0_False_resize <= c_6;
  c_34_6_0_False_shift <= shift_left(c_34_6_0_False_resize, 0);
  c_34_6_1_False_resize <= c_6;
  c_34_6_1_False_shift <= shift_left(c_34_6_1_False_resize, 1);
  c_34_29_0_False_resize <= c_29;
  c_34_29_0_False_shift <= shift_left(c_34_29_0_False_resize, 0);
  with config_select_4 select c_34_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_6_0_False_shift;
        when "01" => c_34 <= c_34_6_1_False_shift;
        when others => c_34 <= c_34_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 35 and associated fundamentals [[150], [195], [78]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'mux' in stage 4 with id 36 and associated fundamentals [[244], [99], [95]]
  c_36_22_0_False_resize <= c_22;
  c_36_22_0_False_shift <= shift_left(c_36_22_0_False_resize, 0);
  c_36_12_0_False_resize <= resize(c_12, 24);
  c_36_12_0_False_shift <= shift_left(c_36_12_0_False_resize, 0);
  c_36_9_0_False_resize <= resize(c_9, 24);
  c_36_9_0_False_shift <= shift_left(c_36_9_0_False_resize, 0);
  with config_select_4 select c_36_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_22_0_False_shift;
        when "01" => c_36 <= c_36_12_0_False_shift;
        when others => c_36 <= c_36_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 37 and associated fundamentals [[244], [99], [95]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 4 with id 38 and associated fundamentals [[-105], [-219], [-86]]
  c_38_31_0_False_resize <= resize(c_31, 24);
  c_38_31_0_False_shift <= shift_left(c_38_31_0_False_resize, 0);
  c_38_6_0_False_resize <= c_6;
  c_38_6_0_False_shift <= shift_left(c_38_6_0_False_resize, 0);
  with config_select_4 select c_38_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_31_0_False_shift;
        when others => c_38 <= c_38_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[105], [219], [86]]
  c_39_resize <= c_38;
  c_39 <= -shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[96], [52], [31]]
  c_40_31_2_False_resize <= c_31;
  c_40_31_2_False_shift <= shift_left(c_40_31_2_False_resize, 2);
  c_40_19_1_False_resize <= c_19;
  c_40_19_1_False_shift <= shift_left(c_40_19_1_False_resize, 1);
  c_40_25_0_False_resize <= c_25(22 downto 0);
  c_40_25_0_False_shift <= shift_left(c_40_25_0_False_resize, 0);
  with config_select_4 select c_40_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_31_2_False_shift;
        when "01" => c_40 <= c_40_19_1_False_shift;
        when others => c_40 <= c_40_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[192], [104], [62]]
  c_41_resize <= resize(c_40, 24);
  c_41 <= shift_left(c_41_resize, 1);
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[200], [101], [65]]
  c_42_12_3_False_resize <= resize(c_12, 24);
  c_42_12_3_False_shift <= shift_left(c_42_12_3_False_resize, 3);
  c_42_22_0_False_resize <= c_22;
  c_42_22_0_False_shift <= shift_left(c_42_22_0_False_resize, 0);
  with config_select_4 select c_42_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_12_3_False_shift;
        when others => c_42 <= c_42_22_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[200], [101], [65]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[161], [73], [107]]
  c_44_19_0_False_resize <= resize(c_19, 24);
  c_44_19_0_False_shift <= shift_left(c_44_19_0_False_resize, 0);
  c_44_29_0_False_resize <= c_29;
  c_44_29_0_False_shift <= shift_left(c_44_29_0_False_resize, 0);
  with config_select_4 select c_44_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_19_0_False_shift;
        when others => c_44 <= c_44_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[161], [73], [107]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'mux' in stage 4 with id 46 and associated fundamentals [[8], [140], [160]]
  c_46_12_5_False_resize <= resize(c_12, 24);
  c_46_12_5_False_shift <= shift_left(c_46_12_5_False_resize, 5);
  c_46_25_0_False_resize <= c_25;
  c_46_25_0_False_shift <= shift_left(c_46_25_0_False_resize, 0);
  c_46_15_0_False_resize <= resize(c_15, 24);
  c_46_15_0_False_shift <= shift_left(c_46_15_0_False_resize, 0);
  with config_select_4 select c_46_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_12_5_False_shift;
        when "01" => c_46 <= c_46_25_0_False_shift;
        when others => c_46 <= c_46_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[8], [140], [160]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'mux' in stage 4 with id 48 and associated fundamentals [[17], [118], [103]]
  c_48_9_0_False_resize <= c_9;
  c_48_9_0_False_shift <= shift_left(c_48_9_0_False_resize, 0);
  c_48_29_0_False_resize <= c_29(22 downto 0);
  c_48_29_0_False_shift <= shift_left(c_48_29_0_False_resize, 0);
  with config_select_4 select c_48_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_9_0_False_shift;
        when others => c_48 <= c_48_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 49 and associated fundamentals [[17], [118], [103]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 4 with id 50 and associated fundamentals [[45], [162], [157]]
  c_50_resize <= c_26;
  c_50 <= shift_left(c_50_resize, 0);
end architecture;

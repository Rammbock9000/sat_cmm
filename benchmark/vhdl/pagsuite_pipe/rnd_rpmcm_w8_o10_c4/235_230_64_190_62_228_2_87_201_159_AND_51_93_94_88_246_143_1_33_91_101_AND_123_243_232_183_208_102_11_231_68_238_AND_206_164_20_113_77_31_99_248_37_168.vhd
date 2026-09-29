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
  signal c_1: signed(15 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(18 downto 0);
  signal c_4: signed(16 downto 0);
  signal c_4_0_0_False_resize: signed(16 downto 0);
  signal c_4_0_0_False_shift: signed(16 downto 0);
  signal c_4_0_1_False_resize: signed(16 downto 0);
  signal c_4_0_1_False_shift: signed(16 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_i0_resize: signed(18 downto 0);
  signal c_5_i1_resize: signed(18 downto 0);
  signal c_5_i0_shift: signed(18 downto 0);
  signal c_5_i1_shift: signed(18 downto 0);
  signal c_5_arith: signed(18 downto 0);
  signal c_5_oshift: signed(18 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_i0_resize: signed(20 downto 0);
  signal c_7_i1_resize: signed(20 downto 0);
  signal c_7_i0_shift: signed(20 downto 0);
  signal c_7_i1_shift: signed(20 downto 0);
  signal c_7_arith: signed(20 downto 0);
  signal c_7_oshift: signed(20 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(20 downto 0);
  signal c_8_i0_resize: signed(20 downto 0);
  signal c_8_i1_resize: signed(20 downto 0);
  signal c_8_i0_shift: signed(20 downto 0);
  signal c_8_i1_shift: signed(20 downto 0);
  signal c_8_arith: signed(20 downto 0);
  signal c_8_oshift: signed(20 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_9_3_4_False_resize: signed(22 downto 0);
  signal c_9_3_4_False_shift: signed(22 downto 0);
  signal c_9_3_5_False_resize: signed(22 downto 0);
  signal c_9_3_5_False_shift: signed(22 downto 0);
  signal c_9_5_0_False_resize: signed(22 downto 0);
  signal c_9_5_0_False_shift: signed(22 downto 0);
  signal c_9_7_0_False_resize: signed(22 downto 0);
  signal c_9_7_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_7_0_False_resize: signed(22 downto 0);
  signal c_10_7_0_False_shift: signed(22 downto 0);
  signal c_10_6_2_False_resize: signed(22 downto 0);
  signal c_10_6_2_False_shift: signed(22 downto 0);
  signal c_10_5_5_False_resize: signed(22 downto 0);
  signal c_10_5_5_False_shift: signed(22 downto 0);
  signal c_10_3_0_False_resize: signed(22 downto 0);
  signal c_10_3_0_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(21 downto 0);
  signal c_12_7_1_False_resize: signed(21 downto 0);
  signal c_12_7_1_False_shift: signed(21 downto 0);
  signal c_12_5_0_False_resize: signed(21 downto 0);
  signal c_12_5_0_False_shift: signed(21 downto 0);
  signal c_12_3_2_False_resize: signed(21 downto 0);
  signal c_12_3_2_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_6_0_False_resize: signed(20 downto 0);
  signal c_13_6_0_False_shift: signed(20 downto 0);
  signal c_13_3_3_False_resize: signed(20 downto 0);
  signal c_13_3_3_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(19 downto 0);
  signal c_15_5_2_False_resize: signed(19 downto 0);
  signal c_15_5_2_False_shift: signed(19 downto 0);
  signal c_15_3_1_False_resize: signed(19 downto 0);
  signal c_15_3_1_False_shift: signed(19 downto 0);
  signal c_15_5_0_False_resize: signed(19 downto 0);
  signal c_15_5_0_False_shift: signed(19 downto 0);
  signal c_15_5_1_False_resize: signed(19 downto 0);
  signal c_15_5_1_False_shift: signed(19 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_7_1_False_resize: signed(21 downto 0);
  signal c_16_7_1_False_shift: signed(21 downto 0);
  signal c_16_7_0_False_resize: signed(21 downto 0);
  signal c_16_7_0_False_shift: signed(21 downto 0);
  signal c_16_3_3_False_resize: signed(21 downto 0);
  signal c_16_3_3_False_shift: signed(21 downto 0);
  signal c_16_6_0_False_resize: signed(21 downto 0);
  signal c_16_6_0_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(19 downto 0);
  signal c_18_5_1_False_resize: signed(19 downto 0);
  signal c_18_5_1_False_shift: signed(19 downto 0);
  signal c_18_7_0_False_resize: signed(19 downto 0);
  signal c_18_7_0_False_shift: signed(19 downto 0);
  signal c_18_3_1_False_resize: signed(19 downto 0);
  signal c_18_3_1_False_shift: signed(19 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_7_2_False_resize: signed(22 downto 0);
  signal c_19_7_2_False_shift: signed(22 downto 0);
  signal c_19_5_0_False_resize: signed(22 downto 0);
  signal c_19_5_0_False_shift: signed(22 downto 0);
  signal c_19_5_1_False_resize: signed(22 downto 0);
  signal c_19_5_1_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(20 downto 0);
  signal c_21_5_1_False_resize: signed(20 downto 0);
  signal c_21_5_1_False_shift: signed(20 downto 0);
  signal c_21_3_2_False_resize: signed(20 downto 0);
  signal c_21_3_2_False_shift: signed(20 downto 0);
  signal c_21_6_0_False_resize: signed(20 downto 0);
  signal c_21_6_0_False_shift: signed(20 downto 0);
  signal c_21_8_0_False_resize: signed(20 downto 0);
  signal c_21_8_0_False_shift: signed(20 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_22_8_1_False_resize: signed(21 downto 0);
  signal c_22_8_1_False_shift: signed(21 downto 0);
  signal c_22_3_0_False_resize: signed(21 downto 0);
  signal c_22_3_0_False_shift: signed(21 downto 0);
  signal c_22_3_3_False_resize: signed(21 downto 0);
  signal c_22_3_3_False_shift: signed(21 downto 0);
  signal c_22_7_0_False_resize: signed(21 downto 0);
  signal c_22_7_0_False_shift: signed(21 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(21 downto 0);
  signal c_24_3_4_False_resize: signed(21 downto 0);
  signal c_24_3_4_False_shift: signed(21 downto 0);
  signal c_24_5_3_False_resize: signed(21 downto 0);
  signal c_24_5_3_False_shift: signed(21 downto 0);
  signal c_24_5_1_False_resize: signed(21 downto 0);
  signal c_24_5_1_False_shift: signed(21 downto 0);
  signal c_24_8_0_False_resize: signed(21 downto 0);
  signal c_24_8_0_False_shift: signed(21 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(19 downto 0);
  signal c_25_3_0_False_resize: signed(19 downto 0);
  signal c_25_3_0_False_shift: signed(19 downto 0);
  signal c_25_6_0_False_resize: signed(19 downto 0);
  signal c_25_6_0_False_shift: signed(19 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(20 downto 0);
  signal c_27_7_1_False_resize: signed(20 downto 0);
  signal c_27_7_1_False_shift: signed(20 downto 0);
  signal c_27_7_0_False_resize: signed(20 downto 0);
  signal c_27_7_0_False_shift: signed(20 downto 0);
  signal c_27_8_1_False_resize: signed(20 downto 0);
  signal c_27_8_1_False_shift: signed(20 downto 0);
  signal c_27_5_1_False_resize: signed(20 downto 0);
  signal c_27_5_1_False_shift: signed(20 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_28_7_1_False_resize: signed(21 downto 0);
  signal c_28_7_1_False_shift: signed(21 downto 0);
  signal c_28_5_0_False_resize: signed(21 downto 0);
  signal c_28_5_0_False_shift: signed(21 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(22 downto 0);
  signal c_30_3_1_False_resize: signed(22 downto 0);
  signal c_30_3_1_False_shift: signed(22 downto 0);
  signal c_30_3_5_False_resize: signed(22 downto 0);
  signal c_30_3_5_False_shift: signed(22 downto 0);
  signal c_30_8_0_False_resize: signed(22 downto 0);
  signal c_30_8_0_False_shift: signed(22 downto 0);
  signal c_30_5_0_False_resize: signed(22 downto 0);
  signal c_30_5_0_False_shift: signed(22 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_7_0_False_resize: signed(23 downto 0);
  signal c_31_7_0_False_shift: signed(23 downto 0);
  signal c_31_5_5_False_resize: signed(23 downto 0);
  signal c_31_5_5_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_i0_resize: signed(23 downto 0);
  signal c_32_i1_resize: signed(23 downto 0);
  signal c_32_i0_shift: signed(23 downto 0);
  signal c_32_i1_shift: signed(23 downto 0);
  signal c_32_arith: signed(23 downto 0);
  signal c_32_oshift: signed(23 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(19 downto 0);
  signal c_33_3_0_False_resize: signed(19 downto 0);
  signal c_33_3_0_False_shift: signed(19 downto 0);
  signal c_33_3_2_False_resize: signed(19 downto 0);
  signal c_33_3_2_False_shift: signed(19 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(21 downto 0);
  signal c_34_5_0_False_resize: signed(21 downto 0);
  signal c_34_5_0_False_shift: signed(21 downto 0);
  signal c_34_3_4_False_resize: signed(21 downto 0);
  signal c_34_3_4_False_shift: signed(21 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_i0_resize: signed(22 downto 0);
  signal c_35_i1_resize: signed(22 downto 0);
  signal c_35_i0_shift: signed(22 downto 0);
  signal c_35_i1_shift: signed(22 downto 0);
  signal c_35_arith: signed(22 downto 0);
  signal c_35_oshift: signed(22 downto 0);
  signal c_35_sub_sel_left: std_logic;
  signal c_35_sub_sel_right: std_logic;
  signal c_36: signed(21 downto 0);
  signal c_36_8_2_False_resize: signed(21 downto 0);
  signal c_36_8_2_False_shift: signed(21 downto 0);
  signal c_36_5_2_False_resize: signed(21 downto 0);
  signal c_36_5_2_False_shift: signed(21 downto 0);
  signal c_36_8_0_False_resize: signed(21 downto 0);
  signal c_36_8_0_False_shift: signed(21 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_3_0_False_resize: signed(23 downto 0);
  signal c_37_3_0_False_shift: signed(23 downto 0);
  signal c_37_5_1_False_resize: signed(23 downto 0);
  signal c_37_5_1_False_shift: signed(23 downto 0);
  signal c_37_3_5_False_resize: signed(23 downto 0);
  signal c_37_3_5_False_shift: signed(23 downto 0);
  signal c_37_3_1_False_resize: signed(23 downto 0);
  signal c_37_3_1_False_shift: signed(23 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_i0_resize: signed(23 downto 0);
  signal c_38_i1_resize: signed(23 downto 0);
  signal c_38_i0_shift: signed(23 downto 0);
  signal c_38_i1_shift: signed(23 downto 0);
  signal c_38_arith: signed(23 downto 0);
  signal c_38_oshift: signed(23 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_45_resize: signed(22 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
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
  -- output node 0 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 1 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 2 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 3 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 4 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 5 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 6 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 7 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 8 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 9 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_48);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [2], [2], [1]]
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_1_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[3], [5], [5], [3]]
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[2], [1], [1], [2]]
  c_4_0_0_False_resize <= resize(c_0, 17);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_1_False_resize <= resize(c_0, 17);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[5], [3], [3], [5]]
  inst_adder_node_5: entity work.adder_node
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
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[9], [9], [9], [9]]
  inst_adder_node_6: entity work.adder_node
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
  -- node of type 'add_sub' in stage 2 with id 7 and associated fundamentals [[15], [17], [15], [17]]
  with config_select_2 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_7_sub_sel,
      x_i => c_1,
      y_i => c_1,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[17], [15], [17], [15]]
  with config_select_2 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_8_sub_sel,
      x_i => c_1,
      y_i => c_1,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[96], [80], [3], [17]]
  c_9_3_4_False_resize <= resize(c_3, 23);
  c_9_3_4_False_shift <= shift_left(c_9_3_4_False_resize, 4);
  c_9_3_5_False_resize <= resize(c_3, 23);
  c_9_3_5_False_shift <= shift_left(c_9_3_5_False_resize, 5);
  c_9_5_0_False_resize <= resize(c_5, 23);
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  c_9_7_0_False_resize <= resize(c_7, 23);
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_3_4_False_shift;
        when "01" => c_9 <= c_9_3_5_False_shift;
        when "10" => c_9 <= c_9_5_0_False_shift;
        when others => c_9 <= c_9_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[36], [17], [96], [3]]
  c_10_7_0_False_resize <= resize(c_7, 23);
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  c_10_6_2_False_resize <= resize(c_6, 23);
  c_10_6_2_False_shift <= shift_left(c_10_6_2_False_resize, 2);
  c_10_5_5_False_resize <= resize(c_5, 23);
  c_10_5_5_False_shift <= shift_left(c_10_5_5_False_resize, 5);
  c_10_3_0_False_resize <= resize(c_3, 23);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_7_0_False_shift;
        when "01" => c_10 <= c_10_6_2_False_shift;
        when "10" => c_10 <= c_10_5_5_False_shift;
        when others => c_10 <= c_10_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[228], [143], [102], [31]]
  with config_select_4 select c_11_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[12], [3], [30], [34]]
  c_12_7_1_False_resize <= resize(c_7, 22);
  c_12_7_1_False_shift <= shift_left(c_12_7_1_False_resize, 1);
  c_12_5_0_False_resize <= resize(c_5, 22);
  c_12_5_0_False_shift <= shift_left(c_12_5_0_False_resize, 0);
  c_12_3_2_False_resize <= resize(c_3, 22);
  c_12_3_2_False_shift <= shift_left(c_12_3_2_False_resize, 2);
  with config_select_3 select c_12_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_7_1_False_shift;
        when "01" => c_12 <= c_12_5_0_False_shift;
        when others => c_12 <= c_12_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[9], [9], [9], [24]]
  c_13_6_0_False_resize <= resize(c_6, 21);
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  c_13_3_3_False_resize <= resize(c_3, 21);
  c_13_3_3_False_shift <= shift_left(c_13_3_3_False_resize, 3);
  with config_select_3 select c_13_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_6_0_False_shift;
        when others => c_13 <= c_13_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[87], [33], [231], [248]]
  with config_select_4 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 22,
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
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[10], [3], [12], [6]]
  c_15_5_2_False_resize <= resize(c_5, 20);
  c_15_5_2_False_shift <= shift_left(c_15_5_2_False_resize, 2);
  c_15_3_1_False_resize <= resize(c_3, 20);
  c_15_3_1_False_shift <= shift_left(c_15_3_1_False_resize, 1);
  c_15_5_0_False_resize <= resize(c_5, 20);
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  c_15_5_1_False_resize <= resize(c_5, 20);
  c_15_5_1_False_shift <= shift_left(c_15_5_1_False_resize, 1);
  with config_select_3 select c_15_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_5_2_False_shift;
        when "01" => c_15 <= c_15_3_1_False_shift;
        when "10" => c_15 <= c_15_5_0_False_shift;
        when others => c_15 <= c_15_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[30], [40], [9], [17]]
  c_16_7_1_False_resize <= resize(c_7, 22);
  c_16_7_1_False_shift <= shift_left(c_16_7_1_False_resize, 1);
  c_16_7_0_False_resize <= resize(c_7, 22);
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  c_16_3_3_False_resize <= resize(c_3, 22);
  c_16_3_3_False_shift <= shift_left(c_16_3_3_False_resize, 3);
  c_16_6_0_False_resize <= resize(c_6, 22);
  c_16_6_0_False_shift <= shift_left(c_16_6_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_7_1_False_shift;
        when "01" => c_16 <= c_16_7_0_False_shift;
        when "10" => c_16 <= c_16_3_3_False_shift;
        when others => c_16 <= c_16_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[190], [88], [183], [113]]
  with config_select_4 select c_17_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[15], [6], [15], [6]]
  c_18_5_1_False_resize <= resize(c_5, 20);
  c_18_5_1_False_shift <= shift_left(c_18_5_1_False_resize, 1);
  c_18_7_0_False_resize <= c_7(19 downto 0);
  c_18_7_0_False_shift <= shift_left(c_18_7_0_False_resize, 0);
  c_18_3_1_False_resize <= resize(c_3, 20);
  c_18_3_1_False_shift <= shift_left(c_18_3_1_False_resize, 1);
  with config_select_3 select c_18_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_5_1_False_shift;
        when "01" => c_18 <= c_18_7_0_False_shift;
        when others => c_18 <= c_18_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[10], [3], [3], [68]]
  c_19_7_2_False_resize <= resize(c_7, 23);
  c_19_7_2_False_shift <= shift_left(c_19_7_2_False_resize, 2);
  c_19_5_0_False_resize <= resize(c_5, 23);
  c_19_5_0_False_shift <= shift_left(c_19_5_0_False_resize, 0);
  c_19_5_1_False_resize <= resize(c_5, 23);
  c_19_5_1_False_shift <= shift_left(c_19_5_1_False_resize, 1);
  with config_select_3 select c_19_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_7_2_False_shift;
        when "01" => c_19 <= c_19_5_0_False_shift;
        when others => c_19 <= c_19_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[230], [93], [243], [164]]
  with config_select_4 select c_20_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
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
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[9], [6], [17], [12]]
  c_21_5_1_False_resize <= resize(c_5, 21);
  c_21_5_1_False_shift <= shift_left(c_21_5_1_False_resize, 1);
  c_21_3_2_False_resize <= resize(c_3, 21);
  c_21_3_2_False_shift <= shift_left(c_21_3_2_False_resize, 2);
  c_21_6_0_False_resize <= resize(c_6, 21);
  c_21_6_0_False_shift <= shift_left(c_21_6_0_False_resize, 0);
  c_21_8_0_False_resize <= c_8;
  c_21_8_0_False_shift <= shift_left(c_21_8_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_5_1_False_shift;
        when "01" => c_21 <= c_21_3_2_False_shift;
        when "10" => c_21 <= c_21_6_0_False_shift;
        when others => c_21 <= c_21_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[15], [5], [34], [24]]
  c_22_8_1_False_resize <= resize(c_8, 22);
  c_22_8_1_False_shift <= shift_left(c_22_8_1_False_resize, 1);
  c_22_3_0_False_resize <= resize(c_3, 22);
  c_22_3_0_False_shift <= shift_left(c_22_3_0_False_resize, 0);
  c_22_3_3_False_resize <= resize(c_3, 22);
  c_22_3_3_False_shift <= shift_left(c_22_3_3_False_resize, 3);
  c_22_7_0_False_resize <= resize(c_7, 22);
  c_22_7_0_False_shift <= shift_left(c_22_7_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_8_1_False_shift;
        when "01" => c_22 <= c_22_3_0_False_shift;
        when "10" => c_22 <= c_22_3_3_False_shift;
        when others => c_22 <= c_22_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 23 and associated fundamentals [[159], [101], [238], [168]]
  with config_select_4 select c_23_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
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
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[48], [24], [17], [10]]
  c_24_3_4_False_resize <= resize(c_3, 22);
  c_24_3_4_False_shift <= shift_left(c_24_3_4_False_resize, 4);
  c_24_5_3_False_resize <= resize(c_5, 22);
  c_24_5_3_False_shift <= shift_left(c_24_5_3_False_resize, 3);
  c_24_5_1_False_resize <= resize(c_5, 22);
  c_24_5_1_False_shift <= shift_left(c_24_5_1_False_resize, 1);
  c_24_8_0_False_resize <= resize(c_8, 22);
  c_24_8_0_False_shift <= shift_left(c_24_8_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_3_4_False_shift;
        when "01" => c_24 <= c_24_5_3_False_shift;
        when "10" => c_24 <= c_24_5_1_False_shift;
        when others => c_24 <= c_24_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[9], [5], [0], [3]]
  c_25_3_0_False_resize <= resize(c_3, 20);
  c_25_3_0_False_shift <= shift_left(c_25_3_0_False_resize, 0);
  c_25_6_0_False_resize <= c_6;
  c_25_6_0_False_shift <= shift_left(c_25_6_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_3_0_False_shift;
        when "01" => c_25 <= c_25_6_0_False_shift;
        when others => c_25 <= to_signed(0, 20);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 26 and associated fundamentals [[201], [91], [68], [37]]
  with config_select_4 select c_26_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[30], [6], [15], [30]]
  c_27_7_1_False_resize <= c_7;
  c_27_7_1_False_shift <= shift_left(c_27_7_1_False_resize, 1);
  c_27_7_0_False_resize <= c_7;
  c_27_7_0_False_shift <= shift_left(c_27_7_0_False_resize, 0);
  c_27_8_1_False_resize <= c_8;
  c_27_8_1_False_shift <= shift_left(c_27_8_1_False_resize, 1);
  c_27_5_1_False_resize <= resize(c_5, 21);
  c_27_5_1_False_shift <= shift_left(c_27_5_1_False_resize, 1);
  with config_select_3 select c_27_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_7_1_False_shift;
        when "01" => c_27 <= c_27_7_0_False_shift;
        when "10" => c_27 <= c_27_8_1_False_shift;
        when others => c_27 <= c_27_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[5], [3], [3], [34]]
  c_28_7_1_False_resize <= resize(c_7, 22);
  c_28_7_1_False_shift <= shift_left(c_28_7_1_False_resize, 1);
  c_28_5_0_False_resize <= resize(c_5, 22);
  c_28_5_0_False_shift <= shift_left(c_28_5_0_False_resize, 0);
  with config_select_3 select c_28_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_7_1_False_shift;
        when others => c_28 <= c_28_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 29 and associated fundamentals [[235], [51], [123], [206]]
  with config_select_4 select c_29_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
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
      sub_i => c_29_sub_sel,
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
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[96], [15], [10], [5]]
  c_30_3_1_False_resize <= resize(c_3, 23);
  c_30_3_1_False_shift <= shift_left(c_30_3_1_False_resize, 1);
  c_30_3_5_False_resize <= resize(c_3, 23);
  c_30_3_5_False_shift <= shift_left(c_30_3_5_False_resize, 5);
  c_30_8_0_False_resize <= resize(c_8, 23);
  c_30_8_0_False_shift <= shift_left(c_30_8_0_False_resize, 0);
  c_30_5_0_False_resize <= resize(c_5, 23);
  c_30_5_0_False_shift <= shift_left(c_30_5_0_False_resize, 0);
  with config_select_3 select c_30_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_3_1_False_shift;
        when "01" => c_30 <= c_30_3_5_False_shift;
        when "10" => c_30 <= c_30_8_0_False_shift;
        when others => c_30 <= c_30_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[160], [17], [96], [0]]
  c_31_7_0_False_resize <= resize(c_7, 24);
  c_31_7_0_False_shift <= shift_left(c_31_7_0_False_resize, 0);
  c_31_5_5_False_resize <= resize(c_5, 24);
  c_31_5_5_False_shift <= shift_left(c_31_5_5_False_resize, 5);
  with config_select_3 select c_31_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_7_0_False_shift;
        when "01" => c_31 <= c_31_5_5_False_shift;
        when others => c_31 <= to_signed(0, 24);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 32 and associated fundamentals [[64], [94], [232], [20]]
  with config_select_4 select c_32_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      sub_i => c_32_sub_sel,
      x_i => c_30,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[12], [5], [5], [3]]
  c_33_3_0_False_resize <= resize(c_3, 20);
  c_33_3_0_False_shift <= shift_left(c_33_3_0_False_resize, 0);
  c_33_3_2_False_resize <= resize(c_3, 20);
  c_33_3_2_False_shift <= shift_left(c_33_3_2_False_resize, 2);
  with config_select_3 select c_33_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_3_0_False_shift;
        when others => c_33 <= c_33_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[5], [3], [3], [48]]
  c_34_5_0_False_resize <= resize(c_5, 22);
  c_34_5_0_False_shift <= shift_left(c_34_5_0_False_resize, 0);
  c_34_3_4_False_resize <= resize(c_3, 22);
  c_34_3_4_False_shift <= shift_left(c_34_3_4_False_resize, 4);
  with config_select_3 select c_34_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_5_0_False_shift;
        when others => c_34 <= c_34_3_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 35 and associated fundamentals [[2], [1], [11], [99]]
  with config_select_4 select c_35_sub_sel_left <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  with config_select_4 select c_35_sub_sel_right <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      sub_a_i => c_35_sub_sel_left,
      sub_b_i => c_35_sub_sel_right,
      x_i => c_33,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 36 and associated fundamentals [[17], [60], [12], [20]]
  c_36_8_2_False_resize <= resize(c_8, 22);
  c_36_8_2_False_shift <= shift_left(c_36_8_2_False_resize, 2);
  c_36_5_2_False_resize <= resize(c_5, 22);
  c_36_5_2_False_shift <= shift_left(c_36_5_2_False_resize, 2);
  c_36_8_0_False_resize <= resize(c_8, 22);
  c_36_8_0_False_shift <= shift_left(c_36_8_0_False_resize, 0);
  with config_select_3 select c_36_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_8_2_False_shift;
        when "01" => c_36 <= c_36_5_2_False_shift;
        when others => c_36 <= c_36_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[6], [6], [160], [3]]
  c_37_3_0_False_resize <= resize(c_3, 24);
  c_37_3_0_False_shift <= shift_left(c_37_3_0_False_resize, 0);
  c_37_5_1_False_resize <= resize(c_5, 24);
  c_37_5_1_False_shift <= shift_left(c_37_5_1_False_resize, 1);
  c_37_3_5_False_resize <= resize(c_3, 24);
  c_37_3_5_False_shift <= shift_left(c_37_3_5_False_resize, 5);
  c_37_3_1_False_resize <= resize(c_3, 24);
  c_37_3_1_False_shift <= shift_left(c_37_3_1_False_resize, 1);
  with config_select_3 select c_37_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_3_0_False_shift;
        when "01" => c_37 <= c_37_5_1_False_shift;
        when "10" => c_37 <= c_37_3_5_False_shift;
        when others => c_37 <= c_37_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 38 and associated fundamentals [[62], [246], [208], [77]]
  with config_select_4 select c_38_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
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
      sub_i => c_38_sub_sel,
      x_i => c_36,
      y_i => c_37,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[235], [51], [123], [206]]
  c_39_resize <= c_29;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 4 with id 40 and associated fundamentals [[230], [93], [243], [164]]
  c_40_resize <= c_20;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[64], [94], [232], [20]]
  c_41_resize <= c_32;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[190], [88], [183], [113]]
  c_42_resize <= c_17;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[62], [246], [208], [77]]
  c_43_resize <= c_38;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[228], [143], [102], [31]]
  c_44_resize <= c_11;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[2], [1], [11], [99]]
  c_45_resize <= c_35;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[87], [33], [231], [248]]
  c_46_resize <= c_14;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[201], [91], [68], [37]]
  c_47_resize <= c_26;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[159], [101], [238], [168]]
  c_48_resize <= c_23;
  c_48 <= shift_left(c_48_resize, 0);
end architecture;

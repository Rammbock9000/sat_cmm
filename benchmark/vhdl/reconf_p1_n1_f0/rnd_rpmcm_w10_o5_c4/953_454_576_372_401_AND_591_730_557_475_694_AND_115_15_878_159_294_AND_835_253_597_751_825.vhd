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
  signal c_1: signed(24 downto 0);
  signal c_1_0_0_False_resize: signed(24 downto 0);
  signal c_1_0_0_False_shift: signed(24 downto 0);
  signal c_1_0_2_False_resize: signed(24 downto 0);
  signal c_1_0_2_False_shift: signed(24 downto 0);
  signal c_1_0_9_False_resize: signed(24 downto 0);
  signal c_1_0_9_False_shift: signed(24 downto 0);
  signal c_1_0_5_False_resize: signed(24 downto 0);
  signal c_1_0_5_False_shift: signed(24 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(22 downto 0);
  signal c_2_0_7_False_resize: signed(22 downto 0);
  signal c_2_0_7_False_shift: signed(22 downto 0);
  signal c_2_0_0_False_resize: signed(22 downto 0);
  signal c_2_0_0_False_shift: signed(22 downto 0);
  signal c_2_0_5_False_resize: signed(22 downto 0);
  signal c_2_0_5_False_shift: signed(22 downto 0);
  signal c_2_0_3_False_resize: signed(22 downto 0);
  signal c_2_0_3_False_shift: signed(22 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(24 downto 0);
  signal c_3_i0_resize: signed(24 downto 0);
  signal c_3_i1_resize: signed(24 downto 0);
  signal c_3_i0_shift: signed(24 downto 0);
  signal c_3_i1_shift: signed(24 downto 0);
  signal c_3_arith: signed(24 downto 0);
  signal c_3_oshift: signed(24 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_0_2_False_resize: signed(19 downto 0);
  signal c_4_0_2_False_shift: signed(19 downto 0);
  signal c_4_0_4_False_resize: signed(19 downto 0);
  signal c_4_0_4_False_shift: signed(19 downto 0);
  signal c_4_0_3_False_resize: signed(19 downto 0);
  signal c_4_0_3_False_shift: signed(19 downto 0);
  signal c_4_0_0_False_resize: signed(19 downto 0);
  signal c_4_0_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_0_1_False_resize: signed(20 downto 0);
  signal c_5_0_1_False_shift: signed(20 downto 0);
  signal c_5_0_0_False_resize: signed(20 downto 0);
  signal c_5_0_0_False_shift: signed(20 downto 0);
  signal c_5_0_5_False_resize: signed(20 downto 0);
  signal c_5_0_5_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(32 downto 0);
  signal c_7_i0_resize: signed(32 downto 0);
  signal c_7_i1_resize: signed(32 downto 0);
  signal c_7_i0_shift: signed(32 downto 0);
  signal c_7_i1_shift: signed(32 downto 0);
  signal c_7_arith: signed(32 downto 0);
  signal c_7_oshift: signed(32 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_8_i0_resize: signed(19 downto 0);
  signal c_8_i1_resize: signed(19 downto 0);
  signal c_8_i0_shift: signed(19 downto 0);
  signal c_8_i1_shift: signed(19 downto 0);
  signal c_8_arith: signed(19 downto 0);
  signal c_8_oshift: signed(19 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(21 downto 0);
  signal c_9_0_0_False_resize: signed(21 downto 0);
  signal c_9_0_0_False_shift: signed(21 downto 0);
  signal c_9_0_4_False_resize: signed(21 downto 0);
  signal c_9_0_4_False_shift: signed(21 downto 0);
  signal c_9_0_5_False_resize: signed(21 downto 0);
  signal c_9_0_5_False_shift: signed(21 downto 0);
  signal c_9_0_6_False_resize: signed(21 downto 0);
  signal c_9_0_6_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(29 downto 0);
  signal c_10_i0_resize: signed(29 downto 0);
  signal c_10_i1_resize: signed(29 downto 0);
  signal c_10_i0_shift: signed(29 downto 0);
  signal c_10_i1_shift: signed(29 downto 0);
  signal c_10_arith: signed(29 downto 0);
  signal c_10_oshift: signed(29 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(21 downto 0);
  signal c_11_8_3_False_resize: signed(21 downto 0);
  signal c_11_8_3_False_shift: signed(21 downto 0);
  signal c_11_8_0_False_resize: signed(21 downto 0);
  signal c_11_8_0_False_shift: signed(21 downto 0);
  signal c_11_8_2_False_resize: signed(21 downto 0);
  signal c_11_8_2_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_8_3_False_resize: signed(22 downto 0);
  signal c_12_8_3_False_shift: signed(22 downto 0);
  signal c_12_8_0_False_resize: signed(22 downto 0);
  signal c_12_8_0_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(19 downto 0);
  signal c_14_0_0_False_resize: signed(19 downto 0);
  signal c_14_0_0_False_shift: signed(19 downto 0);
  signal c_14_0_1_False_resize: signed(19 downto 0);
  signal c_14_0_1_False_shift: signed(19 downto 0);
  signal c_14_0_4_False_resize: signed(19 downto 0);
  signal c_14_0_4_False_shift: signed(19 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_i0_resize: signed(22 downto 0);
  signal c_15_i1_resize: signed(22 downto 0);
  signal c_15_i0_shift: signed(22 downto 0);
  signal c_15_i1_shift: signed(22 downto 0);
  signal c_15_arith: signed(22 downto 0);
  signal c_15_oshift: signed(22 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_8_2_False_resize: signed(21 downto 0);
  signal c_16_8_2_False_shift: signed(21 downto 0);
  signal c_16_8_3_False_resize: signed(21 downto 0);
  signal c_16_8_3_False_shift: signed(21 downto 0);
  signal c_16_8_0_False_resize: signed(21 downto 0);
  signal c_16_8_0_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_8_5_False_resize: signed(24 downto 0);
  signal c_17_8_5_False_shift: signed(24 downto 0);
  signal c_17_8_4_False_resize: signed(24 downto 0);
  signal c_17_8_4_False_shift: signed(24 downto 0);
  signal c_17_8_0_False_resize: signed(24 downto 0);
  signal c_17_8_0_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(29 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(32 downto 0);
  signal c_21_i1_resize: signed(32 downto 0);
  signal c_21_i0_shift: signed(32 downto 0);
  signal c_21_i1_shift: signed(32 downto 0);
  signal c_21_arith: signed(32 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(18 downto 0);
  signal c_22_0_0_False_resize: signed(18 downto 0);
  signal c_22_0_0_False_shift: signed(18 downto 0);
  signal c_22_0_3_False_resize: signed(18 downto 0);
  signal c_22_0_3_False_shift: signed(18 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_0_4_False_resize: signed(24 downto 0);
  signal c_23_0_4_False_shift: signed(24 downto 0);
  signal c_23_0_9_False_resize: signed(24 downto 0);
  signal c_23_0_9_False_shift: signed(24 downto 0);
  signal c_23_0_7_False_resize: signed(24 downto 0);
  signal c_23_0_7_False_shift: signed(24 downto 0);
  signal c_23_0_0_False_resize: signed(24 downto 0);
  signal c_23_0_0_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_i0_resize: signed(24 downto 0);
  signal c_24_i1_resize: signed(24 downto 0);
  signal c_24_i0_shift: signed(24 downto 0);
  signal c_24_i1_shift: signed(24 downto 0);
  signal c_24_arith: signed(24 downto 0);
  signal c_24_oshift: signed(24 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(25 downto 0);
  signal c_25_15_6_False_resize: signed(25 downto 0);
  signal c_25_15_6_False_shift: signed(25 downto 0);
  signal c_25_15_4_False_resize: signed(25 downto 0);
  signal c_25_15_4_False_shift: signed(25 downto 0);
  signal c_25_15_1_False_resize: signed(25 downto 0);
  signal c_25_15_1_False_shift: signed(25 downto 0);
  signal c_25_15_0_False_resize: signed(25 downto 0);
  signal c_25_15_0_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_24_0_False_resize: signed(24 downto 0);
  signal c_26_24_0_False_shift: signed(24 downto 0);
  signal c_26_6_3_False_resize: signed(24 downto 0);
  signal c_26_6_3_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(23 downto 0);
  signal c_28_19_1_False_resize: signed(23 downto 0);
  signal c_28_19_1_False_shift: signed(23 downto 0);
  signal c_28_13_0_False_resize: signed(23 downto 0);
  signal c_28_13_0_False_shift: signed(23 downto 0);
  signal c_28_18_1_False_resize: signed(23 downto 0);
  signal c_28_18_1_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_18_3_False_resize: signed(25 downto 0);
  signal c_29_18_3_False_shift: signed(25 downto 0);
  signal c_29_13_3_False_resize: signed(25 downto 0);
  signal c_29_13_3_False_shift: signed(25 downto 0);
  signal c_29_19_0_False_resize: signed(25 downto 0);
  signal c_29_19_0_False_shift: signed(25 downto 0);
  signal c_29_19_1_False_resize: signed(25 downto 0);
  signal c_29_19_1_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_i0_resize: signed(25 downto 0);
  signal c_30_i1_resize: signed(25 downto 0);
  signal c_30_i0_shift: signed(25 downto 0);
  signal c_30_i1_shift: signed(25 downto 0);
  signal c_30_arith: signed(25 downto 0);
  signal c_30_oshift: signed(25 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(26 downto 0);
  signal c_31_3_1_False_resize: signed(26 downto 0);
  signal c_31_3_1_False_shift: signed(26 downto 0);
  signal c_31_3_0_False_resize: signed(26 downto 0);
  signal c_31_3_0_False_shift: signed(26 downto 0);
  signal c_31_24_6_False_resize: signed(26 downto 0);
  signal c_31_24_6_False_shift: signed(26 downto 0);
  signal c_31_15_4_False_resize: signed(26 downto 0);
  signal c_31_15_4_False_shift: signed(26 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_3_1_False_resize: signed(24 downto 0);
  signal c_32_3_1_False_shift: signed(24 downto 0);
  signal c_32_6_0_False_resize: signed(24 downto 0);
  signal c_32_6_0_False_shift: signed(24 downto 0);
  signal c_32_24_0_False_resize: signed(24 downto 0);
  signal c_32_24_0_False_shift: signed(24 downto 0);
  signal c_32_24_1_False_resize: signed(24 downto 0);
  signal c_32_24_1_False_shift: signed(24 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(25 downto 0);
  signal c_33_i1_resize: signed(25 downto 0);
  signal c_33_i0_shift: signed(25 downto 0);
  signal c_33_i1_shift: signed(25 downto 0);
  signal c_33_arith: signed(25 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(24 downto 0);
  signal c_34_3_0_False_resize: signed(24 downto 0);
  signal c_34_3_0_False_shift: signed(24 downto 0);
  signal c_34_6_1_False_resize: signed(24 downto 0);
  signal c_34_6_1_False_shift: signed(24 downto 0);
  signal c_34_3_3_False_resize: signed(24 downto 0);
  signal c_34_3_3_False_shift: signed(24 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_i0_resize: signed(25 downto 0);
  signal c_35_i1_resize: signed(25 downto 0);
  signal c_35_i0_shift: signed(25 downto 0);
  signal c_35_i1_shift: signed(25 downto 0);
  signal c_35_arith: signed(25 downto 0);
  signal c_35_oshift: signed(25 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(25 downto 0);
  signal c_36_21_0_False_resize: signed(25 downto 0);
  signal c_36_21_0_False_shift: signed(25 downto 0);
  signal c_36_27_0_False_resize: signed(25 downto 0);
  signal c_36_27_0_False_shift: signed(25 downto 0);
  signal c_36_35_0_False_resize: signed(25 downto 0);
  signal c_36_35_0_False_shift: signed(25 downto 0);
  signal c_36_33_0_False_resize: signed(25 downto 0);
  signal c_36_33_0_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_resize: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_35_0_False_resize: signed(25 downto 0);
  signal c_38_35_0_False_shift: signed(25 downto 0);
  signal c_38_33_0_False_resize: signed(25 downto 0);
  signal c_38_33_0_False_shift: signed(25 downto 0);
  signal c_38_35_1_False_resize: signed(25 downto 0);
  signal c_38_35_1_False_shift: signed(25 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_resize: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_33_0_False_resize: signed(25 downto 0);
  signal c_40_33_0_False_shift: signed(25 downto 0);
  signal c_40_21_0_False_resize: signed(25 downto 0);
  signal c_40_21_0_False_shift: signed(25 downto 0);
  signal c_40_21_3_False_resize: signed(25 downto 0);
  signal c_40_21_3_False_shift: signed(25 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_35_2_False_resize: signed(25 downto 0);
  signal c_42_35_2_False_shift: signed(25 downto 0);
  signal c_42_27_0_False_resize: signed(25 downto 0);
  signal c_42_27_0_False_shift: signed(25 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_resize: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_resize: signed(25 downto 0);
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
  -- output node 0 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 1 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 2 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 3 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 4 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_44);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [32], [1], [512]]
  c_1_0_0_False_resize <= resize(c_0, 25);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 25);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_9_False_resize <= resize(c_0, 25);
  c_1_0_9_False_shift <= shift_left(c_1_0_9_False_resize, 9);
  c_1_0_5_False_resize <= resize(c_0, 25);
  c_1_0_5_False_shift <= shift_left(c_1_0_5_False_resize, 5);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_0_False_shift;
        when "01" => c_1 <= c_1_0_2_False_shift;
        when "10" => c_1 <= c_1_0_9_False_shift;
        when others => c_1 <= c_1_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[32], [8], [128], [1]]
  c_2_0_7_False_resize <= resize(c_0, 23);
  c_2_0_7_False_shift <= shift_left(c_2_0_7_False_resize, 7);
  c_2_0_0_False_resize <= resize(c_0, 23);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 23);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  c_2_0_3_False_resize <= resize(c_0, 23);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  with config_select_1 select c_2_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_7_False_shift;
        when "01" => c_2 <= c_2_0_0_False_shift;
        when "10" => c_2 <= c_2_0_5_False_shift;
        when others => c_2 <= c_2_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-28], [40], [129], [511]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [8], [4], [16]]
  c_4_0_2_False_resize <= resize(c_0, 20);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  c_4_0_4_False_resize <= resize(c_0, 20);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  c_4_0_3_False_resize <= resize(c_0, 20);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  c_4_0_0_False_resize <= resize(c_0, 20);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_0_2_False_shift;
        when "01" => c_4 <= c_4_0_4_False_shift;
        when "10" => c_4 <= c_4_0_3_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [2], [32], [1]]
  c_5_0_1_False_resize <= resize(c_0, 21);
  c_5_0_1_False_shift <= shift_left(c_5_0_1_False_resize, 1);
  c_5_0_0_False_resize <= resize(c_0, 21);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_5_False_resize <= resize(c_0, 21);
  c_5_0_5_False_shift <= shift_left(c_5_0_5_False_resize, 5);
  with config_select_1 select c_5_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_1_False_shift;
        when "01" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[6], [60], [-32], [130]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 3,
      s_y_i => 1,
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
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[2560], [66560], [-16256], [67712]]
  with config_select_3 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
      w_o => 33,
      s_x_i => 10,
      s_y_i => 7,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 8 and associated fundamentals [[-7], [9], [-7], [9]]
  with config_select_1 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
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
      sub_i => c_8_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[64], [1], [16], [32]]
  c_9_0_0_False_resize <= resize(c_0, 22);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_4_False_resize <= resize(c_0, 22);
  c_9_0_4_False_shift <= shift_left(c_9_0_4_False_resize, 4);
  c_9_0_5_False_resize <= resize(c_0, 22);
  c_9_0_5_False_shift <= shift_left(c_9_0_5_False_resize, 5);
  c_9_0_6_False_resize <= resize(c_0, 22);
  c_9_0_6_False_shift <= shift_left(c_9_0_6_False_resize, 6);
  with config_select_1 select c_9_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_0_0_False_shift;
        when "01" => c_9 <= c_9_0_4_False_shift;
        when "10" => c_9 <= c_9_0_5_False_shift;
        when others => c_9 <= c_9_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 10 and associated fundamentals [[11776], [4736], [-1536], [8704]]
  with config_select_2 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 30,
      s_x_i => 7,
      s_y_i => 9,
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
      y_i => c_8,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[-56], [36], [-7], [9]]
  c_11_8_3_False_resize <= resize(c_8, 22);
  c_11_8_3_False_shift <= shift_left(c_11_8_3_False_resize, 3);
  c_11_8_0_False_resize <= resize(c_8, 22);
  c_11_8_0_False_shift <= shift_left(c_11_8_0_False_resize, 0);
  c_11_8_2_False_resize <= resize(c_8, 22);
  c_11_8_2_False_shift <= shift_left(c_11_8_2_False_resize, 2);
  with config_select_2 select c_11_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_8_3_False_shift;
        when "01" => c_11 <= c_11_8_0_False_shift;
        when others => c_11 <= c_11_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[-7], [72], [-7], [9]]
  c_12_8_3_False_resize <= resize(c_8, 23);
  c_12_8_3_False_shift <= shift_left(c_12_8_3_False_resize, 3);
  c_12_8_0_False_resize <= resize(c_8, 23);
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  with config_select_2 select c_12_sel <= 
    "0" when "01",
    "1" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_8_3_False_shift;
        when others => c_12 <= c_12_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 13 and associated fundamentals [[-49], [108], [-14], [0]]
  with config_select_3 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[2], [1], [16], [16]]
  c_14_0_0_False_resize <= resize(c_0, 20);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_1_False_resize <= resize(c_0, 20);
  c_14_0_1_False_shift <= shift_left(c_14_0_1_False_resize, 1);
  c_14_0_4_False_resize <= resize(c_0, 20);
  c_14_0_4_False_shift <= shift_left(c_14_0_4_False_resize, 4);
  with config_select_1 select c_14_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_0_0_False_shift;
        when "01" => c_14 <= c_14_0_1_False_shift;
        when others => c_14 <= c_14_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 15 and associated fundamentals [[15], [-5], [71], [55]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 23,
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
      x_i => c_14,
      y_i => c_8,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[-7], [36], [-56], [36]]
  c_16_8_2_False_resize <= resize(c_8, 22);
  c_16_8_2_False_shift <= shift_left(c_16_8_2_False_resize, 2);
  c_16_8_3_False_resize <= resize(c_8, 22);
  c_16_8_3_False_shift <= shift_left(c_16_8_3_False_resize, 3);
  c_16_8_0_False_resize <= resize(c_8, 22);
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  with config_select_2 select c_16_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_8_2_False_shift;
        when "01" => c_16 <= c_16_8_3_False_shift;
        when others => c_16 <= c_16_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[-112], [9], [-7], [288]]
  c_17_8_5_False_resize <= resize(c_8, 25);
  c_17_8_5_False_shift <= shift_left(c_17_8_5_False_resize, 5);
  c_17_8_4_False_resize <= resize(c_8, 25);
  c_17_8_4_False_shift <= shift_left(c_17_8_4_False_resize, 4);
  c_17_8_0_False_resize <= resize(c_8, 25);
  c_17_8_0_False_shift <= shift_left(c_17_8_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_8_5_False_shift;
        when "01" => c_17 <= c_17_8_4_False_shift;
        when others => c_17 <= c_17_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 18 and associated fundamentals [[105], [45], [-49], [324]]
  with config_select_3 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 25,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[-225], [-85], [-1065], [-825]]
  with config_select_3 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_19_sub_sel,
      x_i => c_15,
      y_i => c_15,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[11776], [4736], [-1536], [8704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[72], [557], [115], [597]]
  with config_select_4 select c_21_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 33,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 7,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_21_sub_sel,
      x_i => c_20,
      y_i => c_7,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 22 and associated fundamentals [[8], [1], [1], [1]]
  c_22_0_0_False_resize <= resize(c_0, 19);
  c_22_0_0_False_shift <= shift_left(c_22_0_0_False_resize, 0);
  c_22_0_3_False_resize <= resize(c_0, 19);
  c_22_0_3_False_shift <= shift_left(c_22_0_3_False_resize, 3);
  with config_select_1 select c_22_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_0_0_False_shift;
        when others => c_22 <= c_22_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 23 and associated fundamentals [[1], [512], [16], [128]]
  c_23_0_4_False_resize <= resize(c_0, 25);
  c_23_0_4_False_shift <= shift_left(c_23_0_4_False_resize, 4);
  c_23_0_9_False_resize <= resize(c_0, 25);
  c_23_0_9_False_shift <= shift_left(c_23_0_9_False_resize, 9);
  c_23_0_7_False_resize <= resize(c_0, 25);
  c_23_0_7_False_shift <= shift_left(c_23_0_7_False_resize, 7);
  c_23_0_0_False_resize <= resize(c_0, 25);
  c_23_0_0_False_shift <= shift_left(c_23_0_0_False_resize, 0);
  with config_select_1 select c_23_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_0_4_False_shift;
        when "01" => c_23 <= c_23_0_9_False_shift;
        when "10" => c_23 <= c_23_0_7_False_shift;
        when others => c_23 <= c_23_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 24 and associated fundamentals [[7], [-511], [17], [129]]
  with config_select_2 select c_24_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 25,
      w_o => 25,
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
      c_24 <= c_24_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[960], [-5], [142], [880]]
  c_25_15_6_False_resize <= resize(c_15, 26);
  c_25_15_6_False_shift <= shift_left(c_25_15_6_False_resize, 6);
  c_25_15_4_False_resize <= resize(c_15, 26);
  c_25_15_4_False_shift <= shift_left(c_25_15_4_False_resize, 4);
  c_25_15_1_False_resize <= resize(c_15, 26);
  c_25_15_1_False_shift <= shift_left(c_25_15_1_False_resize, 1);
  c_25_15_0_False_resize <= resize(c_15, 26);
  c_25_15_0_False_shift <= shift_left(c_25_15_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_15_6_False_shift;
        when "01" => c_25 <= c_25_15_4_False_shift;
        when "10" => c_25 <= c_25_15_1_False_shift;
        when others => c_25 <= c_25_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[7], [480], [17], [129]]
  c_26_24_0_False_resize <= c_24;
  c_26_24_0_False_shift <= shift_left(c_26_24_0_False_resize, 0);
  c_26_6_3_False_resize <= resize(c_6, 25);
  c_26_6_3_False_shift <= shift_left(c_26_6_3_False_resize, 3);
  with config_select_3 select c_26_sel <= 
    "0" when "00",
    "0" when "11",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_24_0_False_shift;
        when others => c_26 <= c_26_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 27 and associated fundamentals [[953], [475], [159], [751]]
  with config_select_4 select c_27_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_27_sub_sel,
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[-49], [-170], [-98], [0]]
  c_28_19_1_False_resize <= c_19(23 downto 0);
  c_28_19_1_False_shift <= shift_left(c_28_19_1_False_resize, 1);
  c_28_13_0_False_resize <= resize(c_13, 24);
  c_28_13_0_False_shift <= shift_left(c_28_13_0_False_resize, 0);
  c_28_18_1_False_resize <= c_18(23 downto 0);
  c_28_18_1_False_shift <= shift_left(c_28_18_1_False_resize, 1);
  with config_select_4 select c_28_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_19_1_False_shift;
        when "01" => c_28 <= c_28_13_0_False_shift;
        when others => c_28 <= c_28_18_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[-450], [864], [-392], [-825]]
  c_29_18_3_False_resize <= resize(c_18, 26);
  c_29_18_3_False_shift <= shift_left(c_29_18_3_False_resize, 3);
  c_29_13_3_False_resize <= resize(c_13, 26);
  c_29_13_3_False_shift <= shift_left(c_29_13_3_False_resize, 3);
  c_29_19_0_False_resize <= c_19;
  c_29_19_0_False_shift <= shift_left(c_29_19_0_False_resize, 0);
  c_29_19_1_False_resize <= c_19;
  c_29_19_1_False_shift <= shift_left(c_29_19_1_False_resize, 1);
  with config_select_4 select c_29_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_18_3_False_shift;
        when "01" => c_29 <= c_29_13_3_False_shift;
        when "10" => c_29 <= c_29_19_0_False_shift;
        when others => c_29 <= c_29_19_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 30 and associated fundamentals [[401], [694], [294], [825]]
  with config_select_5 select c_30_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 26,
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
      sub_i => c_30_sub_sel,
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[448], [80], [1136], [511]]
  c_31_3_1_False_resize <= resize(c_3, 27);
  c_31_3_1_False_shift <= shift_left(c_31_3_1_False_resize, 1);
  c_31_3_0_False_resize <= resize(c_3, 27);
  c_31_3_0_False_shift <= shift_left(c_31_3_0_False_resize, 0);
  c_31_24_6_False_resize <= resize(c_24, 27);
  c_31_24_6_False_shift <= shift_left(c_31_24_6_False_resize, 6);
  c_31_15_4_False_resize <= resize(c_15, 27);
  c_31_15_4_False_shift <= shift_left(c_31_15_4_False_resize, 4);
  with config_select_3 select c_31_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_3_1_False_shift;
        when "01" => c_31 <= c_31_3_0_False_shift;
        when "10" => c_31 <= c_31_24_6_False_shift;
        when others => c_31 <= c_31_15_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[6], [-511], [258], [258]]
  c_32_3_1_False_resize <= c_3;
  c_32_3_1_False_shift <= shift_left(c_32_3_1_False_resize, 1);
  c_32_6_0_False_resize <= resize(c_6, 25);
  c_32_6_0_False_shift <= shift_left(c_32_6_0_False_resize, 0);
  c_32_24_0_False_resize <= c_24;
  c_32_24_0_False_shift <= shift_left(c_32_24_0_False_resize, 0);
  c_32_24_1_False_resize <= c_24;
  c_32_24_1_False_shift <= shift_left(c_32_24_1_False_resize, 1);
  with config_select_3 select c_32_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_3_1_False_shift;
        when "01" => c_32 <= c_32_6_0_False_shift;
        when "10" => c_32 <= c_32_24_0_False_shift;
        when others => c_32 <= c_32_24_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 33 and associated fundamentals [[454], [591], [878], [253]]
  with config_select_4 select c_33_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_33_sub_sel,
      x_i => c_31,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[12], [320], [-64], [511]]
  c_34_3_0_False_resize <= c_3;
  c_34_3_0_False_shift <= shift_left(c_34_3_0_False_resize, 0);
  c_34_6_1_False_resize <= resize(c_6, 25);
  c_34_6_1_False_shift <= shift_left(c_34_6_1_False_resize, 1);
  c_34_3_3_False_resize <= c_3;
  c_34_3_3_False_shift <= shift_left(c_34_3_3_False_resize, 3);
  with config_select_3 select c_34_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_3_0_False_shift;
        when "01" => c_34 <= c_34_6_1_False_shift;
        when others => c_34 <= c_34_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 35 and associated fundamentals [[93], [365], [15], [835]]
  with config_select_4 select c_35_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_35_sub_sel,
      x_i => c_18,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 36 and associated fundamentals [[953], [591], [115], [835]]
  c_36_21_0_False_resize <= c_21;
  c_36_21_0_False_shift <= shift_left(c_36_21_0_False_resize, 0);
  c_36_27_0_False_resize <= c_27;
  c_36_27_0_False_shift <= shift_left(c_36_27_0_False_resize, 0);
  c_36_35_0_False_resize <= c_35;
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  c_36_33_0_False_resize <= c_33;
  c_36_33_0_False_shift <= shift_left(c_36_33_0_False_resize, 0);
  with config_select_5 select c_36_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_21_0_False_shift;
        when "01" => c_36 <= c_36_27_0_False_shift;
        when "10" => c_36 <= c_36_35_0_False_shift;
        when others => c_36 <= c_36_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 37 and associated fundamentals [[953], [591], [115], [835]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 5 with id 38 and associated fundamentals [[454], [730], [15], [253]]
  c_38_35_0_False_resize <= c_35;
  c_38_35_0_False_shift <= shift_left(c_38_35_0_False_resize, 0);
  c_38_33_0_False_resize <= c_33;
  c_38_33_0_False_shift <= shift_left(c_38_33_0_False_resize, 0);
  c_38_35_1_False_resize <= c_35;
  c_38_35_1_False_shift <= shift_left(c_38_35_1_False_resize, 1);
  with config_select_5 select c_38_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_35_0_False_shift;
        when "01" => c_38 <= c_38_33_0_False_shift;
        when others => c_38 <= c_38_35_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 39 and associated fundamentals [[454], [730], [15], [253]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 5 with id 40 and associated fundamentals [[576], [557], [878], [597]]
  c_40_33_0_False_resize <= c_33;
  c_40_33_0_False_shift <= shift_left(c_40_33_0_False_resize, 0);
  c_40_21_0_False_resize <= c_21;
  c_40_21_0_False_shift <= shift_left(c_40_21_0_False_resize, 0);
  c_40_21_3_False_resize <= c_21;
  c_40_21_3_False_shift <= shift_left(c_40_21_3_False_resize, 3);
  with config_select_5 select c_40_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_33_0_False_shift;
        when "01" => c_40 <= c_40_21_0_False_shift;
        when others => c_40 <= c_40_21_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 41 and associated fundamentals [[576], [557], [878], [597]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 5 with id 42 and associated fundamentals [[372], [475], [159], [751]]
  c_42_35_2_False_resize <= c_35;
  c_42_35_2_False_shift <= shift_left(c_42_35_2_False_resize, 2);
  c_42_27_0_False_resize <= c_27;
  c_42_27_0_False_shift <= shift_left(c_42_27_0_False_resize, 0);
  with config_select_5 select c_42_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_35_2_False_shift;
        when others => c_42 <= c_42_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 43 and associated fundamentals [[372], [475], [159], [751]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 5 with id 44 and associated fundamentals [[401], [694], [294], [825]]
  c_44_resize <= c_30;
  c_44 <= shift_left(c_44_resize, 0);
end architecture;

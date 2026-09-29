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
  signal c_1: signed(20 downto 0);
  signal c_1_0_4_False_resize: signed(20 downto 0);
  signal c_1_0_4_False_shift: signed(20 downto 0);
  signal c_1_0_0_False_resize: signed(20 downto 0);
  signal c_1_0_0_False_shift: signed(20 downto 0);
  signal c_1_0_5_False_resize: signed(20 downto 0);
  signal c_1_0_5_False_shift: signed(20 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_0_0_False_resize: signed(17 downto 0);
  signal c_2_0_0_False_shift: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(23 downto 0);
  signal c_4_0_0_False_resize: signed(23 downto 0);
  signal c_4_0_0_False_shift: signed(23 downto 0);
  signal c_4_0_8_False_resize: signed(23 downto 0);
  signal c_4_0_8_False_shift: signed(23 downto 0);
  signal c_4_0_7_False_resize: signed(23 downto 0);
  signal c_4_0_7_False_shift: signed(23 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_0_5_False_resize: signed(24 downto 0);
  signal c_5_0_5_False_shift: signed(24 downto 0);
  signal c_5_0_9_False_resize: signed(24 downto 0);
  signal c_5_0_9_False_shift: signed(24 downto 0);
  signal c_5_0_2_False_resize: signed(24 downto 0);
  signal c_5_0_2_False_shift: signed(24 downto 0);
  signal c_5_0_0_False_resize: signed(24 downto 0);
  signal c_5_0_0_False_shift: signed(24 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(25 downto 0);
  signal c_7_0_10_False_resize: signed(25 downto 0);
  signal c_7_0_10_False_shift: signed(25 downto 0);
  signal c_7_0_1_False_resize: signed(25 downto 0);
  signal c_7_0_1_False_shift: signed(25 downto 0);
  signal c_7_0_0_False_resize: signed(25 downto 0);
  signal c_7_0_0_False_shift: signed(25 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_8_0_0_False_resize: signed(19 downto 0);
  signal c_8_0_0_False_shift: signed(19 downto 0);
  signal c_8_0_1_False_resize: signed(19 downto 0);
  signal c_8_0_1_False_shift: signed(19 downto 0);
  signal c_8_0_4_False_resize: signed(19 downto 0);
  signal c_8_0_4_False_shift: signed(19 downto 0);
  signal c_8_0_3_False_resize: signed(19 downto 0);
  signal c_8_0_3_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(26 downto 0);
  signal c_9_i0_resize: signed(26 downto 0);
  signal c_9_i1_resize: signed(26 downto 0);
  signal c_9_i0_shift: signed(26 downto 0);
  signal c_9_i1_shift: signed(26 downto 0);
  signal c_9_arith: signed(26 downto 0);
  signal c_9_oshift: signed(26 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(18 downto 0);
  signal c_10_i0_resize: signed(18 downto 0);
  signal c_10_i1_resize: signed(18 downto 0);
  signal c_10_i0_shift: signed(18 downto 0);
  signal c_10_i1_shift: signed(18 downto 0);
  signal c_10_arith: signed(18 downto 0);
  signal c_10_oshift: signed(18 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(21 downto 0);
  signal c_11_i0_resize: signed(21 downto 0);
  signal c_11_i1_resize: signed(21 downto 0);
  signal c_11_i0_shift: signed(21 downto 0);
  signal c_11_i1_shift: signed(21 downto 0);
  signal c_11_arith: signed(21 downto 0);
  signal c_11_oshift: signed(21 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(25 downto 0);
  signal c_12_3_2_False_resize: signed(25 downto 0);
  signal c_12_3_2_False_shift: signed(25 downto 0);
  signal c_12_6_0_False_resize: signed(25 downto 0);
  signal c_12_6_0_False_shift: signed(25 downto 0);
  signal c_12_11_4_False_resize: signed(25 downto 0);
  signal c_12_11_4_False_shift: signed(25 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_11_0_False_resize: signed(24 downto 0);
  signal c_13_11_0_False_shift: signed(24 downto 0);
  signal c_13_3_0_False_resize: signed(24 downto 0);
  signal c_13_3_0_False_shift: signed(24 downto 0);
  signal c_13_3_3_False_resize: signed(24 downto 0);
  signal c_13_3_3_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(22 downto 0);
  signal c_15_i0_resize: signed(22 downto 0);
  signal c_15_i1_resize: signed(22 downto 0);
  signal c_15_i0_shift: signed(22 downto 0);
  signal c_15_i1_shift: signed(22 downto 0);
  signal c_15_arith: signed(22 downto 0);
  signal c_15_oshift: signed(22 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(21 downto 0);
  signal c_16_0_0_False_resize: signed(21 downto 0);
  signal c_16_0_0_False_shift: signed(21 downto 0);
  signal c_16_0_6_False_resize: signed(21 downto 0);
  signal c_16_0_6_False_shift: signed(21 downto 0);
  signal c_16_0_3_False_resize: signed(21 downto 0);
  signal c_16_0_3_False_shift: signed(21 downto 0);
  signal c_16_0_5_False_resize: signed(21 downto 0);
  signal c_16_0_5_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_i0_resize: signed(22 downto 0);
  signal c_17_i1_resize: signed(22 downto 0);
  signal c_17_i0_shift: signed(22 downto 0);
  signal c_17_i1_shift: signed(22 downto 0);
  signal c_17_arith: signed(22 downto 0);
  signal c_17_oshift: signed(22 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(25 downto 0);
  signal c_19_18_0_False_resize: signed(25 downto 0);
  signal c_19_18_0_False_shift: signed(25 downto 0);
  signal c_19_9_4_False_resize: signed(25 downto 0);
  signal c_19_9_4_False_shift: signed(25 downto 0);
  signal c_19_17_0_False_resize: signed(25 downto 0);
  signal c_19_17_0_False_shift: signed(25 downto 0);
  signal c_19_17_3_False_resize: signed(25 downto 0);
  signal c_19_17_3_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_3_0_False_resize: signed(24 downto 0);
  signal c_20_3_0_False_shift: signed(24 downto 0);
  signal c_20_6_6_False_resize: signed(24 downto 0);
  signal c_20_6_6_False_shift: signed(24 downto 0);
  signal c_20_6_0_False_resize: signed(24 downto 0);
  signal c_20_6_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_i0_resize: signed(24 downto 0);
  signal c_21_i1_resize: signed(24 downto 0);
  signal c_21_i0_shift: signed(24 downto 0);
  signal c_21_i1_shift: signed(24 downto 0);
  signal c_21_arith: signed(24 downto 0);
  signal c_21_oshift: signed(24 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(25 downto 0);
  signal c_22_6_6_False_resize: signed(25 downto 0);
  signal c_22_6_6_False_shift: signed(25 downto 0);
  signal c_22_9_4_False_resize: signed(25 downto 0);
  signal c_22_9_4_False_shift: signed(25 downto 0);
  signal c_22_9_0_False_resize: signed(25 downto 0);
  signal c_22_9_0_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_17_0_False_resize: signed(24 downto 0);
  signal c_23_17_0_False_shift: signed(24 downto 0);
  signal c_23_11_1_False_resize: signed(24 downto 0);
  signal c_23_11_1_False_shift: signed(24 downto 0);
  signal c_23_6_0_False_resize: signed(24 downto 0);
  signal c_23_6_0_False_shift: signed(24 downto 0);
  signal c_23_18_0_False_resize: signed(24 downto 0);
  signal c_23_18_0_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_9_0_False_resize: signed(24 downto 0);
  signal c_25_9_0_False_shift: signed(24 downto 0);
  signal c_25_11_0_False_resize: signed(24 downto 0);
  signal c_25_11_0_False_shift: signed(24 downto 0);
  signal c_25_17_4_False_resize: signed(24 downto 0);
  signal c_25_17_4_False_shift: signed(24 downto 0);
  signal c_25_6_1_False_resize: signed(24 downto 0);
  signal c_25_6_1_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(26 downto 0);
  signal c_26_9_0_False_resize: signed(26 downto 0);
  signal c_26_9_0_False_shift: signed(26 downto 0);
  signal c_26_11_0_False_resize: signed(26 downto 0);
  signal c_26_11_0_False_shift: signed(26 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(24 downto 0);
  signal c_28_9_2_False_resize: signed(24 downto 0);
  signal c_28_9_2_False_shift: signed(24 downto 0);
  signal c_28_17_0_False_resize: signed(24 downto 0);
  signal c_28_17_0_False_shift: signed(24 downto 0);
  signal c_28_9_1_False_resize: signed(24 downto 0);
  signal c_28_9_1_False_shift: signed(24 downto 0);
  signal c_28_18_0_False_resize: signed(24 downto 0);
  signal c_28_18_0_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_18_1_False_resize: signed(25 downto 0);
  signal c_29_18_1_False_shift: signed(25 downto 0);
  signal c_29_9_0_False_resize: signed(25 downto 0);
  signal c_29_9_0_False_shift: signed(25 downto 0);
  signal c_29_17_0_False_resize: signed(25 downto 0);
  signal c_29_17_0_False_shift: signed(25 downto 0);
  signal c_29_6_0_False_resize: signed(25 downto 0);
  signal c_29_6_0_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_i0_resize: signed(25 downto 0);
  signal c_30_i1_resize: signed(25 downto 0);
  signal c_30_i0_shift: signed(25 downto 0);
  signal c_30_i1_shift: signed(25 downto 0);
  signal c_30_arith: signed(25 downto 0);
  signal c_30_oshift: signed(25 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(25 downto 0);
  signal c_31_27_0_False_resize: signed(25 downto 0);
  signal c_31_27_0_False_shift: signed(25 downto 0);
  signal c_31_21_0_False_resize: signed(25 downto 0);
  signal c_31_21_0_False_shift: signed(25 downto 0);
  signal c_31_24_0_False_resize: signed(25 downto 0);
  signal c_31_24_0_False_shift: signed(25 downto 0);
  signal c_31_27_1_False_resize: signed(25 downto 0);
  signal c_31_27_1_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_30_0_False_resize: signed(25 downto 0);
  signal c_33_30_0_False_shift: signed(25 downto 0);
  signal c_33_14_1_False_resize: signed(25 downto 0);
  signal c_33_14_1_False_shift: signed(25 downto 0);
  signal c_33_21_0_False_resize: signed(25 downto 0);
  signal c_33_21_0_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_resize: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_14_0_False_resize: signed(25 downto 0);
  signal c_35_14_0_False_shift: signed(25 downto 0);
  signal c_35_21_1_False_resize: signed(25 downto 0);
  signal c_35_21_1_False_shift: signed(25 downto 0);
  signal c_35_24_3_False_resize: signed(25 downto 0);
  signal c_35_24_3_False_shift: signed(25 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_resize: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_21_0_False_resize: signed(25 downto 0);
  signal c_37_21_0_False_shift: signed(25 downto 0);
  signal c_37_30_0_False_resize: signed(25 downto 0);
  signal c_37_30_0_False_shift: signed(25 downto 0);
  signal c_37_27_0_False_resize: signed(25 downto 0);
  signal c_37_27_0_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_resize: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_24_0_False_resize: signed(25 downto 0);
  signal c_39_24_0_False_shift: signed(25 downto 0);
  signal c_39_14_0_False_resize: signed(25 downto 0);
  signal c_39_14_0_False_shift: signed(25 downto 0);
  signal c_39_27_0_False_resize: signed(25 downto 0);
  signal c_39_27_0_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_resize: signed(25 downto 0);
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
  -- output node 0 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 1 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_34);
    end if;
  end process;
  -- output node 2 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 3 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 4 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_40);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [16], [1], [32]]
  c_1_0_4_False_resize <= resize(c_0, 21);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_0_False_resize <= resize(c_0, 21);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_5_False_resize <= resize(c_0, 21);
  c_1_0_5_False_shift <= shift_left(c_1_0_5_False_resize, 5);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_4_False_shift;
        when "01" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [4], [1], [1]]
  c_2_0_0_False_resize <= resize(c_0, 18);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[5], [60], [5], [129]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 18,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[256], [1], [1], [128]]
  c_4_0_0_False_resize <= resize(c_0, 24);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_8_False_resize <= resize(c_0, 24);
  c_4_0_8_False_shift <= shift_left(c_4_0_8_False_resize, 8);
  c_4_0_7_False_resize <= resize(c_0, 24);
  c_4_0_7_False_shift <= shift_left(c_4_0_7_False_resize, 7);
  with config_select_1 select c_4_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_0_0_False_shift;
        when "01" => c_4 <= c_4_0_8_False_shift;
        when others => c_4 <= c_4_0_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [4], [512], [32]]
  c_5_0_5_False_resize <= resize(c_0, 25);
  c_5_0_5_False_shift <= shift_left(c_5_0_5_False_resize, 5);
  c_5_0_9_False_resize <= resize(c_0, 25);
  c_5_0_9_False_shift <= shift_left(c_5_0_9_False_resize, 9);
  c_5_0_2_False_resize <= resize(c_0, 25);
  c_5_0_2_False_shift <= shift_left(c_5_0_2_False_resize, 2);
  c_5_0_0_False_resize <= resize(c_0, 25);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_5_False_shift;
        when "01" => c_5 <= c_5_0_9_False_shift;
        when "10" => c_5 <= c_5_0_2_False_shift;
        when others => c_5 <= c_5_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[257], [5], [-511], [160]]
  with config_select_2 select c_6_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[1], [1024], [1], [2]]
  c_7_0_10_False_resize <= resize(c_0, 26);
  c_7_0_10_False_shift <= shift_left(c_7_0_10_False_resize, 10);
  c_7_0_1_False_resize <= resize(c_0, 26);
  c_7_0_1_False_shift <= shift_left(c_7_0_1_False_resize, 1);
  c_7_0_0_False_resize <= resize(c_0, 26);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_10_False_shift;
        when "01" => c_7 <= c_7_0_1_False_shift;
        when others => c_7 <= c_7_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[8], [1], [2], [16]]
  c_8_0_0_False_resize <= resize(c_0, 20);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_1_False_resize <= resize(c_0, 20);
  c_8_0_1_False_shift <= shift_left(c_8_0_1_False_resize, 1);
  c_8_0_4_False_resize <= resize(c_0, 20);
  c_8_0_4_False_shift <= shift_left(c_8_0_4_False_resize, 4);
  c_8_0_3_False_resize <= resize(c_0, 20);
  c_8_0_3_False_shift <= shift_left(c_8_0_3_False_resize, 3);
  with config_select_1 select c_8_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_0_False_shift;
        when "01" => c_8 <= c_8_0_1_False_shift;
        when "10" => c_8 <= c_8_0_4_False_shift;
        when others => c_8 <= c_8_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[33], [1028], [9], [-62]]
  with config_select_2 select c_9_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
      w_o => 27,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 10 and associated fundamentals [[-3], [5], [-3], [-3]]
  with config_select_1 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
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
      sub_i => c_10_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 11 and associated fundamentals [[-27], [45], [-27], [-21]]
  with config_select_2 select c_11_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 22,
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
      sub_i => c_11_sub_sel,
      x_i => c_10,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[-432], [5], [-511], [516]]
  c_12_3_2_False_resize <= resize(c_3, 26);
  c_12_3_2_False_shift <= shift_left(c_12_3_2_False_resize, 2);
  c_12_6_0_False_resize <= resize(c_6, 26);
  c_12_6_0_False_shift <= shift_left(c_12_6_0_False_resize, 0);
  c_12_11_4_False_resize <= resize(c_11, 26);
  c_12_11_4_False_shift <= shift_left(c_12_11_4_False_resize, 4);
  with config_select_3 select c_12_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_3_2_False_shift;
        when "01" => c_12 <= c_12_6_0_False_shift;
        when others => c_12 <= c_12_11_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[5], [480], [40], [-21]]
  c_13_11_0_False_resize <= resize(c_11, 25);
  c_13_11_0_False_shift <= shift_left(c_13_11_0_False_resize, 0);
  c_13_3_0_False_resize <= resize(c_3, 25);
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  c_13_3_3_False_resize <= resize(c_3, 25);
  c_13_3_3_False_shift <= shift_left(c_13_3_3_False_resize, 3);
  with config_select_3 select c_13_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_11_0_False_shift;
        when "01" => c_13 <= c_13_3_0_False_shift;
        when others => c_13 <= c_13_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[-437], [485], [-471], [495]]
  with config_select_4 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 15 and associated fundamentals [[60], [68], [60], [60]]
  with config_select_1 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 6,
      s_y_i => 2,
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
      c_15 <= c_15_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 16 and associated fundamentals [[8], [64], [32], [1]]
  c_16_0_0_False_resize <= resize(c_0, 22);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_0_6_False_resize <= resize(c_0, 22);
  c_16_0_6_False_shift <= shift_left(c_16_0_6_False_resize, 6);
  c_16_0_3_False_resize <= resize(c_0, 22);
  c_16_0_3_False_shift <= shift_left(c_16_0_3_False_resize, 3);
  c_16_0_5_False_resize <= resize(c_0, 22);
  c_16_0_5_False_shift <= shift_left(c_16_0_5_False_resize, 5);
  with config_select_1 select c_16_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_0_0_False_shift;
        when "01" => c_16 <= c_16_0_6_False_shift;
        when "10" => c_16 <= c_16_0_3_False_shift;
        when others => c_16 <= c_16_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 17 and associated fundamentals [[-11], [69], [29], [-4]]
  with config_select_2 select c_17_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
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
      sub_i => c_17_sub_sel,
      x_i => c_10,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 18 and associated fundamentals [[420], [476], [420], [540]]
  with config_select_2 select c_18_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_18_sub_sel,
      x_i => c_15,
      y_i => c_15,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[528], [69], [232], [540]]
  c_19_18_0_False_resize <= c_18;
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  c_19_9_4_False_resize <= c_9(25 downto 0);
  c_19_9_4_False_shift <= shift_left(c_19_9_4_False_resize, 4);
  c_19_17_0_False_resize <= resize(c_17, 26);
  c_19_17_0_False_shift <= shift_left(c_19_17_0_False_resize, 0);
  c_19_17_3_False_resize <= resize(c_17, 26);
  c_19_17_3_False_shift <= shift_left(c_19_17_3_False_resize, 3);
  with config_select_3 select c_19_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_18_0_False_shift;
        when "01" => c_19 <= c_19_9_4_False_shift;
        when "10" => c_19 <= c_19_17_0_False_shift;
        when others => c_19 <= c_19_17_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[257], [320], [-511], [129]]
  c_20_3_0_False_resize <= resize(c_3, 25);
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  c_20_6_6_False_resize <= c_6;
  c_20_6_6_False_shift <= shift_left(c_20_6_6_False_resize, 6);
  c_20_6_0_False_resize <= c_6;
  c_20_6_0_False_shift <= shift_left(c_20_6_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_3_0_False_shift;
        when "01" => c_20 <= c_20_6_6_False_shift;
        when others => c_20 <= c_20_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[271], [-251], [-279], [411]]
  with config_select_4 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[528], [320], [9], [-62]]
  c_22_6_6_False_resize <= resize(c_6, 26);
  c_22_6_6_False_shift <= shift_left(c_22_6_6_False_resize, 6);
  c_22_9_4_False_resize <= c_9(25 downto 0);
  c_22_9_4_False_shift <= shift_left(c_22_9_4_False_resize, 4);
  c_22_9_0_False_resize <= c_9(25 downto 0);
  c_22_9_0_False_shift <= shift_left(c_22_9_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_6_6_False_shift;
        when "01" => c_22 <= c_22_9_4_False_shift;
        when others => c_22 <= c_22_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[257], [90], [420], [-4]]
  c_23_17_0_False_resize <= resize(c_17, 25);
  c_23_17_0_False_shift <= shift_left(c_23_17_0_False_resize, 0);
  c_23_11_1_False_resize <= resize(c_11, 25);
  c_23_11_1_False_shift <= shift_left(c_23_11_1_False_resize, 1);
  c_23_6_0_False_resize <= c_6;
  c_23_6_0_False_shift <= shift_left(c_23_6_0_False_resize, 0);
  c_23_18_0_False_resize <= c_18(24 downto 0);
  c_23_18_0_False_shift <= shift_left(c_23_18_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_17_0_False_shift;
        when "01" => c_23 <= c_23_11_1_False_shift;
        when "10" => c_23 <= c_23_6_0_False_shift;
        when others => c_23 <= c_23_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 24 and associated fundamentals [[785], [410], [429], [-66]]
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[33], [45], [464], [320]]
  c_25_9_0_False_resize <= c_9(24 downto 0);
  c_25_9_0_False_shift <= shift_left(c_25_9_0_False_resize, 0);
  c_25_11_0_False_resize <= resize(c_11, 25);
  c_25_11_0_False_shift <= shift_left(c_25_11_0_False_resize, 0);
  c_25_17_4_False_resize <= resize(c_17, 25);
  c_25_17_4_False_shift <= shift_left(c_25_17_4_False_resize, 4);
  c_25_6_1_False_resize <= c_6;
  c_25_6_1_False_shift <= shift_left(c_25_6_1_False_resize, 1);
  with config_select_3 select c_25_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_9_0_False_shift;
        when "01" => c_25 <= c_25_11_0_False_shift;
        when "10" => c_25 <= c_25_17_4_False_shift;
        when others => c_25 <= c_25_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[33], [1028], [9], [-21]]
  c_26_9_0_False_resize <= c_9;
  c_26_9_0_False_shift <= shift_left(c_26_9_0_False_resize, 0);
  c_26_11_0_False_resize <= resize(c_11, 27);
  c_26_11_0_False_shift <= shift_left(c_26_11_0_False_resize, 0);
  with config_select_3 select c_26_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_9_0_False_shift;
        when others => c_26 <= c_26_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 27 and associated fundamentals [[33], [-938], [937], [661]]
  with config_select_4 select c_27_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
      w_o => 26,
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
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[-11], [476], [18], [-248]]
  c_28_9_2_False_resize <= c_9(24 downto 0);
  c_28_9_2_False_shift <= shift_left(c_28_9_2_False_resize, 2);
  c_28_17_0_False_resize <= resize(c_17, 25);
  c_28_17_0_False_shift <= shift_left(c_28_17_0_False_resize, 0);
  c_28_9_1_False_resize <= c_9(24 downto 0);
  c_28_9_1_False_shift <= shift_left(c_28_9_1_False_resize, 1);
  c_28_18_0_False_resize <= c_18(24 downto 0);
  c_28_18_0_False_shift <= shift_left(c_28_18_0_False_resize, 0);
  with config_select_3 select c_28_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_9_2_False_shift;
        when "01" => c_28 <= c_28_17_0_False_shift;
        when "10" => c_28 <= c_28_9_1_False_shift;
        when others => c_28 <= c_28_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[840], [69], [-511], [-62]]
  c_29_18_1_False_resize <= c_18;
  c_29_18_1_False_shift <= shift_left(c_29_18_1_False_resize, 1);
  c_29_9_0_False_resize <= c_9(25 downto 0);
  c_29_9_0_False_shift <= shift_left(c_29_9_0_False_resize, 0);
  c_29_17_0_False_resize <= resize(c_17, 26);
  c_29_17_0_False_shift <= shift_left(c_29_17_0_False_resize, 0);
  c_29_6_0_False_resize <= resize(c_6, 26);
  c_29_6_0_False_shift <= shift_left(c_29_6_0_False_resize, 0);
  with config_select_3 select c_29_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_18_1_False_shift;
        when "01" => c_29 <= c_29_9_0_False_shift;
        when "10" => c_29 <= c_29_17_0_False_shift;
        when others => c_29 <= c_29_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 30 and associated fundamentals [[-851], [545], [529], [-186]]
  with config_select_4 select c_30_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 25,
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
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[66], [410], [937], [411]]
  c_31_27_0_False_resize <= c_27;
  c_31_27_0_False_shift <= shift_left(c_31_27_0_False_resize, 0);
  c_31_21_0_False_resize <= resize(c_21, 26);
  c_31_21_0_False_shift <= shift_left(c_31_21_0_False_resize, 0);
  c_31_24_0_False_resize <= c_24;
  c_31_24_0_False_shift <= shift_left(c_31_24_0_False_resize, 0);
  c_31_27_1_False_resize <= c_27;
  c_31_27_1_False_shift <= shift_left(c_31_27_1_False_resize, 1);
  with config_select_5 select c_31_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_27_0_False_shift;
        when "01" => c_31 <= c_31_21_0_False_shift;
        when "10" => c_31 <= c_31_24_0_False_shift;
        when others => c_31 <= c_31_27_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[66], [410], [937], [411]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 5 with id 33 and associated fundamentals [[271], [545], [529], [990]]
  c_33_30_0_False_resize <= c_30;
  c_33_30_0_False_shift <= shift_left(c_33_30_0_False_resize, 0);
  c_33_14_1_False_resize <= resize(c_14, 26);
  c_33_14_1_False_shift <= shift_left(c_33_14_1_False_resize, 1);
  c_33_21_0_False_resize <= resize(c_21, 26);
  c_33_21_0_False_shift <= shift_left(c_33_21_0_False_resize, 0);
  with config_select_5 select c_33_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_30_0_False_shift;
        when "01" => c_33 <= c_33_14_1_False_shift;
        when others => c_33 <= c_33_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 34 and associated fundamentals [[271], [545], [529], [990]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 5 with id 35 and associated fundamentals [[-437], [-502], [-471], [-528]]
  c_35_14_0_False_resize <= resize(c_14, 26);
  c_35_14_0_False_shift <= shift_left(c_35_14_0_False_resize, 0);
  c_35_21_1_False_resize <= resize(c_21, 26);
  c_35_21_1_False_shift <= shift_left(c_35_21_1_False_resize, 1);
  c_35_24_3_False_resize <= c_24;
  c_35_24_3_False_shift <= shift_left(c_35_24_3_False_resize, 3);
  with config_select_5 select c_35_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_14_0_False_shift;
        when "01" => c_35 <= c_35_21_1_False_shift;
        when others => c_35 <= c_35_24_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 36 and associated fundamentals [[437], [502], [471], [528]]
  c_36_resize <= c_35;
  c_36 <= -shift_left(c_36_resize, 0);
  -- node of type 'mux' in stage 5 with id 37 and associated fundamentals [[-851], [-938], [-279], [-186]]
  c_37_21_0_False_resize <= resize(c_21, 26);
  c_37_21_0_False_shift <= shift_left(c_37_21_0_False_resize, 0);
  c_37_30_0_False_resize <= c_30;
  c_37_30_0_False_shift <= shift_left(c_37_30_0_False_resize, 0);
  c_37_27_0_False_resize <= c_27;
  c_37_27_0_False_shift <= shift_left(c_37_27_0_False_resize, 0);
  with config_select_5 select c_37_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_21_0_False_shift;
        when "01" => c_37 <= c_37_30_0_False_shift;
        when others => c_37 <= c_37_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 38 and associated fundamentals [[851], [938], [279], [186]]
  c_38_resize <= c_37;
  c_38 <= -shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 5 with id 39 and associated fundamentals [[785], [485], [429], [661]]
  c_39_24_0_False_resize <= c_24;
  c_39_24_0_False_shift <= shift_left(c_39_24_0_False_resize, 0);
  c_39_14_0_False_resize <= resize(c_14, 26);
  c_39_14_0_False_shift <= shift_left(c_39_14_0_False_resize, 0);
  c_39_27_0_False_resize <= c_27;
  c_39_27_0_False_shift <= shift_left(c_39_27_0_False_resize, 0);
  with config_select_5 select c_39_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_24_0_False_shift;
        when "01" => c_39 <= c_39_14_0_False_shift;
        when others => c_39 <= c_39_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 40 and associated fundamentals [[785], [485], [429], [661]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
end architecture;

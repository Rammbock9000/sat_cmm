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
    y_4: out std_logic_vector(22 downto 0);
    y_5: out std_logic_vector(22 downto 0);
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
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_2_0_False_resize: signed(17 downto 0);
  signal c_5_2_0_False_shift: signed(17 downto 0);
  signal c_5_1_0_False_resize: signed(17 downto 0);
  signal c_5_1_0_False_shift: signed(17 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_6_1_0_False_resize: signed(15 downto 0);
  signal c_6_1_0_False_shift: signed(15 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_i0_resize: signed(19 downto 0);
  signal c_7_i1_resize: signed(19 downto 0);
  signal c_7_i0_shift: signed(19 downto 0);
  signal c_7_i1_shift: signed(19 downto 0);
  signal c_7_arith: signed(19 downto 0);
  signal c_7_oshift: signed(19 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(18 downto 0);
  signal c_8_i0_resize: signed(18 downto 0);
  signal c_8_i1_resize: signed(18 downto 0);
  signal c_8_i0_shift: signed(18 downto 0);
  signal c_8_i1_shift: signed(18 downto 0);
  signal c_8_arith: signed(18 downto 0);
  signal c_8_oshift: signed(18 downto 0);
  signal c_9: signed(17 downto 0);
  signal c_9_2_0_False_resize: signed(17 downto 0);
  signal c_9_2_0_False_shift: signed(17 downto 0);
  signal c_9_1_0_False_resize: signed(17 downto 0);
  signal c_9_1_0_False_shift: signed(17 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_10_1_0_False_resize: signed(15 downto 0);
  signal c_10_1_0_False_shift: signed(15 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(18 downto 0);
  signal c_11_i0_resize: signed(18 downto 0);
  signal c_11_i1_resize: signed(18 downto 0);
  signal c_11_i0_shift: signed(18 downto 0);
  signal c_11_i1_shift: signed(18 downto 0);
  signal c_11_arith: signed(18 downto 0);
  signal c_11_oshift: signed(18 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(17 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_13_i0_resize: signed(19 downto 0);
  signal c_13_i1_resize: signed(19 downto 0);
  signal c_13_i0_shift: signed(19 downto 0);
  signal c_13_i1_shift: signed(19 downto 0);
  signal c_13_arith: signed(19 downto 0);
  signal c_13_oshift: signed(19 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_14_4_0_False_resize: signed(19 downto 0);
  signal c_14_4_0_False_shift: signed(19 downto 0);
  signal c_14_7_0_False_resize: signed(19 downto 0);
  signal c_14_7_0_False_shift: signed(19 downto 0);
  signal c_14_13_0_False_resize: signed(19 downto 0);
  signal c_14_13_0_False_shift: signed(19 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(17 downto 0);
  signal c_15_4_0_False_resize: signed(17 downto 0);
  signal c_15_4_0_False_shift: signed(17 downto 0);
  signal c_15_11_0_False_resize: signed(17 downto 0);
  signal c_15_11_0_False_shift: signed(17 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_4_0_False_resize: signed(23 downto 0);
  signal c_17_4_0_False_shift: signed(23 downto 0);
  signal c_17_7_4_False_resize: signed(23 downto 0);
  signal c_17_7_4_False_shift: signed(23 downto 0);
  signal c_17_7_0_False_resize: signed(23 downto 0);
  signal c_17_7_0_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_18_7_0_False_resize: signed(18 downto 0);
  signal c_18_7_0_False_shift: signed(18 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(19 downto 0);
  signal c_20_8_0_False_resize: signed(19 downto 0);
  signal c_20_8_0_False_shift: signed(19 downto 0);
  signal c_20_11_2_False_resize: signed(19 downto 0);
  signal c_20_11_2_False_shift: signed(19 downto 0);
  signal c_20_4_4_False_resize: signed(19 downto 0);
  signal c_20_4_4_False_shift: signed(19 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_21_4_1_False_resize: signed(19 downto 0);
  signal c_21_4_1_False_shift: signed(19 downto 0);
  signal c_21_13_0_False_resize: signed(19 downto 0);
  signal c_21_13_0_False_shift: signed(19 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_i0_resize: signed(22 downto 0);
  signal c_22_i1_resize: signed(22 downto 0);
  signal c_22_i0_shift: signed(22 downto 0);
  signal c_22_i1_shift: signed(22 downto 0);
  signal c_22_arith: signed(22 downto 0);
  signal c_22_oshift: signed(22 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(21 downto 0);
  signal c_23_4_0_False_resize: signed(21 downto 0);
  signal c_23_4_0_False_shift: signed(21 downto 0);
  signal c_23_11_4_False_resize: signed(21 downto 0);
  signal c_23_11_4_False_shift: signed(21 downto 0);
  signal c_23_4_3_False_resize: signed(21 downto 0);
  signal c_23_4_3_False_shift: signed(21 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(21 downto 0);
  signal c_24_11_0_False_resize: signed(21 downto 0);
  signal c_24_11_0_False_shift: signed(21 downto 0);
  signal c_24_7_4_False_resize: signed(21 downto 0);
  signal c_24_7_4_False_shift: signed(21 downto 0);
  signal c_24_8_0_False_resize: signed(21 downto 0);
  signal c_24_8_0_False_shift: signed(21 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(18 downto 0);
  signal c_26_11_1_False_resize: signed(18 downto 0);
  signal c_26_11_1_False_shift: signed(18 downto 0);
  signal c_26_8_0_False_resize: signed(18 downto 0);
  signal c_26_8_0_False_shift: signed(18 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(18 downto 0);
  signal c_27_8_0_False_resize: signed(18 downto 0);
  signal c_27_8_0_False_shift: signed(18 downto 0);
  signal c_27_11_1_False_resize: signed(18 downto 0);
  signal c_27_11_1_False_shift: signed(18 downto 0);
  signal c_27_11_0_False_resize: signed(18 downto 0);
  signal c_27_11_0_False_shift: signed(18 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_i0_resize: signed(22 downto 0);
  signal c_28_i1_resize: signed(22 downto 0);
  signal c_28_i0_shift: signed(22 downto 0);
  signal c_28_i1_shift: signed(22 downto 0);
  signal c_28_arith: signed(22 downto 0);
  signal c_28_oshift: signed(22 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(19 downto 0);
  signal c_29_7_1_False_resize: signed(19 downto 0);
  signal c_29_7_1_False_shift: signed(19 downto 0);
  signal c_29_7_0_False_resize: signed(19 downto 0);
  signal c_29_7_0_False_shift: signed(19 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(18 downto 0);
  signal c_30_11_1_False_resize: signed(18 downto 0);
  signal c_30_11_1_False_shift: signed(18 downto 0);
  signal c_30_11_0_False_resize: signed(18 downto 0);
  signal c_30_11_0_False_shift: signed(18 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(17 downto 0);
  signal c_32_4_1_False_resize: signed(17 downto 0);
  signal c_32_4_1_False_shift: signed(17 downto 0);
  signal c_32_4_2_False_resize: signed(17 downto 0);
  signal c_32_4_2_False_shift: signed(17 downto 0);
  signal c_32_7_0_False_resize: signed(17 downto 0);
  signal c_32_7_0_False_shift: signed(17 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(18 downto 0);
  signal c_33_11_0_False_resize: signed(18 downto 0);
  signal c_33_11_0_False_shift: signed(18 downto 0);
  signal c_33_4_1_False_resize: signed(18 downto 0);
  signal c_33_4_1_False_shift: signed(18 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(17 downto 0);
  signal c_35_4_1_False_resize: signed(17 downto 0);
  signal c_35_4_1_False_shift: signed(17 downto 0);
  signal c_35_11_0_False_resize: signed(17 downto 0);
  signal c_35_11_0_False_shift: signed(17 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(19 downto 0);
  signal c_36_11_0_False_resize: signed(19 downto 0);
  signal c_36_11_0_False_shift: signed(19 downto 0);
  signal c_36_13_0_False_resize: signed(19 downto 0);
  signal c_36_13_0_False_shift: signed(19 downto 0);
  signal c_36_4_2_False_resize: signed(19 downto 0);
  signal c_36_4_2_False_shift: signed(19 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_i0_resize: signed(23 downto 0);
  signal c_37_i1_resize: signed(23 downto 0);
  signal c_37_i0_shift: signed(23 downto 0);
  signal c_37_i1_shift: signed(23 downto 0);
  signal c_37_arith: signed(23 downto 0);
  signal c_37_oshift: signed(23 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(18 downto 0);
  signal c_38_4_0_False_resize: signed(18 downto 0);
  signal c_38_4_0_False_shift: signed(18 downto 0);
  signal c_38_4_1_False_resize: signed(18 downto 0);
  signal c_38_4_1_False_shift: signed(18 downto 0);
  signal c_38_4_3_False_resize: signed(18 downto 0);
  signal c_38_4_3_False_shift: signed(18 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(19 downto 0);
  signal c_39_13_0_False_resize: signed(19 downto 0);
  signal c_39_13_0_False_shift: signed(19 downto 0);
  signal c_39_11_1_False_resize: signed(19 downto 0);
  signal c_39_11_1_False_shift: signed(19 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_i0_resize: signed(23 downto 0);
  signal c_40_i1_resize: signed(23 downto 0);
  signal c_40_i0_shift: signed(23 downto 0);
  signal c_40_i1_shift: signed(23 downto 0);
  signal c_40_arith: signed(23 downto 0);
  signal c_40_oshift: signed(23 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(19 downto 0);
  signal c_41_7_0_False_resize: signed(19 downto 0);
  signal c_41_7_0_False_shift: signed(19 downto 0);
  signal c_41_7_2_False_resize: signed(19 downto 0);
  signal c_41_7_2_False_shift: signed(19 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(18 downto 0);
  signal c_42_4_0_False_resize: signed(18 downto 0);
  signal c_42_4_0_False_shift: signed(18 downto 0);
  signal c_42_11_0_False_resize: signed(18 downto 0);
  signal c_42_11_0_False_shift: signed(18 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_i0_resize: signed(23 downto 0);
  signal c_43_i1_resize: signed(23 downto 0);
  signal c_43_i0_shift: signed(23 downto 0);
  signal c_43_i1_shift: signed(23 downto 0);
  signal c_43_arith: signed(23 downto 0);
  signal c_43_oshift: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_48_resize: signed(22 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_49_resize: signed(22 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_resize: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_resize: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_resize: signed(23 downto 0);
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
  c_1 <= c_0 & "";
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
  c_2 <= c_2_oshift(17 downto 0);
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1], [1]]
  c_3 <= c_1 & "";
  -- node of type 'register' in stage 3 with id 4 and associated fundamentals [[1], [1], [1]]
  c_4 <= c_3 & "";
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[3], [1], [3]]
  c_5_2_0_False_resize <= c_2;
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  c_5_1_0_False_resize <= resize(c_1, 18);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_2_0_False_shift when "0",
    c_5_1_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[0], [1], [1]]
  c_6_1_0_False_resize <= c_1;
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_1_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[3], [7], [11]]
  with config_select_3 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_5,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(19 downto 0);
  -- node of type 'add' in stage 3 with id 8 and associated fundamentals [[5], [5], [5]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_3,
      y_i => c_3,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(18 downto 0);
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[1], [3], [3]]
  c_9_2_0_False_resize <= c_2;
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  c_9_1_0_False_resize <= resize(c_1, 18);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_2_0_False_shift when "0",
    c_9_1_0_False_shift when others;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[1], [0], [0]]
  c_10_1_0_False_resize <= c_1;
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_1_0_False_shift when "0",
    to_signed(0, 16) when others;
  -- node of type 'add_sub' in stage 3 with id 11 and associated fundamentals [[7], [3], [3]]
  with config_select_3 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 19,
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
      y_i => c_9,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(18 downto 0);
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[3], [3], [3]]
  c_12 <= c_2 & "";
  -- node of type 'add' in stage 3 with id 13 and associated fundamentals [[11], [11], [11]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 20,
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
      x_i => c_3,
      y_i => c_12,
      z_o => c_13_oshift
    );
  c_13 <= c_13_oshift(19 downto 0);
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[1], [11], [11]]
  c_14_4_0_False_resize <= resize(c_4, 20);
  c_14_4_0_False_shift <= shift_left(c_14_4_0_False_resize, 0);
  c_14_7_0_False_resize <= c_7;
  c_14_7_0_False_shift <= shift_left(c_14_7_0_False_resize, 0);
  c_14_13_0_False_resize <= c_13;
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  with config_select_4 select c_14_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  with c_14_sel select c_14 <=
    c_14_4_0_False_shift when "00",
    c_14_7_0_False_shift when "01",
    c_14_13_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[0], [1], [3]]
  c_15_4_0_False_resize <= resize(c_4, 18);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_11_0_False_resize <= c_11(17 downto 0);
  c_15_11_0_False_shift <= shift_left(c_15_11_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_15_sel select c_15 <=
    c_15_4_0_False_shift when "00",
    c_15_11_0_False_shift when "01",
    to_signed(0, 18) when others;
  -- node of type 'add' in stage 5 with id 16 and associated fundamentals [[2], [86], [214]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[3], [1], [176]]
  c_17_4_0_False_resize <= resize(c_4, 24);
  c_17_4_0_False_shift <= shift_left(c_17_4_0_False_resize, 0);
  c_17_7_4_False_resize <= resize(c_7, 24);
  c_17_7_4_False_shift <= shift_left(c_17_7_4_False_resize, 4);
  c_17_7_0_False_resize <= resize(c_7, 24);
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_17_sel select c_17 <=
    c_17_4_0_False_shift when "00",
    c_17_7_4_False_shift when "01",
    c_17_7_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[0], [7], [0]]
  c_18_7_0_False_resize <= c_7(18 downto 0);
  c_18_7_0_False_shift <= shift_left(c_18_7_0_False_resize, 0);
  with config_select_4 select c_18_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_7_0_False_shift when "0",
    to_signed(0, 19) when others;
  -- node of type 'add_sub' in stage 5 with id 19 and associated fundamentals [[3], [223], [176]]
  with config_select_5 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
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
      sub_i => c_19_sub_sel,
      x_i => c_18,
      y_i => c_17,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[5], [12], [16]]
  c_20_8_0_False_resize <= resize(c_8, 20);
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  c_20_11_2_False_resize <= resize(c_11, 20);
  c_20_11_2_False_shift <= shift_left(c_20_11_2_False_resize, 2);
  c_20_4_4_False_resize <= resize(c_4, 20);
  c_20_4_4_False_shift <= shift_left(c_20_4_4_False_resize, 4);
  with config_select_4 select c_20_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_20_sel select c_20 <=
    c_20_8_0_False_shift when "00",
    c_20_11_2_False_shift when "01",
    c_20_4_4_False_shift when others;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[0], [11], [2]]
  c_21_4_1_False_resize <= resize(c_4, 20);
  c_21_4_1_False_shift <= shift_left(c_21_4_1_False_resize, 1);
  c_21_13_0_False_resize <= c_13;
  c_21_13_0_False_shift <= shift_left(c_21_13_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_21_sel select c_21 <=
    c_21_4_1_False_shift when "00",
    c_21_13_0_False_shift when "01",
    to_signed(0, 20) when others;
  -- node of type 'add_sub' in stage 5 with id 22 and associated fundamentals [[40], [107], [126]]
  with config_select_5 select c_22_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(22 downto 0);
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[1], [48], [8]]
  c_23_4_0_False_resize <= resize(c_4, 22);
  c_23_4_0_False_shift <= shift_left(c_23_4_0_False_resize, 0);
  c_23_11_4_False_resize <= resize(c_11, 22);
  c_23_11_4_False_shift <= shift_left(c_23_11_4_False_resize, 4);
  c_23_4_3_False_resize <= resize(c_4, 22);
  c_23_4_3_False_shift <= shift_left(c_23_4_3_False_resize, 3);
  with config_select_4 select c_23_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_4_0_False_shift when "00",
    c_23_11_4_False_shift when "01",
    c_23_4_3_False_shift when others;
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[48], [5], [3]]
  c_24_11_0_False_resize <= resize(c_11, 22);
  c_24_11_0_False_shift <= shift_left(c_24_11_0_False_resize, 0);
  c_24_7_4_False_resize <= resize(c_7, 22);
  c_24_7_4_False_shift <= shift_left(c_24_7_4_False_resize, 4);
  c_24_8_0_False_resize <= resize(c_8, 22);
  c_24_8_0_False_shift <= shift_left(c_24_8_0_False_resize, 0);
  with config_select_4 select c_24_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_24_sel select c_24 <=
    c_24_11_0_False_shift when "00",
    c_24_7_4_False_shift when "01",
    c_24_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 25 and associated fundamentals [[52], [197], [29]]
  with config_select_5 select c_25_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
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
      sub_i => c_25_sub_sel,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[5], [6], [6]]
  c_26_11_1_False_resize <= c_11;
  c_26_11_1_False_shift <= shift_left(c_26_11_1_False_resize, 1);
  c_26_8_0_False_resize <= c_8;
  c_26_8_0_False_shift <= shift_left(c_26_8_0_False_resize, 0);
  with config_select_4 select c_26_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_26_sel select c_26 <=
    c_26_11_1_False_shift when "0",
    c_26_8_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[7], [6], [5]]
  c_27_8_0_False_resize <= c_8;
  c_27_8_0_False_shift <= shift_left(c_27_8_0_False_resize, 0);
  c_27_11_1_False_resize <= c_11;
  c_27_11_1_False_shift <= shift_left(c_27_11_1_False_resize, 1);
  c_27_11_0_False_resize <= c_11;
  c_27_11_0_False_shift <= shift_left(c_27_11_0_False_resize, 0);
  with config_select_4 select c_27_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_27_sel select c_27 <=
    c_27_8_0_False_shift when "00",
    c_27_11_1_False_shift when "01",
    c_27_11_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 28 and associated fundamentals [[73], [102], [91]]
  with config_select_5 select c_28_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
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
      sub_i => c_28_sub_sel,
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  c_28 <= c_28_oshift(22 downto 0);
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[6], [14], [11]]
  c_29_7_1_False_resize <= c_7;
  c_29_7_1_False_shift <= shift_left(c_29_7_1_False_resize, 1);
  c_29_7_0_False_resize <= c_7;
  c_29_7_0_False_shift <= shift_left(c_29_7_0_False_resize, 0);
  with config_select_4 select c_29_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_29_sel select c_29 <=
    c_29_7_1_False_shift when "0",
    c_29_7_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 30 and associated fundamentals [[7], [6], [6]]
  c_30_11_1_False_resize <= c_11;
  c_30_11_1_False_shift <= shift_left(c_30_11_1_False_resize, 1);
  c_30_11_0_False_resize <= c_11;
  c_30_11_0_False_shift <= shift_left(c_30_11_0_False_resize, 0);
  with config_select_4 select c_30_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_30_sel select c_30 <=
    c_30_11_1_False_shift when "0",
    c_30_11_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 31 and associated fundamentals [[103], [218], [170]]
  with config_select_5 select c_31_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
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
      sub_i => c_31_sub_sel,
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  c_31 <= c_31_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 32 and associated fundamentals [[3], [4], [2]]
  c_32_4_1_False_resize <= resize(c_4, 18);
  c_32_4_1_False_shift <= shift_left(c_32_4_1_False_resize, 1);
  c_32_4_2_False_resize <= resize(c_4, 18);
  c_32_4_2_False_shift <= shift_left(c_32_4_2_False_resize, 2);
  c_32_7_0_False_resize <= c_7(17 downto 0);
  c_32_7_0_False_shift <= shift_left(c_32_7_0_False_resize, 0);
  with config_select_4 select c_32_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_32_sel select c_32 <=
    c_32_4_1_False_shift when "00",
    c_32_4_2_False_shift when "01",
    c_32_7_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 33 and associated fundamentals [[7], [2], [3]]
  c_33_11_0_False_resize <= c_11;
  c_33_11_0_False_shift <= shift_left(c_33_11_0_False_resize, 0);
  c_33_4_1_False_resize <= resize(c_4, 19);
  c_33_4_1_False_shift <= shift_left(c_33_4_1_False_resize, 1);
  with config_select_4 select c_33_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_33_sel select c_33 <=
    c_33_11_0_False_shift when "0",
    c_33_4_1_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 34 and associated fundamentals [[230], [72], [92]]
  with config_select_5 select c_34_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 5,
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
      x_i => c_33,
      y_i => c_32,
      z_o => c_34_oshift
    );
  c_34 <= c_34_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 35 and associated fundamentals [[2], [3], [3]]
  c_35_4_1_False_resize <= resize(c_4, 18);
  c_35_4_1_False_shift <= shift_left(c_35_4_1_False_resize, 1);
  c_35_11_0_False_resize <= c_11(17 downto 0);
  c_35_11_0_False_shift <= shift_left(c_35_11_0_False_resize, 0);
  with config_select_4 select c_35_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  with c_35_sel select c_35 <=
    c_35_4_1_False_shift when "0",
    c_35_11_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 36 and associated fundamentals [[11], [4], [3]]
  c_36_11_0_False_resize <= resize(c_11, 20);
  c_36_11_0_False_shift <= shift_left(c_36_11_0_False_resize, 0);
  c_36_13_0_False_resize <= c_13;
  c_36_13_0_False_shift <= shift_left(c_36_13_0_False_resize, 0);
  c_36_4_2_False_resize <= resize(c_4, 20);
  c_36_4_2_False_shift <= shift_left(c_36_4_2_False_resize, 2);
  with config_select_4 select c_36_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_36_sel select c_36 <=
    c_36_11_0_False_shift when "00",
    c_36_13_0_False_shift when "01",
    c_36_4_2_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 37 and associated fundamentals [[117], [188], [195]]
  with config_select_5 select c_37_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 6,
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
  c_37 <= c_37_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 38 and associated fundamentals [[8], [1], [2]]
  c_38_4_0_False_resize <= resize(c_4, 19);
  c_38_4_0_False_shift <= shift_left(c_38_4_0_False_resize, 0);
  c_38_4_1_False_resize <= resize(c_4, 19);
  c_38_4_1_False_shift <= shift_left(c_38_4_1_False_resize, 1);
  c_38_4_3_False_resize <= resize(c_4, 19);
  c_38_4_3_False_shift <= shift_left(c_38_4_3_False_resize, 3);
  with config_select_4 select c_38_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_38_sel select c_38 <=
    c_38_4_0_False_shift when "00",
    c_38_4_1_False_shift when "01",
    c_38_4_3_False_shift when others;
  -- node of type 'mux' in stage 4 with id 39 and associated fundamentals [[14], [11], [6]]
  c_39_13_0_False_resize <= c_13;
  c_39_13_0_False_shift <= shift_left(c_39_13_0_False_resize, 0);
  c_39_11_1_False_resize <= resize(c_11, 20);
  c_39_11_1_False_shift <= shift_left(c_39_11_1_False_resize, 1);
  with config_select_4 select c_39_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_39_sel select c_39 <=
    c_39_13_0_False_shift when "0",
    c_39_11_1_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 40 and associated fundamentals [[242], [43], [70]]
  with config_select_5 select c_40_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
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
      sub_i => c_40_sub_sel,
      x_i => c_38,
      y_i => c_39,
      z_o => c_40_oshift
    );
  c_40 <= c_40_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 41 and associated fundamentals [[12], [7], [11]]
  c_41_7_0_False_resize <= c_7;
  c_41_7_0_False_shift <= shift_left(c_41_7_0_False_resize, 0);
  c_41_7_2_False_resize <= c_7;
  c_41_7_2_False_shift <= shift_left(c_41_7_2_False_resize, 2);
  with config_select_4 select c_41_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_41_sel select c_41 <=
    c_41_7_0_False_shift when "0",
    c_41_7_2_False_shift when others;
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[7], [1], [3]]
  c_42_4_0_False_resize <= resize(c_4, 19);
  c_42_4_0_False_shift <= shift_left(c_42_4_0_False_resize, 0);
  c_42_11_0_False_resize <= c_11;
  c_42_11_0_False_shift <= shift_left(c_42_11_0_False_resize, 0);
  with config_select_4 select c_42_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  with c_42_sel select c_42 <=
    c_42_4_0_False_shift when "0",
    c_42_11_0_False_shift when others;
  -- node of type 'sub' in stage 5 with id 43 and associated fundamentals [[185], [111], [173]]
  inst_adder_node_43: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_41,
      y_i => c_42,
      z_o => c_43_oshift
    );
  c_43 <= c_43_oshift(23 downto 0);
  -- node of type 'output' in stage 5 with id 44 and associated fundamentals [[3], [223], [176]]
  c_44_resize <= c_19;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 5 with id 45 and associated fundamentals [[230], [72], [92]]
  c_45_resize <= c_34;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 5 with id 46 and associated fundamentals [[117], [188], [195]]
  c_46_resize <= c_37;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 5 with id 47 and associated fundamentals [[103], [218], [170]]
  c_47_resize <= c_31;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 5 with id 48 and associated fundamentals [[73], [102], [91]]
  c_48_resize <= c_28;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 5 with id 49 and associated fundamentals [[40], [107], [126]]
  c_49_resize <= c_22;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 5 with id 50 and associated fundamentals [[2], [86], [214]]
  c_50_resize <= c_16;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 5 with id 51 and associated fundamentals [[242], [43], [70]]
  c_51_resize <= c_40;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'output' in stage 5 with id 52 and associated fundamentals [[185], [111], [173]]
  c_52_resize <= c_43;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'output' in stage 5 with id 53 and associated fundamentals [[52], [197], [29]]
  c_53_resize <= c_25;
  c_53 <= shift_left(c_53_resize, 0);
end architecture;

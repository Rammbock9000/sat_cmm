library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(25 downto 0);
    y_8: out std_logic_vector(25 downto 0);
    y_9: out std_logic_vector(25 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(0 downto 0);
  signal config_select_1: std_logic_vector(0 downto 0);
  signal config_select_2: std_logic_vector(0 downto 0);
  signal config_select_3: std_logic_vector(0 downto 0);
  signal config_select_4: std_logic_vector(0 downto 0);
  signal config_select_5: std_logic_vector(0 downto 0);
  signal config_select_6: std_logic_vector(0 downto 0);
  signal config_select_7: std_logic_vector(0 downto 0);
  signal config_select_8: std_logic_vector(0 downto 0);
  signal config_select_9: std_logic_vector(0 downto 0);
  signal config_select_10: std_logic_vector(0 downto 0);
  signal config_select_11: std_logic_vector(0 downto 0);
  signal config_select_12: std_logic_vector(0 downto 0);
  signal config_select_13: std_logic_vector(0 downto 0);
  signal config_select_14: std_logic_vector(0 downto 0);
  signal config_select_15: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(22 downto 0);
  signal c_3_2_3_False_resize: signed(22 downto 0);
  signal c_3_2_3_False_shift: signed(22 downto 0);
  signal c_3_2_0_False_resize: signed(22 downto 0);
  signal c_3_2_0_False_shift: signed(22 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_0_2_False_resize: signed(19 downto 0);
  signal c_4_0_2_False_shift: signed(19 downto 0);
  signal c_4_2_0_False_resize: signed(19 downto 0);
  signal c_4_2_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(25 downto 0);
  signal c_5_i0_resize: signed(25 downto 0);
  signal c_5_i1_resize: signed(25 downto 0);
  signal c_5_i0_shift: signed(25 downto 0);
  signal c_5_i1_shift: signed(25 downto 0);
  signal c_5_arith: signed(25 downto 0);
  signal c_5_oshift: signed(25 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(19 downto 0);
  signal c_6_0_1_False_resize: signed(19 downto 0);
  signal c_6_0_1_False_shift: signed(19 downto 0);
  signal c_6_2_0_False_resize: signed(19 downto 0);
  signal c_6_2_0_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(21 downto 0);
  signal c_8_2_2_False_resize: signed(21 downto 0);
  signal c_8_2_2_False_shift: signed(21 downto 0);
  signal c_8_2_0_False_resize: signed(21 downto 0);
  signal c_8_2_0_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_7_0_False_resize: signed(22 downto 0);
  signal c_10_7_0_False_shift: signed(22 downto 0);
  signal c_10_9_0_False_resize: signed(22 downto 0);
  signal c_10_9_0_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_9_0_False_resize: signed(20 downto 0);
  signal c_11_9_0_False_shift: signed(20 downto 0);
  signal c_11_0_5_False_resize: signed(20 downto 0);
  signal c_11_0_5_False_shift: signed(20 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_0_0_False_resize: signed(25 downto 0);
  signal c_13_0_0_False_shift: signed(25 downto 0);
  signal c_13_5_3_False_resize: signed(25 downto 0);
  signal c_13_5_3_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_9_0_False_resize: signed(23 downto 0);
  signal c_14_9_0_False_shift: signed(23 downto 0);
  signal c_14_0_0_False_resize: signed(23 downto 0);
  signal c_14_0_0_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_7_0_False_resize: signed(22 downto 0);
  signal c_16_7_0_False_shift: signed(22 downto 0);
  signal c_16_0_7_False_resize: signed(22 downto 0);
  signal c_16_0_7_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_0_0_False_resize: signed(24 downto 0);
  signal c_17_0_0_False_shift: signed(24 downto 0);
  signal c_17_12_0_False_resize: signed(24 downto 0);
  signal c_17_12_0_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(23 downto 0);
  signal c_19_7_1_False_resize: signed(23 downto 0);
  signal c_19_7_1_False_shift: signed(23 downto 0);
  signal c_19_5_0_False_resize: signed(23 downto 0);
  signal c_19_5_0_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_12_0_False_resize: signed(25 downto 0);
  signal c_20_12_0_False_shift: signed(25 downto 0);
  signal c_20_0_0_False_resize: signed(25 downto 0);
  signal c_20_0_0_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_i0_resize: signed(24 downto 0);
  signal c_21_i1_resize: signed(24 downto 0);
  signal c_21_i0_shift: signed(24 downto 0);
  signal c_21_i1_shift: signed(24 downto 0);
  signal c_21_arith: signed(24 downto 0);
  signal c_21_oshift: signed(24 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(26 downto 0);
  signal c_22_i1_resize: signed(26 downto 0);
  signal c_22_i0_shift: signed(26 downto 0);
  signal c_22_i1_shift: signed(26 downto 0);
  signal c_22_arith: signed(26 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(19 downto 0);
  signal c_23_0_0_False_resize: signed(19 downto 0);
  signal c_23_0_0_False_shift: signed(19 downto 0);
  signal c_23_2_0_False_resize: signed(19 downto 0);
  signal c_23_2_0_False_shift: signed(19 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_15_1_False_resize: signed(24 downto 0);
  signal c_24_15_1_False_shift: signed(24 downto 0);
  signal c_24_21_0_False_resize: signed(24 downto 0);
  signal c_24_21_0_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_i0_resize: signed(24 downto 0);
  signal c_25_i1_resize: signed(24 downto 0);
  signal c_25_i0_shift: signed(24 downto 0);
  signal c_25_i1_shift: signed(24 downto 0);
  signal c_25_arith: signed(24 downto 0);
  signal c_25_oshift: signed(24 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_2_5_False_resize: signed(24 downto 0);
  signal c_26_2_5_False_shift: signed(24 downto 0);
  signal c_26_15_0_False_resize: signed(24 downto 0);
  signal c_26_15_0_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_25_0_False_resize: signed(24 downto 0);
  signal c_27_25_0_False_shift: signed(24 downto 0);
  signal c_27_0_7_False_resize: signed(24 downto 0);
  signal c_27_0_7_False_shift: signed(24 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(25 downto 0);
  signal c_29_18_0_False_resize: signed(25 downto 0);
  signal c_29_18_0_False_shift: signed(25 downto 0);
  signal c_29_7_0_False_resize: signed(25 downto 0);
  signal c_29_7_0_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(20 downto 0);
  signal c_30_0_5_False_resize: signed(20 downto 0);
  signal c_30_0_5_False_shift: signed(20 downto 0);
  signal c_30_2_0_False_resize: signed(20 downto 0);
  signal c_30_2_0_False_shift: signed(20 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_i0_resize: signed(25 downto 0);
  signal c_31_i1_resize: signed(25 downto 0);
  signal c_31_i0_shift: signed(25 downto 0);
  signal c_31_i1_shift: signed(25 downto 0);
  signal c_31_arith: signed(25 downto 0);
  signal c_31_oshift: signed(25 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_31_0_False_resize: signed(25 downto 0);
  signal c_32_31_0_False_shift: signed(25 downto 0);
  signal c_32_21_1_False_resize: signed(25 downto 0);
  signal c_32_21_1_False_shift: signed(25 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_5_2_False_resize: signed(24 downto 0);
  signal c_33_5_2_False_shift: signed(24 downto 0);
  signal c_33_25_0_False_resize: signed(24 downto 0);
  signal c_33_25_0_False_shift: signed(24 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_i0_resize: signed(25 downto 0);
  signal c_34_i1_resize: signed(25 downto 0);
  signal c_34_i0_shift: signed(25 downto 0);
  signal c_34_i1_shift: signed(25 downto 0);
  signal c_34_arith: signed(25 downto 0);
  signal c_34_oshift: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_22_0_False_resize: signed(25 downto 0);
  signal c_35_22_0_False_shift: signed(25 downto 0);
  signal c_35_22_1_False_resize: signed(25 downto 0);
  signal c_35_22_1_False_shift: signed(25 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_resize: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_31_0_False_resize: signed(25 downto 0);
  signal c_37_31_0_False_shift: signed(25 downto 0);
  signal c_37_34_1_False_resize: signed(25 downto 0);
  signal c_37_34_1_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_resize: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_resize: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_12_0_False_resize: signed(25 downto 0);
  signal c_40_12_0_False_shift: signed(25 downto 0);
  signal c_40_28_0_False_resize: signed(25 downto 0);
  signal c_40_28_0_False_shift: signed(25 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_31_0_False_resize: signed(25 downto 0);
  signal c_42_31_0_False_shift: signed(25 downto 0);
  signal c_42_5_0_False_resize: signed(25 downto 0);
  signal c_42_5_0_False_shift: signed(25 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_resize: signed(25 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_9_2_False_resize: signed(24 downto 0);
  signal c_44_9_2_False_shift: signed(24 downto 0);
  signal c_44_25_0_False_resize: signed(24 downto 0);
  signal c_44_25_0_False_shift: signed(24 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_resize: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_34_0_False_resize: signed(25 downto 0);
  signal c_47_34_0_False_shift: signed(25 downto 0);
  signal c_47_21_0_False_resize: signed(25 downto 0);
  signal c_47_21_0_False_shift: signed(25 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_25_0_False_resize: signed(25 downto 0);
  signal c_49_25_0_False_shift: signed(25 downto 0);
  signal c_49_9_2_False_resize: signed(25 downto 0);
  signal c_49_9_2_False_shift: signed(25 downto 0);
  signal c_49_sel: std_logic_vector(0 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_28_1_False_resize: signed(25 downto 0);
  signal c_51_28_1_False_shift: signed(25 downto 0);
  signal c_51_18_0_False_resize: signed(25 downto 0);
  signal c_51_18_0_False_shift: signed(25 downto 0);
  signal c_51_sel: std_logic_vector(0 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_resize: signed(25 downto 0);
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
      config_select_14 <= config_select;
      config_select_15 <= config_select;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 1 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 2 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 3 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 4 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 5 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 6 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 7 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 8 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 9 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_52);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2]]
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_1_False_shift when "0",
    c_1_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 2 with id 2 and associated fundamentals [[9], [15]]
  with config_select_2 select c_2_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 17,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(19 downto 0);
  -- node of type 'mux' in stage 3 with id 3 and associated fundamentals [[9], [120]]
  c_3_2_3_False_resize <= resize(c_2, 23);
  c_3_2_3_False_shift <= shift_left(c_3_2_3_False_resize, 3);
  c_3_2_0_False_resize <= resize(c_2, 23);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_3 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_2_3_False_shift when "0",
    c_3_2_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[4], [15]]
  c_4_0_2_False_resize <= resize(c_0, 20);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  c_4_2_0_False_resize <= c_2;
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "0",
    "1" when others;
  with c_4_sel select c_4 <=
    c_4_0_2_False_shift when "0",
    c_4_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 5 and associated fundamentals [[76], [945]]
  with config_select_4 select c_5_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[9], [2]]
  c_6_0_1_False_resize <= resize(c_0, 20);
  c_6_0_1_False_shift <= shift_left(c_6_0_1_False_resize, 1);
  c_6_2_0_False_resize <= c_2;
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  with c_6_sel select c_6 <=
    c_6_0_1_False_shift when "0",
    c_6_2_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[585], [113]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 26,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_2,
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[9], [60]]
  c_8_2_2_False_resize <= resize(c_2, 22);
  c_8_2_2_False_shift <= shift_left(c_8_2_2_False_resize, 2);
  c_8_2_0_False_resize <= resize(c_2, 22);
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_2_2_False_shift when "0",
    c_8_2_0_False_shift when others;
  -- node of type 'sub' in stage 4 with id 9 and associated fundamentals [[-27], [-180]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_8,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(23 downto 0);
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[-27], [113]]
  c_10_7_0_False_resize <= c_7(22 downto 0);
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  c_10_9_0_False_resize <= c_9(22 downto 0);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_7_0_False_shift when "0",
    c_10_9_0_False_shift when others;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[-27], [32]]
  c_11_9_0_False_resize <= c_9(20 downto 0);
  c_11_9_0_False_shift <= shift_left(c_11_9_0_False_resize, 0);
  c_11_0_5_False_resize <= resize(c_0, 21);
  c_11_0_5_False_shift <= shift_left(c_11_0_5_False_resize, 5);
  with config_select_5 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  with c_11_sel select c_11 <=
    c_11_9_0_False_shift when "0",
    c_11_0_5_False_shift when others;
  -- node of type 'add' in stage 6 with id 12 and associated fundamentals [[-459], [625]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  c_12 <= c_12_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[608], [1]]
  c_13_0_0_False_resize <= resize(c_0, 26);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  c_13_5_3_False_resize <= c_5;
  c_13_5_3_False_shift <= shift_left(c_13_5_3_False_resize, 3);
  with config_select_5 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_0_0_False_shift when "0",
    c_13_5_3_False_shift when others;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[1], [-180]]
  c_14_9_0_False_resize <= c_9;
  c_14_9_0_False_shift <= shift_left(c_14_9_0_False_resize, 0);
  c_14_0_0_False_resize <= resize(c_0, 24);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  with config_select_5 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  with c_14_sel select c_14 <=
    c_14_9_0_False_shift when "0",
    c_14_0_0_False_shift when others;
  -- node of type 'sub' in stage 6 with id 15 and associated fundamentals [[607], [181]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
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
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  c_15 <= c_15_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[128], [113]]
  c_16_7_0_False_resize <= c_7(22 downto 0);
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  c_16_0_7_False_resize <= resize(c_0, 23);
  c_16_0_7_False_shift <= shift_left(c_16_0_7_False_resize, 7);
  with config_select_5 select c_16_sel <= 
    "0" when "1",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_7_0_False_shift when "0",
    c_16_0_7_False_shift when others;
  -- node of type 'mux' in stage 7 with id 17 and associated fundamentals [[-459], [1]]
  c_17_0_0_False_resize <= resize(c_0, 25);
  c_17_0_0_False_shift <= shift_left(c_17_0_0_False_resize, 0);
  c_17_12_0_False_resize <= c_12(24 downto 0);
  c_17_12_0_False_shift <= shift_left(c_17_12_0_False_resize, 0);
  with config_select_7 select c_17_sel <= 
    "0" when "1",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_0_0_False_shift when "0",
    c_17_12_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 18 and associated fundamentals [[971], [453]]
  with config_select_8 select c_18_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  c_18 <= c_18_oshift(25 downto 0);
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[76], [226]]
  c_19_7_1_False_resize <= c_7(23 downto 0);
  c_19_7_1_False_shift <= shift_left(c_19_7_1_False_resize, 1);
  c_19_5_0_False_resize <= c_5(23 downto 0);
  c_19_5_0_False_shift <= shift_left(c_19_5_0_False_resize, 0);
  with config_select_5 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_7_1_False_shift when "0",
    c_19_5_0_False_shift when others;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[1], [625]]
  c_20_12_0_False_resize <= c_12;
  c_20_12_0_False_shift <= shift_left(c_20_12_0_False_resize, 0);
  c_20_0_0_False_resize <= resize(c_0, 26);
  c_20_0_0_False_shift <= shift_left(c_20_0_0_False_resize, 0);
  with config_select_7 select c_20_sel <= 
    "0" when "1",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_12_0_False_shift when "0",
    c_20_0_0_False_shift when others;
  -- node of type 'add_sub' in stage 8 with id 21 and associated fundamentals [[305], [279]]
  with config_select_8 select c_21_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 25,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(24 downto 0);
  -- node of type 'add_sub' in stage 7 with id 22 and associated fundamentals [[533], [403]]
  with config_select_7 select c_22_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_22_sub_sel,
      x_i => c_15,
      y_i => c_12,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[9], [1]]
  c_23_0_0_False_resize <= resize(c_0, 20);
  c_23_0_0_False_shift <= shift_left(c_23_0_0_False_resize, 0);
  c_23_2_0_False_resize <= c_2;
  c_23_2_0_False_shift <= shift_left(c_23_2_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  with c_23_sel select c_23 <=
    c_23_0_0_False_shift when "0",
    c_23_2_0_False_shift when others;
  -- node of type 'mux' in stage 9 with id 24 and associated fundamentals [[305], [362]]
  c_24_15_1_False_resize <= c_15(24 downto 0);
  c_24_15_1_False_shift <= shift_left(c_24_15_1_False_resize, 1);
  c_24_21_0_False_resize <= c_21;
  c_24_21_0_False_shift <= shift_left(c_24_21_0_False_resize, 0);
  with config_select_9 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_15_1_False_shift when "0",
    c_24_21_0_False_shift when others;
  -- node of type 'sub' in stage 10 with id 25 and associated fundamentals [[-269], [-358]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 25,
      w_o => 25,
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
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(24 downto 0);
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[288], [181]]
  c_26_2_5_False_resize <= resize(c_2, 25);
  c_26_2_5_False_shift <= shift_left(c_26_2_5_False_resize, 5);
  c_26_15_0_False_resize <= c_15(24 downto 0);
  c_26_15_0_False_shift <= shift_left(c_26_15_0_False_resize, 0);
  with config_select_7 select c_26_sel <= 
    "0" when "0",
    "1" when others;
  with c_26_sel select c_26 <=
    c_26_2_5_False_shift when "0",
    c_26_15_0_False_shift when others;
  -- node of type 'mux' in stage 11 with id 27 and associated fundamentals [[-269], [128]]
  c_27_25_0_False_resize <= c_25;
  c_27_25_0_False_shift <= shift_left(c_27_25_0_False_resize, 0);
  c_27_0_7_False_resize <= resize(c_0, 25);
  c_27_0_7_False_shift <= shift_left(c_27_0_7_False_resize, 7);
  with config_select_11 select c_27_sel <= 
    "0" when "0",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_25_0_False_shift when "0",
    c_27_0_7_False_shift when others;
  -- node of type 'add_sub' in stage 12 with id 28 and associated fundamentals [[845], [490]]
  with config_select_12 select c_28_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_28_sub_sel,
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  c_28 <= c_28_oshift(25 downto 0);
  -- node of type 'mux' in stage 9 with id 29 and associated fundamentals [[585], [453]]
  c_29_18_0_False_resize <= c_18;
  c_29_18_0_False_shift <= shift_left(c_29_18_0_False_resize, 0);
  c_29_7_0_False_resize <= c_7;
  c_29_7_0_False_shift <= shift_left(c_29_7_0_False_resize, 0);
  with config_select_9 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  with c_29_sel select c_29 <=
    c_29_18_0_False_shift when "0",
    c_29_7_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[9], [32]]
  c_30_0_5_False_resize <= resize(c_0, 21);
  c_30_0_5_False_shift <= shift_left(c_30_0_5_False_resize, 5);
  c_30_2_0_False_resize <= resize(c_2, 21);
  c_30_2_0_False_shift <= shift_left(c_30_2_0_False_resize, 0);
  with config_select_3 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  with c_30_sel select c_30 <=
    c_30_0_5_False_shift when "0",
    c_30_2_0_False_shift when others;
  -- node of type 'sub' in stage 10 with id 31 and associated fundamentals [[567], [389]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  c_31 <= c_31_oshift(25 downto 0);
  -- node of type 'mux' in stage 11 with id 32 and associated fundamentals [[567], [558]]
  c_32_31_0_False_resize <= c_31;
  c_32_31_0_False_shift <= shift_left(c_32_31_0_False_resize, 0);
  c_32_21_1_False_resize <= resize(c_21, 26);
  c_32_21_1_False_shift <= shift_left(c_32_21_1_False_resize, 1);
  with config_select_11 select c_32_sel <= 
    "0" when "0",
    "1" when others;
  with c_32_sel select c_32 <=
    c_32_31_0_False_shift when "0",
    c_32_21_1_False_shift when others;
  -- node of type 'mux' in stage 11 with id 33 and associated fundamentals [[304], [-358]]
  c_33_5_2_False_resize <= c_5(24 downto 0);
  c_33_5_2_False_shift <= shift_left(c_33_5_2_False_resize, 2);
  c_33_25_0_False_resize <= c_25;
  c_33_25_0_False_shift <= shift_left(c_33_25_0_False_resize, 0);
  with config_select_11 select c_33_sel <= 
    "0" when "0",
    "1" when others;
  with c_33_sel select c_33 <=
    c_33_5_2_False_shift when "0",
    c_33_25_0_False_shift when others;
  -- node of type 'sub' in stage 12 with id 34 and associated fundamentals [[263], [916]]
  inst_adder_node_34: entity work.adder_node
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
      sub => True
    )
    port map (
      x_i => c_32,
      y_i => c_33,
      z_o => c_34_oshift
    );
  c_34 <= c_34_oshift(25 downto 0);
  -- node of type 'mux' in stage 8 with id 35 and associated fundamentals [[533], [806]]
  c_35_22_0_False_resize <= c_22;
  c_35_22_0_False_shift <= shift_left(c_35_22_0_False_resize, 0);
  c_35_22_1_False_resize <= c_22;
  c_35_22_1_False_shift <= shift_left(c_35_22_1_False_resize, 1);
  with config_select_8 select c_35_sel <= 
    "0" when "0",
    "1" when others;
  with c_35_sel select c_35 <=
    c_35_22_0_False_shift when "0",
    c_35_22_1_False_shift when others;
  -- node of type 'output' in stage 8 with id 36 and associated fundamentals [[533], [806]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'mux' in stage 13 with id 37 and associated fundamentals [[526], [389]]
  c_37_31_0_False_resize <= c_31;
  c_37_31_0_False_shift <= shift_left(c_37_31_0_False_resize, 0);
  c_37_34_1_False_resize <= c_34;
  c_37_34_1_False_shift <= shift_left(c_37_34_1_False_resize, 1);
  with config_select_13 select c_37_sel <= 
    "0" when "1",
    "1" when others;
  with c_37_sel select c_37 <=
    c_37_31_0_False_shift when "0",
    c_37_34_1_False_shift when others;
  -- node of type 'output' in stage 13 with id 38 and associated fundamentals [[526], [389]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'output' in stage 6 with id 39 and associated fundamentals [[607], [181]]
  c_39_resize <= c_15;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 13 with id 40 and associated fundamentals [[845], [625]]
  c_40_12_0_False_resize <= c_12;
  c_40_12_0_False_shift <= shift_left(c_40_12_0_False_resize, 0);
  c_40_28_0_False_resize <= c_28;
  c_40_28_0_False_shift <= shift_left(c_40_28_0_False_resize, 0);
  with config_select_13 select c_40_sel <= 
    "0" when "1",
    "1" when others;
  with c_40_sel select c_40 <=
    c_40_12_0_False_shift when "0",
    c_40_28_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 41 and associated fundamentals [[845], [625]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 11 with id 42 and associated fundamentals [[567], [945]]
  c_42_31_0_False_resize <= c_31;
  c_42_31_0_False_shift <= shift_left(c_42_31_0_False_resize, 0);
  c_42_5_0_False_resize <= c_5;
  c_42_5_0_False_shift <= shift_left(c_42_5_0_False_resize, 0);
  with config_select_11 select c_42_sel <= 
    "0" when "0",
    "1" when others;
  with c_42_sel select c_42 <=
    c_42_31_0_False_shift when "0",
    c_42_5_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 43 and associated fundamentals [[567], [945]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 11 with id 44 and associated fundamentals [[-108], [-358]]
  c_44_9_2_False_resize <= resize(c_9, 25);
  c_44_9_2_False_shift <= shift_left(c_44_9_2_False_resize, 2);
  c_44_25_0_False_resize <= c_25;
  c_44_25_0_False_shift <= shift_left(c_44_25_0_False_resize, 0);
  with config_select_11 select c_44_sel <= 
    "0" when "0",
    "1" when others;
  with c_44_sel select c_44 <=
    c_44_9_2_False_shift when "0",
    c_44_25_0_False_shift when others;
  -- node of type 'output' in stage 11 with id 45 and associated fundamentals [[216], [716]]
  c_45_resize <= resize(c_44, 26);
  c_45 <= -shift_left(c_45_resize, 1);
  -- node of type 'output' in stage 9 with id 46 and associated fundamentals [[585], [453]]
  c_46_resize <= c_29;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'mux' in stage 13 with id 47 and associated fundamentals [[305], [916]]
  c_47_34_0_False_resize <= c_34;
  c_47_34_0_False_shift <= shift_left(c_47_34_0_False_resize, 0);
  c_47_21_0_False_resize <= resize(c_21, 26);
  c_47_21_0_False_shift <= shift_left(c_47_21_0_False_resize, 0);
  with config_select_13 select c_47_sel <= 
    "0" when "1",
    "1" when others;
  with c_47_sel select c_47 <=
    c_47_34_0_False_shift when "0",
    c_47_21_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 48 and associated fundamentals [[305], [916]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'mux' in stage 11 with id 49 and associated fundamentals [[-269], [-720]]
  c_49_25_0_False_resize <= resize(c_25, 26);
  c_49_25_0_False_shift <= shift_left(c_49_25_0_False_resize, 0);
  c_49_9_2_False_resize <= resize(c_9, 26);
  c_49_9_2_False_shift <= shift_left(c_49_9_2_False_resize, 2);
  with config_select_11 select c_49_sel <= 
    "0" when "0",
    "1" when others;
  with c_49_sel select c_49 <=
    c_49_25_0_False_shift when "0",
    c_49_9_2_False_shift when others;
  -- node of type 'output' in stage 11 with id 50 and associated fundamentals [[269], [720]]
  c_50_resize <= c_49;
  c_50 <= -shift_left(c_50_resize, 0);
  -- node of type 'mux' in stage 13 with id 51 and associated fundamentals [[971], [980]]
  c_51_28_1_False_resize <= c_28;
  c_51_28_1_False_shift <= shift_left(c_51_28_1_False_resize, 1);
  c_51_18_0_False_resize <= c_18;
  c_51_18_0_False_shift <= shift_left(c_51_18_0_False_resize, 0);
  with config_select_13 select c_51_sel <= 
    "0" when "1",
    "1" when others;
  with c_51_sel select c_51 <=
    c_51_28_1_False_shift when "0",
    c_51_18_0_False_shift when others;
  -- node of type 'output' in stage 13 with id 52 and associated fundamentals [[971], [980]]
  c_52_resize <= c_51;
  c_52 <= shift_left(c_52_resize, 0);
end architecture;

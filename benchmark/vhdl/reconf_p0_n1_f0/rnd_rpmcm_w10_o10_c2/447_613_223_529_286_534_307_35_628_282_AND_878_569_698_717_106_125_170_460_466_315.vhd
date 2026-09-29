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
    y_4: out std_logic_vector(24 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(24 downto 0);
    y_7: out std_logic_vector(24 downto 0);
    y_8: out std_logic_vector(25 downto 0);
    y_9: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_i0_resize: signed(21 downto 0);
  signal c_2_i1_resize: signed(21 downto 0);
  signal c_2_i0_shift: signed(21 downto 0);
  signal c_2_i1_shift: signed(21 downto 0);
  signal c_2_arith: signed(21 downto 0);
  signal c_2_oshift: signed(21 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_0_4_False_resize: signed(19 downto 0);
  signal c_3_0_4_False_shift: signed(19 downto 0);
  signal c_3_0_0_False_resize: signed(19 downto 0);
  signal c_3_0_0_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_4_0_False_resize: signed(21 downto 0);
  signal c_5_4_0_False_shift: signed(21 downto 0);
  signal c_5_2_0_False_resize: signed(21 downto 0);
  signal c_5_2_0_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_7: signed(16 downto 0);
  signal c_7_0_1_False_resize: signed(16 downto 0);
  signal c_7_0_1_False_shift: signed(16 downto 0);
  signal c_7_0_0_False_resize: signed(16 downto 0);
  signal c_7_0_0_False_shift: signed(16 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_0_7_False_resize: signed(22 downto 0);
  signal c_8_0_7_False_shift: signed(22 downto 0);
  signal c_8_4_0_False_resize: signed(22 downto 0);
  signal c_8_4_0_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(22 downto 0);
  signal c_10_9_0_False_resize: signed(22 downto 0);
  signal c_10_9_0_False_shift: signed(22 downto 0);
  signal c_10_2_2_False_resize: signed(22 downto 0);
  signal c_10_2_2_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_i0_resize: signed(24 downto 0);
  signal c_11_i1_resize: signed(24 downto 0);
  signal c_11_i0_shift: signed(24 downto 0);
  signal c_11_i1_shift: signed(24 downto 0);
  signal c_11_arith: signed(24 downto 0);
  signal c_11_oshift: signed(24 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_0_6_False_resize: signed(21 downto 0);
  signal c_12_0_6_False_shift: signed(21 downto 0);
  signal c_12_6_0_False_resize: signed(21 downto 0);
  signal c_12_6_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_9_0_False_resize: signed(21 downto 0);
  signal c_13_9_0_False_shift: signed(21 downto 0);
  signal c_13_2_0_False_resize: signed(21 downto 0);
  signal c_13_2_0_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_4_0_False_resize: signed(22 downto 0);
  signal c_15_4_0_False_shift: signed(22 downto 0);
  signal c_15_11_0_False_resize: signed(22 downto 0);
  signal c_15_11_0_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_0_2_False_resize: signed(22 downto 0);
  signal c_16_0_2_False_shift: signed(22 downto 0);
  signal c_16_14_0_False_resize: signed(22 downto 0);
  signal c_16_14_0_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(21 downto 0);
  signal c_18_17_0_False_resize: signed(21 downto 0);
  signal c_18_17_0_False_shift: signed(21 downto 0);
  signal c_18_6_0_False_resize: signed(21 downto 0);
  signal c_18_6_0_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_9_0_False_resize: signed(24 downto 0);
  signal c_19_9_0_False_shift: signed(24 downto 0);
  signal c_19_14_2_False_resize: signed(24 downto 0);
  signal c_19_14_2_False_shift: signed(24 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_21_9_0_False_resize: signed(21 downto 0);
  signal c_21_9_0_False_shift: signed(21 downto 0);
  signal c_21_17_0_False_resize: signed(21 downto 0);
  signal c_21_17_0_False_shift: signed(21 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_i0_resize: signed(24 downto 0);
  signal c_22_i1_resize: signed(24 downto 0);
  signal c_22_i0_shift: signed(24 downto 0);
  signal c_22_i1_shift: signed(24 downto 0);
  signal c_22_arith: signed(24 downto 0);
  signal c_22_oshift: signed(24 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(24 downto 0);
  signal c_24_6_0_False_resize: signed(24 downto 0);
  signal c_24_6_0_False_shift: signed(24 downto 0);
  signal c_24_11_2_False_resize: signed(24 downto 0);
  signal c_24_11_2_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(25 downto 0);
  signal c_26_22_1_False_resize: signed(25 downto 0);
  signal c_26_22_1_False_shift: signed(25 downto 0);
  signal c_26_25_0_False_resize: signed(25 downto 0);
  signal c_26_25_0_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_4_2_False_resize: signed(23 downto 0);
  signal c_27_4_2_False_shift: signed(23 downto 0);
  signal c_27_0_0_False_resize: signed(23 downto 0);
  signal c_27_0_0_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_9_1_False_resize: signed(22 downto 0);
  signal c_29_9_1_False_shift: signed(22 downto 0);
  signal c_29_0_0_False_resize: signed(22 downto 0);
  signal c_29_0_0_False_shift: signed(22 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_i0_resize: signed(24 downto 0);
  signal c_30_i1_resize: signed(24 downto 0);
  signal c_30_i0_shift: signed(24 downto 0);
  signal c_30_i1_shift: signed(24 downto 0);
  signal c_30_arith: signed(24 downto 0);
  signal c_30_oshift: signed(24 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_20_0_False_resize: signed(25 downto 0);
  signal c_31_20_0_False_shift: signed(25 downto 0);
  signal c_31_11_0_False_resize: signed(25 downto 0);
  signal c_31_11_0_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_resize: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_14_0_False_resize: signed(25 downto 0);
  signal c_34_14_0_False_shift: signed(25 downto 0);
  signal c_34_22_1_False_resize: signed(25 downto 0);
  signal c_34_22_1_False_shift: signed(25 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_resize: signed(25 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_resize: signed(25 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_37_30_0_False_resize: signed(24 downto 0);
  signal c_37_30_0_False_shift: signed(24 downto 0);
  signal c_37_9_1_False_resize: signed(24 downto 0);
  signal c_37_9_1_False_shift: signed(24 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_38_resize: signed(24 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_23_0_False_resize: signed(25 downto 0);
  signal c_39_23_0_False_shift: signed(25 downto 0);
  signal c_39_20_1_False_resize: signed(25 downto 0);
  signal c_39_20_1_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_resize: signed(25 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_41_22_0_False_resize: signed(24 downto 0);
  signal c_41_22_0_False_shift: signed(24 downto 0);
  signal c_41_11_1_False_resize: signed(24 downto 0);
  signal c_41_11_1_False_shift: signed(24 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_42_resize: signed(24 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_43_4_0_False_resize: signed(24 downto 0);
  signal c_43_4_0_False_shift: signed(24 downto 0);
  signal c_43_14_2_False_resize: signed(24 downto 0);
  signal c_43_14_2_False_shift: signed(24 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_resize: signed(24 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_30_0_False_resize: signed(25 downto 0);
  signal c_45_30_0_False_shift: signed(25 downto 0);
  signal c_45_23_2_False_resize: signed(25 downto 0);
  signal c_45_23_2_False_shift: signed(25 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_47_6_0_False_resize: signed(24 downto 0);
  signal c_47_6_0_False_shift: signed(24 downto 0);
  signal c_47_17_0_False_resize: signed(24 downto 0);
  signal c_47_17_0_False_shift: signed(24 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_resize: signed(24 downto 0);
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
  -- output node 1 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 2 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 3 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 4 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 5 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 6 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 7 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 8 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 9 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_48);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[8], [1]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  with c_1_sel select c_1 <=
    c_1_0_0_False_shift when "0",
    c_1_0_3_False_shift when others;
  -- node of type 'add' in stage 2 with id 2 and associated fundamentals [[33], [5]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(21 downto 0);
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[1], [16]]
  c_3_0_4_False_resize <= resize(c_0, 20);
  c_3_0_4_False_shift <= shift_left(c_3_0_4_False_resize, 4);
  c_3_0_0_False_resize <= resize(c_0, 20);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  with config_select_1 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_4_False_shift when "0",
    c_3_0_0_False_shift when others;
  -- node of type 'add' in stage 3 with id 4 and associated fundamentals [[35], [37]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
      w_o => 22,
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
      x_i => c_3,
      y_i => c_2,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(21 downto 0);
  -- node of type 'mux' in stage 4 with id 5 and associated fundamentals [[35], [5]]
  c_5_4_0_False_resize <= c_4;
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_2_0_False_resize <= c_2;
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  with config_select_4 select c_5_sel <= 
    "0" when "0",
    "1" when others;
  with c_5_sel select c_5 <=
    c_5_4_0_False_shift when "0",
    c_5_2_0_False_shift when others;
  -- node of type 'add' in stage 5 with id 6 and associated fundamentals [[282], [42]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_0,
      y_i => c_5,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(24 downto 0);
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[1], [2]]
  c_7_0_1_False_resize <= resize(c_0, 17);
  c_7_0_1_False_shift <= shift_left(c_7_0_1_False_resize, 1);
  c_7_0_0_False_resize <= resize(c_0, 17);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "0" when "1",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_0_1_False_shift when "0",
    c_7_0_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[128], [37]]
  c_8_0_7_False_resize <= resize(c_0, 23);
  c_8_0_7_False_shift <= shift_left(c_8_0_7_False_resize, 7);
  c_8_4_0_False_resize <= resize(c_4, 23);
  c_8_4_0_False_shift <= shift_left(c_8_4_0_False_resize, 0);
  with config_select_4 select c_8_sel <= 
    "0" when "0",
    "1" when others;
  with c_8_sel select c_8 <=
    c_8_0_7_False_shift when "0",
    c_8_4_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 9 and associated fundamentals [[-120], [53]]
  with config_select_5 select c_9_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 23,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  c_9 <= c_9_oshift(22 downto 0);
  -- node of type 'mux' in stage 6 with id 10 and associated fundamentals [[-120], [20]]
  c_10_9_0_False_resize <= c_9;
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_2_2_False_resize <= resize(c_2, 23);
  c_10_2_2_False_shift <= shift_left(c_10_2_2_False_resize, 2);
  with config_select_6 select c_10_sel <= 
    "0" when "0",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_9_0_False_shift when "0",
    c_10_2_2_False_shift when others;
  -- node of type 'add' in stage 7 with id 11 and associated fundamentals [[-447], [85]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_2,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(24 downto 0);
  -- node of type 'mux' in stage 6 with id 12 and associated fundamentals [[64], [42]]
  c_12_0_6_False_resize <= resize(c_0, 22);
  c_12_0_6_False_shift <= shift_left(c_12_0_6_False_resize, 6);
  c_12_6_0_False_resize <= c_6(21 downto 0);
  c_12_6_0_False_shift <= shift_left(c_12_6_0_False_resize, 0);
  with config_select_6 select c_12_sel <= 
    "0" when "0",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_0_6_False_shift when "0",
    c_12_6_0_False_shift when others;
  -- node of type 'mux' in stage 6 with id 13 and associated fundamentals [[33], [53]]
  c_13_9_0_False_resize <= c_9(21 downto 0);
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  c_13_2_0_False_resize <= c_2;
  c_13_2_0_False_shift <= shift_left(c_13_2_0_False_resize, 0);
  with config_select_6 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_9_0_False_shift when "0",
    c_13_2_0_False_shift when others;
  -- node of type 'sub' in stage 7 with id 14 and associated fundamentals [[223], [115]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(23 downto 0);
  -- node of type 'mux' in stage 8 with id 15 and associated fundamentals [[35], [85]]
  c_15_4_0_False_resize <= resize(c_4, 23);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_11_0_False_resize <= c_11(22 downto 0);
  c_15_11_0_False_shift <= shift_left(c_15_11_0_False_resize, 0);
  with config_select_8 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_4_0_False_shift when "0",
    c_15_11_0_False_shift when others;
  -- node of type 'mux' in stage 8 with id 16 and associated fundamentals [[4], [115]]
  c_16_0_2_False_resize <= resize(c_0, 23);
  c_16_0_2_False_shift <= shift_left(c_16_0_2_False_resize, 2);
  c_16_14_0_False_resize <= c_14(22 downto 0);
  c_16_14_0_False_shift <= shift_left(c_16_14_0_False_resize, 0);
  with config_select_8 select c_16_sel <= 
    "0" when "0",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_0_2_False_shift when "0",
    c_16_14_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 17 and associated fundamentals [[27], [315]]
  with config_select_9 select c_17_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 25,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(24 downto 0);
  -- node of type 'mux' in stage 10 with id 18 and associated fundamentals [[27], [42]]
  c_18_17_0_False_resize <= c_17(21 downto 0);
  c_18_17_0_False_shift <= shift_left(c_18_17_0_False_resize, 0);
  c_18_6_0_False_resize <= c_6(21 downto 0);
  c_18_6_0_False_shift <= shift_left(c_18_6_0_False_resize, 0);
  with config_select_10 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_17_0_False_shift when "0",
    c_18_6_0_False_shift when others;
  -- node of type 'mux' in stage 8 with id 19 and associated fundamentals [[-120], [460]]
  c_19_9_0_False_resize <= resize(c_9, 25);
  c_19_9_0_False_shift <= shift_left(c_19_9_0_False_resize, 0);
  c_19_14_2_False_resize <= resize(c_14, 25);
  c_19_14_2_False_shift <= shift_left(c_19_14_2_False_resize, 2);
  with config_select_8 select c_19_sel <= 
    "0" when "0",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_9_0_False_shift when "0",
    c_19_14_2_False_shift when others;
  -- node of type 'sub' in stage 11 with id 20 and associated fundamentals [[267], [-878]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
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
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(25 downto 0);
  -- node of type 'mux' in stage 10 with id 21 and associated fundamentals [[27], [53]]
  c_21_9_0_False_resize <= c_9(21 downto 0);
  c_21_9_0_False_shift <= shift_left(c_21_9_0_False_resize, 0);
  c_21_17_0_False_resize <= c_17(21 downto 0);
  c_21_17_0_False_shift <= shift_left(c_21_17_0_False_resize, 0);
  with config_select_10 select c_21_sel <= 
    "0" when "1",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_9_0_False_shift when "0",
    c_21_17_0_False_shift when others;
  -- node of type 'add' in stage 11 with id 22 and associated fundamentals [[307], [349]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 25,
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
      x_i => c_4,
      y_i => c_21,
      z_o => c_22_oshift
    );
  c_22 <= c_22_oshift(24 downto 0);
  -- node of type 'add_sub' in stage 8 with id 23 and associated fundamentals [[157], [125]]
  with config_select_8 select c_23_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
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
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_23_sub_sel,
      x_i => c_14,
      y_i => c_2,
      z_o => c_23_oshift
    );
  c_23 <= c_23_oshift(23 downto 0);
  -- node of type 'mux' in stage 8 with id 24 and associated fundamentals [[282], [340]]
  c_24_6_0_False_resize <= c_6;
  c_24_6_0_False_shift <= shift_left(c_24_6_0_False_resize, 0);
  c_24_11_2_False_resize <= c_11;
  c_24_11_2_False_shift <= shift_left(c_24_11_2_False_resize, 2);
  with config_select_8 select c_24_sel <= 
    "0" when "0",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_6_0_False_shift when "0",
    c_24_11_2_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 25 and associated fundamentals [[529], [717]]
  with config_select_9 select c_25_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
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
      sub_i => c_25_sub_sel,
      x_i => c_24,
      y_i => c_4,
      z_o => c_25_oshift
    );
  c_25 <= c_25_oshift(25 downto 0);
  -- node of type 'mux' in stage 12 with id 26 and associated fundamentals [[614], [717]]
  c_26_22_1_False_resize <= resize(c_22, 26);
  c_26_22_1_False_shift <= shift_left(c_26_22_1_False_resize, 1);
  c_26_25_0_False_resize <= c_25;
  c_26_25_0_False_shift <= shift_left(c_26_25_0_False_resize, 0);
  with config_select_12 select c_26_sel <= 
    "0" when "0",
    "1" when others;
  with c_26_sel select c_26 <=
    c_26_22_1_False_shift when "0",
    c_26_25_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[1], [148]]
  c_27_4_2_False_resize <= resize(c_4, 24);
  c_27_4_2_False_shift <= shift_left(c_27_4_2_False_resize, 2);
  c_27_0_0_False_resize <= resize(c_0, 24);
  c_27_0_0_False_shift <= shift_left(c_27_0_0_False_resize, 0);
  with config_select_4 select c_27_sel <= 
    "0" when "1",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_4_2_False_shift when "0",
    c_27_0_0_False_shift when others;
  -- node of type 'sub' in stage 13 with id 28 and associated fundamentals [[613], [569]]
  inst_adder_node_28: entity work.adder_node
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
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  c_28 <= c_28_oshift(25 downto 0);
  -- node of type 'mux' in stage 6 with id 29 and associated fundamentals [[1], [106]]
  c_29_9_1_False_resize <= c_9;
  c_29_9_1_False_shift <= shift_left(c_29_9_1_False_resize, 1);
  c_29_0_0_False_resize <= resize(c_0, 23);
  c_29_0_0_False_shift <= shift_left(c_29_0_0_False_resize, 0);
  with config_select_6 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  with c_29_sel select c_29 <=
    c_29_9_1_False_shift when "0",
    c_29_0_0_False_shift when others;
  -- node of type 'add' in stage 7 with id 30 and associated fundamentals [[286], [466]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_6,
      y_i => c_29,
      z_o => c_30_oshift
    );
  c_30 <= c_30_oshift(24 downto 0);
  -- node of type 'mux' in stage 12 with id 31 and associated fundamentals [[-447], [-878]]
  c_31_20_0_False_resize <= c_20;
  c_31_20_0_False_shift <= shift_left(c_31_20_0_False_resize, 0);
  c_31_11_0_False_resize <= resize(c_11, 26);
  c_31_11_0_False_shift <= shift_left(c_31_11_0_False_resize, 0);
  with config_select_12 select c_31_sel <= 
    "0" when "1",
    "1" when others;
  with c_31_sel select c_31 <=
    c_31_20_0_False_shift when "0",
    c_31_11_0_False_shift when others;
  -- node of type 'output' in stage 12 with id 32 and associated fundamentals [[447], [878]]
  c_32_resize <= c_31;
  c_32 <= -shift_left(c_32_resize, 0);
  -- node of type 'output' in stage 13 with id 33 and associated fundamentals [[613], [569]]
  c_33_resize <= c_28;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 12 with id 34 and associated fundamentals [[223], [698]]
  c_34_14_0_False_resize <= resize(c_14, 26);
  c_34_14_0_False_shift <= shift_left(c_34_14_0_False_resize, 0);
  c_34_22_1_False_resize <= resize(c_22, 26);
  c_34_22_1_False_shift <= shift_left(c_34_22_1_False_resize, 1);
  with config_select_12 select c_34_sel <= 
    "0" when "0",
    "1" when others;
  with c_34_sel select c_34 <=
    c_34_14_0_False_shift when "0",
    c_34_22_1_False_shift when others;
  -- node of type 'output' in stage 12 with id 35 and associated fundamentals [[223], [698]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'output' in stage 9 with id 36 and associated fundamentals [[529], [717]]
  c_36_resize <= c_25;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'mux' in stage 8 with id 37 and associated fundamentals [[286], [106]]
  c_37_30_0_False_resize <= c_30;
  c_37_30_0_False_shift <= shift_left(c_37_30_0_False_resize, 0);
  c_37_9_1_False_resize <= resize(c_9, 25);
  c_37_9_1_False_shift <= shift_left(c_37_9_1_False_resize, 1);
  with config_select_8 select c_37_sel <= 
    "0" when "0",
    "1" when others;
  with c_37_sel select c_37 <=
    c_37_30_0_False_shift when "0",
    c_37_9_1_False_shift when others;
  -- node of type 'output' in stage 8 with id 38 and associated fundamentals [[286], [106]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 12 with id 39 and associated fundamentals [[534], [125]]
  c_39_23_0_False_resize <= resize(c_23, 26);
  c_39_23_0_False_shift <= shift_left(c_39_23_0_False_resize, 0);
  c_39_20_1_False_resize <= c_20;
  c_39_20_1_False_shift <= shift_left(c_39_20_1_False_resize, 1);
  with config_select_12 select c_39_sel <= 
    "0" when "1",
    "1" when others;
  with c_39_sel select c_39 <=
    c_39_23_0_False_shift when "0",
    c_39_20_1_False_shift when others;
  -- node of type 'output' in stage 12 with id 40 and associated fundamentals [[534], [125]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'mux' in stage 12 with id 41 and associated fundamentals [[307], [170]]
  c_41_22_0_False_resize <= c_22;
  c_41_22_0_False_shift <= shift_left(c_41_22_0_False_resize, 0);
  c_41_11_1_False_resize <= c_11;
  c_41_11_1_False_shift <= shift_left(c_41_11_1_False_resize, 1);
  with config_select_12 select c_41_sel <= 
    "0" when "0",
    "1" when others;
  with c_41_sel select c_41 <=
    c_41_22_0_False_shift when "0",
    c_41_11_1_False_shift when others;
  -- node of type 'output' in stage 12 with id 42 and associated fundamentals [[307], [170]]
  c_42_resize <= c_41;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'mux' in stage 8 with id 43 and associated fundamentals [[35], [460]]
  c_43_4_0_False_resize <= resize(c_4, 25);
  c_43_4_0_False_shift <= shift_left(c_43_4_0_False_resize, 0);
  c_43_14_2_False_resize <= resize(c_14, 25);
  c_43_14_2_False_shift <= shift_left(c_43_14_2_False_resize, 2);
  with config_select_8 select c_43_sel <= 
    "0" when "0",
    "1" when others;
  with c_43_sel select c_43 <=
    c_43_4_0_False_shift when "0",
    c_43_14_2_False_shift when others;
  -- node of type 'output' in stage 8 with id 44 and associated fundamentals [[35], [460]]
  c_44_resize <= c_43;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'mux' in stage 9 with id 45 and associated fundamentals [[628], [466]]
  c_45_30_0_False_resize <= resize(c_30, 26);
  c_45_30_0_False_shift <= shift_left(c_45_30_0_False_resize, 0);
  c_45_23_2_False_resize <= resize(c_23, 26);
  c_45_23_2_False_shift <= shift_left(c_45_23_2_False_resize, 2);
  with config_select_9 select c_45_sel <= 
    "0" when "1",
    "1" when others;
  with c_45_sel select c_45 <=
    c_45_30_0_False_shift when "0",
    c_45_23_2_False_shift when others;
  -- node of type 'output' in stage 9 with id 46 and associated fundamentals [[628], [466]]
  c_46_resize <= c_45;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'mux' in stage 10 with id 47 and associated fundamentals [[282], [315]]
  c_47_6_0_False_resize <= c_6;
  c_47_6_0_False_shift <= shift_left(c_47_6_0_False_resize, 0);
  c_47_17_0_False_resize <= c_17;
  c_47_17_0_False_shift <= shift_left(c_47_17_0_False_resize, 0);
  with config_select_10 select c_47_sel <= 
    "0" when "0",
    "1" when others;
  with c_47_sel select c_47 <=
    c_47_6_0_False_shift when "0",
    c_47_17_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 48 and associated fundamentals [[282], [315]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
end architecture;

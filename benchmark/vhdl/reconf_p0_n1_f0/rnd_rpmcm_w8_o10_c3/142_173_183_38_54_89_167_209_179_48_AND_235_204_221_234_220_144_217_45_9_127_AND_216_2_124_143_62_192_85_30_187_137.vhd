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
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal config_select_12: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(20 downto 0);
  signal c_2_1_0_False_resize: signed(20 downto 0);
  signal c_2_1_0_False_shift: signed(20 downto 0);
  signal c_2_0_5_False_resize: signed(20 downto 0);
  signal c_2_0_5_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_0_0_False_resize: signed(20 downto 0);
  signal c_3_0_0_False_shift: signed(20 downto 0);
  signal c_3_1_1_False_resize: signed(20 downto 0);
  signal c_3_1_1_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(21 downto 0);
  signal c_5_0_0_False_resize: signed(21 downto 0);
  signal c_5_0_0_False_shift: signed(21 downto 0);
  signal c_5_1_2_False_resize: signed(21 downto 0);
  signal c_5_1_2_False_shift: signed(21 downto 0);
  signal c_5_4_0_False_resize: signed(21 downto 0);
  signal c_5_4_0_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(19 downto 0);
  signal c_7_0_4_False_resize: signed(19 downto 0);
  signal c_7_0_4_False_shift: signed(19 downto 0);
  signal c_7_1_0_False_resize: signed(19 downto 0);
  signal c_7_1_0_False_shift: signed(19 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(21 downto 0);
  signal c_9_0_0_False_resize: signed(21 downto 0);
  signal c_9_0_0_False_shift: signed(21 downto 0);
  signal c_9_1_0_False_resize: signed(21 downto 0);
  signal c_9_1_0_False_shift: signed(21 downto 0);
  signal c_9_0_6_False_resize: signed(21 downto 0);
  signal c_9_0_6_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_4_2_False_resize: signed(22 downto 0);
  signal c_10_4_2_False_shift: signed(22 downto 0);
  signal c_10_6_0_False_resize: signed(22 downto 0);
  signal c_10_6_0_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(22 downto 0);
  signal c_12_0_0_False_resize: signed(22 downto 0);
  signal c_12_0_0_False_shift: signed(22 downto 0);
  signal c_12_8_1_False_resize: signed(22 downto 0);
  signal c_12_8_1_False_shift: signed(22 downto 0);
  signal c_12_8_0_False_resize: signed(22 downto 0);
  signal c_12_8_0_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_11_0_False_resize: signed(23 downto 0);
  signal c_13_11_0_False_shift: signed(23 downto 0);
  signal c_13_6_3_False_resize: signed(23 downto 0);
  signal c_13_6_3_False_shift: signed(23 downto 0);
  signal c_13_4_2_False_resize: signed(23 downto 0);
  signal c_13_4_2_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_4_0_False_resize: signed(23 downto 0);
  signal c_15_4_0_False_shift: signed(23 downto 0);
  signal c_15_6_2_False_resize: signed(23 downto 0);
  signal c_15_6_2_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(21 downto 0);
  signal c_17_1_2_False_resize: signed(21 downto 0);
  signal c_17_1_2_False_shift: signed(21 downto 0);
  signal c_17_8_0_False_resize: signed(21 downto 0);
  signal c_17_8_0_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_0_0_False_resize: signed(22 downto 0);
  signal c_18_0_0_False_shift: signed(22 downto 0);
  signal c_18_8_0_False_resize: signed(22 downto 0);
  signal c_18_8_0_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(21 downto 0);
  signal c_20_4_0_False_resize: signed(21 downto 0);
  signal c_20_4_0_False_shift: signed(21 downto 0);
  signal c_20_6_0_False_resize: signed(21 downto 0);
  signal c_20_6_0_False_shift: signed(21 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_21_i0_resize: signed(21 downto 0);
  signal c_21_i1_resize: signed(21 downto 0);
  signal c_21_i0_shift: signed(21 downto 0);
  signal c_21_i1_shift: signed(21 downto 0);
  signal c_21_arith: signed(21 downto 0);
  signal c_21_oshift: signed(21 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(19 downto 0);
  signal c_22_0_3_False_resize: signed(19 downto 0);
  signal c_22_0_3_False_shift: signed(19 downto 0);
  signal c_22_6_0_False_resize: signed(19 downto 0);
  signal c_22_6_0_False_shift: signed(19 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_23_0_0_False_resize: signed(20 downto 0);
  signal c_23_0_0_False_shift: signed(20 downto 0);
  signal c_23_1_0_False_resize: signed(20 downto 0);
  signal c_23_1_0_False_shift: signed(20 downto 0);
  signal c_23_21_0_False_resize: signed(20 downto 0);
  signal c_23_21_0_False_shift: signed(20 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(23 downto 0);
  signal c_25_16_1_False_resize: signed(23 downto 0);
  signal c_25_16_1_False_shift: signed(23 downto 0);
  signal c_25_16_0_False_resize: signed(23 downto 0);
  signal c_25_16_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_26_0_0_False_resize: signed(21 downto 0);
  signal c_26_0_0_False_shift: signed(21 downto 0);
  signal c_26_11_1_False_resize: signed(21 downto 0);
  signal c_26_11_1_False_shift: signed(21 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(23 downto 0);
  signal c_28_8_1_False_resize: signed(23 downto 0);
  signal c_28_8_1_False_shift: signed(23 downto 0);
  signal c_28_27_0_False_resize: signed(23 downto 0);
  signal c_28_27_0_False_shift: signed(23 downto 0);
  signal c_28_8_3_False_resize: signed(23 downto 0);
  signal c_28_8_3_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_resize: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_11_0_False_resize: signed(23 downto 0);
  signal c_30_11_0_False_shift: signed(23 downto 0);
  signal c_30_24_0_False_resize: signed(23 downto 0);
  signal c_30_24_0_False_shift: signed(23 downto 0);
  signal c_30_0_1_False_resize: signed(23 downto 0);
  signal c_30_0_1_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_resize: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_19_0_False_resize: signed(23 downto 0);
  signal c_32_19_0_False_shift: signed(23 downto 0);
  signal c_32_11_2_False_resize: signed(23 downto 0);
  signal c_32_11_2_False_shift: signed(23 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_resize: signed(23 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_19_0_False_resize: signed(23 downto 0);
  signal c_34_19_0_False_shift: signed(23 downto 0);
  signal c_34_16_1_False_resize: signed(23 downto 0);
  signal c_34_16_1_False_shift: signed(23 downto 0);
  signal c_34_21_1_False_resize: signed(23 downto 0);
  signal c_34_21_1_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_resize: signed(23 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_36_4_0_False_resize: signed(22 downto 0);
  signal c_36_4_0_False_shift: signed(22 downto 0);
  signal c_36_8_1_False_resize: signed(22 downto 0);
  signal c_36_8_1_False_shift: signed(22 downto 0);
  signal c_36_11_0_False_resize: signed(22 downto 0);
  signal c_36_11_0_False_shift: signed(22 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_1_4_False_resize: signed(23 downto 0);
  signal c_38_1_4_False_shift: signed(23 downto 0);
  signal c_38_21_3_False_resize: signed(23 downto 0);
  signal c_38_21_3_False_shift: signed(23 downto 0);
  signal c_38_16_0_False_resize: signed(23 downto 0);
  signal c_38_16_0_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_6_1_False_resize: signed(23 downto 0);
  signal c_41_6_1_False_shift: signed(23 downto 0);
  signal c_41_21_0_False_resize: signed(23 downto 0);
  signal c_41_21_0_False_shift: signed(23 downto 0);
  signal c_41_11_0_False_resize: signed(23 downto 0);
  signal c_41_11_0_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_27_0_False_resize: signed(23 downto 0);
  signal c_43_27_0_False_shift: signed(23 downto 0);
  signal c_43_1_0_False_resize: signed(23 downto 0);
  signal c_43_1_0_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_6_2_False_resize: signed(23 downto 0);
  signal c_45_6_2_False_shift: signed(23 downto 0);
  signal c_45_24_0_False_resize: signed(23 downto 0);
  signal c_45_24_0_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 1 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 2 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 3 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 4 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 5 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 6 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 7 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 8 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 9 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_46);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[7], [9], [9]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  c_1 <= c_1_oshift(19 downto 0);
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[7], [9], [32]]
  c_2_1_0_False_resize <= resize(c_1, 21);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 21);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_2 select c_2_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_2_sel select c_2 <=
    c_2_1_0_False_shift when "0",
    c_2_0_5_False_shift when others;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[1], [18], [1]]
  c_3_0_0_False_resize <= resize(c_0, 21);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_1_1_False_resize <= resize(c_1, 21);
  c_3_1_1_False_shift <= shift_left(c_3_1_1_False_resize, 1);
  with config_select_2 select c_3_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  with c_3_sel select c_3 <=
    c_3_0_0_False_shift when "0",
    c_3_1_1_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 4 and associated fundamentals [[27], [54], [129]]
  with config_select_3 select c_4_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 5 and associated fundamentals [[28], [54], [1]]
  c_5_0_0_False_resize <= resize(c_0, 22);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_1_2_False_resize <= resize(c_1, 22);
  c_5_1_2_False_shift <= shift_left(c_5_1_2_False_resize, 2);
  c_5_4_0_False_resize <= c_4(21 downto 0);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  with config_select_4 select c_5_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_5_sel select c_5 <=
    c_5_0_0_False_shift when "00",
    c_5_1_2_False_shift when "01",
    c_5_4_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 6 and associated fundamentals [[12], [70], [-15]]
  with config_select_5 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_0,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(22 downto 0);
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[16], [16], [9]]
  c_7_0_4_False_resize <= resize(c_0, 20);
  c_7_0_4_False_shift <= shift_left(c_7_0_4_False_resize, 4);
  c_7_1_0_False_resize <= c_1;
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_7_sel select c_7 <=
    c_7_0_4_False_shift when "0",
    c_7_1_0_False_shift when others;
  -- node of type 'add_sub' in stage 3 with id 8 and associated fundamentals [[71], [55], [27]]
  with config_select_3 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_1,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(22 downto 0);
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[7], [64], [1]]
  c_9_0_0_False_resize <= resize(c_0, 22);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_1_0_False_resize <= resize(c_1, 22);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  c_9_0_6_False_resize <= resize(c_0, 22);
  c_9_0_6_False_shift <= shift_left(c_9_0_6_False_resize, 6);
  with config_select_2 select c_9_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_9_sel select c_9 <=
    c_9_0_0_False_shift when "00",
    c_9_1_0_False_shift when "01",
    c_9_0_6_False_shift when others;
  -- node of type 'mux' in stage 6 with id 10 and associated fundamentals [[108], [70], [-15]]
  c_10_4_2_False_resize <= c_4(22 downto 0);
  c_10_4_2_False_shift <= shift_left(c_10_4_2_False_resize, 2);
  c_10_6_0_False_resize <= c_6;
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_6 select c_10_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_4_2_False_shift when "0",
    c_10_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 11 and associated fundamentals [[-209], [204], [31]]
  with config_select_7 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[71], [1], [54]]
  c_12_0_0_False_resize <= resize(c_0, 23);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  c_12_8_1_False_resize <= c_8;
  c_12_8_1_False_shift <= shift_left(c_12_8_1_False_resize, 1);
  c_12_8_0_False_resize <= c_8;
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  with config_select_4 select c_12_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_12_sel select c_12 <=
    c_12_0_0_False_shift when "00",
    c_12_8_1_False_shift when "01",
    c_12_8_0_False_shift when others;
  -- node of type 'mux' in stage 8 with id 13 and associated fundamentals [[96], [216], [31]]
  c_13_11_0_False_resize <= c_11;
  c_13_11_0_False_shift <= shift_left(c_13_11_0_False_resize, 0);
  c_13_6_3_False_resize <= resize(c_6, 24);
  c_13_6_3_False_shift <= shift_left(c_13_6_3_False_resize, 3);
  c_13_4_2_False_resize <= c_4;
  c_13_4_2_False_shift <= shift_left(c_13_4_2_False_resize, 2);
  with config_select_8 select c_13_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  with c_13_sel select c_13 <=
    c_13_11_0_False_shift when "00",
    c_13_6_3_False_shift when "01",
    c_13_4_2_False_shift when others;
  -- node of type 'add' in stage 9 with id 14 and associated fundamentals [[167], [217], [85]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(23 downto 0);
  -- node of type 'mux' in stage 6 with id 15 and associated fundamentals [[48], [54], [129]]
  c_15_4_0_False_resize <= c_4;
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_6_2_False_resize <= resize(c_6, 24);
  c_15_6_2_False_shift <= shift_left(c_15_6_2_False_resize, 2);
  with config_select_6 select c_15_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_4_0_False_shift when "0",
    c_15_6_2_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 16 and associated fundamentals [[89], [117], [249]]
  with config_select_7 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      sub_i => c_16_sub_sel,
      x_i => c_15,
      y_i => c_1,
      z_o => c_16_oshift
    );
  c_16 <= c_16_oshift(23 downto 0);
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[28], [55], [36]]
  c_17_1_2_False_resize <= resize(c_1, 22);
  c_17_1_2_False_shift <= shift_left(c_17_1_2_False_resize, 2);
  c_17_8_0_False_resize <= c_8(21 downto 0);
  c_17_8_0_False_shift <= shift_left(c_17_8_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_17_sel select c_17 <=
    c_17_1_2_False_shift when "0",
    c_17_8_0_False_shift when others;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[71], [1], [1]]
  c_18_0_0_False_resize <= resize(c_0, 23);
  c_18_0_0_False_shift <= shift_left(c_18_0_0_False_resize, 0);
  c_18_8_0_False_resize <= c_8;
  c_18_8_0_False_shift <= shift_left(c_18_8_0_False_resize, 0);
  with config_select_4 select c_18_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_0_0_False_shift when "0",
    c_18_8_0_False_shift when others;
  -- node of type 'add_sub' in stage 5 with id 19 and associated fundamentals [[183], [221], [143]]
  with config_select_5 select c_19_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  c_19 <= c_19_oshift(23 downto 0);
  -- node of type 'mux' in stage 6 with id 20 and associated fundamentals [[12], [54], [-15]]
  c_20_4_0_False_resize <= c_4(21 downto 0);
  c_20_4_0_False_shift <= shift_left(c_20_4_0_False_resize, 0);
  c_20_6_0_False_resize <= c_6(21 downto 0);
  c_20_6_0_False_shift <= shift_left(c_20_6_0_False_resize, 0);
  with config_select_6 select c_20_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  with c_20_sel select c_20 <=
    c_20_4_0_False_shift when "0",
    c_20_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 7 with id 21 and associated fundamentals [[19], [-45], [24]]
  with config_select_7 select c_21_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
      w_o => 22,
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
      x_i => c_1,
      y_i => c_20,
      z_o => c_21_oshift
    );
  c_21 <= c_21_oshift(21 downto 0);
  -- node of type 'mux' in stage 6 with id 22 and associated fundamentals [[12], [8], [8]]
  c_22_0_3_False_resize <= resize(c_0, 20);
  c_22_0_3_False_shift <= shift_left(c_22_0_3_False_resize, 3);
  c_22_6_0_False_resize <= c_6(19 downto 0);
  c_22_6_0_False_shift <= shift_left(c_22_6_0_False_resize, 0);
  with config_select_6 select c_22_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_0_3_False_shift when "0",
    c_22_6_0_False_shift when others;
  -- node of type 'mux' in stage 8 with id 23 and associated fundamentals [[19], [1], [9]]
  c_23_0_0_False_resize <= resize(c_0, 21);
  c_23_0_0_False_shift <= shift_left(c_23_0_0_False_resize, 0);
  c_23_1_0_False_resize <= resize(c_1, 21);
  c_23_1_0_False_shift <= shift_left(c_23_1_0_False_resize, 0);
  c_23_21_0_False_resize <= c_21(20 downto 0);
  c_23_21_0_False_shift <= shift_left(c_23_21_0_False_resize, 0);
  with config_select_8 select c_23_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_23_sel select c_23 <=
    c_23_0_0_False_shift when "00",
    c_23_1_0_False_shift when "01",
    c_23_21_0_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 24 and associated fundamentals [[173], [127], [137]]
  with config_select_9 select c_24_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  c_24 <= c_24_oshift(23 downto 0);
  -- node of type 'mux' in stage 8 with id 25 and associated fundamentals [[178], [234], [249]]
  c_25_16_1_False_resize <= c_16;
  c_25_16_1_False_shift <= shift_left(c_25_16_1_False_resize, 1);
  c_25_16_0_False_resize <= c_16;
  c_25_16_0_False_shift <= shift_left(c_25_16_0_False_resize, 0);
  with config_select_8 select c_25_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  with c_25_sel select c_25 <=
    c_25_16_1_False_shift when "0",
    c_25_16_0_False_shift when others;
  -- node of type 'mux' in stage 8 with id 26 and associated fundamentals [[1], [1], [62]]
  c_26_0_0_False_resize <= resize(c_0, 22);
  c_26_0_0_False_shift <= shift_left(c_26_0_0_False_resize, 0);
  c_26_11_1_False_resize <= c_11(21 downto 0);
  c_26_11_1_False_shift <= shift_left(c_26_11_1_False_resize, 1);
  with config_select_8 select c_26_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_26_sel select c_26 <=
    c_26_0_0_False_shift when "0",
    c_26_11_1_False_shift when others;
  -- node of type 'add_sub' in stage 9 with id 27 and associated fundamentals [[179], [235], [187]]
  with config_select_9 select c_27_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_27_sub_sel,
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  c_27 <= c_27_oshift(23 downto 0);
  -- node of type 'mux' in stage 10 with id 28 and associated fundamentals [[142], [235], [216]]
  c_28_8_1_False_resize <= resize(c_8, 24);
  c_28_8_1_False_shift <= shift_left(c_28_8_1_False_resize, 1);
  c_28_27_0_False_resize <= c_27;
  c_28_27_0_False_shift <= shift_left(c_28_27_0_False_resize, 0);
  c_28_8_3_False_resize <= resize(c_8, 24);
  c_28_8_3_False_shift <= shift_left(c_28_8_3_False_resize, 3);
  with config_select_10 select c_28_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_28_sel select c_28 <=
    c_28_8_1_False_shift when "00",
    c_28_27_0_False_shift when "01",
    c_28_8_3_False_shift when others;
  -- node of type 'output' in stage 10 with id 29 and associated fundamentals [[142], [235], [216]]
  c_29_resize <= c_28;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'mux' in stage 10 with id 30 and associated fundamentals [[173], [204], [2]]
  c_30_11_0_False_resize <= c_11;
  c_30_11_0_False_shift <= shift_left(c_30_11_0_False_resize, 0);
  c_30_24_0_False_resize <= c_24;
  c_30_24_0_False_shift <= shift_left(c_30_24_0_False_resize, 0);
  c_30_0_1_False_resize <= resize(c_0, 24);
  c_30_0_1_False_shift <= shift_left(c_30_0_1_False_resize, 1);
  with config_select_10 select c_30_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  with c_30_sel select c_30 <=
    c_30_11_0_False_shift when "00",
    c_30_24_0_False_shift when "01",
    c_30_0_1_False_shift when others;
  -- node of type 'output' in stage 10 with id 31 and associated fundamentals [[173], [204], [2]]
  c_31_resize <= c_30;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'mux' in stage 8 with id 32 and associated fundamentals [[183], [221], [124]]
  c_32_19_0_False_resize <= c_19;
  c_32_19_0_False_shift <= shift_left(c_32_19_0_False_resize, 0);
  c_32_11_2_False_resize <= c_11;
  c_32_11_2_False_shift <= shift_left(c_32_11_2_False_resize, 2);
  with config_select_8 select c_32_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  with c_32_sel select c_32 <=
    c_32_19_0_False_shift when "0",
    c_32_11_2_False_shift when others;
  -- node of type 'output' in stage 8 with id 33 and associated fundamentals [[183], [221], [124]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 8 with id 34 and associated fundamentals [[38], [234], [143]]
  c_34_19_0_False_resize <= c_19;
  c_34_19_0_False_shift <= shift_left(c_34_19_0_False_resize, 0);
  c_34_16_1_False_resize <= c_16;
  c_34_16_1_False_shift <= shift_left(c_34_16_1_False_resize, 1);
  c_34_21_1_False_resize <= resize(c_21, 24);
  c_34_21_1_False_shift <= shift_left(c_34_21_1_False_resize, 1);
  with config_select_8 select c_34_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_34_sel select c_34 <=
    c_34_19_0_False_shift when "00",
    c_34_16_1_False_shift when "01",
    c_34_21_1_False_shift when others;
  -- node of type 'output' in stage 8 with id 35 and associated fundamentals [[38], [234], [143]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'mux' in stage 8 with id 36 and associated fundamentals [[27], [110], [31]]
  c_36_4_0_False_resize <= c_4(22 downto 0);
  c_36_4_0_False_shift <= shift_left(c_36_4_0_False_resize, 0);
  c_36_8_1_False_resize <= c_8;
  c_36_8_1_False_shift <= shift_left(c_36_8_1_False_resize, 1);
  c_36_11_0_False_resize <= c_11(22 downto 0);
  c_36_11_0_False_shift <= shift_left(c_36_11_0_False_resize, 0);
  with config_select_8 select c_36_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  with c_36_sel select c_36 <=
    c_36_4_0_False_shift when "00",
    c_36_8_1_False_shift when "01",
    c_36_11_0_False_shift when others;
  -- node of type 'output' in stage 8 with id 37 and associated fundamentals [[54], [220], [62]]
  c_37_resize <= resize(c_36, 24);
  c_37 <= shift_left(c_37_resize, 1);
  -- node of type 'mux' in stage 8 with id 38 and associated fundamentals [[89], [144], [192]]
  c_38_1_4_False_resize <= resize(c_1, 24);
  c_38_1_4_False_shift <= shift_left(c_38_1_4_False_resize, 4);
  c_38_21_3_False_resize <= resize(c_21, 24);
  c_38_21_3_False_shift <= shift_left(c_38_21_3_False_resize, 3);
  c_38_16_0_False_resize <= c_16;
  c_38_16_0_False_shift <= shift_left(c_38_16_0_False_resize, 0);
  with config_select_8 select c_38_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  with c_38_sel select c_38 <=
    c_38_1_4_False_shift when "00",
    c_38_21_3_False_shift when "01",
    c_38_16_0_False_shift when others;
  -- node of type 'output' in stage 8 with id 39 and associated fundamentals [[89], [144], [192]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 9 with id 40 and associated fundamentals [[167], [217], [85]]
  c_40_resize <= c_14;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'mux' in stage 8 with id 41 and associated fundamentals [[-209], [-45], [-30]]
  c_41_6_1_False_resize <= resize(c_6, 24);
  c_41_6_1_False_shift <= shift_left(c_41_6_1_False_resize, 1);
  c_41_21_0_False_resize <= resize(c_21, 24);
  c_41_21_0_False_shift <= shift_left(c_41_21_0_False_resize, 0);
  c_41_11_0_False_resize <= c_11;
  c_41_11_0_False_shift <= shift_left(c_41_11_0_False_resize, 0);
  with config_select_8 select c_41_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  with c_41_sel select c_41 <=
    c_41_6_1_False_shift when "00",
    c_41_21_0_False_shift when "01",
    c_41_11_0_False_shift when others;
  -- node of type 'output' in stage 8 with id 42 and associated fundamentals [[209], [45], [30]]
  c_42_resize <= c_41;
  c_42 <= -shift_left(c_42_resize, 0);
  -- node of type 'mux' in stage 10 with id 43 and associated fundamentals [[179], [9], [187]]
  c_43_27_0_False_resize <= c_27;
  c_43_27_0_False_shift <= shift_left(c_43_27_0_False_resize, 0);
  c_43_1_0_False_resize <= resize(c_1, 24);
  c_43_1_0_False_shift <= shift_left(c_43_1_0_False_resize, 0);
  with config_select_10 select c_43_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  with c_43_sel select c_43 <=
    c_43_27_0_False_shift when "0",
    c_43_1_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 44 and associated fundamentals [[179], [9], [187]]
  c_44_resize <= c_43;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'mux' in stage 10 with id 45 and associated fundamentals [[48], [127], [137]]
  c_45_6_2_False_resize <= resize(c_6, 24);
  c_45_6_2_False_shift <= shift_left(c_45_6_2_False_resize, 2);
  c_45_24_0_False_resize <= c_24;
  c_45_24_0_False_shift <= shift_left(c_45_24_0_False_resize, 0);
  with config_select_10 select c_45_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  with c_45_sel select c_45 <=
    c_45_6_2_False_shift when "0",
    c_45_24_0_False_shift when others;
  -- node of type 'output' in stage 10 with id 46 and associated fundamentals [[48], [127], [137]]
  c_46_resize <= c_45;
  c_46 <= shift_left(c_46_resize, 0);
end architecture;

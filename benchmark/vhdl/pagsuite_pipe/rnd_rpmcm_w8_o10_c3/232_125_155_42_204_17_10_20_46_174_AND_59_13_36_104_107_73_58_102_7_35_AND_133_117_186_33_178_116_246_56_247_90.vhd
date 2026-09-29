library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(22 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(22 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(18 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_i0_resize: signed(19 downto 0);
  signal c_4_i1_resize: signed(19 downto 0);
  signal c_4_i0_shift: signed(19 downto 0);
  signal c_4_i1_shift: signed(19 downto 0);
  signal c_4_arith: signed(19 downto 0);
  signal c_4_oshift: signed(19 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(19 downto 0);
  signal c_5_i0_resize: signed(19 downto 0);
  signal c_5_i1_resize: signed(19 downto 0);
  signal c_5_i0_shift: signed(19 downto 0);
  signal c_5_i1_shift: signed(19 downto 0);
  signal c_5_arith: signed(19 downto 0);
  signal c_5_oshift: signed(19 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(20 downto 0);
  signal c_6_5_2_False_resize: signed(20 downto 0);
  signal c_6_5_2_False_shift: signed(20 downto 0);
  signal c_6_2_0_False_resize: signed(20 downto 0);
  signal c_6_2_0_False_shift: signed(20 downto 0);
  signal c_6_3_1_False_resize: signed(20 downto 0);
  signal c_6_3_1_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_7_2_0_False_resize: signed(17 downto 0);
  signal c_7_2_0_False_shift: signed(17 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_9_3_0_False_resize: signed(18 downto 0);
  signal c_9_3_0_False_shift: signed(18 downto 0);
  signal c_9_2_0_False_resize: signed(18 downto 0);
  signal c_9_2_0_False_shift: signed(18 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(17 downto 0);
  signal c_10_1_0_False_resize: signed(17 downto 0);
  signal c_10_1_0_False_shift: signed(17 downto 0);
  signal c_10_1_2_False_resize: signed(17 downto 0);
  signal c_10_1_2_False_shift: signed(17 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(22 downto 0);
  signal c_12_1_0_False_resize: signed(22 downto 0);
  signal c_12_1_0_False_shift: signed(22 downto 0);
  signal c_12_1_7_False_resize: signed(22 downto 0);
  signal c_12_1_7_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_5_1_False_resize: signed(20 downto 0);
  signal c_13_5_1_False_shift: signed(20 downto 0);
  signal c_13_2_0_False_resize: signed(20 downto 0);
  signal c_13_2_0_False_shift: signed(20 downto 0);
  signal c_13_1_2_False_resize: signed(20 downto 0);
  signal c_13_1_2_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_i0_resize: signed(22 downto 0);
  signal c_14_i1_resize: signed(22 downto 0);
  signal c_14_i0_shift: signed(22 downto 0);
  signal c_14_i1_shift: signed(22 downto 0);
  signal c_14_arith: signed(22 downto 0);
  signal c_14_oshift: signed(22 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(21 downto 0);
  signal c_15_1_4_False_resize: signed(21 downto 0);
  signal c_15_1_4_False_shift: signed(21 downto 0);
  signal c_15_1_0_False_resize: signed(21 downto 0);
  signal c_15_1_0_False_shift: signed(21 downto 0);
  signal c_15_2_4_False_resize: signed(21 downto 0);
  signal c_15_2_4_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_1_3_False_resize: signed(21 downto 0);
  signal c_16_1_3_False_shift: signed(21 downto 0);
  signal c_16_3_3_False_resize: signed(21 downto 0);
  signal c_16_3_3_False_shift: signed(21 downto 0);
  signal c_16_1_0_False_resize: signed(21 downto 0);
  signal c_16_1_0_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_i0_resize: signed(22 downto 0);
  signal c_17_i1_resize: signed(22 downto 0);
  signal c_17_i0_shift: signed(22 downto 0);
  signal c_17_i1_shift: signed(22 downto 0);
  signal c_17_arith: signed(22 downto 0);
  signal c_17_oshift: signed(22 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_18_4_0_False_resize: signed(21 downto 0);
  signal c_18_4_0_False_shift: signed(21 downto 0);
  signal c_18_2_4_False_resize: signed(21 downto 0);
  signal c_18_2_4_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_1_0_False_resize: signed(22 downto 0);
  signal c_19_1_0_False_shift: signed(22 downto 0);
  signal c_19_1_7_False_resize: signed(22 downto 0);
  signal c_19_1_7_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel_left: std_logic;
  signal c_20_sub_sel_right: std_logic;
  signal c_21: signed(18 downto 0);
  signal c_21_2_0_False_resize: signed(18 downto 0);
  signal c_21_2_0_False_shift: signed(18 downto 0);
  signal c_21_1_0_False_resize: signed(18 downto 0);
  signal c_21_1_0_False_shift: signed(18 downto 0);
  signal c_21_2_1_False_resize: signed(18 downto 0);
  signal c_21_2_1_False_shift: signed(18 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_22_4_1_False_resize: signed(20 downto 0);
  signal c_22_4_1_False_shift: signed(20 downto 0);
  signal c_22_2_1_False_resize: signed(20 downto 0);
  signal c_22_2_1_False_shift: signed(20 downto 0);
  signal c_22_2_0_False_resize: signed(20 downto 0);
  signal c_22_2_0_False_shift: signed(20 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(20 downto 0);
  signal c_24_1_5_False_resize: signed(20 downto 0);
  signal c_24_1_5_False_shift: signed(20 downto 0);
  signal c_24_5_2_False_resize: signed(20 downto 0);
  signal c_24_5_2_False_shift: signed(20 downto 0);
  signal c_24_2_0_False_resize: signed(20 downto 0);
  signal c_24_2_0_False_shift: signed(20 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(18 downto 0);
  signal c_25_3_0_False_resize: signed(18 downto 0);
  signal c_25_3_0_False_shift: signed(18 downto 0);
  signal c_25_1_0_False_resize: signed(18 downto 0);
  signal c_25_1_0_False_shift: signed(18 downto 0);
  signal c_25_2_0_False_resize: signed(18 downto 0);
  signal c_25_2_0_False_shift: signed(18 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_i0_resize: signed(22 downto 0);
  signal c_26_i1_resize: signed(22 downto 0);
  signal c_26_i0_shift: signed(22 downto 0);
  signal c_26_i1_shift: signed(22 downto 0);
  signal c_26_arith: signed(22 downto 0);
  signal c_26_oshift: signed(22 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(21 downto 0);
  signal c_27_2_4_False_resize: signed(21 downto 0);
  signal c_27_2_4_False_shift: signed(21 downto 0);
  signal c_27_3_3_False_resize: signed(21 downto 0);
  signal c_27_3_3_False_shift: signed(21 downto 0);
  signal c_27_5_0_False_resize: signed(21 downto 0);
  signal c_27_5_0_False_shift: signed(21 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(18 downto 0);
  signal c_28_3_0_False_resize: signed(18 downto 0);
  signal c_28_3_0_False_shift: signed(18 downto 0);
  signal c_28_2_1_False_resize: signed(18 downto 0);
  signal c_28_2_1_False_shift: signed(18 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(17 downto 0);
  signal c_30_1_2_False_resize: signed(17 downto 0);
  signal c_30_1_2_False_shift: signed(17 downto 0);
  signal c_30_1_0_False_resize: signed(17 downto 0);
  signal c_30_1_0_False_shift: signed(17 downto 0);
  signal c_30_1_1_False_resize: signed(17 downto 0);
  signal c_30_1_1_False_shift: signed(17 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(20 downto 0);
  signal c_31_2_3_False_resize: signed(20 downto 0);
  signal c_31_2_3_False_shift: signed(20 downto 0);
  signal c_31_3_0_False_resize: signed(20 downto 0);
  signal c_31_3_0_False_shift: signed(20 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_i0_resize: signed(23 downto 0);
  signal c_32_i1_resize: signed(23 downto 0);
  signal c_32_i0_shift: signed(23 downto 0);
  signal c_32_i1_shift: signed(23 downto 0);
  signal c_32_arith: signed(23 downto 0);
  signal c_32_oshift: signed(23 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(21 downto 0);
  signal c_33_2_1_False_resize: signed(21 downto 0);
  signal c_33_2_1_False_shift: signed(21 downto 0);
  signal c_33_5_0_False_resize: signed(21 downto 0);
  signal c_33_5_0_False_shift: signed(21 downto 0);
  signal c_33_4_3_False_resize: signed(21 downto 0);
  signal c_33_4_3_False_shift: signed(21 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_2_6_False_resize: signed(23 downto 0);
  signal c_34_2_6_False_shift: signed(23 downto 0);
  signal c_34_3_0_False_resize: signed(23 downto 0);
  signal c_34_3_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_i0_resize: signed(23 downto 0);
  signal c_35_i1_resize: signed(23 downto 0);
  signal c_35_i0_shift: signed(23 downto 0);
  signal c_35_i1_shift: signed(23 downto 0);
  signal c_35_arith: signed(23 downto 0);
  signal c_35_oshift: signed(23 downto 0);
  signal c_35_sub_sel_left: std_logic;
  signal c_35_sub_sel_right: std_logic;
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_37_resize: signed(22 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_39_resize: signed(22 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_resize: signed(22 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_43_resize: signed(22 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
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
  -- output node 1 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 2 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 3 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 4 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 5 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 6 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 7 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 8 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 9 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_45);
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
  -- node of type 'add' in stage 1 with id 3 and associated fundamentals [[5], [5], [5]]
  inst_adder_node_3: entity work.adder_node
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 4 and associated fundamentals [[9], [7], [9]]
  with config_select_1 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
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
      sub_i => c_4_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 5 and associated fundamentals [[9], [9], [7]]
  with config_select_1 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
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
      sub_i => c_5_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[10], [3], [28]]
  c_6_5_2_False_resize <= resize(c_5, 21);
  c_6_5_2_False_shift <= shift_left(c_6_5_2_False_resize, 2);
  c_6_2_0_False_resize <= resize(c_2, 21);
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  c_6_3_1_False_resize <= resize(c_3, 21);
  c_6_3_1_False_shift <= shift_left(c_6_3_1_False_resize, 1);
  with config_select_2 select c_6_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_5_2_False_shift;
        when "01" => c_6 <= c_6_2_0_False_shift;
        when others => c_6 <= c_6_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[0], [3], [0]]
  c_7_2_0_False_resize <= c_2;
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_2_0_False_shift;
        when others => c_7 <= to_signed(0, 18);
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 8 and associated fundamentals [[20], [102], [56]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 18,
      w_o => 23,
      s_x_i => 1,
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
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[5], [3], [5]]
  c_9_3_0_False_resize <= c_3;
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  c_9_2_0_False_resize <= resize(c_2, 19);
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_3_0_False_shift;
        when others => c_9 <= c_9_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[0], [1], [4]]
  c_10_1_0_False_resize <= resize(c_1, 18);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  c_10_1_2_False_resize <= resize(c_1, 18);
  c_10_1_2_False_shift <= shift_left(c_10_1_2_False_resize, 2);
  with config_select_2 select c_10_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_1_0_False_shift;
        when "01" => c_10 <= c_10_1_2_False_shift;
        when others => c_10 <= to_signed(0, 18);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 11 and associated fundamentals [[10], [58], [246]]
  with config_select_3 select c_11_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 6,
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
      x_i => c_10,
      y_i => c_9,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[1], [1], [128]]
  c_12_1_0_False_resize <= resize(c_1, 23);
  c_12_1_0_False_shift <= shift_left(c_12_1_0_False_resize, 0);
  c_12_1_7_False_resize <= resize(c_1, 23);
  c_12_1_7_False_shift <= shift_left(c_12_1_7_False_resize, 7);
  with config_select_2 select c_12_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_1_0_False_shift;
        when others => c_12 <= c_12_1_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[4], [18], [3]]
  c_13_5_1_False_resize <= resize(c_5, 21);
  c_13_5_1_False_shift <= shift_left(c_13_5_1_False_resize, 1);
  c_13_2_0_False_resize <= resize(c_2, 21);
  c_13_2_0_False_shift <= shift_left(c_13_2_0_False_resize, 0);
  c_13_1_2_False_resize <= resize(c_1, 21);
  c_13_1_2_False_shift <= shift_left(c_13_1_2_False_resize, 2);
  with config_select_2 select c_13_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_5_1_False_shift;
        when "01" => c_13 <= c_13_2_0_False_shift;
        when others => c_13 <= c_13_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 14 and associated fundamentals [[17], [73], [116]]
  with config_select_3 select c_14_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 23,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[1], [48], [16]]
  c_15_1_4_False_resize <= resize(c_1, 22);
  c_15_1_4_False_shift <= shift_left(c_15_1_4_False_resize, 4);
  c_15_1_0_False_resize <= resize(c_1, 22);
  c_15_1_0_False_shift <= shift_left(c_15_1_0_False_resize, 0);
  c_15_2_4_False_resize <= resize(c_2, 22);
  c_15_2_4_False_shift <= shift_left(c_15_2_4_False_resize, 4);
  with config_select_2 select c_15_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_1_4_False_shift;
        when "01" => c_15 <= c_15_1_0_False_shift;
        when others => c_15 <= c_15_2_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[40], [8], [1]]
  c_16_1_3_False_resize <= resize(c_1, 22);
  c_16_1_3_False_shift <= shift_left(c_16_1_3_False_resize, 3);
  c_16_3_3_False_resize <= resize(c_3, 22);
  c_16_3_3_False_shift <= shift_left(c_16_3_3_False_resize, 3);
  c_16_1_0_False_resize <= resize(c_1, 22);
  c_16_1_0_False_shift <= shift_left(c_16_1_0_False_resize, 0);
  with config_select_2 select c_16_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_1_3_False_shift;
        when "01" => c_16 <= c_16_3_3_False_shift;
        when others => c_16 <= c_16_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 17 and associated fundamentals [[42], [104], [33]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 23,
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
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[48], [7], [9]]
  c_18_4_0_False_resize <= resize(c_4, 22);
  c_18_4_0_False_shift <= shift_left(c_18_4_0_False_resize, 0);
  c_18_2_4_False_resize <= resize(c_2, 22);
  c_18_2_4_False_shift <= shift_left(c_18_2_4_False_resize, 4);
  with config_select_2 select c_18_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_4_0_False_shift;
        when others => c_18 <= c_18_2_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 19 and associated fundamentals [[1], [0], [128]]
  c_19_1_0_False_resize <= resize(c_1, 23);
  c_19_1_0_False_shift <= shift_left(c_19_1_0_False_resize, 0);
  c_19_1_7_False_resize <= resize(c_1, 23);
  c_19_1_7_False_shift <= shift_left(c_19_1_7_False_resize, 7);
  with config_select_2 select c_19_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_1_0_False_shift;
        when "01" => c_19 <= c_19_1_7_False_shift;
        when others => c_19 <= to_signed(0, 23);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 20 and associated fundamentals [[46], [7], [247]]
  with config_select_3 select c_20_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  with config_select_3 select c_20_sub_sel_right <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
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
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_20_sub_sel_left,
      sub_b_i => c_20_sub_sel_right,
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
  -- node of type 'mux' in stage 2 with id 21 and associated fundamentals [[6], [1], [3]]
  c_21_2_0_False_resize <= resize(c_2, 19);
  c_21_2_0_False_shift <= shift_left(c_21_2_0_False_resize, 0);
  c_21_1_0_False_resize <= resize(c_1, 19);
  c_21_1_0_False_shift <= shift_left(c_21_1_0_False_resize, 0);
  c_21_2_1_False_resize <= resize(c_2, 19);
  c_21_2_1_False_shift <= shift_left(c_21_2_1_False_resize, 1);
  with config_select_2 select c_21_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_2_0_False_shift;
        when "01" => c_21 <= c_21_1_0_False_shift;
        when others => c_21 <= c_21_2_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 22 and associated fundamentals [[18], [3], [6]]
  c_22_4_1_False_resize <= resize(c_4, 21);
  c_22_4_1_False_shift <= shift_left(c_22_4_1_False_resize, 1);
  c_22_2_1_False_resize <= resize(c_2, 21);
  c_22_2_1_False_shift <= shift_left(c_22_2_1_False_resize, 1);
  c_22_2_0_False_resize <= resize(c_2, 21);
  c_22_2_0_False_shift <= shift_left(c_22_2_0_False_resize, 0);
  with config_select_2 select c_22_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_4_1_False_shift;
        when "01" => c_22 <= c_22_2_1_False_shift;
        when others => c_22 <= c_22_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 23 and associated fundamentals [[174], [35], [90]]
  with config_select_3 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
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
  -- node of type 'mux' in stage 2 with id 24 and associated fundamentals [[32], [3], [28]]
  c_24_1_5_False_resize <= resize(c_1, 21);
  c_24_1_5_False_shift <= shift_left(c_24_1_5_False_resize, 5);
  c_24_5_2_False_resize <= resize(c_5, 21);
  c_24_5_2_False_shift <= shift_left(c_24_5_2_False_resize, 2);
  c_24_2_0_False_resize <= resize(c_2, 21);
  c_24_2_0_False_shift <= shift_left(c_24_2_0_False_resize, 0);
  with config_select_2 select c_24_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_1_5_False_shift;
        when "01" => c_24 <= c_24_5_2_False_shift;
        when others => c_24 <= c_24_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 25 and associated fundamentals [[3], [1], [5]]
  c_25_3_0_False_resize <= c_3;
  c_25_3_0_False_shift <= shift_left(c_25_3_0_False_resize, 0);
  c_25_1_0_False_resize <= resize(c_1, 19);
  c_25_1_0_False_shift <= shift_left(c_25_1_0_False_resize, 0);
  c_25_2_0_False_resize <= resize(c_2, 19);
  c_25_2_0_False_shift <= shift_left(c_25_2_0_False_resize, 0);
  with config_select_2 select c_25_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_3_0_False_shift;
        when "01" => c_25 <= c_25_1_0_False_shift;
        when others => c_25 <= c_25_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 26 and associated fundamentals [[125], [13], [117]]
  with config_select_3 select c_26_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 27 and associated fundamentals [[40], [9], [48]]
  c_27_2_4_False_resize <= resize(c_2, 22);
  c_27_2_4_False_shift <= shift_left(c_27_2_4_False_resize, 4);
  c_27_3_3_False_resize <= resize(c_3, 22);
  c_27_3_3_False_shift <= shift_left(c_27_3_3_False_resize, 3);
  c_27_5_0_False_resize <= resize(c_5, 22);
  c_27_5_0_False_shift <= shift_left(c_27_5_0_False_resize, 0);
  with config_select_2 select c_27_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_2_4_False_shift;
        when "01" => c_27 <= c_27_3_3_False_shift;
        when others => c_27 <= c_27_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 28 and associated fundamentals [[5], [0], [6]]
  c_28_3_0_False_resize <= c_3;
  c_28_3_0_False_shift <= shift_left(c_28_3_0_False_resize, 0);
  c_28_2_1_False_resize <= resize(c_2, 19);
  c_28_2_1_False_shift <= shift_left(c_28_2_1_False_resize, 1);
  with config_select_2 select c_28_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_3_0_False_shift;
        when "01" => c_28 <= c_28_2_1_False_shift;
        when others => c_28 <= to_signed(0, 19);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 29 and associated fundamentals [[155], [36], [186]]
  with config_select_3 select c_29_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
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
  -- node of type 'mux' in stage 2 with id 30 and associated fundamentals [[4], [1], [2]]
  c_30_1_2_False_resize <= resize(c_1, 18);
  c_30_1_2_False_shift <= shift_left(c_30_1_2_False_resize, 2);
  c_30_1_0_False_resize <= resize(c_1, 18);
  c_30_1_0_False_shift <= shift_left(c_30_1_0_False_resize, 0);
  c_30_1_1_False_resize <= resize(c_1, 18);
  c_30_1_1_False_shift <= shift_left(c_30_1_1_False_resize, 1);
  with config_select_2 select c_30_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_1_2_False_shift;
        when "01" => c_30 <= c_30_1_0_False_shift;
        when others => c_30 <= c_30_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 31 and associated fundamentals [[24], [5], [5]]
  c_31_2_3_False_resize <= resize(c_2, 21);
  c_31_2_3_False_shift <= shift_left(c_31_2_3_False_resize, 3);
  c_31_3_0_False_resize <= resize(c_3, 21);
  c_31_3_0_False_shift <= shift_left(c_31_3_0_False_resize, 0);
  with config_select_2 select c_31_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_2_3_False_shift;
        when others => c_31 <= c_31_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 32 and associated fundamentals [[232], [59], [133]]
  with config_select_3 select c_32_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 21,
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
  -- node of type 'mux' in stage 2 with id 33 and associated fundamentals [[6], [56], [7]]
  c_33_2_1_False_resize <= resize(c_2, 22);
  c_33_2_1_False_shift <= shift_left(c_33_2_1_False_resize, 1);
  c_33_5_0_False_resize <= resize(c_5, 22);
  c_33_5_0_False_shift <= shift_left(c_33_5_0_False_resize, 0);
  c_33_4_3_False_resize <= resize(c_4, 22);
  c_33_4_3_False_shift <= shift_left(c_33_4_3_False_resize, 3);
  with config_select_2 select c_33_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_2_1_False_shift;
        when "01" => c_33 <= c_33_5_0_False_shift;
        when others => c_33 <= c_33_4_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 34 and associated fundamentals [[192], [5], [192]]
  c_34_2_6_False_resize <= resize(c_2, 24);
  c_34_2_6_False_shift <= shift_left(c_34_2_6_False_resize, 6);
  c_34_3_0_False_resize <= resize(c_3, 24);
  c_34_3_0_False_shift <= shift_left(c_34_3_0_False_resize, 0);
  with config_select_2 select c_34_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_2_6_False_shift;
        when others => c_34 <= c_34_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 35 and associated fundamentals [[204], [107], [178]]
  with config_select_3 select c_35_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  with config_select_3 select c_35_sub_sel_right <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
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
      sub_a_i => c_35_sub_sel_left,
      sub_b_i => c_35_sub_sel_right,
      x_i => c_33,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 36 and associated fundamentals [[232], [59], [133]]
  c_36_resize <= c_32;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'output' in stage 3 with id 37 and associated fundamentals [[125], [13], [117]]
  c_37_resize <= c_26;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'output' in stage 3 with id 38 and associated fundamentals [[155], [36], [186]]
  c_38_resize <= c_29;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'output' in stage 3 with id 39 and associated fundamentals [[42], [104], [33]]
  c_39_resize <= c_17;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 3 with id 40 and associated fundamentals [[204], [107], [178]]
  c_40_resize <= c_35;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 3 with id 41 and associated fundamentals [[17], [73], [116]]
  c_41_resize <= c_14;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 3 with id 42 and associated fundamentals [[10], [58], [246]]
  c_42_resize <= c_11;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 3 with id 43 and associated fundamentals [[20], [102], [56]]
  c_43_resize <= c_8;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 3 with id 44 and associated fundamentals [[46], [7], [247]]
  c_44_resize <= c_20;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 3 with id 45 and associated fundamentals [[174], [35], [90]]
  c_45_resize <= c_23;
  c_45 <= shift_left(c_45_resize, 0);
end architecture;

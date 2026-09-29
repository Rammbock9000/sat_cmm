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
    y_7: out std_logic_vector(23 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_i0_resize: signed(17 downto 0);
  signal c_3_i1_resize: signed(17 downto 0);
  signal c_3_i0_shift: signed(17 downto 0);
  signal c_3_i1_shift: signed(17 downto 0);
  signal c_3_arith: signed(17 downto 0);
  signal c_3_oshift: signed(17 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_i0_resize: signed(18 downto 0);
  signal c_4_i1_resize: signed(18 downto 0);
  signal c_4_i0_shift: signed(18 downto 0);
  signal c_4_i1_shift: signed(18 downto 0);
  signal c_4_arith: signed(18 downto 0);
  signal c_4_oshift: signed(18 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_i0_resize: signed(19 downto 0);
  signal c_5_i1_resize: signed(19 downto 0);
  signal c_5_i0_shift: signed(19 downto 0);
  signal c_5_i1_shift: signed(19 downto 0);
  signal c_5_arith: signed(19 downto 0);
  signal c_5_oshift: signed(19 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_i0_resize: signed(24 downto 0);
  signal c_7_i1_resize: signed(24 downto 0);
  signal c_7_i0_shift: signed(24 downto 0);
  signal c_7_i1_shift: signed(24 downto 0);
  signal c_7_arith: signed(24 downto 0);
  signal c_7_oshift: signed(24 downto 0);
  signal c_8: signed(24 downto 0);
  signal c_8_i0_resize: signed(24 downto 0);
  signal c_8_i1_resize: signed(24 downto 0);
  signal c_8_i0_shift: signed(24 downto 0);
  signal c_8_i1_shift: signed(24 downto 0);
  signal c_8_arith: signed(24 downto 0);
  signal c_8_oshift: signed(24 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_3_0_False_resize: signed(21 downto 0);
  signal c_9_3_0_False_shift: signed(21 downto 0);
  signal c_9_4_3_False_resize: signed(21 downto 0);
  signal c_9_4_3_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_4_4_False_resize: signed(24 downto 0);
  signal c_10_4_4_False_shift: signed(24 downto 0);
  signal c_10_8_0_False_resize: signed(24 downto 0);
  signal c_10_8_0_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_3_5_False_resize: signed(23 downto 0);
  signal c_12_3_5_False_shift: signed(23 downto 0);
  signal c_12_6_0_False_resize: signed(23 downto 0);
  signal c_12_6_0_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_13_5_0_False_resize: signed(19 downto 0);
  signal c_13_5_0_False_shift: signed(19 downto 0);
  signal c_13_4_1_False_resize: signed(19 downto 0);
  signal c_13_4_1_False_shift: signed(19 downto 0);
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
  signal c_15_4_1_False_resize: signed(19 downto 0);
  signal c_15_4_1_False_shift: signed(19 downto 0);
  signal c_15_3_0_False_resize: signed(19 downto 0);
  signal c_15_3_0_False_shift: signed(19 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_16_3_3_False_resize: signed(20 downto 0);
  signal c_16_3_3_False_shift: signed(20 downto 0);
  signal c_16_5_0_False_resize: signed(20 downto 0);
  signal c_16_5_0_False_shift: signed(20 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(24 downto 0);
  signal c_18_3_4_False_resize: signed(24 downto 0);
  signal c_18_3_4_False_shift: signed(24 downto 0);
  signal c_18_7_0_False_resize: signed(24 downto 0);
  signal c_18_7_0_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_4_0_False_resize: signed(24 downto 0);
  signal c_19_4_0_False_shift: signed(24 downto 0);
  signal c_19_7_0_False_resize: signed(24 downto 0);
  signal c_19_7_0_False_shift: signed(24 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(24 downto 0);
  signal c_21_3_7_False_resize: signed(24 downto 0);
  signal c_21_3_7_False_shift: signed(24 downto 0);
  signal c_21_3_0_False_resize: signed(24 downto 0);
  signal c_21_3_0_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_5_0_False_resize: signed(24 downto 0);
  signal c_22_5_0_False_shift: signed(24 downto 0);
  signal c_22_7_0_False_resize: signed(24 downto 0);
  signal c_22_7_0_False_shift: signed(24 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(24 downto 0);
  signal c_24_5_4_False_resize: signed(24 downto 0);
  signal c_24_5_4_False_shift: signed(24 downto 0);
  signal c_24_8_0_False_resize: signed(24 downto 0);
  signal c_24_8_0_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(18 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_i0_resize: signed(25 downto 0);
  signal c_26_i1_resize: signed(25 downto 0);
  signal c_26_i0_shift: signed(25 downto 0);
  signal c_26_i1_shift: signed(25 downto 0);
  signal c_26_arith: signed(25 downto 0);
  signal c_26_oshift: signed(25 downto 0);
  signal c_27: signed(18 downto 0);
  signal c_27_3_1_False_resize: signed(18 downto 0);
  signal c_27_3_1_False_shift: signed(18 downto 0);
  signal c_27_3_0_False_resize: signed(18 downto 0);
  signal c_27_3_0_False_shift: signed(18 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_6_0_False_resize: signed(23 downto 0);
  signal c_28_6_0_False_shift: signed(23 downto 0);
  signal c_28_4_3_False_resize: signed(23 downto 0);
  signal c_28_4_3_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_i0_resize: signed(25 downto 0);
  signal c_29_i1_resize: signed(25 downto 0);
  signal c_29_i0_shift: signed(25 downto 0);
  signal c_29_i1_shift: signed(25 downto 0);
  signal c_29_arith: signed(25 downto 0);
  signal c_29_oshift: signed(25 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_3_4_False_resize: signed(23 downto 0);
  signal c_30_3_4_False_shift: signed(23 downto 0);
  signal c_30_6_0_False_resize: signed(23 downto 0);
  signal c_30_6_0_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_5_0_False_resize: signed(23 downto 0);
  signal c_31_5_0_False_shift: signed(23 downto 0);
  signal c_31_6_0_False_resize: signed(23 downto 0);
  signal c_31_6_0_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_i0_resize: signed(25 downto 0);
  signal c_32_i1_resize: signed(25 downto 0);
  signal c_32_i0_shift: signed(25 downto 0);
  signal c_32_i1_shift: signed(25 downto 0);
  signal c_32_arith: signed(25 downto 0);
  signal c_32_oshift: signed(25 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(25 downto 0);
  signal c_33_7_1_False_resize: signed(25 downto 0);
  signal c_33_7_1_False_shift: signed(25 downto 0);
  signal c_33_3_0_False_resize: signed(25 downto 0);
  signal c_33_3_0_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(18 downto 0);
  signal c_34_4_0_False_resize: signed(18 downto 0);
  signal c_34_4_0_False_shift: signed(18 downto 0);
  signal c_34_3_0_False_resize: signed(18 downto 0);
  signal c_34_3_0_False_shift: signed(18 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_i0_resize: signed(25 downto 0);
  signal c_35_i1_resize: signed(25 downto 0);
  signal c_35_i0_shift: signed(25 downto 0);
  signal c_35_i1_shift: signed(25 downto 0);
  signal c_35_arith: signed(25 downto 0);
  signal c_35_oshift: signed(25 downto 0);
  signal c_36: signed(19 downto 0);
  signal c_36_5_0_False_resize: signed(19 downto 0);
  signal c_36_5_0_False_shift: signed(19 downto 0);
  signal c_36_3_0_False_resize: signed(19 downto 0);
  signal c_36_3_0_False_shift: signed(19 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(18 downto 0);
  signal c_37_4_0_False_resize: signed(18 downto 0);
  signal c_37_4_0_False_shift: signed(18 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_i0_resize: signed(25 downto 0);
  signal c_38_i1_resize: signed(25 downto 0);
  signal c_38_i0_shift: signed(25 downto 0);
  signal c_38_i1_shift: signed(25 downto 0);
  signal c_38_arith: signed(25 downto 0);
  signal c_38_oshift: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_resize: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_resize: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_resize: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_resize: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_resize: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_resize: signed(25 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
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
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1]]
  c_1 <= c_0 & "";
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[9], [9]]
  inst_adder_node_2: entity work.adder_node
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  c_2 <= c_2_oshift(19 downto 0);
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[3], [3]]
  inst_adder_node_3: entity work.adder_node
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_3_oshift
    );
  c_3 <= c_3_oshift(17 downto 0);
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[5], [5]]
  inst_adder_node_4: entity work.adder_node
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_4_oshift
    );
  c_4 <= c_4_oshift(18 downto 0);
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[11], [11]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 20,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_5_oshift
    );
  c_5 <= c_5_oshift(19 downto 0);
  -- node of type 'sub' in stage 2 with id 6 and associated fundamentals [[135], [135]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
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
      x_i => c_2,
      y_i => c_2,
      z_o => c_6_oshift
    );
  c_6 <= c_6_oshift(23 downto 0);
  -- node of type 'add' in stage 2 with id 7 and associated fundamentals [[257], [257]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 8,
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
      z_o => c_7_oshift
    );
  c_7 <= c_7_oshift(24 downto 0);
  -- node of type 'add' in stage 2 with id 8 and associated fundamentals [[297], [297]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_2,
      y_i => c_2,
      z_o => c_8_oshift
    );
  c_8 <= c_8_oshift(24 downto 0);
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[3], [40]]
  c_9_3_0_False_resize <= resize(c_3, 22);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  c_9_4_3_False_resize <= resize(c_4, 22);
  c_9_4_3_False_shift <= shift_left(c_9_4_3_False_resize, 3);
  with config_select_3 select c_9_sel <= 
    "0" when "0",
    "1" when others;
  with c_9_sel select c_9 <=
    c_9_3_0_False_shift when "0",
    c_9_4_3_False_shift when others;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[80], [297]]
  c_10_4_4_False_resize <= resize(c_4, 25);
  c_10_4_4_False_shift <= shift_left(c_10_4_4_False_resize, 4);
  c_10_8_0_False_resize <= c_8;
  c_10_8_0_False_shift <= shift_left(c_10_8_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "0" when "0",
    "1" when others;
  with c_10_sel select c_10 <=
    c_10_4_4_False_shift when "0",
    c_10_8_0_False_shift when others;
  -- node of type 'sub' in stage 4 with id 11 and associated fundamentals [[16], [983]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  c_11 <= c_11_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[96], [135]]
  c_12_3_5_False_resize <= resize(c_3, 24);
  c_12_3_5_False_shift <= shift_left(c_12_3_5_False_resize, 5);
  c_12_6_0_False_resize <= c_6;
  c_12_6_0_False_shift <= shift_left(c_12_6_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "0",
    "1" when others;
  with c_12_sel select c_12 <=
    c_12_3_5_False_shift when "0",
    c_12_6_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[11], [10]]
  c_13_5_0_False_resize <= c_5;
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  c_13_4_1_False_resize <= resize(c_4, 20);
  c_13_4_1_False_shift <= shift_left(c_13_4_1_False_resize, 1);
  with config_select_3 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  with c_13_sel select c_13 <=
    c_13_5_0_False_shift when "0",
    c_13_4_1_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[140], [95]]
  with config_select_4 select c_14_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  c_14 <= c_14_oshift(23 downto 0);
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[10], [3]]
  c_15_4_1_False_resize <= resize(c_4, 20);
  c_15_4_1_False_shift <= shift_left(c_15_4_1_False_resize, 1);
  c_15_3_0_False_resize <= resize(c_3, 20);
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  with c_15_sel select c_15 <=
    c_15_4_1_False_shift when "0",
    c_15_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[24], [11]]
  c_16_3_3_False_resize <= resize(c_3, 21);
  c_16_3_3_False_shift <= shift_left(c_16_3_3_False_resize, 3);
  c_16_5_0_False_resize <= resize(c_5, 21);
  c_16_5_0_False_shift <= shift_left(c_16_5_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "0" when "0",
    "1" when others;
  with c_16_sel select c_16 <=
    c_16_3_3_False_shift when "0",
    c_16_5_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[592], [214]]
  with config_select_4 select c_17_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 26,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  c_17 <= c_17_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[257], [48]]
  c_18_3_4_False_resize <= resize(c_3, 25);
  c_18_3_4_False_shift <= shift_left(c_18_3_4_False_resize, 4);
  c_18_7_0_False_resize <= c_7;
  c_18_7_0_False_shift <= shift_left(c_18_7_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "0" when "1",
    "1" when others;
  with c_18_sel select c_18 <=
    c_18_3_4_False_shift when "0",
    c_18_7_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[5], [257]]
  c_19_4_0_False_resize <= resize(c_4, 25);
  c_19_4_0_False_shift <= shift_left(c_19_4_0_False_resize, 0);
  c_19_7_0_False_resize <= c_7;
  c_19_7_0_False_shift <= shift_left(c_19_7_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "0" when "0",
    "1" when others;
  with c_19_sel select c_19 <=
    c_19_4_0_False_shift when "0",
    c_19_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[247], [562]]
  with config_select_4 select c_20_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  c_20 <= c_20_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[3], [384]]
  c_21_3_7_False_resize <= resize(c_3, 25);
  c_21_3_7_False_shift <= shift_left(c_21_3_7_False_resize, 7);
  c_21_3_0_False_resize <= resize(c_3, 25);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "0" when "1",
    "1" when others;
  with c_21_sel select c_21 <=
    c_21_3_7_False_shift when "0",
    c_21_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[257], [11]]
  c_22_5_0_False_resize <= resize(c_5, 25);
  c_22_5_0_False_shift <= shift_left(c_22_5_0_False_resize, 0);
  c_22_7_0_False_resize <= c_7;
  c_22_7_0_False_shift <= shift_left(c_22_7_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "0" when "1",
    "1" when others;
  with c_22_sel select c_22 <=
    c_22_5_0_False_shift when "0",
    c_22_7_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 23 and associated fundamentals [[263], [757]]
  with config_select_4 select c_23_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
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
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  c_23 <= c_23_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[176], [297]]
  c_24_5_4_False_resize <= resize(c_5, 25);
  c_24_5_4_False_shift <= shift_left(c_24_5_4_False_resize, 4);
  c_24_8_0_False_resize <= c_8;
  c_24_8_0_False_shift <= shift_left(c_24_8_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "0" when "0",
    "1" when others;
  with c_24_sel select c_24 <=
    c_24_5_4_False_shift when "0",
    c_24_8_0_False_shift when others;
  -- node of type 'register' in stage 3 with id 25 and associated fundamentals [[5], [5]]
  c_25 <= c_4 & "";
  -- node of type 'sub' in stage 4 with id 26 and associated fundamentals [[347], [589]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 19,
      w_o => 26,
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
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  c_26 <= c_26_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[3], [6]]
  c_27_3_1_False_resize <= resize(c_3, 19);
  c_27_3_1_False_shift <= shift_left(c_27_3_1_False_resize, 1);
  c_27_3_0_False_resize <= resize(c_3, 19);
  c_27_3_0_False_shift <= shift_left(c_27_3_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "0" when "1",
    "1" when others;
  with c_27_sel select c_27 <=
    c_27_3_1_False_shift when "0",
    c_27_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[135], [40]]
  c_28_6_0_False_resize <= c_6;
  c_28_6_0_False_shift <= shift_left(c_28_6_0_False_resize, 0);
  c_28_4_3_False_resize <= resize(c_4, 24);
  c_28_4_3_False_shift <= shift_left(c_28_4_3_False_resize, 3);
  with config_select_3 select c_28_sel <= 
    "0" when "0",
    "1" when others;
  with c_28_sel select c_28 <=
    c_28_6_0_False_shift when "0",
    c_28_4_3_False_shift when others;
  -- node of type 'add' in stage 4 with id 29 and associated fundamentals [[519], [808]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 7,
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
  c_29 <= c_29_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[135], [48]]
  c_30_3_4_False_resize <= resize(c_3, 24);
  c_30_3_4_False_shift <= shift_left(c_30_3_4_False_resize, 4);
  c_30_6_0_False_resize <= c_6;
  c_30_6_0_False_shift <= shift_left(c_30_6_0_False_resize, 0);
  with config_select_3 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  with c_30_sel select c_30 <=
    c_30_3_4_False_shift when "0",
    c_30_6_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[11], [135]]
  c_31_5_0_False_resize <= resize(c_5, 24);
  c_31_5_0_False_shift <= shift_left(c_31_5_0_False_resize, 0);
  c_31_6_0_False_resize <= c_6;
  c_31_6_0_False_shift <= shift_left(c_31_6_0_False_resize, 0);
  with config_select_3 select c_31_sel <= 
    "0" when "0",
    "1" when others;
  with c_31_sel select c_31 <=
    c_31_5_0_False_shift when "0",
    c_31_6_0_False_shift when others;
  -- node of type 'add_sub' in stage 4 with id 32 and associated fundamentals [[529], [327]]
  with config_select_4 select c_32_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
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
      sub_i => c_32_sub_sel,
      x_i => c_30,
      y_i => c_31,
      z_o => c_32_oshift
    );
  c_32 <= c_32_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[3], [514]]
  c_33_7_1_False_resize <= resize(c_7, 26);
  c_33_7_1_False_shift <= shift_left(c_33_7_1_False_resize, 1);
  c_33_3_0_False_resize <= resize(c_3, 26);
  c_33_3_0_False_shift <= shift_left(c_33_3_0_False_resize, 0);
  with config_select_3 select c_33_sel <= 
    "0" when "1",
    "1" when others;
  with c_33_sel select c_33 <=
    c_33_7_1_False_shift when "0",
    c_33_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[5], [3]]
  c_34_4_0_False_resize <= c_4;
  c_34_4_0_False_shift <= shift_left(c_34_4_0_False_resize, 0);
  c_34_3_0_False_resize <= resize(c_3, 19);
  c_34_3_0_False_shift <= shift_left(c_34_3_0_False_resize, 0);
  with config_select_3 select c_34_sel <= 
    "0" when "0",
    "1" when others;
  with c_34_sel select c_34 <=
    c_34_4_0_False_shift when "0",
    c_34_3_0_False_shift when others;
  -- node of type 'add' in stage 4 with id 35 and associated fundamentals [[643], [898]]
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 19,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 7,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_33,
      y_i => c_34,
      z_o => c_35_oshift
    );
  c_35 <= c_35_oshift(25 downto 0);
  -- node of type 'mux' in stage 3 with id 36 and associated fundamentals [[11], [3]]
  c_36_5_0_False_resize <= c_5;
  c_36_5_0_False_shift <= shift_left(c_36_5_0_False_resize, 0);
  c_36_3_0_False_resize <= resize(c_3, 20);
  c_36_3_0_False_shift <= shift_left(c_36_3_0_False_resize, 0);
  with config_select_3 select c_36_sel <= 
    "0" when "0",
    "1" when others;
  with c_36_sel select c_36 <=
    c_36_5_0_False_shift when "0",
    c_36_3_0_False_shift when others;
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[5], [0]]
  c_37_4_0_False_resize <= c_4;
  c_37_4_0_False_shift <= shift_left(c_37_4_0_False_resize, 0);
  with config_select_3 select c_37_sel <= 
    "0" when "0",
    "1" when others;
  with c_37_sel select c_37 <=
    c_37_4_0_False_shift when "0",
    to_signed(0, 19) when others;
  -- node of type 'add' in stage 4 with id 38 and associated fundamentals [[651], [3]]
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 7,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_36,
      y_i => c_37,
      z_o => c_38_oshift
    );
  c_38 <= c_38_oshift(25 downto 0);
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[263], [757]]
  c_39_resize <= c_23;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 4 with id 40 and associated fundamentals [[643], [898]]
  c_40_resize <= c_35;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[16], [983]]
  c_41_resize <= c_11;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[519], [808]]
  c_42_resize <= c_29;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[651], [3]]
  c_43_resize <= c_38;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[247], [562]]
  c_44_resize <= c_20;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[592], [214]]
  c_45_resize <= c_17;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[140], [95]]
  c_46_resize <= c_14;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[347], [589]]
  c_47_resize <= c_26;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[529], [327]]
  c_48_resize <= c_32;
  c_48 <= shift_left(c_48_resize, 0);
end architecture;

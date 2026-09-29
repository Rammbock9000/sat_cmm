library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(24 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(24 downto 0);
    y_4: out std_logic_vector(24 downto 0);
    y_5: out std_logic_vector(24 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(25 downto 0);
    y_8: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_1_1_False_resize: signed(22 downto 0);
  signal c_10_1_1_False_shift: signed(22 downto 0);
  signal c_10_3_0_False_resize: signed(22 downto 0);
  signal c_10_3_0_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_1_0_False_resize: signed(22 downto 0);
  signal c_11_1_0_False_shift: signed(22 downto 0);
  signal c_11_3_0_False_resize: signed(22 downto 0);
  signal c_11_3_0_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_2_2_False_resize: signed(22 downto 0);
  signal c_13_2_2_False_shift: signed(22 downto 0);
  signal c_13_3_0_False_resize: signed(22 downto 0);
  signal c_13_3_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_5_7_False_resize: signed(24 downto 0);
  signal c_16_5_7_False_shift: signed(24 downto 0);
  signal c_16_15_0_False_resize: signed(24 downto 0);
  signal c_16_15_0_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_5_5_False_resize: signed(22 downto 0);
  signal c_17_5_5_False_shift: signed(22 downto 0);
  signal c_17_12_0_False_resize: signed(22 downto 0);
  signal c_17_12_0_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_5_6_False_resize: signed(24 downto 0);
  signal c_19_5_6_False_shift: signed(24 downto 0);
  signal c_19_14_0_False_resize: signed(24 downto 0);
  signal c_19_14_0_False_shift: signed(24 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(28 downto 0);
  signal c_20_9_0_False_resize: signed(28 downto 0);
  signal c_20_9_0_False_shift: signed(28 downto 0);
  signal c_20_14_4_False_resize: signed(28 downto 0);
  signal c_20_14_4_False_shift: signed(28 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_i0_resize: signed(28 downto 0);
  signal c_21_i1_resize: signed(28 downto 0);
  signal c_21_i0_shift: signed(28 downto 0);
  signal c_21_i1_shift: signed(28 downto 0);
  signal c_21_arith: signed(28 downto 0);
  signal c_21_oshift: signed(24 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(22 downto 0);
  signal c_22_5_7_False_resize: signed(22 downto 0);
  signal c_22_5_7_False_shift: signed(22 downto 0);
  signal c_22_7_0_False_resize: signed(22 downto 0);
  signal c_22_7_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(16 downto 0);
  signal c_23_5_0_False_resize: signed(16 downto 0);
  signal c_23_5_0_False_shift: signed(16 downto 0);
  signal c_23_5_1_False_resize: signed(16 downto 0);
  signal c_23_5_1_False_shift: signed(16 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_i0_resize: signed(24 downto 0);
  signal c_24_i1_resize: signed(24 downto 0);
  signal c_24_i0_shift: signed(24 downto 0);
  signal c_24_i1_shift: signed(24 downto 0);
  signal c_24_arith: signed(24 downto 0);
  signal c_24_oshift: signed(24 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_9_0_False_resize: signed(22 downto 0);
  signal c_25_9_0_False_shift: signed(22 downto 0);
  signal c_25_7_0_False_resize: signed(22 downto 0);
  signal c_25_7_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_5_0_False_resize: signed(22 downto 0);
  signal c_26_5_0_False_shift: signed(22 downto 0);
  signal c_26_5_7_False_resize: signed(22 downto 0);
  signal c_26_5_7_False_shift: signed(22 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_i0_resize: signed(24 downto 0);
  signal c_27_i1_resize: signed(24 downto 0);
  signal c_27_i0_shift: signed(24 downto 0);
  signal c_27_i1_shift: signed(24 downto 0);
  signal c_27_arith: signed(24 downto 0);
  signal c_27_oshift: signed(24 downto 0);
  signal c_27_sub_sel_left: std_logic;
  signal c_27_sub_sel_right: std_logic;
  signal c_28: signed(17 downto 0);
  signal c_28_5_2_False_resize: signed(17 downto 0);
  signal c_28_5_2_False_shift: signed(17 downto 0);
  signal c_28_5_0_False_resize: signed(17 downto 0);
  signal c_28_5_0_False_shift: signed(17 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_5_5_False_resize: signed(22 downto 0);
  signal c_29_5_5_False_shift: signed(22 downto 0);
  signal c_29_7_0_False_resize: signed(22 downto 0);
  signal c_29_7_0_False_shift: signed(22 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_i0_resize: signed(24 downto 0);
  signal c_30_i1_resize: signed(24 downto 0);
  signal c_30_i0_shift: signed(24 downto 0);
  signal c_30_i1_shift: signed(24 downto 0);
  signal c_30_arith: signed(24 downto 0);
  signal c_30_oshift: signed(24 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_7_0_False_resize: signed(22 downto 0);
  signal c_31_7_0_False_shift: signed(22 downto 0);
  signal c_31_5_1_False_resize: signed(22 downto 0);
  signal c_31_5_1_False_shift: signed(22 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(25 downto 0);
  signal c_33_i1_resize: signed(25 downto 0);
  signal c_33_i0_shift: signed(25 downto 0);
  signal c_33_i1_shift: signed(25 downto 0);
  signal c_33_arith: signed(25 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(15 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_35_9_0_False_resize: signed(24 downto 0);
  signal c_35_9_0_False_shift: signed(24 downto 0);
  signal c_35_15_0_False_resize: signed(24 downto 0);
  signal c_35_15_0_False_shift: signed(24 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_i0_resize: signed(25 downto 0);
  signal c_36_i1_resize: signed(25 downto 0);
  signal c_36_i0_shift: signed(25 downto 0);
  signal c_36_i1_shift: signed(25 downto 0);
  signal c_36_arith: signed(25 downto 0);
  signal c_36_oshift: signed(25 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_9_1_False_resize: signed(23 downto 0);
  signal c_37_9_1_False_shift: signed(23 downto 0);
  signal c_37_7_0_False_resize: signed(23 downto 0);
  signal c_37_7_0_False_shift: signed(23 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_i0_resize: signed(25 downto 0);
  signal c_39_i1_resize: signed(25 downto 0);
  signal c_39_i0_shift: signed(25 downto 0);
  signal c_39_i1_shift: signed(25 downto 0);
  signal c_39_arith: signed(25 downto 0);
  signal c_39_oshift: signed(25 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_40_15_0_False_resize: signed(24 downto 0);
  signal c_40_15_0_False_shift: signed(24 downto 0);
  signal c_40_7_0_False_resize: signed(24 downto 0);
  signal c_40_7_0_False_shift: signed(24 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_41_12_0_False_resize: signed(24 downto 0);
  signal c_41_12_0_False_shift: signed(24 downto 0);
  signal c_41_12_2_False_resize: signed(24 downto 0);
  signal c_41_12_2_False_shift: signed(24 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_i0_resize: signed(25 downto 0);
  signal c_42_i1_resize: signed(25 downto 0);
  signal c_42_i0_shift: signed(25 downto 0);
  signal c_42_i1_shift: signed(25 downto 0);
  signal c_42_arith: signed(25 downto 0);
  signal c_42_oshift: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_9_0_False_resize: signed(25 downto 0);
  signal c_43_9_0_False_shift: signed(25 downto 0);
  signal c_43_9_3_False_resize: signed(25 downto 0);
  signal c_43_9_3_False_shift: signed(25 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_5_4_False_resize: signed(24 downto 0);
  signal c_44_5_4_False_shift: signed(24 downto 0);
  signal c_44_14_0_False_resize: signed(24 downto 0);
  signal c_44_14_0_False_shift: signed(24 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_47_resize: signed(24 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_49_resize: signed(24 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_50_resize: signed(24 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_51_resize: signed(24 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_resize: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_resize: signed(25 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_54_resize: signed(24 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
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
  -- output node 0 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 1 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 2 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 3 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 4 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 5 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 6 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 7 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 8 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 9 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_55);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[17], [17]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 3 and associated fundamentals [[65], [65]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 6,
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
      c_3 <= c_3_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 5 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[17], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 7 and associated fundamentals [[69], [69]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 23,
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
      x_i => c_4,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[65], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 9 and associated fundamentals [[97], [97]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 23,
      w_o => 23,
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
      x_i => c_4,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[65], [2]]
  c_10_1_1_False_resize <= resize(c_1, 23);
  c_10_1_1_False_shift <= shift_left(c_10_1_1_False_resize, 1);
  c_10_3_0_False_resize <= c_3;
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_1_1_False_shift;
        when others => c_10 <= c_10_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[1], [65]]
  c_11_1_0_False_resize <= resize(c_1, 23);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_3_0_False_resize <= c_3;
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_2 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_1_0_False_shift;
        when others => c_11 <= c_11_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 12 and associated fundamentals [[259], [73]]
  with config_select_3 select c_12_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[68], [65]]
  c_13_2_2_False_resize <= resize(c_2, 23);
  c_13_2_2_False_shift <= shift_left(c_13_2_2_False_resize, 2);
  c_13_3_0_False_resize <= c_3;
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  with config_select_2 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_2_2_False_shift;
        when others => c_13 <= c_13_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 14 and associated fundamentals [[273], [259]]
  with config_select_3 select c_14_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
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
      sub_i => c_14_sub_sel,
      x_i => c_13,
      y_i => c_4,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 15 and associated fundamentals [[273], [273]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 25,
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
      x_i => c_4,
      y_i => c_6,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[128], [273]]
  c_16_5_7_False_resize <= resize(c_5, 25);
  c_16_5_7_False_shift <= shift_left(c_16_5_7_False_resize, 7);
  c_16_15_0_False_resize <= c_15;
  c_16_15_0_False_shift <= shift_left(c_16_15_0_False_resize, 0);
  with config_select_4 select c_16_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_5_7_False_shift;
        when others => c_16 <= c_16_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[32], [73]]
  c_17_5_5_False_resize <= resize(c_5, 23);
  c_17_5_5_False_shift <= shift_left(c_17_5_5_False_resize, 5);
  c_17_12_0_False_resize <= c_12(22 downto 0);
  c_17_12_0_False_shift <= shift_left(c_17_12_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_5_5_False_shift;
        when others => c_17 <= c_17_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 18 and associated fundamentals [[224], [473]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
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
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[273], [64]]
  c_19_5_6_False_resize <= resize(c_5, 25);
  c_19_5_6_False_shift <= shift_left(c_19_5_6_False_resize, 6);
  c_19_14_0_False_resize <= c_14;
  c_19_14_0_False_shift <= shift_left(c_19_14_0_False_resize, 0);
  with config_select_4 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_5_6_False_shift;
        when others => c_19 <= c_19_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[97], [4144]]
  c_20_9_0_False_resize <= resize(c_9, 29);
  c_20_9_0_False_shift <= shift_left(c_20_9_0_False_resize, 0);
  c_20_14_4_False_resize <= resize(c_14, 29);
  c_20_14_4_False_shift <= shift_left(c_20_14_4_False_resize, 4);
  with config_select_4 select c_20_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_9_0_False_shift;
        when others => c_20 <= c_20_14_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 21 and associated fundamentals [[11], [263]]
  with config_select_5 select c_21_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 29,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 4,
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
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[69], [128]]
  c_22_5_7_False_resize <= resize(c_5, 23);
  c_22_5_7_False_shift <= shift_left(c_22_5_7_False_resize, 7);
  c_22_7_0_False_resize <= c_7;
  c_22_7_0_False_shift <= shift_left(c_22_7_0_False_resize, 0);
  with config_select_4 select c_22_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_5_7_False_shift;
        when others => c_22 <= c_22_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[2], [1]]
  c_23_5_0_False_resize <= resize(c_5, 17);
  c_23_5_0_False_shift <= shift_left(c_23_5_0_False_resize, 0);
  c_23_5_1_False_resize <= resize(c_5, 17);
  c_23_5_1_False_shift <= shift_left(c_23_5_1_False_resize, 1);
  with config_select_4 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_5_0_False_shift;
        when others => c_23 <= c_23_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 24 and associated fundamentals [[212], [480]]
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 17,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
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
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[69], [97]]
  c_25_9_0_False_resize <= c_9;
  c_25_9_0_False_shift <= shift_left(c_25_9_0_False_resize, 0);
  c_25_7_0_False_resize <= c_7;
  c_25_7_0_False_shift <= shift_left(c_25_7_0_False_resize, 0);
  with config_select_4 select c_25_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_9_0_False_shift;
        when others => c_25 <= c_25_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[1], [128]]
  c_26_5_0_False_resize <= resize(c_5, 23);
  c_26_5_0_False_shift <= shift_left(c_26_5_0_False_resize, 0);
  c_26_5_7_False_resize <= resize(c_5, 23);
  c_26_5_7_False_shift <= shift_left(c_26_5_7_False_resize, 7);
  with config_select_4 select c_26_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_5_0_False_shift;
        when others => c_26 <= c_26_5_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 27 and associated fundamentals [[134], [318]]
  with config_select_5 select c_27_sub_sel_left <= 
    '0' when "0",
    '1' when others;
  with config_select_5 select c_27_sub_sel_right <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_27_sub_sel_left,
      sub_b_i => c_27_sub_sel_right,
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[4], [1]]
  c_28_5_2_False_resize <= resize(c_5, 18);
  c_28_5_2_False_shift <= shift_left(c_28_5_2_False_resize, 2);
  c_28_5_0_False_resize <= resize(c_5, 18);
  c_28_5_0_False_shift <= shift_left(c_28_5_0_False_resize, 0);
  with config_select_4 select c_28_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_5_2_False_shift;
        when others => c_28 <= c_28_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[69], [32]]
  c_29_5_5_False_resize <= resize(c_5, 23);
  c_29_5_5_False_shift <= shift_left(c_29_5_5_False_resize, 5);
  c_29_7_0_False_resize <= c_7;
  c_29_7_0_False_shift <= shift_left(c_29_7_0_False_resize, 0);
  with config_select_4 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_5_5_False_shift;
        when others => c_29 <= c_29_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 30 and associated fundamentals [[284], [130]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 31 and associated fundamentals [[2], [69]]
  c_31_7_0_False_resize <= c_7;
  c_31_7_0_False_shift <= shift_left(c_31_7_0_False_resize, 0);
  c_31_5_1_False_resize <= resize(c_5, 23);
  c_31_5_1_False_shift <= shift_left(c_31_5_1_False_resize, 1);
  with config_select_4 select c_31_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_7_0_False_shift;
        when others => c_31 <= c_31_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 32 and associated fundamentals [[69], [69]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 33 and associated fundamentals [[554], [483]]
  with config_select_5 select c_33_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_33: entity work.adder_node
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
      sub_i => c_33_sub_sel,
      x_i => c_32,
      y_i => c_31,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 34 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_5 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 35 and associated fundamentals [[97], [273]]
  c_35_9_0_False_resize <= resize(c_9, 25);
  c_35_9_0_False_shift <= shift_left(c_35_9_0_False_resize, 0);
  c_35_15_0_False_resize <= c_15;
  c_35_15_0_False_shift <= shift_left(c_35_15_0_False_resize, 0);
  with config_select_4 select c_35_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_9_0_False_shift;
        when others => c_35 <= c_35_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 36 and associated fundamentals [[353], [529]]
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 8,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_34,
      y_i => c_35,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 37 and associated fundamentals [[69], [194]]
  c_37_9_1_False_resize <= resize(c_9, 24);
  c_37_9_1_False_shift <= shift_left(c_37_9_1_False_resize, 1);
  c_37_7_0_False_resize <= resize(c_7, 24);
  c_37_7_0_False_shift <= shift_left(c_37_7_0_False_resize, 0);
  with config_select_4 select c_37_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_9_1_False_shift;
        when others => c_37 <= c_37_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 38 and associated fundamentals [[273], [259]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 39 and associated fundamentals [[411], [647]]
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_37,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[69], [273]]
  c_40_15_0_False_resize <= c_15;
  c_40_15_0_False_shift <= shift_left(c_40_15_0_False_resize, 0);
  c_40_7_0_False_resize <= resize(c_7, 25);
  c_40_7_0_False_shift <= shift_left(c_40_7_0_False_resize, 0);
  with config_select_4 select c_40_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_15_0_False_shift;
        when others => c_40 <= c_40_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 41 and associated fundamentals [[259], [292]]
  c_41_12_0_False_resize <= c_12;
  c_41_12_0_False_shift <= shift_left(c_41_12_0_False_resize, 0);
  c_41_12_2_False_resize <= c_12;
  c_41_12_2_False_shift <= shift_left(c_41_12_2_False_resize, 2);
  with config_select_4 select c_41_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_12_0_False_shift;
        when others => c_41 <= c_41_12_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 42 and associated fundamentals [[587], [857]]
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_40,
      y_i => c_41,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 43 and associated fundamentals [[97], [776]]
  c_43_9_0_False_resize <= resize(c_9, 26);
  c_43_9_0_False_shift <= shift_left(c_43_9_0_False_resize, 0);
  c_43_9_3_False_resize <= resize(c_9, 26);
  c_43_9_3_False_shift <= shift_left(c_43_9_3_False_resize, 3);
  with config_select_4 select c_43_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_9_0_False_shift;
        when others => c_43 <= c_43_9_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[273], [16]]
  c_44_5_4_False_resize <= resize(c_5, 25);
  c_44_5_4_False_shift <= shift_left(c_44_5_4_False_resize, 4);
  c_44_14_0_False_resize <= c_14;
  c_44_14_0_False_shift <= shift_left(c_44_14_0_False_resize, 0);
  with config_select_4 select c_44_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_5_4_False_shift;
        when others => c_44 <= c_44_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 45 and associated fundamentals [[643], [744]]
  with config_select_5 select c_45_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_45_sub_sel,
      x_i => c_43,
      y_i => c_44,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 46 and associated fundamentals [[353], [529]]
  c_46_resize <= c_36;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 5 with id 47 and associated fundamentals [[224], [473]]
  c_47_resize <= c_18;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 5 with id 48 and associated fundamentals [[587], [857]]
  c_48_resize <= c_42;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 5 with id 49 and associated fundamentals [[212], [480]]
  c_49_resize <= c_24;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 5 with id 50 and associated fundamentals [[11], [263]]
  c_50_resize <= c_21;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 5 with id 51 and associated fundamentals [[284], [130]]
  c_51_resize <= c_30;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'output' in stage 5 with id 52 and associated fundamentals [[554], [483]]
  c_52_resize <= c_33;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'output' in stage 5 with id 53 and associated fundamentals [[411], [647]]
  c_53_resize <= c_39;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'output' in stage 5 with id 54 and associated fundamentals [[134], [318]]
  c_54_resize <= c_27;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'output' in stage 5 with id 55 and associated fundamentals [[643], [744]]
  c_55_resize <= c_45;
  c_55 <= shift_left(c_55_resize, 0);
end architecture;

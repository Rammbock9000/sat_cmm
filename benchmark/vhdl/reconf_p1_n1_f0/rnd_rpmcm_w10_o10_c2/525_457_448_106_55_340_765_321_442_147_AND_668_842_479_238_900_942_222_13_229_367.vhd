library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(24 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(24 downto 0);
    y_8: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_2: signed(22 downto 0);
  signal c_2_i0_resize: signed(22 downto 0);
  signal c_2_i1_resize: signed(22 downto 0);
  signal c_2_i0_shift: signed(22 downto 0);
  signal c_2_i1_shift: signed(22 downto 0);
  signal c_2_arith: signed(22 downto 0);
  signal c_2_oshift: signed(22 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_0_5_False_resize: signed(20 downto 0);
  signal c_3_0_5_False_shift: signed(20 downto 0);
  signal c_3_0_0_False_resize: signed(20 downto 0);
  signal c_3_0_0_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(24 downto 0);
  signal c_5_4_0_False_resize: signed(24 downto 0);
  signal c_5_4_0_False_shift: signed(24 downto 0);
  signal c_5_4_1_False_resize: signed(24 downto 0);
  signal c_5_4_1_False_shift: signed(24 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_4_1_False_resize: signed(24 downto 0);
  signal c_6_4_1_False_shift: signed(24 downto 0);
  signal c_6_4_0_False_resize: signed(24 downto 0);
  signal c_6_4_0_False_shift: signed(24 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(21 downto 0);
  signal c_10_i0_resize: signed(21 downto 0);
  signal c_10_i1_resize: signed(21 downto 0);
  signal c_10_i0_shift: signed(21 downto 0);
  signal c_10_i1_shift: signed(21 downto 0);
  signal c_10_arith: signed(21 downto 0);
  signal c_10_oshift: signed(21 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(20 downto 0);
  signal c_11_1_0_False_resize: signed(20 downto 0);
  signal c_11_1_0_False_shift: signed(20 downto 0);
  signal c_11_10_0_False_resize: signed(20 downto 0);
  signal c_11_10_0_False_shift: signed(20 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_i0_resize: signed(20 downto 0);
  signal c_13_i1_resize: signed(20 downto 0);
  signal c_13_i0_shift: signed(20 downto 0);
  signal c_13_i1_shift: signed(20 downto 0);
  signal c_13_arith: signed(20 downto 0);
  signal c_13_oshift: signed(20 downto 0);
  signal c_14: signed(20 downto 0);
  signal c_14_i0_resize: signed(20 downto 0);
  signal c_14_i1_resize: signed(20 downto 0);
  signal c_14_i0_shift: signed(20 downto 0);
  signal c_14_i1_shift: signed(20 downto 0);
  signal c_14_arith: signed(20 downto 0);
  signal c_14_oshift: signed(20 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_0_0_False_resize: signed(22 downto 0);
  signal c_15_0_0_False_shift: signed(22 downto 0);
  signal c_15_0_7_False_resize: signed(22 downto 0);
  signal c_15_0_7_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_i0_resize: signed(24 downto 0);
  signal c_16_i1_resize: signed(24 downto 0);
  signal c_16_i0_shift: signed(24 downto 0);
  signal c_16_i1_shift: signed(24 downto 0);
  signal c_16_arith: signed(24 downto 0);
  signal c_16_oshift: signed(24 downto 0);
  signal c_17: signed(20 downto 0);
  signal c_17_1_2_False_resize: signed(20 downto 0);
  signal c_17_1_2_False_shift: signed(20 downto 0);
  signal c_17_13_0_False_resize: signed(20 downto 0);
  signal c_17_13_0_False_shift: signed(20 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_10_2_False_resize: signed(23 downto 0);
  signal c_18_10_2_False_shift: signed(23 downto 0);
  signal c_18_2_0_False_resize: signed(23 downto 0);
  signal c_18_2_0_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_i0_resize: signed(24 downto 0);
  signal c_19_i1_resize: signed(24 downto 0);
  signal c_19_i0_shift: signed(24 downto 0);
  signal c_19_i1_shift: signed(24 downto 0);
  signal c_19_arith: signed(24 downto 0);
  signal c_19_oshift: signed(24 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(27 downto 0);
  signal c_20_1_0_False_resize: signed(27 downto 0);
  signal c_20_1_0_False_shift: signed(27 downto 0);
  signal c_20_13_7_False_resize: signed(27 downto 0);
  signal c_20_13_7_False_shift: signed(27 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_9_2_False_resize: signed(22 downto 0);
  signal c_22_9_2_False_shift: signed(22 downto 0);
  signal c_22_9_0_False_resize: signed(22 downto 0);
  signal c_22_9_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_i0_resize: signed(24 downto 0);
  signal c_23_i1_resize: signed(24 downto 0);
  signal c_23_i0_shift: signed(24 downto 0);
  signal c_23_i1_shift: signed(24 downto 0);
  signal c_23_arith: signed(24 downto 0);
  signal c_23_oshift: signed(24 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_14_1_False_resize: signed(23 downto 0);
  signal c_24_14_1_False_shift: signed(23 downto 0);
  signal c_24_4_0_False_resize: signed(23 downto 0);
  signal c_24_4_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_9_1_False_resize: signed(21 downto 0);
  signal c_25_9_1_False_shift: signed(21 downto 0);
  signal c_25_14_0_False_resize: signed(21 downto 0);
  signal c_25_14_0_False_shift: signed(21 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_i0_resize: signed(24 downto 0);
  signal c_26_i1_resize: signed(24 downto 0);
  signal c_26_i0_shift: signed(24 downto 0);
  signal c_26_i1_shift: signed(24 downto 0);
  signal c_26_arith: signed(24 downto 0);
  signal c_26_oshift: signed(24 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_10_0_False_resize: signed(22 downto 0);
  signal c_27_10_0_False_shift: signed(22 downto 0);
  signal c_27_13_2_False_resize: signed(22 downto 0);
  signal c_27_13_2_False_shift: signed(22 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_1_5_False_resize: signed(23 downto 0);
  signal c_28_1_5_False_shift: signed(23 downto 0);
  signal c_28_1_0_False_resize: signed(23 downto 0);
  signal c_28_1_0_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_i0_resize: signed(24 downto 0);
  signal c_29_i1_resize: signed(24 downto 0);
  signal c_29_i0_shift: signed(24 downto 0);
  signal c_29_i1_shift: signed(24 downto 0);
  signal c_29_arith: signed(24 downto 0);
  signal c_29_oshift: signed(24 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_30_13_1_False_resize: signed(21 downto 0);
  signal c_30_13_1_False_shift: signed(21 downto 0);
  signal c_30_1_0_False_resize: signed(21 downto 0);
  signal c_30_1_0_False_shift: signed(21 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(23 downto 0);
  signal c_32_4_0_False_resize: signed(23 downto 0);
  signal c_32_4_0_False_shift: signed(23 downto 0);
  signal c_32_14_2_False_resize: signed(23 downto 0);
  signal c_32_14_2_False_shift: signed(23 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(25 downto 0);
  signal c_33_i1_resize: signed(25 downto 0);
  signal c_33_i0_shift: signed(25 downto 0);
  signal c_33_i1_shift: signed(25 downto 0);
  signal c_33_arith: signed(25 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(25 downto 0);
  signal c_34_i0_resize: signed(25 downto 0);
  signal c_34_i1_resize: signed(25 downto 0);
  signal c_34_i0_shift: signed(25 downto 0);
  signal c_34_i1_shift: signed(25 downto 0);
  signal c_34_arith: signed(25 downto 0);
  signal c_34_oshift: signed(25 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_35_1_3_False_resize: signed(21 downto 0);
  signal c_35_1_3_False_shift: signed(21 downto 0);
  signal c_35_10_0_False_resize: signed(21 downto 0);
  signal c_35_10_0_False_shift: signed(21 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_i0_resize: signed(24 downto 0);
  signal c_36_i1_resize: signed(24 downto 0);
  signal c_36_i0_shift: signed(24 downto 0);
  signal c_36_i1_shift: signed(24 downto 0);
  signal c_36_arith: signed(24 downto 0);
  signal c_36_oshift: signed(24 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(21 downto 0);
  signal c_37_1_0_False_resize: signed(21 downto 0);
  signal c_37_1_0_False_shift: signed(21 downto 0);
  signal c_37_13_1_False_resize: signed(21 downto 0);
  signal c_37_13_1_False_shift: signed(21 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_i0_resize: signed(25 downto 0);
  signal c_38_i1_resize: signed(25 downto 0);
  signal c_38_i0_shift: signed(25 downto 0);
  signal c_38_i1_shift: signed(25 downto 0);
  signal c_38_arith: signed(25 downto 0);
  signal c_38_oshift: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_34_0_False_resize: signed(25 downto 0);
  signal c_39_34_0_False_shift: signed(25 downto 0);
  signal c_39_36_1_False_resize: signed(25 downto 0);
  signal c_39_36_1_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_resize: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_42_38_3_False_resize: signed(24 downto 0);
  signal c_42_38_3_False_shift: signed(24 downto 0);
  signal c_42_29_0_False_resize: signed(24 downto 0);
  signal c_42_29_0_False_shift: signed(24 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_43_resize: signed(24 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_29_0_False_resize: signed(23 downto 0);
  signal c_44_29_0_False_shift: signed(23 downto 0);
  signal c_44_34_0_False_resize: signed(23 downto 0);
  signal c_44_34_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_38_0_False_resize: signed(25 downto 0);
  signal c_46_38_0_False_shift: signed(25 downto 0);
  signal c_46_21_0_False_resize: signed(25 downto 0);
  signal c_46_21_0_False_shift: signed(25 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_50_36_0_False_resize: signed(24 downto 0);
  signal c_50_36_0_False_shift: signed(24 downto 0);
  signal c_50_31_0_False_resize: signed(24 downto 0);
  signal c_50_31_0_False_shift: signed(24 downto 0);
  signal c_50_sel: std_logic_vector(0 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_51_resize: signed(24 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_52_resize: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_53_31_0_False_resize: signed(24 downto 0);
  signal c_53_31_0_False_shift: signed(24 downto 0);
  signal c_53_19_0_False_resize: signed(24 downto 0);
  signal c_53_19_0_False_shift: signed(24 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_54_resize: signed(24 downto 0);
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
  -- output node 0 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 1 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 2 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 3 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 4 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 5 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 6 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_49);
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
  -- output node 9 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_54);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[-7], [-7]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 2 and associated fundamentals [[-127], [-127]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 7,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[1], [32]]
  c_3_0_5_False_resize <= resize(c_0, 21);
  c_3_0_5_False_shift <= shift_left(c_3_0_5_False_resize, 5);
  c_3_0_0_False_resize <= resize(c_0, 21);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  with config_select_1 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_0_5_False_shift;
        when others => c_3 <= c_3_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[-255], [-222]]
  with config_select_2 select c_4_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[-255], [-444]]
  c_5_4_0_False_resize <= resize(c_4, 25);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_4_1_False_resize <= resize(c_4, 25);
  c_5_4_1_False_shift <= shift_left(c_5_4_1_False_resize, 1);
  with config_select_3 select c_5_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_4_0_False_shift;
        when others => c_5 <= c_5_4_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[-510], [-222]]
  c_6_4_1_False_resize <= resize(c_4, 25);
  c_6_4_1_False_shift <= shift_left(c_6_4_1_False_resize, 1);
  c_6_4_0_False_resize <= resize(c_4, 25);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_4_1_False_shift;
        when others => c_6 <= c_6_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[-765], [-222]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 8 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[-31], [33]]
  with config_select_2 select c_9_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 10 and associated fundamentals [[33], [31]]
  with config_select_1 select c_10_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_10_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[-7], [31]]
  c_11_1_0_False_resize <= resize(c_1, 21);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_10_0_False_resize <= c_10(20 downto 0);
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  with config_select_2 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_1_0_False_shift;
        when others => c_11 <= c_11_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 12 and associated fundamentals [[-283], [-98]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
      w_o => 24,
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
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 13 and associated fundamentals [[-30], [-30]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 1,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 14 and associated fundamentals [[-27], [-27]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 21,
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
      y_i => c_8,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 15 and associated fundamentals [[128], [1]]
  c_15_0_0_False_resize <= resize(c_0, 23);
  c_15_0_0_False_shift <= shift_left(c_15_0_0_False_resize, 0);
  c_15_0_7_False_resize <= resize(c_0, 23);
  c_15_0_7_False_shift <= shift_left(c_15_0_7_False_resize, 7);
  with config_select_1 select c_15_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_0_0_False_shift;
        when others => c_15 <= c_15_0_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 16 and associated fundamentals [[-270], [-16]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[-28], [-30]]
  c_17_1_2_False_resize <= resize(c_1, 21);
  c_17_1_2_False_shift <= shift_left(c_17_1_2_False_resize, 2);
  c_17_13_0_False_resize <= c_13;
  c_17_13_0_False_shift <= shift_left(c_17_13_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_1_2_False_shift;
        when others => c_17 <= c_17_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[132], [-127]]
  c_18_10_2_False_resize <= resize(c_10, 24);
  c_18_10_2_False_shift <= shift_left(c_18_10_2_False_resize, 2);
  c_18_2_0_False_resize <= resize(c_2, 24);
  c_18_2_0_False_shift <= shift_left(c_18_2_0_False_resize, 0);
  with config_select_2 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_10_2_False_shift;
        when others => c_18 <= c_18_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[-356], [-367]]
  with config_select_3 select c_19_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 20 and associated fundamentals [[-7], [-3840]]
  c_20_1_0_False_resize <= resize(c_1, 28);
  c_20_1_0_False_shift <= shift_left(c_20_1_0_False_resize, 0);
  c_20_13_7_False_resize <= resize(c_13, 28);
  c_20_13_7_False_shift <= shift_left(c_20_13_7_False_resize, 7);
  with config_select_2 select c_20_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_1_0_False_shift;
        when others => c_20 <= c_20_13_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 21 and associated fundamentals [[55], [-3906]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 22,
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
      x_i => c_20,
      y_i => c_9,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[-124], [33]]
  c_22_9_2_False_resize <= resize(c_9, 23);
  c_22_9_2_False_shift <= shift_left(c_22_9_2_False_resize, 2);
  c_22_9_0_False_resize <= resize(c_9, 23);
  c_22_9_0_False_shift <= shift_left(c_22_9_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_9_2_False_shift;
        when others => c_22 <= c_22_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 23 and associated fundamentals [[442], [229]]
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 25,
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
      x_i => c_22,
      y_i => c_12,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[-54], [-222]]
  c_24_14_1_False_resize <= resize(c_14, 24);
  c_24_14_1_False_shift <= shift_left(c_24_14_1_False_resize, 1);
  c_24_4_0_False_resize <= c_4;
  c_24_4_0_False_shift <= shift_left(c_24_4_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_14_1_False_shift;
        when others => c_24 <= c_24_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[-62], [-27]]
  c_25_9_1_False_resize <= c_9;
  c_25_9_1_False_shift <= shift_left(c_25_9_1_False_resize, 1);
  c_25_14_0_False_resize <= resize(c_14, 22);
  c_25_14_0_False_shift <= shift_left(c_25_14_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_9_1_False_shift;
        when others => c_25 <= c_25_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 26 and associated fundamentals [[-170], [-471]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 25,
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
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 27 and associated fundamentals [[-120], [31]]
  c_27_10_0_False_resize <= resize(c_10, 23);
  c_27_10_0_False_shift <= shift_left(c_27_10_0_False_resize, 0);
  c_27_13_2_False_resize <= resize(c_13, 23);
  c_27_13_2_False_shift <= shift_left(c_27_13_2_False_resize, 2);
  with config_select_2 select c_27_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_10_0_False_shift;
        when others => c_27 <= c_27_13_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 28 and associated fundamentals [[-7], [-224]]
  c_28_1_5_False_resize <= resize(c_1, 24);
  c_28_1_5_False_shift <= shift_left(c_28_1_5_False_resize, 5);
  c_28_1_0_False_resize <= resize(c_1, 24);
  c_28_1_0_False_shift <= shift_left(c_28_1_0_False_resize, 0);
  with config_select_2 select c_28_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_1_5_False_shift;
        when others => c_28 <= c_28_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 29 and associated fundamentals [[-106], [479]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 25,
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
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 30 and associated fundamentals [[-60], [-7]]
  c_30_13_1_False_resize <= resize(c_13, 22);
  c_30_13_1_False_shift <= shift_left(c_30_13_1_False_resize, 1);
  c_30_1_0_False_resize <= resize(c_1, 22);
  c_30_1_0_False_shift <= shift_left(c_30_1_0_False_resize, 0);
  with config_select_2 select c_30_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_13_1_False_shift;
        when others => c_30 <= c_30_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 31 and associated fundamentals [[-147], [-13]]
  with config_select_3 select c_31_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      sub_i => c_31_sub_sel,
      x_i => c_14,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[-255], [-108]]
  c_32_4_0_False_resize <= c_4;
  c_32_4_0_False_shift <= shift_left(c_32_4_0_False_resize, 0);
  c_32_14_2_False_resize <= resize(c_14, 24);
  c_32_14_2_False_shift <= shift_left(c_32_14_2_False_resize, 2);
  with config_select_3 select c_32_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_4_0_False_shift;
        when others => c_32 <= c_32_14_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 33 and associated fundamentals [[-457], [-842]]
  with config_select_4 select c_33_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_33_sub_sel,
      x_i => c_19,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 34 and associated fundamentals [[-525], [-238]]
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      x_i => c_16,
      y_i => c_4,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 35 and associated fundamentals [[33], [-56]]
  c_35_1_3_False_resize <= resize(c_1, 22);
  c_35_1_3_False_shift <= shift_left(c_35_1_3_False_resize, 3);
  c_35_10_0_False_resize <= c_10;
  c_35_10_0_False_shift <= shift_left(c_35_10_0_False_resize, 0);
  with config_select_2 select c_35_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_1_3_False_shift;
        when others => c_35 <= c_35_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 36 and associated fundamentals [[-321], [-334]]
  with config_select_3 select c_36_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_36_sub_sel,
      x_i => c_4,
      y_i => c_35,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 37 and associated fundamentals [[-7], [-60]]
  c_37_1_0_False_resize <= resize(c_1, 22);
  c_37_1_0_False_shift <= shift_left(c_37_1_0_False_resize, 0);
  c_37_13_1_False_resize <= resize(c_13, 22);
  c_37_13_1_False_shift <= shift_left(c_37_13_1_False_resize, 1);
  with config_select_2 select c_37_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_1_0_False_shift;
        when others => c_37 <= c_37_13_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 38 and associated fundamentals [[56], [900]]
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_17,
      y_i => c_37,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 39 and associated fundamentals [[-525], [-668]]
  c_39_34_0_False_resize <= c_34;
  c_39_34_0_False_shift <= shift_left(c_39_34_0_False_resize, 0);
  c_39_36_1_False_resize <= resize(c_36, 26);
  c_39_36_1_False_shift <= shift_left(c_39_36_1_False_resize, 1);
  with config_select_4 select c_39_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_34_0_False_shift;
        when others => c_39 <= c_39_36_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 40 and associated fundamentals [[525], [668]]
  c_40_resize <= c_39;
  c_40 <= -shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[457], [842]]
  c_41_resize <= c_33;
  c_41 <= -shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[448], [479]]
  c_42_38_3_False_resize <= c_38(24 downto 0);
  c_42_38_3_False_shift <= shift_left(c_42_38_3_False_resize, 3);
  c_42_29_0_False_resize <= c_29;
  c_42_29_0_False_shift <= shift_left(c_42_29_0_False_resize, 0);
  with config_select_4 select c_42_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_38_3_False_shift;
        when others => c_42 <= c_42_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[448], [479]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[-106], [-238]]
  c_44_29_0_False_resize <= c_29(23 downto 0);
  c_44_29_0_False_shift <= shift_left(c_44_29_0_False_resize, 0);
  c_44_34_0_False_resize <= c_34(23 downto 0);
  c_44_34_0_False_shift <= shift_left(c_44_34_0_False_resize, 0);
  with config_select_4 select c_44_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_29_0_False_shift;
        when others => c_44 <= c_44_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[106], [238]]
  c_45_resize <= c_44;
  c_45 <= -shift_left(c_45_resize, 0);
  -- node of type 'mux' in stage 4 with id 46 and associated fundamentals [[55], [900]]
  c_46_38_0_False_resize <= c_38;
  c_46_38_0_False_shift <= shift_left(c_46_38_0_False_resize, 0);
  c_46_21_0_False_resize <= c_21;
  c_46_21_0_False_shift <= shift_left(c_46_21_0_False_resize, 0);
  with config_select_4 select c_46_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_38_0_False_shift;
        when others => c_46 <= c_46_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[55], [900]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[340], [942]]
  c_48_resize <= resize(c_26, 26);
  c_48 <= -shift_left(c_48_resize, 1);
  -- node of type 'output' in stage 4 with id 49 and associated fundamentals [[765], [222]]
  c_49_resize <= c_7;
  c_49 <= -shift_left(c_49_resize, 0);
  -- node of type 'mux' in stage 4 with id 50 and associated fundamentals [[-321], [-13]]
  c_50_36_0_False_resize <= c_36;
  c_50_36_0_False_shift <= shift_left(c_50_36_0_False_resize, 0);
  c_50_31_0_False_resize <= resize(c_31, 25);
  c_50_31_0_False_shift <= shift_left(c_50_31_0_False_resize, 0);
  with config_select_4 select c_50_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "0" => c_50 <= c_50_36_0_False_shift;
        when others => c_50 <= c_50_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 51 and associated fundamentals [[321], [13]]
  c_51_resize <= c_50;
  c_51 <= -shift_left(c_51_resize, 0);
  -- node of type 'output' in stage 4 with id 52 and associated fundamentals [[442], [229]]
  c_52_resize <= c_23;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'mux' in stage 4 with id 53 and associated fundamentals [[-147], [-367]]
  c_53_31_0_False_resize <= resize(c_31, 25);
  c_53_31_0_False_shift <= shift_left(c_53_31_0_False_resize, 0);
  c_53_19_0_False_resize <= c_19;
  c_53_19_0_False_shift <= shift_left(c_53_19_0_False_resize, 0);
  with config_select_4 select c_53_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_31_0_False_shift;
        when others => c_53 <= c_53_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 54 and associated fundamentals [[147], [367]]
  c_54_resize <= c_53;
  c_54 <= -shift_left(c_54_resize, 0);
end architecture;

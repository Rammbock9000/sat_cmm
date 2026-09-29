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
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(24 downto 0);
    y_7: out std_logic_vector(25 downto 0);
    y_8: out std_logic_vector(23 downto 0);
    y_9: out std_logic_vector(25 downto 0);
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
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_2_0_False_resize: signed(19 downto 0);
  signal c_4_2_0_False_shift: signed(19 downto 0);
  signal c_4_1_0_False_resize: signed(19 downto 0);
  signal c_4_1_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_5_1_0_False_resize: signed(15 downto 0);
  signal c_5_1_0_False_shift: signed(15 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_8_i0_resize: signed(18 downto 0);
  signal c_8_i1_resize: signed(18 downto 0);
  signal c_8_i0_shift: signed(18 downto 0);
  signal c_8_i1_shift: signed(18 downto 0);
  signal c_8_arith: signed(18 downto 0);
  signal c_8_oshift: signed(18 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_9_1_0_False_resize: signed(15 downto 0);
  signal c_9_1_0_False_shift: signed(15 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_10_i0_resize: signed(18 downto 0);
  signal c_10_i1_resize: signed(18 downto 0);
  signal c_10_i0_shift: signed(18 downto 0);
  signal c_10_i1_shift: signed(18 downto 0);
  signal c_10_arith: signed(18 downto 0);
  signal c_10_oshift: signed(18 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(19 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_15: signed(18 downto 0);
  signal c_15_i0_resize: signed(18 downto 0);
  signal c_15_i1_resize: signed(18 downto 0);
  signal c_15_i0_shift: signed(18 downto 0);
  signal c_15_i1_shift: signed(18 downto 0);
  signal c_15_arith: signed(18 downto 0);
  signal c_15_oshift: signed(18 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_6_2_False_resize: signed(22 downto 0);
  signal c_16_6_2_False_shift: signed(22 downto 0);
  signal c_16_6_0_False_resize: signed(22 downto 0);
  signal c_16_6_0_False_shift: signed(22 downto 0);
  signal c_16_10_7_False_resize: signed(22 downto 0);
  signal c_16_10_7_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_10_1_False_resize: signed(22 downto 0);
  signal c_17_10_1_False_shift: signed(22 downto 0);
  signal c_17_6_0_False_resize: signed(22 downto 0);
  signal c_17_6_0_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(22 downto 0);
  signal c_19_15_0_False_resize: signed(22 downto 0);
  signal c_19_15_0_False_shift: signed(22 downto 0);
  signal c_19_12_0_False_resize: signed(22 downto 0);
  signal c_19_12_0_False_shift: signed(22 downto 0);
  signal c_19_6_3_False_resize: signed(22 downto 0);
  signal c_19_6_3_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_10_4_False_resize: signed(22 downto 0);
  signal c_20_10_4_False_shift: signed(22 downto 0);
  signal c_20_6_0_False_resize: signed(22 downto 0);
  signal c_20_6_0_False_shift: signed(22 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_i0_resize: signed(24 downto 0);
  signal c_21_i1_resize: signed(24 downto 0);
  signal c_21_i0_shift: signed(24 downto 0);
  signal c_21_i1_shift: signed(24 downto 0);
  signal c_21_arith: signed(24 downto 0);
  signal c_21_oshift: signed(24 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(17 downto 0);
  signal c_22_6_2_False_resize: signed(17 downto 0);
  signal c_22_6_2_False_shift: signed(17 downto 0);
  signal c_22_10_0_False_resize: signed(17 downto 0);
  signal c_22_10_0_False_shift: signed(17 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_6_1_False_resize: signed(23 downto 0);
  signal c_23_6_1_False_shift: signed(23 downto 0);
  signal c_23_8_0_False_resize: signed(23 downto 0);
  signal c_23_8_0_False_shift: signed(23 downto 0);
  signal c_23_10_7_False_resize: signed(23 downto 0);
  signal c_23_10_7_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_10_2_False_resize: signed(23 downto 0);
  signal c_25_10_2_False_shift: signed(23 downto 0);
  signal c_25_8_5_False_resize: signed(23 downto 0);
  signal c_25_8_5_False_shift: signed(23 downto 0);
  signal c_25_8_0_False_resize: signed(23 downto 0);
  signal c_25_8_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_14_0_False_resize: signed(25 downto 0);
  signal c_26_14_0_False_shift: signed(25 downto 0);
  signal c_26_8_0_False_resize: signed(25 downto 0);
  signal c_26_8_0_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel_left: std_logic;
  signal c_27_sub_sel_right: std_logic;
  signal c_28: signed(24 downto 0);
  signal c_28_8_6_False_resize: signed(24 downto 0);
  signal c_28_8_6_False_shift: signed(24 downto 0);
  signal c_28_6_0_False_resize: signed(24 downto 0);
  signal c_28_6_0_False_shift: signed(24 downto 0);
  signal c_28_6_6_False_resize: signed(24 downto 0);
  signal c_28_6_6_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_12_0_False_resize: signed(24 downto 0);
  signal c_29_12_0_False_shift: signed(24 downto 0);
  signal c_29_12_2_False_resize: signed(24 downto 0);
  signal c_29_12_2_False_shift: signed(24 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_i0_resize: signed(25 downto 0);
  signal c_30_i1_resize: signed(25 downto 0);
  signal c_30_i0_shift: signed(25 downto 0);
  signal c_30_i1_shift: signed(25 downto 0);
  signal c_30_arith: signed(25 downto 0);
  signal c_30_oshift: signed(25 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_12_0_False_resize: signed(22 downto 0);
  signal c_31_12_0_False_shift: signed(22 downto 0);
  signal c_31_8_0_False_resize: signed(22 downto 0);
  signal c_31_8_0_False_shift: signed(22 downto 0);
  signal c_31_10_0_False_resize: signed(22 downto 0);
  signal c_31_10_0_False_shift: signed(22 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_12_1_False_resize: signed(23 downto 0);
  signal c_32_12_1_False_shift: signed(23 downto 0);
  signal c_32_6_0_False_resize: signed(23 downto 0);
  signal c_32_6_0_False_shift: signed(23 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(25 downto 0);
  signal c_33_i1_resize: signed(25 downto 0);
  signal c_33_i0_shift: signed(25 downto 0);
  signal c_33_i1_shift: signed(25 downto 0);
  signal c_33_arith: signed(25 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(19 downto 0);
  signal c_34_10_1_False_resize: signed(19 downto 0);
  signal c_34_10_1_False_shift: signed(19 downto 0);
  signal c_34_8_0_False_resize: signed(19 downto 0);
  signal c_34_8_0_False_shift: signed(19 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_12_0_False_resize: signed(25 downto 0);
  signal c_35_12_0_False_shift: signed(25 downto 0);
  signal c_35_15_6_False_resize: signed(25 downto 0);
  signal c_35_15_6_False_shift: signed(25 downto 0);
  signal c_35_14_0_False_resize: signed(25 downto 0);
  signal c_35_14_0_False_shift: signed(25 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_i0_resize: signed(25 downto 0);
  signal c_36_i1_resize: signed(25 downto 0);
  signal c_36_i0_shift: signed(25 downto 0);
  signal c_36_i1_shift: signed(25 downto 0);
  signal c_36_arith: signed(25 downto 0);
  signal c_36_oshift: signed(25 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(26 downto 0);
  signal c_37_10_10_False_resize: signed(26 downto 0);
  signal c_37_10_10_False_shift: signed(26 downto 0);
  signal c_37_8_0_False_resize: signed(26 downto 0);
  signal c_37_8_0_False_shift: signed(26 downto 0);
  signal c_37_8_8_False_resize: signed(26 downto 0);
  signal c_37_8_8_False_shift: signed(26 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_15_3_False_resize: signed(25 downto 0);
  signal c_38_15_3_False_shift: signed(25 downto 0);
  signal c_38_14_0_False_resize: signed(25 downto 0);
  signal c_38_14_0_False_shift: signed(25 downto 0);
  signal c_38_15_2_False_resize: signed(25 downto 0);
  signal c_38_15_2_False_shift: signed(25 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_i0_resize: signed(26 downto 0);
  signal c_39_i1_resize: signed(26 downto 0);
  signal c_39_i0_shift: signed(26 downto 0);
  signal c_39_i1_shift: signed(26 downto 0);
  signal c_39_arith: signed(26 downto 0);
  signal c_39_oshift: signed(25 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_40_6_0_False_resize: signed(22 downto 0);
  signal c_40_6_0_False_shift: signed(22 downto 0);
  signal c_40_15_4_False_resize: signed(22 downto 0);
  signal c_40_15_4_False_shift: signed(22 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_10_7_False_resize: signed(25 downto 0);
  signal c_41_10_7_False_shift: signed(25 downto 0);
  signal c_41_14_0_False_resize: signed(25 downto 0);
  signal c_41_14_0_False_shift: signed(25 downto 0);
  signal c_41_10_0_False_resize: signed(25 downto 0);
  signal c_41_10_0_False_shift: signed(25 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_i0_resize: signed(25 downto 0);
  signal c_42_i1_resize: signed(25 downto 0);
  signal c_42_i0_shift: signed(25 downto 0);
  signal c_42_i1_shift: signed(25 downto 0);
  signal c_42_arith: signed(25 downto 0);
  signal c_42_oshift: signed(25 downto 0);
  signal c_42_sub_sel_left: std_logic;
  signal c_42_sub_sel_right: std_logic;
  signal c_43: signed(24 downto 0);
  signal c_43_15_6_False_resize: signed(24 downto 0);
  signal c_43_15_6_False_shift: signed(24 downto 0);
  signal c_43_10_0_False_resize: signed(24 downto 0);
  signal c_43_10_0_False_shift: signed(24 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_44_12_0_False_resize: signed(22 downto 0);
  signal c_44_12_0_False_shift: signed(22 downto 0);
  signal c_44_15_0_False_resize: signed(22 downto 0);
  signal c_44_15_0_False_shift: signed(22 downto 0);
  signal c_44_10_5_False_resize: signed(22 downto 0);
  signal c_44_10_5_False_shift: signed(22 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_45_sub_sel_left: std_logic;
  signal c_45_sub_sel_right: std_logic;
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_resize: signed(25 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_52_resize: signed(24 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_resize: signed(25 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_resize: signed(23 downto 0);
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
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 2 and associated fundamentals [[15], [15], [15]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 3 and associated fundamentals [[129], [129], [129]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 24,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[1], [15], [15]]
  c_4_2_0_False_resize <= c_2;
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  c_4_1_0_False_resize <= resize(c_1, 20);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_2_0_False_shift;
        when others => c_4 <= c_4_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[0], [1], [1]]
  c_5_1_0_False_resize <= c_1;
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_0_False_shift;
        when others => c_5 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 6 and associated fundamentals [[1], [79], [79]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_1 & "";
    end if;
  end process;
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
      x_i => c_7,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[1], [0], [0]]
  c_9_1_0_False_resize <= c_1;
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_1_0_False_shift;
        when others => c_9 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 10 and associated fundamentals [[7], [1], [1]]
  with config_select_3 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_7,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 11 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_2 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 12 and associated fundamentals [[119], [119], [119]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_11,
      y_i => c_7,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 13 and associated fundamentals [[129], [129], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_3 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 14 and associated fundamentals [[831], [831], [831]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 6,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_11,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 15 and associated fundamentals [[7], [7], [7]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_7,
      y_i => c_7,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[4], [79], [128]]
  c_16_6_2_False_resize <= c_6;
  c_16_6_2_False_shift <= shift_left(c_16_6_2_False_resize, 2);
  c_16_6_0_False_resize <= c_6;
  c_16_6_0_False_shift <= shift_left(c_16_6_0_False_resize, 0);
  c_16_10_7_False_resize <= resize(c_10, 23);
  c_16_10_7_False_shift <= shift_left(c_16_10_7_False_resize, 7);
  with config_select_4 select c_16_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_6_2_False_shift;
        when "01" => c_16 <= c_16_6_0_False_shift;
        when others => c_16 <= c_16_10_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[14], [2], [79]]
  c_17_10_1_False_resize <= resize(c_10, 23);
  c_17_10_1_False_shift <= shift_left(c_17_10_1_False_resize, 1);
  c_17_6_0_False_resize <= c_6;
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_10_1_False_shift;
        when others => c_17 <= c_17_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 18 and associated fundamentals [[46], [630], [945]]
  with config_select_5 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
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
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[8], [119], [7]]
  c_19_15_0_False_resize <= resize(c_15, 23);
  c_19_15_0_False_shift <= shift_left(c_19_15_0_False_resize, 0);
  c_19_12_0_False_resize <= c_12;
  c_19_12_0_False_shift <= shift_left(c_19_12_0_False_resize, 0);
  c_19_6_3_False_resize <= c_6;
  c_19_6_3_False_shift <= shift_left(c_19_6_3_False_resize, 3);
  with config_select_4 select c_19_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_15_0_False_shift;
        when "01" => c_19 <= c_19_12_0_False_shift;
        when others => c_19 <= c_19_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[112], [0], [79]]
  c_20_10_4_False_resize <= resize(c_10, 23);
  c_20_10_4_False_shift <= shift_left(c_20_10_4_False_resize, 4);
  c_20_6_0_False_resize <= c_6;
  c_20_6_0_False_shift <= shift_left(c_20_6_0_False_resize, 0);
  with config_select_4 select c_20_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_10_4_False_shift;
        when "01" => c_20 <= c_20_6_0_False_shift;
        when others => c_20 <= to_signed(0, 23);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 21 and associated fundamentals [[456], [119], [309]]
  with config_select_5 select c_21_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
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
      sub_i => c_21_sub_sel,
      x_i => c_20,
      y_i => c_19,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[4], [1], [1]]
  c_22_6_2_False_resize <= c_6(17 downto 0);
  c_22_6_2_False_shift <= shift_left(c_22_6_2_False_resize, 2);
  c_22_10_0_False_resize <= c_10(17 downto 0);
  c_22_10_0_False_shift <= shift_left(c_22_10_0_False_resize, 0);
  with config_select_4 select c_22_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_6_2_False_shift;
        when others => c_22 <= c_22_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[5], [128], [158]]
  c_23_6_1_False_resize <= resize(c_6, 24);
  c_23_6_1_False_shift <= shift_left(c_23_6_1_False_resize, 1);
  c_23_8_0_False_resize <= resize(c_8, 24);
  c_23_8_0_False_shift <= shift_left(c_23_8_0_False_resize, 0);
  c_23_10_7_False_resize <= resize(c_10, 24);
  c_23_10_7_False_shift <= shift_left(c_23_10_7_False_resize, 7);
  with config_select_4 select c_23_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_6_1_False_shift;
        when "01" => c_23 <= c_23_8_0_False_shift;
        when others => c_23 <= c_23_10_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 24 and associated fundamentals [[69], [144], [174]]
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 4,
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
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[28], [160], [5]]
  c_25_10_2_False_resize <= resize(c_10, 24);
  c_25_10_2_False_shift <= shift_left(c_25_10_2_False_resize, 2);
  c_25_8_5_False_resize <= resize(c_8, 24);
  c_25_8_5_False_shift <= shift_left(c_25_8_5_False_resize, 5);
  c_25_8_0_False_resize <= resize(c_8, 24);
  c_25_8_0_False_shift <= shift_left(c_25_8_0_False_resize, 0);
  with config_select_4 select c_25_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_10_2_False_shift;
        when "01" => c_25 <= c_25_8_5_False_shift;
        when others => c_25 <= c_25_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[5], [5], [831]]
  c_26_14_0_False_resize <= c_14;
  c_26_14_0_False_shift <= shift_left(c_26_14_0_False_resize, 0);
  c_26_8_0_False_resize <= resize(c_8, 26);
  c_26_8_0_False_shift <= shift_left(c_26_8_0_False_resize, 0);
  with config_select_4 select c_26_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_14_0_False_shift;
        when others => c_26 <= c_26_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 27 and associated fundamentals [[107], [635], [811]]
  with config_select_5 select c_27_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  with config_select_5 select c_27_sub_sel_right <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 2,
      s_y_i => 0,
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
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[64], [79], [320]]
  c_28_8_6_False_resize <= resize(c_8, 25);
  c_28_8_6_False_shift <= shift_left(c_28_8_6_False_resize, 6);
  c_28_6_0_False_resize <= resize(c_6, 25);
  c_28_6_0_False_shift <= shift_left(c_28_6_0_False_resize, 0);
  c_28_6_6_False_resize <= resize(c_6, 25);
  c_28_6_6_False_shift <= shift_left(c_28_6_6_False_resize, 6);
  with config_select_4 select c_28_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_8_6_False_shift;
        when "01" => c_28 <= c_28_6_0_False_shift;
        when others => c_28 <= c_28_6_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[119], [119], [476]]
  c_29_12_0_False_resize <= resize(c_12, 25);
  c_29_12_0_False_shift <= shift_left(c_29_12_0_False_resize, 0);
  c_29_12_2_False_resize <= resize(c_12, 25);
  c_29_12_2_False_shift <= shift_left(c_29_12_2_False_resize, 2);
  with config_select_4 select c_29_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_12_0_False_shift;
        when others => c_29 <= c_29_12_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 30 and associated fundamentals [[137], [197], [804]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
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
  -- node of type 'mux' in stage 4 with id 31 and associated fundamentals [[5], [119], [1]]
  c_31_12_0_False_resize <= c_12;
  c_31_12_0_False_shift <= shift_left(c_31_12_0_False_resize, 0);
  c_31_8_0_False_resize <= resize(c_8, 23);
  c_31_8_0_False_shift <= shift_left(c_31_8_0_False_resize, 0);
  c_31_10_0_False_resize <= resize(c_10, 23);
  c_31_10_0_False_shift <= shift_left(c_31_10_0_False_resize, 0);
  with config_select_4 select c_31_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_12_0_False_shift;
        when "01" => c_31 <= c_31_8_0_False_shift;
        when others => c_31 <= c_31_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 32 and associated fundamentals [[238], [79], [0]]
  c_32_12_1_False_resize <= resize(c_12, 24);
  c_32_12_1_False_shift <= shift_left(c_32_12_1_False_resize, 1);
  c_32_6_0_False_resize <= resize(c_6, 24);
  c_32_6_0_False_shift <= shift_left(c_32_6_0_False_resize, 0);
  with config_select_4 select c_32_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_12_1_False_shift;
        when "01" => c_32 <= c_32_6_0_False_shift;
        when others => c_32 <= to_signed(0, 24);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 33 and associated fundamentals [[278], [873], [8]]
  with config_select_5 select c_33_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
  -- node of type 'mux' in stage 4 with id 34 and associated fundamentals [[14], [5], [2]]
  c_34_10_1_False_resize <= resize(c_10, 20);
  c_34_10_1_False_shift <= shift_left(c_34_10_1_False_resize, 1);
  c_34_8_0_False_resize <= resize(c_8, 20);
  c_34_8_0_False_shift <= shift_left(c_34_8_0_False_resize, 0);
  with config_select_4 select c_34_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_10_1_False_shift;
        when others => c_34 <= c_34_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 35 and associated fundamentals [[119], [831], [448]]
  c_35_12_0_False_resize <= resize(c_12, 26);
  c_35_12_0_False_shift <= shift_left(c_35_12_0_False_resize, 0);
  c_35_15_6_False_resize <= resize(c_15, 26);
  c_35_15_6_False_shift <= shift_left(c_35_15_6_False_resize, 6);
  c_35_14_0_False_resize <= c_14;
  c_35_14_0_False_shift <= shift_left(c_35_14_0_False_resize, 0);
  with config_select_4 select c_35_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_12_0_False_shift;
        when "01" => c_35 <= c_35_15_6_False_shift;
        when others => c_35 <= c_35_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 36 and associated fundamentals [[175], [851], [440]]
  with config_select_5 select c_36_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
      w_o => 26,
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
      sub_i => c_36_sub_sel,
      x_i => c_35,
      y_i => c_34,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 37 and associated fundamentals [[5], [1024], [1280]]
  c_37_10_10_False_resize <= resize(c_10, 27);
  c_37_10_10_False_shift <= shift_left(c_37_10_10_False_resize, 10);
  c_37_8_0_False_resize <= resize(c_8, 27);
  c_37_8_0_False_shift <= shift_left(c_37_8_0_False_resize, 0);
  c_37_8_8_False_resize <= resize(c_8, 27);
  c_37_8_8_False_shift <= shift_left(c_37_8_8_False_resize, 8);
  with config_select_4 select c_37_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_10_10_False_shift;
        when "01" => c_37 <= c_37_8_0_False_shift;
        when others => c_37 <= c_37_8_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 38 and associated fundamentals [[831], [28], [56]]
  c_38_15_3_False_resize <= resize(c_15, 26);
  c_38_15_3_False_shift <= shift_left(c_38_15_3_False_resize, 3);
  c_38_14_0_False_resize <= c_14;
  c_38_14_0_False_shift <= shift_left(c_38_14_0_False_resize, 0);
  c_38_15_2_False_resize <= resize(c_15, 26);
  c_38_15_2_False_shift <= shift_left(c_38_15_2_False_resize, 2);
  with config_select_4 select c_38_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_15_3_False_shift;
        when "01" => c_38 <= c_38_14_0_False_shift;
        when others => c_38 <= c_38_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 39 and associated fundamentals [[418], [526], [668]]
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
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
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[1], [112], [79]]
  c_40_6_0_False_resize <= c_6;
  c_40_6_0_False_shift <= shift_left(c_40_6_0_False_resize, 0);
  c_40_15_4_False_resize <= resize(c_15, 23);
  c_40_15_4_False_shift <= shift_left(c_40_15_4_False_resize, 4);
  with config_select_4 select c_40_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_6_0_False_shift;
        when others => c_40 <= c_40_15_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 41 and associated fundamentals [[896], [831], [1]]
  c_41_10_7_False_resize <= resize(c_10, 26);
  c_41_10_7_False_shift <= shift_left(c_41_10_7_False_resize, 7);
  c_41_14_0_False_resize <= c_14;
  c_41_14_0_False_shift <= shift_left(c_41_14_0_False_resize, 0);
  c_41_10_0_False_resize <= resize(c_10, 26);
  c_41_10_0_False_shift <= shift_left(c_41_10_0_False_resize, 0);
  with config_select_4 select c_41_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_10_7_False_shift;
        when "01" => c_41 <= c_41_14_0_False_shift;
        when others => c_41 <= c_41_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 42 and associated fundamentals [[898], [607], [157]]
  with config_select_5 select c_42_sub_sel_left <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  with config_select_5 select c_42_sub_sel_right <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 26,
      w_o => 26,
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
      sub_a_i => c_42_sub_sel_left,
      sub_b_i => c_42_sub_sel_right,
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
  -- node of type 'mux' in stage 4 with id 43 and associated fundamentals [[7], [1], [448]]
  c_43_15_6_False_resize <= resize(c_15, 25);
  c_43_15_6_False_shift <= shift_left(c_43_15_6_False_resize, 6);
  c_43_10_0_False_resize <= resize(c_10, 25);
  c_43_10_0_False_shift <= shift_left(c_43_10_0_False_resize, 0);
  with config_select_4 select c_43_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_15_6_False_shift;
        when others => c_43 <= c_43_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[119], [32], [7]]
  c_44_12_0_False_resize <= c_12;
  c_44_12_0_False_shift <= shift_left(c_44_12_0_False_resize, 0);
  c_44_15_0_False_resize <= resize(c_15, 23);
  c_44_15_0_False_shift <= shift_left(c_44_15_0_False_resize, 0);
  c_44_10_5_False_resize <= resize(c_10, 23);
  c_44_10_5_False_shift <= shift_left(c_44_10_5_False_resize, 5);
  with config_select_4 select c_44_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_12_0_False_shift;
        when "01" => c_44 <= c_44_15_0_False_shift;
        when others => c_44 <= c_44_10_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 45 and associated fundamentals [[966], [254], [840]]
  with config_select_5 select c_45_sub_sel_left <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  with config_select_5 select c_45_sub_sel_right <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_45_sub_sel_left,
      sub_b_i => c_45_sub_sel_right,
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
  -- node of type 'output' in stage 5 with id 46 and associated fundamentals [[175], [851], [440]]
  c_46_resize <= c_36;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 5 with id 47 and associated fundamentals [[966], [254], [840]]
  c_47_resize <= c_45;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 5 with id 48 and associated fundamentals [[107], [635], [811]]
  c_48_resize <= c_27;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 5 with id 49 and associated fundamentals [[898], [607], [157]]
  c_49_resize <= c_42;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 5 with id 50 and associated fundamentals [[278], [873], [8]]
  c_50_resize <= c_33;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 5 with id 51 and associated fundamentals [[137], [197], [804]]
  c_51_resize <= c_30;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'output' in stage 5 with id 52 and associated fundamentals [[456], [119], [309]]
  c_52_resize <= c_21;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'output' in stage 5 with id 53 and associated fundamentals [[418], [526], [668]]
  c_53_resize <= c_39;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'output' in stage 5 with id 54 and associated fundamentals [[69], [144], [174]]
  c_54_resize <= c_24;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'output' in stage 5 with id 55 and associated fundamentals [[46], [630], [945]]
  c_55_resize <= c_18;
  c_55 <= shift_left(c_55_resize, 0);
end architecture;

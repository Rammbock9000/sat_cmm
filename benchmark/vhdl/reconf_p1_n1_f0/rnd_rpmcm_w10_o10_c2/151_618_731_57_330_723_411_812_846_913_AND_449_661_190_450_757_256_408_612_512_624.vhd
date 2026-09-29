library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(24 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(24 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_i0_resize: signed(21 downto 0);
  signal c_1_i1_resize: signed(21 downto 0);
  signal c_1_i0_shift: signed(21 downto 0);
  signal c_1_i1_shift: signed(21 downto 0);
  signal c_1_arith: signed(21 downto 0);
  signal c_1_oshift: signed(21 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(24 downto 0);
  signal c_3_i0_resize: signed(24 downto 0);
  signal c_3_i1_resize: signed(24 downto 0);
  signal c_3_i0_shift: signed(24 downto 0);
  signal c_3_i1_shift: signed(24 downto 0);
  signal c_3_arith: signed(24 downto 0);
  signal c_3_oshift: signed(24 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(21 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(15 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_8_i0_resize: signed(19 downto 0);
  signal c_8_i1_resize: signed(19 downto 0);
  signal c_8_i0_shift: signed(19 downto 0);
  signal c_8_i1_shift: signed(19 downto 0);
  signal c_8_arith: signed(19 downto 0);
  signal c_8_oshift: signed(19 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(20 downto 0);
  signal c_9_0_5_False_resize: signed(20 downto 0);
  signal c_9_0_5_False_shift: signed(20 downto 0);
  signal c_9_0_0_False_resize: signed(20 downto 0);
  signal c_9_0_0_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(21 downto 0);
  signal c_11_8_0_False_resize: signed(21 downto 0);
  signal c_11_8_0_False_shift: signed(21 downto 0);
  signal c_11_10_1_False_resize: signed(21 downto 0);
  signal c_11_10_1_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_10_0_False_resize: signed(22 downto 0);
  signal c_12_10_0_False_shift: signed(22 downto 0);
  signal c_12_8_2_False_resize: signed(22 downto 0);
  signal c_12_8_2_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(18 downto 0);
  signal c_14_i0_resize: signed(18 downto 0);
  signal c_14_i1_resize: signed(18 downto 0);
  signal c_14_i0_shift: signed(18 downto 0);
  signal c_14_i1_shift: signed(18 downto 0);
  signal c_14_arith: signed(18 downto 0);
  signal c_14_oshift: signed(18 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(19 downto 0);
  signal c_15_i0_resize: signed(19 downto 0);
  signal c_15_i1_resize: signed(19 downto 0);
  signal c_15_i0_shift: signed(19 downto 0);
  signal c_15_i1_shift: signed(19 downto 0);
  signal c_15_arith: signed(19 downto 0);
  signal c_15_oshift: signed(19 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(19 downto 0);
  signal c_16_15_0_False_resize: signed(19 downto 0);
  signal c_16_15_0_False_shift: signed(19 downto 0);
  signal c_16_15_1_False_resize: signed(19 downto 0);
  signal c_16_15_1_False_shift: signed(19 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(20 downto 0);
  signal c_18_i0_resize: signed(20 downto 0);
  signal c_18_i1_resize: signed(20 downto 0);
  signal c_18_i0_shift: signed(20 downto 0);
  signal c_18_i1_shift: signed(20 downto 0);
  signal c_18_arith: signed(20 downto 0);
  signal c_18_oshift: signed(20 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_0_6_False_resize: signed(21 downto 0);
  signal c_19_0_6_False_shift: signed(21 downto 0);
  signal c_19_0_0_False_resize: signed(21 downto 0);
  signal c_19_0_0_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_i0_resize: signed(22 downto 0);
  signal c_20_i1_resize: signed(22 downto 0);
  signal c_20_i0_shift: signed(22 downto 0);
  signal c_20_i1_shift: signed(22 downto 0);
  signal c_20_arith: signed(22 downto 0);
  signal c_20_oshift: signed(22 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_0_0_False_resize: signed(22 downto 0);
  signal c_21_0_0_False_shift: signed(22 downto 0);
  signal c_21_0_7_False_resize: signed(22 downto 0);
  signal c_21_0_7_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(22 downto 0);
  signal c_23_15_4_False_resize: signed(22 downto 0);
  signal c_23_15_4_False_shift: signed(22 downto 0);
  signal c_23_18_0_False_resize: signed(22 downto 0);
  signal c_23_18_0_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_i0_resize: signed(24 downto 0);
  signal c_24_i1_resize: signed(24 downto 0);
  signal c_24_i0_shift: signed(24 downto 0);
  signal c_24_i1_shift: signed(24 downto 0);
  signal c_24_arith: signed(24 downto 0);
  signal c_24_oshift: signed(24 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(24 downto 0);
  signal c_25_0_0_False_resize: signed(24 downto 0);
  signal c_25_0_0_False_shift: signed(24 downto 0);
  signal c_25_0_9_False_resize: signed(24 downto 0);
  signal c_25_0_9_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(26 downto 0);
  signal c_26_i0_resize: signed(26 downto 0);
  signal c_26_i1_resize: signed(26 downto 0);
  signal c_26_i0_shift: signed(26 downto 0);
  signal c_26_i1_shift: signed(26 downto 0);
  signal c_26_arith: signed(26 downto 0);
  signal c_26_oshift: signed(26 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(24 downto 0);
  signal c_27_20_4_False_resize: signed(24 downto 0);
  signal c_27_20_4_False_shift: signed(24 downto 0);
  signal c_27_10_0_False_resize: signed(24 downto 0);
  signal c_27_10_0_False_shift: signed(24 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_10_0_False_resize: signed(24 downto 0);
  signal c_28_10_0_False_shift: signed(24 downto 0);
  signal c_28_10_2_False_resize: signed(24 downto 0);
  signal c_28_10_2_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_i0_resize: signed(25 downto 0);
  signal c_29_i1_resize: signed(25 downto 0);
  signal c_29_i0_shift: signed(25 downto 0);
  signal c_29_i1_shift: signed(25 downto 0);
  signal c_29_arith: signed(25 downto 0);
  signal c_29_oshift: signed(25 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_30_1_1_False_resize: signed(21 downto 0);
  signal c_30_1_1_False_shift: signed(21 downto 0);
  signal c_30_4_0_False_resize: signed(21 downto 0);
  signal c_30_4_0_False_shift: signed(21 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_i0_resize: signed(25 downto 0);
  signal c_31_i1_resize: signed(25 downto 0);
  signal c_31_i0_shift: signed(25 downto 0);
  signal c_31_i1_shift: signed(25 downto 0);
  signal c_31_arith: signed(25 downto 0);
  signal c_31_oshift: signed(25 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_8_8_False_resize: signed(25 downto 0);
  signal c_32_8_8_False_shift: signed(25 downto 0);
  signal c_32_10_0_False_resize: signed(25 downto 0);
  signal c_32_10_0_False_shift: signed(25 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(25 downto 0);
  signal c_33_i1_resize: signed(25 downto 0);
  signal c_33_i0_shift: signed(25 downto 0);
  signal c_33_i1_shift: signed(25 downto 0);
  signal c_33_arith: signed(25 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(23 downto 0);
  signal c_34_15_0_False_resize: signed(23 downto 0);
  signal c_34_15_0_False_shift: signed(23 downto 0);
  signal c_34_4_2_False_resize: signed(23 downto 0);
  signal c_34_4_2_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_i0_resize: signed(25 downto 0);
  signal c_35_i1_resize: signed(25 downto 0);
  signal c_35_i0_shift: signed(25 downto 0);
  signal c_35_i1_shift: signed(25 downto 0);
  signal c_35_arith: signed(25 downto 0);
  signal c_35_oshift: signed(25 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(21 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(26 downto 0);
  signal c_37_i1_resize: signed(26 downto 0);
  signal c_37_i0_shift: signed(26 downto 0);
  signal c_37_i1_shift: signed(26 downto 0);
  signal c_37_arith: signed(26 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_38: signed(20 downto 0);
  signal c_38_4_0_False_resize: signed(20 downto 0);
  signal c_38_4_0_False_shift: signed(20 downto 0);
  signal c_38_18_0_False_resize: signed(20 downto 0);
  signal c_38_18_0_False_shift: signed(20 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_39_i0_resize: signed(24 downto 0);
  signal c_39_i1_resize: signed(24 downto 0);
  signal c_39_i0_shift: signed(24 downto 0);
  signal c_39_i1_shift: signed(24 downto 0);
  signal c_39_arith: signed(24 downto 0);
  signal c_39_oshift: signed(24 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(21 downto 0);
  signal c_40_4_0_False_resize: signed(21 downto 0);
  signal c_40_4_0_False_shift: signed(21 downto 0);
  signal c_40_18_1_False_resize: signed(21 downto 0);
  signal c_40_18_1_False_shift: signed(21 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_i0_resize: signed(23 downto 0);
  signal c_41_i1_resize: signed(23 downto 0);
  signal c_41_i0_shift: signed(23 downto 0);
  signal c_41_i1_shift: signed(23 downto 0);
  signal c_41_arith: signed(23 downto 0);
  signal c_41_oshift: signed(23 downto 0);
  signal c_41_sub_sel: std_logic;
  signal c_42: signed(24 downto 0);
  signal c_42_39_0_False_resize: signed(24 downto 0);
  signal c_42_39_0_False_shift: signed(24 downto 0);
  signal c_42_41_0_False_resize: signed(24 downto 0);
  signal c_42_41_0_False_shift: signed(24 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_43_resize: signed(24 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_resize: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_47_39_0_False_resize: signed(24 downto 0);
  signal c_47_39_0_False_shift: signed(24 downto 0);
  signal c_47_17_1_False_resize: signed(24 downto 0);
  signal c_47_17_1_False_shift: signed(24 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_resize: signed(24 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_51_17_0_False_resize: signed(24 downto 0);
  signal c_51_17_0_False_shift: signed(24 downto 0);
  signal c_51_37_3_False_resize: signed(24 downto 0);
  signal c_51_37_3_False_shift: signed(24 downto 0);
  signal c_51_sel: std_logic_vector(0 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_52_resize: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_53_24_0_False_resize: signed(24 downto 0);
  signal c_53_24_0_False_shift: signed(24 downto 0);
  signal c_53_41_1_False_resize: signed(24 downto 0);
  signal c_53_41_1_False_shift: signed(24 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_resize: signed(25 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_55_6_0_False_resize: signed(24 downto 0);
  signal c_55_6_0_False_shift: signed(24 downto 0);
  signal c_55_24_6_False_resize: signed(24 downto 0);
  signal c_55_24_6_False_shift: signed(24 downto 0);
  signal c_55_sel: std_logic_vector(0 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_resize: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_6_4_False_resize: signed(25 downto 0);
  signal c_57_6_4_False_shift: signed(25 downto 0);
  signal c_57_37_0_False_resize: signed(25 downto 0);
  signal c_57_37_0_False_shift: signed(25 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_resize: signed(25 downto 0);
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
  -- output node 0 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_43);
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
  -- output node 3 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 4 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 5 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 6 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 7 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 8 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_56);
    end if;
  end process;
  -- output node 9 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_58);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[30], [34]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[8], [1]]
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[392], [-72]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 25,
      s_x_i => 6,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 4 and associated fundamentals [[-31], [33]]
  with config_select_1 select c_4_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
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
      sub_i => c_4_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[-31], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[423], [-39]]
  with config_select_3 select c_6_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
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
      x_i => c_3,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 7 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[12], [-3]]
  with config_select_2 select c_8_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_8_sub_sel,
      x_i => c_2,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[1], [32]]
  c_9_0_5_False_resize <= resize(c_0, 21);
  c_9_0_5_False_shift <= shift_left(c_9_0_5_False_resize, 5);
  c_9_0_0_False_resize <= resize(c_0, 21);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  with config_select_1 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_0_5_False_shift;
        when others => c_9 <= c_9_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 10 and associated fundamentals [[-27], [-95]]
  with config_select_2 select c_10_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_10_sub_sel,
      x_i => c_4,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[-54], [-3]]
  c_11_8_0_False_resize <= resize(c_8, 22);
  c_11_8_0_False_shift <= shift_left(c_11_8_0_False_resize, 0);
  c_11_10_1_False_resize <= c_10(21 downto 0);
  c_11_10_1_False_shift <= shift_left(c_11_10_1_False_resize, 1);
  with config_select_3 select c_11_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_8_0_False_shift;
        when others => c_11 <= c_11_10_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[48], [-95]]
  c_12_10_0_False_resize <= c_10;
  c_12_10_0_False_shift <= shift_left(c_12_10_0_False_resize, 0);
  c_12_8_2_False_resize <= resize(c_8, 23);
  c_12_8_2_False_shift <= shift_left(c_12_8_2_False_resize, 2);
  with config_select_3 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_10_0_False_shift;
        when others => c_12 <= c_12_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[330], [757]]
  with config_select_4 select c_13_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 14 and associated fundamentals [[6], [2]]
  with config_select_1 select c_14_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_14_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 15 and associated fundamentals [[6], [10]]
  with config_select_1 select c_15_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 3,
      s_y_i => 1,
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
      c_15 <= c_15_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[12], [10]]
  c_16_15_0_False_resize <= c_15;
  c_16_15_0_False_shift <= shift_left(c_16_15_0_False_resize, 0);
  c_16_15_1_False_resize <= c_15;
  c_16_15_1_False_shift <= shift_left(c_16_15_1_False_resize, 1);
  with config_select_2 select c_16_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_15_0_False_shift;
        when others => c_16 <= c_16_15_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 17 and associated fundamentals [[411], [225]]
  with config_select_3 select c_17_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
      w_o => 25,
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
      sub_i => c_17_sub_sel,
      x_i => c_16,
      y_i => c_10,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 18 and associated fundamentals [[-31], [-31]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 0,
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
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 19 and associated fundamentals [[1], [64]]
  c_19_0_6_False_resize <= resize(c_0, 22);
  c_19_0_6_False_shift <= shift_left(c_19_0_6_False_resize, 6);
  c_19_0_0_False_resize <= resize(c_0, 22);
  c_19_0_0_False_shift <= shift_left(c_19_0_0_False_resize, 0);
  with config_select_1 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_0_6_False_shift;
        when others => c_19 <= c_19_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 20 and associated fundamentals [[22], [-120]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 23,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_14,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 21 and associated fundamentals [[128], [1]]
  c_21_0_0_False_resize <= resize(c_0, 23);
  c_21_0_0_False_shift <= shift_left(c_21_0_0_False_resize, 0);
  c_21_0_7_False_resize <= resize(c_0, 23);
  c_21_0_7_False_shift <= shift_left(c_21_0_7_False_resize, 7);
  with config_select_1 select c_21_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_0_0_False_shift;
        when others => c_21 <= c_21_0_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 22 and associated fundamentals [[624], [529]]
  with config_select_2 select c_22_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 26,
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
      sub_i => c_22_sub_sel,
      x_i => c_21,
      y_i => c_4,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 23 and associated fundamentals [[96], [-31]]
  c_23_15_4_False_resize <= resize(c_15, 23);
  c_23_15_4_False_shift <= shift_left(c_23_15_4_False_resize, 4);
  c_23_18_0_False_resize <= resize(c_18, 23);
  c_23_18_0_False_shift <= shift_left(c_23_18_0_False_resize, 0);
  with config_select_2 select c_23_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_15_4_False_shift;
        when others => c_23 <= c_23_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 24 and associated fundamentals [[406], [4]]
  with config_select_3 select c_24_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 25,
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
      sub_i => c_24_sub_sel,
      x_i => c_20,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 25 and associated fundamentals [[512], [1]]
  c_25_0_0_False_resize <= resize(c_0, 25);
  c_25_0_0_False_shift <= shift_left(c_25_0_0_False_resize, 0);
  c_25_0_9_False_resize <= resize(c_0, 25);
  c_25_0_9_False_shift <= shift_left(c_25_0_9_False_resize, 9);
  with config_select_1 select c_25_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_0_0_False_shift;
        when others => c_25 <= c_25_0_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 26 and associated fundamentals [[-1856], [68]]
  with config_select_2 select c_26_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 25,
      w_o => 27,
      s_x_i => 5,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_26_sub_sel,
      x_i => c_14,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[352], [-95]]
  c_27_20_4_False_resize <= resize(c_20, 25);
  c_27_20_4_False_shift <= shift_left(c_27_20_4_False_resize, 4);
  c_27_10_0_False_resize <= resize(c_10, 25);
  c_27_10_0_False_shift <= shift_left(c_27_10_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_20_4_False_shift;
        when others => c_27 <= c_27_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[-27], [-380]]
  c_28_10_0_False_resize <= resize(c_10, 25);
  c_28_10_0_False_shift <= shift_left(c_28_10_0_False_resize, 0);
  c_28_10_2_False_resize <= resize(c_10, 25);
  c_28_10_2_False_shift <= shift_left(c_28_10_2_False_resize, 2);
  with config_select_3 select c_28_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_10_0_False_shift;
        when others => c_28 <= c_28_10_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 29 and associated fundamentals [[731], [190]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 30 and associated fundamentals [[60], [33]]
  c_30_1_1_False_resize <= c_1;
  c_30_1_1_False_shift <= shift_left(c_30_1_1_False_resize, 1);
  c_30_4_0_False_resize <= c_4;
  c_30_4_0_False_shift <= shift_left(c_30_4_0_False_resize, 0);
  with config_select_2 select c_30_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_1_1_False_shift;
        when others => c_30 <= c_30_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 31 and associated fundamentals [[696], [1024]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_30,
      y_i => c_10,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[-27], [-768]]
  c_32_8_8_False_resize <= resize(c_8, 26);
  c_32_8_8_False_shift <= shift_left(c_32_8_8_False_resize, 8);
  c_32_10_0_False_resize <= resize(c_10, 26);
  c_32_10_0_False_shift <= shift_left(c_32_10_0_False_resize, 0);
  with config_select_3 select c_32_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_8_8_False_shift;
        when others => c_32 <= c_32_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 33 and associated fundamentals [[723], [256]]
  with config_select_4 select c_33_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 26,
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
  -- node of type 'mux' in stage 2 with id 34 and associated fundamentals [[6], [132]]
  c_34_15_0_False_resize <= resize(c_15, 24);
  c_34_15_0_False_shift <= shift_left(c_34_15_0_False_resize, 0);
  c_34_4_2_False_resize <= resize(c_4, 24);
  c_34_4_2_False_shift <= shift_left(c_34_4_2_False_resize, 2);
  with config_select_2 select c_34_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_15_0_False_shift;
        when others => c_34 <= c_34_4_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 35 and associated fundamentals [[618], [661]]
  with config_select_3 select c_35_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      sub_i => c_35_sub_sel,
      x_i => c_22,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 36 and associated fundamentals [[30], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 37 and associated fundamentals [[-913], [51]]
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 27,
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
      x_i => c_36,
      y_i => c_26,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 38 and associated fundamentals [[-31], [-31]]
  c_38_4_0_False_resize <= c_4(20 downto 0);
  c_38_4_0_False_shift <= shift_left(c_38_4_0_False_resize, 0);
  c_38_18_0_False_resize <= c_18;
  c_38_18_0_False_shift <= shift_left(c_38_18_0_False_resize, 0);
  with config_select_2 select c_38_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_4_0_False_shift;
        when others => c_38 <= c_38_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 39 and associated fundamentals [[57], [-449]]
  with config_select_3 select c_39_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      sub_i => c_39_sub_sel,
      x_i => c_20,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 40 and associated fundamentals [[-31], [-62]]
  c_40_4_0_False_resize <= c_4;
  c_40_4_0_False_shift <= shift_left(c_40_4_0_False_resize, 0);
  c_40_18_1_False_resize <= resize(c_18, 22);
  c_40_18_1_False_shift <= shift_left(c_40_18_1_False_resize, 1);
  with config_select_2 select c_40_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_4_0_False_shift;
        when others => c_40 <= c_40_18_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 41 and associated fundamentals [[-151], [153]]
  with config_select_3 select c_41_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_41_sub_sel,
      x_i => c_10,
      y_i => c_40,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[-151], [-449]]
  c_42_39_0_False_resize <= c_39;
  c_42_39_0_False_shift <= shift_left(c_42_39_0_False_resize, 0);
  c_42_41_0_False_resize <= resize(c_41, 25);
  c_42_41_0_False_shift <= shift_left(c_42_41_0_False_resize, 0);
  with config_select_4 select c_42_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_39_0_False_shift;
        when others => c_42 <= c_42_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[151], [449]]
  c_43_resize <= c_42;
  c_43 <= -shift_left(c_43_resize, 0);
  -- node of type 'register' in stage 4 with id 44 and associated fundamentals [[618], [661]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_35 & "";
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[618], [661]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[731], [190]]
  c_46_resize <= c_29;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'mux' in stage 4 with id 47 and associated fundamentals [[57], [450]]
  c_47_39_0_False_resize <= c_39;
  c_47_39_0_False_shift <= shift_left(c_47_39_0_False_resize, 0);
  c_47_17_1_False_resize <= c_17;
  c_47_17_1_False_shift <= shift_left(c_47_17_1_False_resize, 1);
  with config_select_4 select c_47_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_39_0_False_shift;
        when others => c_47 <= c_47_17_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[57], [450]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 4 with id 49 and associated fundamentals [[330], [757]]
  c_49_resize <= c_13;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 4 with id 50 and associated fundamentals [[723], [256]]
  c_50_resize <= c_33;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'mux' in stage 4 with id 51 and associated fundamentals [[411], [408]]
  c_51_17_0_False_resize <= c_17;
  c_51_17_0_False_shift <= shift_left(c_51_17_0_False_resize, 0);
  c_51_37_3_False_resize <= c_37(24 downto 0);
  c_51_37_3_False_shift <= shift_left(c_51_37_3_False_resize, 3);
  with config_select_4 select c_51_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "0" => c_51 <= c_51_17_0_False_shift;
        when others => c_51 <= c_51_37_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 52 and associated fundamentals [[411], [408]]
  c_52_resize <= c_51;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'mux' in stage 4 with id 53 and associated fundamentals [[406], [306]]
  c_53_24_0_False_resize <= c_24;
  c_53_24_0_False_shift <= shift_left(c_53_24_0_False_resize, 0);
  c_53_41_1_False_resize <= resize(c_41, 25);
  c_53_41_1_False_shift <= shift_left(c_53_41_1_False_resize, 1);
  with config_select_4 select c_53_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_24_0_False_shift;
        when others => c_53 <= c_53_41_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 54 and associated fundamentals [[812], [612]]
  c_54_resize <= resize(c_53, 26);
  c_54 <= shift_left(c_54_resize, 1);
  -- node of type 'mux' in stage 4 with id 55 and associated fundamentals [[423], [256]]
  c_55_6_0_False_resize <= c_6;
  c_55_6_0_False_shift <= shift_left(c_55_6_0_False_resize, 0);
  c_55_24_6_False_resize <= c_24;
  c_55_24_6_False_shift <= shift_left(c_55_24_6_False_resize, 6);
  with config_select_4 select c_55_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "0" => c_55 <= c_55_6_0_False_shift;
        when others => c_55 <= c_55_24_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 56 and associated fundamentals [[846], [512]]
  c_56_resize <= resize(c_55, 26);
  c_56 <= shift_left(c_56_resize, 1);
  -- node of type 'mux' in stage 4 with id 57 and associated fundamentals [[-913], [-624]]
  c_57_6_4_False_resize <= resize(c_6, 26);
  c_57_6_4_False_shift <= shift_left(c_57_6_4_False_resize, 4);
  c_57_37_0_False_resize <= c_37;
  c_57_37_0_False_shift <= shift_left(c_57_37_0_False_resize, 0);
  with config_select_4 select c_57_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_6_4_False_shift;
        when others => c_57 <= c_57_37_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 58 and associated fundamentals [[913], [624]]
  c_58_resize <= c_57;
  c_58 <= -shift_left(c_58_resize, 0);
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(23 downto 0);
    y_9: out std_logic_vector(22 downto 0);
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
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(22 downto 0);
  signal c_2_0_7_False_resize: signed(22 downto 0);
  signal c_2_0_7_False_shift: signed(22 downto 0);
  signal c_2_0_0_False_resize: signed(22 downto 0);
  signal c_2_0_0_False_shift: signed(22 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(17 downto 0);
  signal c_4_i0_resize: signed(17 downto 0);
  signal c_4_i1_resize: signed(17 downto 0);
  signal c_4_i0_shift: signed(17 downto 0);
  signal c_4_i1_shift: signed(17 downto 0);
  signal c_4_arith: signed(17 downto 0);
  signal c_4_oshift: signed(17 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(21 downto 0);
  signal c_5_1_4_False_resize: signed(21 downto 0);
  signal c_5_1_4_False_shift: signed(21 downto 0);
  signal c_5_4_0_False_resize: signed(21 downto 0);
  signal c_5_4_0_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_1_0_False_resize: signed(22 downto 0);
  signal c_6_1_0_False_shift: signed(22 downto 0);
  signal c_6_4_5_False_resize: signed(22 downto 0);
  signal c_6_4_5_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_9_4_1_False_resize: signed(18 downto 0);
  signal c_9_4_1_False_shift: signed(18 downto 0);
  signal c_9_4_0_False_resize: signed(18 downto 0);
  signal c_9_4_0_False_shift: signed(18 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_10_4_0_False_resize: signed(19 downto 0);
  signal c_10_4_0_False_shift: signed(19 downto 0);
  signal c_10_4_4_False_resize: signed(19 downto 0);
  signal c_10_4_4_False_shift: signed(19 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(19 downto 0);
  signal c_12_1_1_False_resize: signed(19 downto 0);
  signal c_12_1_1_False_shift: signed(19 downto 0);
  signal c_12_4_0_False_resize: signed(19 downto 0);
  signal c_12_4_0_False_shift: signed(19 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(17 downto 0);
  signal c_13_4_0_False_resize: signed(17 downto 0);
  signal c_13_4_0_False_shift: signed(17 downto 0);
  signal c_13_4_1_False_resize: signed(17 downto 0);
  signal c_13_4_1_False_shift: signed(17 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(15 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_16_i0_resize: signed(19 downto 0);
  signal c_16_i1_resize: signed(19 downto 0);
  signal c_16_i0_shift: signed(19 downto 0);
  signal c_16_i1_shift: signed(19 downto 0);
  signal c_16_arith: signed(19 downto 0);
  signal c_16_oshift: signed(19 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(17 downto 0);
  signal c_17_4_0_False_resize: signed(17 downto 0);
  signal c_17_4_0_False_shift: signed(17 downto 0);
  signal c_17_1_0_False_resize: signed(17 downto 0);
  signal c_17_1_0_False_shift: signed(17 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(24 downto 0);
  signal c_19_16_0_False_resize: signed(24 downto 0);
  signal c_19_16_0_False_shift: signed(24 downto 0);
  signal c_19_3_3_False_resize: signed(24 downto 0);
  signal c_19_3_3_False_shift: signed(24 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_21_1_0_False_resize: signed(19 downto 0);
  signal c_21_1_0_False_shift: signed(19 downto 0);
  signal c_21_4_4_False_resize: signed(19 downto 0);
  signal c_21_4_4_False_shift: signed(19 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_24: signed(20 downto 0);
  signal c_24_1_2_False_resize: signed(20 downto 0);
  signal c_24_1_2_False_shift: signed(20 downto 0);
  signal c_24_1_0_False_resize: signed(20 downto 0);
  signal c_24_1_0_False_shift: signed(20 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_4_0_False_resize: signed(21 downto 0);
  signal c_25_4_0_False_shift: signed(21 downto 0);
  signal c_25_4_6_False_resize: signed(21 downto 0);
  signal c_25_4_6_False_shift: signed(21 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(20 downto 0);
  signal c_27_1_3_False_resize: signed(20 downto 0);
  signal c_27_1_3_False_shift: signed(20 downto 0);
  signal c_27_1_0_False_resize: signed(20 downto 0);
  signal c_27_1_0_False_shift: signed(20 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_i0_resize: signed(22 downto 0);
  signal c_28_i1_resize: signed(22 downto 0);
  signal c_28_i0_shift: signed(22 downto 0);
  signal c_28_i1_shift: signed(22 downto 0);
  signal c_28_arith: signed(22 downto 0);
  signal c_28_oshift: signed(22 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(23 downto 0);
  signal c_29_11_2_False_resize: signed(23 downto 0);
  signal c_29_11_2_False_shift: signed(23 downto 0);
  signal c_29_18_0_False_resize: signed(23 downto 0);
  signal c_29_18_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_resize: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_28_1_False_resize: signed(23 downto 0);
  signal c_31_28_1_False_shift: signed(23 downto 0);
  signal c_31_18_0_False_resize: signed(23 downto 0);
  signal c_31_18_0_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_resize: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_22_0_False_resize: signed(23 downto 0);
  signal c_33_22_0_False_shift: signed(23 downto 0);
  signal c_33_14_0_False_resize: signed(23 downto 0);
  signal c_33_14_0_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_resize: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_11_0_False_resize: signed(23 downto 0);
  signal c_35_11_0_False_shift: signed(23 downto 0);
  signal c_35_7_0_False_resize: signed(23 downto 0);
  signal c_35_7_0_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_23_0_False_resize: signed(23 downto 0);
  signal c_37_23_0_False_shift: signed(23 downto 0);
  signal c_37_26_0_False_resize: signed(23 downto 0);
  signal c_37_26_0_False_shift: signed(23 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_7_1_False_resize: signed(23 downto 0);
  signal c_39_7_1_False_shift: signed(23 downto 0);
  signal c_39_8_0_False_resize: signed(23 downto 0);
  signal c_39_8_0_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_14_0_False_resize: signed(23 downto 0);
  signal c_42_14_0_False_shift: signed(23 downto 0);
  signal c_42_23_0_False_resize: signed(23 downto 0);
  signal c_42_23_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_22_0_False_resize: signed(23 downto 0);
  signal c_44_22_0_False_shift: signed(23 downto 0);
  signal c_44_26_0_False_resize: signed(23 downto 0);
  signal c_44_26_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_46_28_0_False_resize: signed(22 downto 0);
  signal c_46_28_0_False_shift: signed(22 downto 0);
  signal c_46_8_0_False_resize: signed(22 downto 0);
  signal c_46_8_0_False_shift: signed(22 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_47_resize: signed(22 downto 0);
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
  -- output node 0 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 1 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 2 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_34);
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
  -- output node 6 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 7 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 8 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 9 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_47);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_1_sub_sel,
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [128]]
  c_2_0_7_False_resize <= resize(c_0, 23);
  c_2_0_7_False_shift <= shift_left(c_2_0_7_False_resize, 7);
  c_2_0_0_False_resize <= resize(c_0, 23);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_7_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[41], [104]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
      w_o => 23,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 4 and associated fundamentals [[3], [1]]
  with config_select_1 select c_4_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[3], [48]]
  c_5_1_4_False_resize <= resize(c_1, 22);
  c_5_1_4_False_shift <= shift_left(c_5_1_4_False_resize, 4);
  c_5_4_0_False_resize <= resize(c_4, 22);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_4_False_shift;
        when others => c_5 <= c_5_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[96], [3]]
  c_6_1_0_False_resize <= resize(c_1, 23);
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  c_6_4_5_False_resize <= resize(c_4, 23);
  c_6_4_5_False_shift <= shift_left(c_6_4_5_False_resize, 5);
  with config_select_2 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_1_0_False_shift;
        when others => c_6 <= c_6_4_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[-189], [54]]
  with config_select_3 select c_7_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 8 and associated fundamentals [[233], [110]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 24,
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
      x_i => c_3,
      y_i => c_6,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[6], [1]]
  c_9_4_1_False_resize <= resize(c_4, 19);
  c_9_4_1_False_shift <= shift_left(c_9_4_1_False_resize, 1);
  c_9_4_0_False_resize <= resize(c_4, 19);
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_4_1_False_shift;
        when others => c_9 <= c_9_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[3], [16]]
  c_10_4_0_False_resize <= resize(c_4, 20);
  c_10_4_0_False_shift <= shift_left(c_10_4_0_False_resize, 0);
  c_10_4_4_False_resize <= resize(c_4, 20);
  c_10_4_4_False_shift <= shift_left(c_10_4_4_False_resize, 4);
  with config_select_2 select c_10_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_4_0_False_shift;
        when others => c_10 <= c_10_4_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 11 and associated fundamentals [[54], [-255]]
  with config_select_3 select c_11_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[10], [1]]
  c_12_1_1_False_resize <= resize(c_1, 20);
  c_12_1_1_False_shift <= shift_left(c_12_1_1_False_resize, 1);
  c_12_4_0_False_resize <= resize(c_4, 20);
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  with config_select_2 select c_12_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_1_1_False_shift;
        when others => c_12 <= c_12_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[3], [2]]
  c_13_4_0_False_resize <= c_4;
  c_13_4_0_False_shift <= shift_left(c_13_4_0_False_resize, 0);
  c_13_4_1_False_resize <= c_4;
  c_13_4_1_False_shift <= shift_left(c_13_4_1_False_resize, 1);
  with config_select_2 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_4_0_False_shift;
        when others => c_13 <= c_13_4_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 14 and associated fundamentals [[157], [18]]
  with config_select_3 select c_14_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 15 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 16 and associated fundamentals [[11], [5]]
  with config_select_2 select c_16_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_16_sub_sel,
      x_i => c_4,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[3], [3]]
  c_17_4_0_False_resize <= c_4;
  c_17_4_0_False_shift <= shift_left(c_17_4_0_False_resize, 0);
  c_17_1_0_False_resize <= c_1(17 downto 0);
  c_17_1_0_False_shift <= shift_left(c_17_1_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_4_0_False_shift;
        when others => c_17 <= c_17_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 18 and associated fundamentals [[179], [77]]
  with config_select_3 select c_18_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[328], [5]]
  c_19_16_0_False_resize <= resize(c_16, 25);
  c_19_16_0_False_shift <= shift_left(c_19_16_0_False_resize, 0);
  c_19_3_3_False_resize <= resize(c_3, 25);
  c_19_3_3_False_shift <= shift_left(c_19_3_3_False_resize, 3);
  with config_select_3 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_16_0_False_shift;
        when others => c_19 <= c_19_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 20 and associated fundamentals [[139], [59]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
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
      x_i => c_7,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 21 and associated fundamentals [[5], [16]]
  c_21_1_0_False_resize <= resize(c_1, 20);
  c_21_1_0_False_shift <= shift_left(c_21_1_0_False_resize, 0);
  c_21_4_4_False_resize <= resize(c_4, 20);
  c_21_4_4_False_shift <= shift_left(c_21_4_4_False_resize, 4);
  with config_select_2 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_1_0_False_shift;
        when others => c_21 <= c_21_4_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 22 and associated fundamentals [[69], [251]]
  inst_adder_node_22: entity work.adder_node
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
      x_i => c_21,
      y_i => c_16,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 23 and associated fundamentals [[178], [211]]
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 24,
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
      y_i => c_6,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 24 and associated fundamentals [[20], [3]]
  c_24_1_2_False_resize <= resize(c_1, 21);
  c_24_1_2_False_shift <= shift_left(c_24_1_2_False_resize, 2);
  c_24_1_0_False_resize <= resize(c_1, 21);
  c_24_1_0_False_shift <= shift_left(c_24_1_0_False_resize, 0);
  with config_select_2 select c_24_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_1_2_False_shift;
        when others => c_24 <= c_24_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 25 and associated fundamentals [[3], [64]]
  c_25_4_0_False_resize <= resize(c_4, 22);
  c_25_4_0_False_shift <= shift_left(c_25_4_0_False_resize, 0);
  c_25_4_6_False_resize <= resize(c_4, 22);
  c_25_4_6_False_shift <= shift_left(c_25_4_6_False_resize, 6);
  with config_select_2 select c_25_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_4_0_False_shift;
        when others => c_25 <= c_25_4_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 26 and associated fundamentals [[154], [152]]
  with config_select_3 select c_26_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 27 and associated fundamentals [[5], [24]]
  c_27_1_3_False_resize <= resize(c_1, 21);
  c_27_1_3_False_shift <= shift_left(c_27_1_3_False_resize, 3);
  c_27_1_0_False_resize <= resize(c_1, 21);
  c_27_1_0_False_shift <= shift_left(c_27_1_0_False_resize, 0);
  with config_select_2 select c_27_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_1_3_False_shift;
        when others => c_27 <= c_27_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 28 and associated fundamentals [[31], [91]]
  with config_select_3 select c_28_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      sub_i => c_28_sub_sel,
      x_i => c_27,
      y_i => c_16,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[216], [77]]
  c_29_11_2_False_resize <= c_11;
  c_29_11_2_False_shift <= shift_left(c_29_11_2_False_resize, 2);
  c_29_18_0_False_resize <= c_18;
  c_29_18_0_False_shift <= shift_left(c_29_18_0_False_resize, 0);
  with config_select_4 select c_29_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_11_2_False_shift;
        when others => c_29 <= c_29_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 30 and associated fundamentals [[216], [77]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 4 with id 31 and associated fundamentals [[179], [182]]
  c_31_28_1_False_resize <= resize(c_28, 24);
  c_31_28_1_False_shift <= shift_left(c_31_28_1_False_resize, 1);
  c_31_18_0_False_resize <= c_18;
  c_31_18_0_False_shift <= shift_left(c_31_18_0_False_resize, 0);
  with config_select_4 select c_31_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_28_1_False_shift;
        when others => c_31 <= c_31_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 32 and associated fundamentals [[179], [182]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 4 with id 33 and associated fundamentals [[157], [251]]
  c_33_22_0_False_resize <= c_22;
  c_33_22_0_False_shift <= shift_left(c_33_22_0_False_resize, 0);
  c_33_14_0_False_resize <= c_14;
  c_33_14_0_False_shift <= shift_left(c_33_14_0_False_resize, 0);
  with config_select_4 select c_33_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_22_0_False_shift;
        when others => c_33 <= c_33_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 34 and associated fundamentals [[157], [251]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 4 with id 35 and associated fundamentals [[-189], [-255]]
  c_35_11_0_False_resize <= c_11;
  c_35_11_0_False_shift <= shift_left(c_35_11_0_False_resize, 0);
  c_35_7_0_False_resize <= c_7;
  c_35_7_0_False_shift <= shift_left(c_35_7_0_False_resize, 0);
  with config_select_4 select c_35_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_11_0_False_shift;
        when others => c_35 <= c_35_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 36 and associated fundamentals [[189], [255]]
  c_36_resize <= c_35;
  c_36 <= -shift_left(c_36_resize, 0);
  -- node of type 'mux' in stage 4 with id 37 and associated fundamentals [[154], [211]]
  c_37_23_0_False_resize <= c_23;
  c_37_23_0_False_shift <= shift_left(c_37_23_0_False_resize, 0);
  c_37_26_0_False_resize <= c_26;
  c_37_26_0_False_shift <= shift_left(c_37_26_0_False_resize, 0);
  with config_select_4 select c_37_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_23_0_False_shift;
        when others => c_37 <= c_37_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 38 and associated fundamentals [[154], [211]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 4 with id 39 and associated fundamentals [[233], [108]]
  c_39_7_1_False_resize <= c_7;
  c_39_7_1_False_shift <= shift_left(c_39_7_1_False_resize, 1);
  c_39_8_0_False_resize <= c_8;
  c_39_8_0_False_shift <= shift_left(c_39_8_0_False_resize, 0);
  with config_select_4 select c_39_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_7_1_False_shift;
        when others => c_39 <= c_39_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 40 and associated fundamentals [[233], [108]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[139], [59]]
  c_41_resize <= c_20;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[178], [18]]
  c_42_14_0_False_resize <= c_14;
  c_42_14_0_False_shift <= shift_left(c_42_14_0_False_resize, 0);
  c_42_23_0_False_resize <= c_23;
  c_42_23_0_False_shift <= shift_left(c_42_23_0_False_resize, 0);
  with config_select_4 select c_42_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_14_0_False_shift;
        when others => c_42 <= c_42_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[178], [18]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[69], [152]]
  c_44_22_0_False_resize <= c_22;
  c_44_22_0_False_shift <= shift_left(c_44_22_0_False_resize, 0);
  c_44_26_0_False_resize <= c_26;
  c_44_26_0_False_shift <= shift_left(c_44_26_0_False_resize, 0);
  with config_select_4 select c_44_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_22_0_False_shift;
        when others => c_44 <= c_44_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[69], [152]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'mux' in stage 4 with id 46 and associated fundamentals [[31], [110]]
  c_46_28_0_False_resize <= c_28;
  c_46_28_0_False_shift <= shift_left(c_46_28_0_False_resize, 0);
  c_46_8_0_False_resize <= c_8(22 downto 0);
  c_46_8_0_False_shift <= shift_left(c_46_8_0_False_resize, 0);
  with config_select_4 select c_46_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_28_0_False_shift;
        when others => c_46 <= c_46_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[31], [110]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(22 downto 0);
    y_2: out std_logic_vector(22 downto 0);
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
  signal config_select_0: std_logic_vector(0 downto 0);
  signal config_select_1: std_logic_vector(0 downto 0);
  signal config_select_2: std_logic_vector(0 downto 0);
  signal config_select_3: std_logic_vector(0 downto 0);
  signal config_select_4: std_logic_vector(0 downto 0);
  signal config_select_5: std_logic_vector(0 downto 0);
  signal config_select_6: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_4: signed(20 downto 0);
  signal c_4_1_0_False_resize: signed(20 downto 0);
  signal c_4_1_0_False_shift: signed(20 downto 0);
  signal c_4_2_0_False_resize: signed(20 downto 0);
  signal c_4_2_0_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_1_0_False_resize: signed(19 downto 0);
  signal c_5_1_0_False_shift: signed(19 downto 0);
  signal c_5_1_2_False_resize: signed(19 downto 0);
  signal c_5_1_2_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(21 downto 0);
  signal c_7_1_4_False_resize: signed(21 downto 0);
  signal c_7_1_4_False_shift: signed(21 downto 0);
  signal c_7_2_0_False_resize: signed(21 downto 0);
  signal c_7_2_0_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_2_3_False_resize: signed(22 downto 0);
  signal c_8_2_3_False_shift: signed(22 downto 0);
  signal c_8_2_0_False_resize: signed(22 downto 0);
  signal c_8_2_0_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_3_1_False_resize: signed(24 downto 0);
  signal c_10_3_1_False_shift: signed(24 downto 0);
  signal c_10_3_0_False_resize: signed(24 downto 0);
  signal c_10_3_0_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_12: signed(16 downto 0);
  signal c_12_0_1_False_resize: signed(16 downto 0);
  signal c_12_0_1_False_shift: signed(16 downto 0);
  signal c_12_0_0_False_resize: signed(16 downto 0);
  signal c_12_0_0_False_shift: signed(16 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_3_0_False_resize: signed(23 downto 0);
  signal c_15_3_0_False_shift: signed(23 downto 0);
  signal c_15_14_0_False_resize: signed(23 downto 0);
  signal c_15_14_0_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_i0_resize: signed(22 downto 0);
  signal c_16_i1_resize: signed(22 downto 0);
  signal c_16_i0_shift: signed(22 downto 0);
  signal c_16_i1_shift: signed(22 downto 0);
  signal c_16_arith: signed(22 downto 0);
  signal c_16_oshift: signed(22 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_17_1_0_False_resize: signed(19 downto 0);
  signal c_17_1_0_False_shift: signed(19 downto 0);
  signal c_17_2_0_False_resize: signed(19 downto 0);
  signal c_17_2_0_False_shift: signed(19 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(22 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(20 downto 0);
  signal c_19_1_3_False_resize: signed(20 downto 0);
  signal c_19_1_3_False_shift: signed(20 downto 0);
  signal c_19_1_0_False_resize: signed(20 downto 0);
  signal c_19_1_0_False_shift: signed(20 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_21: signed(20 downto 0);
  signal c_21_1_1_False_resize: signed(20 downto 0);
  signal c_21_1_1_False_shift: signed(20 downto 0);
  signal c_21_2_0_False_resize: signed(20 downto 0);
  signal c_21_2_0_False_shift: signed(20 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_i0_resize: signed(22 downto 0);
  signal c_22_i1_resize: signed(22 downto 0);
  signal c_22_i0_shift: signed(22 downto 0);
  signal c_22_i1_shift: signed(22 downto 0);
  signal c_22_arith: signed(22 downto 0);
  signal c_22_oshift: signed(22 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(20 downto 0);
  signal c_24_i0_resize: signed(24 downto 0);
  signal c_24_i1_resize: signed(24 downto 0);
  signal c_24_i0_shift: signed(24 downto 0);
  signal c_24_i1_shift: signed(24 downto 0);
  signal c_24_arith: signed(24 downto 0);
  signal c_24_oshift: signed(20 downto 0);
  signal c_25: signed(18 downto 0);
  signal c_25_1_0_False_resize: signed(18 downto 0);
  signal c_25_1_0_False_shift: signed(18 downto 0);
  signal c_25_1_1_False_resize: signed(18 downto 0);
  signal c_25_1_1_False_shift: signed(18 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(17 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_20_0_False_resize: signed(23 downto 0);
  signal c_28_20_0_False_shift: signed(23 downto 0);
  signal c_28_22_0_False_resize: signed(23 downto 0);
  signal c_28_22_0_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_resize: signed(23 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_30_9_0_False_resize: signed(22 downto 0);
  signal c_30_9_0_False_shift: signed(22 downto 0);
  signal c_30_23_0_False_resize: signed(22 downto 0);
  signal c_30_23_0_False_shift: signed(22 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_resize: signed(22 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_32_27_0_False_resize: signed(21 downto 0);
  signal c_32_27_0_False_shift: signed(21 downto 0);
  signal c_32_6_1_False_resize: signed(21 downto 0);
  signal c_32_6_1_False_shift: signed(21 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_33_resize: signed(22 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_resize: signed(22 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_9_0_False_resize: signed(23 downto 0);
  signal c_35_9_0_False_shift: signed(23 downto 0);
  signal c_35_20_1_False_resize: signed(23 downto 0);
  signal c_35_20_1_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_37_22_0_False_resize: signed(22 downto 0);
  signal c_37_22_0_False_shift: signed(22 downto 0);
  signal c_37_18_0_False_resize: signed(22 downto 0);
  signal c_37_18_0_False_shift: signed(22 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_38_resize: signed(22 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_40_24_2_False_resize: signed(22 downto 0);
  signal c_40_24_2_False_shift: signed(22 downto 0);
  signal c_40_18_0_False_resize: signed(22 downto 0);
  signal c_40_18_0_False_shift: signed(22 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_resize: signed(22 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_23_0_False_resize: signed(23 downto 0);
  signal c_42_23_0_False_shift: signed(23 downto 0);
  signal c_42_6_1_False_resize: signed(23 downto 0);
  signal c_42_6_1_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_27_0_False_resize: signed(23 downto 0);
  signal c_44_27_0_False_shift: signed(23 downto 0);
  signal c_44_24_7_False_resize: signed(23 downto 0);
  signal c_44_24_7_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
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
  -- output node 3 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_34);
    end if;
  end process;
  -- output node 4 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 5 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 6 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 7 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 8 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 9 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_45);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[-1], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[-15], [17]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "0",
    '0' when others;
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
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_2_sub_sel,
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
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[49], [-175]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 6,
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
      c_3 <= c_3_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[-1], [17]]
  c_4_1_0_False_resize <= resize(c_1, 21);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_2_0_False_resize <= c_2;
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_0_False_shift;
        when others => c_4 <= c_4_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[-1], [12]]
  c_5_1_0_False_resize <= resize(c_1, 20);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  c_5_1_2_False_resize <= resize(c_1, 20);
  c_5_1_2_False_shift <= shift_left(c_5_1_2_False_resize, 2);
  with config_select_2 select c_5_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_0_False_shift;
        when others => c_5 <= c_5_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[-6], [-14]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 20,
      s_x_i => 1,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[-15], [48]]
  c_7_1_4_False_resize <= resize(c_1, 22);
  c_7_1_4_False_shift <= shift_left(c_7_1_4_False_resize, 4);
  c_7_2_0_False_resize <= resize(c_2, 22);
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_1_4_False_shift;
        when others => c_7 <= c_7_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[-120], [17]]
  c_8_2_3_False_resize <= resize(c_2, 23);
  c_8_2_3_False_shift <= shift_left(c_8_2_3_False_resize, 3);
  c_8_2_0_False_resize <= resize(c_2, 23);
  c_8_2_0_False_shift <= shift_left(c_8_2_0_False_resize, 0);
  with config_select_2 select c_8_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_2_3_False_shift;
        when others => c_8 <= c_8_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 9 and associated fundamentals [[-150], [113]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[49], [-350]]
  c_10_3_1_False_resize <= resize(c_3, 25);
  c_10_3_1_False_shift <= shift_left(c_10_3_1_False_resize, 1);
  c_10_3_0_False_resize <= resize(c_3, 25);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_3_1_False_shift;
        when others => c_10 <= c_10_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 11 and associated fundamentals [[-101], [-237]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 25,
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
  -- node of type 'mux' in stage 1 with id 12 and associated fundamentals [[1], [2]]
  c_12_0_1_False_resize <= resize(c_0, 17);
  c_12_0_1_False_shift <= shift_left(c_12_0_1_False_resize, 1);
  c_12_0_0_False_resize <= resize(c_0, 17);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  with config_select_1 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_0_1_False_shift;
        when others => c_12 <= c_12_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 13 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 14 and associated fundamentals [[65], [129]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 6,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[49], [129]]
  c_15_3_0_False_resize <= c_3;
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  c_15_14_0_False_resize <= c_14;
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_3_0_False_shift;
        when others => c_15 <= c_15_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 16 and associated fundamentals [[43], [115]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
      w_o => 23,
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
      x_i => c_15,
      y_i => c_6,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[-15], [3]]
  c_17_1_0_False_resize <= resize(c_1, 20);
  c_17_1_0_False_shift <= shift_left(c_17_1_0_False_resize, 0);
  c_17_2_0_False_resize <= c_2(19 downto 0);
  c_17_2_0_False_shift <= shift_left(c_17_2_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_1_0_False_shift;
        when others => c_17 <= c_17_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 18 and associated fundamentals [[17], [89]]
  with config_select_3 select c_18_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 24,
      w_o => 23,
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
      sub_i => c_18_sub_sel,
      x_i => c_17,
      y_i => c_3,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 19 and associated fundamentals [[-1], [24]]
  c_19_1_3_False_resize <= resize(c_1, 21);
  c_19_1_3_False_shift <= shift_left(c_19_1_3_False_resize, 3);
  c_19_1_0_False_resize <= resize(c_1, 21);
  c_19_1_0_False_shift <= shift_left(c_19_1_0_False_resize, 0);
  with config_select_2 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_1_3_False_shift;
        when others => c_19 <= c_19_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 20 and associated fundamentals [[-138], [-66]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 3,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_19,
      y_i => c_14,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 21 and associated fundamentals [[-2], [17]]
  c_21_1_1_False_resize <= resize(c_1, 21);
  c_21_1_1_False_shift <= shift_left(c_21_1_1_False_resize, 1);
  c_21_2_0_False_resize <= c_2;
  c_21_2_0_False_shift <= shift_left(c_21_2_0_False_resize, 0);
  with config_select_2 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_1_1_False_shift;
        when others => c_21 <= c_21_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 22 and associated fundamentals [[41], [-107]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 23,
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
      x_i => c_21,
      y_i => c_3,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 23 and associated fundamentals [[79], [-169]]
  with config_select_3 select c_23_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      x_i => c_3,
      y_i => c_17,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 24 and associated fundamentals [[1], [19]]
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 4,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_14,
      y_i => c_3,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 25 and associated fundamentals [[-1], [6]]
  c_25_1_0_False_resize <= resize(c_1, 19);
  c_25_1_0_False_shift <= shift_left(c_25_1_0_False_resize, 0);
  c_25_1_1_False_resize <= resize(c_1, 19);
  c_25_1_1_False_shift <= shift_left(c_25_1_1_False_resize, 1);
  with config_select_2 select c_25_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_1_0_False_shift;
        when others => c_25 <= c_25_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 26 and associated fundamentals [[-1], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 27 and associated fundamentals [[-33], [195]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
      w_o => 24,
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
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[-138], [-107]]
  c_28_20_0_False_resize <= c_20;
  c_28_20_0_False_shift <= shift_left(c_28_20_0_False_resize, 0);
  c_28_22_0_False_resize <= resize(c_22, 24);
  c_28_22_0_False_shift <= shift_left(c_28_22_0_False_resize, 0);
  with config_select_4 select c_28_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_20_0_False_shift;
        when others => c_28 <= c_28_22_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 29 and associated fundamentals [[138], [107]]
  c_29_resize <= c_28;
  c_29 <= -shift_left(c_29_resize, 0);
  -- node of type 'mux' in stage 4 with id 30 and associated fundamentals [[79], [113]]
  c_30_9_0_False_resize <= c_9(22 downto 0);
  c_30_9_0_False_shift <= shift_left(c_30_9_0_False_resize, 0);
  c_30_23_0_False_resize <= c_23(22 downto 0);
  c_30_23_0_False_shift <= shift_left(c_30_23_0_False_resize, 0);
  with config_select_4 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_9_0_False_shift;
        when others => c_30 <= c_30_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 31 and associated fundamentals [[79], [113]]
  c_31_resize <= c_30;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'mux' in stage 4 with id 32 and associated fundamentals [[-33], [-28]]
  c_32_27_0_False_resize <= c_27(21 downto 0);
  c_32_27_0_False_shift <= shift_left(c_32_27_0_False_resize, 0);
  c_32_6_1_False_resize <= resize(c_6, 22);
  c_32_6_1_False_shift <= shift_left(c_32_6_1_False_resize, 1);
  with config_select_4 select c_32_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_27_0_False_shift;
        when others => c_32 <= c_32_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 33 and associated fundamentals [[66], [56]]
  c_33_resize <= resize(c_32, 23);
  c_33 <= -shift_left(c_33_resize, 1);
  -- node of type 'output' in stage 4 with id 34 and associated fundamentals [[43], [115]]
  c_34_resize <= c_16;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 4 with id 35 and associated fundamentals [[-150], [-132]]
  c_35_9_0_False_resize <= c_9;
  c_35_9_0_False_shift <= shift_left(c_35_9_0_False_resize, 0);
  c_35_20_1_False_resize <= c_20;
  c_35_20_1_False_shift <= shift_left(c_35_20_1_False_resize, 1);
  with config_select_4 select c_35_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_9_0_False_shift;
        when others => c_35 <= c_35_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 36 and associated fundamentals [[150], [132]]
  c_36_resize <= c_35;
  c_36 <= -shift_left(c_36_resize, 0);
  -- node of type 'mux' in stage 4 with id 37 and associated fundamentals [[41], [89]]
  c_37_22_0_False_resize <= c_22;
  c_37_22_0_False_shift <= shift_left(c_37_22_0_False_resize, 0);
  c_37_18_0_False_resize <= c_18;
  c_37_18_0_False_shift <= shift_left(c_37_18_0_False_resize, 0);
  with config_select_4 select c_37_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_22_0_False_shift;
        when others => c_37 <= c_37_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 38 and associated fundamentals [[41], [89]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[101], [237]]
  c_39_resize <= c_11;
  c_39 <= -shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[17], [76]]
  c_40_24_2_False_resize <= resize(c_24, 23);
  c_40_24_2_False_shift <= shift_left(c_40_24_2_False_resize, 2);
  c_40_18_0_False_resize <= c_18;
  c_40_18_0_False_shift <= shift_left(c_40_18_0_False_resize, 0);
  with config_select_4 select c_40_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_24_2_False_shift;
        when others => c_40 <= c_40_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[17], [76]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[-12], [-169]]
  c_42_23_0_False_resize <= c_23;
  c_42_23_0_False_shift <= shift_left(c_42_23_0_False_resize, 0);
  c_42_6_1_False_resize <= resize(c_6, 24);
  c_42_6_1_False_shift <= shift_left(c_42_6_1_False_resize, 1);
  with config_select_4 select c_42_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_23_0_False_shift;
        when others => c_42 <= c_42_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[12], [169]]
  c_43_resize <= c_42;
  c_43 <= -shift_left(c_43_resize, 0);
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[128], [195]]
  c_44_27_0_False_resize <= c_27;
  c_44_27_0_False_shift <= shift_left(c_44_27_0_False_resize, 0);
  c_44_24_7_False_resize <= resize(c_24, 24);
  c_44_24_7_False_shift <= shift_left(c_44_24_7_False_resize, 7);
  with config_select_4 select c_44_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_27_0_False_shift;
        when others => c_44 <= c_44_24_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[128], [195]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
end architecture;

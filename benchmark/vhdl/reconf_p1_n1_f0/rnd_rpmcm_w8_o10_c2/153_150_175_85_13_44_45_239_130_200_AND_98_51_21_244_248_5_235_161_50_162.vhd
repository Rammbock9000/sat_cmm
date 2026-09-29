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
    y_5: out std_logic_vector(21 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(19 downto 0);
  signal c_3_1_0_False_resize: signed(19 downto 0);
  signal c_3_1_0_False_shift: signed(19 downto 0);
  signal c_3_2_0_False_resize: signed(19 downto 0);
  signal c_3_2_0_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(20 downto 0);
  signal c_4_1_2_False_resize: signed(20 downto 0);
  signal c_4_1_2_False_shift: signed(20 downto 0);
  signal c_4_1_0_False_resize: signed(20 downto 0);
  signal c_4_1_0_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(19 downto 0);
  signal c_6_0_0_False_resize: signed(19 downto 0);
  signal c_6_0_0_False_shift: signed(19 downto 0);
  signal c_6_0_4_False_resize: signed(19 downto 0);
  signal c_6_0_4_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_0_7_False_resize: signed(22 downto 0);
  signal c_7_0_7_False_shift: signed(22 downto 0);
  signal c_7_0_0_False_resize: signed(22 downto 0);
  signal c_7_0_0_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(18 downto 0);
  signal c_9_0_0_False_resize: signed(18 downto 0);
  signal c_9_0_0_False_shift: signed(18 downto 0);
  signal c_9_0_3_False_resize: signed(18 downto 0);
  signal c_9_0_3_False_shift: signed(18 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_2_3_False_resize: signed(22 downto 0);
  signal c_12_2_3_False_shift: signed(22 downto 0);
  signal c_12_2_0_False_resize: signed(22 downto 0);
  signal c_12_2_0_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_14: signed(20 downto 0);
  signal c_14_0_0_False_resize: signed(20 downto 0);
  signal c_14_0_0_False_shift: signed(20 downto 0);
  signal c_14_0_5_False_resize: signed(20 downto 0);
  signal c_14_0_5_False_shift: signed(20 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_15_i0_resize: signed(20 downto 0);
  signal c_15_i1_resize: signed(20 downto 0);
  signal c_15_i0_shift: signed(20 downto 0);
  signal c_15_i1_shift: signed(20 downto 0);
  signal c_15_arith: signed(20 downto 0);
  signal c_15_oshift: signed(20 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(21 downto 0);
  signal c_16_i0_resize: signed(21 downto 0);
  signal c_16_i1_resize: signed(21 downto 0);
  signal c_16_i0_shift: signed(21 downto 0);
  signal c_16_i1_shift: signed(21 downto 0);
  signal c_16_arith: signed(21 downto 0);
  signal c_16_oshift: signed(21 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_1_5_False_resize: signed(22 downto 0);
  signal c_17_1_5_False_shift: signed(22 downto 0);
  signal c_17_2_0_False_resize: signed(22 downto 0);
  signal c_17_2_0_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_19: signed(20 downto 0);
  signal c_19_0_5_False_resize: signed(20 downto 0);
  signal c_19_0_5_False_shift: signed(20 downto 0);
  signal c_19_0_0_False_resize: signed(20 downto 0);
  signal c_19_0_0_False_shift: signed(20 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_i0_resize: signed(22 downto 0);
  signal c_20_i1_resize: signed(22 downto 0);
  signal c_20_i0_shift: signed(22 downto 0);
  signal c_20_i1_shift: signed(22 downto 0);
  signal c_20_arith: signed(22 downto 0);
  signal c_20_oshift: signed(22 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(22 downto 0);
  signal c_21_1_0_False_resize: signed(22 downto 0);
  signal c_21_1_0_False_shift: signed(22 downto 0);
  signal c_21_2_2_False_resize: signed(22 downto 0);
  signal c_21_2_2_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(21 downto 0);
  signal c_23_1_4_False_resize: signed(21 downto 0);
  signal c_23_1_4_False_shift: signed(21 downto 0);
  signal c_23_1_0_False_resize: signed(21 downto 0);
  signal c_23_1_0_False_shift: signed(21 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_25: signed(20 downto 0);
  signal c_25_1_2_False_resize: signed(20 downto 0);
  signal c_25_1_2_False_shift: signed(20 downto 0);
  signal c_25_2_0_False_resize: signed(20 downto 0);
  signal c_25_2_0_False_shift: signed(20 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_resize: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_resize: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_resize: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_resize: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_20_0_False_resize: signed(23 downto 0);
  signal c_31_20_0_False_shift: signed(23 downto 0);
  signal c_31_8_0_False_resize: signed(23 downto 0);
  signal c_31_8_0_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_resize: signed(23 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_33_15_0_False_resize: signed(21 downto 0);
  signal c_33_15_0_False_shift: signed(21 downto 0);
  signal c_33_15_1_False_resize: signed(21 downto 0);
  signal c_33_15_1_False_shift: signed(21 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(21 downto 0);
  signal c_34_resize: signed(21 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_resize: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_10_1_False_resize: signed(23 downto 0);
  signal c_37_10_1_False_shift: signed(23 downto 0);
  signal c_37_8_0_False_resize: signed(23 downto 0);
  signal c_37_8_0_False_shift: signed(23 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_39_16_2_False_resize: signed(22 downto 0);
  signal c_39_16_2_False_shift: signed(22 downto 0);
  signal c_39_20_0_False_resize: signed(22 downto 0);
  signal c_39_20_0_False_shift: signed(22 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
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
  -- output node 0 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 1 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 2 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 3 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 4 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 5 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_34);
    end if;
  end process;
  -- output node 6 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 7 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 8 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 9 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_40);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [-3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[15], [17]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
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
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[15], [-3]]
  c_3_1_0_False_resize <= resize(c_1, 20);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_0_False_resize <= c_2(19 downto 0);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[20], [-3]]
  c_4_1_2_False_resize <= resize(c_1, 21);
  c_4_1_2_False_shift <= shift_left(c_4_1_2_False_resize, 2);
  c_4_1_0_False_resize <= resize(c_1, 21);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_2_False_shift;
        when others => c_4 <= c_4_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[175], [21]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 24,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[16], [1]]
  c_6_0_0_False_resize <= resize(c_0, 20);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_4_False_resize <= resize(c_0, 20);
  c_6_0_4_False_shift <= shift_left(c_6_0_4_False_resize, 4);
  with config_select_1 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_0_0_False_shift;
        when others => c_6 <= c_6_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[1], [128]]
  c_7_0_7_False_resize <= resize(c_0, 23);
  c_7_0_7_False_shift <= shift_left(c_7_0_7_False_resize, 7);
  c_7_0_0_False_resize <= resize(c_0, 23);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_7_False_shift;
        when others => c_7 <= c_7_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[130], [-248]]
  with config_select_2 select c_8_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[8], [1]]
  c_9_0_0_False_resize <= resize(c_0, 19);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_3_False_resize <= resize(c_0, 19);
  c_9_0_3_False_shift <= shift_left(c_9_0_3_False_resize, 3);
  with config_select_1 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_0_0_False_shift;
        when others => c_9 <= c_9_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 10 and associated fundamentals [[79], [25]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 23,
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
      x_i => c_2,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 11 and associated fundamentals [[15], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[120], [17]]
  c_12_2_3_False_resize <= resize(c_2, 23);
  c_12_2_3_False_shift <= shift_left(c_12_2_3_False_resize, 3);
  c_12_2_0_False_resize <= resize(c_2, 23);
  c_12_2_0_False_shift <= shift_left(c_12_2_0_False_resize, 0);
  with config_select_2 select c_12_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_2_3_False_shift;
        when others => c_12 <= c_12_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 13 and associated fundamentals [[150], [51]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[32], [1]]
  c_14_0_0_False_resize <= resize(c_0, 21);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_5_False_resize <= resize(c_0, 21);
  c_14_0_5_False_shift <= shift_left(c_14_0_5_False_resize, 5);
  with config_select_1 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_0_0_False_shift;
        when others => c_14 <= c_14_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 15 and associated fundamentals [[-22], [-5]]
  with config_select_2 select c_15_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 21,
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
      sub_i => c_15_sub_sel,
      x_i => c_1,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 16 and associated fundamentals [[25], [37]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 22,
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
      x_i => c_2,
      y_i => c_1,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[15], [-96]]
  c_17_1_5_False_resize <= resize(c_1, 23);
  c_17_1_5_False_shift <= shift_left(c_17_1_5_False_resize, 5);
  c_17_2_0_False_resize <= resize(c_2, 23);
  c_17_2_0_False_shift <= shift_left(c_17_2_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_1_5_False_shift;
        when others => c_17 <= c_17_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 18 and associated fundamentals [[85], [244]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
  -- node of type 'mux' in stage 1 with id 19 and associated fundamentals [[1], [32]]
  c_19_0_5_False_resize <= resize(c_0, 21);
  c_19_0_5_False_shift <= shift_left(c_19_0_5_False_resize, 5);
  c_19_0_0_False_resize <= resize(c_0, 21);
  c_19_0_0_False_shift <= shift_left(c_19_0_0_False_resize, 0);
  with config_select_1 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_0_5_False_shift;
        when others => c_19 <= c_19_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 20 and associated fundamentals [[-13], [81]]
  with config_select_2 select c_20_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 23,
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
      sub_i => c_20_sub_sel,
      x_i => c_19,
      y_i => c_2,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 21 and associated fundamentals [[5], [68]]
  c_21_1_0_False_resize <= resize(c_1, 23);
  c_21_1_0_False_shift <= shift_left(c_21_1_0_False_resize, 0);
  c_21_2_2_False_resize <= resize(c_2, 23);
  c_21_2_2_False_shift <= shift_left(c_21_2_2_False_resize, 2);
  with config_select_2 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_1_0_False_shift;
        when others => c_21 <= c_21_2_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 22 and associated fundamentals [[45], [235]]
  with config_select_3 select c_22_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_22_sub_sel,
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
  -- node of type 'mux' in stage 2 with id 23 and associated fundamentals [[5], [-48]]
  c_23_1_4_False_resize <= resize(c_1, 22);
  c_23_1_4_False_shift <= shift_left(c_23_1_4_False_resize, 4);
  c_23_1_0_False_resize <= resize(c_1, 22);
  c_23_1_0_False_shift <= shift_left(c_23_1_0_False_resize, 0);
  with config_select_2 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_1_4_False_shift;
        when others => c_23 <= c_23_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 24 and associated fundamentals [[153], [98]]
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_10,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 25 and associated fundamentals [[20], [17]]
  c_25_1_2_False_resize <= resize(c_1, 21);
  c_25_1_2_False_shift <= shift_left(c_25_1_2_False_resize, 2);
  c_25_2_0_False_resize <= c_2;
  c_25_2_0_False_shift <= shift_left(c_25_2_0_False_resize, 0);
  with config_select_2 select c_25_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_1_2_False_shift;
        when others => c_25 <= c_25_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 26 and associated fundamentals [[239], [161]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 24,
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
      x_i => c_10,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 27 and associated fundamentals [[153], [98]]
  c_27_resize <= c_24;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 3 with id 28 and associated fundamentals [[150], [51]]
  c_28_resize <= c_13;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 3 with id 29 and associated fundamentals [[175], [21]]
  c_29_resize <= c_5;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 3 with id 30 and associated fundamentals [[85], [244]]
  c_30_resize <= c_18;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[-13], [-248]]
  c_31_20_0_False_resize <= resize(c_20, 24);
  c_31_20_0_False_shift <= shift_left(c_31_20_0_False_resize, 0);
  c_31_8_0_False_resize <= c_8;
  c_31_8_0_False_shift <= shift_left(c_31_8_0_False_resize, 0);
  with config_select_3 select c_31_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_20_0_False_shift;
        when others => c_31 <= c_31_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 32 and associated fundamentals [[13], [248]]
  c_32_resize <= c_31;
  c_32 <= -shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[-44], [-5]]
  c_33_15_0_False_resize <= resize(c_15, 22);
  c_33_15_0_False_shift <= shift_left(c_33_15_0_False_resize, 0);
  c_33_15_1_False_resize <= resize(c_15, 22);
  c_33_15_1_False_shift <= shift_left(c_33_15_1_False_resize, 1);
  with config_select_3 select c_33_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_15_0_False_shift;
        when others => c_33 <= c_33_15_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 34 and associated fundamentals [[44], [5]]
  c_34_resize <= c_33;
  c_34 <= -shift_left(c_34_resize, 0);
  -- node of type 'output' in stage 3 with id 35 and associated fundamentals [[45], [235]]
  c_35_resize <= c_22;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'output' in stage 3 with id 36 and associated fundamentals [[239], [161]]
  c_36_resize <= c_26;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[130], [50]]
  c_37_10_1_False_resize <= resize(c_10, 24);
  c_37_10_1_False_shift <= shift_left(c_37_10_1_False_resize, 1);
  c_37_8_0_False_resize <= c_8;
  c_37_8_0_False_shift <= shift_left(c_37_8_0_False_resize, 0);
  with config_select_3 select c_37_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_10_1_False_shift;
        when others => c_37 <= c_37_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 38 and associated fundamentals [[130], [50]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 3 with id 39 and associated fundamentals [[100], [81]]
  c_39_16_2_False_resize <= resize(c_16, 23);
  c_39_16_2_False_shift <= shift_left(c_39_16_2_False_resize, 2);
  c_39_20_0_False_resize <= c_20;
  c_39_20_0_False_shift <= shift_left(c_39_20_0_False_resize, 0);
  with config_select_3 select c_39_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_16_2_False_shift;
        when others => c_39 <= c_39_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 40 and associated fundamentals [[200], [162]]
  c_40_resize <= resize(c_39, 24);
  c_40 <= shift_left(c_40_resize, 1);
end architecture;

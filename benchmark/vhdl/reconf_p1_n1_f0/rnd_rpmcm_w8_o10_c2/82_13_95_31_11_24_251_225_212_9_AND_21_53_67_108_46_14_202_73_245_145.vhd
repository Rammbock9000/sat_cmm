library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(21 downto 0);
    y_2: out std_logic_vector(22 downto 0);
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(21 downto 0);
    y_5: out std_logic_vector(20 downto 0);
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
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_0_5_False_resize: signed(20 downto 0);
  signal c_3_0_5_False_shift: signed(20 downto 0);
  signal c_3_0_0_False_resize: signed(20 downto 0);
  signal c_3_0_0_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(17 downto 0);
  signal c_5_1_2_False_resize: signed(17 downto 0);
  signal c_5_1_2_False_shift: signed(17 downto 0);
  signal c_5_1_0_False_resize: signed(17 downto 0);
  signal c_5_1_0_False_shift: signed(17 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_2_1_False_resize: signed(19 downto 0);
  signal c_6_2_1_False_shift: signed(19 downto 0);
  signal c_6_2_0_False_resize: signed(19 downto 0);
  signal c_6_2_0_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(16 downto 0);
  signal c_8_0_1_False_resize: signed(16 downto 0);
  signal c_8_0_1_False_shift: signed(16 downto 0);
  signal c_8_0_0_False_resize: signed(16 downto 0);
  signal c_8_0_0_False_shift: signed(16 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_i0_resize: signed(20 downto 0);
  signal c_9_i1_resize: signed(20 downto 0);
  signal c_9_i0_shift: signed(20 downto 0);
  signal c_9_i1_shift: signed(20 downto 0);
  signal c_9_arith: signed(20 downto 0);
  signal c_9_oshift: signed(20 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_i0_resize: signed(21 downto 0);
  signal c_10_i1_resize: signed(21 downto 0);
  signal c_10_i0_shift: signed(21 downto 0);
  signal c_10_i1_shift: signed(21 downto 0);
  signal c_10_arith: signed(21 downto 0);
  signal c_10_oshift: signed(21 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(22 downto 0);
  signal c_11_1_7_False_resize: signed(22 downto 0);
  signal c_11_1_7_False_shift: signed(22 downto 0);
  signal c_11_2_0_False_resize: signed(22 downto 0);
  signal c_11_2_0_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_10_1_False_resize: signed(21 downto 0);
  signal c_12_10_1_False_shift: signed(21 downto 0);
  signal c_12_10_0_False_resize: signed(21 downto 0);
  signal c_12_10_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(18 downto 0);
  signal c_14_0_0_False_resize: signed(18 downto 0);
  signal c_14_0_0_False_shift: signed(18 downto 0);
  signal c_14_0_3_False_resize: signed(18 downto 0);
  signal c_14_0_3_False_shift: signed(18 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_15_i0_resize: signed(20 downto 0);
  signal c_15_i1_resize: signed(20 downto 0);
  signal c_15_i0_shift: signed(20 downto 0);
  signal c_15_i1_shift: signed(20 downto 0);
  signal c_15_arith: signed(20 downto 0);
  signal c_15_oshift: signed(20 downto 0);
  signal c_16: signed(18 downto 0);
  signal c_16_1_3_False_resize: signed(18 downto 0);
  signal c_16_1_3_False_shift: signed(18 downto 0);
  signal c_16_1_0_False_resize: signed(18 downto 0);
  signal c_16_1_0_False_shift: signed(18 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(20 downto 0);
  signal c_18_2_1_False_resize: signed(20 downto 0);
  signal c_18_2_1_False_shift: signed(20 downto 0);
  signal c_18_10_0_False_resize: signed(20 downto 0);
  signal c_18_10_0_False_shift: signed(20 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_1_0_False_resize: signed(23 downto 0);
  signal c_19_1_0_False_shift: signed(23 downto 0);
  signal c_19_10_2_False_resize: signed(23 downto 0);
  signal c_19_10_2_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(22 downto 0);
  signal c_21_i0_resize: signed(22 downto 0);
  signal c_21_i1_resize: signed(22 downto 0);
  signal c_21_i0_shift: signed(22 downto 0);
  signal c_21_i1_shift: signed(22 downto 0);
  signal c_21_arith: signed(22 downto 0);
  signal c_21_oshift: signed(22 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(21 downto 0);
  signal c_22_i0_resize: signed(21 downto 0);
  signal c_22_i1_resize: signed(21 downto 0);
  signal c_22_i0_shift: signed(21 downto 0);
  signal c_22_i1_shift: signed(21 downto 0);
  signal c_22_arith: signed(21 downto 0);
  signal c_22_oshift: signed(21 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(20 downto 0);
  signal c_23_1_0_False_resize: signed(20 downto 0);
  signal c_23_1_0_False_shift: signed(20 downto 0);
  signal c_23_10_0_False_resize: signed(20 downto 0);
  signal c_23_10_0_False_shift: signed(20 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(22 downto 0);
  signal c_25_9_0_False_resize: signed(22 downto 0);
  signal c_25_9_0_False_shift: signed(22 downto 0);
  signal c_25_21_0_False_resize: signed(22 downto 0);
  signal c_25_21_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_resize: signed(22 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_27_9_0_False_resize: signed(21 downto 0);
  signal c_27_9_0_False_shift: signed(21 downto 0);
  signal c_27_22_0_False_resize: signed(21 downto 0);
  signal c_27_22_0_False_shift: signed(21 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_28_resize: signed(21 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_resize: signed(22 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_30_4_1_False_resize: signed(22 downto 0);
  signal c_30_4_1_False_shift: signed(22 downto 0);
  signal c_30_15_0_False_resize: signed(22 downto 0);
  signal c_30_15_0_False_shift: signed(22 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_resize: signed(22 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_32_15_1_False_resize: signed(21 downto 0);
  signal c_32_15_1_False_shift: signed(21 downto 0);
  signal c_32_22_0_False_resize: signed(21 downto 0);
  signal c_32_22_0_False_shift: signed(21 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_33_resize: signed(21 downto 0);
  signal c_34: signed(20 downto 0);
  signal c_34_4_1_False_resize: signed(20 downto 0);
  signal c_34_4_1_False_shift: signed(20 downto 0);
  signal c_34_21_0_False_resize: signed(20 downto 0);
  signal c_34_21_0_False_shift: signed(20 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(20 downto 0);
  signal c_35_resize: signed(20 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
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
  -- output node 0 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_26);
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
  -- output node 3 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 4 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 5 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 6 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 7 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 8 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 9 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_39);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[1], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
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
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[5], [5]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(18 downto 0);
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
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[12], [-54]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 22,
      s_x_i => 1,
      s_y_i => 1,
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
      c_4 <= c_4_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[4], [3]]
  c_5_1_2_False_resize <= c_1;
  c_5_1_2_False_shift <= shift_left(c_5_1_2_False_resize, 2);
  c_5_1_0_False_resize <= c_1;
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_2_False_shift;
        when others => c_5 <= c_5_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[5], [10]]
  c_6_2_1_False_resize <= resize(c_2, 20);
  c_6_2_1_False_shift <= shift_left(c_6_2_1_False_resize, 1);
  c_6_2_0_False_resize <= resize(c_2, 20);
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_2_1_False_shift;
        when others => c_6 <= c_6_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[251], [202]]
  with config_select_3 select c_7_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 20,
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
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[1], [2]]
  c_8_0_1_False_resize <= resize(c_0, 17);
  c_8_0_1_False_shift <= shift_left(c_8_0_1_False_resize, 1);
  c_8_0_0_False_resize <= resize(c_0, 17);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  with config_select_1 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_0_1_False_shift;
        when others => c_8 <= c_8_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 9 and associated fundamentals [[13], [21]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 17,
      w_o => 21,
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
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(20 downto 0);
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
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[128], [5]]
  c_11_1_7_False_resize <= resize(c_1, 23);
  c_11_1_7_False_shift <= shift_left(c_11_1_7_False_resize, 7);
  c_11_2_0_False_resize <= resize(c_2, 23);
  c_11_2_0_False_shift <= shift_left(c_11_2_0_False_resize, 0);
  with config_select_2 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_1_7_False_shift;
        when others => c_11 <= c_11_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[33], [62]]
  c_12_10_1_False_resize <= c_10;
  c_12_10_1_False_shift <= shift_left(c_12_10_1_False_resize, 1);
  c_12_10_0_False_resize <= c_10;
  c_12_10_0_False_shift <= shift_left(c_12_10_0_False_resize, 0);
  with config_select_2 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_10_1_False_shift;
        when others => c_12 <= c_12_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 13 and associated fundamentals [[95], [67]]
  with config_select_3 select c_13_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[8], [1]]
  c_14_0_0_False_resize <= resize(c_0, 19);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_3_False_resize <= resize(c_0, 19);
  c_14_0_3_False_shift <= shift_left(c_14_0_3_False_resize, 3);
  with config_select_1 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_0_0_False_shift;
        when others => c_14 <= c_14_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 15 and associated fundamentals [[-31], [23]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 21,
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
      x_i => c_10,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[8], [3]]
  c_16_1_3_False_resize <= resize(c_1, 19);
  c_16_1_3_False_shift <= shift_left(c_16_1_3_False_resize, 3);
  c_16_1_0_False_resize <= resize(c_1, 19);
  c_16_1_0_False_shift <= shift_left(c_16_1_0_False_resize, 0);
  with config_select_2 select c_16_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_1_3_False_shift;
        when others => c_16 <= c_16_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 17 and associated fundamentals [[225], [73]]
  with config_select_3 select c_17_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
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
      sub_i => c_17_sub_sel,
      x_i => c_16,
      y_i => c_15,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[10], [31]]
  c_18_2_1_False_resize <= resize(c_2, 21);
  c_18_2_1_False_shift <= shift_left(c_18_2_1_False_resize, 1);
  c_18_10_0_False_resize <= c_10(20 downto 0);
  c_18_10_0_False_shift <= shift_left(c_18_10_0_False_resize, 0);
  with config_select_2 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_2_1_False_shift;
        when others => c_18 <= c_18_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 19 and associated fundamentals [[132], [3]]
  c_19_1_0_False_resize <= resize(c_1, 24);
  c_19_1_0_False_shift <= shift_left(c_19_1_0_False_resize, 0);
  c_19_10_2_False_resize <= resize(c_10, 24);
  c_19_10_2_False_shift <= shift_left(c_19_10_2_False_resize, 2);
  with config_select_2 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_1_0_False_shift;
        when others => c_19 <= c_19_10_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 20 and associated fundamentals [[212], [245]]
  with config_select_3 select c_20_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_20_sub_sel,
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
  -- node of type 'add_sub' in stage 2 with id 21 and associated fundamentals [[82], [14]]
  with config_select_2 select c_21_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 18,
      w_o => 23,
      s_x_i => 1,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_21_sub_sel,
      x_i => c_10,
      y_i => c_1,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 22 and associated fundamentals [[11], [53]]
  with config_select_2 select c_22_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 19,
      w_o => 22,
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
      sub_i => c_22_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 23 and associated fundamentals [[1], [31]]
  c_23_1_0_False_resize <= resize(c_1, 21);
  c_23_1_0_False_shift <= shift_left(c_23_1_0_False_resize, 0);
  c_23_10_0_False_resize <= c_10(20 downto 0);
  c_23_10_0_False_shift <= shift_left(c_23_10_0_False_resize, 0);
  with config_select_2 select c_23_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_1_0_False_shift;
        when others => c_23 <= c_23_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 24 and associated fundamentals [[9], [145]]
  with config_select_3 select c_24_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
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
      sub_i => c_24_sub_sel,
      x_i => c_9,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[82], [21]]
  c_25_9_0_False_resize <= resize(c_9, 23);
  c_25_9_0_False_shift <= shift_left(c_25_9_0_False_resize, 0);
  c_25_21_0_False_resize <= c_21;
  c_25_21_0_False_shift <= shift_left(c_25_21_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_9_0_False_shift;
        when others => c_25 <= c_25_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 26 and associated fundamentals [[82], [21]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[13], [53]]
  c_27_9_0_False_resize <= resize(c_9, 22);
  c_27_9_0_False_shift <= shift_left(c_27_9_0_False_resize, 0);
  c_27_22_0_False_resize <= c_22;
  c_27_22_0_False_shift <= shift_left(c_27_22_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_9_0_False_shift;
        when others => c_27 <= c_27_22_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 28 and associated fundamentals [[13], [53]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 3 with id 29 and associated fundamentals [[95], [67]]
  c_29_resize <= c_13;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[-31], [-108]]
  c_30_4_1_False_resize <= resize(c_4, 23);
  c_30_4_1_False_shift <= shift_left(c_30_4_1_False_resize, 1);
  c_30_15_0_False_resize <= resize(c_15, 23);
  c_30_15_0_False_shift <= shift_left(c_30_15_0_False_resize, 0);
  with config_select_3 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_4_1_False_shift;
        when others => c_30 <= c_30_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 31 and associated fundamentals [[31], [108]]
  c_31_resize <= c_30;
  c_31 <= -shift_left(c_31_resize, 0);
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[11], [46]]
  c_32_15_1_False_resize <= resize(c_15, 22);
  c_32_15_1_False_shift <= shift_left(c_32_15_1_False_resize, 1);
  c_32_22_0_False_resize <= c_22;
  c_32_22_0_False_shift <= shift_left(c_32_22_0_False_resize, 0);
  with config_select_3 select c_32_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_15_1_False_shift;
        when others => c_32 <= c_32_22_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 33 and associated fundamentals [[11], [46]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[24], [14]]
  c_34_4_1_False_resize <= c_4(20 downto 0);
  c_34_4_1_False_shift <= shift_left(c_34_4_1_False_resize, 1);
  c_34_21_0_False_resize <= c_21(20 downto 0);
  c_34_21_0_False_shift <= shift_left(c_34_21_0_False_resize, 0);
  with config_select_3 select c_34_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_4_1_False_shift;
        when others => c_34 <= c_34_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 35 and associated fundamentals [[24], [14]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'output' in stage 3 with id 36 and associated fundamentals [[251], [202]]
  c_36_resize <= c_7;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'output' in stage 3 with id 37 and associated fundamentals [[225], [73]]
  c_37_resize <= c_17;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'output' in stage 3 with id 38 and associated fundamentals [[212], [245]]
  c_38_resize <= c_20;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'output' in stage 3 with id 39 and associated fundamentals [[9], [145]]
  c_39_resize <= c_24;
  c_39 <= shift_left(c_39_resize, 0);
end architecture;

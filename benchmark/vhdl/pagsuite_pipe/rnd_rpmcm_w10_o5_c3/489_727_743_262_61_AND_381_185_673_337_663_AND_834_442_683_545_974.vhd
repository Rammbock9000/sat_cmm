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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_i0_resize: signed(19 downto 0);
  signal c_5_i1_resize: signed(19 downto 0);
  signal c_5_i0_shift: signed(19 downto 0);
  signal c_5_i1_shift: signed(19 downto 0);
  signal c_5_arith: signed(19 downto 0);
  signal c_5_oshift: signed(19 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_8: signed(24 downto 0);
  signal c_8_i0_resize: signed(24 downto 0);
  signal c_8_i1_resize: signed(24 downto 0);
  signal c_8_i0_shift: signed(24 downto 0);
  signal c_8_i1_shift: signed(24 downto 0);
  signal c_8_arith: signed(24 downto 0);
  signal c_8_oshift: signed(24 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_4_0_False_resize: signed(22 downto 0);
  signal c_10_4_0_False_shift: signed(22 downto 0);
  signal c_10_4_4_False_resize: signed(22 downto 0);
  signal c_10_4_4_False_shift: signed(22 downto 0);
  signal c_10_9_1_False_resize: signed(22 downto 0);
  signal c_10_9_1_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_5_0_False_resize: signed(23 downto 0);
  signal c_11_5_0_False_shift: signed(23 downto 0);
  signal c_11_6_0_False_resize: signed(23 downto 0);
  signal c_11_6_0_False_shift: signed(23 downto 0);
  signal c_11_6_1_False_resize: signed(23 downto 0);
  signal c_11_6_1_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_5_0_False_resize: signed(22 downto 0);
  signal c_13_5_0_False_shift: signed(22 downto 0);
  signal c_13_5_3_False_resize: signed(22 downto 0);
  signal c_13_5_3_False_shift: signed(22 downto 0);
  signal c_13_4_2_False_resize: signed(22 downto 0);
  signal c_13_4_2_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_6_1_False_resize: signed(24 downto 0);
  signal c_14_6_1_False_shift: signed(24 downto 0);
  signal c_14_7_0_False_resize: signed(24 downto 0);
  signal c_14_7_0_False_shift: signed(24 downto 0);
  signal c_14_8_0_False_resize: signed(24 downto 0);
  signal c_14_8_0_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_4_4_False_resize: signed(22 downto 0);
  signal c_16_4_4_False_shift: signed(22 downto 0);
  signal c_16_6_0_False_resize: signed(22 downto 0);
  signal c_16_6_0_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_4_0_False_resize: signed(22 downto 0);
  signal c_17_4_0_False_shift: signed(22 downto 0);
  signal c_17_6_0_False_resize: signed(22 downto 0);
  signal c_17_6_0_False_shift: signed(22 downto 0);
  signal c_17_4_1_False_resize: signed(22 downto 0);
  signal c_17_4_1_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(24 downto 0);
  signal c_19_5_5_False_resize: signed(24 downto 0);
  signal c_19_5_5_False_shift: signed(24 downto 0);
  signal c_19_5_2_False_resize: signed(24 downto 0);
  signal c_19_5_2_False_shift: signed(24 downto 0);
  signal c_19_5_0_False_resize: signed(24 downto 0);
  signal c_19_5_0_False_shift: signed(24 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_6_0_False_resize: signed(24 downto 0);
  signal c_20_6_0_False_shift: signed(24 downto 0);
  signal c_20_5_5_False_resize: signed(24 downto 0);
  signal c_20_5_5_False_shift: signed(24 downto 0);
  signal c_20_8_0_False_resize: signed(24 downto 0);
  signal c_20_8_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel_left: std_logic;
  signal c_21_sub_sel_right: std_logic;
  signal c_22: signed(25 downto 0);
  signal c_22_8_0_False_resize: signed(25 downto 0);
  signal c_22_8_0_False_shift: signed(25 downto 0);
  signal c_22_4_6_False_resize: signed(25 downto 0);
  signal c_22_4_6_False_shift: signed(25 downto 0);
  signal c_22_7_2_False_resize: signed(25 downto 0);
  signal c_22_7_2_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_8_0_False_resize: signed(24 downto 0);
  signal c_23_8_0_False_shift: signed(24 downto 0);
  signal c_23_6_0_False_resize: signed(24 downto 0);
  signal c_23_6_0_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
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
  -- output node 0 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 1 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 2 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 3 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 4 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_29);
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
  -- node of type 'add' in stage 1 with id 3 and associated fundamentals [[9], [9], [9]]
  inst_adder_node_3: entity work.adder_node
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
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[3], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[13], [13], [13]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 20,
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
      y_i => c_2,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[105], [105], [105]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 20,
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
      x_i => c_2,
      y_i => c_3,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 7 and associated fundamentals [[129], [129], [129]]
  inst_adder_node_7: entity work.adder_node
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 8 and associated fundamentals [[289], [289], [289]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
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
      x_i => c_1,
      y_i => c_3,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 9 and associated fundamentals [[37], [37], [37]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 22,
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
      y_i => c_3,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[3], [48], [74]]
  c_10_4_0_False_resize <= resize(c_4, 23);
  c_10_4_0_False_shift <= shift_left(c_10_4_0_False_resize, 0);
  c_10_4_4_False_resize <= resize(c_4, 23);
  c_10_4_4_False_shift <= shift_left(c_10_4_4_False_resize, 4);
  c_10_9_1_False_resize <= resize(c_9, 23);
  c_10_9_1_False_shift <= shift_left(c_10_9_1_False_resize, 1);
  with config_select_3 select c_10_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_4_0_False_shift;
        when "01" => c_10 <= c_10_4_4_False_shift;
        when others => c_10 <= c_10_9_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[13], [105], [210]]
  c_11_5_0_False_resize <= resize(c_5, 24);
  c_11_5_0_False_shift <= shift_left(c_11_5_0_False_resize, 0);
  c_11_6_0_False_resize <= resize(c_6, 24);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  c_11_6_1_False_resize <= resize(c_6, 24);
  c_11_6_1_False_shift <= shift_left(c_11_6_1_False_resize, 1);
  with config_select_3 select c_11_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_5_0_False_shift;
        when "01" => c_11 <= c_11_6_0_False_shift;
        when others => c_11 <= c_11_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[61], [663], [974]]
  with config_select_4 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[13], [12], [104]]
  c_13_5_0_False_resize <= resize(c_5, 23);
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  c_13_5_3_False_resize <= resize(c_5, 23);
  c_13_5_3_False_shift <= shift_left(c_13_5_3_False_resize, 3);
  c_13_4_2_False_resize <= resize(c_4, 23);
  c_13_4_2_False_shift <= shift_left(c_13_4_2_False_resize, 2);
  with config_select_3 select c_13_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_5_0_False_shift;
        when "01" => c_13 <= c_13_5_3_False_shift;
        when others => c_13 <= c_13_4_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[210], [289], [129]]
  c_14_6_1_False_resize <= resize(c_6, 25);
  c_14_6_1_False_shift <= shift_left(c_14_6_1_False_resize, 1);
  c_14_7_0_False_resize <= resize(c_7, 25);
  c_14_7_0_False_shift <= shift_left(c_14_7_0_False_resize, 0);
  c_14_8_0_False_resize <= c_8;
  c_14_8_0_False_shift <= shift_left(c_14_8_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_6_1_False_shift;
        when "01" => c_14 <= c_14_7_0_False_shift;
        when others => c_14 <= c_14_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 15 and associated fundamentals [[262], [337], [545]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[48], [48], [105]]
  c_16_4_4_False_resize <= resize(c_4, 23);
  c_16_4_4_False_shift <= shift_left(c_16_4_4_False_resize, 4);
  c_16_6_0_False_resize <= c_6;
  c_16_6_0_False_shift <= shift_left(c_16_6_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_4_4_False_shift;
        when others => c_16 <= c_16_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[105], [3], [6]]
  c_17_4_0_False_resize <= resize(c_4, 23);
  c_17_4_0_False_shift <= shift_left(c_17_4_0_False_resize, 0);
  c_17_6_0_False_resize <= c_6;
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  c_17_4_1_False_resize <= resize(c_4, 23);
  c_17_4_1_False_shift <= shift_left(c_17_4_1_False_resize, 1);
  with config_select_3 select c_17_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_4_0_False_shift;
        when "01" => c_17 <= c_17_6_0_False_shift;
        when others => c_17 <= c_17_4_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 18 and associated fundamentals [[489], [381], [834]]
  with config_select_4 select c_18_sub_sel <= 
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
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[416], [52], [13]]
  c_19_5_5_False_resize <= resize(c_5, 25);
  c_19_5_5_False_shift <= shift_left(c_19_5_5_False_resize, 5);
  c_19_5_2_False_resize <= resize(c_5, 25);
  c_19_5_2_False_shift <= shift_left(c_19_5_2_False_resize, 2);
  c_19_5_0_False_resize <= resize(c_5, 25);
  c_19_5_0_False_shift <= shift_left(c_19_5_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_5_5_False_shift;
        when "01" => c_19 <= c_19_5_2_False_shift;
        when others => c_19 <= c_19_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[105], [289], [416]]
  c_20_6_0_False_resize <= resize(c_6, 25);
  c_20_6_0_False_shift <= shift_left(c_20_6_0_False_resize, 0);
  c_20_5_5_False_resize <= resize(c_5, 25);
  c_20_5_5_False_shift <= shift_left(c_20_5_5_False_resize, 5);
  c_20_8_0_False_resize <= c_8;
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_6_0_False_shift;
        when "01" => c_20 <= c_20_5_5_False_shift;
        when others => c_20 <= c_20_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[727], [185], [442]]
  with config_select_4 select c_21_sub_sel_left <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  with config_select_4 select c_21_sub_sel_right <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
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
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_21_sub_sel_left,
      sub_b_i => c_21_sub_sel_right,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[516], [192], [289]]
  c_22_8_0_False_resize <= resize(c_8, 26);
  c_22_8_0_False_shift <= shift_left(c_22_8_0_False_resize, 0);
  c_22_4_6_False_resize <= resize(c_4, 26);
  c_22_4_6_False_shift <= shift_left(c_22_4_6_False_resize, 6);
  c_22_7_2_False_resize <= resize(c_7, 26);
  c_22_7_2_False_shift <= shift_left(c_22_7_2_False_resize, 2);
  with config_select_3 select c_22_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_8_0_False_shift;
        when "01" => c_22 <= c_22_4_6_False_shift;
        when others => c_22 <= c_22_7_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[289], [289], [105]]
  c_23_8_0_False_resize <= c_8;
  c_23_8_0_False_shift <= shift_left(c_23_8_0_False_resize, 0);
  c_23_6_0_False_resize <= resize(c_6, 25);
  c_23_6_0_False_shift <= shift_left(c_23_6_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_8_0_False_shift;
        when others => c_23 <= c_23_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 24 and associated fundamentals [[743], [673], [683]]
  with config_select_4 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 25 and associated fundamentals [[489], [381], [834]]
  c_25_resize <= c_18;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[727], [185], [442]]
  c_26_resize <= c_21;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 4 with id 27 and associated fundamentals [[743], [673], [683]]
  c_27_resize <= c_24;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 4 with id 28 and associated fundamentals [[262], [337], [545]]
  c_28_resize <= c_15;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 4 with id 29 and associated fundamentals [[61], [663], [974]]
  c_29_resize <= c_12;
  c_29 <= shift_left(c_29_resize, 0);
end architecture;

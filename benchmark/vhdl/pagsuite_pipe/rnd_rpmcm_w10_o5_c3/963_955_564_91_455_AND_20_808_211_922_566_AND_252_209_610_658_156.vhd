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
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_3: signed(15 downto 0);
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
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_i0_resize: signed(24 downto 0);
  signal c_7_i1_resize: signed(24 downto 0);
  signal c_7_i0_shift: signed(24 downto 0);
  signal c_7_i1_shift: signed(24 downto 0);
  signal c_7_arith: signed(24 downto 0);
  signal c_7_oshift: signed(24 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_4_4_False_resize: signed(22 downto 0);
  signal c_8_4_4_False_shift: signed(22 downto 0);
  signal c_8_5_0_False_resize: signed(22 downto 0);
  signal c_8_5_0_False_shift: signed(22 downto 0);
  signal c_8_3_1_False_resize: signed(22 downto 0);
  signal c_8_3_1_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_5_1_False_resize: signed(25 downto 0);
  signal c_9_5_1_False_shift: signed(25 downto 0);
  signal c_9_5_0_False_resize: signed(25 downto 0);
  signal c_9_5_0_False_shift: signed(25 downto 0);
  signal c_9_7_1_False_resize: signed(25 downto 0);
  signal c_9_7_1_False_shift: signed(25 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(19 downto 0);
  signal c_11_3_4_False_resize: signed(19 downto 0);
  signal c_11_3_4_False_shift: signed(19 downto 0);
  signal c_11_4_0_False_resize: signed(19 downto 0);
  signal c_11_4_0_False_shift: signed(19 downto 0);
  signal c_11_3_0_False_resize: signed(19 downto 0);
  signal c_11_3_0_False_shift: signed(19 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_5_2_False_resize: signed(25 downto 0);
  signal c_12_5_2_False_shift: signed(25 downto 0);
  signal c_12_7_1_False_resize: signed(25 downto 0);
  signal c_12_7_1_False_shift: signed(25 downto 0);
  signal c_12_5_0_False_resize: signed(25 downto 0);
  signal c_12_5_0_False_shift: signed(25 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel_left: std_logic;
  signal c_13_sub_sel_right: std_logic;
  signal c_14: signed(22 downto 0);
  signal c_14_4_0_False_resize: signed(22 downto 0);
  signal c_14_4_0_False_shift: signed(22 downto 0);
  signal c_14_3_7_False_resize: signed(22 downto 0);
  signal c_14_3_7_False_shift: signed(22 downto 0);
  signal c_14_4_1_False_resize: signed(22 downto 0);
  signal c_14_4_1_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_4_4_False_resize: signed(23 downto 0);
  signal c_15_4_4_False_shift: signed(23 downto 0);
  signal c_15_4_0_False_resize: signed(23 downto 0);
  signal c_15_4_0_False_shift: signed(23 downto 0);
  signal c_15_6_1_False_resize: signed(23 downto 0);
  signal c_15_6_1_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_3_4_False_resize: signed(21 downto 0);
  signal c_17_3_4_False_shift: signed(21 downto 0);
  signal c_17_3_6_False_resize: signed(21 downto 0);
  signal c_17_3_6_False_shift: signed(21 downto 0);
  signal c_17_5_0_False_resize: signed(21 downto 0);
  signal c_17_5_0_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_3_0_False_resize: signed(25 downto 0);
  signal c_18_3_0_False_shift: signed(25 downto 0);
  signal c_18_6_0_False_resize: signed(25 downto 0);
  signal c_18_6_0_False_shift: signed(25 downto 0);
  signal c_18_6_3_False_resize: signed(25 downto 0);
  signal c_18_6_3_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(24 downto 0);
  signal c_20_3_2_False_resize: signed(24 downto 0);
  signal c_20_3_2_False_shift: signed(24 downto 0);
  signal c_20_7_0_False_resize: signed(24 downto 0);
  signal c_20_7_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_3_7_False_resize: signed(24 downto 0);
  signal c_21_3_7_False_shift: signed(24 downto 0);
  signal c_21_3_3_False_resize: signed(24 downto 0);
  signal c_21_3_3_False_shift: signed(24 downto 0);
  signal c_21_7_0_False_resize: signed(24 downto 0);
  signal c_21_7_0_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(25 downto 0);
  signal c_23_resize: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
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
  -- output node 0 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 1 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 2 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 3 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 4 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_27);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[5], [5], [5]]
  inst_adder_node_2: entity work.adder_node
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
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_1 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 4 and associated fundamentals [[7], [7], [7]]
  inst_adder_node_4: entity work.adder_node
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[13], [13], [13]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 20,
      s_x_i => 3,
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
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[69], [69], [69]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 23,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 7 and associated fundamentals [[321], [321], [321]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 25,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[13], [112], [2]]
  c_8_4_4_False_resize <= resize(c_4, 23);
  c_8_4_4_False_shift <= shift_left(c_8_4_4_False_resize, 4);
  c_8_5_0_False_resize <= resize(c_5, 23);
  c_8_5_0_False_shift <= shift_left(c_8_5_0_False_resize, 0);
  c_8_3_1_False_resize <= resize(c_3, 23);
  c_8_3_1_False_shift <= shift_left(c_8_3_1_False_resize, 1);
  with config_select_3 select c_8_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_4_4_False_shift;
        when "01" => c_8 <= c_8_5_0_False_shift;
        when others => c_8 <= c_8_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[13], [26], [642]]
  c_9_5_1_False_resize <= resize(c_5, 26);
  c_9_5_1_False_shift <= shift_left(c_9_5_1_False_resize, 1);
  c_9_5_0_False_resize <= resize(c_5, 26);
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  c_9_7_1_False_resize <= resize(c_7, 26);
  c_9_7_1_False_shift <= shift_left(c_9_7_1_False_resize, 1);
  with config_select_3 select c_9_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_5_1_False_shift;
        when "01" => c_9 <= c_9_5_0_False_shift;
        when others => c_9 <= c_9_7_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[91], [922], [658]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 26,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[16], [7], [1]]
  c_11_3_4_False_resize <= resize(c_3, 20);
  c_11_3_4_False_shift <= shift_left(c_11_3_4_False_resize, 4);
  c_11_4_0_False_resize <= resize(c_4, 20);
  c_11_4_0_False_shift <= shift_left(c_11_4_0_False_resize, 0);
  c_11_3_0_False_resize <= resize(c_3, 20);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_3_4_False_shift;
        when "01" => c_11 <= c_11_4_0_False_shift;
        when others => c_11 <= c_11_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[52], [13], [642]]
  c_12_5_2_False_resize <= resize(c_5, 26);
  c_12_5_2_False_shift <= shift_left(c_12_5_2_False_resize, 2);
  c_12_7_1_False_resize <= resize(c_7, 26);
  c_12_7_1_False_shift <= shift_left(c_12_7_1_False_resize, 1);
  c_12_5_0_False_resize <= resize(c_5, 26);
  c_12_5_0_False_shift <= shift_left(c_12_5_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_5_2_False_shift;
        when "01" => c_12 <= c_12_7_1_False_shift;
        when others => c_12 <= c_12_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[564], [211], [610]]
  with config_select_4 select c_13_sub_sel_left <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  with config_select_4 select c_13_sub_sel_right <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_13_sub_sel_left,
      sub_b_i => c_13_sub_sel_right,
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
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[7], [14], [128]]
  c_14_4_0_False_resize <= resize(c_4, 23);
  c_14_4_0_False_shift <= shift_left(c_14_4_0_False_resize, 0);
  c_14_3_7_False_resize <= resize(c_3, 23);
  c_14_3_7_False_shift <= shift_left(c_14_3_7_False_resize, 7);
  c_14_4_1_False_resize <= resize(c_4, 23);
  c_14_4_1_False_shift <= shift_left(c_14_4_1_False_resize, 1);
  with config_select_3 select c_14_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_4_0_False_shift;
        when "01" => c_14 <= c_14_3_7_False_shift;
        when others => c_14 <= c_14_4_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[112], [138], [7]]
  c_15_4_4_False_resize <= resize(c_4, 24);
  c_15_4_4_False_shift <= shift_left(c_15_4_4_False_resize, 4);
  c_15_4_0_False_resize <= resize(c_4, 24);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_6_1_False_resize <= resize(c_6, 24);
  c_15_6_1_False_shift <= shift_left(c_15_6_1_False_resize, 1);
  with config_select_3 select c_15_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_4_4_False_shift;
        when "01" => c_15 <= c_15_4_0_False_shift;
        when others => c_15 <= c_15_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 16 and associated fundamentals [[455], [566], [156]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 26,
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
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[64], [16], [13]]
  c_17_3_4_False_resize <= resize(c_3, 22);
  c_17_3_4_False_shift <= shift_left(c_17_3_4_False_resize, 4);
  c_17_3_6_False_resize <= resize(c_3, 22);
  c_17_3_6_False_shift <= shift_left(c_17_3_6_False_resize, 6);
  c_17_5_0_False_resize <= resize(c_5, 22);
  c_17_5_0_False_shift <= shift_left(c_17_5_0_False_resize, 0);
  with config_select_3 select c_17_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_3_4_False_shift;
        when "01" => c_17 <= c_17_3_6_False_shift;
        when others => c_17 <= c_17_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[69], [552], [1]]
  c_18_3_0_False_resize <= resize(c_3, 26);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  c_18_6_0_False_resize <= resize(c_6, 26);
  c_18_6_0_False_shift <= shift_left(c_18_6_0_False_resize, 0);
  c_18_6_3_False_resize <= resize(c_6, 26);
  c_18_6_3_False_shift <= shift_left(c_18_6_3_False_resize, 3);
  with config_select_3 select c_18_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_3_0_False_shift;
        when "01" => c_18 <= c_18_6_0_False_shift;
        when others => c_18 <= c_18_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 19 and associated fundamentals [[955], [808], [209]]
  with config_select_4 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 26,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[321], [4], [4]]
  c_20_3_2_False_resize <= resize(c_3, 25);
  c_20_3_2_False_shift <= shift_left(c_20_3_2_False_resize, 2);
  c_20_7_0_False_resize <= c_7;
  c_20_7_0_False_shift <= shift_left(c_20_7_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_3_2_False_shift;
        when others => c_20 <= c_20_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[321], [8], [128]]
  c_21_3_7_False_resize <= resize(c_3, 25);
  c_21_3_7_False_shift <= shift_left(c_21_3_7_False_resize, 7);
  c_21_3_3_False_resize <= resize(c_3, 25);
  c_21_3_3_False_shift <= shift_left(c_21_3_3_False_resize, 3);
  c_21_7_0_False_resize <= c_7;
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_3_7_False_shift;
        when "01" => c_21 <= c_21_3_3_False_shift;
        when others => c_21 <= c_21_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 22 and associated fundamentals [[963], [20], [252]]
  with config_select_4 select c_22_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
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
      sub_i => c_22_sub_sel,
      x_i => c_21,
      y_i => c_20,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 23 and associated fundamentals [[963], [20], [252]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'output' in stage 4 with id 24 and associated fundamentals [[955], [808], [209]]
  c_24_resize <= c_19;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'output' in stage 4 with id 25 and associated fundamentals [[564], [211], [610]]
  c_25_resize <= c_13;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[91], [922], [658]]
  c_26_resize <= c_10;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 4 with id 27 and associated fundamentals [[455], [566], [156]]
  c_27_resize <= c_16;
  c_27 <= shift_left(c_27_resize, 0);
end architecture;

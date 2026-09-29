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
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(17 downto 0);
  signal c_3_2_1_False_resize: signed(17 downto 0);
  signal c_3_2_1_False_shift: signed(17 downto 0);
  signal c_3_2_0_False_resize: signed(17 downto 0);
  signal c_3_2_0_False_shift: signed(17 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_2_0_False_resize: signed(18 downto 0);
  signal c_4_2_0_False_shift: signed(18 downto 0);
  signal c_4_1_0_False_resize: signed(18 downto 0);
  signal c_4_1_0_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_2_4_False_resize: signed(21 downto 0);
  signal c_6_2_4_False_shift: signed(21 downto 0);
  signal c_6_1_0_False_resize: signed(21 downto 0);
  signal c_6_1_0_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_1_0_False_resize: signed(23 downto 0);
  signal c_7_1_0_False_shift: signed(23 downto 0);
  signal c_7_2_6_False_resize: signed(23 downto 0);
  signal c_7_2_6_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_10_0_5_False_resize: signed(20 downto 0);
  signal c_10_0_5_False_shift: signed(20 downto 0);
  signal c_10_0_0_False_resize: signed(20 downto 0);
  signal c_10_0_0_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(20 downto 0);
  signal c_13_i0_resize: signed(20 downto 0);
  signal c_13_i1_resize: signed(20 downto 0);
  signal c_13_i0_shift: signed(20 downto 0);
  signal c_13_i1_shift: signed(20 downto 0);
  signal c_13_arith: signed(20 downto 0);
  signal c_13_oshift: signed(20 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(24 downto 0);
  signal c_14_2_0_False_resize: signed(24 downto 0);
  signal c_14_2_0_False_shift: signed(24 downto 0);
  signal c_14_13_1_False_resize: signed(24 downto 0);
  signal c_14_13_1_False_shift: signed(24 downto 0);
  signal c_14_1_6_False_resize: signed(24 downto 0);
  signal c_14_1_6_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(24 downto 0);
  signal c_16_2_0_False_resize: signed(24 downto 0);
  signal c_16_2_0_False_shift: signed(24 downto 0);
  signal c_16_13_5_False_resize: signed(24 downto 0);
  signal c_16_13_5_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_1_6_False_resize: signed(24 downto 0);
  signal c_18_1_6_False_shift: signed(24 downto 0);
  signal c_18_2_0_False_resize: signed(24 downto 0);
  signal c_18_2_0_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_13_0_False_resize: signed(25 downto 0);
  signal c_19_13_0_False_shift: signed(25 downto 0);
  signal c_19_13_6_False_resize: signed(25 downto 0);
  signal c_19_13_6_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(25 downto 0);
  signal c_21_20_0_False_resize: signed(25 downto 0);
  signal c_21_20_0_False_shift: signed(25 downto 0);
  signal c_21_5_2_False_resize: signed(25 downto 0);
  signal c_21_5_2_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_8_2_False_resize: signed(25 downto 0);
  signal c_23_8_2_False_shift: signed(25 downto 0);
  signal c_23_15_0_False_resize: signed(25 downto 0);
  signal c_23_15_0_False_shift: signed(25 downto 0);
  signal c_23_17_0_False_resize: signed(25 downto 0);
  signal c_23_17_0_False_shift: signed(25 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_17_0_False_resize: signed(25 downto 0);
  signal c_25_17_0_False_shift: signed(25 downto 0);
  signal c_25_20_1_False_resize: signed(25 downto 0);
  signal c_25_20_1_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_15_1_False_resize: signed(25 downto 0);
  signal c_27_15_1_False_shift: signed(25 downto 0);
  signal c_27_8_0_False_resize: signed(25 downto 0);
  signal c_27_8_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
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
  -- output node 0 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_22);
    end if;
  end process;
  -- output node 1 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 2 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_26);
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
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[5], [5], [5]]
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
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
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
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[3], [3], [1]]
  with config_select_1 select c_2_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
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
      sub_i => c_2_sub_sel,
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
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[3], [3], [2]]
  c_3_2_1_False_resize <= c_2;
  c_3_2_1_False_shift <= shift_left(c_3_2_1_False_resize, 1);
  c_3_2_0_False_resize <= c_2;
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_2_1_False_shift;
        when others => c_3 <= c_3_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[5], [5], [1]]
  c_4_2_0_False_resize <= resize(c_2, 19);
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  c_4_1_0_False_resize <= c_1;
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "10",
    "1" when "00",
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
  -- node of type 'sub' in stage 3 with id 5 and associated fundamentals [[91], [91], [63]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 19,
      w_o => 23,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[48], [5], [16]]
  c_6_2_4_False_resize <= resize(c_2, 22);
  c_6_2_4_False_shift <= shift_left(c_6_2_4_False_resize, 4);
  c_6_1_0_False_resize <= resize(c_1, 22);
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_2_4_False_shift;
        when others => c_6 <= c_6_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[5], [192], [64]]
  c_7_1_0_False_resize <= resize(c_1, 24);
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  c_7_2_6_False_resize <= resize(c_2, 24);
  c_7_2_6_False_shift <= shift_left(c_7_2_6_False_resize, 6);
  with config_select_2 select c_7_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_1_0_False_shift;
        when others => c_7 <= c_7_2_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 8 and associated fundamentals [[91], [202], [96]]
  with config_select_3 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
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
  -- node of type 'add' in stage 2 with id 9 and associated fundamentals [[325], [325], [325]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 25,
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
      y_i => c_1,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[1], [32], [32]]
  c_10_0_5_False_resize <= resize(c_0, 21);
  c_10_0_5_False_shift <= shift_left(c_10_0_5_False_resize, 5);
  c_10_0_0_False_resize <= resize(c_0, 21);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  with config_select_1 select c_10_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_0_5_False_shift;
        when others => c_10 <= c_10_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 11 and associated fundamentals [[84], [208], [208]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 4,
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
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[455], [566], [156]]
  with config_select_4 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 26,
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
      x_i => c_5,
      y_i => c_8,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 13 and associated fundamentals [[15], [17], [15]]
  with config_select_1 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
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
      sub_i => c_13_sub_sel,
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
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[320], [34], [1]]
  c_14_2_0_False_resize <= resize(c_2, 25);
  c_14_2_0_False_shift <= shift_left(c_14_2_0_False_resize, 0);
  c_14_13_1_False_resize <= resize(c_13, 25);
  c_14_13_1_False_shift <= shift_left(c_14_13_1_False_resize, 1);
  c_14_1_6_False_resize <= resize(c_1, 25);
  c_14_1_6_False_shift <= shift_left(c_14_1_6_False_resize, 6);
  with config_select_2 select c_14_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_2_0_False_shift;
        when "01" => c_14 <= c_14_13_1_False_shift;
        when others => c_14 <= c_14_1_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[955], [461], [329]]
  with config_select_3 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_9,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[480], [3], [1]]
  c_16_2_0_False_resize <= resize(c_2, 25);
  c_16_2_0_False_shift <= shift_left(c_16_2_0_False_resize, 0);
  c_16_13_5_False_resize <= resize(c_13, 25);
  c_16_13_5_False_shift <= shift_left(c_16_13_5_False_resize, 5);
  with config_select_2 select c_16_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_2_0_False_shift;
        when others => c_16 <= c_16_13_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 17 and associated fundamentals [[564], [211], [209]]
  inst_adder_node_17: entity work.adder_node
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
      y_i => c_11,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[3], [3], [320]]
  c_18_1_6_False_resize <= resize(c_1, 25);
  c_18_1_6_False_shift <= shift_left(c_18_1_6_False_resize, 6);
  c_18_2_0_False_resize <= resize(c_2, 25);
  c_18_2_0_False_shift <= shift_left(c_18_2_0_False_resize, 0);
  with config_select_2 select c_18_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_1_6_False_shift;
        when others => c_18 <= c_18_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 19 and associated fundamentals [[960], [17], [15]]
  c_19_13_0_False_resize <= resize(c_13, 26);
  c_19_13_0_False_shift <= shift_left(c_19_13_0_False_resize, 0);
  c_19_13_6_False_resize <= resize(c_13, 26);
  c_19_13_6_False_shift <= shift_left(c_19_13_6_False_resize, 6);
  with config_select_2 select c_19_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_13_0_False_shift;
        when others => c_19 <= c_19_13_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 20 and associated fundamentals [[963], [20], [305]]
  with config_select_3 select c_20_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[963], [20], [252]]
  c_21_20_0_False_resize <= c_20;
  c_21_20_0_False_shift <= shift_left(c_21_20_0_False_resize, 0);
  c_21_5_2_False_resize <= resize(c_5, 26);
  c_21_5_2_False_shift <= shift_left(c_21_5_2_False_resize, 2);
  with config_select_4 select c_21_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_20_0_False_shift;
        when others => c_21 <= c_21_5_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 22 and associated fundamentals [[963], [20], [252]]
  c_22_resize <= c_21;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[955], [808], [209]]
  c_23_8_2_False_resize <= resize(c_8, 26);
  c_23_8_2_False_shift <= shift_left(c_23_8_2_False_resize, 2);
  c_23_15_0_False_resize <= c_15;
  c_23_15_0_False_shift <= shift_left(c_23_15_0_False_resize, 0);
  c_23_17_0_False_resize <= c_17;
  c_23_17_0_False_shift <= shift_left(c_23_17_0_False_resize, 0);
  with config_select_4 select c_23_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_8_2_False_shift;
        when "01" => c_23 <= c_23_15_0_False_shift;
        when others => c_23 <= c_23_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 24 and associated fundamentals [[955], [808], [209]]
  c_24_resize <= c_23;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[564], [211], [610]]
  c_25_17_0_False_resize <= c_17;
  c_25_17_0_False_shift <= shift_left(c_25_17_0_False_resize, 0);
  c_25_20_1_False_resize <= c_20;
  c_25_20_1_False_shift <= shift_left(c_25_20_1_False_resize, 1);
  with config_select_4 select c_25_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_17_0_False_shift;
        when others => c_25 <= c_25_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[564], [211], [610]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[91], [922], [658]]
  c_27_15_1_False_resize <= c_15;
  c_27_15_1_False_shift <= shift_left(c_27_15_1_False_resize, 1);
  c_27_8_0_False_resize <= resize(c_8, 26);
  c_27_8_0_False_shift <= shift_left(c_27_8_0_False_resize, 0);
  with config_select_4 select c_27_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_15_1_False_shift;
        when others => c_27 <= c_27_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 28 and associated fundamentals [[91], [922], [658]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 4 with id 29 and associated fundamentals [[455], [566], [156]]
  c_29_resize <= c_12;
  c_29 <= shift_left(c_29_resize, 0);
end architecture;

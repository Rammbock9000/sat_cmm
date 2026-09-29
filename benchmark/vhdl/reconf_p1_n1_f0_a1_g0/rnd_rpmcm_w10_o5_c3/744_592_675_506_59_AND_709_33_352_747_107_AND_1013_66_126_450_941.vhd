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
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(17 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(21 downto 0);
  signal c_5_0_0_False_resize: signed(21 downto 0);
  signal c_5_0_0_False_shift: signed(21 downto 0);
  signal c_5_0_6_False_resize: signed(21 downto 0);
  signal c_5_0_6_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(25 downto 0);
  signal c_6_i0_resize: signed(25 downto 0);
  signal c_6_i1_resize: signed(25 downto 0);
  signal c_6_i0_shift: signed(25 downto 0);
  signal c_6_i1_shift: signed(25 downto 0);
  signal c_6_arith: signed(25 downto 0);
  signal c_6_oshift: signed(25 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(25 downto 0);
  signal c_7_2_0_False_resize: signed(25 downto 0);
  signal c_7_2_0_False_shift: signed(25 downto 0);
  signal c_7_1_7_False_resize: signed(25 downto 0);
  signal c_7_1_7_False_shift: signed(25 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(25 downto 0);
  signal c_8_i1_resize: signed(25 downto 0);
  signal c_8_i0_shift: signed(25 downto 0);
  signal c_8_i1_shift: signed(25 downto 0);
  signal c_8_arith: signed(25 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(18 downto 0);
  signal c_9_0_0_False_resize: signed(18 downto 0);
  signal c_9_0_0_False_shift: signed(18 downto 0);
  signal c_9_0_3_False_resize: signed(18 downto 0);
  signal c_9_0_3_False_shift: signed(18 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(27 downto 0);
  signal c_10_i0_resize: signed(27 downto 0);
  signal c_10_i1_resize: signed(27 downto 0);
  signal c_10_i0_shift: signed(27 downto 0);
  signal c_10_i1_shift: signed(27 downto 0);
  signal c_10_arith: signed(27 downto 0);
  signal c_10_oshift: signed(27 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(21 downto 0);
  signal c_11_3_2_False_resize: signed(21 downto 0);
  signal c_11_3_2_False_shift: signed(21 downto 0);
  signal c_11_6_1_False_resize: signed(21 downto 0);
  signal c_11_6_1_False_shift: signed(21 downto 0);
  signal c_11_6_0_False_resize: signed(21 downto 0);
  signal c_11_6_0_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_12_3_0_False_resize: signed(19 downto 0);
  signal c_12_3_0_False_shift: signed(19 downto 0);
  signal c_12_3_3_False_resize: signed(19 downto 0);
  signal c_12_3_3_False_shift: signed(19 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(17 downto 0);
  signal c_14_0_0_False_resize: signed(17 downto 0);
  signal c_14_0_0_False_shift: signed(17 downto 0);
  signal c_14_0_1_False_resize: signed(17 downto 0);
  signal c_14_0_1_False_shift: signed(17 downto 0);
  signal c_14_0_2_False_resize: signed(17 downto 0);
  signal c_14_0_2_False_shift: signed(17 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(19 downto 0);
  signal c_16_1_1_False_resize: signed(19 downto 0);
  signal c_16_1_1_False_shift: signed(19 downto 0);
  signal c_16_2_0_False_resize: signed(19 downto 0);
  signal c_16_2_0_False_shift: signed(19 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(25 downto 0);
  signal c_18_15_0_False_resize: signed(25 downto 0);
  signal c_18_15_0_False_shift: signed(25 downto 0);
  signal c_18_6_5_False_resize: signed(25 downto 0);
  signal c_18_6_5_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(27 downto 0);
  signal c_19_10_3_False_resize: signed(27 downto 0);
  signal c_19_10_3_False_shift: signed(27 downto 0);
  signal c_19_10_0_False_resize: signed(27 downto 0);
  signal c_19_10_0_False_shift: signed(27 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(21 downto 0);
  signal c_21_4_0_False_resize: signed(21 downto 0);
  signal c_21_4_0_False_shift: signed(21 downto 0);
  signal c_21_2_6_False_resize: signed(21 downto 0);
  signal c_21_2_6_False_shift: signed(21 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_8_1_False_resize: signed(25 downto 0);
  signal c_25_8_1_False_shift: signed(25 downto 0);
  signal c_25_8_0_False_resize: signed(25 downto 0);
  signal c_25_8_0_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
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
  -- output node 0 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_24);
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
  -- output node 4 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_30);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [5], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '0' when "01",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [2], [2]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 18,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 4 and associated fundamentals [[40], [24], [40]]
  with config_select_1 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 5,
      s_y_i => 3,
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
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [1], [64]]
  c_5_0_0_False_resize <= resize(c_0, 22);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_6_False_resize <= resize(c_0, 22);
  c_5_0_6_False_shift <= shift_left(c_5_0_6_False_resize, 6);
  with config_select_1 select c_5_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[21], [21], [-1021]]
  with config_select_2 select c_6_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
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
      sub_i => c_6_sub_sel,
      x_i => c_1,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[640], [1], [1]]
  c_7_2_0_False_resize <= resize(c_2, 26);
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  c_7_1_7_False_resize <= resize(c_1, 26);
  c_7_1_7_False_shift <= shift_left(c_7_1_7_False_resize, 7);
  with config_select_2 select c_7_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_2_0_False_shift;
        when others => c_7 <= c_7_1_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 8 and associated fundamentals [[592], [33], [33]]
  with config_select_3 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 18,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_3,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[1], [8], [1]]
  c_9_0_0_False_resize <= resize(c_0, 19);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_3_False_resize <= resize(c_0, 19);
  c_9_0_3_False_shift <= shift_left(c_9_0_3_False_resize, 3);
  with config_select_1 select c_9_sel <= 
    "0" when "10",
    "0" when "00",
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
  -- node of type 'add_sub' in stage 2 with id 10 and associated fundamentals [[261], [2053], [-253]]
  with config_select_2 select c_10_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 28,
      s_x_i => 0,
      s_y_i => 8,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_10_sub_sel,
      x_i => c_1,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[42], [21], [8]]
  c_11_3_2_False_resize <= resize(c_3, 22);
  c_11_3_2_False_shift <= shift_left(c_11_3_2_False_resize, 2);
  c_11_6_1_False_resize <= c_6(21 downto 0);
  c_11_6_1_False_shift <= shift_left(c_11_6_1_False_resize, 1);
  c_11_6_0_False_resize <= c_6(21 downto 0);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_3_2_False_shift;
        when "01" => c_11 <= c_11_6_1_False_shift;
        when others => c_11 <= c_11_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[3], [16], [2]]
  c_12_3_0_False_resize <= resize(c_3, 20);
  c_12_3_0_False_shift <= shift_left(c_12_3_0_False_resize, 0);
  c_12_3_3_False_resize <= resize(c_3, 20);
  c_12_3_3_False_shift <= shift_left(c_12_3_3_False_resize, 3);
  with config_select_3 select c_12_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_3_0_False_shift;
        when others => c_12 <= c_12_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[675], [352], [126]]
  with config_select_4 select c_13_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[2], [1], [4]]
  c_14_0_0_False_resize <= resize(c_0, 18);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_1_False_resize <= resize(c_0, 18);
  c_14_0_1_False_shift <= shift_left(c_14_0_1_False_resize, 1);
  c_14_0_2_False_resize <= resize(c_0, 18);
  c_14_0_2_False_shift <= shift_left(c_14_0_2_False_resize, 2);
  with config_select_1 select c_14_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_0_0_False_shift;
        when "01" => c_14 <= c_14_0_1_False_shift;
        when others => c_14 <= c_14_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 15 and associated fundamentals [[-638], [641], [-380]]
  with config_select_2 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 19,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 7,
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
      y_i => c_1,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[10], [10], [1]]
  c_16_1_1_False_resize <= resize(c_1, 20);
  c_16_1_1_False_shift <= shift_left(c_16_1_1_False_resize, 1);
  c_16_2_0_False_resize <= resize(c_2, 20);
  c_16_2_0_False_shift <= shift_left(c_16_2_0_False_resize, 0);
  with config_select_2 select c_16_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_1_1_False_shift;
        when others => c_16 <= c_16_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 17 and associated fundamentals [[-678], [681], [-384]]
  with config_select_3 select c_17_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[672], [672], [-380]]
  c_18_15_0_False_resize <= c_15;
  c_18_15_0_False_shift <= shift_left(c_18_15_0_False_resize, 0);
  c_18_6_5_False_resize <= c_6;
  c_18_6_5_False_shift <= shift_left(c_18_6_5_False_resize, 5);
  with config_select_3 select c_18_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_15_0_False_shift;
        when others => c_18 <= c_18_6_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[2088], [2053], [-253]]
  c_19_10_3_False_resize <= c_10;
  c_19_10_3_False_shift <= shift_left(c_19_10_3_False_resize, 3);
  c_19_10_0_False_resize <= c_10;
  c_19_10_0_False_shift <= shift_left(c_19_10_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_10_3_False_shift;
        when others => c_19 <= c_19_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[-744], [-709], [-1013]]
  with config_select_4 select c_20_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 28,
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
  -- node of type 'mux' in stage 2 with id 21 and associated fundamentals [[40], [64], [40]]
  c_21_4_0_False_resize <= c_4;
  c_21_4_0_False_shift <= shift_left(c_21_4_0_False_resize, 0);
  c_21_2_6_False_resize <= resize(c_2, 22);
  c_21_2_6_False_shift <= shift_left(c_21_2_6_False_resize, 6);
  with config_select_2 select c_21_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_4_0_False_shift;
        when others => c_21 <= c_21_2_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 22 and associated fundamentals [[-59], [-107], [-941]]
  with config_select_3 select c_22_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
      w_o => 26,
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
      sub_i => c_22_sub_sel,
      x_i => c_6,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 23 and associated fundamentals [[506], [747], [450]]
  with config_select_4 select c_23_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
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
      sub_i => c_23_sub_sel,
      x_i => c_8,
      y_i => c_17,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 24 and associated fundamentals [[744], [709], [1013]]
  c_24_resize <= c_20;
  c_24 <= -shift_left(c_24_resize, 0);
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[592], [33], [66]]
  c_25_8_1_False_resize <= c_8;
  c_25_8_1_False_shift <= shift_left(c_25_8_1_False_resize, 1);
  c_25_8_0_False_resize <= c_8;
  c_25_8_0_False_shift <= shift_left(c_25_8_0_False_resize, 0);
  with config_select_4 select c_25_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_8_1_False_shift;
        when others => c_25 <= c_25_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[592], [33], [66]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 4 with id 27 and associated fundamentals [[675], [352], [126]]
  c_27_resize <= c_13;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 4 with id 28 and associated fundamentals [[506], [747], [450]]
  c_28_resize <= c_23;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'register' in stage 4 with id 29 and associated fundamentals [[-59], [-107], [-941]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_22 & "";
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 30 and associated fundamentals [[59], [107], [941]]
  c_30_resize <= c_29;
  c_30 <= -shift_left(c_30_resize, 0);
end architecture;

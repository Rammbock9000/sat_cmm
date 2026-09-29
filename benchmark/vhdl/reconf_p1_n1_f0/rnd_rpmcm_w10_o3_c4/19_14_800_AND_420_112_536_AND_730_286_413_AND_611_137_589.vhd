library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(24 downto 0);
    y_2: out std_logic_vector(25 downto 0);
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
  signal c_2: signed(17 downto 0);
  signal c_2_0_0_False_resize: signed(17 downto 0);
  signal c_2_0_0_False_shift: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_1_0_False_resize: signed(19 downto 0);
  signal c_4_1_0_False_shift: signed(19 downto 0);
  signal c_4_1_2_False_resize: signed(19 downto 0);
  signal c_4_1_2_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(19 downto 0);
  signal c_7_0_0_False_resize: signed(19 downto 0);
  signal c_7_0_0_False_shift: signed(19 downto 0);
  signal c_7_0_4_False_resize: signed(19 downto 0);
  signal c_7_0_4_False_shift: signed(19 downto 0);
  signal c_7_0_2_False_resize: signed(19 downto 0);
  signal c_7_0_2_False_shift: signed(19 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_i0_resize: signed(21 downto 0);
  signal c_8_i1_resize: signed(21 downto 0);
  signal c_8_i0_shift: signed(21 downto 0);
  signal c_8_i1_shift: signed(21 downto 0);
  signal c_8_arith: signed(21 downto 0);
  signal c_8_oshift: signed(21 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_8_1_False_resize: signed(22 downto 0);
  signal c_9_8_1_False_shift: signed(22 downto 0);
  signal c_9_8_0_False_resize: signed(22 downto 0);
  signal c_9_8_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_3_5_False_resize: signed(22 downto 0);
  signal c_10_3_5_False_shift: signed(22 downto 0);
  signal c_10_3_3_False_resize: signed(22 downto 0);
  signal c_10_3_3_False_shift: signed(22 downto 0);
  signal c_10_6_0_False_resize: signed(22 downto 0);
  signal c_10_6_0_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(25 downto 0);
  signal c_12_8_4_False_resize: signed(25 downto 0);
  signal c_12_8_4_False_shift: signed(25 downto 0);
  signal c_12_6_0_False_resize: signed(25 downto 0);
  signal c_12_6_0_False_shift: signed(25 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_8_0_False_resize: signed(25 downto 0);
  signal c_13_8_0_False_shift: signed(25 downto 0);
  signal c_13_3_1_False_resize: signed(25 downto 0);
  signal c_13_3_1_False_shift: signed(25 downto 0);
  signal c_13_3_4_False_resize: signed(25 downto 0);
  signal c_13_3_4_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(25 downto 0);
  signal c_15_resize: signed(25 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_5_1_False_resize: signed(24 downto 0);
  signal c_16_5_1_False_shift: signed(24 downto 0);
  signal c_16_5_0_False_resize: signed(24 downto 0);
  signal c_16_5_0_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_resize: signed(24 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_resize: signed(25 downto 0);
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
  -- output node 0 with id 15
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_15);
    end if;
  end process;
  -- output node 1 with id 17
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_17);
    end if;
  end process;
  -- output node 2 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_18);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [3], [5], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [1], [4], [4]]
  c_2_0_0_False_resize <= resize(c_0, 18);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [11], [37], [35]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 19,
      w_o => 22,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[5], [12], [5], [3]]
  c_4_1_0_False_resize <= resize(c_1, 20);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_1_2_False_resize <= resize(c_1, 20);
  c_4_1_2_False_shift <= shift_left(c_4_1_2_False_resize, 2);
  with config_select_2 select c_4_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_0_False_shift;
        when others => c_4 <= c_4_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[7], [56], [143], [137]]
  with config_select_3 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[75], [45], [85], [51]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_1,
      y_i => c_1,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[16], [4], [1], [16]]
  c_7_0_0_False_resize <= resize(c_0, 20);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_4_False_resize <= resize(c_0, 20);
  c_7_0_4_False_shift <= shift_left(c_7_0_4_False_resize, 4);
  c_7_0_2_False_resize <= resize(c_0, 20);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  with config_select_1 select c_7_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_0_False_shift;
        when "01" => c_7 <= c_7_0_4_False_shift;
        when others => c_7 <= c_7_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 8 and associated fundamentals [[56], [28], [41], [40]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
      w_o => 22,
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
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[112], [56], [41], [80]]
  c_9_8_1_False_resize <= resize(c_8, 23);
  c_9_8_1_False_shift <= shift_left(c_9_8_1_False_resize, 1);
  c_9_8_0_False_resize <= resize(c_8, 23);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_8_1_False_shift;
        when others => c_9 <= c_9_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[96], [88], [85], [51]]
  c_10_3_5_False_resize <= resize(c_3, 23);
  c_10_3_5_False_shift <= shift_left(c_10_3_5_False_resize, 5);
  c_10_3_3_False_resize <= resize(c_3, 23);
  c_10_3_3_False_shift <= shift_left(c_10_3_3_False_resize, 3);
  c_10_6_0_False_resize <= c_6;
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_3_5_False_shift;
        when "01" => c_10 <= c_10_3_3_False_shift;
        when others => c_10 <= c_10_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[800], [536], [413], [589]]
  with config_select_4 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[75], [448], [656], [51]]
  c_12_8_4_False_resize <= resize(c_8, 26);
  c_12_8_4_False_shift <= shift_left(c_12_8_4_False_resize, 4);
  c_12_6_0_False_resize <= resize(c_6, 26);
  c_12_6_0_False_shift <= shift_left(c_12_6_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_8_4_False_shift;
        when others => c_12 <= c_12_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[56], [28], [74], [560]]
  c_13_8_0_False_resize <= resize(c_8, 26);
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  c_13_3_1_False_resize <= resize(c_3, 26);
  c_13_3_1_False_shift <= shift_left(c_13_3_1_False_resize, 1);
  c_13_3_4_False_resize <= resize(c_3, 26);
  c_13_3_4_False_shift <= shift_left(c_13_3_4_False_resize, 4);
  with config_select_3 select c_13_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_8_0_False_shift;
        when "01" => c_13 <= c_13_3_1_False_shift;
        when others => c_13 <= c_13_3_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[19], [420], [730], [611]]
  with config_select_4 select c_14_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 15 and associated fundamentals [[19], [420], [730], [611]]
  c_15_resize <= c_14;
  c_15 <= shift_left(c_15_resize, 0);
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[14], [112], [286], [137]]
  c_16_5_1_False_resize <= resize(c_5, 25);
  c_16_5_1_False_shift <= shift_left(c_16_5_1_False_resize, 1);
  c_16_5_0_False_resize <= resize(c_5, 25);
  c_16_5_0_False_shift <= shift_left(c_16_5_0_False_resize, 0);
  with config_select_4 select c_16_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_5_1_False_shift;
        when others => c_16 <= c_16_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 17 and associated fundamentals [[14], [112], [286], [137]]
  c_17_resize <= c_16;
  c_17 <= shift_left(c_17_resize, 0);
  -- node of type 'output' in stage 4 with id 18 and associated fundamentals [[800], [536], [413], [589]]
  c_18_resize <= c_11;
  c_18 <= shift_left(c_18_resize, 0);
end architecture;

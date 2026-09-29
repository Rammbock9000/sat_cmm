library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(21 downto 0);
    y_1: out std_logic_vector(22 downto 0);
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
  signal config_select_7: std_logic_vector(1 downto 0);
  signal config_select_8: std_logic_vector(1 downto 0);
  signal c_0: signed(17 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_0_0_False_resize: signed(20 downto 0);
  signal c_1_0_0_False_shift: signed(20 downto 0);
  signal c_1_0_3_False_resize: signed(20 downto 0);
  signal c_1_0_3_False_shift: signed(20 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_3_2_False_resize: signed(21 downto 0);
  signal c_5_3_2_False_shift: signed(21 downto 0);
  signal c_5_4_1_False_resize: signed(21 downto 0);
  signal c_5_4_1_False_shift: signed(21 downto 0);
  signal c_5_4_2_False_resize: signed(21 downto 0);
  signal c_5_4_2_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_4_6_False_resize: signed(24 downto 0);
  signal c_6_4_6_False_shift: signed(24 downto 0);
  signal c_6_3_5_False_resize: signed(24 downto 0);
  signal c_6_3_5_False_shift: signed(24 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_4_5_False_resize: signed(22 downto 0);
  signal c_7_4_5_False_shift: signed(22 downto 0);
  signal c_7_3_0_False_resize: signed(22 downto 0);
  signal c_7_3_0_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(24 downto 0);
  signal c_8_i1_resize: signed(24 downto 0);
  signal c_8_i0_shift: signed(24 downto 0);
  signal c_8_i1_shift: signed(24 downto 0);
  signal c_8_arith: signed(24 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(24 downto 0);
  signal c_10_i1_resize: signed(24 downto 0);
  signal c_10_i0_shift: signed(24 downto 0);
  signal c_10_i1_shift: signed(24 downto 0);
  signal c_10_arith: signed(24 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_14_0_False_resize: signed(23 downto 0);
  signal c_15_14_0_False_shift: signed(23 downto 0);
  signal c_15_13_3_False_resize: signed(23 downto 0);
  signal c_15_13_3_False_shift: signed(23 downto 0);
  signal c_15_10_0_False_resize: signed(23 downto 0);
  signal c_15_10_0_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_10_1_False_resize: signed(24 downto 0);
  signal c_16_10_1_False_shift: signed(24 downto 0);
  signal c_16_14_2_False_resize: signed(24 downto 0);
  signal c_16_14_2_False_shift: signed(24 downto 0);
  signal c_16_14_3_False_resize: signed(24 downto 0);
  signal c_16_14_3_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_resize: signed(23 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_resize: signed(24 downto 0);
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
      config_select_7 <= config_select_6;
      config_select_8 <= config_select_7;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0 & "00");
    end if;
  end process;
  -- output node 0 with id 17
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_17(23 downto 2));
    end if;
  end process;
  -- output node 1 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_18(24 downto 2));
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [4], [32], [32]]
  c_1_0_0_False_resize <= resize(c_0, 21);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 21);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[4], [4], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[5], [5], [12], [12]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 18,
      w_o => 20,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 2,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[4], [4], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[20], [16], [48], [8]]
  c_5_3_2_False_resize <= resize(c_3, 22);
  c_5_3_2_False_shift <= shift_left(c_5_3_2_False_resize, 2);
  c_5_4_1_False_resize <= resize(c_4, 22);
  c_5_4_1_False_shift <= shift_left(c_5_4_1_False_resize, 1);
  c_5_4_2_False_resize <= resize(c_4, 22);
  c_5_4_2_False_shift <= shift_left(c_5_4_2_False_resize, 2);
  with config_select_3 select c_5_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_3_2_False_shift;
        when "01" => c_5 <= c_5_4_1_False_shift;
        when others => c_5 <= c_5_4_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[256], [256], [384], [256]]
  c_6_4_6_False_resize <= resize(c_4, 25);
  c_6_4_6_False_shift <= shift_left(c_6_4_6_False_resize, 6);
  c_6_3_5_False_resize <= resize(c_3, 25);
  c_6_3_5_False_shift <= shift_left(c_6_3_5_False_resize, 5);
  with config_select_3 select c_6_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_4_6_False_shift;
        when others => c_6 <= c_6_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[128], [128], [12], [128]]
  c_7_4_5_False_resize <= resize(c_4, 23);
  c_7_4_5_False_shift <= shift_left(c_7_4_5_False_resize, 5);
  c_7_3_0_False_resize <= resize(c_3, 23);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_4_5_False_shift;
        when others => c_7 <= c_7_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[69], [60], [108], [62]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 2,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_5,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[128], [128], [12], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 10 and associated fundamentals [[202], [184], [222], [188]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[5], [5], [12], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[5], [5], [12], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[5], [5], [12], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[69], [60], [108], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 15 and associated fundamentals [[40], [60], [108], [188]]
  c_15_14_0_False_resize <= resize(c_14, 24);
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  c_15_13_3_False_resize <= resize(c_13, 24);
  c_15_13_3_False_shift <= shift_left(c_15_13_3_False_resize, 3);
  c_15_10_0_False_resize <= c_10;
  c_15_10_0_False_shift <= shift_left(c_15_10_0_False_resize, 0);
  with config_select_6 select c_15_sel <= 
    "00" when "10",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_14_0_False_shift;
        when "01" => c_15 <= c_15_13_3_False_shift;
        when others => c_15 <= c_15_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 16 and associated fundamentals [[276], [368], [444], [496]]
  c_16_10_1_False_resize <= resize(c_10, 25);
  c_16_10_1_False_shift <= shift_left(c_16_10_1_False_resize, 1);
  c_16_14_2_False_resize <= resize(c_14, 25);
  c_16_14_2_False_shift <= shift_left(c_16_14_2_False_resize, 2);
  c_16_14_3_False_resize <= resize(c_14, 25);
  c_16_14_3_False_shift <= shift_left(c_16_14_3_False_resize, 3);
  with config_select_6 select c_16_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_10_1_False_shift;
        when "01" => c_16 <= c_16_14_2_False_shift;
        when others => c_16 <= c_16_14_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 17 and associated fundamentals [[40], [60], [108], [188]]
  c_17_resize <= c_15;
  c_17 <= shift_left(c_17_resize, 0);
  -- node of type 'output' in stage 6 with id 18 and associated fundamentals [[276], [368], [444], [496]]
  c_18_resize <= c_16;
  c_18 <= shift_left(c_18_resize, 0);
end architecture;

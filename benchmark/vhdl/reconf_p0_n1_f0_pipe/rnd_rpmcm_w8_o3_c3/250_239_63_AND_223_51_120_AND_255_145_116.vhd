library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_3_0_False_resize: signed(19 downto 0);
  signal c_5_3_0_False_shift: signed(19 downto 0);
  signal c_5_4_3_False_resize: signed(19 downto 0);
  signal c_5_4_3_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_i0_resize: signed(20 downto 0);
  signal c_7_i1_resize: signed(20 downto 0);
  signal c_7_i0_shift: signed(20 downto 0);
  signal c_7_i1_shift: signed(20 downto 0);
  signal c_7_arith: signed(20 downto 0);
  signal c_7_oshift: signed(20 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_7_0_False_resize: signed(21 downto 0);
  signal c_9_7_0_False_shift: signed(21 downto 0);
  signal c_9_8_6_False_resize: signed(21 downto 0);
  signal c_9_8_6_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(21 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_7_0_False_resize: signed(23 downto 0);
  signal c_14_7_0_False_shift: signed(23 downto 0);
  signal c_14_13_0_False_resize: signed(23 downto 0);
  signal c_14_13_0_False_shift: signed(23 downto 0);
  signal c_14_13_2_False_resize: signed(23 downto 0);
  signal c_14_13_2_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_4_0_False_resize: signed(22 downto 0);
  signal c_15_4_0_False_shift: signed(22 downto 0);
  signal c_15_3_3_False_resize: signed(22 downto 0);
  signal c_15_3_3_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_13_3_False_resize: signed(22 downto 0);
  signal c_19_13_3_False_shift: signed(22 downto 0);
  signal c_19_13_0_False_resize: signed(22 downto 0);
  signal c_19_13_0_False_shift: signed(22 downto 0);
  signal c_19_7_2_False_resize: signed(22 downto 0);
  signal c_19_7_2_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_resize: signed(23 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_resize: signed(23 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_resize: signed(22 downto 0);
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
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 20
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_20);
    end if;
  end process;
  -- output node 1 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 2 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_23);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[-63], [-15], [-15]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 4,
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
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[8], [8], [-15]]
  c_5_3_0_False_resize <= c_3(19 downto 0);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_4_3_False_resize <= resize(c_4, 20);
  c_5_4_3_False_shift <= shift_left(c_5_4_3_False_resize, 3);
  with config_select_3 select c_5_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_3_0_False_shift;
        when others => c_5 <= c_5_4_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 7 and associated fundamentals [[17], [17], [-29]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 21,
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
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 9 and associated fundamentals [[64], [17], [-29]]
  c_9_7_0_False_resize <= resize(c_7, 22);
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  c_9_8_6_False_resize <= resize(c_8, 22);
  c_9_8_6_False_shift <= shift_left(c_9_8_6_False_resize, 6);
  with config_select_5 select c_9_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_7_0_False_shift;
        when others => c_9 <= c_9_8_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 10 and associated fundamentals [[17], [17], [-29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 11 and associated fundamentals [[-239], [-51], [-145]]
  with config_select_6 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
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
      sub_i => c_11_sub_sel,
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
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[-63], [-15], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[-63], [-15], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[-252], [17], [-15]]
  c_14_7_0_False_resize <= resize(c_7, 24);
  c_14_7_0_False_shift <= shift_left(c_14_7_0_False_resize, 0);
  c_14_13_0_False_resize <= resize(c_13, 24);
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  c_14_13_2_False_resize <= resize(c_13, 24);
  c_14_13_2_False_shift <= shift_left(c_14_13_2_False_resize, 2);
  with config_select_5 select c_14_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_7_0_False_shift;
        when "01" => c_14 <= c_14_13_0_False_shift;
        when others => c_14 <= c_14_13_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[1], [-120], [-120]]
  c_15_4_0_False_resize <= resize(c_4, 23);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_3_3_False_resize <= resize(c_3, 23);
  c_15_3_3_False_shift <= shift_left(c_15_3_3_False_resize, 3);
  with config_select_3 select c_15_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_4_0_False_shift;
        when others => c_15 <= c_15_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[1], [-120], [-120]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[1], [-120], [-120]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 18 and associated fundamentals [[-250], [-223], [-255]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      x_i => c_14,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[-63], [-120], [-116]]
  c_19_13_3_False_resize <= resize(c_13, 23);
  c_19_13_3_False_shift <= shift_left(c_19_13_3_False_resize, 3);
  c_19_13_0_False_resize <= resize(c_13, 23);
  c_19_13_0_False_shift <= shift_left(c_19_13_0_False_resize, 0);
  c_19_7_2_False_resize <= resize(c_7, 23);
  c_19_7_2_False_shift <= shift_left(c_19_7_2_False_resize, 2);
  with config_select_5 select c_19_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_13_3_False_shift;
        when "01" => c_19 <= c_19_13_0_False_shift;
        when others => c_19 <= c_19_7_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 20 and associated fundamentals [[250], [223], [255]]
  c_20_resize <= c_18;
  c_20 <= -shift_left(c_20_resize, 0);
  -- node of type 'output' in stage 6 with id 21 and associated fundamentals [[239], [51], [145]]
  c_21_resize <= c_11;
  c_21 <= -shift_left(c_21_resize, 0);
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[-63], [-120], [-116]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_19 & "";
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 23 and associated fundamentals [[63], [120], [116]]
  c_23_resize <= c_22;
  c_23 <= -shift_left(c_23_resize, 0);
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
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
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(18 downto 0);
  signal c_6_2_1_False_resize: signed(18 downto 0);
  signal c_6_2_1_False_shift: signed(18 downto 0);
  signal c_6_2_0_False_resize: signed(18 downto 0);
  signal c_6_2_0_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_8_1_0_False_resize: signed(18 downto 0);
  signal c_8_1_0_False_shift: signed(18 downto 0);
  signal c_8_2_1_False_resize: signed(18 downto 0);
  signal c_8_2_1_False_shift: signed(18 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_9_0_False_resize: signed(25 downto 0);
  signal c_10_9_0_False_shift: signed(25 downto 0);
  signal c_10_7_0_False_resize: signed(25 downto 0);
  signal c_10_7_0_False_shift: signed(25 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_resize: signed(25 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_7_0_False_resize: signed(25 downto 0);
  signal c_12_7_0_False_shift: signed(25 downto 0);
  signal c_12_9_2_False_resize: signed(25 downto 0);
  signal c_12_9_2_False_shift: signed(25 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_resize: signed(25 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_5_3_False_resize: signed(25 downto 0);
  signal c_14_5_3_False_shift: signed(25 downto 0);
  signal c_14_5_0_False_resize: signed(25 downto 0);
  signal c_14_5_0_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_resize: signed(25 downto 0);
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
  -- output node 0 with id 11
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_11);
    end if;
  end process;
  -- output node 1 with id 13
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_13);
    end if;
  end process;
  -- output node 2 with id 15
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_15);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[7], [7]]
  inst_adder_node_1: entity work.adder_node
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
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[1], [3]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "0",
    '0' when others;
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
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[57], [59]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
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
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[7], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[121], [111]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
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
      sub_i => c_5_sub_sel,
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
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[1], [6]]
  c_6_2_1_False_resize <= resize(c_2, 19);
  c_6_2_1_False_shift <= shift_left(c_6_2_1_False_resize, 1);
  c_6_2_0_False_resize <= resize(c_2, 19);
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
  -- node of type 'sub' in stage 3 with id 7 and associated fundamentals [[-911], [-938]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 26,
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
      x_i => c_6,
      y_i => c_3,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[2], [7]]
  c_8_1_0_False_resize <= c_1;
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  c_8_2_1_False_resize <= resize(c_2, 19);
  c_8_2_1_False_shift <= shift_left(c_8_2_1_False_resize, 1);
  with config_select_2 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_1_0_False_shift;
        when others => c_8 <= c_8_2_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 9 and associated fundamentals [[-226], [-229]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_8,
      y_i => c_3,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[-911], [-229]]
  c_10_9_0_False_resize <= resize(c_9, 26);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_7_0_False_resize <= c_7;
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  with config_select_4 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_9_0_False_shift;
        when others => c_10 <= c_10_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 11 and associated fundamentals [[911], [229]]
  c_11_resize <= c_10;
  c_11 <= -shift_left(c_11_resize, 0);
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[-904], [-938]]
  c_12_7_0_False_resize <= c_7;
  c_12_7_0_False_shift <= shift_left(c_12_7_0_False_resize, 0);
  c_12_9_2_False_resize <= resize(c_9, 26);
  c_12_9_2_False_shift <= shift_left(c_12_9_2_False_resize, 2);
  with config_select_4 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_7_0_False_shift;
        when others => c_12 <= c_12_9_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 13 and associated fundamentals [[904], [938]]
  c_13_resize <= c_12;
  c_13 <= -shift_left(c_13_resize, 0);
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[968], [111]]
  c_14_5_3_False_resize <= resize(c_5, 26);
  c_14_5_3_False_shift <= shift_left(c_14_5_3_False_resize, 3);
  c_14_5_0_False_resize <= resize(c_5, 26);
  c_14_5_0_False_shift <= shift_left(c_14_5_0_False_resize, 0);
  with config_select_4 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_5_3_False_shift;
        when others => c_14 <= c_14_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 15 and associated fundamentals [[968], [111]]
  c_15_resize <= c_14;
  c_15 <= shift_left(c_15_resize, 0);
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(23 downto 0);
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
  signal c_1: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(23 downto 0);
  signal c_4_0_0_False_resize: signed(23 downto 0);
  signal c_4_0_0_False_shift: signed(23 downto 0);
  signal c_4_0_6_False_resize: signed(23 downto 0);
  signal c_4_0_6_False_shift: signed(23 downto 0);
  signal c_4_0_8_False_resize: signed(23 downto 0);
  signal c_4_0_8_False_shift: signed(23 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(15 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_3_0_False_resize: signed(20 downto 0);
  signal c_8_3_0_False_shift: signed(20 downto 0);
  signal c_8_7_5_False_resize: signed(20 downto 0);
  signal c_8_7_5_False_shift: signed(20 downto 0);
  signal c_8_3_3_False_resize: signed(20 downto 0);
  signal c_8_3_3_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_i0_resize: signed(24 downto 0);
  signal c_10_i1_resize: signed(24 downto 0);
  signal c_10_i0_shift: signed(24 downto 0);
  signal c_10_i1_shift: signed(24 downto 0);
  signal c_10_arith: signed(24 downto 0);
  signal c_10_oshift: signed(24 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(23 downto 0);
  signal c_11_9_3_False_resize: signed(23 downto 0);
  signal c_11_9_3_False_shift: signed(23 downto 0);
  signal c_11_6_0_False_resize: signed(23 downto 0);
  signal c_11_6_0_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(21 downto 0);
  signal c_13_3_2_False_resize: signed(21 downto 0);
  signal c_13_3_2_False_shift: signed(21 downto 0);
  signal c_13_3_0_False_resize: signed(21 downto 0);
  signal c_13_3_0_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_17_0_False_resize: signed(25 downto 0);
  signal c_18_17_0_False_shift: signed(25 downto 0);
  signal c_18_12_0_False_resize: signed(25 downto 0);
  signal c_18_12_0_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_6_1_False_resize: signed(23 downto 0);
  signal c_19_6_1_False_shift: signed(23 downto 0);
  signal c_19_9_1_False_resize: signed(23 downto 0);
  signal c_19_9_1_False_shift: signed(23 downto 0);
  signal c_19_6_0_False_resize: signed(23 downto 0);
  signal c_19_6_0_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_resize: signed(25 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_resize: signed(25 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_resize: signed(23 downto 0);
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
  -- output node 2 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_24);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [8], [8], [1]]
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_3_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [12], [12], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 20,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[64], [256], [1], [64]]
  c_4_0_0_False_resize <= resize(c_0, 24);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_6_False_resize <= resize(c_0, 24);
  c_4_0_6_False_shift <= shift_left(c_4_0_6_False_resize, 6);
  c_4_0_8_False_resize <= resize(c_0, 24);
  c_4_0_8_False_shift <= shift_left(c_4_0_8_False_resize, 8);
  with config_select_1 select c_4_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_0_0_False_shift;
        when "01" => c_4 <= c_4_0_6_False_shift;
        when others => c_4 <= c_4_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[64], [256], [1], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[70], [-232], [23], [70]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      sub_i => c_6_sub_sel,
      x_i => c_3,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[24], [32], [12], [32]]
  c_8_3_0_False_resize <= resize(c_3, 21);
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  c_8_7_5_False_resize <= resize(c_7, 21);
  c_8_7_5_False_shift <= shift_left(c_8_7_5_False_resize, 5);
  c_8_3_3_False_resize <= resize(c_3, 21);
  c_8_3_3_False_shift <= shift_left(c_8_3_3_False_resize, 3);
  with config_select_3 select c_8_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_3_0_False_shift;
        when "01" => c_8 <= c_8_7_5_False_shift;
        when others => c_8 <= c_8_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[3], [12], [12], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[195], [268], [108], [253]]
  with config_select_4 select c_10_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 25,
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
      c_10 <= c_10_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[70], [-232], [23], [24]]
  c_11_9_3_False_resize <= resize(c_9, 24);
  c_11_9_3_False_shift <= shift_left(c_11_9_3_False_resize, 3);
  c_11_6_0_False_resize <= c_6;
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_4 select c_11_sel <= 
    "0" when "11",
    "1" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_9_3_False_shift;
        when others => c_11 <= c_11_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[850], [840], [409], [988]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 25,
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
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[3], [12], [48], [3]]
  c_13_3_2_False_resize <= resize(c_3, 22);
  c_13_3_2_False_shift <= shift_left(c_13_3_2_False_resize, 2);
  c_13_3_0_False_resize <= resize(c_3, 22);
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "0" when "10",
    "1" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_3_2_False_shift;
        when others => c_13 <= c_13_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[3], [12], [48], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[3], [12], [48], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 16 and associated fundamentals [[856], [864], [505], [994]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_15,
      y_i => c_12,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[195], [268], [108], [253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 18 and associated fundamentals [[850], [268], [409], [253]]
  c_18_17_0_False_resize <= resize(c_17, 26);
  c_18_17_0_False_shift <= shift_left(c_18_17_0_False_resize, 0);
  c_18_12_0_False_resize <= c_12;
  c_18_12_0_False_shift <= shift_left(c_18_12_0_False_resize, 0);
  with config_select_6 select c_18_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_17_0_False_shift;
        when others => c_18 <= c_18_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[70], [24], [23], [140]]
  c_19_6_1_False_resize <= c_6;
  c_19_6_1_False_shift <= shift_left(c_19_6_1_False_resize, 1);
  c_19_9_1_False_resize <= resize(c_9, 24);
  c_19_9_1_False_shift <= shift_left(c_19_9_1_False_resize, 1);
  c_19_6_0_False_resize <= c_6;
  c_19_6_0_False_shift <= shift_left(c_19_6_0_False_resize, 0);
  with config_select_4 select c_19_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_6_1_False_shift;
        when "01" => c_19 <= c_19_9_1_False_shift;
        when others => c_19 <= c_19_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 20 and associated fundamentals [[850], [268], [409], [253]]
  c_20_resize <= c_18;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'output' in stage 6 with id 21 and associated fundamentals [[856], [864], [505], [994]]
  c_21_resize <= c_16;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[70], [24], [23], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[70], [24], [23], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 24 and associated fundamentals [[70], [24], [23], [140]]
  c_24_resize <= c_23;
  c_24 <= shift_left(c_24_resize, 0);
end architecture;

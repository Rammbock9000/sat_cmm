library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(24 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(25 downto 0);
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
  signal config_select_7: std_logic_vector(0 downto 0);
  signal config_select_8: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_4_0_False_resize: signed(19 downto 0);
  signal c_6_4_0_False_shift: signed(19 downto 0);
  signal c_6_3_2_False_resize: signed(19 downto 0);
  signal c_6_3_2_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_5_0_False_resize: signed(22 downto 0);
  signal c_9_5_0_False_shift: signed(22 downto 0);
  signal c_9_8_6_False_resize: signed(22 downto 0);
  signal c_9_8_6_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_8_9_False_resize: signed(24 downto 0);
  signal c_13_8_9_False_shift: signed(24 downto 0);
  signal c_13_5_0_False_resize: signed(24 downto 0);
  signal c_13_5_0_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(22 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_17_3_False_resize: signed(25 downto 0);
  signal c_18_17_3_False_shift: signed(25 downto 0);
  signal c_18_11_0_False_resize: signed(25 downto 0);
  signal c_18_11_0_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_12_0_False_resize: signed(23 downto 0);
  signal c_23_12_0_False_shift: signed(23 downto 0);
  signal c_23_22_6_False_resize: signed(23 downto 0);
  signal c_23_22_6_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_11_0_False_resize: signed(25 downto 0);
  signal c_24_11_0_False_shift: signed(25 downto 0);
  signal c_24_17_1_False_resize: signed(25 downto 0);
  signal c_24_17_1_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_resize: signed(24 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_resize: signed(25 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_resize: signed(25 downto 0);
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
  -- output node 0 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 1 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 2 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 3 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_34);
    end if;
  end process;
  -- output node 4 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_36);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[17], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[81], [67]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 23,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [12]]
  c_6_4_0_False_resize <= resize(c_4, 20);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_3_2_False_resize <= c_3(19 downto 0);
  c_6_3_2_False_shift <= shift_left(c_6_3_2_False_resize, 2);
  with config_select_3 select c_6_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_4_0_False_shift;
        when others => c_6 <= c_6_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 7 and associated fundamentals [[163], [146]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      x_i => c_6,
      y_i => c_5,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[64], [67]]
  c_9_5_0_False_resize <= c_5;
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  c_9_8_6_False_resize <= resize(c_8, 23);
  c_9_8_6_False_shift <= shift_left(c_9_8_6_False_resize, 6);
  with config_select_4 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_5_0_False_shift;
        when others => c_9 <= c_9_8_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 11 and associated fundamentals [[513], [537]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 26,
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
  -- node of type 'add' in stage 3 with id 12 and associated fundamentals [[145], [131]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 7,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_4,
      y_i => c_3,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[81], [512]]
  c_13_8_9_False_resize <= resize(c_8, 25);
  c_13_8_9_False_shift <= shift_left(c_13_8_9_False_resize, 9);
  c_13_5_0_False_resize <= resize(c_5, 25);
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  with config_select_4 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_8_9_False_shift;
        when others => c_13 <= c_13_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[145], [131]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_12 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 15 and associated fundamentals [[209], [774]]
  with config_select_5 select c_15_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_13,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[81], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[81], [67]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 18 and associated fundamentals [[513], [536]]
  c_18_17_3_False_resize <= resize(c_17, 26);
  c_18_17_3_False_shift <= shift_left(c_18_17_3_False_resize, 3);
  c_18_11_0_False_resize <= c_11;
  c_18_11_0_False_shift <= shift_left(c_18_11_0_False_resize, 0);
  with config_select_6 select c_18_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_17_3_False_shift;
        when others => c_18 <= c_18_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[163], [146]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[163], [146]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 7 with id 21 and associated fundamentals [[-863], [-926]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_20,
      y_i => c_18,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 22 and associated fundamentals [[17], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[145], [192]]
  c_23_12_0_False_resize <= c_12;
  c_23_12_0_False_shift <= shift_left(c_23_12_0_False_resize, 0);
  c_23_22_6_False_resize <= resize(c_22, 24);
  c_23_22_6_False_shift <= shift_left(c_23_22_6_False_resize, 6);
  with config_select_4 select c_23_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_12_0_False_shift;
        when others => c_23 <= c_23_22_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 24 and associated fundamentals [[162], [537]]
  c_24_11_0_False_resize <= c_11;
  c_24_11_0_False_shift <= shift_left(c_24_11_0_False_resize, 0);
  c_24_17_1_False_resize <= resize(c_17, 26);
  c_24_17_1_False_shift <= shift_left(c_24_17_1_False_resize, 1);
  with config_select_6 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_11_0_False_shift;
        when others => c_24 <= c_24_17_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[209], [774]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[209], [774]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 27 and associated fundamentals [[209], [774]]
  c_27_resize <= c_26;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[145], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[145], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[145], [192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 31 and associated fundamentals [[290], [384]]
  c_31_resize <= resize(c_30, 25);
  c_31 <= shift_left(c_31_resize, 1);
  -- node of type 'output' in stage 7 with id 32 and associated fundamentals [[863], [926]]
  c_32_resize <= c_21;
  c_32 <= -shift_left(c_32_resize, 0);
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[162], [537]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_24 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 34 and associated fundamentals [[162], [537]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[163], [146]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_20 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 36 and associated fundamentals [[652], [584]]
  c_36_resize <= resize(c_35, 26);
  c_36 <= shift_left(c_36_resize, 2);
end architecture;

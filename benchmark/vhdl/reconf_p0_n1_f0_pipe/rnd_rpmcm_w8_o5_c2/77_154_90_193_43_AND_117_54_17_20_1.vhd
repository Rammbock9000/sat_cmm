library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(22 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(21 downto 0);
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
  signal c_3: signed(19 downto 0);
  signal c_3_1_2_False_resize: signed(19 downto 0);
  signal c_3_1_2_False_shift: signed(19 downto 0);
  signal c_3_2_0_False_resize: signed(19 downto 0);
  signal c_3_2_0_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(19 downto 0);
  signal c_7_0_4_False_resize: signed(19 downto 0);
  signal c_7_0_4_False_shift: signed(19 downto 0);
  signal c_7_0_0_False_resize: signed(19 downto 0);
  signal c_7_0_0_False_shift: signed(19 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(18 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_6_0_False_resize: signed(21 downto 0);
  signal c_11_6_0_False_shift: signed(21 downto 0);
  signal c_11_10_0_False_resize: signed(21 downto 0);
  signal c_11_10_0_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(22 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_13_0_False_resize: signed(22 downto 0);
  signal c_15_13_0_False_shift: signed(22 downto 0);
  signal c_15_14_0_False_resize: signed(22 downto 0);
  signal c_15_14_0_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_16_1_False_resize: signed(22 downto 0);
  signal c_17_16_1_False_shift: signed(22 downto 0);
  signal c_17_5_0_False_resize: signed(22 downto 0);
  signal c_17_5_0_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_5_0_False_resize: signed(23 downto 0);
  signal c_19_5_0_False_shift: signed(23 downto 0);
  signal c_19_18_2_False_resize: signed(23 downto 0);
  signal c_19_18_2_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_20_9_0_False_resize: signed(21 downto 0);
  signal c_20_9_0_False_shift: signed(21 downto 0);
  signal c_20_12_0_False_resize: signed(21 downto 0);
  signal c_20_12_0_False_shift: signed(21 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_resize: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_resize: signed(23 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_resize: signed(22 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_resize: signed(23 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_29_resize: signed(21 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 21
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_21);
    end if;
  end process;
  -- output node 1 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 2 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 3 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 4 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_29);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [5]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "0",
    '0' when others;
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[12], [1]]
  c_3_1_2_False_resize <= resize(c_1, 20);
  c_3_1_2_False_shift <= shift_left(c_3_1_2_False_resize, 2);
  c_3_2_0_False_resize <= resize(c_2, 20);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_2_False_shift;
        when others => c_3 <= c_3_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[193], [17]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 4,
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
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[45], [85]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "0",
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
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[1], [16]]
  c_7_0_4_False_resize <= resize(c_0, 20);
  c_7_0_4_False_shift <= shift_left(c_7_0_4_False_resize, 4);
  c_7_0_0_False_resize <= resize(c_0, 20);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_4_False_shift;
        when others => c_7 <= c_7_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[43], [117]]
  with config_select_3 select c_9_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_9_sub_sel,
      x_i => c_6,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 10 and associated fundamentals [[3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[45], [5]]
  c_11_6_0_False_resize <= c_6(21 downto 0);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  c_11_10_0_False_resize <= resize(c_10, 22);
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_6_0_False_shift;
        when others => c_11 <= c_11_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[77], [27]]
  with config_select_4 select c_13_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 23,
      s_x_i => 5,
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
      x_i => c_12,
      y_i => c_11,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[43], [117]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[77], [117]]
  c_15_13_0_False_resize <= c_13;
  c_15_13_0_False_shift <= shift_left(c_15_13_0_False_resize, 0);
  c_15_14_0_False_resize <= c_14;
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  with config_select_5 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_13_0_False_shift;
        when others => c_15 <= c_15_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[45], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[90], [17]]
  c_17_16_1_False_resize <= c_16;
  c_17_16_1_False_shift <= shift_left(c_17_16_1_False_resize, 1);
  c_17_5_0_False_resize <= c_5(22 downto 0);
  c_17_5_0_False_shift <= shift_left(c_17_5_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_16_1_False_shift;
        when others => c_17 <= c_17_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[193], [20]]
  c_19_5_0_False_resize <= c_5;
  c_19_5_0_False_shift <= shift_left(c_19_5_0_False_resize, 0);
  c_19_18_2_False_resize <= resize(c_18, 24);
  c_19_18_2_False_shift <= shift_left(c_19_18_2_False_resize, 2);
  with config_select_4 select c_19_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_5_0_False_shift;
        when others => c_19 <= c_19_18_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[43], [1]]
  c_20_9_0_False_resize <= c_9(21 downto 0);
  c_20_9_0_False_shift <= shift_left(c_20_9_0_False_resize, 0);
  c_20_12_0_False_resize <= resize(c_12, 22);
  c_20_12_0_False_shift <= shift_left(c_20_12_0_False_resize, 0);
  with config_select_4 select c_20_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_9_0_False_shift;
        when others => c_20 <= c_20_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 21 and associated fundamentals [[77], [117]]
  c_21_resize <= c_15;
  c_21 <= shift_left(c_21_resize, 0);
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[77], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_13 & "";
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 23 and associated fundamentals [[154], [54]]
  c_23_resize <= resize(c_22, 24);
  c_23 <= shift_left(c_23_resize, 1);
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[90], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_17 & "";
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 25 and associated fundamentals [[90], [17]]
  c_25_resize <= c_24;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[193], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_19 & "";
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 27 and associated fundamentals [[193], [20]]
  c_27_resize <= c_26;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[43], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_20 & "";
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 29 and associated fundamentals [[43], [1]]
  c_29_resize <= c_28;
  c_29 <= shift_left(c_29_resize, 0);
end architecture;

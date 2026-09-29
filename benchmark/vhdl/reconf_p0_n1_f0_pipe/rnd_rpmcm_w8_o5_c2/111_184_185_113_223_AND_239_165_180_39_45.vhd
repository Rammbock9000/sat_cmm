library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(23 downto 0);
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
  signal config_select_9: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_i0_resize: signed(21 downto 0);
  signal c_1_i1_resize: signed(21 downto 0);
  signal c_1_i0_shift: signed(21 downto 0);
  signal c_1_i1_shift: signed(21 downto 0);
  signal c_1_arith: signed(21 downto 0);
  signal c_1_oshift: signed(21 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(22 downto 0);
  signal c_2_1_2_False_resize: signed(22 downto 0);
  signal c_2_1_2_False_shift: signed(22 downto 0);
  signal c_2_1_0_False_resize: signed(22 downto 0);
  signal c_2_1_0_False_shift: signed(22 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(15 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_9_1_False_resize: signed(21 downto 0);
  signal c_10_9_1_False_shift: signed(21 downto 0);
  signal c_10_5_0_False_resize: signed(21 downto 0);
  signal c_10_5_0_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_5_1_False_resize: signed(22 downto 0);
  signal c_13_5_1_False_shift: signed(22 downto 0);
  signal c_13_6_0_False_resize: signed(22 downto 0);
  signal c_13_6_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_16_3_1_False_resize: signed(20 downto 0);
  signal c_16_3_1_False_shift: signed(20 downto 0);
  signal c_16_1_0_False_resize: signed(20 downto 0);
  signal c_16_1_0_False_shift: signed(20 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(20 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_21_0_False_resize: signed(23 downto 0);
  signal c_22_21_0_False_shift: signed(23 downto 0);
  signal c_22_15_0_False_resize: signed(23 downto 0);
  signal c_22_15_0_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_24_2_False_resize: signed(23 downto 0);
  signal c_25_24_2_False_shift: signed(23 downto 0);
  signal c_25_15_0_False_resize: signed(23 downto 0);
  signal c_25_15_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_resize: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_resize: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_resize: signed(23 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_resize: signed(22 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
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
      config_select_9 <= config_select_8;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 1 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 2 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_30);
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
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[28], [36]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 5,
      s_y_i => 2,
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
      c_1 <= c_1_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[112], [36]]
  c_2_1_2_False_resize <= resize(c_1, 23);
  c_2_1_2_False_shift <= shift_left(c_2_1_2_False_resize, 2);
  c_2_1_0_False_resize <= resize(c_1, 23);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_2 select c_2_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_1_2_False_shift;
        when others => c_2 <= c_2_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[111], [37]]
  with config_select_3 select c_5_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 23,
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
      sub_i => c_5_sub_sel,
      x_i => c_2,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 7 and associated fundamentals [[113], [39]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 23,
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
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[28], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[28], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[56], [37]]
  c_10_9_1_False_resize <= c_9;
  c_10_9_1_False_shift <= shift_left(c_10_9_1_False_resize, 1);
  c_10_5_0_False_resize <= c_5(21 downto 0);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  with config_select_4 select c_10_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_9_1_False_shift;
        when others => c_10 <= c_10_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 12 and associated fundamentals [[184], [165]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 7,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[1], [74]]
  c_13_5_1_False_resize <= c_5;
  c_13_5_1_False_shift <= shift_left(c_13_5_1_False_resize, 1);
  c_13_6_0_False_resize <= resize(c_6, 23);
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  with config_select_4 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_5_1_False_shift;
        when others => c_13 <= c_13_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[1], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 15 and associated fundamentals [[185], [239]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 24,
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
      x_i => c_14,
      y_i => c_12,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[28], [2]]
  c_16_3_1_False_resize <= resize(c_3, 21);
  c_16_3_1_False_shift <= shift_left(c_16_3_1_False_resize, 1);
  c_16_1_0_False_resize <= c_1(20 downto 0);
  c_16_1_0_False_shift <= shift_left(c_16_1_0_False_resize, 0);
  with config_select_2 select c_16_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_3_1_False_shift;
        when others => c_16 <= c_16_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 17 and associated fundamentals [[28], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 18 and associated fundamentals [[223], [45]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_17,
      y_i => c_5,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[111], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[111], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[111], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 22 and associated fundamentals [[111], [239]]
  c_22_21_0_False_resize <= resize(c_21, 24);
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  c_22_15_0_False_resize <= c_15;
  c_22_15_0_False_shift <= shift_left(c_22_15_0_False_resize, 0);
  with config_select_7 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_21_0_False_shift;
        when others => c_22 <= c_22_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[223], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[223], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[185], [180]]
  c_25_24_2_False_resize <= c_24;
  c_25_24_2_False_shift <= shift_left(c_25_24_2_False_resize, 2);
  c_25_15_0_False_resize <= c_15;
  c_25_15_0_False_shift <= shift_left(c_25_15_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_24_2_False_shift;
        when others => c_25 <= c_25_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 26 and associated fundamentals [[111], [239]]
  c_26_resize <= c_22;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[184], [165]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[184], [165]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 29 and associated fundamentals [[184], [165]]
  c_29_resize <= c_28;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 7 with id 30 and associated fundamentals [[185], [180]]
  c_30_resize <= c_25;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[113], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[113], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[113], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 34 and associated fundamentals [[113], [39]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[223], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_24 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 36 and associated fundamentals [[223], [45]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
end architecture;

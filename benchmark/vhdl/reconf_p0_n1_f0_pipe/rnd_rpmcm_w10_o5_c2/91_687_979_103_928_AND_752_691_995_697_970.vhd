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
  signal config_select_9: std_logic_vector(0 downto 0);
  signal config_select_10: std_logic_vector(0 downto 0);
  signal config_select_11: std_logic_vector(0 downto 0);
  signal config_select_12: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
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
  signal c_4: signed(20 downto 0);
  signal c_4_3_0_False_resize: signed(20 downto 0);
  signal c_4_3_0_False_shift: signed(20 downto 0);
  signal c_4_3_3_False_resize: signed(20 downto 0);
  signal c_4_3_3_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_8_8_False_resize: signed(23 downto 0);
  signal c_9_8_8_False_shift: signed(23 downto 0);
  signal c_9_7_0_False_resize: signed(23 downto 0);
  signal c_9_7_0_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_i0_resize: signed(24 downto 0);
  signal c_13_i1_resize: signed(24 downto 0);
  signal c_13_i0_shift: signed(24 downto 0);
  signal c_13_i1_shift: signed(24 downto 0);
  signal c_13_arith: signed(24 downto 0);
  signal c_13_oshift: signed(24 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(22 downto 0);
  signal c_14_7_1_False_resize: signed(22 downto 0);
  signal c_14_7_1_False_shift: signed(22 downto 0);
  signal c_14_11_0_False_resize: signed(22 downto 0);
  signal c_14_11_0_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_17_0_False_resize: signed(24 downto 0);
  signal c_18_17_0_False_shift: signed(24 downto 0);
  signal c_18_13_2_False_resize: signed(24 downto 0);
  signal c_18_13_2_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_13_0_False_resize: signed(24 downto 0);
  signal c_22_13_0_False_shift: signed(24 downto 0);
  signal c_22_21_3_False_resize: signed(24 downto 0);
  signal c_22_21_3_False_shift: signed(24 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_24_0_False_resize: signed(25 downto 0);
  signal c_25_24_0_False_shift: signed(25 downto 0);
  signal c_25_19_0_False_resize: signed(25 downto 0);
  signal c_25_19_0_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(24 downto 0);
  signal c_29_13_0_False_resize: signed(24 downto 0);
  signal c_29_13_0_False_shift: signed(24 downto 0);
  signal c_29_21_0_False_resize: signed(24 downto 0);
  signal c_29_21_0_False_shift: signed(24 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_i0_resize: signed(24 downto 0);
  signal c_31_i1_resize: signed(24 downto 0);
  signal c_31_i0_shift: signed(24 downto 0);
  signal c_31_i1_shift: signed(24 downto 0);
  signal c_31_arith: signed(24 downto 0);
  signal c_31_oshift: signed(24 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(21 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_31_0_False_resize: signed(25 downto 0);
  signal c_34_31_0_False_shift: signed(25 downto 0);
  signal c_34_33_4_False_resize: signed(25 downto 0);
  signal c_34_33_4_False_shift: signed(25 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_35_33_4_False_resize: signed(24 downto 0);
  signal c_35_33_4_False_shift: signed(24 downto 0);
  signal c_35_31_0_False_resize: signed(24 downto 0);
  signal c_35_31_0_False_shift: signed(24 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_resize: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_resize: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_resize: signed(25 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
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
      config_select_10 <= config_select_9;
      config_select_11 <= config_select_10;
      config_select_12 <= config_select_11;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 1 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 2 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 3 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 4 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_47);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[8], [1]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-15], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 20,
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
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[-15], [24]]
  c_4_3_0_False_resize <= resize(c_3, 21);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_3_3_False_resize <= resize(c_3, 21);
  c_4_3_3_False_shift <= shift_left(c_4_3_3_False_resize, 3);
  with config_select_3 select c_4_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_3_0_False_shift;
        when others => c_4 <= c_4_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[-29], [-47]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 22,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_4,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 8 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 9 and associated fundamentals [[-29], [256]]
  c_9_8_8_False_resize <= resize(c_8, 24);
  c_9_8_8_False_shift <= shift_left(c_9_8_8_False_resize, 8);
  c_9_7_0_False_resize <= resize(c_7, 24);
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  with config_select_5 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_8_8_False_shift;
        when others => c_9 <= c_9_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[-15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[-15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 12 and associated fundamentals [[-15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[-73], [-509]]
  with config_select_6 select c_13_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_13_sub_sel,
      x_i => c_12,
      y_i => c_9,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[-15], [-94]]
  c_14_7_1_False_resize <= resize(c_7, 23);
  c_14_7_1_False_shift <= shift_left(c_14_7_1_False_resize, 1);
  c_14_11_0_False_resize <= resize(c_11, 23);
  c_14_11_0_False_shift <= shift_left(c_14_11_0_False_resize, 0);
  with config_select_5 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_7_1_False_shift;
        when others => c_14 <= c_14_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 15 and associated fundamentals [[-15], [-94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 16 and associated fundamentals [[-103], [-697]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 26,
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
      x_i => c_13,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[-15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 18 and associated fundamentals [[-292], [3]]
  c_18_17_0_False_resize <= resize(c_17, 25);
  c_18_17_0_False_shift <= shift_left(c_18_17_0_False_resize, 0);
  c_18_13_2_False_resize <= c_13;
  c_18_13_2_False_shift <= shift_left(c_18_13_2_False_resize, 2);
  with config_select_7 select c_18_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_17_0_False_shift;
        when others => c_18 <= c_18_13_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 19 and associated fundamentals [[-687], [-691]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      x_i => c_18,
      y_i => c_16,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[-29], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[-29], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 22 and associated fundamentals [[-73], [-376]]
  c_22_13_0_False_resize <= c_13;
  c_22_13_0_False_shift <= shift_left(c_22_13_0_False_resize, 0);
  c_22_21_3_False_resize <= resize(c_21, 25);
  c_22_21_3_False_shift <= shift_left(c_22_21_3_False_resize, 3);
  with config_select_7 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_13_0_False_shift;
        when others => c_22 <= c_22_21_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 23 and associated fundamentals [[-73], [-509]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 24 and associated fundamentals [[-73], [-509]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 25 and associated fundamentals [[-687], [-509]]
  c_25_24_0_False_resize <= resize(c_24, 26);
  c_25_24_0_False_shift <= shift_left(c_25_24_0_False_resize, 0);
  c_25_19_0_False_resize <= c_19;
  c_25_19_0_False_shift <= shift_left(c_25_19_0_False_resize, 0);
  with config_select_9 select c_25_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_24_0_False_shift;
        when others => c_25 <= c_25_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 26 and associated fundamentals [[-73], [-376]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 27 and associated fundamentals [[-73], [-376]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 28 and associated fundamentals [[-979], [-995]]
  with config_select_10 select c_28_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
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
      sub_i => c_28_sub_sel,
      x_i => c_27,
      y_i => c_25,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[-29], [-509]]
  c_29_13_0_False_resize <= c_13;
  c_29_13_0_False_shift <= shift_left(c_29_13_0_False_resize, 0);
  c_29_21_0_False_resize <= resize(c_21, 25);
  c_29_21_0_False_shift <= shift_left(c_29_21_0_False_resize, 0);
  with config_select_7 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_13_0_False_shift;
        when others => c_29 <= c_29_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[-15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_17 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 31 and associated fundamentals [[-91], [-485]]
  with config_select_8 select c_31_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 25,
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
      sub_i => c_31_sub_sel,
      x_i => c_30,
      y_i => c_29,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[-29], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[-29], [-47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 34 and associated fundamentals [[-91], [-752]]
  c_34_31_0_False_resize <= resize(c_31, 26);
  c_34_31_0_False_shift <= shift_left(c_34_31_0_False_resize, 0);
  c_34_33_4_False_resize <= resize(c_33, 26);
  c_34_33_4_False_shift <= shift_left(c_34_33_4_False_resize, 4);
  with config_select_9 select c_34_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_31_0_False_shift;
        when others => c_34 <= c_34_33_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 35 and associated fundamentals [[-464], [-485]]
  c_35_33_4_False_resize <= resize(c_33, 25);
  c_35_33_4_False_shift <= shift_left(c_35_33_4_False_resize, 4);
  c_35_31_0_False_resize <= c_31;
  c_35_31_0_False_shift <= shift_left(c_35_31_0_False_resize, 0);
  with config_select_9 select c_35_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_33_4_False_shift;
        when others => c_35 <= c_35_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 36 and associated fundamentals [[-91], [-752]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_34 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 37 and associated fundamentals [[91], [752]]
  c_37_resize <= c_36;
  c_37 <= -shift_left(c_37_resize, 0);
  -- node of type 'register' in stage 9 with id 38 and associated fundamentals [[-687], [-691]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 39 and associated fundamentals [[-687], [-691]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 40 and associated fundamentals [[687], [691]]
  c_40_resize <= c_39;
  c_40 <= -shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 10 with id 41 and associated fundamentals [[979], [995]]
  c_41_resize <= c_28;
  c_41 <= -shift_left(c_41_resize, 0);
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[-103], [-697]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[-103], [-697]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 44 and associated fundamentals [[-103], [-697]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 45 and associated fundamentals [[103], [697]]
  c_45_resize <= c_44;
  c_45 <= -shift_left(c_45_resize, 0);
  -- node of type 'register' in stage 10 with id 46 and associated fundamentals [[-464], [-485]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_35 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 47 and associated fundamentals [[928], [970]]
  c_47_resize <= resize(c_46, 26);
  c_47 <= -shift_left(c_47_resize, 1);
end architecture;

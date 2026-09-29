library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(24 downto 0);
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
  signal c_2: signed(15 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_2_2_False_resize: signed(18 downto 0);
  signal c_3_2_2_False_shift: signed(18 downto 0);
  signal c_3_1_0_False_resize: signed(18 downto 0);
  signal c_3_1_0_False_shift: signed(18 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_1_6_False_resize: signed(24 downto 0);
  signal c_6_1_6_False_shift: signed(24 downto 0);
  signal c_6_2_0_False_resize: signed(24 downto 0);
  signal c_6_2_0_False_shift: signed(24 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_0_5_False_resize: signed(20 downto 0);
  signal c_7_0_5_False_shift: signed(20 downto 0);
  signal c_7_0_0_False_resize: signed(20 downto 0);
  signal c_7_0_0_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_11: signed(18 downto 0);
  signal c_12: signed(18 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_1_3_False_resize: signed(21 downto 0);
  signal c_14_1_3_False_shift: signed(21 downto 0);
  signal c_14_1_0_False_resize: signed(21 downto 0);
  signal c_14_1_0_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(21 downto 0);
  signal c_17_9_0_False_resize: signed(21 downto 0);
  signal c_17_9_0_False_shift: signed(21 downto 0);
  signal c_17_5_0_False_resize: signed(21 downto 0);
  signal c_17_5_0_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_16_0_False_resize: signed(22 downto 0);
  signal c_19_16_0_False_shift: signed(22 downto 0);
  signal c_19_18_0_False_resize: signed(22 downto 0);
  signal c_19_18_0_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_22_2_6_False_resize: signed(21 downto 0);
  signal c_22_2_6_False_shift: signed(21 downto 0);
  signal c_22_1_0_False_resize: signed(21 downto 0);
  signal c_22_1_0_False_shift: signed(21 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(23 downto 0);
  signal c_24_16_1_False_resize: signed(23 downto 0);
  signal c_24_16_1_False_shift: signed(23 downto 0);
  signal c_24_10_0_False_resize: signed(23 downto 0);
  signal c_24_10_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_25_0_False_resize: signed(25 downto 0);
  signal c_26_25_0_False_shift: signed(25 downto 0);
  signal c_26_10_0_False_resize: signed(25 downto 0);
  signal c_26_10_0_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_25_0_False_resize: signed(23 downto 0);
  signal c_27_25_0_False_shift: signed(23 downto 0);
  signal c_27_16_0_False_resize: signed(23 downto 0);
  signal c_27_16_0_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_resize: signed(23 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_resize: signed(25 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_37_resize: signed(24 downto 0);
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
  -- output node 0 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 1 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 2 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 3 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 4 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_37);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[-6], [-6]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 1,
      s_y_i => 3,
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[-6], [4]]
  c_3_2_2_False_resize <= resize(c_2, 19);
  c_3_2_2_False_shift <= shift_left(c_3_2_2_False_resize, 2);
  c_3_1_0_False_resize <= c_1;
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_2_2_False_shift;
        when others => c_3 <= c_3_1_0_False_shift;
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
  -- node of type 'sub' in stage 3 with id 5 and associated fundamentals [[-49], [31]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 22,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[-384], [1]]
  c_6_1_6_False_resize <= resize(c_1, 25);
  c_6_1_6_False_shift <= shift_left(c_6_1_6_False_resize, 6);
  c_6_2_0_False_resize <= resize(c_2, 25);
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_1_6_False_shift;
        when others => c_6 <= c_6_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[1], [32]]
  c_7_0_5_False_resize <= resize(c_0, 21);
  c_7_0_5_False_shift <= shift_left(c_7_0_5_False_resize, 5);
  c_7_0_0_False_resize <= resize(c_0, 21);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_5_False_shift;
        when others => c_7 <= c_7_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 9 and associated fundamentals [[-386], [-63]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 25,
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
      x_i => c_6,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 10 and associated fundamentals [[-723], [-157]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_9,
      y_i => c_5,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 11 and associated fundamentals [[-6], [-6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[-6], [-6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 13 and associated fundamentals [[-817], [-737]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 26,
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
      x_i => c_12,
      y_i => c_5,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[-6], [-48]]
  c_14_1_3_False_resize <= resize(c_1, 22);
  c_14_1_3_False_shift <= shift_left(c_14_1_3_False_resize, 3);
  c_14_1_0_False_resize <= resize(c_1, 22);
  c_14_1_0_False_shift <= shift_left(c_14_1_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_1_3_False_shift;
        when others => c_14 <= c_14_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[-6], [-48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 16 and associated fundamentals [[-73], [223]]
  with config_select_4 select c_16_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_16_sub_sel,
      x_i => c_5,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[-49], [-63]]
  c_17_9_0_False_resize <= c_9(21 downto 0);
  c_17_9_0_False_shift <= shift_left(c_17_9_0_False_resize, 0);
  c_17_5_0_False_resize <= c_5;
  c_17_5_0_False_shift <= shift_left(c_17_5_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_9_0_False_shift;
        when others => c_17 <= c_17_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[-6], [-6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[-73], [-6]]
  c_19_16_0_False_resize <= c_16(22 downto 0);
  c_19_16_0_False_shift <= shift_left(c_19_16_0_False_resize, 0);
  c_19_18_0_False_resize <= resize(c_18, 23);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  with config_select_5 select c_19_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_16_0_False_shift;
        when others => c_19 <= c_19_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[-49], [-63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_17 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 21 and associated fundamentals [[-857], [-1014]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_20,
      y_i => c_19,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 22 and associated fundamentals [[64], [-6]]
  c_22_2_6_False_resize <= resize(c_2, 22);
  c_22_2_6_False_shift <= shift_left(c_22_2_6_False_resize, 6);
  c_22_1_0_False_resize <= resize(c_1, 22);
  c_22_1_0_False_shift <= shift_left(c_22_1_0_False_resize, 0);
  with config_select_2 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_2_6_False_shift;
        when others => c_22 <= c_22_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 23 and associated fundamentals [[129], [-13]]
  with config_select_3 select c_23_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_4,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 24 and associated fundamentals [[-146], [-157]]
  c_24_16_1_False_resize <= c_16;
  c_24_16_1_False_shift <= shift_left(c_24_16_1_False_resize, 1);
  c_24_10_0_False_resize <= c_10(23 downto 0);
  c_24_10_0_False_shift <= shift_left(c_24_10_0_False_resize, 0);
  with config_select_5 select c_24_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_16_1_False_shift;
        when others => c_24 <= c_24_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[129], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 26 and associated fundamentals [[-723], [-13]]
  c_26_25_0_False_resize <= resize(c_25, 26);
  c_26_25_0_False_shift <= shift_left(c_26_25_0_False_resize, 0);
  c_26_10_0_False_resize <= c_10;
  c_26_10_0_False_shift <= shift_left(c_26_10_0_False_resize, 0);
  with config_select_5 select c_26_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_25_0_False_shift;
        when others => c_26 <= c_26_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 27 and associated fundamentals [[129], [223]]
  c_27_25_0_False_resize <= c_25;
  c_27_25_0_False_shift <= shift_left(c_27_25_0_False_resize, 0);
  c_27_16_0_False_resize <= c_16;
  c_27_16_0_False_shift <= shift_left(c_27_16_0_False_resize, 0);
  with config_select_5 select c_27_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_25_0_False_shift;
        when others => c_27 <= c_27_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[-146], [-157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_24 & "";
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 29 and associated fundamentals [[146], [157]]
  c_29_resize <= c_28;
  c_29 <= -shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 6 with id 30 and associated fundamentals [[857], [1014]]
  c_30_resize <= c_21;
  c_30 <= -shift_left(c_30_resize, 0);
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[-723], [-13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_26 & "";
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 32 and associated fundamentals [[723], [13]]
  c_32_resize <= c_31;
  c_32 <= -shift_left(c_32_resize, 0);
  -- node of type 'register' in stage 5 with id 33 and associated fundamentals [[-817], [-737]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[-817], [-737]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 35 and associated fundamentals [[817], [737]]
  c_35_resize <= c_34;
  c_35 <= -shift_left(c_35_resize, 0);
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[129], [223]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_27 & "";
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 37 and associated fundamentals [[258], [446]]
  c_37_resize <= resize(c_36, 25);
  c_37 <= shift_left(c_37_resize, 1);
end architecture;

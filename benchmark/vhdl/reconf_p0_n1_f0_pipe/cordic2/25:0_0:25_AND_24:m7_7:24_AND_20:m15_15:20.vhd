library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(21 downto 0);
    y_1: out std_logic_vector(21 downto 0);
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
  signal config_select_9: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_1_1_False_resize: signed(16 downto 0);
  signal c_2_1_1_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_4_i0_resize: signed(17 downto 0);
  signal c_4_i1_resize: signed(17 downto 0);
  signal c_4_i0_shift: signed(17 downto 0);
  signal c_4_i1_shift: signed(17 downto 0);
  signal c_4_arith: signed(17 downto 0);
  signal c_4_oshift: signed(17 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_7_4_0_False_resize: signed(17 downto 0);
  signal c_7_4_0_False_shift: signed(17 downto 0);
  signal c_7_6_0_False_resize: signed(17 downto 0);
  signal c_7_6_0_False_shift: signed(17 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_9_i0_resize: signed(18 downto 0);
  signal c_9_i1_resize: signed(18 downto 0);
  signal c_9_i0_shift: signed(18 downto 0);
  signal c_9_i1_shift: signed(18 downto 0);
  signal c_9_arith: signed(18 downto 0);
  signal c_9_oshift: signed(18 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(18 downto 0);
  signal c_13_9_0_False_resize: signed(18 downto 0);
  signal c_13_9_0_False_shift: signed(18 downto 0);
  signal c_13_12_0_False_resize: signed(18 downto 0);
  signal c_13_12_0_False_shift: signed(18 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(18 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_15_i0_resize: signed(21 downto 0);
  signal c_15_i1_resize: signed(21 downto 0);
  signal c_15_i0_shift: signed(21 downto 0);
  signal c_15_i1_shift: signed(21 downto 0);
  signal c_15_arith: signed(21 downto 0);
  signal c_15_oshift: signed(21 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(17 downto 0);
  signal c_17: signed(17 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_18_9_0_False_resize: signed(18 downto 0);
  signal c_18_9_0_False_shift: signed(18 downto 0);
  signal c_18_17_0_False_resize: signed(18 downto 0);
  signal c_18_17_0_False_shift: signed(18 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(15 downto 0);
  signal c_20: signed(19 downto 0);
  signal c_20_i0_resize: signed(19 downto 0);
  signal c_20_i1_resize: signed(19 downto 0);
  signal c_20_i0_shift: signed(19 downto 0);
  signal c_20_i1_shift: signed(19 downto 0);
  signal c_20_arith: signed(19 downto 0);
  signal c_20_oshift: signed(19 downto 0);
  signal c_21: signed(15 downto 0);
  signal c_22: signed(15 downto 0);
  signal c_23: signed(15 downto 0);
  signal c_24: signed(18 downto 0);
  signal c_24_23_0_False_resize: signed(18 downto 0);
  signal c_24_23_0_False_shift: signed(18 downto 0);
  signal c_24_20_0_False_resize: signed(18 downto 0);
  signal c_24_20_0_False_shift: signed(18 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(19 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_26_i0_resize: signed(21 downto 0);
  signal c_26_i1_resize: signed(21 downto 0);
  signal c_26_i0_shift: signed(21 downto 0);
  signal c_26_i1_shift: signed(21 downto 0);
  signal c_26_arith: signed(21 downto 0);
  signal c_26_oshift: signed(21 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_27_resize: signed(21 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_30_resize: signed(21 downto 0);
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
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1);
    end if;
  end process;
  -- output node 0 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 1 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_30);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1, 0], [0, 2], [1, 0]]
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_1_1_False_resize <= resize(c_1, 17);
  c_2_1_1_False_shift <= shift_left(c_2_1_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[3, 0], [2, 2], [3, 0]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 18,
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
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 5 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[0, 1], [2, 2], [3, 0]]
  c_7_4_0_False_resize <= c_4;
  c_7_4_0_False_shift <= shift_left(c_7_4_0_False_resize, 0);
  c_7_6_0_False_resize <= resize(c_6, 18);
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_4_0_False_shift;
        when others => c_7 <= c_7_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 9 and associated fundamentals [[0, 5], [2, 6], [3, 4]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 19,
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
      x_i => c_8,
      y_i => c_7,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 10 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[0, 5], [1, 0], [3, 4]]
  c_13_9_0_False_resize <= c_9;
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  c_13_12_0_False_resize <= resize(c_12, 19);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  with config_select_5 select c_13_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_9_0_False_shift;
        when others => c_13 <= c_13_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[0, 5], [2, 6], [3, 4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_9 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[0, 25], [7, 24], [15, 20]]
  with config_select_6 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 22,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_13,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[3, 0], [2, 2], [3, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[3, 0], [2, 2], [3, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[3, 0], [2, 2], [3, 4]]
  c_18_9_0_False_resize <= c_9;
  c_18_9_0_False_shift <= shift_left(c_18_9_0_False_resize, 0);
  c_18_17_0_False_resize <= resize(c_17, 19);
  c_18_17_0_False_shift <= shift_left(c_18_17_0_False_resize, 0);
  with config_select_5 select c_18_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_9_0_False_shift;
        when others => c_18 <= c_18_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_12 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 20 and associated fundamentals [[5, 0], [6, -2], [5, -4]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 20,
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
      x_i => c_19,
      y_i => c_18,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 24 and associated fundamentals [[5, 0], [0, 1], [0, 1]]
  c_24_23_0_False_resize <= resize(c_23, 19);
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  c_24_20_0_False_resize <= c_20(18 downto 0);
  c_24_20_0_False_shift <= shift_left(c_24_20_0_False_resize, 0);
  with config_select_7 select c_24_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_23_0_False_shift;
        when others => c_24 <= c_24_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 25 and associated fundamentals [[5, 0], [6, -2], [5, -4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 26 and associated fundamentals [[25, 0], [24, -7], [20, -15]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 27 and associated fundamentals [[25, 0], [24, -7], [20, -15]]
  c_27_resize <= c_26;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[0, 25], [7, 24], [15, 20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 29 and associated fundamentals [[0, 25], [7, 24], [15, 20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 30 and associated fundamentals [[0, 25], [7, 24], [15, 20]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
end architecture;

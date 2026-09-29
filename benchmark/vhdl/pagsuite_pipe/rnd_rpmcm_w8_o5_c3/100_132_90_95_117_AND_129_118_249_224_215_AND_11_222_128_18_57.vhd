library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_2_0_0_False_resize: signed(15 downto 0);
  signal c_2_0_0_False_shift: signed(15 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_4_0_0_False_resize: signed(15 downto 0);
  signal c_4_0_0_False_shift: signed(15 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_i0_resize: signed(19 downto 0);
  signal c_5_i1_resize: signed(19 downto 0);
  signal c_5_i0_shift: signed(19 downto 0);
  signal c_5_i1_shift: signed(19 downto 0);
  signal c_5_arith: signed(19 downto 0);
  signal c_5_oshift: signed(19 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(17 downto 0);
  signal c_6_0_0_False_resize: signed(17 downto 0);
  signal c_6_0_0_False_shift: signed(17 downto 0);
  signal c_6_0_2_False_resize: signed(17 downto 0);
  signal c_6_0_2_False_shift: signed(17 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_i0_resize: signed(20 downto 0);
  signal c_7_i1_resize: signed(20 downto 0);
  signal c_7_i0_shift: signed(20 downto 0);
  signal c_7_i1_shift: signed(20 downto 0);
  signal c_7_arith: signed(20 downto 0);
  signal c_7_oshift: signed(20 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_i0_resize: signed(20 downto 0);
  signal c_8_i1_resize: signed(20 downto 0);
  signal c_8_i0_shift: signed(20 downto 0);
  signal c_8_i1_shift: signed(20 downto 0);
  signal c_8_arith: signed(20 downto 0);
  signal c_8_oshift: signed(20 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_3_7_False_resize: signed(22 downto 0);
  signal c_9_3_7_False_shift: signed(22 downto 0);
  signal c_9_7_0_False_resize: signed(22 downto 0);
  signal c_9_7_0_False_shift: signed(22 downto 0);
  signal c_9_3_0_False_resize: signed(22 downto 0);
  signal c_9_3_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_10_5_0_False_resize: signed(20 downto 0);
  signal c_10_5_0_False_shift: signed(20 downto 0);
  signal c_10_3_5_False_resize: signed(20 downto 0);
  signal c_10_3_5_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(21 downto 0);
  signal c_12_7_1_False_resize: signed(21 downto 0);
  signal c_12_7_1_False_shift: signed(21 downto 0);
  signal c_12_3_0_False_resize: signed(21 downto 0);
  signal c_12_3_0_False_shift: signed(21 downto 0);
  signal c_12_7_3_False_resize: signed(21 downto 0);
  signal c_12_7_3_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_5_0_False_resize: signed(21 downto 0);
  signal c_13_5_0_False_shift: signed(21 downto 0);
  signal c_13_3_6_False_resize: signed(21 downto 0);
  signal c_13_3_6_False_shift: signed(21 downto 0);
  signal c_13_8_0_False_resize: signed(21 downto 0);
  signal c_13_8_0_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(21 downto 0);
  signal c_15_5_0_False_resize: signed(21 downto 0);
  signal c_15_5_0_False_shift: signed(21 downto 0);
  signal c_15_5_5_False_resize: signed(21 downto 0);
  signal c_15_5_5_False_shift: signed(21 downto 0);
  signal c_15_3_6_False_resize: signed(21 downto 0);
  signal c_15_3_6_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_7_1_False_resize: signed(21 downto 0);
  signal c_16_7_1_False_shift: signed(21 downto 0);
  signal c_16_7_0_False_resize: signed(21 downto 0);
  signal c_16_7_0_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(22 downto 0);
  signal c_18_3_5_False_resize: signed(22 downto 0);
  signal c_18_3_5_False_shift: signed(22 downto 0);
  signal c_18_7_4_False_resize: signed(22 downto 0);
  signal c_18_7_4_False_shift: signed(22 downto 0);
  signal c_18_3_0_False_resize: signed(22 downto 0);
  signal c_18_3_0_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(20 downto 0);
  signal c_19_7_0_False_resize: signed(20 downto 0);
  signal c_19_7_0_False_shift: signed(20 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_21_7_1_False_resize: signed(21 downto 0);
  signal c_21_7_1_False_shift: signed(21 downto 0);
  signal c_21_7_3_False_resize: signed(21 downto 0);
  signal c_21_7_3_False_shift: signed(21 downto 0);
  signal c_21_7_0_False_resize: signed(21 downto 0);
  signal c_21_7_0_False_shift: signed(21 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(23 downto 0);
  signal c_24_resize: signed(23 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_resize: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_resize: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_resize: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_resize: signed(23 downto 0);
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
  -- output node 0 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 1 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 2 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 3 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 4 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_28);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0], [0], [1]]
  c_2_0_0_False_resize <= c_0;
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[1], [1], [9]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 0,
      s_y_i => 3,
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
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [1], [0]]
  c_4_0_0_False_resize <= c_0;
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 5 and associated fundamentals [[7], [9], [1]]
  with config_select_2 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_1,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[4], [1], [1]]
  c_6_0_0_False_resize <= resize(c_0, 18);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_2_False_resize <= resize(c_0, 18);
  c_6_0_2_False_shift <= shift_left(c_6_0_2_False_resize, 2);
  with config_select_1 select c_6_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_0_0_False_shift;
        when others => c_6 <= c_6_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 7 and associated fundamentals [[31], [7], [7]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
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
      x_i => c_6,
      y_i => c_1,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 8 and associated fundamentals [[31], [31], [31]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_1,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[128], [1], [7]]
  c_9_3_7_False_resize <= resize(c_3, 23);
  c_9_3_7_False_shift <= shift_left(c_9_3_7_False_resize, 7);
  c_9_7_0_False_resize <= resize(c_7, 23);
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  c_9_3_0_False_resize <= resize(c_3, 23);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_3_7_False_shift;
        when "01" => c_9 <= c_9_7_0_False_shift;
        when others => c_9 <= c_9_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[7], [32], [1]]
  c_10_5_0_False_resize <= resize(c_5, 21);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  c_10_3_5_False_resize <= resize(c_3, 21);
  c_10_3_5_False_shift <= shift_left(c_10_3_5_False_resize, 5);
  with config_select_3 select c_10_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_5_0_False_shift;
        when others => c_10 <= c_10_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[100], [129], [11]]
  with config_select_4 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[1], [14], [56]]
  c_12_7_1_False_resize <= resize(c_7, 22);
  c_12_7_1_False_shift <= shift_left(c_12_7_1_False_resize, 1);
  c_12_3_0_False_resize <= resize(c_3, 22);
  c_12_3_0_False_shift <= shift_left(c_12_3_0_False_resize, 0);
  c_12_7_3_False_resize <= resize(c_7, 22);
  c_12_7_3_False_shift <= shift_left(c_12_7_3_False_resize, 3);
  with config_select_3 select c_12_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_7_1_False_shift;
        when "01" => c_12 <= c_12_3_0_False_shift;
        when others => c_12 <= c_12_7_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[64], [31], [1]]
  c_13_5_0_False_resize <= resize(c_5, 22);
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  c_13_3_6_False_resize <= resize(c_3, 22);
  c_13_3_6_False_shift <= shift_left(c_13_3_6_False_resize, 6);
  c_13_8_0_False_resize <= resize(c_8, 22);
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_5_0_False_shift;
        when "01" => c_13 <= c_13_3_6_False_shift;
        when others => c_13 <= c_13_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[132], [118], [222]]
  with config_select_4 select c_14_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[7], [64], [32]]
  c_15_5_0_False_resize <= resize(c_5, 22);
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  c_15_5_5_False_resize <= resize(c_5, 22);
  c_15_5_5_False_shift <= shift_left(c_15_5_5_False_resize, 5);
  c_15_3_6_False_resize <= resize(c_3, 22);
  c_15_3_6_False_shift <= shift_left(c_15_3_6_False_resize, 6);
  with config_select_3 select c_15_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_5_0_False_shift;
        when "01" => c_15 <= c_15_5_5_False_shift;
        when others => c_15 <= c_15_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[62], [7], [0]]
  c_16_7_1_False_resize <= resize(c_7, 22);
  c_16_7_1_False_shift <= shift_left(c_16_7_1_False_resize, 1);
  c_16_7_0_False_resize <= resize(c_7, 22);
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_7_1_False_shift;
        when "01" => c_16 <= c_16_7_0_False_shift;
        when others => c_16 <= to_signed(0, 22);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[90], [249], [128]]
  with config_select_4 select c_17_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[32], [112], [9]]
  c_18_3_5_False_resize <= resize(c_3, 23);
  c_18_3_5_False_shift <= shift_left(c_18_3_5_False_resize, 5);
  c_18_7_4_False_resize <= resize(c_7, 23);
  c_18_7_4_False_shift <= shift_left(c_18_7_4_False_resize, 4);
  c_18_3_0_False_resize <= resize(c_3, 23);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_3_5_False_shift;
        when "01" => c_18 <= c_18_7_4_False_shift;
        when others => c_18 <= c_18_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[31], [0], [0]]
  c_19_7_0_False_resize <= c_7;
  c_19_7_0_False_shift <= shift_left(c_19_7_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_7_0_False_shift;
        when others => c_19 <= to_signed(0, 21);
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 20 and associated fundamentals [[95], [224], [18]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 24,
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
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[31], [56], [14]]
  c_21_7_1_False_resize <= resize(c_7, 22);
  c_21_7_1_False_shift <= shift_left(c_21_7_1_False_resize, 1);
  c_21_7_3_False_resize <= resize(c_7, 22);
  c_21_7_3_False_shift <= shift_left(c_21_7_3_False_resize, 3);
  c_21_7_0_False_resize <= resize(c_7, 22);
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_7_1_False_shift;
        when "01" => c_21 <= c_21_7_3_False_shift;
        when others => c_21 <= c_21_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 22 and associated fundamentals [[7], [9], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 23 and associated fundamentals [[117], [215], [57]]
  with config_select_4 select c_23_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 24 and associated fundamentals [[100], [129], [11]]
  c_24_resize <= c_11;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'output' in stage 4 with id 25 and associated fundamentals [[132], [118], [222]]
  c_25_resize <= c_14;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[90], [249], [128]]
  c_26_resize <= c_17;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 4 with id 27 and associated fundamentals [[95], [224], [18]]
  c_27_resize <= c_20;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 4 with id 28 and associated fundamentals [[117], [215], [57]]
  c_28_resize <= c_23;
  c_28 <= shift_left(c_28_resize, 0);
end architecture;

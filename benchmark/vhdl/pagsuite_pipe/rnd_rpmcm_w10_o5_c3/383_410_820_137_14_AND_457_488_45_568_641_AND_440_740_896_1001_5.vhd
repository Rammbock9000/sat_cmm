library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(25 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_4_1_0_False_resize: signed(15 downto 0);
  signal c_4_1_0_False_shift: signed(15 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_i0_resize: signed(19 downto 0);
  signal c_5_i1_resize: signed(19 downto 0);
  signal c_5_i0_shift: signed(19 downto 0);
  signal c_5_i1_shift: signed(19 downto 0);
  signal c_5_arith: signed(19 downto 0);
  signal c_5_oshift: signed(19 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(15 downto 0);
  signal c_6_1_0_False_resize: signed(15 downto 0);
  signal c_6_1_0_False_shift: signed(15 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_i0_resize: signed(19 downto 0);
  signal c_7_i1_resize: signed(19 downto 0);
  signal c_7_i0_shift: signed(19 downto 0);
  signal c_7_i1_shift: signed(19 downto 0);
  signal c_7_arith: signed(19 downto 0);
  signal c_7_oshift: signed(19 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_i0_resize: signed(21 downto 0);
  signal c_10_i1_resize: signed(21 downto 0);
  signal c_10_i0_shift: signed(21 downto 0);
  signal c_10_i1_shift: signed(21 downto 0);
  signal c_10_arith: signed(21 downto 0);
  signal c_10_oshift: signed(21 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_5_2_False_resize: signed(23 downto 0);
  signal c_11_5_2_False_shift: signed(23 downto 0);
  signal c_11_9_2_False_resize: signed(23 downto 0);
  signal c_11_9_2_False_shift: signed(23 downto 0);
  signal c_11_5_0_False_resize: signed(23 downto 0);
  signal c_11_5_0_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_12_5_0_False_resize: signed(19 downto 0);
  signal c_12_5_0_False_shift: signed(19 downto 0);
  signal c_12_5_1_False_resize: signed(19 downto 0);
  signal c_12_5_1_False_shift: signed(19 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(24 downto 0);
  signal c_14_9_0_False_resize: signed(24 downto 0);
  signal c_14_9_0_False_shift: signed(24 downto 0);
  signal c_14_7_5_False_resize: signed(24 downto 0);
  signal c_14_7_5_False_shift: signed(24 downto 0);
  signal c_14_7_6_False_resize: signed(24 downto 0);
  signal c_14_7_6_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_9_0_False_resize: signed(24 downto 0);
  signal c_15_9_0_False_shift: signed(24 downto 0);
  signal c_15_10_3_False_resize: signed(24 downto 0);
  signal c_15_10_3_False_shift: signed(24 downto 0);
  signal c_15_10_0_False_resize: signed(24 downto 0);
  signal c_15_10_0_False_shift: signed(24 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_10_4_False_resize: signed(25 downto 0);
  signal c_17_10_4_False_shift: signed(25 downto 0);
  signal c_17_9_0_False_resize: signed(25 downto 0);
  signal c_17_9_0_False_shift: signed(25 downto 0);
  signal c_17_5_10_False_resize: signed(25 downto 0);
  signal c_17_5_10_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(20 downto 0);
  signal c_18_7_0_False_resize: signed(20 downto 0);
  signal c_18_7_0_False_shift: signed(20 downto 0);
  signal c_18_5_5_False_resize: signed(20 downto 0);
  signal c_18_5_5_False_shift: signed(20 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(21 downto 0);
  signal c_20_9_0_False_resize: signed(21 downto 0);
  signal c_20_9_0_False_shift: signed(21 downto 0);
  signal c_20_7_6_False_resize: signed(21 downto 0);
  signal c_20_7_6_False_shift: signed(21 downto 0);
  signal c_20_10_0_False_resize: signed(21 downto 0);
  signal c_20_10_0_False_shift: signed(21 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_21_10_0_False_resize: signed(21 downto 0);
  signal c_21_10_0_False_shift: signed(21 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_i0_resize: signed(24 downto 0);
  signal c_22_i1_resize: signed(24 downto 0);
  signal c_22_i0_shift: signed(24 downto 0);
  signal c_22_i1_shift: signed(24 downto 0);
  signal c_22_arith: signed(24 downto 0);
  signal c_22_oshift: signed(24 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(22 downto 0);
  signal c_23_7_0_False_resize: signed(22 downto 0);
  signal c_23_7_0_False_shift: signed(22 downto 0);
  signal c_23_10_0_False_resize: signed(22 downto 0);
  signal c_23_10_0_False_shift: signed(22 downto 0);
  signal c_23_7_3_False_resize: signed(22 downto 0);
  signal c_23_7_3_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_5_4_False_resize: signed(23 downto 0);
  signal c_24_5_4_False_shift: signed(23 downto 0);
  signal c_24_10_1_False_resize: signed(23 downto 0);
  signal c_24_10_1_False_shift: signed(23 downto 0);
  signal c_24_7_0_False_resize: signed(23 downto 0);
  signal c_24_7_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(24 downto 0);
  signal c_26_resize: signed(24 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
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
  -- output node 0 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 1 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 2 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 3 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 4 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_30);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[9], [9], [9]]
  inst_adder_node_2: entity work.adder_node
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[0], [1], [0]]
  c_4_1_0_False_resize <= c_1;
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_0_False_shift;
        when others => c_4 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[1], [15], [1]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[1], [0], [1]]
  c_6_1_0_False_resize <= c_1;
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_1_0_False_shift;
        when others => c_6 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[15], [1], [15]]
  with config_select_3 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_3,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[9], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 9 and associated fundamentals [[41], [41], [41]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 22,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_3,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 10 and associated fundamentals [[55], [55], [55]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 22,
      s_x_i => 6,
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
      y_i => c_8,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[4], [164], [1]]
  c_11_5_2_False_resize <= resize(c_5, 24);
  c_11_5_2_False_shift <= shift_left(c_11_5_2_False_resize, 2);
  c_11_9_2_False_resize <= resize(c_9, 24);
  c_11_9_2_False_shift <= shift_left(c_11_9_2_False_resize, 2);
  c_11_5_0_False_resize <= resize(c_5, 24);
  c_11_5_0_False_shift <= shift_left(c_11_5_0_False_resize, 0);
  with config_select_4 select c_11_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_5_2_False_shift;
        when "01" => c_11 <= c_11_9_2_False_shift;
        when others => c_11 <= c_11_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[2], [15], [1]]
  c_12_5_0_False_resize <= c_5;
  c_12_5_0_False_shift <= shift_left(c_12_5_0_False_resize, 0);
  c_12_5_1_False_resize <= c_5;
  c_12_5_1_False_shift <= shift_left(c_12_5_1_False_resize, 1);
  with config_select_4 select c_12_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_5_0_False_shift;
        when others => c_12 <= c_12_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 13 and associated fundamentals [[14], [641], [5]]
  with config_select_5 select c_13_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[41], [64], [480]]
  c_14_9_0_False_resize <= resize(c_9, 25);
  c_14_9_0_False_shift <= shift_left(c_14_9_0_False_resize, 0);
  c_14_7_5_False_resize <= resize(c_7, 25);
  c_14_7_5_False_shift <= shift_left(c_14_7_5_False_resize, 5);
  c_14_7_6_False_resize <= resize(c_7, 25);
  c_14_7_6_False_shift <= shift_left(c_14_7_6_False_resize, 6);
  with config_select_4 select c_14_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_9_0_False_shift;
        when "01" => c_14 <= c_14_7_5_False_shift;
        when others => c_14 <= c_14_7_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[55], [440], [41]]
  c_15_9_0_False_resize <= resize(c_9, 25);
  c_15_9_0_False_shift <= shift_left(c_15_9_0_False_resize, 0);
  c_15_10_3_False_resize <= resize(c_10, 25);
  c_15_10_3_False_shift <= shift_left(c_15_10_3_False_resize, 3);
  c_15_10_0_False_resize <= resize(c_10, 25);
  c_15_10_0_False_shift <= shift_left(c_15_10_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_9_0_False_shift;
        when "01" => c_15 <= c_15_10_3_False_shift;
        when others => c_15 <= c_15_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 16 and associated fundamentals [[137], [568], [1001]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[880], [41], [1024]]
  c_17_10_4_False_resize <= resize(c_10, 26);
  c_17_10_4_False_shift <= shift_left(c_17_10_4_False_resize, 4);
  c_17_9_0_False_resize <= resize(c_9, 26);
  c_17_9_0_False_shift <= shift_left(c_17_9_0_False_resize, 0);
  c_17_5_10_False_resize <= resize(c_5, 26);
  c_17_5_10_False_shift <= shift_left(c_17_5_10_False_resize, 10);
  with config_select_4 select c_17_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_10_4_False_shift;
        when "01" => c_17 <= c_17_9_0_False_shift;
        when others => c_17 <= c_17_5_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[15], [1], [32]]
  c_18_7_0_False_resize <= resize(c_7, 21);
  c_18_7_0_False_shift <= shift_left(c_18_7_0_False_resize, 0);
  c_18_5_5_False_resize <= resize(c_5, 21);
  c_18_5_5_False_shift <= shift_left(c_18_5_5_False_resize, 5);
  with config_select_4 select c_18_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_7_0_False_shift;
        when others => c_18 <= c_18_5_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 19 and associated fundamentals [[820], [45], [896]]
  with config_select_5 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 21,
      w_o => 26,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[41], [64], [55]]
  c_20_9_0_False_resize <= c_9;
  c_20_9_0_False_shift <= shift_left(c_20_9_0_False_resize, 0);
  c_20_7_6_False_resize <= resize(c_7, 22);
  c_20_7_6_False_shift <= shift_left(c_20_7_6_False_resize, 6);
  c_20_10_0_False_resize <= c_10;
  c_20_10_0_False_shift <= shift_left(c_20_10_0_False_resize, 0);
  with config_select_4 select c_20_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_9_0_False_shift;
        when "01" => c_20 <= c_20_7_6_False_shift;
        when others => c_20 <= c_20_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[55], [55], [0]]
  c_21_10_0_False_resize <= c_10;
  c_21_10_0_False_shift <= shift_left(c_21_10_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_10_0_False_shift;
        when others => c_21 <= to_signed(0, 22);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 22 and associated fundamentals [[383], [457], [440]]
  with config_select_5 select c_22_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[55], [1], [120]]
  c_23_7_0_False_resize <= resize(c_7, 23);
  c_23_7_0_False_shift <= shift_left(c_23_7_0_False_resize, 0);
  c_23_10_0_False_resize <= resize(c_10, 23);
  c_23_10_0_False_shift <= shift_left(c_23_10_0_False_resize, 0);
  c_23_7_3_False_resize <= resize(c_7, 23);
  c_23_7_3_False_shift <= shift_left(c_23_7_3_False_resize, 3);
  with config_select_4 select c_23_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_7_0_False_shift;
        when "01" => c_23 <= c_23_10_0_False_shift;
        when others => c_23 <= c_23_7_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[15], [240], [110]]
  c_24_5_4_False_resize <= resize(c_5, 24);
  c_24_5_4_False_shift <= shift_left(c_24_5_4_False_resize, 4);
  c_24_10_1_False_resize <= resize(c_10, 24);
  c_24_10_1_False_shift <= shift_left(c_24_10_1_False_resize, 1);
  c_24_7_0_False_resize <= resize(c_7, 24);
  c_24_7_0_False_shift <= shift_left(c_24_7_0_False_resize, 0);
  with config_select_4 select c_24_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_5_4_False_shift;
        when "01" => c_24 <= c_24_10_1_False_shift;
        when others => c_24 <= c_24_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 25 and associated fundamentals [[410], [488], [740]]
  with config_select_5 select c_25_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_25_sub_sel,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 26 and associated fundamentals [[383], [457], [440]]
  c_26_resize <= c_22;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 5 with id 27 and associated fundamentals [[410], [488], [740]]
  c_27_resize <= c_25;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[820], [45], [896]]
  c_28_resize <= c_19;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 5 with id 29 and associated fundamentals [[137], [568], [1001]]
  c_29_resize <= c_16;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[14], [641], [5]]
  c_30_resize <= c_13;
  c_30 <= shift_left(c_30_resize, 0);
end architecture;

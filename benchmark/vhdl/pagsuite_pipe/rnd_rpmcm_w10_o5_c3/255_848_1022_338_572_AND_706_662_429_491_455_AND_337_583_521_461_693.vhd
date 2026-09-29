library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(24 downto 0);
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
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_3: signed(25 downto 0);
  signal c_3_i0_resize: signed(25 downto 0);
  signal c_3_i1_resize: signed(25 downto 0);
  signal c_3_i0_shift: signed(25 downto 0);
  signal c_3_i1_shift: signed(25 downto 0);
  signal c_3_arith: signed(25 downto 0);
  signal c_3_oshift: signed(25 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_5_1_0_False_resize: signed(15 downto 0);
  signal c_5_1_0_False_shift: signed(15 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_i0_resize: signed(18 downto 0);
  signal c_6_i1_resize: signed(18 downto 0);
  signal c_6_i0_shift: signed(18 downto 0);
  signal c_6_i1_shift: signed(18 downto 0);
  signal c_6_arith: signed(18 downto 0);
  signal c_6_oshift: signed(18 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(15 downto 0);
  signal c_7_1_0_False_resize: signed(15 downto 0);
  signal c_7_1_0_False_shift: signed(15 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_8_i0_resize: signed(18 downto 0);
  signal c_8_i1_resize: signed(18 downto 0);
  signal c_8_i0_shift: signed(18 downto 0);
  signal c_8_i1_shift: signed(18 downto 0);
  signal c_8_arith: signed(18 downto 0);
  signal c_8_oshift: signed(18 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(18 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_i0_resize: signed(21 downto 0);
  signal c_10_i1_resize: signed(21 downto 0);
  signal c_10_i0_shift: signed(21 downto 0);
  signal c_10_i1_shift: signed(21 downto 0);
  signal c_10_arith: signed(21 downto 0);
  signal c_10_oshift: signed(21 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_i0_resize: signed(24 downto 0);
  signal c_13_i1_resize: signed(24 downto 0);
  signal c_13_i0_shift: signed(24 downto 0);
  signal c_13_i1_shift: signed(24 downto 0);
  signal c_13_arith: signed(24 downto 0);
  signal c_13_oshift: signed(24 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_10_0_False_resize: signed(21 downto 0);
  signal c_14_10_0_False_shift: signed(21 downto 0);
  signal c_14_6_0_False_resize: signed(21 downto 0);
  signal c_14_6_0_False_shift: signed(21 downto 0);
  signal c_14_6_6_False_resize: signed(21 downto 0);
  signal c_14_6_6_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_10_4_False_resize: signed(25 downto 0);
  signal c_15_10_4_False_shift: signed(25 downto 0);
  signal c_15_13_0_False_resize: signed(25 downto 0);
  signal c_15_13_0_False_shift: signed(25 downto 0);
  signal c_15_11_3_False_resize: signed(25 downto 0);
  signal c_15_11_3_False_shift: signed(25 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_8_7_False_resize: signed(25 downto 0);
  signal c_17_8_7_False_shift: signed(25 downto 0);
  signal c_17_6_0_False_resize: signed(25 downto 0);
  signal c_17_6_0_False_shift: signed(25 downto 0);
  signal c_17_10_0_False_resize: signed(25 downto 0);
  signal c_17_10_0_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_6_4_False_resize: signed(23 downto 0);
  signal c_18_6_4_False_shift: signed(23 downto 0);
  signal c_18_11_1_False_resize: signed(23 downto 0);
  signal c_18_11_1_False_shift: signed(23 downto 0);
  signal c_18_11_0_False_resize: signed(23 downto 0);
  signal c_18_11_0_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(19 downto 0);
  signal c_20_6_4_False_resize: signed(19 downto 0);
  signal c_20_6_4_False_shift: signed(19 downto 0);
  signal c_20_8_0_False_resize: signed(19 downto 0);
  signal c_20_8_0_False_shift: signed(19 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_13_0_False_resize: signed(24 downto 0);
  signal c_21_13_0_False_shift: signed(24 downto 0);
  signal c_21_11_2_False_resize: signed(24 downto 0);
  signal c_21_11_2_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_i0_resize: signed(24 downto 0);
  signal c_22_i1_resize: signed(24 downto 0);
  signal c_22_i0_shift: signed(24 downto 0);
  signal c_22_i1_shift: signed(24 downto 0);
  signal c_22_arith: signed(24 downto 0);
  signal c_22_oshift: signed(24 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(21 downto 0);
  signal c_23_6_4_False_resize: signed(21 downto 0);
  signal c_23_6_4_False_shift: signed(21 downto 0);
  signal c_23_10_0_False_resize: signed(21 downto 0);
  signal c_23_10_0_False_shift: signed(21 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_11_0_False_resize: signed(22 downto 0);
  signal c_24_11_0_False_shift: signed(22 downto 0);
  signal c_24_6_0_False_resize: signed(22 downto 0);
  signal c_24_6_0_False_shift: signed(22 downto 0);
  signal c_24_6_1_False_resize: signed(22 downto 0);
  signal c_24_6_1_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(25 downto 0);
  signal c_26_6_10_False_resize: signed(25 downto 0);
  signal c_26_6_10_False_shift: signed(25 downto 0);
  signal c_26_13_0_False_resize: signed(25 downto 0);
  signal c_26_13_0_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(20 downto 0);
  signal c_27_8_1_False_resize: signed(20 downto 0);
  signal c_27_8_1_False_shift: signed(20 downto 0);
  signal c_27_6_0_False_resize: signed(20 downto 0);
  signal c_27_6_0_False_shift: signed(20 downto 0);
  signal c_27_8_5_False_resize: signed(20 downto 0);
  signal c_27_8_5_False_shift: signed(20 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_resize: signed(25 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_resize: signed(24 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_resize: signed(25 downto 0);
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
  -- output node 2 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 3 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 4 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_33);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[5], [5], [5]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 3 and associated fundamentals [[513], [513], [513]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 9,
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
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[0], [1], [0]]
  c_5_1_0_False_resize <= c_1;
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_0_False_shift;
        when others => c_5 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[1], [7], [1]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_4,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[1], [0], [1]]
  c_7_1_0_False_resize <= c_1;
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_1_0_False_shift;
        when others => c_7 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 8 and associated fundamentals [[7], [1], [7]]
  with config_select_3 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_4,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 9 and associated fundamentals [[5], [5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 10 and associated fundamentals [[45], [45], [45]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 22,
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
      x_i => c_9,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 11 and associated fundamentals [[81], [81], [81]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 23,
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
      y_i => c_9,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[513], [513], [513]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_3 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 13 and associated fundamentals [[493], [493], [493]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 19,
      w_o => 25,
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
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[64], [7], [45]]
  c_14_10_0_False_resize <= c_10;
  c_14_10_0_False_shift <= shift_left(c_14_10_0_False_resize, 0);
  c_14_6_0_False_resize <= resize(c_6, 22);
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  c_14_6_6_False_resize <= resize(c_6, 22);
  c_14_6_6_False_shift <= shift_left(c_14_6_6_False_resize, 6);
  with config_select_4 select c_14_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_10_0_False_shift;
        when "01" => c_14 <= c_14_6_0_False_shift;
        when others => c_14 <= c_14_6_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[720], [648], [493]]
  c_15_10_4_False_resize <= resize(c_10, 26);
  c_15_10_4_False_shift <= shift_left(c_15_10_4_False_resize, 4);
  c_15_13_0_False_resize <= resize(c_13, 26);
  c_15_13_0_False_shift <= shift_left(c_15_13_0_False_resize, 0);
  c_15_11_3_False_resize <= resize(c_11, 26);
  c_15_11_3_False_shift <= shift_left(c_15_11_3_False_resize, 3);
  with config_select_4 select c_15_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_10_4_False_shift;
        when "01" => c_15 <= c_15_13_0_False_shift;
        when others => c_15 <= c_15_11_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 16 and associated fundamentals [[848], [662], [583]]
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
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[896], [7], [45]]
  c_17_8_7_False_resize <= resize(c_8, 26);
  c_17_8_7_False_shift <= shift_left(c_17_8_7_False_resize, 7);
  c_17_6_0_False_resize <= resize(c_6, 26);
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  c_17_10_0_False_resize <= resize(c_10, 26);
  c_17_10_0_False_shift <= shift_left(c_17_10_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_8_7_False_shift;
        when "01" => c_17 <= c_17_6_0_False_shift;
        when others => c_17 <= c_17_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[81], [112], [162]]
  c_18_6_4_False_resize <= resize(c_6, 24);
  c_18_6_4_False_shift <= shift_left(c_18_6_4_False_resize, 4);
  c_18_11_1_False_resize <= resize(c_11, 24);
  c_18_11_1_False_shift <= shift_left(c_18_11_1_False_resize, 1);
  c_18_11_0_False_resize <= resize(c_11, 24);
  c_18_11_0_False_shift <= shift_left(c_18_11_0_False_resize, 0);
  with config_select_4 select c_18_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_6_4_False_shift;
        when "01" => c_18 <= c_18_11_1_False_shift;
        when others => c_18 <= c_18_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 19 and associated fundamentals [[572], [455], [693]]
  with config_select_5 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[7], [1], [16]]
  c_20_6_4_False_resize <= resize(c_6, 20);
  c_20_6_4_False_shift <= shift_left(c_20_6_4_False_resize, 4);
  c_20_8_0_False_resize <= resize(c_8, 20);
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  with config_select_4 select c_20_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_6_4_False_shift;
        when others => c_20 <= c_20_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[324], [493], [493]]
  c_21_13_0_False_resize <= c_13;
  c_21_13_0_False_shift <= shift_left(c_21_13_0_False_resize, 0);
  c_21_11_2_False_resize <= resize(c_11, 25);
  c_21_11_2_False_shift <= shift_left(c_21_11_2_False_resize, 2);
  with config_select_4 select c_21_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_13_0_False_shift;
        when others => c_21 <= c_21_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 22 and associated fundamentals [[338], [491], [461]]
  with config_select_5 select c_22_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
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
      sub_i => c_22_sub_sel,
      x_i => c_21,
      y_i => c_20,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[16], [45], [16]]
  c_23_6_4_False_resize <= resize(c_6, 22);
  c_23_6_4_False_shift <= shift_left(c_23_6_4_False_resize, 4);
  c_23_10_0_False_resize <= c_10;
  c_23_10_0_False_shift <= shift_left(c_23_10_0_False_resize, 0);
  with config_select_4 select c_23_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_6_4_False_shift;
        when others => c_23 <= c_23_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[1], [14], [81]]
  c_24_11_0_False_resize <= c_11;
  c_24_11_0_False_shift <= shift_left(c_24_11_0_False_resize, 0);
  c_24_6_0_False_resize <= resize(c_6, 23);
  c_24_6_0_False_shift <= shift_left(c_24_6_0_False_resize, 0);
  c_24_6_1_False_resize <= resize(c_6, 23);
  c_24_6_1_False_shift <= shift_left(c_24_6_1_False_resize, 1);
  with config_select_4 select c_24_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_11_0_False_shift;
        when "01" => c_24 <= c_24_6_0_False_shift;
        when others => c_24 <= c_24_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 25 and associated fundamentals [[255], [706], [337]]
  with config_select_5 select c_25_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 26,
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
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[1024], [493], [493]]
  c_26_6_10_False_resize <= resize(c_6, 26);
  c_26_6_10_False_shift <= shift_left(c_26_6_10_False_resize, 10);
  c_26_13_0_False_resize <= resize(c_13, 26);
  c_26_13_0_False_shift <= shift_left(c_26_13_0_False_resize, 0);
  with config_select_4 select c_26_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_6_10_False_shift;
        when others => c_26 <= c_26_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[1], [32], [14]]
  c_27_8_1_False_resize <= resize(c_8, 21);
  c_27_8_1_False_shift <= shift_left(c_27_8_1_False_resize, 1);
  c_27_6_0_False_resize <= resize(c_6, 21);
  c_27_6_0_False_shift <= shift_left(c_27_6_0_False_resize, 0);
  c_27_8_5_False_resize <= resize(c_8, 21);
  c_27_8_5_False_shift <= shift_left(c_27_8_5_False_resize, 5);
  with config_select_4 select c_27_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_8_1_False_shift;
        when "01" => c_27 <= c_27_6_0_False_shift;
        when others => c_27 <= c_27_8_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 28 and associated fundamentals [[1022], [429], [521]]
  with config_select_5 select c_28_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 21,
      w_o => 26,
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
      sub_i => c_28_sub_sel,
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 29 and associated fundamentals [[255], [706], [337]]
  c_29_resize <= c_25;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[848], [662], [583]]
  c_30_resize <= c_16;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'output' in stage 5 with id 31 and associated fundamentals [[1022], [429], [521]]
  c_31_resize <= c_28;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[338], [491], [461]]
  c_32_resize <= c_22;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'output' in stage 5 with id 33 and associated fundamentals [[572], [455], [693]]
  c_33_resize <= c_19;
  c_33 <= shift_left(c_33_resize, 0);
end architecture;

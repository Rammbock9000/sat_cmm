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
  signal c_3: signed(15 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_4_1_0_False_resize: signed(15 downto 0);
  signal c_4_1_0_False_shift: signed(15 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_i0_resize: signed(17 downto 0);
  signal c_5_i1_resize: signed(17 downto 0);
  signal c_5_i0_shift: signed(17 downto 0);
  signal c_5_i1_shift: signed(17 downto 0);
  signal c_5_arith: signed(17 downto 0);
  signal c_5_oshift: signed(17 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_1_0_False_resize: signed(18 downto 0);
  signal c_6_1_0_False_shift: signed(18 downto 0);
  signal c_6_1_3_False_resize: signed(18 downto 0);
  signal c_6_1_3_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_i0_resize: signed(19 downto 0);
  signal c_7_i1_resize: signed(19 downto 0);
  signal c_7_i0_shift: signed(19 downto 0);
  signal c_7_i1_shift: signed(19 downto 0);
  signal c_7_arith: signed(19 downto 0);
  signal c_7_oshift: signed(19 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(18 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_i0_resize: signed(19 downto 0);
  signal c_9_i1_resize: signed(19 downto 0);
  signal c_9_i0_shift: signed(19 downto 0);
  signal c_9_i1_shift: signed(19 downto 0);
  signal c_9_arith: signed(19 downto 0);
  signal c_9_oshift: signed(19 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_10_1_3_False_resize: signed(18 downto 0);
  signal c_10_1_3_False_shift: signed(18 downto 0);
  signal c_10_1_0_False_resize: signed(18 downto 0);
  signal c_10_1_0_False_shift: signed(18 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_11_i0_resize: signed(19 downto 0);
  signal c_11_i1_resize: signed(19 downto 0);
  signal c_11_i0_shift: signed(19 downto 0);
  signal c_11_i1_shift: signed(19 downto 0);
  signal c_11_arith: signed(19 downto 0);
  signal c_11_oshift: signed(19 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_5_2_False_resize: signed(22 downto 0);
  signal c_13_5_2_False_shift: signed(22 downto 0);
  signal c_13_12_0_False_resize: signed(22 downto 0);
  signal c_13_12_0_False_shift: signed(22 downto 0);
  signal c_13_5_6_False_resize: signed(22 downto 0);
  signal c_13_5_6_False_shift: signed(22 downto 0);
  signal c_13_11_3_False_resize: signed(22 downto 0);
  signal c_13_11_3_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_11_2_False_resize: signed(21 downto 0);
  signal c_14_11_2_False_shift: signed(21 downto 0);
  signal c_14_9_2_False_resize: signed(21 downto 0);
  signal c_14_9_2_False_shift: signed(21 downto 0);
  signal c_14_11_0_False_resize: signed(21 downto 0);
  signal c_14_11_0_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_9_0_False_resize: signed(23 downto 0);
  signal c_16_9_0_False_shift: signed(23 downto 0);
  signal c_16_12_1_False_resize: signed(23 downto 0);
  signal c_16_12_1_False_shift: signed(23 downto 0);
  signal c_16_5_0_False_resize: signed(23 downto 0);
  signal c_16_5_0_False_shift: signed(23 downto 0);
  signal c_16_5_1_False_resize: signed(23 downto 0);
  signal c_16_5_1_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(20 downto 0);
  signal c_17_11_1_False_resize: signed(20 downto 0);
  signal c_17_11_1_False_shift: signed(20 downto 0);
  signal c_17_5_5_False_resize: signed(20 downto 0);
  signal c_17_5_5_False_shift: signed(20 downto 0);
  signal c_17_5_0_False_resize: signed(20 downto 0);
  signal c_17_5_0_False_shift: signed(20 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel_left: std_logic;
  signal c_18_sub_sel_right: std_logic;
  signal c_19: signed(22 downto 0);
  signal c_19_12_0_False_resize: signed(22 downto 0);
  signal c_19_12_0_False_shift: signed(22 downto 0);
  signal c_19_11_0_False_resize: signed(22 downto 0);
  signal c_19_11_0_False_shift: signed(22 downto 0);
  signal c_19_5_5_False_resize: signed(22 downto 0);
  signal c_19_5_5_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_12_0_False_resize: signed(22 downto 0);
  signal c_20_12_0_False_shift: signed(22 downto 0);
  signal c_20_9_1_False_resize: signed(22 downto 0);
  signal c_20_9_1_False_shift: signed(22 downto 0);
  signal c_20_11_3_False_resize: signed(22 downto 0);
  signal c_20_11_3_False_shift: signed(22 downto 0);
  signal c_20_5_6_False_resize: signed(22 downto 0);
  signal c_20_5_6_False_shift: signed(22 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_i0_resize: signed(23 downto 0);
  signal c_21_i1_resize: signed(23 downto 0);
  signal c_21_i0_shift: signed(23 downto 0);
  signal c_21_i1_shift: signed(23 downto 0);
  signal c_21_arith: signed(23 downto 0);
  signal c_21_oshift: signed(23 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_22_11_3_False_resize: signed(19 downto 0);
  signal c_22_11_3_False_shift: signed(19 downto 0);
  signal c_22_9_0_False_resize: signed(19 downto 0);
  signal c_22_9_0_False_shift: signed(19 downto 0);
  signal c_22_5_0_False_resize: signed(19 downto 0);
  signal c_22_5_0_False_shift: signed(19 downto 0);
  signal c_22_7_2_False_resize: signed(19 downto 0);
  signal c_22_7_2_False_shift: signed(19 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_9_0_False_resize: signed(22 downto 0);
  signal c_23_9_0_False_shift: signed(22 downto 0);
  signal c_23_7_0_False_resize: signed(22 downto 0);
  signal c_23_7_0_False_shift: signed(22 downto 0);
  signal c_23_11_0_False_resize: signed(22 downto 0);
  signal c_23_11_0_False_shift: signed(22 downto 0);
  signal c_23_5_7_False_resize: signed(22 downto 0);
  signal c_23_5_7_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(21 downto 0);
  signal c_25_9_2_False_resize: signed(21 downto 0);
  signal c_25_9_2_False_shift: signed(21 downto 0);
  signal c_25_5_1_False_resize: signed(21 downto 0);
  signal c_25_5_1_False_shift: signed(21 downto 0);
  signal c_25_5_5_False_resize: signed(21 downto 0);
  signal c_25_5_5_False_shift: signed(21 downto 0);
  signal c_25_11_0_False_resize: signed(21 downto 0);
  signal c_25_11_0_False_shift: signed(21 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_11_0_False_resize: signed(23 downto 0);
  signal c_26_11_0_False_shift: signed(23 downto 0);
  signal c_26_5_6_False_resize: signed(23 downto 0);
  signal c_26_5_6_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(23 downto 0);
  signal c_28_resize: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_resize: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_resize: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_resize: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_resize: signed(23 downto 0);
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
  -- output node 0 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_28);
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
  -- output node 3 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 4 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_32);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[5], [5], [5], [5]]
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
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[0], [0], [1], [1]]
  c_4_1_0_False_resize <= c_1;
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "10",
    "0" when "11",
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
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[1], [1], [3], [3]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[1], [1], [8], [8]]
  c_6_1_0_False_resize <= resize(c_1, 19);
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  c_6_1_3_False_resize <= resize(c_1, 19);
  c_6_1_3_False_shift <= shift_left(c_6_1_3_False_resize, 3);
  with config_select_2 select c_6_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_1_0_False_shift;
        when "01" => c_6 <= c_6_1_3_False_shift;
        when others => c_6 <= to_signed(0, 19);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[3], [3], [15], [15]]
  with config_select_3 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 20,
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
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[5], [5], [5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 9 and associated fundamentals [[13], [13], [13], [13]]
  inst_adder_node_9: entity work.adder_node
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
      c_9 <= c_9_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[8], [1], [0], [0]]
  c_10_1_3_False_resize <= resize(c_1, 19);
  c_10_1_3_False_shift <= shift_left(c_10_1_3_False_resize, 3);
  c_10_1_0_False_resize <= resize(c_1, 19);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_1_3_False_shift;
        when "01" => c_10 <= c_10_1_0_False_shift;
        when others => c_10 <= to_signed(0, 19);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 11 and associated fundamentals [[15], [3], [1], [1]]
  with config_select_3 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_11_sub_sel,
      x_i => c_10,
      y_i => c_3,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 12 and associated fundamentals [[85], [85], [85], [85]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 19,
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
      x_i => c_8,
      y_i => c_8,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[64], [4], [85], [8]]
  c_13_5_2_False_resize <= resize(c_5, 23);
  c_13_5_2_False_shift <= shift_left(c_13_5_2_False_resize, 2);
  c_13_12_0_False_resize <= c_12;
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_5_6_False_resize <= resize(c_5, 23);
  c_13_5_6_False_shift <= shift_left(c_13_5_6_False_resize, 6);
  c_13_11_3_False_resize <= resize(c_11, 23);
  c_13_11_3_False_shift <= shift_left(c_13_11_3_False_resize, 3);
  with config_select_4 select c_13_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_5_2_False_shift;
        when "01" => c_13 <= c_13_12_0_False_shift;
        when "10" => c_13 <= c_13_5_6_False_shift;
        when others => c_13 <= c_13_11_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 14 and associated fundamentals [[52], [3], [1], [4]]
  c_14_11_2_False_resize <= resize(c_11, 22);
  c_14_11_2_False_shift <= shift_left(c_14_11_2_False_resize, 2);
  c_14_9_2_False_resize <= resize(c_9, 22);
  c_14_9_2_False_shift <= shift_left(c_14_9_2_False_resize, 2);
  c_14_11_0_False_resize <= resize(c_11, 22);
  c_14_11_0_False_shift <= shift_left(c_14_11_0_False_resize, 0);
  with config_select_4 select c_14_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_11_2_False_shift;
        when "01" => c_14 <= c_14_9_2_False_shift;
        when others => c_14 <= c_14_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 15 and associated fundamentals [[180], [11], [171], [20]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[2], [13], [3], [170]]
  c_16_9_0_False_resize <= resize(c_9, 24);
  c_16_9_0_False_shift <= shift_left(c_16_9_0_False_resize, 0);
  c_16_12_1_False_resize <= resize(c_12, 24);
  c_16_12_1_False_shift <= shift_left(c_16_12_1_False_resize, 1);
  c_16_5_0_False_resize <= resize(c_5, 24);
  c_16_5_0_False_shift <= shift_left(c_16_5_0_False_resize, 0);
  c_16_5_1_False_resize <= resize(c_5, 24);
  c_16_5_1_False_shift <= shift_left(c_16_5_1_False_resize, 1);
  with config_select_4 select c_16_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_9_0_False_shift;
        when "01" => c_16 <= c_16_12_1_False_shift;
        when "10" => c_16 <= c_16_5_0_False_shift;
        when others => c_16 <= c_16_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[30], [32], [2], [3]]
  c_17_11_1_False_resize <= resize(c_11, 21);
  c_17_11_1_False_shift <= shift_left(c_17_11_1_False_resize, 1);
  c_17_5_5_False_resize <= resize(c_5, 21);
  c_17_5_5_False_shift <= shift_left(c_17_5_5_False_resize, 5);
  c_17_5_0_False_resize <= resize(c_5, 21);
  c_17_5_0_False_shift <= shift_left(c_17_5_0_False_resize, 0);
  with config_select_4 select c_17_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_11_1_False_shift;
        when "01" => c_17 <= c_17_5_5_False_shift;
        when others => c_17 <= c_17_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 18 and associated fundamentals [[242], [243], [19], [146]]
  with config_select_5 select c_18_sub_sel_left <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  with config_select_5 select c_18_sub_sel_right <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_18_sub_sel_left,
      sub_b_i => c_18_sub_sel_right,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[15], [85], [96], [1]]
  c_19_12_0_False_resize <= c_12;
  c_19_12_0_False_shift <= shift_left(c_19_12_0_False_resize, 0);
  c_19_11_0_False_resize <= resize(c_11, 23);
  c_19_11_0_False_shift <= shift_left(c_19_11_0_False_resize, 0);
  c_19_5_5_False_resize <= resize(c_5, 23);
  c_19_5_5_False_shift <= shift_left(c_19_5_5_False_resize, 5);
  with config_select_4 select c_19_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_12_0_False_shift;
        when "01" => c_19 <= c_19_11_0_False_shift;
        when others => c_19 <= c_19_5_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[85], [64], [26], [8]]
  c_20_12_0_False_resize <= c_12;
  c_20_12_0_False_shift <= shift_left(c_20_12_0_False_resize, 0);
  c_20_9_1_False_resize <= resize(c_9, 23);
  c_20_9_1_False_shift <= shift_left(c_20_9_1_False_resize, 1);
  c_20_11_3_False_resize <= resize(c_11, 23);
  c_20_11_3_False_shift <= shift_left(c_20_11_3_False_resize, 3);
  c_20_5_6_False_resize <= resize(c_5, 23);
  c_20_5_6_False_shift <= shift_left(c_20_5_6_False_resize, 6);
  with config_select_4 select c_20_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_12_0_False_shift;
        when "01" => c_20 <= c_20_9_1_False_shift;
        when "10" => c_20 <= c_20_11_3_False_shift;
        when others => c_20 <= c_20_5_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 21 and associated fundamentals [[185], [213], [148], [17]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[12], [1], [8], [13]]
  c_22_11_3_False_resize <= c_11;
  c_22_11_3_False_shift <= shift_left(c_22_11_3_False_resize, 3);
  c_22_9_0_False_resize <= c_9;
  c_22_9_0_False_shift <= shift_left(c_22_9_0_False_resize, 0);
  c_22_5_0_False_resize <= resize(c_5, 20);
  c_22_5_0_False_shift <= shift_left(c_22_5_0_False_resize, 0);
  c_22_7_2_False_resize <= c_7;
  c_22_7_2_False_shift <= shift_left(c_22_7_2_False_resize, 2);
  with config_select_4 select c_22_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_11_3_False_shift;
        when "01" => c_22 <= c_22_9_0_False_shift;
        when "10" => c_22 <= c_22_5_0_False_shift;
        when others => c_22 <= c_22_7_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[13], [128], [15], [1]]
  c_23_9_0_False_resize <= resize(c_9, 23);
  c_23_9_0_False_shift <= shift_left(c_23_9_0_False_resize, 0);
  c_23_7_0_False_resize <= resize(c_7, 23);
  c_23_7_0_False_shift <= shift_left(c_23_7_0_False_resize, 0);
  c_23_11_0_False_resize <= resize(c_11, 23);
  c_23_11_0_False_shift <= shift_left(c_23_11_0_False_resize, 0);
  c_23_5_7_False_resize <= resize(c_5, 23);
  c_23_5_7_False_shift <= shift_left(c_23_5_7_False_resize, 7);
  with config_select_4 select c_23_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_9_0_False_shift;
        when "01" => c_23 <= c_23_7_0_False_shift;
        when "10" => c_23 <= c_23_11_0_False_shift;
        when others => c_23 <= c_23_5_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 24 and associated fundamentals [[205], [144], [113], [207]]
  with config_select_5 select c_24_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
      w_o => 24,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[52], [32], [1], [6]]
  c_25_9_2_False_resize <= resize(c_9, 22);
  c_25_9_2_False_shift <= shift_left(c_25_9_2_False_resize, 2);
  c_25_5_1_False_resize <= resize(c_5, 22);
  c_25_5_1_False_shift <= shift_left(c_25_5_1_False_resize, 1);
  c_25_5_5_False_resize <= resize(c_5, 22);
  c_25_5_5_False_shift <= shift_left(c_25_5_5_False_resize, 5);
  c_25_11_0_False_resize <= resize(c_11, 22);
  c_25_11_0_False_shift <= shift_left(c_25_11_0_False_resize, 0);
  with config_select_4 select c_25_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_9_2_False_shift;
        when "01" => c_25 <= c_25_5_1_False_shift;
        when "10" => c_25 <= c_25_5_5_False_shift;
        when others => c_25 <= c_25_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[15], [3], [192], [1]]
  c_26_11_0_False_resize <= resize(c_11, 24);
  c_26_11_0_False_shift <= shift_left(c_26_11_0_False_resize, 0);
  c_26_5_6_False_resize <= resize(c_5, 24);
  c_26_5_6_False_shift <= shift_left(c_26_5_6_False_resize, 6);
  with config_select_4 select c_26_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_11_0_False_shift;
        when others => c_26 <= c_26_5_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 27 and associated fundamentals [[223], [125], [196], [23]]
  with config_select_5 select c_27_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
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
      sub_i => c_27_sub_sel,
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[180], [11], [171], [20]]
  c_28_resize <= c_15;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'output' in stage 5 with id 29 and associated fundamentals [[242], [243], [19], [146]]
  c_29_resize <= c_18;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[205], [144], [113], [207]]
  c_30_resize <= c_24;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'output' in stage 5 with id 31 and associated fundamentals [[223], [125], [196], [23]]
  c_31_resize <= c_27;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[185], [213], [148], [17]]
  c_32_resize <= c_21;
  c_32 <= shift_left(c_32_resize, 0);
end architecture;

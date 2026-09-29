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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(20 downto 0);
  signal c_3_0_0_False_resize: signed(20 downto 0);
  signal c_3_0_0_False_shift: signed(20 downto 0);
  signal c_3_0_2_False_resize: signed(20 downto 0);
  signal c_3_0_2_False_shift: signed(20 downto 0);
  signal c_3_0_5_False_resize: signed(20 downto 0);
  signal c_3_0_5_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(23 downto 0);
  signal c_5_0_0_False_resize: signed(23 downto 0);
  signal c_5_0_0_False_shift: signed(23 downto 0);
  signal c_5_0_8_False_resize: signed(23 downto 0);
  signal c_5_0_8_False_shift: signed(23 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(22 downto 0);
  signal c_7_0_7_False_resize: signed(22 downto 0);
  signal c_7_0_7_False_shift: signed(22 downto 0);
  signal c_7_0_0_False_resize: signed(22 downto 0);
  signal c_7_0_0_False_shift: signed(22 downto 0);
  signal c_7_0_5_False_resize: signed(22 downto 0);
  signal c_7_0_5_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(24 downto 0);
  signal c_8_i0_resize: signed(24 downto 0);
  signal c_8_i1_resize: signed(24 downto 0);
  signal c_8_i0_shift: signed(24 downto 0);
  signal c_8_i1_shift: signed(24 downto 0);
  signal c_8_arith: signed(24 downto 0);
  signal c_8_oshift: signed(24 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_9_4_1_False_resize: signed(22 downto 0);
  signal c_9_4_1_False_shift: signed(22 downto 0);
  signal c_9_6_0_False_resize: signed(22 downto 0);
  signal c_9_6_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_8_0_False_resize: signed(22 downto 0);
  signal c_10_8_0_False_shift: signed(22 downto 0);
  signal c_10_6_3_False_resize: signed(22 downto 0);
  signal c_10_6_3_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(22 downto 0);
  signal c_12_1_5_False_resize: signed(22 downto 0);
  signal c_12_1_5_False_shift: signed(22 downto 0);
  signal c_12_1_2_False_resize: signed(22 downto 0);
  signal c_12_1_2_False_shift: signed(22 downto 0);
  signal c_12_1_0_False_resize: signed(22 downto 0);
  signal c_12_1_0_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_i0_resize: signed(24 downto 0);
  signal c_13_i1_resize: signed(24 downto 0);
  signal c_13_i0_shift: signed(24 downto 0);
  signal c_13_i1_shift: signed(24 downto 0);
  signal c_13_arith: signed(24 downto 0);
  signal c_13_oshift: signed(24 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(20 downto 0);
  signal c_14_1_0_False_resize: signed(20 downto 0);
  signal c_14_1_0_False_shift: signed(20 downto 0);
  signal c_14_2_1_False_resize: signed(20 downto 0);
  signal c_14_2_1_False_shift: signed(20 downto 0);
  signal c_14_1_1_False_resize: signed(20 downto 0);
  signal c_14_1_1_False_shift: signed(20 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_1_0_False_resize: signed(23 downto 0);
  signal c_16_1_0_False_shift: signed(23 downto 0);
  signal c_16_2_5_False_resize: signed(23 downto 0);
  signal c_16_2_5_False_shift: signed(23 downto 0);
  signal c_16_2_2_False_resize: signed(23 downto 0);
  signal c_16_2_2_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_17_2_0_False_resize: signed(19 downto 0);
  signal c_17_2_0_False_shift: signed(19 downto 0);
  signal c_17_1_0_False_resize: signed(19 downto 0);
  signal c_17_1_0_False_shift: signed(19 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(22 downto 0);
  signal c_19_1_0_False_resize: signed(22 downto 0);
  signal c_19_1_0_False_shift: signed(22 downto 0);
  signal c_19_2_3_False_resize: signed(22 downto 0);
  signal c_19_2_3_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_i0_resize: signed(24 downto 0);
  signal c_20_i1_resize: signed(24 downto 0);
  signal c_20_i0_shift: signed(24 downto 0);
  signal c_20_i1_shift: signed(24 downto 0);
  signal c_20_arith: signed(24 downto 0);
  signal c_20_oshift: signed(24 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(25 downto 0);
  signal c_21_18_2_False_resize: signed(25 downto 0);
  signal c_21_18_2_False_shift: signed(25 downto 0);
  signal c_21_15_0_False_resize: signed(25 downto 0);
  signal c_21_15_0_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_resize: signed(25 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_resize: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_20_0_False_resize: signed(25 downto 0);
  signal c_24_20_0_False_shift: signed(25 downto 0);
  signal c_24_20_1_False_resize: signed(25 downto 0);
  signal c_24_20_1_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_15_0_False_resize: signed(25 downto 0);
  signal c_26_15_0_False_shift: signed(25 downto 0);
  signal c_26_13_0_False_resize: signed(25 downto 0);
  signal c_26_13_0_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_13_1_False_resize: signed(25 downto 0);
  signal c_28_13_1_False_shift: signed(25 downto 0);
  signal c_28_18_0_False_resize: signed(25 downto 0);
  signal c_28_18_0_False_shift: signed(25 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
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
  -- output node 0 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_22);
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
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [5], [5]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
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
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[7], [7], [9]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
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
      sub_i => c_2_sub_sel,
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
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[4], [1], [32]]
  c_3_0_0_False_resize <= resize(c_0, 21);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_2_False_resize <= resize(c_0, 21);
  c_3_0_2_False_shift <= shift_left(c_3_0_2_False_resize, 2);
  c_3_0_5_False_resize <= resize(c_0, 21);
  c_3_0_5_False_shift <= shift_left(c_3_0_5_False_resize, 5);
  with config_select_1 select c_3_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_0_0_False_shift;
        when "01" => c_3 <= c_3_0_2_False_shift;
        when others => c_3 <= c_3_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[60], [57], [40]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 22,
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
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[256], [1], [1]]
  c_5_0_0_False_resize <= resize(c_0, 24);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_8_False_resize <= resize(c_0, 24);
  c_5_0_8_False_shift <= shift_left(c_5_0_8_False_resize, 8);
  with config_select_1 select c_5_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[270], [13], [17]]
  with config_select_2 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_6_sub_sel,
      x_i => c_2,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[1], [128], [32]]
  c_7_0_7_False_resize <= resize(c_0, 23);
  c_7_0_7_False_shift <= shift_left(c_7_0_7_False_resize, 7);
  c_7_0_0_False_resize <= resize(c_0, 23);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_5_False_resize <= resize(c_0, 23);
  c_7_0_5_False_shift <= shift_left(c_7_0_5_False_resize, 5);
  with config_select_1 select c_7_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_7_False_shift;
        when "01" => c_7 <= c_7_0_0_False_shift;
        when others => c_7 <= c_7_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[5], [263], [73]]
  with config_select_2 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
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
      sub_i => c_8_sub_sel,
      x_i => c_2,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[120], [114], [17]]
  c_9_4_1_False_resize <= resize(c_4, 23);
  c_9_4_1_False_shift <= shift_left(c_9_4_1_False_resize, 1);
  c_9_6_0_False_resize <= c_6(22 downto 0);
  c_9_6_0_False_shift <= shift_left(c_9_6_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_4_1_False_shift;
        when others => c_9 <= c_9_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[5], [104], [73]]
  c_10_8_0_False_resize <= c_8(22 downto 0);
  c_10_8_0_False_shift <= shift_left(c_10_8_0_False_resize, 0);
  c_10_6_3_False_resize <= c_6(22 downto 0);
  c_10_6_3_False_shift <= shift_left(c_10_6_3_False_resize, 3);
  with config_select_3 select c_10_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_8_0_False_shift;
        when others => c_10 <= c_10_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[955], [808], [209]]
  with config_select_4 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_11_sub_sel,
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
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[96], [20], [5]]
  c_12_1_5_False_resize <= resize(c_1, 23);
  c_12_1_5_False_shift <= shift_left(c_12_1_5_False_resize, 5);
  c_12_1_2_False_resize <= resize(c_1, 23);
  c_12_1_2_False_shift <= shift_left(c_12_1_2_False_resize, 2);
  c_12_1_0_False_resize <= resize(c_1, 23);
  c_12_1_0_False_shift <= shift_left(c_12_1_0_False_resize, 0);
  with config_select_2 select c_12_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_1_5_False_shift;
        when "01" => c_12 <= c_12_1_2_False_shift;
        when others => c_12 <= c_12_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 13 and associated fundamentals [[91], [283], [78]]
  with config_select_3 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 25,
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
      sub_i => c_13_sub_sel,
      x_i => c_12,
      y_i => c_8,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[3], [10], [18]]
  c_14_1_0_False_resize <= resize(c_1, 21);
  c_14_1_0_False_shift <= shift_left(c_14_1_0_False_resize, 0);
  c_14_2_1_False_resize <= resize(c_2, 21);
  c_14_2_1_False_shift <= shift_left(c_14_2_1_False_resize, 1);
  c_14_1_1_False_resize <= resize(c_1, 21);
  c_14_1_1_False_shift <= shift_left(c_14_1_1_False_resize, 1);
  with config_select_2 select c_14_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_1_0_False_shift;
        when "01" => c_14 <= c_14_2_1_False_shift;
        when others => c_14 <= c_14_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 15 and associated fundamentals [[963], [922], [658]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
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
      x_i => c_4,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[224], [5], [36]]
  c_16_1_0_False_resize <= resize(c_1, 24);
  c_16_1_0_False_shift <= shift_left(c_16_1_0_False_resize, 0);
  c_16_2_5_False_resize <= resize(c_2, 24);
  c_16_2_5_False_shift <= shift_left(c_16_2_5_False_resize, 5);
  c_16_2_2_False_resize <= resize(c_2, 24);
  c_16_2_2_False_shift <= shift_left(c_16_2_2_False_resize, 2);
  with config_select_2 select c_16_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_1_0_False_shift;
        when "01" => c_16 <= c_16_2_5_False_shift;
        when others => c_16 <= c_16_2_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[7], [5], [9]]
  c_17_2_0_False_resize <= c_2;
  c_17_2_0_False_shift <= shift_left(c_17_2_0_False_resize, 0);
  c_17_1_0_False_resize <= resize(c_1, 20);
  c_17_1_0_False_shift <= shift_left(c_17_1_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_2_0_False_shift;
        when others => c_17 <= c_17_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 18 and associated fundamentals [[455], [5], [63]]
  with config_select_3 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
      w_o => 25,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 19 and associated fundamentals [[3], [56], [72]]
  c_19_1_0_False_resize <= resize(c_1, 23);
  c_19_1_0_False_shift <= shift_left(c_19_1_0_False_resize, 0);
  c_19_2_3_False_resize <= resize(c_2, 23);
  c_19_2_3_False_shift <= shift_left(c_19_2_3_False_resize, 3);
  with config_select_2 select c_19_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_1_0_False_shift;
        when others => c_19 <= c_19_2_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 20 and associated fundamentals [[282], [211], [305]]
  with config_select_3 select c_20_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 25,
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
      sub_i => c_20_sub_sel,
      x_i => c_19,
      y_i => c_6,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[963], [20], [252]]
  c_21_18_2_False_resize <= resize(c_18, 26);
  c_21_18_2_False_shift <= shift_left(c_21_18_2_False_resize, 2);
  c_21_15_0_False_resize <= c_15;
  c_21_15_0_False_shift <= shift_left(c_21_15_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_18_2_False_shift;
        when others => c_21 <= c_21_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 22 and associated fundamentals [[963], [20], [252]]
  c_22_resize <= c_21;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'output' in stage 4 with id 23 and associated fundamentals [[955], [808], [209]]
  c_23_resize <= c_11;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[564], [211], [610]]
  c_24_20_0_False_resize <= resize(c_20, 26);
  c_24_20_0_False_shift <= shift_left(c_24_20_0_False_resize, 0);
  c_24_20_1_False_resize <= resize(c_20, 26);
  c_24_20_1_False_shift <= shift_left(c_24_20_1_False_resize, 1);
  with config_select_4 select c_24_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_20_0_False_shift;
        when others => c_24 <= c_24_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 25 and associated fundamentals [[564], [211], [610]]
  c_25_resize <= c_24;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[91], [922], [658]]
  c_26_15_0_False_resize <= c_15;
  c_26_15_0_False_shift <= shift_left(c_26_15_0_False_resize, 0);
  c_26_13_0_False_resize <= resize(c_13, 26);
  c_26_13_0_False_shift <= shift_left(c_26_13_0_False_resize, 0);
  with config_select_4 select c_26_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_15_0_False_shift;
        when others => c_26 <= c_26_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 27 and associated fundamentals [[91], [922], [658]]
  c_27_resize <= c_26;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[455], [566], [156]]
  c_28_13_1_False_resize <= resize(c_13, 26);
  c_28_13_1_False_shift <= shift_left(c_28_13_1_False_resize, 1);
  c_28_18_0_False_resize <= resize(c_18, 26);
  c_28_18_0_False_shift <= shift_left(c_28_18_0_False_resize, 0);
  with config_select_4 select c_28_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_13_1_False_shift;
        when others => c_28 <= c_28_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 29 and associated fundamentals [[455], [566], [156]]
  c_29_resize <= c_28;
  c_29 <= shift_left(c_29_resize, 0);
end architecture;

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
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_0_2_False_resize: signed(21 downto 0);
  signal c_2_0_2_False_shift: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(16 downto 0);
  signal c_4_0_0_False_resize: signed(16 downto 0);
  signal c_4_0_0_False_shift: signed(16 downto 0);
  signal c_4_0_1_False_resize: signed(16 downto 0);
  signal c_4_0_1_False_shift: signed(16 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_0_4_False_resize: signed(19 downto 0);
  signal c_5_0_4_False_shift: signed(19 downto 0);
  signal c_5_0_0_False_resize: signed(19 downto 0);
  signal c_5_0_0_False_shift: signed(19 downto 0);
  signal c_5_0_3_False_resize: signed(19 downto 0);
  signal c_5_0_3_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_3_4_False_resize: signed(23 downto 0);
  signal c_7_3_4_False_shift: signed(23 downto 0);
  signal c_7_3_1_False_resize: signed(23 downto 0);
  signal c_7_3_1_False_shift: signed(23 downto 0);
  signal c_7_6_0_False_resize: signed(23 downto 0);
  signal c_7_6_0_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_3_2_False_resize: signed(21 downto 0);
  signal c_8_3_2_False_shift: signed(21 downto 0);
  signal c_8_3_1_False_resize: signed(21 downto 0);
  signal c_8_3_1_False_shift: signed(21 downto 0);
  signal c_8_6_0_False_resize: signed(21 downto 0);
  signal c_8_6_0_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(17 downto 0);
  signal c_10_0_0_False_resize: signed(17 downto 0);
  signal c_10_0_0_False_shift: signed(17 downto 0);
  signal c_10_0_1_False_resize: signed(17 downto 0);
  signal c_10_0_1_False_shift: signed(17 downto 0);
  signal c_10_0_2_False_resize: signed(17 downto 0);
  signal c_10_0_2_False_shift: signed(17 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_3_1_False_resize: signed(23 downto 0);
  signal c_12_3_1_False_shift: signed(23 downto 0);
  signal c_12_6_0_False_resize: signed(23 downto 0);
  signal c_12_6_0_False_shift: signed(23 downto 0);
  signal c_12_11_0_False_resize: signed(23 downto 0);
  signal c_12_11_0_False_shift: signed(23 downto 0);
  signal c_12_3_5_False_resize: signed(23 downto 0);
  signal c_12_3_5_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_3_4_False_resize: signed(23 downto 0);
  signal c_13_3_4_False_shift: signed(23 downto 0);
  signal c_13_11_0_False_resize: signed(23 downto 0);
  signal c_13_11_0_False_shift: signed(23 downto 0);
  signal c_13_6_1_False_resize: signed(23 downto 0);
  signal c_13_6_1_False_shift: signed(23 downto 0);
  signal c_13_11_3_False_resize: signed(23 downto 0);
  signal c_13_11_3_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(23 downto 0);
  signal c_15_6_2_False_resize: signed(23 downto 0);
  signal c_15_6_2_False_shift: signed(23 downto 0);
  signal c_15_6_0_False_resize: signed(23 downto 0);
  signal c_15_6_0_False_shift: signed(23 downto 0);
  signal c_15_6_3_False_resize: signed(23 downto 0);
  signal c_15_6_3_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_3_0_False_resize: signed(23 downto 0);
  signal c_16_3_0_False_shift: signed(23 downto 0);
  signal c_16_11_2_False_resize: signed(23 downto 0);
  signal c_16_11_2_False_shift: signed(23 downto 0);
  signal c_16_3_4_False_resize: signed(23 downto 0);
  signal c_16_3_4_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_6_1_False_resize: signed(22 downto 0);
  signal c_18_6_1_False_shift: signed(22 downto 0);
  signal c_18_6_2_False_resize: signed(22 downto 0);
  signal c_18_6_2_False_shift: signed(22 downto 0);
  signal c_18_6_0_False_resize: signed(22 downto 0);
  signal c_18_6_0_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_3_0_False_resize: signed(22 downto 0);
  signal c_19_3_0_False_shift: signed(22 downto 0);
  signal c_19_11_0_False_resize: signed(22 downto 0);
  signal c_19_11_0_False_shift: signed(22 downto 0);
  signal c_19_11_1_False_resize: signed(22 downto 0);
  signal c_19_11_1_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(22 downto 0);
  signal c_21_11_1_False_resize: signed(22 downto 0);
  signal c_21_11_1_False_shift: signed(22 downto 0);
  signal c_21_3_0_False_resize: signed(22 downto 0);
  signal c_21_3_0_False_shift: signed(22 downto 0);
  signal c_21_11_2_False_resize: signed(22 downto 0);
  signal c_21_11_2_False_shift: signed(22 downto 0);
  signal c_21_11_0_False_resize: signed(22 downto 0);
  signal c_21_11_0_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_3_0_False_resize: signed(22 downto 0);
  signal c_22_3_0_False_shift: signed(22 downto 0);
  signal c_22_6_0_False_resize: signed(22 downto 0);
  signal c_22_6_0_False_shift: signed(22 downto 0);
  signal c_22_6_2_False_resize: signed(22 downto 0);
  signal c_22_6_2_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
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
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[-3], [-3], [5], [5]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[4], [1], [64], [1]]
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_2_False_resize <= resize(c_0, 22);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_2_False_shift;
        when others => c_2 <= c_2_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-10], [-5], [-54], [9]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 22,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [1], [1], [2]]
  c_4_0_0_False_resize <= resize(c_0, 17);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_1_False_resize <= resize(c_0, 17);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[16], [8], [16], [1]]
  c_5_0_4_False_resize <= resize(c_0, 20);
  c_5_0_4_False_shift <= shift_left(c_5_0_4_False_resize, 4);
  c_5_0_0_False_resize <= resize(c_0, 20);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_3_False_resize <= resize(c_0, 20);
  c_5_0_3_False_shift <= shift_left(c_5_0_3_False_resize, 3);
  with config_select_1 select c_5_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_4_False_shift;
        when "01" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 6 and associated fundamentals [[-63], [-31], [-63], [-2]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 20,
      w_o => 22,
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
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[-160], [-31], [-108], [-2]]
  c_7_3_4_False_resize <= resize(c_3, 24);
  c_7_3_4_False_shift <= shift_left(c_7_3_4_False_resize, 4);
  c_7_3_1_False_resize <= resize(c_3, 24);
  c_7_3_1_False_shift <= shift_left(c_7_3_1_False_resize, 1);
  c_7_6_0_False_resize <= resize(c_6, 24);
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_3_4_False_shift;
        when "01" => c_7 <= c_7_3_1_False_shift;
        when others => c_7 <= c_7_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[-20], [-20], [-63], [18]]
  c_8_3_2_False_resize <= c_3;
  c_8_3_2_False_shift <= shift_left(c_8_3_2_False_resize, 2);
  c_8_3_1_False_resize <= c_3;
  c_8_3_1_False_shift <= shift_left(c_8_3_1_False_resize, 1);
  c_8_6_0_False_resize <= c_6;
  c_8_6_0_False_shift <= shift_left(c_8_6_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_3_2_False_shift;
        when "01" => c_8 <= c_8_3_1_False_shift;
        when others => c_8 <= c_8_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[-180], [-11], [-171], [-20]]
  with config_select_4 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[4], [2], [1], [2]]
  c_10_0_0_False_resize <= resize(c_0, 18);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_0_1_False_resize <= resize(c_0, 18);
  c_10_0_1_False_shift <= shift_left(c_10_0_1_False_resize, 1);
  c_10_0_2_False_resize <= resize(c_0, 18);
  c_10_0_2_False_shift <= shift_left(c_10_0_2_False_resize, 2);
  with config_select_1 select c_10_sel <= 
    "00" when "10",
    "01" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_0_0_False_shift;
        when "01" => c_10 <= c_10_0_1_False_shift;
        when others => c_10 <= c_10_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 11 and associated fundamentals [[-67], [-35], [-11], [-27]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[-63], [-160], [-108], [-27]]
  c_12_3_1_False_resize <= resize(c_3, 24);
  c_12_3_1_False_shift <= shift_left(c_12_3_1_False_resize, 1);
  c_12_6_0_False_resize <= resize(c_6, 24);
  c_12_6_0_False_shift <= shift_left(c_12_6_0_False_resize, 0);
  c_12_11_0_False_resize <= resize(c_11, 24);
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  c_12_3_5_False_resize <= resize(c_3, 24);
  c_12_3_5_False_shift <= shift_left(c_12_3_5_False_resize, 5);
  with config_select_3 select c_12_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_3_1_False_shift;
        when "01" => c_12 <= c_12_6_0_False_shift;
        when "10" => c_12 <= c_12_11_0_False_shift;
        when others => c_12 <= c_12_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[-160], [-35], [-88], [-4]]
  c_13_3_4_False_resize <= resize(c_3, 24);
  c_13_3_4_False_shift <= shift_left(c_13_3_4_False_resize, 4);
  c_13_11_0_False_resize <= resize(c_11, 24);
  c_13_11_0_False_shift <= shift_left(c_13_11_0_False_resize, 0);
  c_13_6_1_False_resize <= resize(c_6, 24);
  c_13_6_1_False_shift <= shift_left(c_13_6_1_False_resize, 1);
  c_13_11_3_False_resize <= resize(c_11, 24);
  c_13_11_3_False_shift <= shift_left(c_13_11_3_False_resize, 3);
  with config_select_3 select c_13_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_3_4_False_shift;
        when "01" => c_13 <= c_13_11_0_False_shift;
        when "10" => c_13 <= c_13_6_1_False_shift;
        when others => c_13 <= c_13_11_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[-223], [-125], [-196], [-23]]
  with config_select_4 select c_14_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 24,
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
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[-252], [-248], [-63], [-2]]
  c_15_6_2_False_resize <= resize(c_6, 24);
  c_15_6_2_False_shift <= shift_left(c_15_6_2_False_resize, 2);
  c_15_6_0_False_resize <= resize(c_6, 24);
  c_15_6_0_False_shift <= shift_left(c_15_6_0_False_resize, 0);
  c_15_6_3_False_resize <= resize(c_6, 24);
  c_15_6_3_False_shift <= shift_left(c_15_6_3_False_resize, 3);
  with config_select_3 select c_15_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_6_2_False_shift;
        when "01" => c_15 <= c_15_6_0_False_shift;
        when others => c_15 <= c_15_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[-10], [-5], [-44], [144]]
  c_16_3_0_False_resize <= resize(c_3, 24);
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  c_16_11_2_False_resize <= resize(c_11, 24);
  c_16_11_2_False_shift <= shift_left(c_16_11_2_False_resize, 2);
  c_16_3_4_False_resize <= resize(c_3, 24);
  c_16_3_4_False_shift <= shift_left(c_16_3_4_False_resize, 4);
  with config_select_3 select c_16_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_3_0_False_shift;
        when "01" => c_16 <= c_16_11_2_False_shift;
        when others => c_16 <= c_16_3_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 17 and associated fundamentals [[-242], [-243], [-19], [-146]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
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
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[-126], [-124], [-63], [-4]]
  c_18_6_1_False_resize <= resize(c_6, 23);
  c_18_6_1_False_shift <= shift_left(c_18_6_1_False_resize, 1);
  c_18_6_2_False_resize <= resize(c_6, 23);
  c_18_6_2_False_shift <= shift_left(c_18_6_2_False_resize, 2);
  c_18_6_0_False_resize <= resize(c_6, 23);
  c_18_6_0_False_shift <= shift_left(c_18_6_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_6_1_False_shift;
        when "01" => c_18 <= c_18_6_2_False_shift;
        when others => c_18 <= c_18_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[-67], [-35], [-22], [9]]
  c_19_3_0_False_resize <= resize(c_3, 23);
  c_19_3_0_False_shift <= shift_left(c_19_3_0_False_resize, 0);
  c_19_11_0_False_resize <= c_11;
  c_19_11_0_False_shift <= shift_left(c_19_11_0_False_resize, 0);
  c_19_11_1_False_resize <= c_11;
  c_19_11_1_False_shift <= shift_left(c_19_11_1_False_resize, 1);
  with config_select_3 select c_19_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_3_0_False_shift;
        when "01" => c_19 <= c_19_11_0_False_shift;
        when others => c_19 <= c_19_11_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[-185], [-213], [-148], [-17]]
  with config_select_4 select c_20_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_20_sub_sel,
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
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[-67], [-5], [-44], [-54]]
  c_21_11_1_False_resize <= c_11;
  c_21_11_1_False_shift <= shift_left(c_21_11_1_False_resize, 1);
  c_21_3_0_False_resize <= resize(c_3, 23);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  c_21_11_2_False_resize <= c_11;
  c_21_11_2_False_shift <= shift_left(c_21_11_2_False_resize, 2);
  c_21_11_0_False_resize <= c_11;
  c_21_11_0_False_shift <= shift_left(c_21_11_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_11_1_False_shift;
        when "01" => c_21 <= c_21_3_0_False_shift;
        when "10" => c_21 <= c_21_11_2_False_shift;
        when others => c_21 <= c_21_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[-63], [-124], [-63], [9]]
  c_22_3_0_False_resize <= resize(c_3, 23);
  c_22_3_0_False_shift <= shift_left(c_22_3_0_False_resize, 0);
  c_22_6_0_False_resize <= resize(c_6, 23);
  c_22_6_0_False_shift <= shift_left(c_22_6_0_False_resize, 0);
  c_22_6_2_False_resize <= resize(c_6, 23);
  c_22_6_2_False_shift <= shift_left(c_22_6_2_False_resize, 2);
  with config_select_3 select c_22_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_3_0_False_shift;
        when "01" => c_22 <= c_22_6_0_False_shift;
        when others => c_22 <= c_22_6_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 23 and associated fundamentals [[-205], [-144], [-113], [-207]]
  with config_select_4 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
  -- node of type 'output' in stage 4 with id 24 and associated fundamentals [[180], [11], [171], [20]]
  c_24_resize <= c_9;
  c_24 <= -shift_left(c_24_resize, 0);
  -- node of type 'output' in stage 4 with id 25 and associated fundamentals [[242], [243], [19], [146]]
  c_25_resize <= c_17;
  c_25 <= -shift_left(c_25_resize, 0);
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[205], [144], [113], [207]]
  c_26_resize <= c_23;
  c_26 <= -shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 4 with id 27 and associated fundamentals [[223], [125], [196], [23]]
  c_27_resize <= c_14;
  c_27 <= -shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 4 with id 28 and associated fundamentals [[185], [213], [148], [17]]
  c_28_resize <= c_20;
  c_28 <= -shift_left(c_28_resize, 0);
end architecture;

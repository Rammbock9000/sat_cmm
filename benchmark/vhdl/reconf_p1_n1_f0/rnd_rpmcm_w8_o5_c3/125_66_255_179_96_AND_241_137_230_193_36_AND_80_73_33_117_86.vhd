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
    y_4: out std_logic_vector(22 downto 0);
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
  signal c_2: signed(21 downto 0);
  signal c_2_i0_resize: signed(21 downto 0);
  signal c_2_i1_resize: signed(21 downto 0);
  signal c_2_i0_shift: signed(21 downto 0);
  signal c_2_i1_shift: signed(21 downto 0);
  signal c_2_arith: signed(21 downto 0);
  signal c_2_oshift: signed(21 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(18 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(18 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(17 downto 0);
  signal c_4_0_0_False_resize: signed(17 downto 0);
  signal c_4_0_0_False_shift: signed(17 downto 0);
  signal c_4_0_2_False_resize: signed(17 downto 0);
  signal c_4_0_2_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_1_4_False_resize: signed(19 downto 0);
  signal c_6_1_4_False_shift: signed(19 downto 0);
  signal c_6_1_0_False_resize: signed(19 downto 0);
  signal c_6_1_0_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_1_3_False_resize: signed(20 downto 0);
  signal c_7_1_3_False_shift: signed(20 downto 0);
  signal c_7_2_0_False_resize: signed(20 downto 0);
  signal c_7_2_0_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(18 downto 0);
  signal c_9_3_0_False_resize: signed(18 downto 0);
  signal c_9_3_0_False_shift: signed(18 downto 0);
  signal c_9_3_1_False_resize: signed(18 downto 0);
  signal c_9_3_1_False_shift: signed(18 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_3_1_False_resize: signed(21 downto 0);
  signal c_10_3_1_False_shift: signed(21 downto 0);
  signal c_10_2_0_False_resize: signed(21 downto 0);
  signal c_10_2_0_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(18 downto 0);
  signal c_12_1_0_False_resize: signed(18 downto 0);
  signal c_12_1_0_False_shift: signed(18 downto 0);
  signal c_12_3_0_False_resize: signed(18 downto 0);
  signal c_12_3_0_False_shift: signed(18 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(23 downto 0);
  signal c_14_1_0_False_resize: signed(23 downto 0);
  signal c_14_1_0_False_shift: signed(23 downto 0);
  signal c_14_3_6_False_resize: signed(23 downto 0);
  signal c_14_3_6_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_2_0_False_resize: signed(23 downto 0);
  signal c_15_2_0_False_shift: signed(23 downto 0);
  signal c_15_1_0_False_resize: signed(23 downto 0);
  signal c_15_1_0_False_shift: signed(23 downto 0);
  signal c_15_1_8_False_resize: signed(23 downto 0);
  signal c_15_1_8_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(21 downto 0);
  signal c_17_3_0_False_resize: signed(21 downto 0);
  signal c_17_3_0_False_shift: signed(21 downto 0);
  signal c_17_3_3_False_resize: signed(21 downto 0);
  signal c_17_3_3_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(23 downto 0);
  signal c_19_18_0_False_resize: signed(23 downto 0);
  signal c_19_18_0_False_shift: signed(23 downto 0);
  signal c_19_8_0_False_resize: signed(23 downto 0);
  signal c_19_8_0_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_resize: signed(23 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_18_0_False_resize: signed(23 downto 0);
  signal c_21_18_0_False_shift: signed(23 downto 0);
  signal c_21_11_0_False_resize: signed(23 downto 0);
  signal c_21_11_0_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_resize: signed(23 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_16_0_False_resize: signed(23 downto 0);
  signal c_23_16_0_False_shift: signed(23 downto 0);
  signal c_23_13_1_False_resize: signed(23 downto 0);
  signal c_23_13_1_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_resize: signed(23 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_16_0_False_resize: signed(23 downto 0);
  signal c_25_16_0_False_shift: signed(23 downto 0);
  signal c_25_13_0_False_resize: signed(23 downto 0);
  signal c_25_13_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_resize: signed(23 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_27_18_0_False_resize: signed(21 downto 0);
  signal c_27_18_0_False_shift: signed(21 downto 0);
  signal c_27_11_1_False_resize: signed(21 downto 0);
  signal c_27_11_1_False_shift: signed(21 downto 0);
  signal c_27_8_0_False_resize: signed(21 downto 0);
  signal c_27_8_0_False_shift: signed(21 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_resize: signed(22 downto 0);
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
  -- output node 0 with id 20
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_20);
    end if;
  end process;
  -- output node 1 with id 22
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_22);
    end if;
  end process;
  -- output node 2 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 3 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_26);
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
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[-30], [-30], [34]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 1,
      s_y_i => 5,
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
      c_2 <= c_2_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 3 and associated fundamentals [[3], [3], [5]]
  with config_select_1 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
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
      sub_i => c_3_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[4], [4], [1]]
  c_4_0_0_False_resize <= resize(c_0, 18);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_2_False_resize <= resize(c_0, 18);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  with config_select_1 select c_4_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[131], [131], [37]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 19,
      w_o => 24,
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
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[16], [1], [16]]
  c_6_1_4_False_resize <= resize(c_1, 20);
  c_6_1_4_False_shift <= shift_left(c_6_1_4_False_resize, 4);
  c_6_1_0_False_resize <= resize(c_1, 20);
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_1_4_False_shift;
        when others => c_6 <= c_6_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[8], [-30], [8]]
  c_7_1_3_False_resize <= resize(c_1, 21);
  c_7_1_3_False_shift <= shift_left(c_7_1_3_False_resize, 3);
  c_7_2_0_False_resize <= c_2(20 downto 0);
  c_7_2_0_False_shift <= shift_left(c_7_2_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_1_3_False_shift;
        when others => c_7 <= c_7_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 8 and associated fundamentals [[-48], [241], [80]]
  with config_select_3 select c_8_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[6], [3], [5]]
  c_9_3_0_False_resize <= c_3;
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  c_9_3_1_False_resize <= c_3;
  c_9_3_1_False_shift <= shift_left(c_9_3_1_False_resize, 1);
  with config_select_2 select c_9_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_3_0_False_shift;
        when others => c_9 <= c_9_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[-30], [6], [34]]
  c_10_3_1_False_resize <= resize(c_3, 22);
  c_10_3_1_False_shift <= shift_left(c_10_3_1_False_resize, 1);
  c_10_2_0_False_resize <= c_2;
  c_10_2_0_False_shift <= shift_left(c_10_2_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_3_1_False_shift;
        when others => c_10 <= c_10_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 11 and associated fundamentals [[66], [-9], [73]]
  with config_select_3 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[3], [1], [5]]
  c_12_1_0_False_resize <= resize(c_1, 19);
  c_12_1_0_False_shift <= shift_left(c_12_1_0_False_resize, 0);
  c_12_3_0_False_resize <= c_3;
  c_12_3_0_False_shift <= shift_left(c_12_3_0_False_resize, 0);
  with config_select_2 select c_12_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_1_0_False_shift;
        when others => c_12 <= c_12_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 13 and associated fundamentals [[179], [-115], [117]]
  with config_select_3 select c_13_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
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
      sub_i => c_13_sub_sel,
      x_i => c_12,
      y_i => c_5,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[1], [192], [1]]
  c_14_1_0_False_resize <= resize(c_1, 24);
  c_14_1_0_False_shift <= shift_left(c_14_1_0_False_resize, 0);
  c_14_3_6_False_resize <= resize(c_3, 24);
  c_14_3_6_False_shift <= shift_left(c_14_3_6_False_resize, 6);
  with config_select_2 select c_14_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_1_0_False_shift;
        when others => c_14 <= c_14_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[256], [1], [34]]
  c_15_2_0_False_resize <= resize(c_2, 24);
  c_15_2_0_False_shift <= shift_left(c_15_2_0_False_resize, 0);
  c_15_1_0_False_resize <= resize(c_1, 24);
  c_15_1_0_False_shift <= shift_left(c_15_1_0_False_resize, 0);
  c_15_1_8_False_resize <= resize(c_1, 24);
  c_15_1_8_False_shift <= shift_left(c_15_1_8_False_resize, 8);
  with config_select_2 select c_15_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_2_0_False_shift;
        when "01" => c_15 <= c_15_1_0_False_shift;
        when others => c_15 <= c_15_1_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 16 and associated fundamentals [[-255], [193], [-33]]
  with config_select_3 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[3], [3], [40]]
  c_17_3_0_False_resize <= resize(c_3, 22);
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  c_17_3_3_False_resize <= resize(c_3, 22);
  c_17_3_3_False_shift <= shift_left(c_17_3_3_False_resize, 3);
  with config_select_2 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_3_0_False_shift;
        when others => c_17 <= c_17_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 18 and associated fundamentals [[125], [137], [-43]]
  with config_select_3 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_18_sub_sel,
      x_i => c_5,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[125], [241], [80]]
  c_19_18_0_False_resize <= c_18;
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  c_19_8_0_False_resize <= c_8;
  c_19_8_0_False_shift <= shift_left(c_19_8_0_False_resize, 0);
  with config_select_4 select c_19_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_18_0_False_shift;
        when others => c_19 <= c_19_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 20 and associated fundamentals [[125], [241], [80]]
  c_20_resize <= c_19;
  c_20 <= shift_left(c_20_resize, 0);
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[66], [137], [73]]
  c_21_18_0_False_resize <= c_18;
  c_21_18_0_False_shift <= shift_left(c_21_18_0_False_resize, 0);
  c_21_11_0_False_resize <= resize(c_11, 24);
  c_21_11_0_False_shift <= shift_left(c_21_11_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_18_0_False_shift;
        when others => c_21 <= c_21_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 22 and associated fundamentals [[66], [137], [73]]
  c_22_resize <= c_21;
  c_22 <= shift_left(c_22_resize, 0);
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[-255], [-230], [-33]]
  c_23_16_0_False_resize <= c_16;
  c_23_16_0_False_shift <= shift_left(c_23_16_0_False_resize, 0);
  c_23_13_1_False_resize <= c_13;
  c_23_13_1_False_shift <= shift_left(c_23_13_1_False_resize, 1);
  with config_select_4 select c_23_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_16_0_False_shift;
        when others => c_23 <= c_23_13_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 24 and associated fundamentals [[255], [230], [33]]
  c_24_resize <= c_23;
  c_24 <= -shift_left(c_24_resize, 0);
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[179], [193], [117]]
  c_25_16_0_False_resize <= c_16;
  c_25_16_0_False_shift <= shift_left(c_25_16_0_False_resize, 0);
  c_25_13_0_False_resize <= c_13;
  c_25_13_0_False_shift <= shift_left(c_25_13_0_False_resize, 0);
  with config_select_4 select c_25_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_16_0_False_shift;
        when others => c_25 <= c_25_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[179], [193], [117]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[-48], [-18], [-43]]
  c_27_18_0_False_resize <= c_18(21 downto 0);
  c_27_18_0_False_shift <= shift_left(c_27_18_0_False_resize, 0);
  c_27_11_1_False_resize <= c_11(21 downto 0);
  c_27_11_1_False_shift <= shift_left(c_27_11_1_False_resize, 1);
  c_27_8_0_False_resize <= c_8(21 downto 0);
  c_27_8_0_False_shift <= shift_left(c_27_8_0_False_resize, 0);
  with config_select_4 select c_27_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_18_0_False_shift;
        when "01" => c_27 <= c_27_11_1_False_shift;
        when others => c_27 <= c_27_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 28 and associated fundamentals [[96], [36], [86]]
  c_28_resize <= resize(c_27, 23);
  c_28 <= -shift_left(c_28_resize, 1);
end architecture;

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
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_2_2_False_resize: signed(22 downto 0);
  signal c_3_2_2_False_shift: signed(22 downto 0);
  signal c_3_1_4_False_resize: signed(22 downto 0);
  signal c_3_1_4_False_shift: signed(22 downto 0);
  signal c_3_2_0_False_resize: signed(22 downto 0);
  signal c_3_2_0_False_shift: signed(22 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(15 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_7_0_False_resize: signed(20 downto 0);
  signal c_8_7_0_False_shift: signed(20 downto 0);
  signal c_8_5_1_False_resize: signed(20 downto 0);
  signal c_8_5_1_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_5_0_False_resize: signed(25 downto 0);
  signal c_9_5_0_False_shift: signed(25 downto 0);
  signal c_9_5_6_False_resize: signed(25 downto 0);
  signal c_9_5_6_False_shift: signed(25 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(19 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_13_4_False_resize: signed(23 downto 0);
  signal c_14_13_4_False_shift: signed(23 downto 0);
  signal c_14_10_0_False_resize: signed(23 downto 0);
  signal c_14_10_0_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_16_1_False_resize: signed(23 downto 0);
  signal c_17_16_1_False_shift: signed(23 downto 0);
  signal c_17_10_0_False_resize: signed(23 downto 0);
  signal c_17_10_0_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_19: signed(15 downto 0);
  signal c_20: signed(15 downto 0);
  signal c_21: signed(15 downto 0);
  signal c_22: signed(15 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_18_0_False_resize: signed(23 downto 0);
  signal c_25_18_0_False_shift: signed(23 downto 0);
  signal c_25_22_0_False_resize: signed(23 downto 0);
  signal c_25_22_0_False_shift: signed(23 downto 0);
  signal c_25_24_0_False_resize: signed(23 downto 0);
  signal c_25_24_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_13_4_False_resize: signed(23 downto 0);
  signal c_26_13_4_False_shift: signed(23 downto 0);
  signal c_26_10_0_False_resize: signed(23 downto 0);
  signal c_26_10_0_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_i0_resize: signed(25 downto 0);
  signal c_29_i1_resize: signed(25 downto 0);
  signal c_29_i0_shift: signed(25 downto 0);
  signal c_29_i1_shift: signed(25 downto 0);
  signal c_29_arith: signed(25 downto 0);
  signal c_29_oshift: signed(25 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(25 downto 0);
  signal c_30_16_1_False_resize: signed(25 downto 0);
  signal c_30_16_1_False_shift: signed(25 downto 0);
  signal c_30_16_6_False_resize: signed(25 downto 0);
  signal c_30_16_6_False_shift: signed(25 downto 0);
  signal c_30_10_0_False_resize: signed(25 downto 0);
  signal c_30_10_0_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_18_0_False_resize: signed(25 downto 0);
  signal c_31_18_0_False_shift: signed(25 downto 0);
  signal c_31_18_1_False_resize: signed(25 downto 0);
  signal c_31_18_1_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_resize: signed(25 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_resize: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 1 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 2 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_38);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[7], [9], [7]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[112], [1], [4]]
  c_3_2_2_False_resize <= resize(c_2, 23);
  c_3_2_2_False_shift <= shift_left(c_3_2_2_False_resize, 2);
  c_3_1_4_False_resize <= resize(c_1, 23);
  c_3_1_4_False_shift <= shift_left(c_3_1_4_False_resize, 4);
  c_3_2_0_False_resize <= resize(c_2, 23);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_2_2_False_shift;
        when "01" => c_3 <= c_3_1_4_False_shift;
        when others => c_3 <= c_3_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[7], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[217], [11], [15]]
  with config_select_3 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[1], [1], [30]]
  c_8_7_0_False_resize <= resize(c_7, 21);
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  c_8_5_1_False_resize <= c_5(20 downto 0);
  c_8_5_1_False_shift <= shift_left(c_8_5_1_False_resize, 1);
  with config_select_4 select c_8_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_7_0_False_shift;
        when others => c_8 <= c_8_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[217], [704], [15]]
  c_9_5_0_False_resize <= resize(c_5, 26);
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  c_9_5_6_False_resize <= resize(c_5, 26);
  c_9_5_6_False_shift <= shift_left(c_9_5_6_False_resize, 6);
  with config_select_4 select c_9_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_5_0_False_shift;
        when others => c_9 <= c_9_5_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 10 and associated fundamentals [[-213], [708], [135]]
  with config_select_5 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[7], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[7], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[7], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 14 and associated fundamentals [[112], [144], [135]]
  c_14_13_4_False_resize <= resize(c_13, 24);
  c_14_13_4_False_shift <= shift_left(c_14_13_4_False_resize, 4);
  c_14_10_0_False_resize <= c_10(23 downto 0);
  c_14_10_0_False_shift <= shift_left(c_14_10_0_False_resize, 0);
  with config_select_6 select c_14_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_13_4_False_shift;
        when others => c_14 <= c_14_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[217], [11], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[217], [11], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 17 and associated fundamentals [[-213], [22], [135]]
  c_17_16_1_False_resize <= c_16;
  c_17_16_1_False_shift <= shift_left(c_17_16_1_False_resize, 1);
  c_17_10_0_False_resize <= c_10(23 downto 0);
  c_17_10_0_False_shift <= shift_left(c_17_10_0_False_resize, 0);
  with config_select_6 select c_17_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_16_1_False_shift;
        when others => c_17 <= c_17_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 18 and associated fundamentals [[235], [598], [675]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 26,
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
      x_i => c_14,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[-213], [708], [135]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 24 and associated fundamentals [[-213], [708], [135]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 25 and associated fundamentals [[235], [1], [135]]
  c_25_18_0_False_resize <= c_18(23 downto 0);
  c_25_18_0_False_shift <= shift_left(c_25_18_0_False_resize, 0);
  c_25_22_0_False_resize <= resize(c_22, 24);
  c_25_22_0_False_shift <= shift_left(c_25_22_0_False_resize, 0);
  c_25_24_0_False_resize <= c_24(23 downto 0);
  c_25_24_0_False_shift <= shift_left(c_25_24_0_False_resize, 0);
  with config_select_8 select c_25_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_18_0_False_shift;
        when "01" => c_25 <= c_25_22_0_False_shift;
        when others => c_25 <= c_25_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 26 and associated fundamentals [[-213], [144], [112]]
  c_26_13_4_False_resize <= resize(c_13, 24);
  c_26_13_4_False_shift <= shift_left(c_26_13_4_False_resize, 4);
  c_26_10_0_False_resize <= c_10(23 downto 0);
  c_26_10_0_False_shift <= shift_left(c_26_10_0_False_resize, 0);
  with config_select_6 select c_26_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_13_4_False_shift;
        when others => c_26 <= c_26_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[-213], [144], [112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 28 and associated fundamentals [[-213], [144], [112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 29 and associated fundamentals [[-617], [-575], [-313]]
  with config_select_9 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_29_sub_sel,
      x_i => c_25,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 30 and associated fundamentals [[434], [708], [960]]
  c_30_16_1_False_resize <= resize(c_16, 26);
  c_30_16_1_False_shift <= shift_left(c_30_16_1_False_resize, 1);
  c_30_16_6_False_resize <= resize(c_16, 26);
  c_30_16_6_False_shift <= shift_left(c_30_16_6_False_resize, 6);
  c_30_10_0_False_resize <= c_10;
  c_30_10_0_False_shift <= shift_left(c_30_10_0_False_resize, 0);
  with config_select_6 select c_30_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_16_1_False_shift;
        when "01" => c_30 <= c_30_16_6_False_shift;
        when others => c_30 <= c_30_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 31 and associated fundamentals [[470], [598], [675]]
  c_31_18_0_False_resize <= c_18;
  c_31_18_0_False_shift <= shift_left(c_31_18_0_False_resize, 0);
  c_31_18_1_False_resize <= c_18;
  c_31_18_1_False_shift <= shift_left(c_31_18_1_False_resize, 1);
  with config_select_8 select c_31_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_18_0_False_shift;
        when others => c_31 <= c_31_18_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[434], [708], [960]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[434], [708], [960]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 34 and associated fundamentals [[434], [708], [960]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 35 and associated fundamentals [[434], [708], [960]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'register' in stage 9 with id 36 and associated fundamentals [[470], [598], [675]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_31 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 37 and associated fundamentals [[470], [598], [675]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'output' in stage 9 with id 38 and associated fundamentals [[617], [575], [313]]
  c_38_resize <= c_29;
  c_38 <= -shift_left(c_38_resize, 0);
end architecture;

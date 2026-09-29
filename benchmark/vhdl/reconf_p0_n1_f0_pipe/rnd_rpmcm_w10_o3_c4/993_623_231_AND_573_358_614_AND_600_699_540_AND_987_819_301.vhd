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
  signal config_select_12: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(18 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(25 downto 0);
  signal c_5_4_8_False_resize: signed(25 downto 0);
  signal c_5_4_8_False_shift: signed(25 downto 0);
  signal c_5_3_7_False_resize: signed(25 downto 0);
  signal c_5_3_7_False_shift: signed(25 downto 0);
  signal c_5_4_0_False_resize: signed(25 downto 0);
  signal c_5_4_0_False_shift: signed(25 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_4_0_False_resize: signed(23 downto 0);
  signal c_6_4_0_False_shift: signed(23 downto 0);
  signal c_6_3_0_False_resize: signed(23 downto 0);
  signal c_6_3_0_False_shift: signed(23 downto 0);
  signal c_6_3_5_False_resize: signed(23 downto 0);
  signal c_6_3_5_False_shift: signed(23 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_8_3_0_False_resize: signed(19 downto 0);
  signal c_8_3_0_False_shift: signed(19 downto 0);
  signal c_8_3_1_False_resize: signed(19 downto 0);
  signal c_8_3_1_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_3_0_False_resize: signed(20 downto 0);
  signal c_9_3_0_False_shift: signed(20 downto 0);
  signal c_9_4_5_False_resize: signed(20 downto 0);
  signal c_9_4_5_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(18 downto 0);
  signal c_12: signed(18 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_7_0_False_resize: signed(25 downto 0);
  signal c_13_7_0_False_shift: signed(25 downto 0);
  signal c_13_12_7_False_resize: signed(25 downto 0);
  signal c_13_12_7_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_12_6_False_resize: signed(23 downto 0);
  signal c_14_12_6_False_shift: signed(23 downto 0);
  signal c_14_10_0_False_resize: signed(23 downto 0);
  signal c_14_10_0_False_shift: signed(23 downto 0);
  signal c_14_12_3_False_resize: signed(23 downto 0);
  signal c_14_12_3_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(25 downto 0);
  signal c_16_12_0_False_resize: signed(25 downto 0);
  signal c_16_12_0_False_shift: signed(25 downto 0);
  signal c_16_10_0_False_resize: signed(25 downto 0);
  signal c_16_10_0_False_shift: signed(25 downto 0);
  signal c_16_7_1_False_resize: signed(25 downto 0);
  signal c_16_7_1_False_shift: signed(25 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(18 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_15_0_False_resize: signed(25 downto 0);
  signal c_19_15_0_False_shift: signed(25 downto 0);
  signal c_19_18_5_False_resize: signed(25 downto 0);
  signal c_19_18_5_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_23: signed(15 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_10_2_False_resize: signed(24 downto 0);
  signal c_25_10_2_False_shift: signed(24 downto 0);
  signal c_25_24_8_False_resize: signed(24 downto 0);
  signal c_25_24_8_False_shift: signed(24 downto 0);
  signal c_25_7_0_False_resize: signed(24 downto 0);
  signal c_25_7_0_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_i0_resize: signed(25 downto 0);
  signal c_29_i1_resize: signed(25 downto 0);
  signal c_29_i0_shift: signed(25 downto 0);
  signal c_29_i1_shift: signed(25 downto 0);
  signal c_29_arith: signed(25 downto 0);
  signal c_29_oshift: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_32_0_False_resize: signed(25 downto 0);
  signal c_33_32_0_False_shift: signed(25 downto 0);
  signal c_33_29_0_False_resize: signed(25 downto 0);
  signal c_33_29_0_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_34_0_False_resize: signed(25 downto 0);
  signal c_35_34_0_False_shift: signed(25 downto 0);
  signal c_35_29_0_False_resize: signed(25 downto 0);
  signal c_35_29_0_False_shift: signed(25 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_22_0_False_resize: signed(25 downto 0);
  signal c_36_22_0_False_shift: signed(25 downto 0);
  signal c_36_31_0_False_resize: signed(25 downto 0);
  signal c_36_31_0_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_resize: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_resize: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_resize: signed(25 downto 0);
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
      config_select_12 <= config_select_11;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 1 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 2 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_40);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[7], [3], [5], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[896], [384], [1], [256]]
  c_5_4_8_False_resize <= resize(c_4, 26);
  c_5_4_8_False_shift <= shift_left(c_5_4_8_False_resize, 8);
  c_5_3_7_False_resize <= resize(c_3, 26);
  c_5_3_7_False_shift <= shift_left(c_5_3_7_False_resize, 7);
  c_5_4_0_False_resize <= resize(c_4, 26);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_4_8_False_shift;
        when "01" => c_5 <= c_5_3_7_False_shift;
        when others => c_5 <= c_5_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [3], [160], [3]]
  c_6_4_0_False_resize <= resize(c_4, 24);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_3_0_False_resize <= resize(c_3, 24);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_3_5_False_resize <= resize(c_3, 24);
  c_6_3_5_False_shift <= shift_left(c_6_3_5_False_resize, 5);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_4_0_False_shift;
        when "01" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[895], [381], [-159], [259]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[7], [3], [10], [3]]
  c_8_3_0_False_resize <= resize(c_3, 20);
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  c_8_3_1_False_resize <= resize(c_3, 20);
  c_8_3_1_False_shift <= shift_left(c_8_3_1_False_resize, 1);
  with config_select_3 select c_8_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_3_0_False_shift;
        when others => c_8 <= c_8_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[7], [32], [5], [3]]
  c_9_3_0_False_resize <= resize(c_3, 21);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  c_9_4_5_False_resize <= resize(c_4, 21);
  c_9_4_5_False_shift <= shift_left(c_9_4_5_False_resize, 5);
  with config_select_3 select c_9_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_3_0_False_shift;
        when others => c_9 <= c_9_4_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[-98], [518], [-60], [-42]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 4,
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
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[7], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[7], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[895], [381], [640], [259]]
  c_13_7_0_False_resize <= c_7;
  c_13_7_0_False_shift <= shift_left(c_13_7_0_False_resize, 0);
  c_13_12_7_False_resize <= resize(c_12, 26);
  c_13_12_7_False_shift <= shift_left(c_13_12_7_False_resize, 7);
  with config_select_5 select c_13_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_7_0_False_shift;
        when others => c_13 <= c_13_12_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[-98], [192], [40], [-42]]
  c_14_12_6_False_resize <= resize(c_12, 24);
  c_14_12_6_False_shift <= shift_left(c_14_12_6_False_resize, 6);
  c_14_10_0_False_resize <= c_10(23 downto 0);
  c_14_10_0_False_shift <= shift_left(c_14_10_0_False_resize, 0);
  c_14_12_3_False_resize <= resize(c_12, 24);
  c_14_12_3_False_shift <= shift_left(c_14_12_3_False_resize, 3);
  with config_select_5 select c_14_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_12_6_False_shift;
        when "01" => c_14 <= c_14_10_0_False_shift;
        when others => c_14 <= c_14_12_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[993], [573], [600], [301]]
  with config_select_6 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[7], [518], [-60], [518]]
  c_16_12_0_False_resize <= resize(c_12, 26);
  c_16_12_0_False_shift <= shift_left(c_16_12_0_False_resize, 0);
  c_16_10_0_False_resize <= c_10;
  c_16_10_0_False_shift <= shift_left(c_16_10_0_False_resize, 0);
  c_16_7_1_False_resize <= c_7;
  c_16_7_1_False_shift <= shift_left(c_16_7_1_False_resize, 1);
  with config_select_5 select c_16_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_12_0_False_shift;
        when "01" => c_16 <= c_16_10_0_False_shift;
        when others => c_16 <= c_16_7_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[7], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[7], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[224], [96], [600], [301]]
  c_19_15_0_False_resize <= c_15;
  c_19_15_0_False_shift <= shift_left(c_19_15_0_False_resize, 0);
  c_19_18_5_False_resize <= resize(c_18, 26);
  c_19_18_5_False_shift <= shift_left(c_19_18_5_False_resize, 5);
  with config_select_7 select c_19_sel <= 
    "0" when "10",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_15_0_False_shift;
        when others => c_19 <= c_19_18_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[7], [518], [-60], [518]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 21 and associated fundamentals [[7], [518], [-60], [518]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 22 and associated fundamentals [[231], [614], [540], [819]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_21,
      y_i => c_19,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 23 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 25 and associated fundamentals [[-392], [256], [-159], [-168]]
  c_25_10_2_False_resize <= c_10(24 downto 0);
  c_25_10_2_False_shift <= shift_left(c_25_10_2_False_resize, 2);
  c_25_24_8_False_resize <= resize(c_24, 25);
  c_25_24_8_False_shift <= shift_left(c_25_24_8_False_resize, 8);
  c_25_7_0_False_resize <= c_7(24 downto 0);
  c_25_7_0_False_shift <= shift_left(c_25_7_0_False_resize, 0);
  with config_select_5 select c_25_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_10_2_False_shift;
        when "01" => c_25 <= c_25_24_8_False_shift;
        when others => c_25 <= c_25_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[-392], [256], [-159], [-168]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[-392], [256], [-159], [-168]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 28 and associated fundamentals [[-392], [256], [-159], [-168]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 9 with id 29 and associated fundamentals [[623], [358], [699], [987]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_22,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[993], [573], [600], [301]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 31 and associated fundamentals [[993], [573], [600], [301]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 32 and associated fundamentals [[993], [573], [600], [301]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 33 and associated fundamentals [[993], [573], [600], [987]]
  c_33_32_0_False_resize <= c_32;
  c_33_32_0_False_shift <= shift_left(c_33_32_0_False_resize, 0);
  c_33_29_0_False_resize <= c_29;
  c_33_29_0_False_shift <= shift_left(c_33_29_0_False_resize, 0);
  with config_select_10 select c_33_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_32_0_False_shift;
        when others => c_33 <= c_33_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 34 and associated fundamentals [[231], [614], [540], [819]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 35 and associated fundamentals [[623], [358], [699], [819]]
  c_35_34_0_False_resize <= c_34;
  c_35_34_0_False_shift <= shift_left(c_35_34_0_False_resize, 0);
  c_35_29_0_False_resize <= c_29;
  c_35_29_0_False_shift <= shift_left(c_35_29_0_False_resize, 0);
  with config_select_10 select c_35_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_34_0_False_shift;
        when others => c_35 <= c_35_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 36 and associated fundamentals [[231], [614], [540], [301]]
  c_36_22_0_False_resize <= c_22;
  c_36_22_0_False_shift <= shift_left(c_36_22_0_False_resize, 0);
  c_36_31_0_False_resize <= c_31;
  c_36_31_0_False_shift <= shift_left(c_36_31_0_False_resize, 0);
  with config_select_9 select c_36_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_22_0_False_shift;
        when others => c_36 <= c_36_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 37 and associated fundamentals [[993], [573], [600], [987]]
  c_37_resize <= c_33;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'output' in stage 10 with id 38 and associated fundamentals [[623], [358], [699], [819]]
  c_38_resize <= c_35;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'register' in stage 10 with id 39 and associated fundamentals [[231], [614], [540], [301]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_36 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 40 and associated fundamentals [[231], [614], [540], [301]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
end architecture;

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
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_1_3_False_resize: signed(20 downto 0);
  signal c_3_1_3_False_shift: signed(20 downto 0);
  signal c_3_1_0_False_resize: signed(20 downto 0);
  signal c_3_1_0_False_shift: signed(20 downto 0);
  signal c_3_2_5_False_resize: signed(20 downto 0);
  signal c_3_2_5_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_1_0_False_resize: signed(19 downto 0);
  signal c_4_1_0_False_shift: signed(19 downto 0);
  signal c_4_1_2_False_resize: signed(19 downto 0);
  signal c_4_1_2_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(25 downto 0);
  signal c_5_i0_resize: signed(25 downto 0);
  signal c_5_i1_resize: signed(25 downto 0);
  signal c_5_i0_shift: signed(25 downto 0);
  signal c_5_i1_shift: signed(25 downto 0);
  signal c_5_arith: signed(25 downto 0);
  signal c_5_oshift: signed(25 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(18 downto 0);
  signal c_6_1_0_False_resize: signed(18 downto 0);
  signal c_6_1_0_False_shift: signed(18 downto 0);
  signal c_6_2_3_False_resize: signed(18 downto 0);
  signal c_6_2_3_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_8_1_False_resize: signed(22 downto 0);
  signal c_9_8_1_False_shift: signed(22 downto 0);
  signal c_9_5_0_False_resize: signed(22 downto 0);
  signal c_9_5_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_11: signed(18 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(25 downto 0);
  signal c_13_12_0_False_resize: signed(25 downto 0);
  signal c_13_12_0_False_shift: signed(25 downto 0);
  signal c_13_12_2_False_resize: signed(25 downto 0);
  signal c_13_12_2_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(15 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(18 downto 0);
  signal c_21: signed(18 downto 0);
  signal c_22: signed(18 downto 0);
  signal c_23: signed(18 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_23_5_False_resize: signed(23 downto 0);
  signal c_24_23_5_False_shift: signed(23 downto 0);
  signal c_24_19_0_False_resize: signed(23 downto 0);
  signal c_24_19_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_12_0_False_resize: signed(22 downto 0);
  signal c_25_12_0_False_shift: signed(22 downto 0);
  signal c_25_17_5_False_resize: signed(22 downto 0);
  signal c_25_17_5_False_shift: signed(22 downto 0);
  signal c_25_21_1_False_resize: signed(22 downto 0);
  signal c_25_21_1_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_i0_resize: signed(23 downto 0);
  signal c_28_i1_resize: signed(23 downto 0);
  signal c_28_i0_shift: signed(23 downto 0);
  signal c_28_i1_shift: signed(23 downto 0);
  signal c_28_arith: signed(23 downto 0);
  signal c_28_oshift: signed(23 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(25 downto 0);
  signal c_29_19_0_False_resize: signed(25 downto 0);
  signal c_29_19_0_False_shift: signed(25 downto 0);
  signal c_29_19_1_False_resize: signed(25 downto 0);
  signal c_29_19_1_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_35_1_False_resize: signed(25 downto 0);
  signal c_36_35_1_False_shift: signed(25 downto 0);
  signal c_36_35_0_False_resize: signed(25 downto 0);
  signal c_36_35_0_False_shift: signed(25 downto 0);
  signal c_36_28_0_False_resize: signed(25 downto 0);
  signal c_36_28_0_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_35_0_False_resize: signed(25 downto 0);
  signal c_37_35_0_False_shift: signed(25 downto 0);
  signal c_37_28_1_False_resize: signed(25 downto 0);
  signal c_37_28_1_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_resize: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_resize: signed(25 downto 0);
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
  -- output node 0 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 1 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 2 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_42);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [3], [3], [5]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[24], [3], [32], [5]]
  c_3_1_3_False_resize <= resize(c_1, 21);
  c_3_1_3_False_shift <= shift_left(c_3_1_3_False_resize, 3);
  c_3_1_0_False_resize <= resize(c_1, 21);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_5_False_resize <= resize(c_2, 21);
  c_3_2_5_False_shift <= shift_left(c_3_2_5_False_resize, 5);
  with config_select_2 select c_3_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_1_3_False_shift;
        when "01" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_2_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[3], [12], [3], [5]]
  c_4_1_0_False_resize <= resize(c_1, 20);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_1_2_False_resize <= resize(c_1, 20);
  c_4_1_2_False_shift <= shift_left(c_4_1_2_False_resize, 2);
  with config_select_2 select c_4_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_0_False_shift;
        when others => c_4 <= c_4_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[765], [108], [1021], [155]]
  with config_select_3 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 26,
      s_x_i => 5,
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
      c_5 <= c_5_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[8], [3], [8], [5]]
  c_6_1_0_False_resize <= c_1;
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  c_6_2_3_False_resize <= resize(c_2, 19);
  c_6_2_3_False_shift <= shift_left(c_6_2_3_False_resize, 3);
  with config_select_2 select c_6_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_1_0_False_shift;
        when others => c_6 <= c_6_2_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[3], [3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[3], [3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[6], [108], [6], [10]]
  c_9_8_1_False_resize <= resize(c_8, 23);
  c_9_8_1_False_shift <= shift_left(c_9_8_1_False_resize, 1);
  c_9_5_0_False_resize <= c_5(22 downto 0);
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  with config_select_4 select c_9_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_8_1_False_shift;
        when others => c_9 <= c_9_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[8], [3], [8], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[8], [3], [8], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[70], [132], [58], [50]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 24,
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
      sub_i => c_12_sub_sel,
      x_i => c_11,
      y_i => c_9,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 13 and associated fundamentals [[70], [528], [232], [200]]
  c_13_12_0_False_resize <= resize(c_12, 26);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_12_2_False_resize <= resize(c_12, 26);
  c_13_12_2_False_shift <= shift_left(c_13_12_2_False_resize, 2);
  with config_select_6 select c_13_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_12_0_False_shift;
        when others => c_13 <= c_13_12_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 14 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 19 and associated fundamentals [[69], [529], [231], [199]]
  with config_select_7 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 16,
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
      sub_i => c_19_sub_sel,
      x_i => c_13,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[3], [3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[3], [3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[3], [3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 23 and associated fundamentals [[3], [3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 24 and associated fundamentals [[69], [96], [96], [199]]
  c_24_23_5_False_resize <= resize(c_23, 24);
  c_24_23_5_False_shift <= shift_left(c_24_23_5_False_resize, 5);
  c_24_19_0_False_resize <= c_19(23 downto 0);
  c_24_19_0_False_shift <= shift_left(c_24_19_0_False_resize, 0);
  with config_select_8 select c_24_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_23_5_False_shift;
        when others => c_24 <= c_24_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 25 and associated fundamentals [[70], [6], [58], [32]]
  c_25_12_0_False_resize <= c_12(22 downto 0);
  c_25_12_0_False_shift <= shift_left(c_25_12_0_False_resize, 0);
  c_25_17_5_False_resize <= resize(c_17, 23);
  c_25_17_5_False_shift <= shift_left(c_25_17_5_False_resize, 5);
  c_25_21_1_False_resize <= resize(c_21, 23);
  c_25_21_1_False_shift <= shift_left(c_25_21_1_False_resize, 1);
  with config_select_6 select c_25_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_12_0_False_shift;
        when "01" => c_25 <= c_25_17_5_False_shift;
        when others => c_25 <= c_25_21_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[70], [6], [58], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 27 and associated fundamentals [[70], [6], [58], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 28 and associated fundamentals [[139], [90], [154], [231]]
  with config_select_9 select c_28_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_28_sub_sel,
      x_i => c_24,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 29 and associated fundamentals [[69], [529], [231], [398]]
  c_29_19_0_False_resize <= c_19;
  c_29_19_0_False_shift <= shift_left(c_29_19_0_False_resize, 0);
  c_29_19_1_False_resize <= c_19;
  c_29_19_1_False_shift <= shift_left(c_29_19_1_False_resize, 1);
  with config_select_8 select c_29_sel <= 
    "0" when "10",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_19_0_False_shift;
        when others => c_29 <= c_29_19_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[765], [108], [1021], [155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[765], [108], [1021], [155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[765], [108], [1021], [155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[765], [108], [1021], [155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[765], [108], [1021], [155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 35 and associated fundamentals [[765], [108], [1021], [155]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 36 and associated fundamentals [[139], [108], [1021], [310]]
  c_36_35_1_False_resize <= c_35;
  c_36_35_1_False_shift <= shift_left(c_36_35_1_False_resize, 1);
  c_36_35_0_False_resize <= c_35;
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  c_36_28_0_False_resize <= resize(c_28, 26);
  c_36_28_0_False_shift <= shift_left(c_36_28_0_False_resize, 0);
  with config_select_10 select c_36_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_35_1_False_shift;
        when "01" => c_36 <= c_36_35_0_False_shift;
        when others => c_36 <= c_36_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 37 and associated fundamentals [[765], [180], [308], [462]]
  c_37_35_0_False_resize <= c_35;
  c_37_35_0_False_shift <= shift_left(c_37_35_0_False_resize, 0);
  c_37_28_1_False_resize <= resize(c_28, 26);
  c_37_28_1_False_shift <= shift_left(c_37_28_1_False_resize, 1);
  with config_select_10 select c_37_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_35_0_False_shift;
        when others => c_37 <= c_37_28_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 38 and associated fundamentals [[69], [529], [231], [398]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 39 and associated fundamentals [[69], [529], [231], [398]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 40 and associated fundamentals [[69], [529], [231], [398]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 10 with id 41 and associated fundamentals [[139], [108], [1021], [310]]
  c_41_resize <= c_36;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 10 with id 42 and associated fundamentals [[765], [180], [308], [462]]
  c_42_resize <= c_37;
  c_42 <= shift_left(c_42_resize, 0);
end architecture;

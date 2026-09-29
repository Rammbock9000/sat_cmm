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
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_3_0_False_resize: signed(19 downto 0);
  signal c_5_3_0_False_shift: signed(19 downto 0);
  signal c_5_4_4_False_resize: signed(19 downto 0);
  signal c_5_4_4_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(25 downto 0);
  signal c_6_3_7_False_resize: signed(25 downto 0);
  signal c_6_3_7_False_shift: signed(25 downto 0);
  signal c_6_3_5_False_resize: signed(25 downto 0);
  signal c_6_3_5_False_shift: signed(25 downto 0);
  signal c_6_3_0_False_resize: signed(25 downto 0);
  signal c_6_3_0_False_shift: signed(25 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(26 downto 0);
  signal c_7_i0_resize: signed(26 downto 0);
  signal c_7_i1_resize: signed(26 downto 0);
  signal c_7_i0_shift: signed(26 downto 0);
  signal c_7_i1_shift: signed(26 downto 0);
  signal c_7_arith: signed(26 downto 0);
  signal c_7_oshift: signed(26 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(21 downto 0);
  signal c_8_4_4_False_resize: signed(21 downto 0);
  signal c_8_4_4_False_shift: signed(21 downto 0);
  signal c_8_3_0_False_resize: signed(21 downto 0);
  signal c_8_3_0_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_7_0_False_resize: signed(24 downto 0);
  signal c_11_7_0_False_shift: signed(24 downto 0);
  signal c_11_10_0_False_resize: signed(24 downto 0);
  signal c_11_10_0_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(15 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(26 downto 0);
  signal c_17_7_0_False_resize: signed(26 downto 0);
  signal c_17_7_0_False_shift: signed(26 downto 0);
  signal c_17_16_2_False_resize: signed(26 downto 0);
  signal c_17_16_2_False_shift: signed(26 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(15 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_14_0_False_resize: signed(25 downto 0);
  signal c_20_14_0_False_shift: signed(25 downto 0);
  signal c_20_19_6_False_resize: signed(25 downto 0);
  signal c_20_19_6_False_shift: signed(25 downto 0);
  signal c_20_14_2_False_resize: signed(25 downto 0);
  signal c_20_14_2_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(26 downto 0);
  signal c_22: signed(26 downto 0);
  signal c_23: signed(26 downto 0);
  signal c_23_i0_resize: signed(26 downto 0);
  signal c_23_i1_resize: signed(26 downto 0);
  signal c_23_i0_shift: signed(26 downto 0);
  signal c_23_i1_shift: signed(26 downto 0);
  signal c_23_arith: signed(26 downto 0);
  signal c_23_oshift: signed(26 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(24 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_26: signed(26 downto 0);
  signal c_26_23_0_False_resize: signed(26 downto 0);
  signal c_26_23_0_False_shift: signed(26 downto 0);
  signal c_26_25_0_False_resize: signed(26 downto 0);
  signal c_26_25_0_False_shift: signed(26 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(26 downto 0);
  signal c_28: signed(26 downto 0);
  signal c_29: signed(26 downto 0);
  signal c_30: signed(26 downto 0);
  signal c_31: signed(26 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_i0_resize: signed(26 downto 0);
  signal c_32_i1_resize: signed(26 downto 0);
  signal c_32_i0_shift: signed(26 downto 0);
  signal c_32_i1_shift: signed(26 downto 0);
  signal c_32_arith: signed(26 downto 0);
  signal c_32_oshift: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_30_1_False_resize: signed(25 downto 0);
  signal c_33_30_1_False_shift: signed(25 downto 0);
  signal c_33_25_0_False_resize: signed(25 downto 0);
  signal c_33_25_0_False_shift: signed(25 downto 0);
  signal c_33_23_0_False_resize: signed(25 downto 0);
  signal c_33_23_0_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(21 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_35_4_False_resize: signed(25 downto 0);
  signal c_36_35_4_False_shift: signed(25 downto 0);
  signal c_36_14_1_False_resize: signed(25 downto 0);
  signal c_36_14_1_False_shift: signed(25 downto 0);
  signal c_36_14_0_False_resize: signed(25 downto 0);
  signal c_36_14_0_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_resize: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_resize: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_resize: signed(25 downto 0);
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
  -- output node 0 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 1 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 2 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_43);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [16]]
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[5], [5], [63]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 22,
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
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[5], [5], [16]]
  c_5_3_0_False_resize <= c_3(19 downto 0);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_4_4_False_resize <= resize(c_4, 20);
  c_5_4_4_False_shift <= shift_left(c_5_4_4_False_resize, 4);
  with config_select_3 select c_5_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_3_0_False_shift;
        when others => c_5 <= c_5_4_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[640], [160], [63]]
  c_6_3_7_False_resize <= resize(c_3, 26);
  c_6_3_7_False_shift <= shift_left(c_6_3_7_False_resize, 7);
  c_6_3_5_False_resize <= resize(c_3, 26);
  c_6_3_5_False_shift <= shift_left(c_6_3_5_False_resize, 5);
  c_6_3_0_False_resize <= resize(c_3, 26);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_7_False_shift;
        when "01" => c_6 <= c_6_3_5_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[1285], [325], [-110]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 26,
      w_o => 27,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[16], [5], [63]]
  c_8_4_4_False_resize <= resize(c_4, 22);
  c_8_4_4_False_shift <= shift_left(c_8_4_4_False_resize, 4);
  c_8_3_0_False_resize <= c_3;
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_4_4_False_shift;
        when others => c_8 <= c_8_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[5], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[5], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[5], [325], [-110]]
  c_11_7_0_False_resize <= c_7(24 downto 0);
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  c_11_10_0_False_resize <= resize(c_10, 25);
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  with config_select_5 select c_11_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_7_0_False_shift;
        when others => c_11 <= c_11_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[16], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[16], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 14 and associated fundamentals [[133], [-285], [394]]
  with config_select_6 select c_14_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
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
      sub_i => c_14_sub_sel,
      x_i => c_13,
      y_i => c_11,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[1285], [325], [4]]
  c_17_7_0_False_resize <= c_7;
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  c_17_16_2_False_resize <= resize(c_16, 27);
  c_17_16_2_False_shift <= shift_left(c_17_16_2_False_resize, 2);
  with config_select_5 select c_17_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_7_0_False_shift;
        when others => c_17 <= c_17_16_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[532], [64], [394]]
  c_20_14_0_False_resize <= resize(c_14, 26);
  c_20_14_0_False_shift <= shift_left(c_20_14_0_False_resize, 0);
  c_20_19_6_False_resize <= resize(c_19, 26);
  c_20_19_6_False_shift <= shift_left(c_20_19_6_False_resize, 6);
  c_20_14_2_False_resize <= resize(c_14, 26);
  c_20_14_2_False_shift <= shift_left(c_20_14_2_False_resize, 2);
  with config_select_7 select c_20_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_14_0_False_shift;
        when "01" => c_20 <= c_20_19_6_False_shift;
        when others => c_20 <= c_20_14_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[1285], [325], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[1285], [325], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 23 and associated fundamentals [[-843], [581], [1580]]
  with config_select_8 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 26,
      w_o => 27,
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_20,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 24 and associated fundamentals [[133], [-285], [394]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 25 and associated fundamentals [[133], [-285], [394]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 26 and associated fundamentals [[133], [581], [1580]]
  c_26_23_0_False_resize <= c_23;
  c_26_23_0_False_shift <= shift_left(c_26_23_0_False_resize, 0);
  c_26_25_0_False_resize <= resize(c_25, 27);
  c_26_25_0_False_shift <= shift_left(c_26_25_0_False_resize, 0);
  with config_select_9 select c_26_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_23_0_False_shift;
        when others => c_26 <= c_26_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[1285], [325], [-110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[1285], [325], [-110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[1285], [325], [-110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 30 and associated fundamentals [[1285], [325], [-110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 31 and associated fundamentals [[1285], [325], [-110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'add' in stage 10 with id 32 and associated fundamentals [[709], [453], [735]]
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 27,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_31,
      y_i => c_26,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 33 and associated fundamentals [[-843], [-285], [-220]]
  c_33_30_1_False_resize <= c_30(25 downto 0);
  c_33_30_1_False_shift <= shift_left(c_33_30_1_False_resize, 1);
  c_33_25_0_False_resize <= resize(c_25, 26);
  c_33_25_0_False_shift <= shift_left(c_33_25_0_False_resize, 0);
  c_33_23_0_False_resize <= c_23(25 downto 0);
  c_33_23_0_False_shift <= shift_left(c_33_23_0_False_resize, 0);
  with config_select_9 select c_33_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_30_1_False_shift;
        when "01" => c_33 <= c_33_25_0_False_shift;
        when others => c_33 <= c_33_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 34 and associated fundamentals [[5], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[5], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 36 and associated fundamentals [[133], [80], [788]]
  c_36_35_4_False_resize <= resize(c_35, 26);
  c_36_35_4_False_shift <= shift_left(c_36_35_4_False_resize, 4);
  c_36_14_1_False_resize <= resize(c_14, 26);
  c_36_14_1_False_shift <= shift_left(c_36_14_1_False_resize, 1);
  c_36_14_0_False_resize <= resize(c_14, 26);
  c_36_14_0_False_shift <= shift_left(c_36_14_0_False_resize, 0);
  with config_select_7 select c_36_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_35_4_False_shift;
        when "01" => c_36 <= c_36_14_1_False_shift;
        when others => c_36 <= c_36_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 37 and associated fundamentals [[-843], [-285], [-220]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_33 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 38 and associated fundamentals [[843], [285], [220]]
  c_38_resize <= c_37;
  c_38 <= -shift_left(c_38_resize, 0);
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[133], [80], [788]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[133], [80], [788]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 41 and associated fundamentals [[133], [80], [788]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 42 and associated fundamentals [[133], [80], [788]]
  c_42_resize <= c_41;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 10 with id 43 and associated fundamentals [[709], [453], [735]]
  c_43_resize <= c_32;
  c_43 <= shift_left(c_43_resize, 0);
end architecture;

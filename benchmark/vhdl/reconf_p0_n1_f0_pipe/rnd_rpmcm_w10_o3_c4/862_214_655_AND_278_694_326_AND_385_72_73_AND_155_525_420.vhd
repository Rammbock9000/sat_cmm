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
  signal config_select_13: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_4_3_False_resize: signed(19 downto 0);
  signal c_5_4_3_False_shift: signed(19 downto 0);
  signal c_5_4_4_False_resize: signed(19 downto 0);
  signal c_5_4_4_False_shift: signed(19 downto 0);
  signal c_5_4_1_False_resize: signed(19 downto 0);
  signal c_5_4_1_False_shift: signed(19 downto 0);
  signal c_5_3_0_False_resize: signed(19 downto 0);
  signal c_5_3_0_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(25 downto 0);
  signal c_8_7_4_False_resize: signed(25 downto 0);
  signal c_8_7_4_False_shift: signed(25 downto 0);
  signal c_8_7_0_False_resize: signed(25 downto 0);
  signal c_8_7_0_False_shift: signed(25 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_7_1_False_resize: signed(24 downto 0);
  signal c_10_7_1_False_shift: signed(24 downto 0);
  signal c_10_9_0_False_resize: signed(24 downto 0);
  signal c_10_9_0_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(24 downto 0);
  signal c_12_7_0_False_resize: signed(24 downto 0);
  signal c_12_7_0_False_shift: signed(24 downto 0);
  signal c_12_7_3_False_resize: signed(24 downto 0);
  signal c_12_7_3_False_shift: signed(24 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_14_4_False_resize: signed(25 downto 0);
  signal c_17_14_4_False_shift: signed(25 downto 0);
  signal c_17_11_1_False_resize: signed(25 downto 0);
  signal c_17_11_1_False_shift: signed(25 downto 0);
  signal c_17_16_0_False_resize: signed(25 downto 0);
  signal c_17_16_0_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(19 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_20_0_False_resize: signed(23 downto 0);
  signal c_23_20_0_False_shift: signed(23 downto 0);
  signal c_23_22_4_False_resize: signed(23 downto 0);
  signal c_23_22_4_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(21 downto 0);
  signal c_24_9_0_False_resize: signed(21 downto 0);
  signal c_24_9_0_False_shift: signed(21 downto 0);
  signal c_24_7_0_False_resize: signed(21 downto 0);
  signal c_24_7_0_False_shift: signed(21 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_i0_resize: signed(24 downto 0);
  signal c_29_i1_resize: signed(24 downto 0);
  signal c_29_i0_shift: signed(24 downto 0);
  signal c_29_i1_shift: signed(24 downto 0);
  signal c_29_arith: signed(24 downto 0);
  signal c_29_oshift: signed(24 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(25 downto 0);
  signal c_30_29_1_False_resize: signed(25 downto 0);
  signal c_30_29_1_False_shift: signed(25 downto 0);
  signal c_30_29_0_False_resize: signed(25 downto 0);
  signal c_30_29_0_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_20_0_False_resize: signed(25 downto 0);
  signal c_31_20_0_False_shift: signed(25 downto 0);
  signal c_31_22_3_False_resize: signed(25 downto 0);
  signal c_31_22_3_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_resize: signed(25 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
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
      config_select_13 <= config_select_12;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 1 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 2 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_41);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [2], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "0" when "11",
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-3], [5], [9], [5]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
      w_o => 20,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[16], [2], [8], [5]]
  c_5_4_3_False_resize <= resize(c_4, 20);
  c_5_4_3_False_shift <= shift_left(c_5_4_3_False_resize, 3);
  c_5_4_4_False_resize <= resize(c_4, 20);
  c_5_4_4_False_shift <= shift_left(c_5_4_4_False_resize, 4);
  c_5_4_1_False_resize <= resize(c_4, 20);
  c_5_4_1_False_shift <= shift_left(c_5_4_1_False_resize, 1);
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_4_3_False_shift;
        when "01" => c_5 <= c_5_4_4_False_shift;
        when "10" => c_5 <= c_5_4_1_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[-3], [5], [9], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[131], [21], [55], [35]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 8 and associated fundamentals [[131], [336], [55], [560]]
  c_8_7_4_False_resize <= resize(c_7, 26);
  c_8_7_4_False_shift <= shift_left(c_8_7_4_False_resize, 4);
  c_8_7_0_False_resize <= resize(c_7, 26);
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  with config_select_5 select c_8_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_7_4_False_shift;
        when others => c_8 <= c_8_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[-3], [5], [9], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[262], [5], [9], [70]]
  c_10_7_1_False_resize <= resize(c_7, 25);
  c_10_7_1_False_shift <= shift_left(c_10_7_1_False_resize, 1);
  c_10_9_0_False_resize <= resize(c_9, 25);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "0" when "00",
    "0" when "11",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_7_1_False_shift;
        when others => c_10 <= c_10_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 11 and associated fundamentals [[655], [326], [73], [420]]
  with config_select_6 select c_11_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      sub_i => c_11_sub_sel,
      x_i => c_8,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[131], [21], [55], [280]]
  c_12_7_0_False_resize <= resize(c_7, 25);
  c_12_7_0_False_shift <= shift_left(c_12_7_0_False_resize, 0);
  c_12_7_3_False_resize <= resize(c_7, 25);
  c_12_7_3_False_shift <= shift_left(c_12_7_3_False_resize, 3);
  with config_select_5 select c_12_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_7_0_False_shift;
        when others => c_12 <= c_12_7_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[-3], [5], [9], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 14 and associated fundamentals [[-3], [5], [9], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[131], [21], [55], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 16 and associated fundamentals [[131], [21], [55], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 17 and associated fundamentals [[-48], [652], [55], [35]]
  c_17_14_4_False_resize <= resize(c_14, 26);
  c_17_14_4_False_shift <= shift_left(c_17_14_4_False_resize, 4);
  c_17_11_1_False_resize <= c_11;
  c_17_11_1_False_shift <= shift_left(c_17_11_1_False_resize, 1);
  c_17_16_0_False_resize <= resize(c_16, 26);
  c_17_16_0_False_shift <= shift_left(c_17_16_0_False_resize, 0);
  with config_select_7 select c_17_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_14_4_False_shift;
        when "01" => c_17 <= c_17_11_1_False_shift;
        when others => c_17 <= c_17_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[131], [21], [55], [280]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 19 and associated fundamentals [[131], [21], [55], [280]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 20 and associated fundamentals [[214], [694], [165], [525]]
  with config_select_8 select c_20_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_19,
      y_i => c_17,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 21 and associated fundamentals [[-3], [5], [9], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 22 and associated fundamentals [[-3], [5], [9], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 23 and associated fundamentals [[214], [80], [165], [80]]
  c_23_20_0_False_resize <= c_20(23 downto 0);
  c_23_20_0_False_shift <= shift_left(c_23_20_0_False_resize, 0);
  c_23_22_4_False_resize <= resize(c_22, 24);
  c_23_22_4_False_shift <= shift_left(c_23_22_4_False_resize, 4);
  with config_select_9 select c_23_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_20_0_False_shift;
        when others => c_23 <= c_23_22_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 24 and associated fundamentals [[-3], [21], [55], [5]]
  c_24_9_0_False_resize <= resize(c_9, 22);
  c_24_9_0_False_shift <= shift_left(c_24_9_0_False_resize, 0);
  c_24_7_0_False_resize <= c_7(21 downto 0);
  c_24_7_0_False_shift <= shift_left(c_24_7_0_False_resize, 0);
  with config_select_5 select c_24_sel <= 
    "0" when "00",
    "0" when "11",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_9_0_False_shift;
        when others => c_24 <= c_24_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[-3], [21], [55], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[-3], [21], [55], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 27 and associated fundamentals [[-3], [21], [55], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 28 and associated fundamentals [[-3], [21], [55], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 29 and associated fundamentals [[431], [139], [385], [155]]
  with config_select_10 select c_29_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_29_sub_sel,
      x_i => c_23,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 30 and associated fundamentals [[862], [278], [385], [155]]
  c_30_29_1_False_resize <= resize(c_29, 26);
  c_30_29_1_False_shift <= shift_left(c_30_29_1_False_resize, 1);
  c_30_29_0_False_resize <= resize(c_29, 26);
  c_30_29_0_False_shift <= shift_left(c_30_29_0_False_resize, 0);
  with config_select_11 select c_30_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_29_1_False_shift;
        when others => c_30 <= c_30_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 31 and associated fundamentals [[214], [694], [72], [525]]
  c_31_20_0_False_resize <= c_20;
  c_31_20_0_False_shift <= shift_left(c_31_20_0_False_resize, 0);
  c_31_22_3_False_resize <= resize(c_22, 26);
  c_31_22_3_False_shift <= shift_left(c_31_22_3_False_resize, 3);
  with config_select_9 select c_31_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_20_0_False_shift;
        when others => c_31 <= c_31_22_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 32 and associated fundamentals [[862], [278], [385], [155]]
  c_32_resize <= c_30;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'register' in stage 10 with id 33 and associated fundamentals [[214], [694], [72], [525]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 34 and associated fundamentals [[214], [694], [72], [525]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 35 and associated fundamentals [[214], [694], [72], [525]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[655], [326], [73], [420]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 37 and associated fundamentals [[655], [326], [73], [420]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 38 and associated fundamentals [[655], [326], [73], [420]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 39 and associated fundamentals [[655], [326], [73], [420]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 40 and associated fundamentals [[655], [326], [73], [420]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 41 and associated fundamentals [[655], [326], [73], [420]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
end architecture;

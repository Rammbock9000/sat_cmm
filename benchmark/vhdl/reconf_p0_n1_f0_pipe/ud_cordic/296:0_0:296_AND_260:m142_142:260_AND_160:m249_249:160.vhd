library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
    y_1: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_1_4_False_resize: signed(19 downto 0);
  signal c_2_1_4_False_shift: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_1_0_False_resize: signed(21 downto 0);
  signal c_3_1_0_False_shift: signed(21 downto 0);
  signal c_3_0_6_False_resize: signed(21 downto 0);
  signal c_3_0_6_False_shift: signed(21 downto 0);
  signal c_3_0_2_False_resize: signed(21 downto 0);
  signal c_3_0_2_False_shift: signed(21 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(24 downto 0);
  signal c_4_i0_resize: signed(24 downto 0);
  signal c_4_i1_resize: signed(24 downto 0);
  signal c_4_i0_shift: signed(24 downto 0);
  signal c_4_i1_shift: signed(24 downto 0);
  signal c_4_arith: signed(24 downto 0);
  signal c_4_oshift: signed(24 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(19 downto 0);
  signal c_5_1_4_False_resize: signed(19 downto 0);
  signal c_5_1_4_False_shift: signed(19 downto 0);
  signal c_5_1_0_False_resize: signed(19 downto 0);
  signal c_5_1_0_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_8_0_0_False_resize: signed(19 downto 0);
  signal c_8_0_0_False_shift: signed(19 downto 0);
  signal c_8_0_1_False_resize: signed(19 downto 0);
  signal c_8_0_1_False_shift: signed(19 downto 0);
  signal c_8_1_4_False_resize: signed(19 downto 0);
  signal c_8_1_4_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(17 downto 0);
  signal c_9_1_0_False_resize: signed(17 downto 0);
  signal c_9_1_0_False_shift: signed(17 downto 0);
  signal c_9_0_2_False_resize: signed(17 downto 0);
  signal c_9_0_2_False_shift: signed(17 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_12_6_False_resize: signed(21 downto 0);
  signal c_13_12_6_False_shift: signed(21 downto 0);
  signal c_13_10_0_False_resize: signed(21 downto 0);
  signal c_13_10_0_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_12_1_False_resize: signed(22 downto 0);
  signal c_16_12_1_False_shift: signed(22 downto 0);
  signal c_16_10_1_False_resize: signed(22 downto 0);
  signal c_16_10_1_False_shift: signed(22 downto 0);
  signal c_16_15_0_False_resize: signed(22 downto 0);
  signal c_16_15_0_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(22 downto 0);
  signal c_18_15_3_False_resize: signed(22 downto 0);
  signal c_18_15_3_False_shift: signed(22 downto 0);
  signal c_18_10_0_False_resize: signed(22 downto 0);
  signal c_18_10_0_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(16 downto 0);
  signal c_19_1_0_False_resize: signed(16 downto 0);
  signal c_19_1_0_False_shift: signed(16 downto 0);
  signal c_19_1_1_False_resize: signed(16 downto 0);
  signal c_19_1_1_False_shift: signed(16 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(16 downto 0);
  signal c_21: signed(16 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_23: signed(15 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_22_2_False_resize: signed(25 downto 0);
  signal c_25_22_2_False_shift: signed(25 downto 0);
  signal c_25_24_0_False_resize: signed(25 downto 0);
  signal c_25_24_0_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_22_2_False_resize: signed(25 downto 0);
  signal c_27_22_2_False_shift: signed(25 downto 0);
  signal c_27_26_0_False_resize: signed(25 downto 0);
  signal c_27_26_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_i0_resize: signed(23 downto 0);
  signal c_28_i1_resize: signed(23 downto 0);
  signal c_28_i0_shift: signed(23 downto 0);
  signal c_28_i1_shift: signed(23 downto 0);
  signal c_28_arith: signed(23 downto 0);
  signal c_28_oshift: signed(23 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(22 downto 0);
  signal c_29_22_3_False_resize: signed(22 downto 0);
  signal c_29_22_3_False_shift: signed(22 downto 0);
  signal c_29_17_0_False_resize: signed(22 downto 0);
  signal c_29_17_0_False_shift: signed(22 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_22_0_False_resize: signed(23 downto 0);
  signal c_30_22_0_False_shift: signed(23 downto 0);
  signal c_30_24_3_False_resize: signed(23 downto 0);
  signal c_30_24_3_False_shift: signed(23 downto 0);
  signal c_30_17_0_False_resize: signed(23 downto 0);
  signal c_30_17_0_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_i0_resize: signed(24 downto 0);
  signal c_31_i1_resize: signed(24 downto 0);
  signal c_31_i0_shift: signed(24 downto 0);
  signal c_31_i1_shift: signed(24 downto 0);
  signal c_31_arith: signed(24 downto 0);
  signal c_31_oshift: signed(24 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_7_2_False_resize: signed(23 downto 0);
  signal c_33_7_2_False_shift: signed(23 downto 0);
  signal c_33_32_0_False_resize: signed(23 downto 0);
  signal c_33_32_0_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_i0_resize: signed(24 downto 0);
  signal c_36_i1_resize: signed(24 downto 0);
  signal c_36_i0_shift: signed(24 downto 0);
  signal c_36_i1_shift: signed(24 downto 0);
  signal c_36_arith: signed(24 downto 0);
  signal c_36_oshift: signed(24 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(24 downto 0);
  signal c_37_resize: signed(24 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_39_resize: signed(24 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1);
    end if;
  end process;
  -- output node 0 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 1 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_39);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1, 0], [0, 16], [1, 0]]
  c_2_1_4_False_resize <= resize(c_1, 20);
  c_2_1_4_False_shift <= shift_left(c_2_1_4_False_resize, 4);
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_1_4_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[0, 1], [64, 0], [4, 0]]
  c_3_1_0_False_resize <= resize(c_1, 22);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_0_6_False_resize <= resize(c_0, 22);
  c_3_0_6_False_shift <= shift_left(c_3_0_6_False_resize, 6);
  c_3_0_2_False_resize <= resize(c_0, 22);
  c_3_0_2_False_shift <= shift_left(c_3_0_2_False_resize, 2);
  with config_select_1 select c_3_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_1_0_False_shift;
        when "01" => c_3 <= c_3_0_6_False_shift;
        when others => c_3 <= c_3_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[4, 4], [-256, 64], [-12, 0]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 2,
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
      c_4 <= c_4_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[0, 16], [0, 1], [0, 16]]
  c_5_1_4_False_resize <= resize(c_1, 20);
  c_5_1_4_False_shift <= shift_left(c_5_1_4_False_resize, 4);
  c_5_1_0_False_resize <= resize(c_1, 20);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_4_False_shift;
        when others => c_5 <= c_5_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[0, 16], [0, 1], [0, 16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[8, 40], [-512, 126], [-24, 32]]
  with config_select_3 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
      w_o => 26,
      s_x_i => 1,
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
      x_i => c_4,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[0, 16], [2, 0], [1, 0]]
  c_8_0_0_False_resize <= resize(c_0, 20);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_1_False_resize <= resize(c_0, 20);
  c_8_0_1_False_shift <= shift_left(c_8_0_1_False_resize, 1);
  c_8_1_4_False_resize <= resize(c_1, 20);
  c_8_1_4_False_shift <= shift_left(c_8_1_4_False_resize, 4);
  with config_select_1 select c_8_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_0_False_shift;
        when "01" => c_8 <= c_8_0_1_False_shift;
        when others => c_8 <= c_8_1_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[4, 0], [4, 0], [0, 1]]
  c_9_1_0_False_resize <= resize(c_1, 18);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  c_9_0_2_False_resize <= resize(c_0, 18);
  c_9_0_2_False_shift <= shift_left(c_9_0_2_False_resize, 2);
  with config_select_1 select c_9_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_1_0_False_shift;
        when others => c_9 <= c_9_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 10 and associated fundamentals [[-128, 16], [-126, 0], [1, -32]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 11 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[0, 64], [0, 64], [1, -32]]
  c_13_12_6_False_resize <= resize(c_12, 22);
  c_13_12_6_False_shift <= shift_left(c_13_12_6_False_resize, 6);
  c_13_10_0_False_resize <= c_10(21 downto 0);
  c_13_10_0_False_shift <= shift_left(c_13_10_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_12_6_False_shift;
        when others => c_13 <= c_13_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 14 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 15 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[0, 2], [1, 0], [2, -64]]
  c_16_12_1_False_resize <= resize(c_12, 23);
  c_16_12_1_False_shift <= shift_left(c_16_12_1_False_resize, 1);
  c_16_10_1_False_resize <= c_10(22 downto 0);
  c_16_10_1_False_shift <= shift_left(c_16_10_1_False_resize, 1);
  c_16_15_0_False_resize <= resize(c_15, 23);
  c_16_15_0_False_shift <= shift_left(c_16_15_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_12_1_False_shift;
        when "01" => c_16 <= c_16_10_1_False_shift;
        when others => c_16 <= c_16_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[0, 72], [4, 64], [-7, 224]]
  with config_select_4 select c_17_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 24,
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
      sub_i => c_17_sub_sel,
      x_i => c_13,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[8, 0], [-126, 0], [8, 0]]
  c_18_15_3_False_resize <= resize(c_15, 23);
  c_18_15_3_False_shift <= shift_left(c_18_15_3_False_resize, 3);
  c_18_10_0_False_resize <= c_10(22 downto 0);
  c_18_10_0_False_shift <= shift_left(c_18_10_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_15_3_False_shift;
        when others => c_18 <= c_18_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 19 and associated fundamentals [[0, 1], [0, 2], [0, 1]]
  c_19_1_0_False_resize <= resize(c_1, 17);
  c_19_1_0_False_shift <= shift_left(c_19_1_0_False_resize, 0);
  c_19_1_1_False_resize <= resize(c_1, 17);
  c_19_1_1_False_shift <= shift_left(c_19_1_1_False_resize, 1);
  with config_select_1 select c_19_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_1_0_False_shift;
        when others => c_19 <= c_19_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 20 and associated fundamentals [[0, 1], [0, 2], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 21 and associated fundamentals [[0, 1], [0, 2], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 22 and associated fundamentals [[8, -2], [-126, -4], [8, -2]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 17,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_18,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 23 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 25 and associated fundamentals [[32, -8], [-504, -16], [0, 1]]
  c_25_22_2_False_resize <= resize(c_22, 26);
  c_25_22_2_False_shift <= shift_left(c_25_22_2_False_resize, 2);
  c_25_24_0_False_resize <= resize(c_24, 26);
  c_25_24_0_False_shift <= shift_left(c_25_24_0_False_resize, 0);
  with config_select_5 select c_25_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_22_2_False_shift;
        when others => c_25 <= c_25_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[8, 40], [-512, 126], [-24, 32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 27 and associated fundamentals [[8, 40], [-512, 126], [32, -8]]
  c_27_22_2_False_resize <= resize(c_22, 26);
  c_27_22_2_False_shift <= shift_left(c_27_22_2_False_resize, 2);
  c_27_26_0_False_resize <= c_26;
  c_27_26_0_False_shift <= shift_left(c_27_26_0_False_resize, 0);
  with config_select_5 select c_27_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_22_2_False_shift;
        when others => c_27 <= c_27_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 28 and associated fundamentals [[40, 32], [8, -142], [32, -7]]
  with config_select_6 select c_28_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
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
      x_i => c_25,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 29 and associated fundamentals [[0, 72], [4, 64], [64, -16]]
  c_29_22_3_False_resize <= c_22(22 downto 0);
  c_29_22_3_False_shift <= shift_left(c_29_22_3_False_resize, 3);
  c_29_17_0_False_resize <= c_17(22 downto 0);
  c_29_17_0_False_shift <= shift_left(c_29_17_0_False_resize, 0);
  with config_select_5 select c_29_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_22_3_False_shift;
        when others => c_29 <= c_29_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 30 and associated fundamentals [[0, 8], [-126, -4], [-7, 224]]
  c_30_22_0_False_resize <= c_22;
  c_30_22_0_False_shift <= shift_left(c_30_22_0_False_resize, 0);
  c_30_24_3_False_resize <= resize(c_24, 24);
  c_30_24_3_False_shift <= shift_left(c_30_24_3_False_resize, 3);
  c_30_17_0_False_resize <= c_17;
  c_30_17_0_False_shift <= shift_left(c_30_17_0_False_resize, 0);
  with config_select_5 select c_30_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_22_0_False_shift;
        when "01" => c_30 <= c_30_24_3_False_shift;
        when others => c_30 <= c_30_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 31 and associated fundamentals [[0, 296], [142, 260], [249, 160]]
  with config_select_6 select c_31_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      sub_i => c_31_sub_sel,
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 32 and associated fundamentals [[-128, 16], [-126, 0], [1, -32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 33 and associated fundamentals [[-128, 16], [-126, 0], [-96, 128]]
  c_33_7_2_False_resize <= c_7(23 downto 0);
  c_33_7_2_False_shift <= shift_left(c_33_7_2_False_resize, 2);
  c_33_32_0_False_resize <= c_32;
  c_33_32_0_False_shift <= shift_left(c_33_32_0_False_resize, 0);
  with config_select_4 select c_33_sel <= 
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_7_2_False_shift;
        when others => c_33 <= c_33_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 34 and associated fundamentals [[-128, 16], [-126, 0], [-96, 128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[-128, 16], [-126, 0], [-96, 128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 36 and associated fundamentals [[-296, 0], [-260, 142], [-160, 249]]
  with config_select_7 select c_36_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_36_sub_sel,
      x_i => c_35,
      y_i => c_28,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 37 and associated fundamentals [[296, 0], [260, -142], [160, -249]]
  c_37_resize <= c_36;
  c_37 <= -shift_left(c_37_resize, 0);
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[0, 296], [142, 260], [249, 160]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_31 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 39 and associated fundamentals [[0, 296], [142, 260], [249, 160]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
end architecture;

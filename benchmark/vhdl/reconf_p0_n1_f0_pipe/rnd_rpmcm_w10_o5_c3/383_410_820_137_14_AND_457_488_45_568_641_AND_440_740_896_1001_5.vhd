library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
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
  signal config_select_7: std_logic_vector(1 downto 0);
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
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
  signal c_5: signed(18 downto 0);
  signal c_5_3_0_False_resize: signed(18 downto 0);
  signal c_5_3_0_False_shift: signed(18 downto 0);
  signal c_5_4_3_False_resize: signed(18 downto 0);
  signal c_5_4_3_False_shift: signed(18 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(20 downto 0);
  signal c_8_4_0_False_resize: signed(20 downto 0);
  signal c_8_4_0_False_shift: signed(20 downto 0);
  signal c_8_3_1_False_resize: signed(20 downto 0);
  signal c_8_3_1_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_4_0_False_resize: signed(23 downto 0);
  signal c_9_4_0_False_shift: signed(23 downto 0);
  signal c_9_3_5_False_resize: signed(23 downto 0);
  signal c_9_3_5_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(16 downto 0);
  signal c_11_0_1_False_resize: signed(16 downto 0);
  signal c_11_0_1_False_shift: signed(16 downto 0);
  signal c_11_0_0_False_resize: signed(16 downto 0);
  signal c_11_0_0_False_shift: signed(16 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(15 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_16_0_False_resize: signed(25 downto 0);
  signal c_17_16_0_False_shift: signed(25 downto 0);
  signal c_17_7_4_False_resize: signed(25 downto 0);
  signal c_17_7_4_False_shift: signed(25 downto 0);
  signal c_17_14_7_False_resize: signed(25 downto 0);
  signal c_17_14_7_False_shift: signed(25 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(19 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_20_0_False_resize: signed(23 downto 0);
  signal c_22_20_0_False_shift: signed(23 downto 0);
  signal c_22_21_3_False_resize: signed(23 downto 0);
  signal c_22_21_3_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_i0_resize: signed(24 downto 0);
  signal c_26_i1_resize: signed(24 downto 0);
  signal c_26_i0_shift: signed(24 downto 0);
  signal c_26_i1_shift: signed(24 downto 0);
  signal c_26_arith: signed(24 downto 0);
  signal c_26_oshift: signed(24 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_28_0_False_resize: signed(23 downto 0);
  signal c_29_28_0_False_shift: signed(23 downto 0);
  signal c_29_20_1_False_resize: signed(23 downto 0);
  signal c_29_20_1_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_i0_resize: signed(24 downto 0);
  signal c_30_i1_resize: signed(24 downto 0);
  signal c_30_i0_shift: signed(24 downto 0);
  signal c_30_i1_shift: signed(24 downto 0);
  signal c_30_arith: signed(24 downto 0);
  signal c_30_oshift: signed(24 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_30_0_False_resize: signed(25 downto 0);
  signal c_31_30_0_False_shift: signed(25 downto 0);
  signal c_31_30_1_False_resize: signed(25 downto 0);
  signal c_31_30_1_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(19 downto 0);
  signal c_34: signed(21 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_30_1_False_resize: signed(25 downto 0);
  signal c_36_30_1_False_shift: signed(25 downto 0);
  signal c_36_33_7_False_resize: signed(25 downto 0);
  signal c_36_33_7_False_shift: signed(25 downto 0);
  signal c_36_35_0_False_resize: signed(25 downto 0);
  signal c_36_35_0_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_20_0_False_resize: signed(25 downto 0);
  signal c_37_20_0_False_shift: signed(25 downto 0);
  signal c_37_20_3_False_resize: signed(25 downto 0);
  signal c_37_20_3_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_39_resize: signed(24 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_resize: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_resize: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
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
  -- output node 0 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 1 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 2 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 3 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 4 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_50);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "1" when "00",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[9], [5], [7]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 20,
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
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[8], [5], [7]]
  c_5_3_0_False_resize <= c_3(18 downto 0);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_4_3_False_resize <= resize(c_4, 19);
  c_5_4_3_False_shift <= shift_left(c_5_4_3_False_resize, 3);
  with config_select_3 select c_5_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_3_0_False_shift;
        when others => c_5 <= c_5_4_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[9], [5], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[55], [45], [63]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[18], [1], [1]]
  c_8_4_0_False_resize <= resize(c_4, 21);
  c_8_4_0_False_shift <= shift_left(c_8_4_0_False_resize, 0);
  c_8_3_1_False_resize <= resize(c_3, 21);
  c_8_3_1_False_shift <= shift_left(c_8_3_1_False_resize, 1);
  with config_select_3 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_4_0_False_shift;
        when others => c_8 <= c_8_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[1], [160], [1]]
  c_9_4_0_False_resize <= resize(c_4, 24);
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  c_9_3_5_False_resize <= resize(c_3, 24);
  c_9_3_5_False_shift <= shift_left(c_9_3_5_False_resize, 5);
  with config_select_3 select c_9_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_4_0_False_shift;
        when others => c_9 <= c_9_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[14], [641], [5]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 21,
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
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[1], [2], [2]]
  c_11_0_1_False_resize <= resize(c_0, 17);
  c_11_0_1_False_shift <= shift_left(c_11_0_1_False_resize, 1);
  c_11_0_0_False_resize <= resize(c_0, 17);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  with config_select_1 select c_11_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_0_1_False_shift;
        when others => c_11 <= c_11_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 12 and associated fundamentals [[65], [66], [62]]
  with config_select_2 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
      w_o => 23,
      s_x_i => 6,
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
      x_i => c_2,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[65], [66], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[65], [66], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[128], [66], [1008]]
  c_17_16_0_False_resize <= resize(c_16, 26);
  c_17_16_0_False_shift <= shift_left(c_17_16_0_False_resize, 0);
  c_17_7_4_False_resize <= resize(c_7, 26);
  c_17_7_4_False_shift <= shift_left(c_17_7_4_False_resize, 4);
  c_17_14_7_False_resize <= resize(c_14, 26);
  c_17_14_7_False_shift <= shift_left(c_17_14_7_False_resize, 7);
  with config_select_5 select c_17_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_16_0_False_shift;
        when "01" => c_17 <= c_17_7_4_False_shift;
        when others => c_17 <= c_17_14_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[9], [5], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[9], [5], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 20 and associated fundamentals [[137], [71], [1001]]
  with config_select_6 select c_20_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
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
      sub_i => c_20_sub_sel,
      x_i => c_17,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[9], [5], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 22 and associated fundamentals [[137], [71], [56]]
  c_22_20_0_False_resize <= c_20(23 downto 0);
  c_22_20_0_False_shift <= shift_left(c_22_20_0_False_resize, 0);
  c_22_21_3_False_resize <= resize(c_21, 24);
  c_22_21_3_False_shift <= shift_left(c_22_21_3_False_resize, 3);
  with config_select_7 select c_22_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_20_0_False_shift;
        when others => c_22 <= c_22_21_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[65], [66], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[65], [66], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 25 and associated fundamentals [[65], [66], [62]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 26 and associated fundamentals [[383], [457], [440]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 25,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_25,
      y_i => c_22,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[55], [45], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[55], [45], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[55], [142], [63]]
  c_29_28_0_False_resize <= resize(c_28, 24);
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  c_29_20_1_False_resize <= c_20(23 downto 0);
  c_29_20_1_False_shift <= shift_left(c_29_20_1_False_resize, 1);
  with config_select_7 select c_29_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_28_0_False_shift;
        when others => c_29 <= c_29_20_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 30 and associated fundamentals [[410], [244], [370]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 25,
      s_x_i => 3,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_25,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 31 and associated fundamentals [[410], [488], [740]]
  c_31_30_0_False_resize <= resize(c_30, 26);
  c_31_30_0_False_shift <= shift_left(c_31_30_0_False_resize, 0);
  c_31_30_1_False_resize <= resize(c_30, 26);
  c_31_30_1_False_shift <= shift_left(c_31_30_1_False_resize, 1);
  with config_select_9 select c_31_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_30_0_False_shift;
        when others => c_31 <= c_31_30_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[9], [5], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[9], [5], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[55], [45], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[55], [45], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 36 and associated fundamentals [[820], [45], [896]]
  c_36_30_1_False_resize <= resize(c_30, 26);
  c_36_30_1_False_shift <= shift_left(c_36_30_1_False_resize, 1);
  c_36_33_7_False_resize <= resize(c_33, 26);
  c_36_33_7_False_shift <= shift_left(c_36_33_7_False_resize, 7);
  c_36_35_0_False_resize <= resize(c_35, 26);
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  with config_select_9 select c_36_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_30_1_False_shift;
        when "01" => c_36 <= c_36_33_7_False_shift;
        when others => c_36 <= c_36_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 37 and associated fundamentals [[137], [568], [1001]]
  c_37_20_0_False_resize <= c_20;
  c_37_20_0_False_shift <= shift_left(c_37_20_0_False_resize, 0);
  c_37_20_3_False_resize <= c_20;
  c_37_20_3_False_shift <= shift_left(c_37_20_3_False_resize, 3);
  with config_select_7 select c_37_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_20_0_False_shift;
        when others => c_37 <= c_37_20_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 38 and associated fundamentals [[383], [457], [440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_26 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 39 and associated fundamentals [[383], [457], [440]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 9 with id 40 and associated fundamentals [[410], [488], [740]]
  c_40_resize <= c_31;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 9 with id 41 and associated fundamentals [[820], [45], [896]]
  c_41_resize <= c_36;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[137], [568], [1001]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[137], [568], [1001]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 44 and associated fundamentals [[137], [568], [1001]]
  c_44_resize <= c_43;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'register' in stage 5 with id 45 and associated fundamentals [[14], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 46 and associated fundamentals [[14], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[14], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[14], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[14], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 50 and associated fundamentals [[14], [641], [5]]
  c_50_resize <= c_49;
  c_50 <= shift_left(c_50_resize, 0);
end architecture;

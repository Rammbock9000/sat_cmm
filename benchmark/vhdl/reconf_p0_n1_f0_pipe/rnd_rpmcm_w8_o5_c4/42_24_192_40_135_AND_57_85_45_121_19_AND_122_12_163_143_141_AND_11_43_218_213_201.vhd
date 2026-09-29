library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(22 downto 0);
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
  signal config_select_7: std_logic_vector(1 downto 0);
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_1_False_resize: signed(17 downto 0);
  signal c_1_0_1_False_shift: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_3_1_False_resize: signed(19 downto 0);
  signal c_4_3_1_False_shift: signed(19 downto 0);
  signal c_4_3_0_False_resize: signed(19 downto 0);
  signal c_4_3_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(17 downto 0);
  signal c_8_0_0_False_resize: signed(17 downto 0);
  signal c_8_0_0_False_shift: signed(17 downto 0);
  signal c_8_0_2_False_resize: signed(17 downto 0);
  signal c_8_0_2_False_shift: signed(17 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(17 downto 0);
  signal c_9_0_0_False_resize: signed(17 downto 0);
  signal c_9_0_0_False_shift: signed(17 downto 0);
  signal c_9_0_2_False_resize: signed(17 downto 0);
  signal c_9_0_2_False_shift: signed(17 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_10_i0_resize: signed(20 downto 0);
  signal c_10_i1_resize: signed(20 downto 0);
  signal c_10_i0_shift: signed(20 downto 0);
  signal c_10_i1_shift: signed(20 downto 0);
  signal c_10_arith: signed(20 downto 0);
  signal c_10_oshift: signed(20 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_5_3_False_resize: signed(20 downto 0);
  signal c_11_5_3_False_shift: signed(20 downto 0);
  signal c_11_3_2_False_resize: signed(20 downto 0);
  signal c_11_3_2_False_shift: signed(20 downto 0);
  signal c_11_10_0_False_resize: signed(20 downto 0);
  signal c_11_10_0_False_shift: signed(20 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(16 downto 0);
  signal c_14_0_0_False_resize: signed(16 downto 0);
  signal c_14_0_0_False_shift: signed(16 downto 0);
  signal c_14_0_1_False_resize: signed(16 downto 0);
  signal c_14_0_1_False_shift: signed(16 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_16_0_False_resize: signed(21 downto 0);
  signal c_17_16_0_False_shift: signed(21 downto 0);
  signal c_17_13_0_False_resize: signed(21 downto 0);
  signal c_17_13_0_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(16 downto 0);
  signal c_19: signed(16 downto 0);
  signal c_20: signed(16 downto 0);
  signal c_21: signed(16 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(19 downto 0);
  signal c_24: signed(19 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_24_2_False_resize: signed(23 downto 0);
  signal c_25_24_2_False_shift: signed(23 downto 0);
  signal c_25_22_0_False_resize: signed(23 downto 0);
  signal c_25_22_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(20 downto 0);
  signal c_27: signed(20 downto 0);
  signal c_28: signed(20 downto 0);
  signal c_29: signed(20 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(23 downto 0);
  signal c_31_22_0_False_resize: signed(23 downto 0);
  signal c_31_22_0_False_shift: signed(23 downto 0);
  signal c_31_28_0_False_resize: signed(23 downto 0);
  signal c_31_28_0_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(18 downto 0);
  signal c_32_3_1_False_resize: signed(18 downto 0);
  signal c_32_3_1_False_shift: signed(18 downto 0);
  signal c_32_5_0_False_resize: signed(18 downto 0);
  signal c_32_5_0_False_shift: signed(18 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(18 downto 0);
  signal c_34: signed(18 downto 0);
  signal c_35: signed(18 downto 0);
  signal c_36: signed(18 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_i0_resize: signed(23 downto 0);
  signal c_37_i1_resize: signed(23 downto 0);
  signal c_37_i0_shift: signed(23 downto 0);
  signal c_37_i1_shift: signed(23 downto 0);
  signal c_37_arith: signed(23 downto 0);
  signal c_37_oshift: signed(23 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(22 downto 0);
  signal c_38_7_1_False_resize: signed(22 downto 0);
  signal c_38_7_1_False_shift: signed(22 downto 0);
  signal c_38_7_0_False_resize: signed(22 downto 0);
  signal c_38_7_0_False_shift: signed(22 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_30_0_False_resize: signed(23 downto 0);
  signal c_39_30_0_False_shift: signed(23 downto 0);
  signal c_39_30_4_False_resize: signed(23 downto 0);
  signal c_39_30_4_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_22_0_False_resize: signed(23 downto 0);
  signal c_40_22_0_False_shift: signed(23 downto 0);
  signal c_40_24_3_False_resize: signed(23 downto 0);
  signal c_40_24_3_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_45_resize: signed(22 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_51_resize: signed(22 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_resize: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_55_resize: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_resize: signed(23 downto 0);
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
  -- output node 0 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 1 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 2 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 3 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 4 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_57);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [4], [1]]
  c_1_0_1_False_resize <= resize(c_0, 18);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_1_False_shift;
        when "01" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_2_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[5], [7], [15], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
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
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[5], [14], [15], [3]]
  c_4_3_1_False_resize <= c_3;
  c_4_3_1_False_shift <= shift_left(c_4_3_1_False_resize, 1);
  c_4_3_0_False_resize <= c_3;
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "01",
    "1" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_3_1_False_shift;
        when others => c_4 <= c_4_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[21], [57], [61], [11]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
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
      sub_i => c_7_sub_sel,
      x_i => c_4,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[1], [4], [4], [1]]
  c_8_0_0_False_resize <= resize(c_0, 18);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_2_False_resize <= resize(c_0, 18);
  c_8_0_2_False_shift <= shift_left(c_8_0_2_False_resize, 2);
  with config_select_1 select c_8_sel <= 
    "0" when "11",
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_0_0_False_shift;
        when others => c_8 <= c_8_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[4], [1], [4], [1]]
  c_9_0_0_False_resize <= resize(c_0, 18);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_2_False_resize <= resize(c_0, 18);
  c_9_0_2_False_shift <= shift_left(c_9_0_2_False_resize, 2);
  with config_select_1 select c_9_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_0_0_False_shift;
        when others => c_9 <= c_9_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 10 and associated fundamentals [[8], [17], [20], [5]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 21,
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
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[8], [17], [8], [12]]
  c_11_5_3_False_resize <= resize(c_5, 21);
  c_11_5_3_False_shift <= shift_left(c_11_5_3_False_resize, 3);
  c_11_3_2_False_resize <= resize(c_3, 21);
  c_11_3_2_False_shift <= shift_left(c_11_3_2_False_resize, 2);
  c_11_10_0_False_resize <= c_10;
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_5_3_False_shift;
        when "01" => c_11 <= c_11_3_2_False_shift;
        when others => c_11 <= c_11_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[8], [17], [20], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[24], [85], [12], [43]]
  with config_select_4 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 23,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[1], [1], [1], [2]]
  c_14_0_0_False_resize <= resize(c_0, 17);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_1_False_resize <= resize(c_0, 17);
  c_14_0_1_False_shift <= shift_left(c_14_0_1_False_resize, 1);
  with config_select_1 select c_14_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_0_0_False_shift;
        when others => c_14 <= c_14_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[5], [7], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[5], [7], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[5], [7], [15], [43]]
  c_17_16_0_False_resize <= resize(c_16, 22);
  c_17_16_0_False_shift <= shift_left(c_17_16_0_False_resize, 0);
  c_17_13_0_False_resize <= c_13(21 downto 0);
  c_17_13_0_False_shift <= shift_left(c_17_13_0_False_resize, 0);
  with config_select_5 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_16_0_False_shift;
        when others => c_17 <= c_17_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 18 and associated fundamentals [[1], [1], [1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[1], [1], [1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[1], [1], [1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[1], [1], [1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 22 and associated fundamentals [[133], [121], [143], [213]]
  with config_select_6 select c_22_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 7,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_22_sub_sel,
      x_i => c_21,
      y_i => c_17,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[5], [7], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[5], [7], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[20], [28], [143], [213]]
  c_25_24_2_False_resize <= resize(c_24, 24);
  c_25_24_2_False_shift <= shift_left(c_25_24_2_False_resize, 2);
  c_25_22_0_False_resize <= c_22;
  c_25_22_0_False_shift <= shift_left(c_25_22_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_24_2_False_shift;
        when others => c_25 <= c_25_22_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[8], [17], [20], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[8], [17], [20], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[8], [17], [20], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[8], [17], [20], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 30 and associated fundamentals [[12], [45], [163], [218]]
  with config_select_8 select c_30_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_30_sub_sel,
      x_i => c_25,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 31 and associated fundamentals [[133], [17], [143], [213]]
  c_31_22_0_False_resize <= c_22;
  c_31_22_0_False_shift <= shift_left(c_31_22_0_False_resize, 0);
  c_31_28_0_False_resize <= resize(c_28, 24);
  c_31_28_0_False_shift <= shift_left(c_31_28_0_False_resize, 0);
  with config_select_7 select c_31_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_22_0_False_shift;
        when others => c_31 <= c_31_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 32 and associated fundamentals [[1], [1], [1], [6]]
  c_32_3_1_False_resize <= c_3(18 downto 0);
  c_32_3_1_False_shift <= shift_left(c_32_3_1_False_resize, 1);
  c_32_5_0_False_resize <= resize(c_5, 19);
  c_32_5_0_False_shift <= shift_left(c_32_5_0_False_resize, 0);
  with config_select_3 select c_32_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_3_1_False_shift;
        when others => c_32 <= c_32_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 33 and associated fundamentals [[1], [1], [1], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 34 and associated fundamentals [[1], [1], [1], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[1], [1], [1], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[1], [1], [1], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 37 and associated fundamentals [[135], [19], [141], [201]]
  with config_select_8 select c_37_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 19,
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
      sub_i => c_37_sub_sel,
      x_i => c_31,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 38 and associated fundamentals [[42], [57], [122], [11]]
  c_38_7_1_False_resize <= resize(c_7, 23);
  c_38_7_1_False_shift <= shift_left(c_38_7_1_False_resize, 1);
  c_38_7_0_False_resize <= resize(c_7, 23);
  c_38_7_0_False_shift <= shift_left(c_38_7_0_False_resize, 0);
  with config_select_5 select c_38_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_7_1_False_shift;
        when others => c_38 <= c_38_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 39 and associated fundamentals [[192], [45], [163], [218]]
  c_39_30_0_False_resize <= c_30;
  c_39_30_0_False_shift <= shift_left(c_39_30_0_False_resize, 0);
  c_39_30_4_False_resize <= c_30;
  c_39_30_4_False_shift <= shift_left(c_39_30_4_False_resize, 4);
  with config_select_9 select c_39_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_30_0_False_shift;
        when others => c_39 <= c_39_30_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 40 and associated fundamentals [[40], [121], [143], [213]]
  c_40_22_0_False_resize <= c_22;
  c_40_22_0_False_shift <= shift_left(c_40_22_0_False_resize, 0);
  c_40_24_3_False_resize <= resize(c_24, 24);
  c_40_24_3_False_shift <= shift_left(c_40_24_3_False_resize, 3);
  with config_select_7 select c_40_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_22_0_False_shift;
        when others => c_40 <= c_40_24_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 41 and associated fundamentals [[42], [57], [122], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[42], [57], [122], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[42], [57], [122], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[42], [57], [122], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 45 and associated fundamentals [[42], [57], [122], [11]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'register' in stage 5 with id 46 and associated fundamentals [[24], [85], [12], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 47 and associated fundamentals [[24], [85], [12], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 48 and associated fundamentals [[24], [85], [12], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[24], [85], [12], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[24], [85], [12], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 51 and associated fundamentals [[24], [85], [12], [43]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'output' in stage 9 with id 52 and associated fundamentals [[192], [45], [163], [218]]
  c_52_resize <= c_39;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'register' in stage 8 with id 53 and associated fundamentals [[40], [121], [143], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[40], [121], [143], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 55 and associated fundamentals [[40], [121], [143], [213]]
  c_55_resize <= c_54;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[135], [19], [141], [201]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_37 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 57 and associated fundamentals [[135], [19], [141], [201]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
end architecture;

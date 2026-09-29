library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(29 downto 0);
    y_1: out std_logic_vector(29 downto 0);
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
  signal c_1: signed(15 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_0_5_False_resize: signed(20 downto 0);
  signal c_2_0_5_False_shift: signed(20 downto 0);
  signal c_2_1_0_False_resize: signed(20 downto 0);
  signal c_2_1_0_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(28 downto 0);
  signal c_6_5_13_False_resize: signed(28 downto 0);
  signal c_6_5_13_False_shift: signed(28 downto 0);
  signal c_6_4_0_False_resize: signed(28 downto 0);
  signal c_6_4_0_False_shift: signed(28 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_4_0_False_resize: signed(21 downto 0);
  signal c_7_4_0_False_shift: signed(21 downto 0);
  signal c_7_5_4_False_resize: signed(21 downto 0);
  signal c_7_5_4_False_shift: signed(21 downto 0);
  signal c_7_4_5_False_resize: signed(21 downto 0);
  signal c_7_4_5_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(28 downto 0);
  signal c_8_i0_resize: signed(28 downto 0);
  signal c_8_i1_resize: signed(28 downto 0);
  signal c_8_i0_shift: signed(28 downto 0);
  signal c_8_i1_shift: signed(28 downto 0);
  signal c_8_arith: signed(28 downto 0);
  signal c_8_oshift: signed(28 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(16 downto 0);
  signal c_9_1_1_False_resize: signed(16 downto 0);
  signal c_9_1_1_False_shift: signed(16 downto 0);
  signal c_9_0_0_False_resize: signed(16 downto 0);
  signal c_9_0_0_False_shift: signed(16 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(17 downto 0);
  signal c_10_0_0_False_resize: signed(17 downto 0);
  signal c_10_0_0_False_shift: signed(17 downto 0);
  signal c_10_1_2_False_resize: signed(17 downto 0);
  signal c_10_1_2_False_shift: signed(17 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_i0_resize: signed(21 downto 0);
  signal c_11_i1_resize: signed(21 downto 0);
  signal c_11_i0_shift: signed(21 downto 0);
  signal c_11_i1_shift: signed(21 downto 0);
  signal c_11_arith: signed(21 downto 0);
  signal c_11_oshift: signed(21 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(21 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_8_3_False_resize: signed(25 downto 0);
  signal c_14_8_3_False_shift: signed(25 downto 0);
  signal c_14_8_1_False_resize: signed(25 downto 0);
  signal c_14_8_1_False_shift: signed(25 downto 0);
  signal c_14_13_0_False_resize: signed(25 downto 0);
  signal c_14_13_0_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(15 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(28 downto 0);
  signal c_19_8_0_False_resize: signed(28 downto 0);
  signal c_19_8_0_False_shift: signed(28 downto 0);
  signal c_19_18_10_False_resize: signed(28 downto 0);
  signal c_19_18_10_False_shift: signed(28 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(28 downto 0);
  signal c_20_i0_resize: signed(28 downto 0);
  signal c_20_i1_resize: signed(28 downto 0);
  signal c_20_i0_shift: signed(28 downto 0);
  signal c_20_i1_shift: signed(28 downto 0);
  signal c_20_arith: signed(28 downto 0);
  signal c_20_oshift: signed(28 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(20 downto 0);
  signal c_21_1_5_False_resize: signed(20 downto 0);
  signal c_21_1_5_False_shift: signed(20 downto 0);
  signal c_21_1_0_False_resize: signed(20 downto 0);
  signal c_21_1_0_False_shift: signed(20 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_22_11_3_False_resize: signed(21 downto 0);
  signal c_22_11_3_False_shift: signed(21 downto 0);
  signal c_22_11_0_False_resize: signed(21 downto 0);
  signal c_22_11_0_False_shift: signed(21 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_24: signed(20 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_i0_resize: signed(22 downto 0);
  signal c_25_i1_resize: signed(22 downto 0);
  signal c_25_i0_shift: signed(22 downto 0);
  signal c_25_i1_shift: signed(22 downto 0);
  signal c_25_arith: signed(22 downto 0);
  signal c_25_oshift: signed(22 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(21 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(29 downto 0);
  signal c_28_27_10_False_resize: signed(29 downto 0);
  signal c_28_27_10_False_shift: signed(29 downto 0);
  signal c_28_25_0_False_resize: signed(29 downto 0);
  signal c_28_25_0_False_shift: signed(29 downto 0);
  signal c_28_25_5_False_resize: signed(29 downto 0);
  signal c_28_25_5_False_shift: signed(29 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(15 downto 0);
  signal c_30: signed(15 downto 0);
  signal c_31: signed(26 downto 0);
  signal c_31_30_11_False_resize: signed(26 downto 0);
  signal c_31_30_11_False_shift: signed(26 downto 0);
  signal c_31_20_0_False_resize: signed(26 downto 0);
  signal c_31_20_0_False_shift: signed(26 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(29 downto 0);
  signal c_33: signed(29 downto 0);
  signal c_34: signed(29 downto 0);
  signal c_34_i0_resize: signed(29 downto 0);
  signal c_34_i1_resize: signed(29 downto 0);
  signal c_34_i0_shift: signed(29 downto 0);
  signal c_34_i1_shift: signed(29 downto 0);
  signal c_34_arith: signed(29 downto 0);
  signal c_34_oshift: signed(29 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_37: signed(28 downto 0);
  signal c_37_20_0_False_resize: signed(28 downto 0);
  signal c_37_20_0_False_shift: signed(28 downto 0);
  signal c_37_36_4_False_resize: signed(28 downto 0);
  signal c_37_36_4_False_shift: signed(28 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_38_27_0_False_resize: signed(24 downto 0);
  signal c_38_27_0_False_shift: signed(24 downto 0);
  signal c_38_8_0_False_resize: signed(24 downto 0);
  signal c_38_8_0_False_shift: signed(24 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_41: signed(31 downto 0);
  signal c_41_i0_resize: signed(31 downto 0);
  signal c_41_i1_resize: signed(31 downto 0);
  signal c_41_i0_shift: signed(31 downto 0);
  signal c_41_i1_shift: signed(31 downto 0);
  signal c_41_arith: signed(31 downto 0);
  signal c_41_oshift: signed(31 downto 0);
  signal c_41_sub_sel: std_logic;
  signal c_42: signed(22 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_44: signed(29 downto 0);
  signal c_44_43_0_False_resize: signed(29 downto 0);
  signal c_44_43_0_False_shift: signed(29 downto 0);
  signal c_44_41_2_False_resize: signed(29 downto 0);
  signal c_44_41_2_False_shift: signed(29 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(15 downto 0);
  signal c_46: signed(15 downto 0);
  signal c_47: signed(27 downto 0);
  signal c_47_34_0_False_resize: signed(27 downto 0);
  signal c_47_34_0_False_shift: signed(27 downto 0);
  signal c_47_46_1_False_resize: signed(27 downto 0);
  signal c_47_46_1_False_shift: signed(27 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(29 downto 0);
  signal c_48_i0_resize: signed(29 downto 0);
  signal c_48_i1_resize: signed(29 downto 0);
  signal c_48_i0_shift: signed(29 downto 0);
  signal c_48_i1_shift: signed(29 downto 0);
  signal c_48_arith: signed(29 downto 0);
  signal c_48_oshift: signed(29 downto 0);
  signal c_48_sub_sel: std_logic;
  signal c_49: signed(28 downto 0);
  signal c_50: signed(28 downto 0);
  signal c_51: signed(28 downto 0);
  signal c_52: signed(28 downto 0);
  signal c_53: signed(29 downto 0);
  signal c_54: signed(29 downto 0);
  signal c_55: signed(29 downto 0);
  signal c_55_52_0_False_resize: signed(29 downto 0);
  signal c_55_52_0_False_shift: signed(29 downto 0);
  signal c_55_48_0_False_resize: signed(29 downto 0);
  signal c_55_48_0_False_shift: signed(29 downto 0);
  signal c_55_54_0_False_resize: signed(29 downto 0);
  signal c_55_54_0_False_shift: signed(29 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(31 downto 0);
  signal c_57: signed(31 downto 0);
  signal c_58: signed(29 downto 0);
  signal c_58_48_0_False_resize: signed(29 downto 0);
  signal c_58_48_0_False_shift: signed(29 downto 0);
  signal c_58_57_0_False_resize: signed(29 downto 0);
  signal c_58_57_0_False_shift: signed(29 downto 0);
  signal c_58_sel: std_logic_vector(0 downto 0);
  signal c_59: signed(29 downto 0);
  signal c_59_resize: signed(29 downto 0);
  signal c_60: signed(29 downto 0);
  signal c_60_resize: signed(29 downto 0);
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
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1);
    end if;
  end process;
  -- output node 0 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 1 with id 60
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_60);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[32, 0], [32, 0], [0, 1]]
  c_2_0_5_False_resize <= resize(c_0, 21);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  c_2_1_0_False_resize <= resize(c_1, 21);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_5_False_shift;
        when others => c_2 <= c_2_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[33, 0], [33, 0], [1, 1]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 22,
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
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[8192, 0], [33, 0], [1, 1]]
  c_6_5_13_False_resize <= resize(c_5, 29);
  c_6_5_13_False_shift <= shift_left(c_6_5_13_False_resize, 13);
  c_6_4_0_False_resize <= resize(c_4, 29);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_5_13_False_shift;
        when others => c_6 <= c_6_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[33, 0], [16, 0], [32, 32]]
  c_7_4_0_False_resize <= c_4;
  c_7_4_0_False_shift <= shift_left(c_7_4_0_False_resize, 0);
  c_7_5_4_False_resize <= resize(c_5, 22);
  c_7_5_4_False_shift <= shift_left(c_7_5_4_False_resize, 4);
  c_7_4_5_False_resize <= c_4;
  c_7_4_5_False_shift <= shift_left(c_7_4_5_False_resize, 5);
  with config_select_3 select c_7_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_4_0_False_shift;
        when "01" => c_7 <= c_7_5_4_False_shift;
        when others => c_7 <= c_7_4_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[8060, 0], [97, 0], [129, 129]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 22,
      w_o => 29,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[0, 2], [0, 2], [1, 0]]
  c_9_1_1_False_resize <= resize(c_1, 17);
  c_9_1_1_False_shift <= shift_left(c_9_1_1_False_resize, 1);
  c_9_0_0_False_resize <= resize(c_0, 17);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  with config_select_1 select c_9_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_1_1_False_shift;
        when others => c_9 <= c_9_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[0, 4], [1, 0], [1, 0]]
  c_10_0_0_False_resize <= resize(c_0, 18);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_1_2_False_resize <= resize(c_1, 18);
  c_10_1_2_False_shift <= shift_left(c_10_1_2_False_resize, 2);
  with config_select_1 select c_10_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_0_0_False_shift;
        when others => c_10 <= c_10_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 11 and associated fundamentals [[0, 34], [-8, 2], [-7, 0]]
  with config_select_2 select c_11_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 18,
      w_o => 22,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[33, 0], [33, 0], [1, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[33, 0], [33, 0], [1, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[33, 0], [776, 0], [258, 258]]
  c_14_8_3_False_resize <= c_8(25 downto 0);
  c_14_8_3_False_shift <= shift_left(c_14_8_3_False_resize, 3);
  c_14_8_1_False_resize <= c_8(25 downto 0);
  c_14_8_1_False_shift <= shift_left(c_14_8_1_False_resize, 1);
  c_14_13_0_False_resize <= resize(c_13, 26);
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  with config_select_5 select c_14_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_8_3_False_shift;
        when "01" => c_14 <= c_14_8_1_False_shift;
        when others => c_14 <= c_14_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 15 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 16 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 17 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[8060, 0], [0, 1024], [129, 129]]
  c_19_8_0_False_resize <= c_8;
  c_19_8_0_False_shift <= shift_left(c_19_8_0_False_resize, 0);
  c_19_18_10_False_resize <= resize(c_18, 29);
  c_19_18_10_False_shift <= shift_left(c_19_18_10_False_resize, 10);
  with config_select_5 select c_19_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_8_0_False_shift;
        when others => c_19 <= c_19_18_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 20 and associated fundamentals [[-8027, 0], [776, 1024], [387, 387]]
  with config_select_6 select c_20_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 29,
      w_o => 29,
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
      x_i => c_14,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 21 and associated fundamentals [[0, 1], [0, 32], [0, 32]]
  c_21_1_5_False_resize <= resize(c_1, 21);
  c_21_1_5_False_shift <= shift_left(c_21_1_5_False_resize, 5);
  c_21_1_0_False_resize <= resize(c_1, 21);
  c_21_1_0_False_shift <= shift_left(c_21_1_0_False_resize, 0);
  with config_select_1 select c_21_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_1_5_False_shift;
        when others => c_21 <= c_21_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[0, 34], [-8, 2], [-56, 0]]
  c_22_11_3_False_resize <= c_11;
  c_22_11_3_False_shift <= shift_left(c_22_11_3_False_resize, 3);
  c_22_11_0_False_resize <= c_11;
  c_22_11_0_False_shift <= shift_left(c_22_11_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_11_3_False_shift;
        when others => c_22 <= c_22_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 23 and associated fundamentals [[0, 1], [0, 32], [0, 32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 24 and associated fundamentals [[0, 1], [0, 32], [0, 32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 25 and associated fundamentals [[0, -33], [8, 30], [-56, 32]]
  with config_select_4 select c_25_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_25_sub_sel,
      x_i => c_24,
      y_i => c_22,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 26 and associated fundamentals [[0, 34], [-8, 2], [-7, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 27 and associated fundamentals [[0, 34], [-8, 2], [-7, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 28 and associated fundamentals [[0, -33], [-8192, 2048], [-1792, 1024]]
  c_28_27_10_False_resize <= resize(c_27, 30);
  c_28_27_10_False_shift <= shift_left(c_28_27_10_False_resize, 10);
  c_28_25_0_False_resize <= resize(c_25, 30);
  c_28_25_0_False_shift <= shift_left(c_28_25_0_False_resize, 0);
  c_28_25_5_False_resize <= resize(c_25, 30);
  c_28_25_5_False_shift <= shift_left(c_28_25_5_False_resize, 5);
  with config_select_5 select c_28_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_27_10_False_shift;
        when "01" => c_28 <= c_28_25_0_False_shift;
        when others => c_28 <= c_28_25_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 31 and associated fundamentals [[0, 2048], [776, 1024], [387, 387]]
  c_31_30_11_False_resize <= resize(c_30, 27);
  c_31_30_11_False_shift <= shift_left(c_31_30_11_False_resize, 11);
  c_31_20_0_False_resize <= c_20(26 downto 0);
  c_31_20_0_False_shift <= shift_left(c_31_20_0_False_resize, 0);
  with config_select_7 select c_31_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_30_11_False_shift;
        when others => c_31 <= c_31_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[0, -33], [-8192, 2048], [-1792, 1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[0, -33], [-8192, 2048], [-1792, 1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 34 and associated fundamentals [[0, 2015], [-7416, 3072], [-1405, 1411]]
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 27,
      w_o => 30,
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
      x_i => c_33,
      y_i => c_31,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[0, -33], [8, 30], [-56, 32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[0, -33], [8, 30], [-56, 32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 37 and associated fundamentals [[-8027, 0], [128, 480], [387, 387]]
  c_37_20_0_False_resize <= c_20;
  c_37_20_0_False_shift <= shift_left(c_37_20_0_False_resize, 0);
  c_37_36_4_False_resize <= resize(c_36, 29);
  c_37_36_4_False_shift <= shift_left(c_37_36_4_False_resize, 4);
  with config_select_7 select c_37_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_20_0_False_shift;
        when others => c_37 <= c_37_36_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 38 and associated fundamentals [[0, 34], [-8, 2], [129, 129]]
  c_38_27_0_False_resize <= resize(c_27, 25);
  c_38_27_0_False_shift <= shift_left(c_38_27_0_False_resize, 0);
  c_38_8_0_False_resize <= c_8(24 downto 0);
  c_38_8_0_False_shift <= shift_left(c_38_8_0_False_resize, 0);
  with config_select_5 select c_38_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_27_0_False_shift;
        when others => c_38 <= c_38_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[0, 34], [-8, 2], [129, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[0, 34], [-8, 2], [129, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 41 and associated fundamentals [[-32108, -1088], [768, 1856], [5676, 5676]]
  with config_select_8 select c_41_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 25,
      w_o => 32,
      s_x_i => 2,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_41_sub_sel,
      x_i => c_37,
      y_i => c_40,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[0, -33], [8, 30], [-56, 32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[0, -33], [8, 30], [-56, 32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 44 and associated fundamentals [[0, -33], [3072, 7424], [-56, 32]]
  c_44_43_0_False_resize <= resize(c_43, 30);
  c_44_43_0_False_shift <= shift_left(c_44_43_0_False_resize, 0);
  c_44_41_2_False_resize <= c_41(29 downto 0);
  c_44_41_2_False_shift <= shift_left(c_44_41_2_False_resize, 2);
  with config_select_9 select c_44_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_43_0_False_shift;
        when others => c_44 <= c_44_41_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 47 and associated fundamentals [[0, 2015], [0, 2], [-1405, 1411]]
  c_47_34_0_False_resize <= c_34(27 downto 0);
  c_47_34_0_False_shift <= shift_left(c_47_34_0_False_resize, 0);
  c_47_46_1_False_resize <= resize(c_46, 28);
  c_47_46_1_False_shift <= shift_left(c_47_46_1_False_resize, 1);
  with config_select_9 select c_47_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_34_0_False_shift;
        when others => c_47 <= c_47_46_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 48 and associated fundamentals [[0, 8027], [3072, 7416], [-5676, 5676]]
  with config_select_10 select c_48_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_48: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 28,
      w_o => 30,
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
      sub_i => c_48_sub_sel,
      x_i => c_44,
      y_i => c_47,
      z_o => c_48_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_48_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[-8027, 0], [776, 1024], [387, 387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[-8027, 0], [776, 1024], [387, 387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[-8027, 0], [776, 1024], [387, 387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[-8027, 0], [776, 1024], [387, 387]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 53 and associated fundamentals [[0, 2015], [-7416, 3072], [-1405, 1411]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 54 and associated fundamentals [[0, 2015], [-7416, 3072], [-1405, 1411]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 55 and associated fundamentals [[-8027, 0], [-7416, 3072], [-5676, 5676]]
  c_55_52_0_False_resize <= resize(c_52, 30);
  c_55_52_0_False_shift <= shift_left(c_55_52_0_False_resize, 0);
  c_55_48_0_False_resize <= c_48;
  c_55_48_0_False_shift <= shift_left(c_55_48_0_False_resize, 0);
  c_55_54_0_False_resize <= c_54;
  c_55_54_0_False_shift <= shift_left(c_55_54_0_False_resize, 0);
  with config_select_11 select c_55_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "00" => c_55 <= c_55_52_0_False_shift;
        when "01" => c_55 <= c_55_48_0_False_shift;
        when others => c_55 <= c_55_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[-32108, -1088], [768, 1856], [5676, 5676]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[-32108, -1088], [768, 1856], [5676, 5676]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 58 and associated fundamentals [[0, 8027], [3072, 7416], [5676, 5676]]
  c_58_48_0_False_resize <= c_48;
  c_58_48_0_False_shift <= shift_left(c_58_48_0_False_resize, 0);
  c_58_57_0_False_resize <= c_57(29 downto 0);
  c_58_57_0_False_shift <= shift_left(c_58_57_0_False_resize, 0);
  with config_select_11 select c_58_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "0" => c_58 <= c_58_48_0_False_shift;
        when others => c_58 <= c_58_57_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 59 and associated fundamentals [[8027, 0], [7416, -3072], [5676, -5676]]
  c_59_resize <= c_55;
  c_59 <= -shift_left(c_59_resize, 0);
  -- node of type 'output' in stage 11 with id 60 and associated fundamentals [[0, 8027], [3072, 7416], [5676, 5676]]
  c_60_resize <= c_58;
  c_60 <= shift_left(c_60_resize, 0);
end architecture;

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
  signal config_select_12: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(24 downto 0);
  signal c_1_i0_resize: signed(24 downto 0);
  signal c_1_i1_resize: signed(24 downto 0);
  signal c_1_i0_shift: signed(24 downto 0);
  signal c_1_i1_shift: signed(24 downto 0);
  signal c_1_arith: signed(24 downto 0);
  signal c_1_oshift: signed(24 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(15 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_2_5_False_resize: signed(23 downto 0);
  signal c_4_2_5_False_shift: signed(23 downto 0);
  signal c_4_3_0_False_resize: signed(23 downto 0);
  signal c_4_3_0_False_shift: signed(23 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_6: signed(26 downto 0);
  signal c_6_i0_resize: signed(26 downto 0);
  signal c_6_i1_resize: signed(26 downto 0);
  signal c_6_i0_shift: signed(26 downto 0);
  signal c_6_i1_shift: signed(26 downto 0);
  signal c_6_arith: signed(26 downto 0);
  signal c_6_oshift: signed(26 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_8_3_False_resize: signed(22 downto 0);
  signal c_10_8_3_False_shift: signed(22 downto 0);
  signal c_10_9_0_False_resize: signed(22 downto 0);
  signal c_10_9_0_False_shift: signed(22 downto 0);
  signal c_10_6_0_False_resize: signed(22 downto 0);
  signal c_10_6_0_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(18 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(26 downto 0);
  signal c_13_6_0_False_resize: signed(26 downto 0);
  signal c_13_6_0_False_shift: signed(26 downto 0);
  signal c_13_9_8_False_resize: signed(26 downto 0);
  signal c_13_9_8_False_shift: signed(26 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(27 downto 0);
  signal c_15_i0_resize: signed(27 downto 0);
  signal c_15_i1_resize: signed(27 downto 0);
  signal c_15_i0_shift: signed(27 downto 0);
  signal c_15_i1_shift: signed(27 downto 0);
  signal c_15_arith: signed(27 downto 0);
  signal c_15_oshift: signed(27 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(15 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(21 downto 0);
  signal c_18_12_0_False_resize: signed(21 downto 0);
  signal c_18_12_0_False_shift: signed(21 downto 0);
  signal c_18_16_2_False_resize: signed(21 downto 0);
  signal c_18_16_2_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(18 downto 0);
  signal c_20: signed(18 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_21_i0_resize: signed(21 downto 0);
  signal c_21_i1_resize: signed(21 downto 0);
  signal c_21_i0_shift: signed(21 downto 0);
  signal c_21_i1_shift: signed(21 downto 0);
  signal c_21_arith: signed(21 downto 0);
  signal c_21_oshift: signed(21 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(26 downto 0);
  signal c_23: signed(26 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_i0_resize: signed(27 downto 0);
  signal c_24_i1_resize: signed(27 downto 0);
  signal c_24_i0_shift: signed(27 downto 0);
  signal c_24_i1_shift: signed(27 downto 0);
  signal c_24_arith: signed(27 downto 0);
  signal c_24_oshift: signed(24 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(26 downto 0);
  signal c_26: signed(26 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_26_0_False_resize: signed(24 downto 0);
  signal c_27_26_0_False_shift: signed(24 downto 0);
  signal c_27_21_3_False_resize: signed(24 downto 0);
  signal c_27_21_3_False_shift: signed(24 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_i0_resize: signed(25 downto 0);
  signal c_35_i1_resize: signed(25 downto 0);
  signal c_35_i0_shift: signed(25 downto 0);
  signal c_35_i1_shift: signed(25 downto 0);
  signal c_35_arith: signed(25 downto 0);
  signal c_35_oshift: signed(25 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(24 downto 0);
  signal c_36_12_0_False_resize: signed(24 downto 0);
  signal c_36_12_0_False_shift: signed(24 downto 0);
  signal c_36_12_1_False_resize: signed(24 downto 0);
  signal c_36_12_1_False_shift: signed(24 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(15 downto 0);
  signal c_39: signed(15 downto 0);
  signal c_40: signed(15 downto 0);
  signal c_41: signed(15 downto 0);
  signal c_42: signed(18 downto 0);
  signal c_43: signed(18 downto 0);
  signal c_44: signed(18 downto 0);
  signal c_45: signed(24 downto 0);
  signal c_45_41_9_False_resize: signed(24 downto 0);
  signal c_45_41_9_False_shift: signed(24 downto 0);
  signal c_45_44_4_False_resize: signed(24 downto 0);
  signal c_45_44_4_False_shift: signed(24 downto 0);
  signal c_45_35_0_False_resize: signed(24 downto 0);
  signal c_45_35_0_False_shift: signed(24 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_i0_resize: signed(25 downto 0);
  signal c_50_i1_resize: signed(25 downto 0);
  signal c_50_i0_shift: signed(25 downto 0);
  signal c_50_i1_shift: signed(25 downto 0);
  signal c_50_arith: signed(25 downto 0);
  signal c_50_oshift: signed(25 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_51_38_9_False_resize: signed(24 downto 0);
  signal c_51_38_9_False_shift: signed(24 downto 0);
  signal c_51_24_0_False_resize: signed(24 downto 0);
  signal c_51_24_0_False_shift: signed(24 downto 0);
  signal c_51_sel: std_logic_vector(0 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_52_38_0_False_resize: signed(24 downto 0);
  signal c_52_38_0_False_shift: signed(24 downto 0);
  signal c_52_17_0_False_resize: signed(24 downto 0);
  signal c_52_17_0_False_shift: signed(24 downto 0);
  signal c_52_sel: std_logic_vector(0 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_i0_resize: signed(25 downto 0);
  signal c_53_i1_resize: signed(25 downto 0);
  signal c_53_i0_shift: signed(25 downto 0);
  signal c_53_i1_shift: signed(25 downto 0);
  signal c_53_arith: signed(25 downto 0);
  signal c_53_oshift: signed(25 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_56_0_False_resize: signed(25 downto 0);
  signal c_57_56_0_False_shift: signed(25 downto 0);
  signal c_57_35_0_False_resize: signed(25 downto 0);
  signal c_57_35_0_False_shift: signed(25 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_35_0_False_resize: signed(25 downto 0);
  signal c_58_35_0_False_shift: signed(25 downto 0);
  signal c_58_56_0_False_resize: signed(25 downto 0);
  signal c_58_56_0_False_shift: signed(25 downto 0);
  signal c_58_sel: std_logic_vector(0 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_resize: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_resize: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_69_resize: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_resize: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_72_resize: signed(25 downto 0);
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
  -- output node 0 with id 63
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_63);
    end if;
  end process;
  -- output node 1 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_65);
    end if;
  end process;
  -- output node 2 with id 69
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_69);
    end if;
  end process;
  -- output node 3 with id 71
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_71);
    end if;
  end process;
  -- output node 4 with id 72
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_72);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[255], [257], [257]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 25,
      s_x_i => 8,
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
      c_1 <= c_1_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[3], [5], [5]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
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
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[96], [1], [160]]
  c_4_2_5_False_resize <= resize(c_2, 24);
  c_4_2_5_False_shift <= shift_left(c_4_2_5_False_resize, 5);
  c_4_3_0_False_resize <= resize(c_3, 24);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_2_5_False_shift;
        when others => c_4 <= c_4_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[3], [5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 6 and associated fundamentals [[720], [-72], [1200]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 19,
      w_o => 27,
      s_x_i => 3,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[3], [5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_5 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[8], [-72], [5]]
  c_10_8_3_False_resize <= resize(c_8, 23);
  c_10_8_3_False_shift <= shift_left(c_10_8_3_False_resize, 3);
  c_10_9_0_False_resize <= resize(c_9, 23);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_6_0_False_resize <= c_6(22 downto 0);
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_4 select c_10_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_8_3_False_shift;
        when "01" => c_10 <= c_10_9_0_False_shift;
        when others => c_10 <= c_10_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[3], [5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_9 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[35], [-293], [25]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[720], [1280], [1200]]
  c_13_6_0_False_resize <= c_6;
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  c_13_9_8_False_resize <= resize(c_9, 27);
  c_13_9_8_False_shift <= shift_left(c_13_9_8_False_resize, 8);
  with config_select_4 select c_13_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_6_0_False_shift;
        when others => c_13 <= c_13_9_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 15 and associated fundamentals [[1376], [2624], [2336]]
  with config_select_5 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 16,
      w_o => 28,
      s_x_i => 1,
      s_y_i => 6,
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
      c_15 <= c_15_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[281], [-2345], [201]]
  with config_select_6 select c_17_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 16,
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
      sub_i => c_17_sub_sel,
      x_i => c_12,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 18 and associated fundamentals [[35], [4], [4]]
  c_18_12_0_False_resize <= c_12(21 downto 0);
  c_18_12_0_False_shift <= shift_left(c_18_12_0_False_resize, 0);
  c_18_16_2_False_resize <= resize(c_16, 22);
  c_18_16_2_False_shift <= shift_left(c_18_16_2_False_resize, 2);
  with config_select_6 select c_18_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_12_0_False_shift;
        when others => c_18 <= c_18_16_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[3], [5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[3], [5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 21 and associated fundamentals [[59], [44], [-36]]
  with config_select_7 select c_21_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
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
      sub_i => c_21_sub_sel,
      x_i => c_18,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[720], [-72], [1200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[720], [-72], [1200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 24 and associated fundamentals [[262], [337], [442]]
  with config_select_6 select c_24_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 3,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_24_sub_sel,
      x_i => c_15,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[720], [-72], [1200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[720], [-72], [1200]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 27 and associated fundamentals [[472], [-72], [-288]]
  c_27_26_0_False_resize <= c_26(24 downto 0);
  c_27_26_0_False_shift <= shift_left(c_27_26_0_False_resize, 0);
  c_27_21_3_False_resize <= resize(c_21, 25);
  c_27_21_3_False_shift <= shift_left(c_27_21_3_False_resize, 3);
  with config_select_8 select c_27_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_26_0_False_shift;
        when others => c_27 <= c_27_21_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 28 and associated fundamentals [[255], [257], [257]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 29 and associated fundamentals [[255], [257], [257]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[255], [257], [257]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[255], [257], [257]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[255], [257], [257]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[255], [257], [257]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[255], [257], [257]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 35 and associated fundamentals [[727], [185], [545]]
  with config_select_9 select c_35_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_35_sub_sel,
      x_i => c_34,
      y_i => c_27,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 36 and associated fundamentals [[35], [-293], [50]]
  c_36_12_0_False_resize <= c_12;
  c_36_12_0_False_shift <= shift_left(c_36_12_0_False_resize, 0);
  c_36_12_1_False_resize <= c_12;
  c_36_12_1_False_shift <= shift_left(c_36_12_1_False_resize, 1);
  with config_select_6 select c_36_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_12_0_False_shift;
        when others => c_36 <= c_36_12_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 37 and associated fundamentals [[489], [381], [834]]
  with config_select_7 select c_37_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_37_sub_sel,
      x_i => c_24,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[3], [5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[3], [5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[3], [5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 45 and associated fundamentals [[48], [185], [512]]
  c_45_41_9_False_resize <= resize(c_41, 25);
  c_45_41_9_False_shift <= shift_left(c_45_41_9_False_resize, 9);
  c_45_44_4_False_resize <= resize(c_44, 25);
  c_45_44_4_False_shift <= shift_left(c_45_44_4_False_resize, 4);
  c_45_35_0_False_resize <= c_35(24 downto 0);
  c_45_35_0_False_shift <= shift_left(c_45_35_0_False_resize, 0);
  with config_select_10 select c_45_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_41_9_False_shift;
        when "01" => c_45 <= c_45_44_4_False_shift;
        when others => c_45 <= c_45_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 46 and associated fundamentals [[35], [-293], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[35], [-293], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[35], [-293], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 49 and associated fundamentals [[35], [-293], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 11 with id 50 and associated fundamentals [[61], [663], [974]]
  inst_adder_node_50: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_45,
      y_i => c_49,
      z_o => c_50_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_50_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 51 and associated fundamentals [[512], [337], [442]]
  c_51_38_9_False_resize <= resize(c_38, 25);
  c_51_38_9_False_shift <= shift_left(c_51_38_9_False_resize, 9);
  c_51_24_0_False_resize <= c_24;
  c_51_24_0_False_shift <= shift_left(c_51_24_0_False_resize, 0);
  with config_select_7 select c_51_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "0" => c_51 <= c_51_38_9_False_shift;
        when others => c_51 <= c_51_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 52 and associated fundamentals [[281], [1], [201]]
  c_52_38_0_False_resize <= resize(c_38, 25);
  c_52_38_0_False_shift <= shift_left(c_52_38_0_False_resize, 0);
  c_52_17_0_False_resize <= c_17;
  c_52_17_0_False_shift <= shift_left(c_52_17_0_False_resize, 0);
  with config_select_7 select c_52_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "0" => c_52 <= c_52_38_0_False_shift;
        when others => c_52 <= c_52_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 53 and associated fundamentals [[743], [673], [683]]
  inst_adder_node_53: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_51,
      y_i => c_52,
      z_o => c_53_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_53_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 54 and associated fundamentals [[262], [337], [442]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[262], [337], [442]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[262], [337], [442]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 57 and associated fundamentals [[727], [185], [442]]
  c_57_56_0_False_resize <= resize(c_56, 26);
  c_57_56_0_False_shift <= shift_left(c_57_56_0_False_resize, 0);
  c_57_35_0_False_resize <= c_35;
  c_57_35_0_False_shift <= shift_left(c_57_35_0_False_resize, 0);
  with config_select_10 select c_57_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_56_0_False_shift;
        when others => c_57 <= c_57_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 58 and associated fundamentals [[262], [337], [545]]
  c_58_35_0_False_resize <= c_35;
  c_58_35_0_False_shift <= shift_left(c_58_35_0_False_resize, 0);
  c_58_56_0_False_resize <= resize(c_56, 26);
  c_58_56_0_False_shift <= shift_left(c_58_56_0_False_resize, 0);
  with config_select_10 select c_58_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "0" => c_58 <= c_58_35_0_False_shift;
        when others => c_58 <= c_58_56_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 59 and associated fundamentals [[489], [381], [834]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 60 and associated fundamentals [[489], [381], [834]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 61 and associated fundamentals [[489], [381], [834]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 62 and associated fundamentals [[489], [381], [834]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 63 and associated fundamentals [[489], [381], [834]]
  c_63_resize <= c_62;
  c_63 <= shift_left(c_63_resize, 0);
  -- node of type 'register' in stage 11 with id 64 and associated fundamentals [[727], [185], [442]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_57 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 65 and associated fundamentals [[727], [185], [442]]
  c_65_resize <= c_64;
  c_65 <= shift_left(c_65_resize, 0);
  -- node of type 'register' in stage 9 with id 66 and associated fundamentals [[743], [673], [683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 67 and associated fundamentals [[743], [673], [683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 68 and associated fundamentals [[743], [673], [683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 69 and associated fundamentals [[743], [673], [683]]
  c_69_resize <= c_68;
  c_69 <= shift_left(c_69_resize, 0);
  -- node of type 'register' in stage 11 with id 70 and associated fundamentals [[262], [337], [545]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_58 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 71 and associated fundamentals [[262], [337], [545]]
  c_71_resize <= c_70;
  c_71 <= shift_left(c_71_resize, 0);
  -- node of type 'output' in stage 11 with id 72 and associated fundamentals [[61], [663], [974]]
  c_72_resize <= c_50;
  c_72 <= shift_left(c_72_resize, 0);
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(24 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(24 downto 0);
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
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(15 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_5_2_False_resize: signed(20 downto 0);
  signal c_6_5_2_False_shift: signed(20 downto 0);
  signal c_6_3_0_False_resize: signed(20 downto 0);
  signal c_6_3_0_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_i0_resize: signed(20 downto 0);
  signal c_9_i1_resize: signed(20 downto 0);
  signal c_9_i0_shift: signed(20 downto 0);
  signal c_9_i1_shift: signed(20 downto 0);
  signal c_9_arith: signed(20 downto 0);
  signal c_9_oshift: signed(20 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(23 downto 0);
  signal c_10_4_0_False_resize: signed(23 downto 0);
  signal c_10_4_0_False_shift: signed(23 downto 0);
  signal c_10_1_2_False_resize: signed(23 downto 0);
  signal c_10_1_2_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_0_7_False_resize: signed(22 downto 0);
  signal c_13_0_7_False_shift: signed(22 downto 0);
  signal c_13_0_0_False_resize: signed(22 downto 0);
  signal c_13_0_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(19 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_i0_resize: signed(22 downto 0);
  signal c_19_i1_resize: signed(22 downto 0);
  signal c_19_i0_shift: signed(22 downto 0);
  signal c_19_i1_shift: signed(22 downto 0);
  signal c_19_arith: signed(22 downto 0);
  signal c_19_oshift: signed(22 downto 0);
  signal c_20: signed(20 downto 0);
  signal c_20_5_1_False_resize: signed(20 downto 0);
  signal c_20_5_1_False_shift: signed(20 downto 0);
  signal c_20_3_0_False_resize: signed(20 downto 0);
  signal c_20_3_0_False_shift: signed(20 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(15 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(15 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_19_0_False_resize: signed(22 downto 0);
  signal c_26_19_0_False_shift: signed(22 downto 0);
  signal c_26_25_4_False_resize: signed(22 downto 0);
  signal c_26_25_4_False_shift: signed(22 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_28: signed(19 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_i0_resize: signed(24 downto 0);
  signal c_29_i1_resize: signed(24 downto 0);
  signal c_29_i0_shift: signed(24 downto 0);
  signal c_29_i1_shift: signed(24 downto 0);
  signal c_29_arith: signed(24 downto 0);
  signal c_29_oshift: signed(24 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(23 downto 0);
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
  signal c_34: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_35_0_False_resize: signed(24 downto 0);
  signal c_36_35_0_False_shift: signed(24 downto 0);
  signal c_36_29_0_False_resize: signed(24 downto 0);
  signal c_36_29_0_False_shift: signed(24 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_i0_resize: signed(25 downto 0);
  signal c_42_i1_resize: signed(25 downto 0);
  signal c_42_i0_shift: signed(25 downto 0);
  signal c_42_i1_shift: signed(25 downto 0);
  signal c_42_arith: signed(25 downto 0);
  signal c_42_oshift: signed(25 downto 0);
  signal c_42_sub_sel: std_logic;
  signal c_43: signed(15 downto 0);
  signal c_44: signed(15 downto 0);
  signal c_45: signed(15 downto 0);
  signal c_46: signed(15 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_i0_resize: signed(25 downto 0);
  signal c_47_i1_resize: signed(25 downto 0);
  signal c_47_i0_shift: signed(25 downto 0);
  signal c_47_i1_shift: signed(25 downto 0);
  signal c_47_arith: signed(25 downto 0);
  signal c_47_oshift: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_12_0_False_resize: signed(25 downto 0);
  signal c_48_12_0_False_shift: signed(25 downto 0);
  signal c_48_12_1_False_resize: signed(25 downto 0);
  signal c_48_12_1_False_shift: signed(25 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_52_0_False_resize: signed(25 downto 0);
  signal c_53_52_0_False_shift: signed(25 downto 0);
  signal c_53_42_0_False_resize: signed(25 downto 0);
  signal c_53_42_0_False_shift: signed(25 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_58_1_False_resize: signed(25 downto 0);
  signal c_59_58_1_False_shift: signed(25 downto 0);
  signal c_59_47_0_False_resize: signed(25 downto 0);
  signal c_59_47_0_False_shift: signed(25 downto 0);
  signal c_59_sel: std_logic_vector(0 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_60_31_0_False_resize: signed(24 downto 0);
  signal c_60_31_0_False_shift: signed(24 downto 0);
  signal c_60_54_0_False_resize: signed(24 downto 0);
  signal c_60_54_0_False_shift: signed(24 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_68_resize: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_resize: signed(25 downto 0);
  signal c_71: signed(24 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_76: signed(24 downto 0);
  signal c_77: signed(24 downto 0);
  signal c_77_resize: signed(24 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_78_resize: signed(25 downto 0);
  signal c_79: signed(24 downto 0);
  signal c_80: signed(24 downto 0);
  signal c_81: signed(24 downto 0);
  signal c_82: signed(24 downto 0);
  signal c_83: signed(24 downto 0);
  signal c_83_resize: signed(24 downto 0);
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
  -- output node 0 with id 68
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_68);
    end if;
  end process;
  -- output node 1 with id 70
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_70);
    end if;
  end process;
  -- output node 2 with id 77
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_77);
    end if;
  end process;
  -- output node 3 with id 78
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_78);
    end if;
  end process;
  -- output node 4 with id 83
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_83);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[9], [9], [9]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-10], [26], [26]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 21,
      s_x_i => 3,
      s_y_i => 1,
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
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 4 and associated fundamentals [[127], [129], [129]]
  with config_select_1 select c_4_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
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
      sub_i => c_4_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[4], [4], [26]]
  c_6_5_2_False_resize <= resize(c_5, 21);
  c_6_5_2_False_shift <= shift_left(c_6_5_2_False_resize, 2);
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_5_2_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[9], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[9], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[22], [22], [8]]
  with config_select_4 select c_9_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 21,
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
      sub_i => c_9_sub_sel,
      x_i => c_6,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[127], [129], [36]]
  c_10_4_0_False_resize <= c_4;
  c_10_4_0_False_shift <= shift_left(c_10_4_0_False_resize, 0);
  c_10_1_2_False_resize <= resize(c_1, 24);
  c_10_1_2_False_shift <= shift_left(c_10_1_2_False_resize, 2);
  with config_select_2 select c_10_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_4_0_False_shift;
        when others => c_10 <= c_10_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 11 and associated fundamentals [[127], [129], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 12 and associated fundamentals [[381], [387], [273]]
  with config_select_3 select c_12_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
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
  -- node of type 'mux' in stage 1 with id 13 and associated fundamentals [[1], [128], [128]]
  c_13_0_7_False_resize <= resize(c_0, 23);
  c_13_0_7_False_shift <= shift_left(c_13_0_7_False_resize, 7);
  c_13_0_0_False_resize <= resize(c_0, 23);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  with config_select_1 select c_13_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_0_7_False_shift;
        when others => c_13 <= c_13_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 14 and associated fundamentals [[1], [128], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[1], [128], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[1], [128], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 17 and associated fundamentals [[86], [344], [288]]
  with config_select_5 select c_17_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_17_sub_sel,
      x_i => c_9,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[9], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 19 and associated fundamentals [[124], [124], [68]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 23,
      s_x_i => 2,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_18,
      y_i => c_9,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[2], [2], [26]]
  c_20_5_1_False_resize <= resize(c_5, 21);
  c_20_5_1_False_shift <= shift_left(c_20_5_1_False_resize, 1);
  c_20_3_0_False_resize <= c_3;
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_5_1_False_shift;
        when others => c_20 <= c_20_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 21 and associated fundamentals [[127], [129], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 22 and associated fundamentals [[131], [133], [77]]
  with config_select_4 select c_22_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_22_sub_sel,
      x_i => c_21,
      y_i => c_20,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 23 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 26 and associated fundamentals [[124], [16], [68]]
  c_26_19_0_False_resize <= c_19;
  c_26_19_0_False_shift <= shift_left(c_26_19_0_False_resize, 0);
  c_26_25_4_False_resize <= resize(c_25, 23);
  c_26_25_4_False_shift <= shift_left(c_26_25_4_False_resize, 4);
  with config_select_6 select c_26_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_19_0_False_shift;
        when others => c_26 <= c_26_25_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[9], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[9], [9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 29 and associated fundamentals [[505], [-55], [-263]]
  with config_select_7 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_28,
      y_i => c_26,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[131], [133], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 31 and associated fundamentals [[379], [-115], [213]]
  with config_select_6 select c_31_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 25,
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
      sub_i => c_31_sub_sel,
      x_i => c_30,
      y_i => c_19,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 32 and associated fundamentals [[127], [129], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 33 and associated fundamentals [[127], [129], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[127], [129], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[127], [129], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 36 and associated fundamentals [[127], [-55], [-263]]
  c_36_35_0_False_resize <= resize(c_35, 25);
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  c_36_29_0_False_resize <= c_29;
  c_36_29_0_False_shift <= shift_left(c_36_29_0_False_resize, 0);
  with config_select_8 select c_36_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_35_0_False_shift;
        when others => c_36 <= c_36_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 37 and associated fundamentals [[381], [387], [273]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 38 and associated fundamentals [[381], [387], [273]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[381], [387], [273]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[381], [387], [273]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[381], [387], [273]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 42 and associated fundamentals [[889], [719], [809]]
  with config_select_9 select c_42_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_42: entity work.adder_node
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
      sub_i => c_42_sub_sel,
      x_i => c_41,
      y_i => c_36,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 47 and associated fundamentals [[887], [717], [807]]
  inst_adder_node_47: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 16,
      w_o => 26,
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
      x_i => c_42,
      y_i => c_46,
      z_o => c_47_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_47_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 48 and associated fundamentals [[381], [774], [546]]
  c_48_12_0_False_resize <= resize(c_12, 26);
  c_48_12_0_False_shift <= shift_left(c_48_12_0_False_resize, 0);
  c_48_12_1_False_resize <= resize(c_12, 26);
  c_48_12_1_False_shift <= shift_left(c_48_12_1_False_resize, 1);
  with config_select_4 select c_48_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_12_0_False_shift;
        when others => c_48 <= c_48_12_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 49 and associated fundamentals [[124], [124], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 50 and associated fundamentals [[124], [124], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[124], [124], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[124], [124], [68]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 53 and associated fundamentals [[124], [719], [809]]
  c_53_52_0_False_resize <= resize(c_52, 26);
  c_53_52_0_False_shift <= shift_left(c_53_52_0_False_resize, 0);
  c_53_42_0_False_resize <= c_42;
  c_53_42_0_False_shift <= shift_left(c_53_42_0_False_resize, 0);
  with config_select_10 select c_53_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_52_0_False_shift;
        when others => c_53 <= c_53_42_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 54 and associated fundamentals [[131], [133], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 55 and associated fundamentals [[131], [133], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[131], [133], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[131], [133], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[131], [133], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 59 and associated fundamentals [[887], [717], [154]]
  c_59_58_1_False_resize <= resize(c_58, 26);
  c_59_58_1_False_shift <= shift_left(c_59_58_1_False_resize, 1);
  c_59_47_0_False_resize <= c_47;
  c_59_47_0_False_shift <= shift_left(c_59_47_0_False_resize, 0);
  with config_select_11 select c_59_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "0" => c_59 <= c_59_58_1_False_shift;
        when others => c_59 <= c_59_47_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 60 and associated fundamentals [[379], [133], [213]]
  c_60_31_0_False_resize <= c_31;
  c_60_31_0_False_shift <= shift_left(c_60_31_0_False_resize, 0);
  c_60_54_0_False_resize <= resize(c_54, 25);
  c_60_54_0_False_shift <= shift_left(c_60_54_0_False_resize, 0);
  with config_select_7 select c_60_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_31_0_False_shift;
        when others => c_60 <= c_60_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 61 and associated fundamentals [[381], [774], [546]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 62 and associated fundamentals [[381], [774], [546]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 63 and associated fundamentals [[381], [774], [546]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 64 and associated fundamentals [[381], [774], [546]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 65 and associated fundamentals [[381], [774], [546]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 66 and associated fundamentals [[381], [774], [546]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 67 and associated fundamentals [[381], [774], [546]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 68 and associated fundamentals [[381], [774], [546]]
  c_68_resize <= c_67;
  c_68 <= shift_left(c_68_resize, 0);
  -- node of type 'register' in stage 11 with id 69 and associated fundamentals [[124], [719], [809]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_53 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 70 and associated fundamentals [[124], [719], [809]]
  c_70_resize <= c_69;
  c_70 <= shift_left(c_70_resize, 0);
  -- node of type 'register' in stage 6 with id 71 and associated fundamentals [[86], [344], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 72 and associated fundamentals [[86], [344], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 73 and associated fundamentals [[86], [344], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 74 and associated fundamentals [[86], [344], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 75 and associated fundamentals [[86], [344], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 76 and associated fundamentals [[86], [344], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 77 and associated fundamentals [[86], [344], [288]]
  c_77_resize <= c_76;
  c_77 <= shift_left(c_77_resize, 0);
  -- node of type 'output' in stage 11 with id 78 and associated fundamentals [[887], [717], [154]]
  c_78_resize <= c_59;
  c_78 <= shift_left(c_78_resize, 0);
  -- node of type 'register' in stage 8 with id 79 and associated fundamentals [[379], [133], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 80 and associated fundamentals [[379], [133], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 81 and associated fundamentals [[379], [133], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 82 and associated fundamentals [[379], [133], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 83 and associated fundamentals [[379], [133], [213]]
  c_83_resize <= c_82;
  c_83 <= shift_left(c_83_resize, 0);
end architecture;

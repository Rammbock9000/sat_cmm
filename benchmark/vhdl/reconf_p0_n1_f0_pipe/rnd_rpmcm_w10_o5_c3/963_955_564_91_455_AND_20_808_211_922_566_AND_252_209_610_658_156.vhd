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
  signal config_select_13: std_logic_vector(1 downto 0);
  signal config_select_14: std_logic_vector(1 downto 0);
  signal config_select_15: std_logic_vector(1 downto 0);
  signal config_select_16: std_logic_vector(1 downto 0);
  signal config_select_17: std_logic_vector(1 downto 0);
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
  signal c_4: signed(19 downto 0);
  signal c_4_0_4_False_resize: signed(19 downto 0);
  signal c_4_0_4_False_shift: signed(19 downto 0);
  signal c_4_0_0_False_resize: signed(19 downto 0);
  signal c_4_0_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_3_1_False_resize: signed(22 downto 0);
  signal c_5_3_1_False_shift: signed(22 downto 0);
  signal c_5_3_0_False_resize: signed(22 downto 0);
  signal c_5_3_0_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(21 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_8_0_False_resize: signed(22 downto 0);
  signal c_11_8_0_False_shift: signed(22 downto 0);
  signal c_11_10_0_False_resize: signed(22 downto 0);
  signal c_11_10_0_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_14_8_False_resize: signed(23 downto 0);
  signal c_15_14_8_False_shift: signed(23 downto 0);
  signal c_15_8_0_False_resize: signed(23 downto 0);
  signal c_15_8_0_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(18 downto 0);
  signal c_17_0_0_False_resize: signed(18 downto 0);
  signal c_17_0_0_False_shift: signed(18 downto 0);
  signal c_17_0_3_False_resize: signed(18 downto 0);
  signal c_17_0_3_False_shift: signed(18 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(15 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_16_0_False_resize: signed(25 downto 0);
  signal c_20_16_0_False_shift: signed(25 downto 0);
  signal c_20_19_4_False_resize: signed(25 downto 0);
  signal c_20_19_4_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(18 downto 0);
  signal c_22: signed(18 downto 0);
  signal c_23: signed(18 downto 0);
  signal c_24: signed(18 downto 0);
  signal c_25: signed(18 downto 0);
  signal c_26: signed(18 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(15 downto 0);
  signal c_29: signed(15 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_27_0_False_resize: signed(25 downto 0);
  signal c_30_27_0_False_shift: signed(25 downto 0);
  signal c_30_29_8_False_resize: signed(25 downto 0);
  signal c_30_29_8_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(27 downto 0);
  signal c_31_8_5_False_resize: signed(27 downto 0);
  signal c_31_8_5_False_shift: signed(27 downto 0);
  signal c_31_8_0_False_resize: signed(27 downto 0);
  signal c_31_8_0_False_shift: signed(27 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(27 downto 0);
  signal c_33: signed(27 downto 0);
  signal c_34: signed(27 downto 0);
  signal c_35: signed(27 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_i0_resize: signed(25 downto 0);
  signal c_36_i1_resize: signed(25 downto 0);
  signal c_36_i0_shift: signed(25 downto 0);
  signal c_36_i1_shift: signed(25 downto 0);
  signal c_36_arith: signed(25 downto 0);
  signal c_36_oshift: signed(25 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(21 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_39: signed(21 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_27_0_False_resize: signed(23 downto 0);
  signal c_41_27_0_False_shift: signed(23 downto 0);
  signal c_41_40_5_False_resize: signed(23 downto 0);
  signal c_41_40_5_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_48: signed(26 downto 0);
  signal c_48_36_1_False_resize: signed(26 downto 0);
  signal c_48_36_1_False_shift: signed(26 downto 0);
  signal c_48_47_0_False_resize: signed(26 downto 0);
  signal c_48_47_0_False_shift: signed(26 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_i0_resize: signed(25 downto 0);
  signal c_51_i1_resize: signed(25 downto 0);
  signal c_51_i0_shift: signed(25 downto 0);
  signal c_51_i1_shift: signed(25 downto 0);
  signal c_51_arith: signed(25 downto 0);
  signal c_51_oshift: signed(25 downto 0);
  signal c_51_sub_sel: std_logic;
  signal c_52: signed(21 downto 0);
  signal c_53: signed(21 downto 0);
  signal c_54: signed(21 downto 0);
  signal c_55: signed(21 downto 0);
  signal c_56: signed(22 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_55_0_False_resize: signed(23 downto 0);
  signal c_58_55_0_False_shift: signed(23 downto 0);
  signal c_58_51_0_False_resize: signed(23 downto 0);
  signal c_58_51_0_False_shift: signed(23 downto 0);
  signal c_58_57_2_False_resize: signed(23 downto 0);
  signal c_58_57_2_False_shift: signed(23 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(15 downto 0);
  signal c_60: signed(15 downto 0);
  signal c_61: signed(15 downto 0);
  signal c_62: signed(15 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_67_62_8_False_resize: signed(23 downto 0);
  signal c_67_62_8_False_shift: signed(23 downto 0);
  signal c_67_51_0_False_resize: signed(23 downto 0);
  signal c_67_51_0_False_shift: signed(23 downto 0);
  signal c_67_66_2_False_resize: signed(23 downto 0);
  signal c_67_66_2_False_shift: signed(23 downto 0);
  signal c_67_sel: std_logic_vector(1 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_68_i0_resize: signed(25 downto 0);
  signal c_68_i1_resize: signed(25 downto 0);
  signal c_68_i0_shift: signed(25 downto 0);
  signal c_68_i1_shift: signed(25 downto 0);
  signal c_68_arith: signed(25 downto 0);
  signal c_68_oshift: signed(25 downto 0);
  signal c_68_sub_sel: std_logic;
  signal c_69: signed(25 downto 0);
  signal c_69_27_0_False_resize: signed(25 downto 0);
  signal c_69_27_0_False_shift: signed(25 downto 0);
  signal c_69_40_2_False_resize: signed(25 downto 0);
  signal c_69_40_2_False_shift: signed(25 downto 0);
  signal c_69_sel: std_logic_vector(0 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_78_68_0_False_resize: signed(25 downto 0);
  signal c_78_68_0_False_shift: signed(25 downto 0);
  signal c_78_77_0_False_resize: signed(25 downto 0);
  signal c_78_77_0_False_shift: signed(25 downto 0);
  signal c_78_sel: std_logic_vector(0 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_79_73_0_False_resize: signed(25 downto 0);
  signal c_79_73_0_False_shift: signed(25 downto 0);
  signal c_79_36_1_False_resize: signed(25 downto 0);
  signal c_79_36_1_False_shift: signed(25 downto 0);
  signal c_79_sel: std_logic_vector(0 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_80_51_0_False_resize: signed(25 downto 0);
  signal c_80_51_0_False_shift: signed(25 downto 0);
  signal c_80_51_1_False_resize: signed(25 downto 0);
  signal c_80_51_1_False_shift: signed(25 downto 0);
  signal c_80_sel: std_logic_vector(0 downto 0);
  signal c_81: signed(25 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_85_84_0_False_resize: signed(25 downto 0);
  signal c_85_84_0_False_shift: signed(25 downto 0);
  signal c_85_68_0_False_resize: signed(25 downto 0);
  signal c_85_68_0_False_shift: signed(25 downto 0);
  signal c_85_sel: std_logic_vector(0 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_91: signed(25 downto 0);
  signal c_92: signed(25 downto 0);
  signal c_92_resize: signed(25 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_93_resize: signed(25 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_95: signed(25 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_97: signed(25 downto 0);
  signal c_98: signed(25 downto 0);
  signal c_98_resize: signed(25 downto 0);
  signal c_99: signed(25 downto 0);
  signal c_100: signed(25 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_101_resize: signed(25 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_102_resize: signed(25 downto 0);
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
      config_select_14 <= config_select_13;
      config_select_15 <= config_select_14;
      config_select_16 <= config_select_15;
      config_select_17 <= config_select_16;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 92
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_92);
    end if;
  end process;
  -- output node 1 with id 93
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_93);
    end if;
  end process;
  -- output node 2 with id 98
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_98);
    end if;
  end process;
  -- output node 3 with id 101
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_101);
    end if;
  end process;
  -- output node 4 with id 102
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_102);
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[16], [16], [1]]
  c_4_0_4_False_resize <= resize(c_0, 20);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  c_4_0_0_False_resize <= resize(c_0, 20);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_4_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[5], [10], [126]]
  c_5_3_1_False_resize <= resize(c_3, 23);
  c_5_3_1_False_shift <= shift_left(c_5_3_1_False_resize, 1);
  c_5_3_0_False_resize <= resize(c_3, 23);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_3_1_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[16], [16], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[16], [16], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[69], [54], [-122]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_5,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(22 downto 0);
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
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[69], [5], [-122]]
  c_11_8_0_False_resize <= c_8;
  c_11_8_0_False_shift <= shift_left(c_11_8_0_False_resize, 0);
  c_11_10_0_False_resize <= resize(c_10, 23);
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  with config_select_5 select c_11_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_8_0_False_shift;
        when others => c_11 <= c_11_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[256], [54], [-122]]
  c_15_14_8_False_resize <= resize(c_14, 24);
  c_15_14_8_False_shift <= shift_left(c_15_14_8_False_resize, 8);
  c_15_8_0_False_resize <= resize(c_8, 24);
  c_15_8_0_False_shift <= shift_left(c_15_8_0_False_resize, 0);
  with config_select_5 select c_15_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_14_8_False_shift;
        when others => c_15 <= c_15_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 16 and associated fundamentals [[-955], [-211], [-610]]
  with config_select_6 select c_16_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_16_sub_sel,
      x_i => c_11,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 17 and associated fundamentals [[8], [1], [1]]
  c_17_0_0_False_resize <= resize(c_0, 19);
  c_17_0_0_False_shift <= shift_left(c_17_0_0_False_resize, 0);
  c_17_0_3_False_resize <= resize(c_0, 19);
  c_17_0_3_False_shift <= shift_left(c_17_0_3_False_resize, 3);
  with config_select_1 select c_17_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_0_0_False_shift;
        when others => c_17 <= c_17_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[-955], [-211], [16]]
  c_20_16_0_False_resize <= c_16;
  c_20_16_0_False_shift <= shift_left(c_20_16_0_False_resize, 0);
  c_20_19_4_False_resize <= resize(c_19, 26);
  c_20_19_4_False_shift <= shift_left(c_20_19_4_False_resize, 4);
  with config_select_7 select c_20_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_16_0_False_shift;
        when others => c_20 <= c_20_19_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 21 and associated fundamentals [[8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 22 and associated fundamentals [[8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 23 and associated fundamentals [[8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 27 and associated fundamentals [[963], [-210], [17]]
  with config_select_8 select c_27_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 26,
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
      sub_i => c_27_sub_sel,
      x_i => c_26,
      y_i => c_20,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 29 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 30 and associated fundamentals [[963], [256], [17]]
  c_30_27_0_False_resize <= c_27;
  c_30_27_0_False_shift <= shift_left(c_30_27_0_False_resize, 0);
  c_30_29_8_False_resize <= resize(c_29, 26);
  c_30_29_8_False_shift <= shift_left(c_30_29_8_False_resize, 8);
  with config_select_9 select c_30_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_27_0_False_shift;
        when others => c_30 <= c_30_29_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[2208], [54], [-122]]
  c_31_8_5_False_resize <= resize(c_8, 28);
  c_31_8_5_False_shift <= shift_left(c_31_8_5_False_resize, 5);
  c_31_8_0_False_resize <= resize(c_8, 28);
  c_31_8_0_False_shift <= shift_left(c_31_8_0_False_resize, 0);
  with config_select_5 select c_31_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_8_5_False_shift;
        when others => c_31 <= c_31_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[2208], [54], [-122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[2208], [54], [-122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[2208], [54], [-122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 35 and associated fundamentals [[2208], [54], [-122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 36 and associated fundamentals [[-282], [566], [156]]
  with config_select_10 select c_36_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 28,
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
      sub_i => c_36_sub_sel,
      x_i => c_30,
      y_i => c_35,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 37 and associated fundamentals [[5], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[5], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[5], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[5], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 41 and associated fundamentals [[160], [-210], [17]]
  c_41_27_0_False_resize <= c_27(23 downto 0);
  c_41_27_0_False_shift <= shift_left(c_41_27_0_False_resize, 0);
  c_41_40_5_False_resize <= resize(c_40, 24);
  c_41_40_5_False_shift <= shift_left(c_41_40_5_False_resize, 5);
  with config_select_9 select c_41_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_27_0_False_shift;
        when others => c_41 <= c_41_40_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 42 and associated fundamentals [[69], [54], [-122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[69], [54], [-122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[69], [54], [-122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[69], [54], [-122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[69], [54], [-122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[69], [54], [-122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 48 and associated fundamentals [[69], [1132], [312]]
  c_48_36_1_False_resize <= resize(c_36, 27);
  c_48_36_1_False_shift <= shift_left(c_48_36_1_False_resize, 1);
  c_48_47_0_False_resize <= resize(c_47, 27);
  c_48_47_0_False_shift <= shift_left(c_48_47_0_False_resize, 0);
  with config_select_11 select c_48_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_36_1_False_shift;
        when others => c_48 <= c_48_47_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 49 and associated fundamentals [[160], [-210], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 50 and associated fundamentals [[160], [-210], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 51 and associated fundamentals [[91], [922], [329]]
  with config_select_12 select c_51_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_51: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 27,
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
      sub_i => c_51_sub_sel,
      x_i => c_50,
      y_i => c_48,
      z_o => c_51_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_51_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[5], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[5], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 54 and associated fundamentals [[5], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 55 and associated fundamentals [[5], [5], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 56 and associated fundamentals [[69], [54], [-122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 57 and associated fundamentals [[69], [54], [-122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 58 and associated fundamentals [[91], [216], [63]]
  c_58_55_0_False_resize <= resize(c_55, 24);
  c_58_55_0_False_shift <= shift_left(c_58_55_0_False_resize, 0);
  c_58_51_0_False_resize <= c_51(23 downto 0);
  c_58_51_0_False_shift <= shift_left(c_58_51_0_False_resize, 0);
  c_58_57_2_False_resize <= resize(c_57, 24);
  c_58_57_2_False_shift <= shift_left(c_58_57_2_False_resize, 2);
  with config_select_13 select c_58_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "00" => c_58 <= c_58_55_0_False_shift;
        when "01" => c_58 <= c_58_51_0_False_shift;
        when others => c_58 <= c_58_57_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 60 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 61 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 62 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 63 and associated fundamentals [[963], [-210], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 64 and associated fundamentals [[963], [-210], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 65 and associated fundamentals [[963], [-210], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 66 and associated fundamentals [[963], [-210], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 67 and associated fundamentals [[91], [256], [68]]
  c_67_62_8_False_resize <= resize(c_62, 24);
  c_67_62_8_False_shift <= shift_left(c_67_62_8_False_resize, 8);
  c_67_51_0_False_resize <= c_51(23 downto 0);
  c_67_51_0_False_shift <= shift_left(c_67_51_0_False_resize, 0);
  c_67_66_2_False_resize <= c_66(23 downto 0);
  c_67_66_2_False_shift <= shift_left(c_67_66_2_False_resize, 2);
  with config_select_13 select c_67_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_67_sel is
        when "00" => c_67 <= c_67_62_8_False_shift;
        when "01" => c_67 <= c_67_51_0_False_shift;
        when others => c_67 <= c_67_66_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 68 and associated fundamentals [[455], [-808], [-209]]
  with config_select_14 select c_68_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_68: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_68_sub_sel,
      x_i => c_58,
      y_i => c_67,
      z_o => c_68_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_68_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 69 and associated fundamentals [[963], [20], [252]]
  c_69_27_0_False_resize <= c_27;
  c_69_27_0_False_shift <= shift_left(c_69_27_0_False_resize, 0);
  c_69_40_2_False_resize <= resize(c_40, 26);
  c_69_40_2_False_shift <= shift_left(c_69_40_2_False_resize, 2);
  with config_select_9 select c_69_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_69_sel is
        when "0" => c_69 <= c_69_27_0_False_shift;
        when others => c_69 <= c_69_40_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 70 and associated fundamentals [[-955], [-211], [-610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 71 and associated fundamentals [[-955], [-211], [-610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 72 and associated fundamentals [[-955], [-211], [-610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 73 and associated fundamentals [[-955], [-211], [-610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 74 and associated fundamentals [[-955], [-211], [-610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 75 and associated fundamentals [[-955], [-211], [-610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 76 and associated fundamentals [[-955], [-211], [-610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 77 and associated fundamentals [[-955], [-211], [-610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 78 and associated fundamentals [[-955], [-808], [-209]]
  c_78_68_0_False_resize <= c_68;
  c_78_68_0_False_shift <= shift_left(c_78_68_0_False_resize, 0);
  c_78_77_0_False_resize <= c_77;
  c_78_77_0_False_shift <= shift_left(c_78_77_0_False_resize, 0);
  with config_select_15 select c_78_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "0" => c_78 <= c_78_68_0_False_shift;
        when others => c_78 <= c_78_77_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 79 and associated fundamentals [[-564], [-211], [-610]]
  c_79_73_0_False_resize <= c_73;
  c_79_73_0_False_shift <= shift_left(c_79_73_0_False_resize, 0);
  c_79_36_1_False_resize <= c_36;
  c_79_36_1_False_shift <= shift_left(c_79_36_1_False_resize, 1);
  with config_select_11 select c_79_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_79_sel is
        when "0" => c_79 <= c_79_73_0_False_shift;
        when others => c_79 <= c_79_36_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 80 and associated fundamentals [[91], [922], [658]]
  c_80_51_0_False_resize <= c_51;
  c_80_51_0_False_shift <= shift_left(c_80_51_0_False_resize, 0);
  c_80_51_1_False_resize <= c_51;
  c_80_51_1_False_shift <= shift_left(c_80_51_1_False_resize, 1);
  with config_select_13 select c_80_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_80_sel is
        when "0" => c_80 <= c_80_51_0_False_shift;
        when others => c_80 <= c_80_51_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 81 and associated fundamentals [[-282], [566], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 82 and associated fundamentals [[-282], [566], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 83 and associated fundamentals [[-282], [566], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 84 and associated fundamentals [[-282], [566], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 85 and associated fundamentals [[455], [566], [156]]
  c_85_84_0_False_resize <= c_84;
  c_85_84_0_False_shift <= shift_left(c_85_84_0_False_resize, 0);
  c_85_68_0_False_resize <= c_68;
  c_85_68_0_False_shift <= shift_left(c_85_68_0_False_resize, 0);
  with config_select_15 select c_85_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_85_sel is
        when "0" => c_85 <= c_85_84_0_False_shift;
        when others => c_85 <= c_85_68_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 86 and associated fundamentals [[963], [20], [252]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 87 and associated fundamentals [[963], [20], [252]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 88 and associated fundamentals [[963], [20], [252]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 89 and associated fundamentals [[963], [20], [252]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 90 and associated fundamentals [[963], [20], [252]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 91 and associated fundamentals [[963], [20], [252]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 92 and associated fundamentals [[963], [20], [252]]
  c_92_resize <= c_91;
  c_92 <= shift_left(c_92_resize, 0);
  -- node of type 'output' in stage 15 with id 93 and associated fundamentals [[955], [808], [209]]
  c_93_resize <= c_78;
  c_93 <= -shift_left(c_93_resize, 0);
  -- node of type 'register' in stage 12 with id 94 and associated fundamentals [[-564], [-211], [-610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 95 and associated fundamentals [[-564], [-211], [-610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_95 <= c_94 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 96 and associated fundamentals [[-564], [-211], [-610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_95 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 97 and associated fundamentals [[-564], [-211], [-610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 98 and associated fundamentals [[564], [211], [610]]
  c_98_resize <= c_97;
  c_98 <= -shift_left(c_98_resize, 0);
  -- node of type 'register' in stage 14 with id 99 and associated fundamentals [[91], [922], [658]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 15 with id 100 and associated fundamentals [[91], [922], [658]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 101 and associated fundamentals [[91], [922], [658]]
  c_101_resize <= c_100;
  c_101 <= shift_left(c_101_resize, 0);
  -- node of type 'output' in stage 15 with id 102 and associated fundamentals [[455], [566], [156]]
  c_102_resize <= c_85;
  c_102 <= shift_left(c_102_resize, 0);
end architecture;

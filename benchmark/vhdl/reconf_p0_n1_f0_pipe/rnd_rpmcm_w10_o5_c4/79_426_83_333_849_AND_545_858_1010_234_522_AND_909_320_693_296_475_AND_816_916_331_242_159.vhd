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
    y_3: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(22 downto 0);
  signal c_1_0_0_False_resize: signed(22 downto 0);
  signal c_1_0_0_False_shift: signed(22 downto 0);
  signal c_1_0_7_False_resize: signed(22 downto 0);
  signal c_1_0_7_False_shift: signed(22 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
  signal c_2_0_0_False_resize: signed(17 downto 0);
  signal c_2_0_0_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_5_1_False_resize: signed(18 downto 0);
  signal c_6_5_1_False_shift: signed(18 downto 0);
  signal c_6_3_0_False_resize: signed(18 downto 0);
  signal c_6_3_0_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_3_4_False_resize: signed(23 downto 0);
  signal c_7_3_4_False_shift: signed(23 downto 0);
  signal c_7_5_8_False_resize: signed(23 downto 0);
  signal c_7_5_8_False_shift: signed(23 downto 0);
  signal c_7_5_0_False_resize: signed(23 downto 0);
  signal c_7_5_0_False_shift: signed(23 downto 0);
  signal c_7_5_6_False_resize: signed(23 downto 0);
  signal c_7_5_6_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_8_2_False_resize: signed(23 downto 0);
  signal c_9_8_2_False_shift: signed(23 downto 0);
  signal c_9_8_0_False_resize: signed(23 downto 0);
  signal c_9_8_0_False_shift: signed(23 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_11_5_False_resize: signed(22 downto 0);
  signal c_14_11_5_False_shift: signed(22 downto 0);
  signal c_14_8_2_False_resize: signed(22 downto 0);
  signal c_14_8_2_False_shift: signed(22 downto 0);
  signal c_14_13_0_False_resize: signed(22 downto 0);
  signal c_14_13_0_False_shift: signed(22 downto 0);
  signal c_14_13_5_False_resize: signed(22 downto 0);
  signal c_14_13_5_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(15 downto 0);
  signal c_17: signed(15 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_19_0_False_resize: signed(23 downto 0);
  signal c_20_19_0_False_shift: signed(23 downto 0);
  signal c_20_17_1_False_resize: signed(23 downto 0);
  signal c_20_17_1_False_shift: signed(23 downto 0);
  signal c_20_15_2_False_resize: signed(23 downto 0);
  signal c_20_15_2_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_15_0_False_resize: signed(24 downto 0);
  signal c_23_15_0_False_shift: signed(24 downto 0);
  signal c_23_19_1_False_resize: signed(24 downto 0);
  signal c_23_19_1_False_shift: signed(24 downto 0);
  signal c_23_22_3_False_resize: signed(24 downto 0);
  signal c_23_22_3_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_i0_resize: signed(24 downto 0);
  signal c_24_i1_resize: signed(24 downto 0);
  signal c_24_i0_shift: signed(24 downto 0);
  signal c_24_i1_shift: signed(24 downto 0);
  signal c_24_arith: signed(24 downto 0);
  signal c_24_oshift: signed(24 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(22 downto 0);
  signal c_25_3_0_False_resize: signed(22 downto 0);
  signal c_25_3_0_False_shift: signed(22 downto 0);
  signal c_25_5_0_False_resize: signed(22 downto 0);
  signal c_25_5_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_15_0_False_resize: signed(24 downto 0);
  signal c_26_15_0_False_shift: signed(24 downto 0);
  signal c_26_22_0_False_resize: signed(24 downto 0);
  signal c_26_22_0_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_i0_resize: signed(25 downto 0);
  signal c_31_i1_resize: signed(25 downto 0);
  signal c_31_i0_shift: signed(25 downto 0);
  signal c_31_i1_shift: signed(25 downto 0);
  signal c_31_arith: signed(25 downto 0);
  signal c_31_oshift: signed(25 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(22 downto 0);
  signal c_32_8_1_False_resize: signed(22 downto 0);
  signal c_32_8_1_False_shift: signed(22 downto 0);
  signal c_32_13_0_False_resize: signed(22 downto 0);
  signal c_32_13_0_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_15_2_False_resize: signed(23 downto 0);
  signal c_33_15_2_False_shift: signed(23 downto 0);
  signal c_33_17_8_False_resize: signed(23 downto 0);
  signal c_33_17_8_False_shift: signed(23 downto 0);
  signal c_33_17_0_False_resize: signed(23 downto 0);
  signal c_33_17_0_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_i0_resize: signed(24 downto 0);
  signal c_36_i1_resize: signed(24 downto 0);
  signal c_36_i0_shift: signed(24 downto 0);
  signal c_36_i1_shift: signed(24 downto 0);
  signal c_36_arith: signed(24 downto 0);
  signal c_36_oshift: signed(24 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(15 downto 0);
  signal c_38: signed(15 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_36_0_False_resize: signed(25 downto 0);
  signal c_39_36_0_False_shift: signed(25 downto 0);
  signal c_39_31_0_False_resize: signed(25 downto 0);
  signal c_39_31_0_False_shift: signed(25 downto 0);
  signal c_39_38_2_False_resize: signed(25 downto 0);
  signal c_39_38_2_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_40_8_0_False_resize: signed(21 downto 0);
  signal c_40_8_0_False_shift: signed(21 downto 0);
  signal c_40_13_1_False_resize: signed(21 downto 0);
  signal c_40_13_1_False_shift: signed(21 downto 0);
  signal c_40_11_0_False_resize: signed(21 downto 0);
  signal c_40_11_0_False_shift: signed(21 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(21 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_43: signed(21 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(24 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_48: signed(26 downto 0);
  signal c_48_45_0_False_resize: signed(26 downto 0);
  signal c_48_45_0_False_shift: signed(26 downto 0);
  signal c_48_45_4_False_resize: signed(26 downto 0);
  signal c_48_45_4_False_shift: signed(26 downto 0);
  signal c_48_47_4_False_resize: signed(26 downto 0);
  signal c_48_47_4_False_shift: signed(26 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_49_19_0_False_resize: signed(24 downto 0);
  signal c_49_19_0_False_shift: signed(24 downto 0);
  signal c_49_15_0_False_resize: signed(24 downto 0);
  signal c_49_15_0_False_shift: signed(24 downto 0);
  signal c_49_sel: std_logic_vector(0 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_i0_resize: signed(25 downto 0);
  signal c_54_i1_resize: signed(25 downto 0);
  signal c_54_i0_shift: signed(25 downto 0);
  signal c_54_i1_shift: signed(25 downto 0);
  signal c_54_arith: signed(25 downto 0);
  signal c_54_oshift: signed(25 downto 0);
  signal c_54_sub_sel: std_logic;
  signal c_55: signed(24 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_57: signed(24 downto 0);
  signal c_58: signed(24 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_58_4_False_resize: signed(25 downto 0);
  signal c_59_58_4_False_shift: signed(25 downto 0);
  signal c_59_45_0_False_resize: signed(25 downto 0);
  signal c_59_45_0_False_shift: signed(25 downto 0);
  signal c_59_sel: std_logic_vector(0 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(22 downto 0);
  signal c_64: signed(22 downto 0);
  signal c_65: signed(22 downto 0);
  signal c_66: signed(24 downto 0);
  signal c_67: signed(24 downto 0);
  signal c_68: signed(24 downto 0);
  signal c_69: signed(24 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_65_6_False_resize: signed(25 downto 0);
  signal c_70_65_6_False_shift: signed(25 downto 0);
  signal c_70_67_0_False_resize: signed(25 downto 0);
  signal c_70_67_0_False_shift: signed(25 downto 0);
  signal c_70_69_1_False_resize: signed(25 downto 0);
  signal c_70_69_1_False_shift: signed(25 downto 0);
  signal c_70_54_0_False_resize: signed(25 downto 0);
  signal c_70_54_0_False_shift: signed(25 downto 0);
  signal c_70_sel: std_logic_vector(1 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_36_0_False_resize: signed(25 downto 0);
  signal c_71_36_0_False_shift: signed(25 downto 0);
  signal c_71_31_0_False_resize: signed(25 downto 0);
  signal c_71_31_0_False_shift: signed(25 downto 0);
  signal c_71_31_1_False_resize: signed(25 downto 0);
  signal c_71_31_1_False_shift: signed(25 downto 0);
  signal c_71_sel: std_logic_vector(1 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_72_36_1_False_resize: signed(24 downto 0);
  signal c_72_36_1_False_shift: signed(24 downto 0);
  signal c_72_31_1_False_resize: signed(24 downto 0);
  signal c_72_31_1_False_shift: signed(24 downto 0);
  signal c_72_24_0_False_resize: signed(24 downto 0);
  signal c_72_24_0_False_shift: signed(24 downto 0);
  signal c_72_sel: std_logic_vector(1 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_77: signed(24 downto 0);
  signal c_78: signed(24 downto 0);
  signal c_79: signed(24 downto 0);
  signal c_80: signed(24 downto 0);
  signal c_81: signed(25 downto 0);
  signal c_81_54_0_False_resize: signed(25 downto 0);
  signal c_81_54_0_False_shift: signed(25 downto 0);
  signal c_81_80_1_False_resize: signed(25 downto 0);
  signal c_81_80_1_False_shift: signed(25 downto 0);
  signal c_81_76_0_False_resize: signed(25 downto 0);
  signal c_81_76_0_False_shift: signed(25 downto 0);
  signal c_81_sel: std_logic_vector(1 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_84: signed(25 downto 0);
  signal c_84_resize: signed(25 downto 0);
  signal c_85: signed(25 downto 0);
  signal c_85_resize: signed(25 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_90_resize: signed(25 downto 0);
  signal c_91: signed(24 downto 0);
  signal c_92: signed(24 downto 0);
  signal c_93: signed(24 downto 0);
  signal c_94: signed(24 downto 0);
  signal c_95: signed(24 downto 0);
  signal c_95_resize: signed(24 downto 0);
  signal c_96: signed(25 downto 0);
  signal c_96_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 84
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_84);
    end if;
  end process;
  -- output node 1 with id 85
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_85);
    end if;
  end process;
  -- output node 2 with id 90
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_90);
    end if;
  end process;
  -- output node 3 with id 95
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_95);
    end if;
  end process;
  -- output node 4 with id 96
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_96);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [1], [128]]
  c_1_0_0_False_resize <= resize(c_0, 23);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_7_False_resize <= resize(c_0, 23);
  c_1_0_7_False_shift <= shift_left(c_1_0_7_False_resize, 7);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[4], [4], [4], [1]]
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  c_2_0_0_False_resize <= resize(c_0, 18);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_2_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-3], [5], [5], [127]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 18,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[-3], [2], [5], [2]]
  c_6_5_1_False_resize <= resize(c_5, 19);
  c_6_5_1_False_shift <= shift_left(c_6_5_1_False_resize, 1);
  c_6_3_0_False_resize <= c_3(18 downto 0);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_5_1_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[-48], [256], [64], [1]]
  c_7_3_4_False_resize <= resize(c_3, 24);
  c_7_3_4_False_shift <= shift_left(c_7_3_4_False_resize, 4);
  c_7_5_8_False_resize <= resize(c_5, 24);
  c_7_5_8_False_shift <= shift_left(c_7_5_8_False_resize, 8);
  c_7_5_0_False_resize <= resize(c_5, 24);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_5_6_False_resize <= resize(c_5, 24);
  c_7_5_6_False_shift <= shift_left(c_7_5_6_False_resize, 6);
  with config_select_3 select c_7_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_3_4_False_shift;
        when "01" => c_7 <= c_7_5_8_False_shift;
        when "10" => c_7 <= c_7_5_0_False_shift;
        when others => c_7 <= c_7_5_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 8 and associated fundamentals [[42], [-252], [-54], [3]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
      w_o => 24,
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
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 9 and associated fundamentals [[42], [-252], [-216], [3]]
  c_9_8_2_False_resize <= c_8;
  c_9_8_2_False_shift <= shift_left(c_9_8_2_False_resize, 2);
  c_9_8_0_False_resize <= c_8;
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_5 select c_9_sel <= 
    "0" when "10",
    "1" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_8_2_False_shift;
        when others => c_9 <= c_9_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[-3], [5], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[-3], [5], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[-96], [5], [32], [12]]
  c_14_11_5_False_resize <= resize(c_11, 23);
  c_14_11_5_False_shift <= shift_left(c_14_11_5_False_resize, 5);
  c_14_8_2_False_resize <= c_8(22 downto 0);
  c_14_8_2_False_shift <= shift_left(c_14_8_2_False_resize, 2);
  c_14_13_0_False_resize <= c_13;
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  c_14_13_5_False_resize <= c_13;
  c_14_13_5_False_shift <= shift_left(c_14_13_5_False_resize, 5);
  with config_select_5 select c_14_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_11_5_False_shift;
        when "01" => c_14 <= c_14_8_2_False_shift;
        when "10" => c_14 <= c_14_13_0_False_shift;
        when others => c_14 <= c_14_13_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[426], [-232], [-344], [51]]
  with config_select_6 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_15_sub_sel,
      x_i => c_9,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[-3], [5], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[-3], [5], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[-3], [2], [5], [204]]
  c_20_19_0_False_resize <= resize(c_19, 24);
  c_20_19_0_False_shift <= shift_left(c_20_19_0_False_resize, 0);
  c_20_17_1_False_resize <= resize(c_17, 24);
  c_20_17_1_False_shift <= shift_left(c_20_17_1_False_resize, 1);
  c_20_15_2_False_resize <= c_15(23 downto 0);
  c_20_15_2_False_shift <= shift_left(c_20_15_2_False_resize, 2);
  with config_select_7 select c_20_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_19_0_False_shift;
        when "01" => c_20 <= c_20_17_1_False_shift;
        when others => c_20 <= c_20_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[42], [-252], [-54], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[42], [-252], [-54], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[336], [-232], [10], [254]]
  c_23_15_0_False_resize <= c_15;
  c_23_15_0_False_shift <= shift_left(c_23_15_0_False_resize, 0);
  c_23_19_1_False_resize <= resize(c_19, 25);
  c_23_19_1_False_shift <= shift_left(c_23_19_1_False_resize, 1);
  c_23_22_3_False_resize <= resize(c_22, 25);
  c_23_22_3_False_shift <= shift_left(c_23_22_3_False_resize, 3);
  with config_select_7 select c_23_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_15_0_False_shift;
        when "01" => c_23 <= c_23_19_1_False_shift;
        when others => c_23 <= c_23_22_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 24 and associated fundamentals [[333], [234], [15], [458]]
  with config_select_8 select c_24_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
      w_o => 25,
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
      sub_i => c_24_sub_sel,
      x_i => c_20,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[-3], [1], [5], [127]]
  c_25_3_0_False_resize <= c_3;
  c_25_3_0_False_shift <= shift_left(c_25_3_0_False_resize, 0);
  c_25_5_0_False_resize <= resize(c_5, 23);
  c_25_5_0_False_shift <= shift_left(c_25_5_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_3_0_False_shift;
        when others => c_25 <= c_25_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[426], [-252], [-344], [3]]
  c_26_15_0_False_resize <= c_15;
  c_26_15_0_False_shift <= shift_left(c_26_15_0_False_resize, 0);
  c_26_22_0_False_resize <= resize(c_22, 25);
  c_26_22_0_False_shift <= shift_left(c_26_22_0_False_resize, 0);
  with config_select_7 select c_26_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_15_0_False_shift;
        when others => c_26 <= c_26_22_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 27 and associated fundamentals [[-3], [1], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[-3], [1], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[-3], [1], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[-3], [1], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 31 and associated fundamentals [[849], [505], [693], [121]]
  with config_select_8 select c_31_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_31_sub_sel,
      x_i => c_30,
      y_i => c_26,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 32 and associated fundamentals [[84], [5], [-108], [127]]
  c_32_8_1_False_resize <= c_8(22 downto 0);
  c_32_8_1_False_shift <= shift_left(c_32_8_1_False_resize, 1);
  c_32_13_0_False_resize <= c_13;
  c_32_13_0_False_shift <= shift_left(c_32_13_0_False_resize, 0);
  with config_select_5 select c_32_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_8_1_False_shift;
        when others => c_32 <= c_32_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 33 and associated fundamentals [[1], [256], [256], [204]]
  c_33_15_2_False_resize <= c_15(23 downto 0);
  c_33_15_2_False_shift <= shift_left(c_33_15_2_False_resize, 2);
  c_33_17_8_False_resize <= resize(c_17, 24);
  c_33_17_8_False_shift <= shift_left(c_33_17_8_False_resize, 8);
  c_33_17_0_False_resize <= resize(c_17, 24);
  c_33_17_0_False_shift <= shift_left(c_33_17_0_False_resize, 0);
  with config_select_7 select c_33_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_15_2_False_shift;
        when "01" => c_33 <= c_33_17_8_False_shift;
        when others => c_33 <= c_33_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[84], [5], [-108], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[84], [5], [-108], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 36 and associated fundamentals [[83], [261], [148], [331]]
  with config_select_8 select c_36_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_36_sub_sel,
      x_i => c_35,
      y_i => c_33,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 39 and associated fundamentals [[83], [505], [693], [4]]
  c_39_36_0_False_resize <= resize(c_36, 26);
  c_39_36_0_False_shift <= shift_left(c_39_36_0_False_resize, 0);
  c_39_31_0_False_resize <= c_31;
  c_39_31_0_False_shift <= shift_left(c_39_31_0_False_resize, 0);
  c_39_38_2_False_resize <= resize(c_38, 26);
  c_39_38_2_False_shift <= shift_left(c_39_38_2_False_resize, 2);
  with config_select_9 select c_39_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_36_0_False_shift;
        when "01" => c_39 <= c_39_31_0_False_shift;
        when others => c_39 <= c_39_38_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 40 and associated fundamentals [[1], [10], [-54], [3]]
  c_40_8_0_False_resize <= c_8(21 downto 0);
  c_40_8_0_False_shift <= shift_left(c_40_8_0_False_resize, 0);
  c_40_13_1_False_resize <= c_13(21 downto 0);
  c_40_13_1_False_shift <= shift_left(c_40_13_1_False_resize, 1);
  c_40_11_0_False_resize <= resize(c_11, 22);
  c_40_11_0_False_shift <= shift_left(c_40_11_0_False_resize, 0);
  with config_select_5 select c_40_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_8_0_False_shift;
        when "01" => c_40 <= c_40_13_1_False_shift;
        when others => c_40 <= c_40_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 41 and associated fundamentals [[1], [10], [-54], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[1], [10], [-54], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[1], [10], [-54], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[1], [10], [-54], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 45 and associated fundamentals [[79], [545], [909], [16]]
  with config_select_10 select c_45_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
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
      sub_i => c_45_sub_sel,
      x_i => c_39,
      y_i => c_44,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[333], [234], [15], [458]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[333], [234], [15], [458]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 48 and associated fundamentals [[1264], [545], [240], [16]]
  c_48_45_0_False_resize <= resize(c_45, 27);
  c_48_45_0_False_shift <= shift_left(c_48_45_0_False_resize, 0);
  c_48_45_4_False_resize <= resize(c_45, 27);
  c_48_45_4_False_shift <= shift_left(c_48_45_4_False_resize, 4);
  c_48_47_4_False_resize <= resize(c_47, 27);
  c_48_47_4_False_shift <= shift_left(c_48_47_4_False_resize, 4);
  with config_select_11 select c_48_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_45_0_False_shift;
        when "01" => c_48 <= c_48_45_4_False_shift;
        when others => c_48 <= c_48_47_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 49 and associated fundamentals [[426], [-232], [5], [127]]
  c_49_19_0_False_resize <= resize(c_19, 25);
  c_49_19_0_False_shift <= shift_left(c_49_19_0_False_resize, 0);
  c_49_15_0_False_resize <= c_15;
  c_49_15_0_False_shift <= shift_left(c_49_15_0_False_resize, 0);
  with config_select_7 select c_49_sel <= 
    "0" when "10",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "0" => c_49 <= c_49_19_0_False_shift;
        when others => c_49 <= c_49_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[426], [-232], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[426], [-232], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[426], [-232], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 53 and associated fundamentals [[426], [-232], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 54 and associated fundamentals [[2954], [858], [475], [159]]
  with config_select_12 select c_54_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_54: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_54_sub_sel,
      x_i => c_48,
      y_i => c_53,
      z_o => c_54_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_54_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 55 and associated fundamentals [[426], [-232], [-344], [51]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[426], [-232], [-344], [51]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[426], [-232], [-344], [51]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[426], [-232], [-344], [51]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 59 and associated fundamentals [[79], [545], [909], [816]]
  c_59_58_4_False_resize <= resize(c_58, 26);
  c_59_58_4_False_shift <= shift_left(c_59_58_4_False_resize, 4);
  c_59_45_0_False_resize <= c_45;
  c_59_45_0_False_shift <= shift_left(c_59_45_0_False_resize, 0);
  with config_select_11 select c_59_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "0" => c_59 <= c_59_58_4_False_shift;
        when others => c_59 <= c_59_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 60 and associated fundamentals [[-3], [5], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 61 and associated fundamentals [[-3], [5], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[-3], [5], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[-3], [5], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 64 and associated fundamentals [[-3], [5], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 65 and associated fundamentals [[-3], [5], [5], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 66 and associated fundamentals [[426], [-232], [-344], [51]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 67 and associated fundamentals [[426], [-232], [-344], [51]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 68 and associated fundamentals [[333], [234], [15], [458]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 69 and associated fundamentals [[333], [234], [15], [458]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 70 and associated fundamentals [[426], [858], [320], [916]]
  c_70_65_6_False_resize <= resize(c_65, 26);
  c_70_65_6_False_shift <= shift_left(c_70_65_6_False_resize, 6);
  c_70_67_0_False_resize <= resize(c_67, 26);
  c_70_67_0_False_shift <= shift_left(c_70_67_0_False_resize, 0);
  c_70_69_1_False_resize <= resize(c_69, 26);
  c_70_69_1_False_shift <= shift_left(c_70_69_1_False_resize, 1);
  c_70_54_0_False_resize <= c_54;
  c_70_54_0_False_shift <= shift_left(c_70_54_0_False_resize, 0);
  with config_select_13 select c_70_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "00" => c_70 <= c_70_65_6_False_shift;
        when "01" => c_70 <= c_70_67_0_False_shift;
        when "10" => c_70 <= c_70_69_1_False_shift;
        when others => c_70 <= c_70_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 71 and associated fundamentals [[83], [1010], [693], [331]]
  c_71_36_0_False_resize <= resize(c_36, 26);
  c_71_36_0_False_shift <= shift_left(c_71_36_0_False_resize, 0);
  c_71_31_0_False_resize <= c_31;
  c_71_31_0_False_shift <= shift_left(c_71_31_0_False_resize, 0);
  c_71_31_1_False_resize <= c_31;
  c_71_31_1_False_shift <= shift_left(c_71_31_1_False_resize, 1);
  with config_select_9 select c_71_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_71_sel is
        when "00" => c_71 <= c_71_36_0_False_shift;
        when "01" => c_71 <= c_71_31_0_False_shift;
        when others => c_71 <= c_71_31_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 72 and associated fundamentals [[333], [234], [296], [242]]
  c_72_36_1_False_resize <= c_36;
  c_72_36_1_False_shift <= shift_left(c_72_36_1_False_resize, 1);
  c_72_31_1_False_resize <= c_31(24 downto 0);
  c_72_31_1_False_shift <= shift_left(c_72_31_1_False_resize, 1);
  c_72_24_0_False_resize <= c_24;
  c_72_24_0_False_shift <= shift_left(c_72_24_0_False_resize, 0);
  with config_select_9 select c_72_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "00" => c_72 <= c_72_36_1_False_shift;
        when "01" => c_72 <= c_72_31_1_False_shift;
        when others => c_72 <= c_72_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 73 and associated fundamentals [[849], [505], [693], [121]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 74 and associated fundamentals [[849], [505], [693], [121]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 75 and associated fundamentals [[849], [505], [693], [121]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 76 and associated fundamentals [[849], [505], [693], [121]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 77 and associated fundamentals [[83], [261], [148], [331]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 78 and associated fundamentals [[83], [261], [148], [331]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 79 and associated fundamentals [[83], [261], [148], [331]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 80 and associated fundamentals [[83], [261], [148], [331]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 81 and associated fundamentals [[849], [522], [475], [159]]
  c_81_54_0_False_resize <= c_54;
  c_81_54_0_False_shift <= shift_left(c_81_54_0_False_resize, 0);
  c_81_80_1_False_resize <= resize(c_80, 26);
  c_81_80_1_False_shift <= shift_left(c_81_80_1_False_resize, 1);
  c_81_76_0_False_resize <= c_76;
  c_81_76_0_False_shift <= shift_left(c_81_76_0_False_resize, 0);
  with config_select_13 select c_81_sel <= 
    "00" when "11",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_81_sel is
        when "00" => c_81 <= c_81_54_0_False_shift;
        when "01" => c_81 <= c_81_80_1_False_shift;
        when others => c_81 <= c_81_76_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 82 and associated fundamentals [[79], [545], [909], [816]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 83 and associated fundamentals [[79], [545], [909], [816]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 84 and associated fundamentals [[79], [545], [909], [816]]
  c_84_resize <= c_83;
  c_84 <= shift_left(c_84_resize, 0);
  -- node of type 'output' in stage 13 with id 85 and associated fundamentals [[426], [858], [320], [916]]
  c_85_resize <= c_70;
  c_85 <= shift_left(c_85_resize, 0);
  -- node of type 'register' in stage 10 with id 86 and associated fundamentals [[83], [1010], [693], [331]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 87 and associated fundamentals [[83], [1010], [693], [331]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_87 <= c_86 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 88 and associated fundamentals [[83], [1010], [693], [331]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_88 <= c_87 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 89 and associated fundamentals [[83], [1010], [693], [331]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_88 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 90 and associated fundamentals [[83], [1010], [693], [331]]
  c_90_resize <= c_89;
  c_90 <= shift_left(c_90_resize, 0);
  -- node of type 'register' in stage 10 with id 91 and associated fundamentals [[333], [234], [296], [242]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_72 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 92 and associated fundamentals [[333], [234], [296], [242]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_92 <= c_91 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 93 and associated fundamentals [[333], [234], [296], [242]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_93 <= c_92 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 94 and associated fundamentals [[333], [234], [296], [242]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_93 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 95 and associated fundamentals [[333], [234], [296], [242]]
  c_95_resize <= c_94;
  c_95 <= shift_left(c_95_resize, 0);
  -- node of type 'output' in stage 13 with id 96 and associated fundamentals [[849], [522], [475], [159]]
  c_96_resize <= c_81;
  c_96 <= shift_left(c_96_resize, 0);
end architecture;

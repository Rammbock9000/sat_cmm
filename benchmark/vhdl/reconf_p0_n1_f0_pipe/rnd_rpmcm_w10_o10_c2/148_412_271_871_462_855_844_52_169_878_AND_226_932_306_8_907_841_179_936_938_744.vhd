library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(24 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    y_5: out std_logic_vector(25 downto 0);
    y_6: out std_logic_vector(25 downto 0);
    y_7: out std_logic_vector(25 downto 0);
    y_8: out std_logic_vector(25 downto 0);
    y_9: out std_logic_vector(25 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(0 downto 0);
  signal config_select_1: std_logic_vector(0 downto 0);
  signal config_select_2: std_logic_vector(0 downto 0);
  signal config_select_3: std_logic_vector(0 downto 0);
  signal config_select_4: std_logic_vector(0 downto 0);
  signal config_select_5: std_logic_vector(0 downto 0);
  signal config_select_6: std_logic_vector(0 downto 0);
  signal config_select_7: std_logic_vector(0 downto 0);
  signal config_select_8: std_logic_vector(0 downto 0);
  signal config_select_9: std_logic_vector(0 downto 0);
  signal config_select_10: std_logic_vector(0 downto 0);
  signal config_select_11: std_logic_vector(0 downto 0);
  signal config_select_12: std_logic_vector(0 downto 0);
  signal config_select_13: std_logic_vector(0 downto 0);
  signal config_select_14: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_3_0_False_resize: signed(21 downto 0);
  signal c_4_3_0_False_shift: signed(21 downto 0);
  signal c_4_3_1_False_resize: signed(21 downto 0);
  signal c_4_3_1_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_i0_resize: signed(24 downto 0);
  signal c_7_i1_resize: signed(24 downto 0);
  signal c_7_i0_shift: signed(24 downto 0);
  signal c_7_i1_shift: signed(24 downto 0);
  signal c_7_arith: signed(24 downto 0);
  signal c_7_oshift: signed(24 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(20 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_9_0_False_resize: signed(22 downto 0);
  signal c_10_9_0_False_shift: signed(22 downto 0);
  signal c_10_7_0_False_resize: signed(22 downto 0);
  signal c_10_7_0_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(25 downto 0);
  signal c_14_5_0_False_resize: signed(25 downto 0);
  signal c_14_5_0_False_shift: signed(25 downto 0);
  signal c_14_3_6_False_resize: signed(25 downto 0);
  signal c_14_3_6_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_i0_resize: signed(22 downto 0);
  signal c_18_i1_resize: signed(22 downto 0);
  signal c_18_i0_shift: signed(22 downto 0);
  signal c_18_i1_shift: signed(22 downto 0);
  signal c_18_arith: signed(22 downto 0);
  signal c_18_oshift: signed(22 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_7_0_False_resize: signed(24 downto 0);
  signal c_19_7_0_False_shift: signed(24 downto 0);
  signal c_19_9_4_False_resize: signed(24 downto 0);
  signal c_19_9_4_False_shift: signed(24 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(22 downto 0);
  signal c_23_18_1_False_resize: signed(22 downto 0);
  signal c_23_18_1_False_shift: signed(22 downto 0);
  signal c_23_18_0_False_resize: signed(22 downto 0);
  signal c_23_18_0_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_7_1_False_resize: signed(24 downto 0);
  signal c_24_7_1_False_shift: signed(24 downto 0);
  signal c_24_7_0_False_resize: signed(24 downto 0);
  signal c_24_7_0_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_i0_resize: signed(24 downto 0);
  signal c_28_i1_resize: signed(24 downto 0);
  signal c_28_i0_shift: signed(24 downto 0);
  signal c_28_i1_shift: signed(24 downto 0);
  signal c_28_arith: signed(24 downto 0);
  signal c_28_oshift: signed(24 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(15 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_13_0_False_resize: signed(23 downto 0);
  signal c_32_13_0_False_shift: signed(23 downto 0);
  signal c_32_31_8_False_resize: signed(23 downto 0);
  signal c_32_31_8_False_shift: signed(23 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_22_0_False_resize: signed(23 downto 0);
  signal c_35_22_0_False_shift: signed(23 downto 0);
  signal c_35_34_0_False_resize: signed(23 downto 0);
  signal c_35_34_0_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_i0_resize: signed(25 downto 0);
  signal c_38_i1_resize: signed(25 downto 0);
  signal c_38_i0_shift: signed(25 downto 0);
  signal c_38_i1_shift: signed(25 downto 0);
  signal c_38_arith: signed(25 downto 0);
  signal c_38_oshift: signed(25 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(20 downto 0);
  signal c_40: signed(20 downto 0);
  signal c_41: signed(20 downto 0);
  signal c_42: signed(20 downto 0);
  signal c_43: signed(20 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_i0_resize: signed(24 downto 0);
  signal c_44_i1_resize: signed(24 downto 0);
  signal c_44_i0_shift: signed(24 downto 0);
  signal c_44_i1_shift: signed(24 downto 0);
  signal c_44_arith: signed(24 downto 0);
  signal c_44_oshift: signed(23 downto 0);
  signal c_45: signed(15 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_46_45_4_False_resize: signed(24 downto 0);
  signal c_46_45_4_False_shift: signed(24 downto 0);
  signal c_46_28_0_False_resize: signed(24 downto 0);
  signal c_46_28_0_False_shift: signed(24 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_i0_resize: signed(25 downto 0);
  signal c_47_i1_resize: signed(25 downto 0);
  signal c_47_i0_shift: signed(25 downto 0);
  signal c_47_i1_shift: signed(25 downto 0);
  signal c_47_arith: signed(25 downto 0);
  signal c_47_oshift: signed(25 downto 0);
  signal c_47_sub_sel: std_logic;
  signal c_48: signed(17 downto 0);
  signal c_48_0_2_False_resize: signed(17 downto 0);
  signal c_48_0_2_False_shift: signed(17 downto 0);
  signal c_48_0_0_False_resize: signed(17 downto 0);
  signal c_48_0_0_False_shift: signed(17 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_18_1_False_resize: signed(23 downto 0);
  signal c_50_18_1_False_shift: signed(23 downto 0);
  signal c_50_49_0_False_resize: signed(23 downto 0);
  signal c_50_49_0_False_shift: signed(23 downto 0);
  signal c_50_sel: std_logic_vector(0 downto 0);
  signal c_51: signed(17 downto 0);
  signal c_52: signed(17 downto 0);
  signal c_53: signed(17 downto 0);
  signal c_54: signed(17 downto 0);
  signal c_55: signed(17 downto 0);
  signal c_56: signed(17 downto 0);
  signal c_57: signed(17 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_i0_resize: signed(25 downto 0);
  signal c_58_i1_resize: signed(25 downto 0);
  signal c_58_i0_shift: signed(25 downto 0);
  signal c_58_i1_shift: signed(25 downto 0);
  signal c_58_arith: signed(25 downto 0);
  signal c_58_oshift: signed(25 downto 0);
  signal c_58_sub_sel: std_logic;
  signal c_59: signed(24 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_61: signed(24 downto 0);
  signal c_62: signed(24 downto 0);
  signal c_63: signed(24 downto 0);
  signal c_64: signed(22 downto 0);
  signal c_64_30_1_False_resize: signed(22 downto 0);
  signal c_64_30_1_False_shift: signed(22 downto 0);
  signal c_64_63_0_False_resize: signed(22 downto 0);
  signal c_64_63_0_False_shift: signed(22 downto 0);
  signal c_64_sel: std_logic_vector(0 downto 0);
  signal c_65: signed(22 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_66_65_0_False_resize: signed(23 downto 0);
  signal c_66_65_0_False_shift: signed(23 downto 0);
  signal c_66_30_0_False_resize: signed(23 downto 0);
  signal c_66_30_0_False_shift: signed(23 downto 0);
  signal c_66_sel: std_logic_vector(0 downto 0);
  signal c_67: signed(24 downto 0);
  signal c_67_62_0_False_resize: signed(24 downto 0);
  signal c_67_62_0_False_shift: signed(24 downto 0);
  signal c_67_22_1_False_resize: signed(24 downto 0);
  signal c_67_22_1_False_shift: signed(24 downto 0);
  signal c_67_sel: std_logic_vector(0 downto 0);
  signal c_68: signed(15 downto 0);
  signal c_69: signed(15 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_47_0_False_resize: signed(25 downto 0);
  signal c_70_47_0_False_shift: signed(25 downto 0);
  signal c_70_69_3_False_resize: signed(25 downto 0);
  signal c_70_69_3_False_shift: signed(25 downto 0);
  signal c_70_sel: std_logic_vector(0 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_72_71_0_False_resize: signed(25 downto 0);
  signal c_72_71_0_False_shift: signed(25 downto 0);
  signal c_72_47_0_False_resize: signed(25 downto 0);
  signal c_72_47_0_False_shift: signed(25 downto 0);
  signal c_72_sel: std_logic_vector(0 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_44_2_False_resize: signed(25 downto 0);
  signal c_73_44_2_False_shift: signed(25 downto 0);
  signal c_73_44_0_False_resize: signed(25 downto 0);
  signal c_73_44_0_False_shift: signed(25 downto 0);
  signal c_73_sel: std_logic_vector(0 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_74_13_1_False_resize: signed(23 downto 0);
  signal c_74_13_1_False_shift: signed(23 downto 0);
  signal c_74_13_0_False_resize: signed(23 downto 0);
  signal c_74_13_0_False_shift: signed(23 downto 0);
  signal c_74_sel: std_logic_vector(0 downto 0);
  signal c_75: signed(23 downto 0);
  signal c_76: signed(23 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_77_38_1_False_resize: signed(25 downto 0);
  signal c_77_38_1_False_shift: signed(25 downto 0);
  signal c_77_76_0_False_resize: signed(25 downto 0);
  signal c_77_76_0_False_shift: signed(25 downto 0);
  signal c_77_sel: std_logic_vector(0 downto 0);
  signal c_78: signed(22 downto 0);
  signal c_79: signed(22 downto 0);
  signal c_80: signed(23 downto 0);
  signal c_80_resize: signed(23 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_83: signed(25 downto 0);
  signal c_83_resize: signed(25 downto 0);
  signal c_84: signed(24 downto 0);
  signal c_85: signed(24 downto 0);
  signal c_86: signed(24 downto 0);
  signal c_87: signed(24 downto 0);
  signal c_87_resize: signed(24 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_88_resize: signed(25 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_91: signed(25 downto 0);
  signal c_92: signed(25 downto 0);
  signal c_92_resize: signed(25 downto 0);
  signal c_93: signed(25 downto 0);
  signal c_93_resize: signed(25 downto 0);
  signal c_94: signed(25 downto 0);
  signal c_95: signed(25 downto 0);
  signal c_95_resize: signed(25 downto 0);
  signal c_96: signed(23 downto 0);
  signal c_97: signed(23 downto 0);
  signal c_98: signed(23 downto 0);
  signal c_99: signed(23 downto 0);
  signal c_100: signed(23 downto 0);
  signal c_101: signed(25 downto 0);
  signal c_101_resize: signed(25 downto 0);
  signal c_102: signed(25 downto 0);
  signal c_103: signed(25 downto 0);
  signal c_103_resize: signed(25 downto 0);
  signal c_104: signed(24 downto 0);
  signal c_105: signed(24 downto 0);
  signal c_106: signed(24 downto 0);
  signal c_107: signed(25 downto 0);
  signal c_107_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 80
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_80);
    end if;
  end process;
  -- output node 1 with id 83
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_83);
    end if;
  end process;
  -- output node 2 with id 87
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_87);
    end if;
  end process;
  -- output node 3 with id 88
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_88);
    end if;
  end process;
  -- output node 4 with id 92
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_92);
    end if;
  end process;
  -- output node 5 with id 93
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_93);
    end if;
  end process;
  -- output node 6 with id 95
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_95);
    end if;
  end process;
  -- output node 7 with id 101
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_101);
    end if;
  end process;
  -- output node 8 with id 103
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_103);
    end if;
  end process;
  -- output node 9 with id 107
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_107);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2]]
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_1_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[17], [14]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
      w_o => 21,
      s_x_i => 4,
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
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[34], [14]]
  c_4_3_0_False_resize <= resize(c_3, 22);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_3_1_False_resize <= resize(c_3, 22);
  c_4_3_1_False_shift <= shift_left(c_4_3_1_False_resize, 1);
  with config_select_3 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_3_0_False_shift;
        when others => c_4 <= c_4_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[271], [113]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_7_sub_sel,
      x_i => c_4,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[17], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[17], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[17], [113]]
  c_10_9_0_False_resize <= resize(c_9, 23);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_7_0_False_resize <= c_7(22 downto 0);
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_9_0_False_shift;
        when others => c_10 <= c_10_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 12 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[13], [117]]
  with config_select_6 select c_13_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 23,
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
      sub_i => c_13_sub_sel,
      x_i => c_10,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[1], [896]]
  c_14_5_0_False_resize <= resize(c_5, 26);
  c_14_5_0_False_shift <= shift_left(c_14_5_0_False_resize, 0);
  c_14_3_6_False_resize <= resize(c_3, 26);
  c_14_3_6_False_shift <= shift_left(c_14_3_6_False_resize, 6);
  with config_select_3 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_5_0_False_shift;
        when others => c_14 <= c_14_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[1], [896]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[1], [896]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[1], [896]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 7 with id 18 and associated fundamentals [[103], [40]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 26,
      w_o => 23,
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
      x_i => c_13,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[272], [113]]
  c_19_7_0_False_resize <= c_7;
  c_19_7_0_False_shift <= shift_left(c_19_7_0_False_resize, 0);
  c_19_9_4_False_resize <= resize(c_9, 25);
  c_19_9_4_False_shift <= shift_left(c_19_9_4_False_resize, 4);
  with config_select_5 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_7_0_False_shift;
        when others => c_19 <= c_19_9_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[272], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 21 and associated fundamentals [[272], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 22 and associated fundamentals [[169], [153]]
  with config_select_8 select c_22_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
      sub_i => c_22_sub_sel,
      x_i => c_21,
      y_i => c_18,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 23 and associated fundamentals [[103], [80]]
  c_23_18_1_False_resize <= c_18;
  c_23_18_1_False_shift <= shift_left(c_23_18_1_False_resize, 1);
  c_23_18_0_False_resize <= c_18;
  c_23_18_0_False_shift <= shift_left(c_23_18_0_False_resize, 0);
  with config_select_8 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_18_1_False_shift;
        when others => c_23 <= c_23_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 24 and associated fundamentals [[271], [226]]
  c_24_7_1_False_resize <= c_7;
  c_24_7_1_False_shift <= shift_left(c_24_7_1_False_resize, 1);
  c_24_7_0_False_resize <= c_7;
  c_24_7_0_False_shift <= shift_left(c_24_7_0_False_resize, 0);
  with config_select_5 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_7_1_False_shift;
        when others => c_24 <= c_24_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[271], [226]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[271], [226]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 27 and associated fundamentals [[271], [226]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 9 with id 28 and associated fundamentals [[-439], [-372]]
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 25,
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
      x_i => c_23,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 29 and associated fundamentals [[103], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 30 and associated fundamentals [[37], [233]]
  with config_select_9 select c_30_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_30_sub_sel,
      x_i => c_29,
      y_i => c_22,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 32 and associated fundamentals [[256], [117]]
  c_32_13_0_False_resize <= resize(c_13, 24);
  c_32_13_0_False_shift <= shift_left(c_32_13_0_False_resize, 0);
  c_32_31_8_False_resize <= resize(c_31, 24);
  c_32_31_8_False_shift <= shift_left(c_32_31_8_False_resize, 8);
  with config_select_7 select c_32_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_13_0_False_shift;
        when others => c_32 <= c_32_31_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 35 and associated fundamentals [[169], [1]]
  c_35_22_0_False_resize <= c_22;
  c_35_22_0_False_shift <= shift_left(c_35_22_0_False_resize, 0);
  c_35_34_0_False_resize <= resize(c_34, 24);
  c_35_34_0_False_shift <= shift_left(c_35_34_0_False_resize, 0);
  with config_select_9 select c_35_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_22_0_False_shift;
        when others => c_35 <= c_35_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[256], [117]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 37 and associated fundamentals [[256], [117]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 38 and associated fundamentals [[855], [469]]
  with config_select_10 select c_38_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_38_sub_sel,
      x_i => c_37,
      y_i => c_35,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 39 and associated fundamentals [[17], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[17], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[17], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[17], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[17], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'add' in stage 10 with id 44 and associated fundamentals [[-211], [-179]]
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 25,
      w_o => 24,
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
      x_i => c_43,
      y_i => c_28,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 46 and associated fundamentals [[16], [-372]]
  c_46_45_4_False_resize <= resize(c_45, 25);
  c_46_45_4_False_shift <= shift_left(c_46_45_4_False_resize, 4);
  c_46_28_0_False_resize <= c_28;
  c_46_28_0_False_shift <= shift_left(c_46_28_0_False_resize, 0);
  with config_select_10 select c_46_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_45_4_False_shift;
        when others => c_46 <= c_46_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 47 and associated fundamentals [[871], [841]]
  with config_select_11 select c_47_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_47: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_47_sub_sel,
      x_i => c_38,
      y_i => c_46,
      z_o => c_47_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_47_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 48 and associated fundamentals [[1], [4]]
  c_48_0_2_False_resize <= resize(c_0, 18);
  c_48_0_2_False_shift <= shift_left(c_48_0_2_False_resize, 2);
  c_48_0_0_False_resize <= resize(c_0, 18);
  c_48_0_0_False_shift <= shift_left(c_48_0_0_False_resize, 0);
  with config_select_1 select c_48_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_0_2_False_shift;
        when others => c_48 <= c_48_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[13], [117]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 50 and associated fundamentals [[206], [117]]
  c_50_18_1_False_resize <= resize(c_18, 24);
  c_50_18_1_False_shift <= shift_left(c_50_18_1_False_resize, 1);
  c_50_49_0_False_resize <= resize(c_49, 24);
  c_50_49_0_False_shift <= shift_left(c_50_49_0_False_resize, 0);
  with config_select_8 select c_50_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "0" => c_50 <= c_50_18_1_False_shift;
        when others => c_50 <= c_50_49_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 51 and associated fundamentals [[1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 52 and associated fundamentals [[1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 53 and associated fundamentals [[1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 54 and associated fundamentals [[1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 55 and associated fundamentals [[1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 56 and associated fundamentals [[1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 57 and associated fundamentals [[1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 58 and associated fundamentals [[462], [907]]
  with config_select_9 select c_58_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_58: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_58_sub_sel,
      x_i => c_57,
      y_i => c_50,
      z_o => c_58_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_58_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 59 and associated fundamentals [[271], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 60 and associated fundamentals [[271], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 61 and associated fundamentals [[271], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 62 and associated fundamentals [[271], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 63 and associated fundamentals [[271], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 64 and associated fundamentals [[74], [113]]
  c_64_30_1_False_resize <= c_30(22 downto 0);
  c_64_30_1_False_shift <= shift_left(c_64_30_1_False_resize, 1);
  c_64_63_0_False_resize <= c_63(22 downto 0);
  c_64_63_0_False_shift <= shift_left(c_64_63_0_False_resize, 0);
  with config_select_10 select c_64_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_64_sel is
        when "0" => c_64 <= c_64_30_1_False_shift;
        when others => c_64 <= c_64_63_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 65 and associated fundamentals [[103], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 66 and associated fundamentals [[103], [233]]
  c_66_65_0_False_resize <= resize(c_65, 24);
  c_66_65_0_False_shift <= shift_left(c_66_65_0_False_resize, 0);
  c_66_30_0_False_resize <= c_30;
  c_66_30_0_False_shift <= shift_left(c_66_30_0_False_resize, 0);
  with config_select_10 select c_66_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_66_sel is
        when "0" => c_66 <= c_66_65_0_False_shift;
        when others => c_66 <= c_66_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 67 and associated fundamentals [[271], [306]]
  c_67_62_0_False_resize <= c_62;
  c_67_62_0_False_shift <= shift_left(c_67_62_0_False_resize, 0);
  c_67_22_1_False_resize <= resize(c_22, 25);
  c_67_22_1_False_shift <= shift_left(c_67_22_1_False_resize, 1);
  with config_select_9 select c_67_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_67_sel is
        when "0" => c_67 <= c_67_62_0_False_shift;
        when others => c_67 <= c_67_22_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 68 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 69 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 70 and associated fundamentals [[871], [8]]
  c_70_47_0_False_resize <= c_47;
  c_70_47_0_False_shift <= shift_left(c_70_47_0_False_resize, 0);
  c_70_69_3_False_resize <= resize(c_69, 26);
  c_70_69_3_False_shift <= shift_left(c_70_69_3_False_resize, 3);
  with config_select_12 select c_70_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_70_sel is
        when "0" => c_70 <= c_70_47_0_False_shift;
        when others => c_70 <= c_70_69_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 71 and associated fundamentals [[855], [469]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_38 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 72 and associated fundamentals [[855], [841]]
  c_72_71_0_False_resize <= c_71;
  c_72_71_0_False_shift <= shift_left(c_72_71_0_False_resize, 0);
  c_72_47_0_False_resize <= c_47;
  c_72_47_0_False_shift <= shift_left(c_72_47_0_False_resize, 0);
  with config_select_12 select c_72_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "0" => c_72 <= c_72_71_0_False_shift;
        when others => c_72 <= c_72_47_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 73 and associated fundamentals [[-844], [-179]]
  c_73_44_2_False_resize <= resize(c_44, 26);
  c_73_44_2_False_shift <= shift_left(c_73_44_2_False_resize, 2);
  c_73_44_0_False_resize <= resize(c_44, 26);
  c_73_44_0_False_shift <= shift_left(c_73_44_0_False_resize, 0);
  with config_select_11 select c_73_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "0" => c_73 <= c_73_44_2_False_shift;
        when others => c_73 <= c_73_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 74 and associated fundamentals [[13], [234]]
  c_74_13_1_False_resize <= resize(c_13, 24);
  c_74_13_1_False_shift <= shift_left(c_74_13_1_False_resize, 1);
  c_74_13_0_False_resize <= resize(c_13, 24);
  c_74_13_0_False_shift <= shift_left(c_74_13_0_False_resize, 0);
  with config_select_7 select c_74_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_74_sel is
        when "0" => c_74 <= c_74_13_1_False_shift;
        when others => c_74 <= c_74_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 75 and associated fundamentals [[169], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 76 and associated fundamentals [[169], [153]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 77 and associated fundamentals [[169], [938]]
  c_77_38_1_False_resize <= c_38;
  c_77_38_1_False_shift <= shift_left(c_77_38_1_False_resize, 1);
  c_77_76_0_False_resize <= resize(c_76, 26);
  c_77_76_0_False_shift <= shift_left(c_77_76_0_False_resize, 0);
  with config_select_11 select c_77_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "0" => c_77 <= c_77_38_1_False_shift;
        when others => c_77 <= c_77_76_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 78 and associated fundamentals [[74], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 79 and associated fundamentals [[74], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 80 and associated fundamentals [[148], [226]]
  c_80_resize <= resize(c_79, 24);
  c_80 <= shift_left(c_80_resize, 1);
  -- node of type 'register' in stage 11 with id 81 and associated fundamentals [[103], [233]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 82 and associated fundamentals [[103], [233]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 83 and associated fundamentals [[412], [932]]
  c_83_resize <= resize(c_82, 26);
  c_83 <= shift_left(c_83_resize, 2);
  -- node of type 'register' in stage 10 with id 84 and associated fundamentals [[271], [306]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 85 and associated fundamentals [[271], [306]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 86 and associated fundamentals [[271], [306]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_85 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 87 and associated fundamentals [[271], [306]]
  c_87_resize <= c_86;
  c_87 <= shift_left(c_87_resize, 0);
  -- node of type 'output' in stage 12 with id 88 and associated fundamentals [[871], [8]]
  c_88_resize <= c_70;
  c_88 <= shift_left(c_88_resize, 0);
  -- node of type 'register' in stage 10 with id 89 and associated fundamentals [[462], [907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_89 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 90 and associated fundamentals [[462], [907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_90 <= c_89 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 91 and associated fundamentals [[462], [907]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_91 <= c_90 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 92 and associated fundamentals [[462], [907]]
  c_92_resize <= c_91;
  c_92 <= shift_left(c_92_resize, 0);
  -- node of type 'output' in stage 12 with id 93 and associated fundamentals [[855], [841]]
  c_93_resize <= c_72;
  c_93 <= shift_left(c_93_resize, 0);
  -- node of type 'register' in stage 12 with id 94 and associated fundamentals [[-844], [-179]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_94 <= c_73 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 95 and associated fundamentals [[844], [179]]
  c_95_resize <= c_94;
  c_95 <= -shift_left(c_95_resize, 0);
  -- node of type 'register' in stage 8 with id 96 and associated fundamentals [[13], [234]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_96 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 97 and associated fundamentals [[13], [234]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_97 <= c_96 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 98 and associated fundamentals [[13], [234]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_98 <= c_97 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 99 and associated fundamentals [[13], [234]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_99 <= c_98 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 100 and associated fundamentals [[13], [234]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_100 <= c_99 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 101 and associated fundamentals [[52], [936]]
  c_101_resize <= resize(c_100, 26);
  c_101 <= shift_left(c_101_resize, 2);
  -- node of type 'register' in stage 12 with id 102 and associated fundamentals [[169], [938]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_102 <= c_77 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 103 and associated fundamentals [[169], [938]]
  c_103_resize <= c_102;
  c_103 <= shift_left(c_103_resize, 0);
  -- node of type 'register' in stage 10 with id 104 and associated fundamentals [[-439], [-372]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_104 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 105 and associated fundamentals [[-439], [-372]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_105 <= c_104 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 106 and associated fundamentals [[-439], [-372]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_106 <= c_105 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 107 and associated fundamentals [[878], [744]]
  c_107_resize <= resize(c_106, 26);
  c_107 <= -shift_left(c_107_resize, 1);
end architecture;

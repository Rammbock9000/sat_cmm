library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(22 downto 0);
    y_2: out std_logic_vector(22 downto 0);
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(22 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(22 downto 0);
    y_8: out std_logic_vector(23 downto 0);
    y_9: out std_logic_vector(23 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_i0_resize: signed(21 downto 0);
  signal c_1_i1_resize: signed(21 downto 0);
  signal c_1_i0_shift: signed(21 downto 0);
  signal c_1_i1_shift: signed(21 downto 0);
  signal c_1_arith: signed(21 downto 0);
  signal c_1_oshift: signed(21 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_i0_resize: signed(18 downto 0);
  signal c_4_i1_resize: signed(18 downto 0);
  signal c_4_i0_shift: signed(18 downto 0);
  signal c_4_i1_shift: signed(18 downto 0);
  signal c_4_arith: signed(18 downto 0);
  signal c_4_oshift: signed(18 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(21 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(15 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_9_2_False_resize: signed(22 downto 0);
  signal c_10_9_2_False_shift: signed(22 downto 0);
  signal c_10_8_0_False_resize: signed(22 downto 0);
  signal c_10_8_0_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_12_3_False_resize: signed(22 downto 0);
  signal c_13_12_3_False_shift: signed(22 downto 0);
  signal c_13_12_0_False_resize: signed(22 downto 0);
  signal c_13_12_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(18 downto 0);
  signal c_15: signed(18 downto 0);
  signal c_16: signed(18 downto 0);
  signal c_17: signed(18 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_3_1_False_resize: signed(21 downto 0);
  signal c_19_3_1_False_shift: signed(21 downto 0);
  signal c_19_1_0_False_resize: signed(21 downto 0);
  signal c_19_1_0_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(15 downto 0);
  signal c_25: signed(15 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_23_0_False_resize: signed(22 downto 0);
  signal c_26_23_0_False_shift: signed(22 downto 0);
  signal c_26_25_4_False_resize: signed(22 downto 0);
  signal c_26_25_4_False_shift: signed(22 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(19 downto 0);
  signal c_32_12_1_False_resize: signed(19 downto 0);
  signal c_32_12_1_False_shift: signed(19 downto 0);
  signal c_32_16_0_False_resize: signed(19 downto 0);
  signal c_32_16_0_False_shift: signed(19 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_i0_resize: signed(23 downto 0);
  signal c_36_i1_resize: signed(23 downto 0);
  signal c_36_i0_shift: signed(23 downto 0);
  signal c_36_i1_shift: signed(23 downto 0);
  signal c_36_arith: signed(23 downto 0);
  signal c_36_oshift: signed(23 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(18 downto 0);
  signal c_37_4_0_False_resize: signed(18 downto 0);
  signal c_37_4_0_False_shift: signed(18 downto 0);
  signal c_37_7_0_False_resize: signed(18 downto 0);
  signal c_37_7_0_False_shift: signed(18 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_39_i0_resize: signed(22 downto 0);
  signal c_39_i1_resize: signed(22 downto 0);
  signal c_39_i0_shift: signed(22 downto 0);
  signal c_39_i1_shift: signed(22 downto 0);
  signal c_39_arith: signed(22 downto 0);
  signal c_39_oshift: signed(22 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_40_5_0_False_resize: signed(21 downto 0);
  signal c_40_5_0_False_shift: signed(21 downto 0);
  signal c_40_4_2_False_resize: signed(21 downto 0);
  signal c_40_4_2_False_shift: signed(21 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_12_0_False_resize: signed(22 downto 0);
  signal c_41_12_0_False_shift: signed(22 downto 0);
  signal c_41_28_0_False_resize: signed(22 downto 0);
  signal c_41_28_0_False_shift: signed(22 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_43: signed(21 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_45: signed(21 downto 0);
  signal c_46: signed(21 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_47_31_0_False_resize: signed(22 downto 0);
  signal c_47_31_0_False_shift: signed(22 downto 0);
  signal c_47_46_1_False_resize: signed(22 downto 0);
  signal c_47_46_1_False_shift: signed(22 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_48_30_2_False_resize: signed(22 downto 0);
  signal c_48_30_2_False_shift: signed(22 downto 0);
  signal c_48_36_0_False_resize: signed(22 downto 0);
  signal c_48_36_0_False_shift: signed(22 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_50_1_False_resize: signed(23 downto 0);
  signal c_51_50_1_False_shift: signed(23 downto 0);
  signal c_51_36_0_False_resize: signed(23 downto 0);
  signal c_51_36_0_False_shift: signed(23 downto 0);
  signal c_51_sel: std_logic_vector(0 downto 0);
  signal c_52: signed(15 downto 0);
  signal c_53: signed(15 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_53_7_False_resize: signed(23 downto 0);
  signal c_54_53_7_False_shift: signed(23 downto 0);
  signal c_54_31_0_False_resize: signed(23 downto 0);
  signal c_54_31_0_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(0 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_resize: signed(23 downto 0);
  signal c_59: signed(22 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_62_resize: signed(22 downto 0);
  signal c_63: signed(21 downto 0);
  signal c_64: signed(21 downto 0);
  signal c_65: signed(21 downto 0);
  signal c_66: signed(21 downto 0);
  signal c_67: signed(21 downto 0);
  signal c_68: signed(21 downto 0);
  signal c_69: signed(22 downto 0);
  signal c_69_resize: signed(22 downto 0);
  signal c_70: signed(22 downto 0);
  signal c_71: signed(22 downto 0);
  signal c_72: signed(22 downto 0);
  signal c_73: signed(22 downto 0);
  signal c_73_resize: signed(22 downto 0);
  signal c_74: signed(23 downto 0);
  signal c_74_resize: signed(23 downto 0);
  signal c_75: signed(22 downto 0);
  signal c_76: signed(22 downto 0);
  signal c_77: signed(22 downto 0);
  signal c_78: signed(22 downto 0);
  signal c_79: signed(22 downto 0);
  signal c_80: signed(22 downto 0);
  signal c_80_resize: signed(22 downto 0);
  signal c_81: signed(23 downto 0);
  signal c_82: signed(23 downto 0);
  signal c_83: signed(23 downto 0);
  signal c_83_resize: signed(23 downto 0);
  signal c_84: signed(22 downto 0);
  signal c_85: signed(22 downto 0);
  signal c_85_resize: signed(22 downto 0);
  signal c_86: signed(23 downto 0);
  signal c_87: signed(23 downto 0);
  signal c_87_resize: signed(23 downto 0);
  signal c_88: signed(23 downto 0);
  signal c_88_resize: signed(23 downto 0);
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
  -- output node 0 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_58);
    end if;
  end process;
  -- output node 1 with id 62
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_62);
    end if;
  end process;
  -- output node 2 with id 69
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_69);
    end if;
  end process;
  -- output node 3 with id 73
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_73);
    end if;
  end process;
  -- output node 4 with id 74
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_74);
    end if;
  end process;
  -- output node 5 with id 80
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_80);
    end if;
  end process;
  -- output node 6 with id 83
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_83);
    end if;
  end process;
  -- output node 7 with id 85
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_85);
    end if;
  end process;
  -- output node 8 with id 87
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_87);
    end if;
  end process;
  -- output node 9 with id 88
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_88);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[33], [33]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 5,
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
      c_1 <= c_1_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [2]]
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_1_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[5], [7]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 17,
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
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[33], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[43], [19]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 22,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_4,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 8 and associated fundamentals [[79], [113]]
  with config_select_3 select c_8_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 23,
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
      sub_i => c_8_sub_sel,
      x_i => c_4,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[4], [113]]
  c_10_9_2_False_resize <= resize(c_9, 23);
  c_10_9_2_False_shift <= shift_left(c_10_9_2_False_resize, 2);
  c_10_8_0_False_resize <= c_8;
  c_10_8_0_False_shift <= shift_left(c_10_8_0_False_resize, 0);
  with config_select_4 select c_10_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_9_2_False_shift;
        when others => c_10 <= c_10_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_9 & "";
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 12 and associated fundamentals [[6], [115]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 13 and associated fundamentals [[48], [115]]
  c_13_12_3_False_resize <= c_12;
  c_13_12_3_False_shift <= shift_left(c_13_12_3_False_resize, 3);
  c_13_12_0_False_resize <= c_12;
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  with config_select_6 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_12_3_False_shift;
        when others => c_13 <= c_13_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[5], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[5], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[5], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[5], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 18 and associated fundamentals [[101], [237]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_13,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 19 and associated fundamentals [[33], [2]]
  c_19_3_1_False_resize <= resize(c_3, 22);
  c_19_3_1_False_shift <= shift_left(c_19_3_1_False_resize, 1);
  c_19_1_0_False_resize <= c_1;
  c_19_1_0_False_shift <= shift_left(c_19_1_0_False_resize, 0);
  with config_select_2 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_3_1_False_shift;
        when others => c_19 <= c_19_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[33], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[33], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[33], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 23 and associated fundamentals [[138], [107]]
  with config_select_6 select c_23_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_23_sub_sel,
      x_i => c_12,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[16], [107]]
  c_26_23_0_False_resize <= c_23(22 downto 0);
  c_26_23_0_False_shift <= shift_left(c_26_23_0_False_resize, 0);
  c_26_25_4_False_resize <= resize(c_25, 23);
  c_26_25_4_False_shift <= shift_left(c_26_25_4_False_resize, 4);
  with config_select_7 select c_26_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_23_0_False_shift;
        when others => c_26 <= c_26_25_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 27 and associated fundamentals [[43], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[43], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[43], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[43], [19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 31 and associated fundamentals [[75], [195]]
  with config_select_8 select c_31_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_31_sub_sel,
      x_i => c_26,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 32 and associated fundamentals [[12], [7]]
  c_32_12_1_False_resize <= c_12(19 downto 0);
  c_32_12_1_False_shift <= shift_left(c_32_12_1_False_resize, 1);
  c_32_16_0_False_resize <= resize(c_16, 20);
  c_32_16_0_False_shift <= shift_left(c_32_16_0_False_resize, 0);
  with config_select_6 select c_32_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_12_1_False_shift;
        when others => c_32 <= c_32_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 33 and associated fundamentals [[79], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 34 and associated fundamentals [[79], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[79], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 36 and associated fundamentals [[17], [169]]
  with config_select_7 select c_36_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
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
      sub_i => c_36_sub_sel,
      x_i => c_32,
      y_i => c_35,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[1], [7]]
  c_37_4_0_False_resize <= c_4;
  c_37_4_0_False_shift <= shift_left(c_37_4_0_False_resize, 0);
  c_37_7_0_False_resize <= resize(c_7, 19);
  c_37_7_0_False_shift <= shift_left(c_37_7_0_False_resize, 0);
  with config_select_3 select c_37_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_4_0_False_shift;
        when others => c_37 <= c_37_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 38 and associated fundamentals [[33], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 39 and associated fundamentals [[41], [89]]
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 23,
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
      x_i => c_38,
      y_i => c_37,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 40 and associated fundamentals [[33], [28]]
  c_40_5_0_False_resize <= c_5;
  c_40_5_0_False_shift <= shift_left(c_40_5_0_False_resize, 0);
  c_40_4_2_False_resize <= resize(c_4, 22);
  c_40_4_2_False_shift <= shift_left(c_40_4_2_False_resize, 2);
  with config_select_3 select c_40_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_5_0_False_shift;
        when others => c_40 <= c_40_4_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 41 and associated fundamentals [[43], [115]]
  c_41_12_0_False_resize <= c_12;
  c_41_12_0_False_shift <= shift_left(c_41_12_0_False_resize, 0);
  c_41_28_0_False_resize <= resize(c_28, 23);
  c_41_28_0_False_shift <= shift_left(c_41_28_0_False_resize, 0);
  with config_select_6 select c_41_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_12_0_False_shift;
        when others => c_41 <= c_41_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 42 and associated fundamentals [[33], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 43 and associated fundamentals [[33], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 44 and associated fundamentals [[33], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[33], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[33], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 47 and associated fundamentals [[75], [66]]
  c_47_31_0_False_resize <= c_31(22 downto 0);
  c_47_31_0_False_shift <= shift_left(c_47_31_0_False_resize, 0);
  c_47_46_1_False_resize <= resize(c_46, 23);
  c_47_46_1_False_shift <= shift_left(c_47_46_1_False_resize, 1);
  with config_select_9 select c_47_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_31_0_False_shift;
        when others => c_47 <= c_47_46_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 48 and associated fundamentals [[17], [76]]
  c_48_30_2_False_resize <= resize(c_30, 23);
  c_48_30_2_False_shift <= shift_left(c_48_30_2_False_resize, 2);
  c_48_36_0_False_resize <= c_36(22 downto 0);
  c_48_36_0_False_shift <= shift_left(c_48_36_0_False_resize, 0);
  with config_select_8 select c_48_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_30_2_False_shift;
        when others => c_48 <= c_48_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 49 and associated fundamentals [[6], [115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 50 and associated fundamentals [[6], [115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 51 and associated fundamentals [[12], [169]]
  c_51_50_1_False_resize <= resize(c_50, 24);
  c_51_50_1_False_shift <= shift_left(c_51_50_1_False_resize, 1);
  c_51_36_0_False_resize <= c_36;
  c_51_36_0_False_shift <= shift_left(c_51_36_0_False_resize, 0);
  with config_select_8 select c_51_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "0" => c_51 <= c_51_50_1_False_shift;
        when others => c_51 <= c_51_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 52 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 53 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 54 and associated fundamentals [[128], [195]]
  c_54_53_7_False_resize <= resize(c_53, 24);
  c_54_53_7_False_shift <= shift_left(c_54_53_7_False_resize, 7);
  c_54_31_0_False_resize <= c_31;
  c_54_31_0_False_shift <= shift_left(c_54_31_0_False_resize, 0);
  with config_select_9 select c_54_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "0" => c_54 <= c_54_53_7_False_shift;
        when others => c_54 <= c_54_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 55 and associated fundamentals [[138], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[138], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[138], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 58 and associated fundamentals [[138], [107]]
  c_58_resize <= c_57;
  c_58 <= shift_left(c_58_resize, 0);
  -- node of type 'register' in stage 7 with id 59 and associated fundamentals [[79], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 60 and associated fundamentals [[79], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[79], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 62 and associated fundamentals [[79], [113]]
  c_62_resize <= c_61;
  c_62 <= shift_left(c_62_resize, 0);
  -- node of type 'register' in stage 4 with id 63 and associated fundamentals [[33], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 64 and associated fundamentals [[33], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 65 and associated fundamentals [[33], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 66 and associated fundamentals [[33], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 67 and associated fundamentals [[33], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 68 and associated fundamentals [[33], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 69 and associated fundamentals [[66], [56]]
  c_69_resize <= resize(c_68, 23);
  c_69 <= shift_left(c_69_resize, 1);
  -- node of type 'register' in stage 7 with id 70 and associated fundamentals [[43], [115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 71 and associated fundamentals [[43], [115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 72 and associated fundamentals [[43], [115]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 73 and associated fundamentals [[43], [115]]
  c_73_resize <= c_72;
  c_73 <= shift_left(c_73_resize, 0);
  -- node of type 'output' in stage 9 with id 74 and associated fundamentals [[150], [132]]
  c_74_resize <= resize(c_47, 24);
  c_74 <= shift_left(c_74_resize, 1);
  -- node of type 'register' in stage 5 with id 75 and associated fundamentals [[41], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 76 and associated fundamentals [[41], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 77 and associated fundamentals [[41], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 78 and associated fundamentals [[41], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 79 and associated fundamentals [[41], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 80 and associated fundamentals [[41], [89]]
  c_80_resize <= c_79;
  c_80 <= shift_left(c_80_resize, 0);
  -- node of type 'register' in stage 8 with id 81 and associated fundamentals [[101], [237]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 82 and associated fundamentals [[101], [237]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 83 and associated fundamentals [[101], [237]]
  c_83_resize <= c_82;
  c_83 <= shift_left(c_83_resize, 0);
  -- node of type 'register' in stage 9 with id 84 and associated fundamentals [[17], [76]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_48 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 85 and associated fundamentals [[17], [76]]
  c_85_resize <= c_84;
  c_85 <= shift_left(c_85_resize, 0);
  -- node of type 'register' in stage 9 with id 86 and associated fundamentals [[12], [169]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_86 <= c_51 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 87 and associated fundamentals [[12], [169]]
  c_87_resize <= c_86;
  c_87 <= shift_left(c_87_resize, 0);
  -- node of type 'output' in stage 9 with id 88 and associated fundamentals [[128], [195]]
  c_88_resize <= c_54;
  c_88 <= shift_left(c_88_resize, 0);
end architecture;

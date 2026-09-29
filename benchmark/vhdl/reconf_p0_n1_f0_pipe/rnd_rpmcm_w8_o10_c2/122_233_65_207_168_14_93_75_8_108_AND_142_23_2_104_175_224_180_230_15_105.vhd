library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(22 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(19 downto 0);
    y_9: out std_logic_vector(22 downto 0);
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
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_2_2_False_resize: signed(18 downto 0);
  signal c_3_2_2_False_shift: signed(18 downto 0);
  signal c_3_1_0_False_resize: signed(18 downto 0);
  signal c_3_1_0_False_shift: signed(18 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_1_0_False_resize: signed(20 downto 0);
  signal c_6_1_0_False_shift: signed(20 downto 0);
  signal c_6_2_5_False_resize: signed(20 downto 0);
  signal c_6_2_5_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(15 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_i0_resize: signed(21 downto 0);
  signal c_13_i1_resize: signed(21 downto 0);
  signal c_13_i0_shift: signed(21 downto 0);
  signal c_13_i1_shift: signed(21 downto 0);
  signal c_13_arith: signed(21 downto 0);
  signal c_13_oshift: signed(21 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(18 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_15_10_0_False_resize: signed(19 downto 0);
  signal c_15_10_0_False_shift: signed(19 downto 0);
  signal c_15_14_0_False_resize: signed(19 downto 0);
  signal c_15_14_0_False_shift: signed(19 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_i0_resize: signed(22 downto 0);
  signal c_16_i1_resize: signed(22 downto 0);
  signal c_16_i0_shift: signed(22 downto 0);
  signal c_16_i1_shift: signed(22 downto 0);
  signal c_16_arith: signed(22 downto 0);
  signal c_16_oshift: signed(22 downto 0);
  signal c_17: signed(15 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_16_0_False_resize: signed(22 downto 0);
  signal c_19_16_0_False_shift: signed(22 downto 0);
  signal c_19_18_5_False_resize: signed(22 downto 0);
  signal c_19_18_5_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_10_3_False_resize: signed(22 downto 0);
  signal c_24_10_3_False_shift: signed(22 downto 0);
  signal c_24_10_0_False_resize: signed(22 downto 0);
  signal c_24_10_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_27: signed(15 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_27_3_False_resize: signed(23 downto 0);
  signal c_28_27_3_False_shift: signed(23 downto 0);
  signal c_28_26_0_False_resize: signed(23 downto 0);
  signal c_28_26_0_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_36_16_0_False_resize: signed(22 downto 0);
  signal c_36_16_0_False_shift: signed(22 downto 0);
  signal c_36_35_0_False_resize: signed(22 downto 0);
  signal c_36_35_0_False_shift: signed(22 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_37_11_1_False_resize: signed(22 downto 0);
  signal c_37_11_1_False_shift: signed(22 downto 0);
  signal c_37_8_0_False_resize: signed(22 downto 0);
  signal c_37_8_0_False_shift: signed(22 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_38_3_False_resize: signed(23 downto 0);
  signal c_39_38_3_False_shift: signed(23 downto 0);
  signal c_39_23_0_False_resize: signed(23 downto 0);
  signal c_39_23_0_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_40_1_4_False_resize: signed(22 downto 0);
  signal c_40_1_4_False_shift: signed(22 downto 0);
  signal c_40_1_0_False_resize: signed(22 downto 0);
  signal c_40_1_0_False_shift: signed(22 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_13_2_False_resize: signed(23 downto 0);
  signal c_41_13_2_False_shift: signed(23 downto 0);
  signal c_41_20_0_False_resize: signed(23 downto 0);
  signal c_41_20_0_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_43_0_False_resize: signed(23 downto 0);
  signal c_44_43_0_False_shift: signed(23 downto 0);
  signal c_44_23_1_False_resize: signed(23 downto 0);
  signal c_44_23_1_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(19 downto 0);
  signal c_45_11_3_False_resize: signed(19 downto 0);
  signal c_45_11_3_False_shift: signed(19 downto 0);
  signal c_45_8_0_False_resize: signed(19 downto 0);
  signal c_45_8_0_False_shift: signed(19 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_53: signed(22 downto 0);
  signal c_54: signed(22 downto 0);
  signal c_55: signed(22 downto 0);
  signal c_55_resize: signed(22 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_resize: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_resize: signed(23 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(22 downto 0);
  signal c_64: signed(22 downto 0);
  signal c_65: signed(22 downto 0);
  signal c_66: signed(22 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_67_resize: signed(23 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_70: signed(23 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_71_resize: signed(23 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_72_resize: signed(23 downto 0);
  signal c_73: signed(19 downto 0);
  signal c_74: signed(19 downto 0);
  signal c_75: signed(19 downto 0);
  signal c_76: signed(19 downto 0);
  signal c_77: signed(19 downto 0);
  signal c_78: signed(19 downto 0);
  signal c_78_resize: signed(19 downto 0);
  signal c_79: signed(22 downto 0);
  signal c_80: signed(22 downto 0);
  signal c_81: signed(22 downto 0);
  signal c_82: signed(22 downto 0);
  signal c_83: signed(22 downto 0);
  signal c_84: signed(22 downto 0);
  signal c_85: signed(22 downto 0);
  signal c_85_resize: signed(22 downto 0);
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
  -- output node 0 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 1 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 2 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 3 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_56);
    end if;
  end process;
  -- output node 4 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 5 with id 67
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_67);
    end if;
  end process;
  -- output node 6 with id 71
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_71);
    end if;
  end process;
  -- output node 7 with id 72
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_72);
    end if;
  end process;
  -- output node 8 with id 78
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_78);
    end if;
  end process;
  -- output node 9 with id 85
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_85);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[7], [7]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[4], [7]]
  c_3_2_2_False_resize <= resize(c_2, 19);
  c_3_2_2_False_shift <= shift_left(c_3_2_2_False_resize, 2);
  c_3_1_0_False_resize <= c_1;
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_2_2_False_shift;
        when others => c_3 <= c_3_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[7], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_1 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 5 and associated fundamentals [[108], [105]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 23,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[32], [7]]
  c_6_1_0_False_resize <= resize(c_1, 21);
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  c_6_2_5_False_resize <= resize(c_2, 21);
  c_6_2_5_False_shift <= shift_left(c_6_2_5_False_resize, 5);
  with config_select_2 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_1_0_False_shift;
        when others => c_6 <= c_6_2_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 8 and associated fundamentals [[65], [15]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 23,
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
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[7], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[93], [13]]
  with config_select_4 select c_10_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 19,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_8,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 13 and associated fundamentals [[61], [45]]
  with config_select_5 select c_13_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 5,
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
      c_13 <= c_13_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[7], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[7], [13]]
  c_15_10_0_False_resize <= c_10(19 downto 0);
  c_15_10_0_False_shift <= shift_left(c_15_10_0_False_resize, 0);
  c_15_14_0_False_resize <= resize(c_14, 20);
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  with config_select_5 select c_15_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_10_0_False_shift;
        when others => c_15 <= c_15_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 16 and associated fundamentals [[75], [71]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
      x_i => c_13,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[75], [32]]
  c_19_16_0_False_resize <= c_16;
  c_19_16_0_False_shift <= shift_left(c_19_16_0_False_resize, 0);
  c_19_18_5_False_resize <= resize(c_18, 23);
  c_19_18_5_False_shift <= shift_left(c_19_18_5_False_resize, 5);
  with config_select_7 select c_19_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_16_0_False_shift;
        when others => c_19 <= c_19_18_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[93], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[93], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[93], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 23 and associated fundamentals [[207], [115]]
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_19,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 24 and associated fundamentals [[93], [104]]
  c_24_10_3_False_resize <= c_10;
  c_24_10_3_False_shift <= shift_left(c_24_10_3_False_resize, 3);
  c_24_10_0_False_resize <= c_10;
  c_24_10_0_False_shift <= shift_left(c_24_10_0_False_resize, 0);
  with config_select_5 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_10_3_False_shift;
        when others => c_24 <= c_24_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[93], [104]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 26 and associated fundamentals [[168], [175]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 24,
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
      x_i => c_25,
      y_i => c_16,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 28 and associated fundamentals [[168], [8]]
  c_28_27_3_False_resize <= resize(c_27, 24);
  c_28_27_3_False_shift <= shift_left(c_28_27_3_False_resize, 3);
  c_28_26_0_False_resize <= c_26;
  c_28_26_0_False_shift <= shift_left(c_28_26_0_False_resize, 0);
  with config_select_8 select c_28_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_27_3_False_shift;
        when others => c_28 <= c_28_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 29 and associated fundamentals [[65], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[65], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[65], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[65], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[65], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add' in stage 9 with id 34 and associated fundamentals [[233], [23]]
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 24,
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
      x_i => c_28,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[61], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 36 and associated fundamentals [[61], [71]]
  c_36_16_0_False_resize <= c_16;
  c_36_16_0_False_shift <= shift_left(c_36_16_0_False_resize, 0);
  c_36_35_0_False_resize <= resize(c_35, 23);
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  with config_select_7 select c_36_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_16_0_False_shift;
        when others => c_36 <= c_36_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 37 and associated fundamentals [[65], [2]]
  c_37_11_1_False_resize <= resize(c_11, 23);
  c_37_11_1_False_shift <= shift_left(c_37_11_1_False_resize, 1);
  c_37_8_0_False_resize <= c_8;
  c_37_8_0_False_shift <= shift_left(c_37_8_0_False_resize, 0);
  with config_select_4 select c_37_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_11_1_False_shift;
        when others => c_37 <= c_37_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[93], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 39 and associated fundamentals [[207], [104]]
  c_39_38_3_False_resize <= resize(c_38, 24);
  c_39_38_3_False_shift <= shift_left(c_39_38_3_False_resize, 3);
  c_39_23_0_False_resize <= c_23;
  c_39_23_0_False_shift <= shift_left(c_39_23_0_False_resize, 0);
  with config_select_9 select c_39_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_38_3_False_shift;
        when others => c_39 <= c_39_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 40 and associated fundamentals [[7], [112]]
  c_40_1_4_False_resize <= resize(c_1, 23);
  c_40_1_4_False_shift <= shift_left(c_40_1_4_False_resize, 4);
  c_40_1_0_False_resize <= resize(c_1, 23);
  c_40_1_0_False_shift <= shift_left(c_40_1_0_False_resize, 0);
  with config_select_2 select c_40_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_1_4_False_shift;
        when others => c_40 <= c_40_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 41 and associated fundamentals [[93], [180]]
  c_41_13_2_False_resize <= resize(c_13, 24);
  c_41_13_2_False_shift <= shift_left(c_41_13_2_False_resize, 2);
  c_41_20_0_False_resize <= resize(c_20, 24);
  c_41_20_0_False_shift <= shift_left(c_41_20_0_False_resize, 0);
  with config_select_6 select c_41_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_13_2_False_shift;
        when others => c_41 <= c_41_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[75], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[75], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 44 and associated fundamentals [[75], [230]]
  c_44_43_0_False_resize <= resize(c_43, 24);
  c_44_43_0_False_shift <= shift_left(c_44_43_0_False_resize, 0);
  c_44_23_1_False_resize <= c_23;
  c_44_23_1_False_shift <= shift_left(c_44_23_1_False_resize, 1);
  with config_select_9 select c_44_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_43_0_False_shift;
        when others => c_44 <= c_44_23_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 45 and associated fundamentals [[8], [15]]
  c_45_11_3_False_resize <= resize(c_11, 20);
  c_45_11_3_False_shift <= shift_left(c_45_11_3_False_resize, 3);
  c_45_8_0_False_resize <= c_8(19 downto 0);
  c_45_8_0_False_shift <= shift_left(c_45_8_0_False_resize, 0);
  with config_select_4 select c_45_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_11_3_False_shift;
        when others => c_45 <= c_45_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[61], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[61], [71]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 48 and associated fundamentals [[122], [142]]
  c_48_resize <= resize(c_47, 24);
  c_48 <= shift_left(c_48_resize, 1);
  -- node of type 'output' in stage 9 with id 49 and associated fundamentals [[233], [23]]
  c_49_resize <= c_34;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'register' in stage 5 with id 50 and associated fundamentals [[65], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 51 and associated fundamentals [[65], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 52 and associated fundamentals [[65], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 53 and associated fundamentals [[65], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[65], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 55 and associated fundamentals [[65], [2]]
  c_55_resize <= c_54;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'output' in stage 9 with id 56 and associated fundamentals [[207], [104]]
  c_56_resize <= c_39;
  c_56 <= shift_left(c_56_resize, 0);
  -- node of type 'register' in stage 8 with id 57 and associated fundamentals [[168], [175]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[168], [175]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 59 and associated fundamentals [[168], [175]]
  c_59_resize <= c_58;
  c_59 <= shift_left(c_59_resize, 0);
  -- node of type 'register' in stage 3 with id 60 and associated fundamentals [[7], [112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 61 and associated fundamentals [[7], [112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 62 and associated fundamentals [[7], [112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 63 and associated fundamentals [[7], [112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 64 and associated fundamentals [[7], [112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 65 and associated fundamentals [[7], [112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 66 and associated fundamentals [[7], [112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 67 and associated fundamentals [[14], [224]]
  c_67_resize <= resize(c_66, 24);
  c_67 <= shift_left(c_67_resize, 1);
  -- node of type 'register' in stage 7 with id 68 and associated fundamentals [[93], [180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 69 and associated fundamentals [[93], [180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[93], [180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 71 and associated fundamentals [[93], [180]]
  c_71_resize <= c_70;
  c_71 <= shift_left(c_71_resize, 0);
  -- node of type 'output' in stage 9 with id 72 and associated fundamentals [[75], [230]]
  c_72_resize <= c_44;
  c_72 <= shift_left(c_72_resize, 0);
  -- node of type 'register' in stage 5 with id 73 and associated fundamentals [[8], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 74 and associated fundamentals [[8], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 75 and associated fundamentals [[8], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 76 and associated fundamentals [[8], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 77 and associated fundamentals [[8], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 78 and associated fundamentals [[8], [15]]
  c_78_resize <= c_77;
  c_78 <= shift_left(c_78_resize, 0);
  -- node of type 'register' in stage 4 with id 79 and associated fundamentals [[108], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 80 and associated fundamentals [[108], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 81 and associated fundamentals [[108], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 82 and associated fundamentals [[108], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_81 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 83 and associated fundamentals [[108], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 84 and associated fundamentals [[108], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 85 and associated fundamentals [[108], [105]]
  c_85_resize <= c_84;
  c_85 <= shift_left(c_85_resize, 0);
end architecture;

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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(20 downto 0);
  signal c_5_i0_resize: signed(20 downto 0);
  signal c_5_i1_resize: signed(20 downto 0);
  signal c_5_i0_shift: signed(20 downto 0);
  signal c_5_i1_shift: signed(20 downto 0);
  signal c_5_arith: signed(20 downto 0);
  signal c_5_oshift: signed(20 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(15 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_6_4_False_resize: signed(22 downto 0);
  signal c_7_6_4_False_shift: signed(22 downto 0);
  signal c_7_3_0_False_resize: signed(22 downto 0);
  signal c_7_3_0_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(20 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_6_0_False_resize: signed(23 downto 0);
  signal c_13_6_0_False_shift: signed(23 downto 0);
  signal c_13_3_0_False_resize: signed(23 downto 0);
  signal c_13_3_0_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_12_0_False_resize: signed(23 downto 0);
  signal c_15_12_0_False_shift: signed(23 downto 0);
  signal c_15_14_1_False_resize: signed(23 downto 0);
  signal c_15_14_1_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_i0_resize: signed(24 downto 0);
  signal c_19_i1_resize: signed(24 downto 0);
  signal c_19_i0_shift: signed(24 downto 0);
  signal c_19_i1_shift: signed(24 downto 0);
  signal c_19_arith: signed(24 downto 0);
  signal c_19_oshift: signed(24 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_19_0_False_resize: signed(24 downto 0);
  signal c_22_19_0_False_shift: signed(24 downto 0);
  signal c_22_21_4_False_resize: signed(24 downto 0);
  signal c_22_21_4_False_shift: signed(24 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_24: signed(21 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_i0_resize: signed(24 downto 0);
  signal c_30_i1_resize: signed(24 downto 0);
  signal c_30_i0_shift: signed(24 downto 0);
  signal c_30_i1_shift: signed(24 downto 0);
  signal c_30_arith: signed(24 downto 0);
  signal c_30_oshift: signed(24 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(24 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_32_2_False_resize: signed(24 downto 0);
  signal c_33_32_2_False_shift: signed(24 downto 0);
  signal c_33_30_0_False_resize: signed(24 downto 0);
  signal c_33_30_0_False_shift: signed(24 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(21 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_i0_resize: signed(25 downto 0);
  signal c_36_i1_resize: signed(25 downto 0);
  signal c_36_i0_shift: signed(25 downto 0);
  signal c_36_i1_shift: signed(25 downto 0);
  signal c_36_arith: signed(25 downto 0);
  signal c_36_oshift: signed(25 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_38_0_False_resize: signed(23 downto 0);
  signal c_39_38_0_False_shift: signed(23 downto 0);
  signal c_39_10_0_False_resize: signed(23 downto 0);
  signal c_39_10_0_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_41_2_False_resize: signed(25 downto 0);
  signal c_42_41_2_False_shift: signed(25 downto 0);
  signal c_42_19_0_False_resize: signed(25 downto 0);
  signal c_42_19_0_False_shift: signed(25 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_i0_resize: signed(25 downto 0);
  signal c_46_i1_resize: signed(25 downto 0);
  signal c_46_i0_shift: signed(25 downto 0);
  signal c_46_i1_shift: signed(25 downto 0);
  signal c_46_arith: signed(25 downto 0);
  signal c_46_oshift: signed(25 downto 0);
  signal c_46_sub_sel: std_logic;
  signal c_47: signed(20 downto 0);
  signal c_48: signed(20 downto 0);
  signal c_49: signed(20 downto 0);
  signal c_50: signed(20 downto 0);
  signal c_51: signed(20 downto 0);
  signal c_52: signed(26 downto 0);
  signal c_52_46_0_False_resize: signed(26 downto 0);
  signal c_52_46_0_False_shift: signed(26 downto 0);
  signal c_52_51_6_False_resize: signed(26 downto 0);
  signal c_52_51_6_False_shift: signed(26 downto 0);
  signal c_52_sel: std_logic_vector(0 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_i0_resize: signed(25 downto 0);
  signal c_53_i1_resize: signed(25 downto 0);
  signal c_53_i0_shift: signed(25 downto 0);
  signal c_53_i1_shift: signed(25 downto 0);
  signal c_53_arith: signed(25 downto 0);
  signal c_53_oshift: signed(25 downto 0);
  signal c_53_sub_sel: std_logic;
  signal c_54: signed(23 downto 0);
  signal c_54_12_0_False_resize: signed(23 downto 0);
  signal c_54_12_0_False_shift: signed(23 downto 0);
  signal c_54_14_1_False_resize: signed(23 downto 0);
  signal c_54_14_1_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(0 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_i0_resize: signed(25 downto 0);
  signal c_55_i1_resize: signed(25 downto 0);
  signal c_55_i0_shift: signed(25 downto 0);
  signal c_55_i1_shift: signed(25 downto 0);
  signal c_55_arith: signed(25 downto 0);
  signal c_55_oshift: signed(25 downto 0);
  signal c_55_sub_sel: std_logic;
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_57_1_False_resize: signed(25 downto 0);
  signal c_58_57_1_False_shift: signed(25 downto 0);
  signal c_58_30_0_False_resize: signed(25 downto 0);
  signal c_58_30_0_False_shift: signed(25 downto 0);
  signal c_58_sel: std_logic_vector(0 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_30_1_False_resize: signed(25 downto 0);
  signal c_61_30_1_False_shift: signed(25 downto 0);
  signal c_61_46_0_False_resize: signed(25 downto 0);
  signal c_61_46_0_False_shift: signed(25 downto 0);
  signal c_61_60_4_False_resize: signed(25 downto 0);
  signal c_61_60_4_False_shift: signed(25 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(24 downto 0);
  signal c_64_63_0_False_resize: signed(24 downto 0);
  signal c_64_63_0_False_shift: signed(24 downto 0);
  signal c_64_36_0_False_resize: signed(24 downto 0);
  signal c_64_36_0_False_shift: signed(24 downto 0);
  signal c_64_sel: std_logic_vector(0 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_67_36_0_False_resize: signed(25 downto 0);
  signal c_67_36_0_False_shift: signed(25 downto 0);
  signal c_67_66_0_False_resize: signed(25 downto 0);
  signal c_67_66_0_False_shift: signed(25 downto 0);
  signal c_67_sel: std_logic_vector(0 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_resize: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_resize: signed(25 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_75_resize: signed(25 downto 0);
  signal c_76: signed(24 downto 0);
  signal c_76_resize: signed(24 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_77_resize: signed(25 downto 0);
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
  -- output node 0 with id 70
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_70);
    end if;
  end process;
  -- output node 1 with id 73
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_73);
    end if;
  end process;
  -- output node 2 with id 75
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_75);
    end if;
  end process;
  -- output node 3 with id 76
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_76);
    end if;
  end process;
  -- output node 4 with id 77
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_77);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[126], [129], [127]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 4 and associated fundamentals [[33], [31], [31]]
  with config_select_1 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 5,
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
      c_4 <= c_4_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 5 and associated fundamentals [[17], [15], [17]]
  with config_select_1 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
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
      sub_i => c_5_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[16], [16], [127]]
  c_7_6_4_False_resize <= resize(c_6, 23);
  c_7_6_4_False_shift <= shift_left(c_7_6_4_False_resize, 4);
  c_7_3_0_False_resize <= c_3(22 downto 0);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_6_4_False_shift;
        when others => c_7 <= c_7_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[17], [15], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[17], [15], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[-18], [46], [93]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 23,
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
      sub_i => c_10_sub_sel,
      x_i => c_7,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[17], [15], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_9 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 12 and associated fundamentals [[-53], [77], [169]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[1], [129], [1]]
  c_13_6_0_False_resize <= resize(c_6, 24);
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  c_13_3_0_False_resize <= c_3;
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_6_0_False_shift;
        when others => c_13 <= c_13_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[-18], [46], [93]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 15 and associated fundamentals [[-53], [77], [186]]
  c_15_12_0_False_resize <= c_12;
  c_15_12_0_False_shift <= shift_left(c_15_12_0_False_resize, 0);
  c_15_14_1_False_resize <= resize(c_14, 24);
  c_15_14_1_False_shift <= shift_left(c_15_14_1_False_resize, 1);
  with config_select_6 select c_15_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_12_0_False_shift;
        when others => c_15 <= c_15_14_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[1], [129], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[1], [129], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[1], [129], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 7 with id 19 and associated fundamentals [[110], [362], [-368]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_18,
      y_i => c_15,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[-18], [46], [93]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 21 and associated fundamentals [[-18], [46], [93]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 22 and associated fundamentals [[-288], [362], [-368]]
  c_22_19_0_False_resize <= c_19;
  c_22_19_0_False_shift <= shift_left(c_22_19_0_False_resize, 0);
  c_22_21_4_False_resize <= resize(c_21, 25);
  c_22_21_4_False_shift <= shift_left(c_22_21_4_False_resize, 4);
  with config_select_8 select c_22_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_19_0_False_shift;
        when others => c_22 <= c_22_21_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 23 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 24 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 29 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 30 and associated fundamentals [[-255], [-331], [-337]]
  with config_select_9 select c_30_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_30_sub_sel,
      x_i => c_29,
      y_i => c_22,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 31 and associated fundamentals [[110], [362], [-368]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 32 and associated fundamentals [[110], [362], [-368]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 33 and associated fundamentals [[440], [-331], [-337]]
  c_33_32_2_False_resize <= c_32;
  c_33_32_2_False_shift <= shift_left(c_33_32_2_False_resize, 2);
  c_33_30_0_False_resize <= c_30;
  c_33_30_0_False_shift <= shift_left(c_33_30_0_False_resize, 0);
  with config_select_10 select c_33_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_32_2_False_shift;
        when others => c_33 <= c_33_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 34 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 35 and associated fundamentals [[33], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 36 and associated fundamentals [[572], [455], [461]]
  with config_select_11 select c_36_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
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
      sub_i => c_36_sub_sel,
      x_i => c_35,
      y_i => c_33,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 37 and associated fundamentals [[126], [129], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 38 and associated fundamentals [[126], [129], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 39 and associated fundamentals [[126], [129], [93]]
  c_39_38_0_False_resize <= c_38;
  c_39_38_0_False_shift <= shift_left(c_39_38_0_False_resize, 0);
  c_39_10_0_False_resize <= resize(c_10, 24);
  c_39_10_0_False_shift <= shift_left(c_39_10_0_False_resize, 0);
  with config_select_5 select c_39_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_38_0_False_shift;
        when others => c_39 <= c_39_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[-53], [77], [169]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[-53], [77], [169]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 42 and associated fundamentals [[-212], [362], [676]]
  c_42_41_2_False_resize <= resize(c_41, 26);
  c_42_41_2_False_shift <= shift_left(c_42_41_2_False_resize, 2);
  c_42_19_0_False_resize <= resize(c_19, 26);
  c_42_19_0_False_shift <= shift_left(c_42_19_0_False_resize, 0);
  with config_select_8 select c_42_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_41_2_False_shift;
        when others => c_42 <= c_42_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[126], [129], [93]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[126], [129], [93]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[126], [129], [93]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 46 and associated fundamentals [[338], [491], [-583]]
  with config_select_9 select c_46_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_46: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_46_sub_sel,
      x_i => c_45,
      y_i => c_42,
      z_o => c_46_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_46_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 47 and associated fundamentals [[17], [15], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 48 and associated fundamentals [[17], [15], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[17], [15], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[17], [15], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[17], [15], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 52 and associated fundamentals [[1088], [491], [-583]]
  c_52_46_0_False_resize <= resize(c_46, 27);
  c_52_46_0_False_shift <= shift_left(c_52_46_0_False_resize, 0);
  c_52_51_6_False_resize <= resize(c_51, 27);
  c_52_51_6_False_shift <= shift_left(c_52_51_6_False_resize, 6);
  with config_select_10 select c_52_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "0" => c_52 <= c_52_46_0_False_shift;
        when others => c_52 <= c_52_51_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 53 and associated fundamentals [[-1022], [-429], [-521]]
  with config_select_11 select c_53_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_53: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 27,
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
      sub_i => c_53_sub_sel,
      x_i => c_35,
      y_i => c_52,
      z_o => c_53_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_53_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 54 and associated fundamentals [[-53], [92], [169]]
  c_54_12_0_False_resize <= c_12;
  c_54_12_0_False_shift <= shift_left(c_54_12_0_False_resize, 0);
  c_54_14_1_False_resize <= resize(c_14, 24);
  c_54_14_1_False_shift <= shift_left(c_54_14_1_False_resize, 1);
  with config_select_6 select c_54_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "0" => c_54 <= c_54_12_0_False_shift;
        when others => c_54 <= c_54_14_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 55 and associated fundamentals [[-195], [-353], [693]]
  with config_select_7 select c_55_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_55: entity work.adder_node
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
      sub_i => c_55_sub_sel,
      x_i => c_48,
      y_i => c_54,
      z_o => c_55_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_55_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[-195], [-353], [693]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[-195], [-353], [693]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 58 and associated fundamentals [[-255], [-706], [-337]]
  c_58_57_1_False_resize <= c_57;
  c_58_57_1_False_shift <= shift_left(c_58_57_1_False_resize, 1);
  c_58_30_0_False_resize <= resize(c_30, 26);
  c_58_30_0_False_shift <= shift_left(c_58_30_0_False_resize, 0);
  with config_select_10 select c_58_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "0" => c_58 <= c_58_57_1_False_shift;
        when others => c_58 <= c_58_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 59 and associated fundamentals [[-53], [77], [169]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 60 and associated fundamentals [[-53], [77], [169]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 61 and associated fundamentals [[-848], [-662], [-583]]
  c_61_30_1_False_resize <= resize(c_30, 26);
  c_61_30_1_False_shift <= shift_left(c_61_30_1_False_resize, 1);
  c_61_46_0_False_resize <= c_46;
  c_61_46_0_False_shift <= shift_left(c_61_46_0_False_resize, 0);
  c_61_60_4_False_resize <= resize(c_60, 26);
  c_61_60_4_False_shift <= shift_left(c_61_60_4_False_resize, 4);
  with config_select_10 select c_61_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "00" => c_61 <= c_61_30_1_False_shift;
        when "01" => c_61 <= c_61_46_0_False_shift;
        when others => c_61 <= c_61_60_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 62 and associated fundamentals [[338], [491], [-583]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 63 and associated fundamentals [[338], [491], [-583]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 64 and associated fundamentals [[338], [491], [461]]
  c_64_63_0_False_resize <= c_63(24 downto 0);
  c_64_63_0_False_shift <= shift_left(c_64_63_0_False_resize, 0);
  c_64_36_0_False_resize <= c_36(24 downto 0);
  c_64_36_0_False_shift <= shift_left(c_64_36_0_False_resize, 0);
  with config_select_12 select c_64_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_64_sel is
        when "0" => c_64 <= c_64_63_0_False_shift;
        when others => c_64 <= c_64_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 65 and associated fundamentals [[-195], [-353], [693]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 66 and associated fundamentals [[-195], [-353], [693]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 12 with id 67 and associated fundamentals [[572], [455], [693]]
  c_67_36_0_False_resize <= c_36;
  c_67_36_0_False_shift <= shift_left(c_67_36_0_False_resize, 0);
  c_67_66_0_False_resize <= c_66;
  c_67_66_0_False_shift <= shift_left(c_67_66_0_False_resize, 0);
  with config_select_12 select c_67_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_67_sel is
        when "0" => c_67 <= c_67_36_0_False_shift;
        when others => c_67 <= c_67_66_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 68 and associated fundamentals [[-255], [-706], [-337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 69 and associated fundamentals [[-255], [-706], [-337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 70 and associated fundamentals [[255], [706], [337]]
  c_70_resize <= c_69;
  c_70 <= -shift_left(c_70_resize, 0);
  -- node of type 'register' in stage 11 with id 71 and associated fundamentals [[-848], [-662], [-583]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 72 and associated fundamentals [[-848], [-662], [-583]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 73 and associated fundamentals [[848], [662], [583]]
  c_73_resize <= c_72;
  c_73 <= -shift_left(c_73_resize, 0);
  -- node of type 'register' in stage 12 with id 74 and associated fundamentals [[-1022], [-429], [-521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_53 & "";
    end if;
  end process;
  -- node of type 'output' in stage 12 with id 75 and associated fundamentals [[1022], [429], [521]]
  c_75_resize <= c_74;
  c_75 <= -shift_left(c_75_resize, 0);
  -- node of type 'output' in stage 12 with id 76 and associated fundamentals [[338], [491], [461]]
  c_76_resize <= c_64;
  c_76 <= shift_left(c_76_resize, 0);
  -- node of type 'output' in stage 12 with id 77 and associated fundamentals [[572], [455], [693]]
  c_77_resize <= c_67;
  c_77 <= shift_left(c_77_resize, 0);
end architecture;

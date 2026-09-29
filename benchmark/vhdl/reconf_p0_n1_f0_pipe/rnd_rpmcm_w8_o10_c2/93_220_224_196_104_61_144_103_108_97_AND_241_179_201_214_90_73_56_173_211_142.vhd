library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(22 downto 0);
    y_5: out std_logic_vector(22 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(20 downto 0);
  signal c_4_i0_resize: signed(20 downto 0);
  signal c_4_i1_resize: signed(20 downto 0);
  signal c_4_i0_shift: signed(20 downto 0);
  signal c_4_i1_shift: signed(20 downto 0);
  signal c_4_arith: signed(20 downto 0);
  signal c_4_oshift: signed(20 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_1_0_False_resize: signed(18 downto 0);
  signal c_5_1_0_False_shift: signed(18 downto 0);
  signal c_5_2_0_False_resize: signed(18 downto 0);
  signal c_5_2_0_False_shift: signed(18 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_7_0_False_resize: signed(21 downto 0);
  signal c_10_7_0_False_shift: signed(21 downto 0);
  signal c_10_9_3_False_resize: signed(21 downto 0);
  signal c_10_9_3_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_i0_resize: signed(22 downto 0);
  signal c_14_i1_resize: signed(22 downto 0);
  signal c_14_i0_shift: signed(22 downto 0);
  signal c_14_i1_shift: signed(22 downto 0);
  signal c_14_arith: signed(22 downto 0);
  signal c_14_oshift: signed(22 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(21 downto 0);
  signal c_15_7_1_False_resize: signed(21 downto 0);
  signal c_15_7_1_False_shift: signed(21 downto 0);
  signal c_15_7_0_False_resize: signed(21 downto 0);
  signal c_15_7_0_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(23 downto 0);
  signal c_19_3_0_False_resize: signed(23 downto 0);
  signal c_19_3_0_False_shift: signed(23 downto 0);
  signal c_19_11_5_False_resize: signed(23 downto 0);
  signal c_19_11_5_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(20 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_i0_resize: signed(23 downto 0);
  signal c_21_i1_resize: signed(23 downto 0);
  signal c_21_i0_shift: signed(23 downto 0);
  signal c_21_i1_shift: signed(23 downto 0);
  signal c_21_arith: signed(23 downto 0);
  signal c_21_oshift: signed(23 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(22 downto 0);
  signal c_22_1_3_False_resize: signed(22 downto 0);
  signal c_22_1_3_False_shift: signed(22 downto 0);
  signal c_22_4_0_False_resize: signed(22 downto 0);
  signal c_22_4_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_14_2_False_resize: signed(22 downto 0);
  signal c_25_14_2_False_shift: signed(22 downto 0);
  signal c_25_14_0_False_resize: signed(22 downto 0);
  signal c_25_14_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_28_1_False_resize: signed(23 downto 0);
  signal c_32_28_1_False_shift: signed(23 downto 0);
  signal c_32_17_0_False_resize: signed(23 downto 0);
  signal c_32_17_0_False_shift: signed(23 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_31_0_False_resize: signed(23 downto 0);
  signal c_33_31_0_False_shift: signed(23 downto 0);
  signal c_33_14_3_False_resize: signed(23 downto 0);
  signal c_33_14_3_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(21 downto 0);
  signal c_34_7_0_False_resize: signed(21 downto 0);
  signal c_34_7_0_False_shift: signed(21 downto 0);
  signal c_34_7_2_False_resize: signed(21 downto 0);
  signal c_34_7_2_False_shift: signed(21 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_36_35_0_False_resize: signed(22 downto 0);
  signal c_36_35_0_False_shift: signed(22 downto 0);
  signal c_36_14_0_False_resize: signed(22 downto 0);
  signal c_36_14_0_False_shift: signed(22 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(20 downto 0);
  signal c_37_1_1_False_resize: signed(20 downto 0);
  signal c_37_1_1_False_shift: signed(20 downto 0);
  signal c_37_1_0_False_resize: signed(20 downto 0);
  signal c_37_1_0_False_shift: signed(20 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_17_0_False_resize: signed(23 downto 0);
  signal c_38_17_0_False_shift: signed(23 downto 0);
  signal c_38_35_0_False_resize: signed(23 downto 0);
  signal c_38_35_0_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_31_0_False_resize: signed(23 downto 0);
  signal c_39_31_0_False_shift: signed(23 downto 0);
  signal c_39_28_0_False_resize: signed(23 downto 0);
  signal c_39_28_0_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(21 downto 0);
  signal c_53: signed(21 downto 0);
  signal c_54: signed(21 downto 0);
  signal c_55: signed(22 downto 0);
  signal c_55_resize: signed(22 downto 0);
  signal c_56: signed(22 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_57_resize: signed(22 downto 0);
  signal c_58: signed(20 downto 0);
  signal c_59: signed(20 downto 0);
  signal c_60: signed(20 downto 0);
  signal c_61: signed(20 downto 0);
  signal c_62: signed(20 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_63_resize: signed(23 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_65_resize: signed(23 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_66_resize: signed(23 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_68_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 1 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 2 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 3 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 4 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 5 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 6 with id 63
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_63);
    end if;
  end process;
  -- output node 7 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_65);
    end if;
  end process;
  -- output node 8 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_66);
    end if;
  end process;
  -- output node 9 with id 68
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_68);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[9], [7]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_1_sub_sel,
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[110], [142]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 7,
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
      c_3 <= c_3_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 4 and associated fundamentals [[17], [17]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 4,
      s_y_i => 0,
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
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[1], [7]]
  c_5_1_0_False_resize <= c_1(18 downto 0);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  c_5_2_0_False_resize <= resize(c_2, 19);
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_0_False_shift;
        when others => c_5 <= c_5_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[17], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[13], [45]]
  with config_select_3 select c_7_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 22,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_5,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[8], [45]]
  c_10_7_0_False_resize <= c_7;
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  c_10_9_3_False_resize <= resize(c_9, 22);
  c_10_9_3_False_shift <= shift_left(c_10_9_3_False_resize, 3);
  with config_select_4 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_7_0_False_shift;
        when others => c_10 <= c_10_9_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 11 and associated fundamentals [[9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 14 and associated fundamentals [[28], [73]]
  with config_select_5 select c_14_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
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
      sub_i => c_14_sub_sel,
      x_i => c_13,
      y_i => c_10,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[26], [45]]
  c_15_7_1_False_resize <= c_7;
  c_15_7_1_False_shift <= shift_left(c_15_7_1_False_resize, 1);
  c_15_7_0_False_resize <= c_7;
  c_15_7_0_False_shift <= shift_left(c_15_7_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_7_1_False_shift;
        when others => c_15 <= c_15_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_9 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 17 and associated fundamentals [[103], [179]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
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
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 18 and associated fundamentals [[61], [173]]
  with config_select_4 select c_18_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_18_sub_sel,
      x_i => c_7,
      y_i => c_12,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[110], [224]]
  c_19_3_0_False_resize <= c_3;
  c_19_3_0_False_shift <= shift_left(c_19_3_0_False_resize, 0);
  c_19_11_5_False_resize <= resize(c_11, 24);
  c_19_11_5_False_shift <= shift_left(c_19_11_5_False_resize, 5);
  with config_select_3 select c_19_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_3_0_False_shift;
        when others => c_19 <= c_19_11_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[17], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[93], [241]]
  with config_select_4 select c_21_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 22 and associated fundamentals [[72], [17]]
  c_22_1_3_False_resize <= resize(c_1, 23);
  c_22_1_3_False_shift <= shift_left(c_22_1_3_False_resize, 3);
  c_22_4_0_False_resize <= resize(c_4, 23);
  c_22_4_0_False_shift <= shift_left(c_22_4_0_False_resize, 0);
  with config_select_2 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_1_3_False_shift;
        when others => c_22 <= c_22_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 23 and associated fundamentals [[72], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 24 and associated fundamentals [[196], [214]]
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_7,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 25 and associated fundamentals [[112], [73]]
  c_25_14_2_False_resize <= c_14;
  c_25_14_2_False_shift <= shift_left(c_25_14_2_False_resize, 2);
  c_25_14_0_False_resize <= c_14;
  c_25_14_0_False_shift <= shift_left(c_25_14_0_False_resize, 0);
  with config_select_6 select c_25_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_14_2_False_shift;
        when others => c_25 <= c_25_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 26 and associated fundamentals [[110], [142]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 27 and associated fundamentals [[110], [142]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[110], [142]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[110], [142]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 7 with id 30 and associated fundamentals [[-108], [-211]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 24,
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
  -- node of type 'add' in stage 5 with id 31 and associated fundamentals [[97], [201]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 24,
      w_o => 24,
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
      x_i => c_13,
      y_i => c_18,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 32 and associated fundamentals [[220], [179]]
  c_32_28_1_False_resize <= c_28;
  c_32_28_1_False_shift <= shift_left(c_32_28_1_False_resize, 1);
  c_32_17_0_False_resize <= c_17;
  c_32_17_0_False_shift <= shift_left(c_32_17_0_False_resize, 0);
  with config_select_6 select c_32_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_28_1_False_shift;
        when others => c_32 <= c_32_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 33 and associated fundamentals [[224], [201]]
  c_33_31_0_False_resize <= c_31;
  c_33_31_0_False_shift <= shift_left(c_33_31_0_False_resize, 0);
  c_33_14_3_False_resize <= resize(c_14, 24);
  c_33_14_3_False_shift <= shift_left(c_33_14_3_False_resize, 3);
  with config_select_6 select c_33_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_31_0_False_shift;
        when others => c_33 <= c_33_14_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 34 and associated fundamentals [[52], [45]]
  c_34_7_0_False_resize <= c_7;
  c_34_7_0_False_shift <= shift_left(c_34_7_0_False_resize, 0);
  c_34_7_2_False_resize <= c_7;
  c_34_7_2_False_shift <= shift_left(c_34_7_2_False_resize, 2);
  with config_select_4 select c_34_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_7_0_False_shift;
        when others => c_34 <= c_34_7_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[61], [173]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 36 and associated fundamentals [[61], [73]]
  c_36_35_0_False_resize <= c_35(22 downto 0);
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  c_36_14_0_False_resize <= c_14;
  c_36_14_0_False_shift <= shift_left(c_36_14_0_False_resize, 0);
  with config_select_6 select c_36_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_35_0_False_shift;
        when others => c_36 <= c_36_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 37 and associated fundamentals [[18], [7]]
  c_37_1_1_False_resize <= resize(c_1, 21);
  c_37_1_1_False_shift <= shift_left(c_37_1_1_False_resize, 1);
  c_37_1_0_False_resize <= resize(c_1, 21);
  c_37_1_0_False_shift <= shift_left(c_37_1_0_False_resize, 0);
  with config_select_2 select c_37_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_1_1_False_shift;
        when others => c_37 <= c_37_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 38 and associated fundamentals [[103], [173]]
  c_38_17_0_False_resize <= c_17;
  c_38_17_0_False_shift <= shift_left(c_38_17_0_False_resize, 0);
  c_38_35_0_False_resize <= c_35;
  c_38_35_0_False_shift <= shift_left(c_38_35_0_False_resize, 0);
  with config_select_6 select c_38_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_17_0_False_shift;
        when others => c_38 <= c_38_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 39 and associated fundamentals [[97], [142]]
  c_39_31_0_False_resize <= c_31;
  c_39_31_0_False_shift <= shift_left(c_39_31_0_False_resize, 0);
  c_39_28_0_False_resize <= c_28;
  c_39_28_0_False_shift <= shift_left(c_39_28_0_False_resize, 0);
  with config_select_6 select c_39_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_31_0_False_shift;
        when others => c_39 <= c_39_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 40 and associated fundamentals [[93], [241]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 41 and associated fundamentals [[93], [241]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[93], [241]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 43 and associated fundamentals [[93], [241]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[220], [179]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_32 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 45 and associated fundamentals [[220], [179]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'register' in stage 7 with id 46 and associated fundamentals [[224], [201]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_33 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 47 and associated fundamentals [[224], [201]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'register' in stage 5 with id 48 and associated fundamentals [[196], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 49 and associated fundamentals [[196], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 50 and associated fundamentals [[196], [214]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 51 and associated fundamentals [[196], [214]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'register' in stage 5 with id 52 and associated fundamentals [[52], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 53 and associated fundamentals [[52], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 54 and associated fundamentals [[52], [45]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 55 and associated fundamentals [[104], [90]]
  c_55_resize <= resize(c_54, 23);
  c_55 <= shift_left(c_55_resize, 1);
  -- node of type 'register' in stage 7 with id 56 and associated fundamentals [[61], [73]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_36 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 57 and associated fundamentals [[61], [73]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'register' in stage 3 with id 58 and associated fundamentals [[18], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 59 and associated fundamentals [[18], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 60 and associated fundamentals [[18], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 61 and associated fundamentals [[18], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 62 and associated fundamentals [[18], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 63 and associated fundamentals [[144], [56]]
  c_63_resize <= resize(c_62, 24);
  c_63 <= shift_left(c_63_resize, 3);
  -- node of type 'register' in stage 7 with id 64 and associated fundamentals [[103], [173]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_38 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 65 and associated fundamentals [[103], [173]]
  c_65_resize <= c_64;
  c_65 <= shift_left(c_65_resize, 0);
  -- node of type 'output' in stage 7 with id 66 and associated fundamentals [[108], [211]]
  c_66_resize <= c_30;
  c_66 <= -shift_left(c_66_resize, 0);
  -- node of type 'register' in stage 7 with id 67 and associated fundamentals [[97], [142]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_39 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 68 and associated fundamentals [[97], [142]]
  c_68_resize <= c_67;
  c_68 <= shift_left(c_68_resize, 0);
end architecture;

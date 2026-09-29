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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
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
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(18 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_i0_resize: signed(20 downto 0);
  signal c_6_i1_resize: signed(20 downto 0);
  signal c_6_i0_shift: signed(20 downto 0);
  signal c_6_i1_shift: signed(20 downto 0);
  signal c_6_arith: signed(20 downto 0);
  signal c_6_oshift: signed(20 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(20 downto 0);
  signal c_7_i0_resize: signed(20 downto 0);
  signal c_7_i1_resize: signed(20 downto 0);
  signal c_7_i0_shift: signed(20 downto 0);
  signal c_7_i1_shift: signed(20 downto 0);
  signal c_7_arith: signed(20 downto 0);
  signal c_7_oshift: signed(20 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(25 downto 0);
  signal c_11_4_5_False_resize: signed(25 downto 0);
  signal c_11_4_5_False_shift: signed(25 downto 0);
  signal c_11_8_0_False_resize: signed(25 downto 0);
  signal c_11_8_0_False_shift: signed(25 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_12_0_False_resize: signed(21 downto 0);
  signal c_13_12_0_False_shift: signed(21 downto 0);
  signal c_13_6_1_False_resize: signed(21 downto 0);
  signal c_13_6_1_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(18 downto 0);
  signal c_17: signed(18 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_15_0_False_resize: signed(25 downto 0);
  signal c_19_15_0_False_shift: signed(25 downto 0);
  signal c_19_18_5_False_resize: signed(25 downto 0);
  signal c_19_18_5_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(18 downto 0);
  signal c_21: signed(20 downto 0);
  signal c_21_20_2_False_resize: signed(20 downto 0);
  signal c_21_20_2_False_shift: signed(20 downto 0);
  signal c_21_7_0_False_resize: signed(20 downto 0);
  signal c_21_7_0_False_shift: signed(20 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_24: signed(20 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(23 downto 0);
  signal c_26_9_0_False_resize: signed(23 downto 0);
  signal c_26_9_0_False_shift: signed(23 downto 0);
  signal c_26_6_3_False_resize: signed(23 downto 0);
  signal c_26_6_3_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_28_27_0_False_resize: signed(21 downto 0);
  signal c_28_27_0_False_shift: signed(21 downto 0);
  signal c_28_6_0_False_resize: signed(21 downto 0);
  signal c_28_6_0_False_shift: signed(21 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(20 downto 0);
  signal c_31: signed(20 downto 0);
  signal c_32: signed(20 downto 0);
  signal c_33: signed(20 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_34_25_0_False_resize: signed(24 downto 0);
  signal c_34_25_0_False_shift: signed(24 downto 0);
  signal c_34_33_1_False_resize: signed(24 downto 0);
  signal c_34_33_1_False_shift: signed(24 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(20 downto 0);
  signal c_35_12_0_False_resize: signed(20 downto 0);
  signal c_35_12_0_False_shift: signed(20 downto 0);
  signal c_35_6_0_False_resize: signed(20 downto 0);
  signal c_35_6_0_False_shift: signed(20 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(20 downto 0);
  signal c_37: signed(20 downto 0);
  signal c_38: signed(20 downto 0);
  signal c_39: signed(20 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_40_i0_resize: signed(24 downto 0);
  signal c_40_i1_resize: signed(24 downto 0);
  signal c_40_i0_shift: signed(24 downto 0);
  signal c_40_i1_shift: signed(24 downto 0);
  signal c_40_arith: signed(24 downto 0);
  signal c_40_oshift: signed(24 downto 0);
  signal c_41: signed(20 downto 0);
  signal c_42: signed(20 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_42_0_False_resize: signed(23 downto 0);
  signal c_43_42_0_False_shift: signed(23 downto 0);
  signal c_43_29_1_False_resize: signed(23 downto 0);
  signal c_43_29_1_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_45: signed(21 downto 0);
  signal c_46: signed(21 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_i0_resize: signed(25 downto 0);
  signal c_47_i1_resize: signed(25 downto 0);
  signal c_47_i0_shift: signed(25 downto 0);
  signal c_47_i1_shift: signed(25 downto 0);
  signal c_47_arith: signed(25 downto 0);
  signal c_47_oshift: signed(25 downto 0);
  signal c_48: signed(18 downto 0);
  signal c_49: signed(18 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_17_7_False_resize: signed(25 downto 0);
  signal c_50_17_7_False_shift: signed(25 downto 0);
  signal c_50_49_3_False_resize: signed(25 downto 0);
  signal c_50_49_3_False_shift: signed(25 downto 0);
  signal c_50_10_0_False_resize: signed(25 downto 0);
  signal c_50_10_0_False_shift: signed(25 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_52_2_False_resize: signed(25 downto 0);
  signal c_53_52_2_False_shift: signed(25 downto 0);
  signal c_53_25_0_False_resize: signed(25 downto 0);
  signal c_53_25_0_False_shift: signed(25 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_resize: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_resize: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_66_resize: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_68_resize: signed(25 downto 0);
  signal c_69: signed(24 downto 0);
  signal c_69_resize: signed(24 downto 0);
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
  -- output node 1 with id 61
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_61);
    end if;
  end process;
  -- output node 2 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_66);
    end if;
  end process;
  -- output node 3 with id 68
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_68);
    end if;
  end process;
  -- output node 4 with id 69
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_69);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[6], [2], [6]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      sub_i => c_1_sub_sel,
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
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[5], [3], [3]]
  with config_select_1 select c_2_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
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
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[39], [25], [25]]
  with config_select_2 select c_4_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_4_sub_sel,
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
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[6], [2], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[27], [29], [13]]
  with config_select_3 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 7 and associated fundamentals [[29], [11], [27]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 21,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[997], [1053], [1011]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 10,
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
      y_i => c_6,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[1], [800], [800]]
  c_11_4_5_False_resize <= resize(c_4, 26);
  c_11_4_5_False_shift <= shift_left(c_11_4_5_False_resize, 5);
  c_11_8_0_False_resize <= resize(c_8, 26);
  c_11_8_0_False_shift <= shift_left(c_11_8_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_4_5_False_shift;
        when others => c_11 <= c_11_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[29], [11], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[29], [58], [27]]
  c_13_12_0_False_resize <= resize(c_12, 22);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_6_1_False_resize <= resize(c_6, 22);
  c_13_6_1_False_shift <= shift_left(c_13_6_1_False_resize, 1);
  with config_select_4 select c_13_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_12_0_False_shift;
        when others => c_13 <= c_13_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[1], [800], [800]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 15 and associated fundamentals [[30], [742], [773]]
  with config_select_5 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_13,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[6], [2], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[6], [2], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[6], [2], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 19 and associated fundamentals [[192], [64], [773]]
  c_19_15_0_False_resize <= c_15;
  c_19_15_0_False_shift <= shift_left(c_19_15_0_False_resize, 0);
  c_19_18_5_False_resize <= resize(c_18, 26);
  c_19_18_5_False_shift <= shift_left(c_19_18_5_False_resize, 5);
  with config_select_6 select c_19_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_15_0_False_shift;
        when others => c_19 <= c_19_18_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 20 and associated fundamentals [[5], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[29], [11], [12]]
  c_21_20_2_False_resize <= resize(c_20, 21);
  c_21_20_2_False_shift <= shift_left(c_21_20_2_False_resize, 2);
  c_21_7_0_False_resize <= c_7;
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_20_2_False_shift;
        when others => c_21 <= c_21_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[29], [11], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[29], [11], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[29], [11], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 25 and associated fundamentals [[424], [152], [677]]
  with config_select_7 select c_25_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 21,
      w_o => 26,
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
      sub_i => c_25_sub_sel,
      x_i => c_19,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[216], [1], [104]]
  c_26_9_0_False_resize <= resize(c_9, 24);
  c_26_9_0_False_shift <= shift_left(c_26_9_0_False_resize, 0);
  c_26_6_3_False_resize <= resize(c_6, 24);
  c_26_6_3_False_shift <= shift_left(c_26_6_3_False_resize, 3);
  with config_select_4 select c_26_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_9_0_False_shift;
        when others => c_26 <= c_26_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 27 and associated fundamentals [[39], [25], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[39], [29], [13]]
  c_28_27_0_False_resize <= c_27;
  c_28_27_0_False_shift <= shift_left(c_28_27_0_False_resize, 0);
  c_28_6_0_False_resize <= resize(c_6, 22);
  c_28_6_0_False_shift <= shift_left(c_28_6_0_False_resize, 0);
  with config_select_4 select c_28_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_27_0_False_shift;
        when others => c_28 <= c_28_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 29 and associated fundamentals [[177], [30], [117]]
  with config_select_5 select c_29_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_29_sub_sel,
      x_i => c_26,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[29], [11], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[29], [11], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[29], [11], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[29], [11], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 34 and associated fundamentals [[424], [152], [54]]
  c_34_25_0_False_resize <= c_25(24 downto 0);
  c_34_25_0_False_shift <= shift_left(c_34_25_0_False_resize, 0);
  c_34_33_1_False_resize <= resize(c_33, 25);
  c_34_33_1_False_shift <= shift_left(c_34_33_1_False_resize, 1);
  with config_select_8 select c_34_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_25_0_False_shift;
        when others => c_34 <= c_34_33_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 35 and associated fundamentals [[29], [29], [13]]
  c_35_12_0_False_resize <= c_12;
  c_35_12_0_False_shift <= shift_left(c_35_12_0_False_resize, 0);
  c_35_6_0_False_resize <= c_6;
  c_35_6_0_False_shift <= shift_left(c_35_6_0_False_resize, 0);
  with config_select_4 select c_35_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_12_0_False_shift;
        when others => c_35 <= c_35_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 36 and associated fundamentals [[29], [29], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[29], [29], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[29], [29], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[29], [29], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 9 with id 40 and associated fundamentals [[395], [123], [41]]
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_34,
      y_i => c_39,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 41 and associated fundamentals [[27], [29], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 42 and associated fundamentals [[27], [29], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 43 and associated fundamentals [[27], [60], [234]]
  c_43_42_0_False_resize <= resize(c_42, 24);
  c_43_42_0_False_shift <= shift_left(c_43_42_0_False_resize, 0);
  c_43_29_1_False_resize <= c_29;
  c_43_29_1_False_shift <= shift_left(c_43_29_1_False_resize, 1);
  with config_select_6 select c_43_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_42_0_False_shift;
        when others => c_43 <= c_43_29_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 44 and associated fundamentals [[39], [25], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 45 and associated fundamentals [[39], [25], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 46 and associated fundamentals [[39], [25], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 47 and associated fundamentals [[147], [265], [961]]
  inst_adder_node_47: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 26,
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
      x_i => c_43,
      y_i => c_46,
      z_o => c_47_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_47_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 48 and associated fundamentals [[5], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 49 and associated fundamentals [[5], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 50 and associated fundamentals [[997], [24], [768]]
  c_50_17_7_False_resize <= resize(c_17, 26);
  c_50_17_7_False_shift <= shift_left(c_50_17_7_False_resize, 7);
  c_50_49_3_False_resize <= resize(c_49, 26);
  c_50_49_3_False_shift <= shift_left(c_50_49_3_False_resize, 3);
  c_50_10_0_False_resize <= c_10;
  c_50_10_0_False_shift <= shift_left(c_50_10_0_False_resize, 0);
  with config_select_5 select c_50_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_17_7_False_shift;
        when "01" => c_50 <= c_50_49_3_False_shift;
        when others => c_50 <= c_50_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 51 and associated fundamentals [[177], [30], [117]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 52 and associated fundamentals [[177], [30], [117]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 53 and associated fundamentals [[708], [152], [677]]
  c_53_52_2_False_resize <= resize(c_52, 26);
  c_53_52_2_False_shift <= shift_left(c_53_52_2_False_resize, 2);
  c_53_25_0_False_resize <= c_25;
  c_53_25_0_False_shift <= shift_left(c_53_25_0_False_resize, 0);
  with config_select_8 select c_53_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_52_2_False_shift;
        when others => c_53 <= c_53_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 54 and associated fundamentals [[30], [742], [773]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 55 and associated fundamentals [[30], [742], [773]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[30], [742], [773]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[30], [742], [773]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 58 and associated fundamentals [[30], [742], [773]]
  c_58_resize <= c_57;
  c_58 <= shift_left(c_58_resize, 0);
  -- node of type 'register' in stage 8 with id 59 and associated fundamentals [[147], [265], [961]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 60 and associated fundamentals [[147], [265], [961]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 61 and associated fundamentals [[147], [265], [961]]
  c_61_resize <= c_60;
  c_61 <= shift_left(c_61_resize, 0);
  -- node of type 'register' in stage 6 with id 62 and associated fundamentals [[997], [24], [768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 63 and associated fundamentals [[997], [24], [768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 64 and associated fundamentals [[997], [24], [768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 65 and associated fundamentals [[997], [24], [768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 66 and associated fundamentals [[997], [24], [768]]
  c_66_resize <= c_65;
  c_66 <= shift_left(c_66_resize, 0);
  -- node of type 'register' in stage 9 with id 67 and associated fundamentals [[708], [152], [677]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_53 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 68 and associated fundamentals [[708], [152], [677]]
  c_68_resize <= c_67;
  c_68 <= shift_left(c_68_resize, 0);
  -- node of type 'output' in stage 9 with id 69 and associated fundamentals [[395], [123], [41]]
  c_69_resize <= c_40;
  c_69 <= shift_left(c_69_resize, 0);
end architecture;

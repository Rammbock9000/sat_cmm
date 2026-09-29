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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_3_0_False_resize: signed(21 downto 0);
  signal c_6_3_0_False_shift: signed(21 downto 0);
  signal c_6_5_6_False_resize: signed(21 downto 0);
  signal c_6_5_6_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_i0_resize: signed(21 downto 0);
  signal c_8_i1_resize: signed(21 downto 0);
  signal c_8_i0_shift: signed(21 downto 0);
  signal c_8_i1_shift: signed(21 downto 0);
  signal c_8_arith: signed(21 downto 0);
  signal c_8_oshift: signed(21 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(21 downto 0);
  signal c_9_4_0_False_resize: signed(21 downto 0);
  signal c_9_4_0_False_shift: signed(21 downto 0);
  signal c_9_2_1_False_resize: signed(21 downto 0);
  signal c_9_2_1_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(18 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_13_3_False_resize: signed(21 downto 0);
  signal c_14_13_3_False_shift: signed(21 downto 0);
  signal c_14_3_0_False_resize: signed(21 downto 0);
  signal c_14_3_0_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_19: signed(18 downto 0);
  signal c_20: signed(18 downto 0);
  signal c_21: signed(18 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_23: signed(18 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_22_0_False_resize: signed(25 downto 0);
  signal c_24_22_0_False_shift: signed(25 downto 0);
  signal c_24_23_5_False_resize: signed(25 downto 0);
  signal c_24_23_5_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_12_0_False_resize: signed(22 downto 0);
  signal c_28_12_0_False_shift: signed(22 downto 0);
  signal c_28_27_1_False_resize: signed(22 downto 0);
  signal c_28_27_1_False_shift: signed(22 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
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
  signal c_32: signed(21 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_22_0_False_resize: signed(25 downto 0);
  signal c_34_22_0_False_shift: signed(25 downto 0);
  signal c_34_33_4_False_resize: signed(25 downto 0);
  signal c_34_33_4_False_shift: signed(25 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_i0_resize: signed(25 downto 0);
  signal c_39_i1_resize: signed(25 downto 0);
  signal c_39_i0_shift: signed(25 downto 0);
  signal c_39_i1_shift: signed(25 downto 0);
  signal c_39_arith: signed(25 downto 0);
  signal c_39_oshift: signed(25 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(24 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_22_0_False_resize: signed(25 downto 0);
  signal c_41_22_0_False_shift: signed(25 downto 0);
  signal c_41_40_3_False_resize: signed(25 downto 0);
  signal c_41_40_3_False_shift: signed(25 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(21 downto 0);
  signal c_43: signed(21 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_45: signed(21 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_12_4_False_resize: signed(25 downto 0);
  signal c_46_12_4_False_shift: signed(25 downto 0);
  signal c_46_45_1_False_resize: signed(25 downto 0);
  signal c_46_45_1_False_shift: signed(25 downto 0);
  signal c_46_45_0_False_resize: signed(25 downto 0);
  signal c_46_45_0_False_shift: signed(25 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_22_0_False_resize: signed(25 downto 0);
  signal c_49_22_0_False_shift: signed(25 downto 0);
  signal c_49_48_5_False_resize: signed(25 downto 0);
  signal c_49_48_5_False_shift: signed(25 downto 0);
  signal c_49_37_1_False_resize: signed(25 downto 0);
  signal c_49_37_1_False_shift: signed(25 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_resize: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_resize: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_resize: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_resize: signed(25 downto 0);
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
  -- output node 0 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 1 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 2 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 3 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_58);
    end if;
  end process;
  -- output node 4 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_59);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [3], [5]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[28], [20], [36]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 3,
      s_y_i => 2,
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
  -- node of type 'add' in stage 1 with id 4 and associated fundamentals [[33], [33], [33]]
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
      c_4 <= c_4_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[28], [20], [64]]
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_6_False_resize <= resize(c_5, 22);
  c_6_5_6_False_shift <= shift_left(c_6_5_6_False_resize, 6);
  with config_select_3 select c_6_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_5_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[29], [19], [63]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[2], [2], [33]]
  c_9_4_0_False_resize <= c_4;
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  c_9_2_1_False_resize <= resize(c_2, 22);
  c_9_2_1_False_shift <= shift_left(c_9_2_1_False_resize, 1);
  with config_select_2 select c_9_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_4_0_False_shift;
        when others => c_9 <= c_9_2_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[2], [2], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[2], [2], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[37], [11], [195]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_12_sub_sel,
      x_i => c_8,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 13 and associated fundamentals [[3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[28], [24], [36]]
  c_14_13_3_False_resize <= resize(c_13, 22);
  c_14_13_3_False_shift <= shift_left(c_14_13_3_False_resize, 3);
  c_14_3_0_False_resize <= c_3;
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_13_3_False_shift;
        when others => c_14 <= c_14_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[28], [24], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[28], [24], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 17 and associated fundamentals [[93], [59], [267]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 25,
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
      x_i => c_16,
      y_i => c_12,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 7 with id 22 and associated fundamentals [[675], [709], [1013]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 8,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_21,
      y_i => c_17,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 23 and associated fundamentals [[3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 24 and associated fundamentals [[96], [96], [1013]]
  c_24_22_0_False_resize <= c_22;
  c_24_22_0_False_shift <= shift_left(c_24_22_0_False_resize, 0);
  c_24_23_5_False_resize <= resize(c_23, 26);
  c_24_23_5_False_shift <= shift_left(c_24_23_5_False_resize, 5);
  with config_select_8 select c_24_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_22_0_False_shift;
        when others => c_24 <= c_24_23_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 25 and associated fundamentals [[28], [20], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[28], [20], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[28], [20], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 28 and associated fundamentals [[37], [11], [72]]
  c_28_12_0_False_resize <= c_12(22 downto 0);
  c_28_12_0_False_shift <= shift_left(c_28_12_0_False_resize, 0);
  c_28_27_1_False_resize <= resize(c_27, 23);
  c_28_27_1_False_shift <= shift_left(c_28_27_1_False_resize, 1);
  with config_select_6 select c_28_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_12_0_False_shift;
        when others => c_28 <= c_28_27_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[37], [11], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 30 and associated fundamentals [[37], [11], [72]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 31 and associated fundamentals [[59], [107], [941]]
  with config_select_9 select c_31_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      sub_i => c_31_sub_sel,
      x_i => c_24,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[28], [20], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[28], [20], [36]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 34 and associated fundamentals [[448], [709], [576]]
  c_34_22_0_False_resize <= c_22;
  c_34_22_0_False_shift <= shift_left(c_34_22_0_False_resize, 0);
  c_34_33_4_False_resize <= resize(c_33, 26);
  c_34_33_4_False_shift <= shift_left(c_34_33_4_False_resize, 4);
  with config_select_8 select c_34_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_22_0_False_shift;
        when others => c_34 <= c_34_33_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[29], [19], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[29], [19], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[29], [19], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[29], [19], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 39 and associated fundamentals [[506], [747], [450]]
  with config_select_9 select c_39_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
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
      sub_i => c_39_sub_sel,
      x_i => c_34,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[93], [59], [267]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 41 and associated fundamentals [[744], [709], [1013]]
  c_41_22_0_False_resize <= c_22;
  c_41_22_0_False_shift <= shift_left(c_41_22_0_False_resize, 0);
  c_41_40_3_False_resize <= resize(c_40, 26);
  c_41_40_3_False_shift <= shift_left(c_41_40_3_False_resize, 3);
  with config_select_8 select c_41_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_22_0_False_shift;
        when others => c_41 <= c_41_40_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 42 and associated fundamentals [[33], [33], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 43 and associated fundamentals [[33], [33], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 44 and associated fundamentals [[33], [33], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 45 and associated fundamentals [[33], [33], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 46 and associated fundamentals [[592], [33], [66]]
  c_46_12_4_False_resize <= resize(c_12, 26);
  c_46_12_4_False_shift <= shift_left(c_46_12_4_False_resize, 4);
  c_46_45_1_False_resize <= resize(c_45, 26);
  c_46_45_1_False_shift <= shift_left(c_46_45_1_False_resize, 1);
  c_46_45_0_False_resize <= resize(c_45, 26);
  c_46_45_0_False_shift <= shift_left(c_46_45_0_False_resize, 0);
  with config_select_6 select c_46_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_12_4_False_shift;
        when "01" => c_46 <= c_46_45_1_False_shift;
        when others => c_46 <= c_46_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 47 and associated fundamentals [[37], [11], [195]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 48 and associated fundamentals [[37], [11], [195]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 49 and associated fundamentals [[675], [352], [126]]
  c_49_22_0_False_resize <= c_22;
  c_49_22_0_False_shift <= shift_left(c_49_22_0_False_resize, 0);
  c_49_48_5_False_resize <= resize(c_48, 26);
  c_49_48_5_False_shift <= shift_left(c_49_48_5_False_resize, 5);
  c_49_37_1_False_resize <= resize(c_37, 26);
  c_49_37_1_False_shift <= shift_left(c_49_37_1_False_resize, 1);
  with config_select_8 select c_49_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_22_0_False_shift;
        when "01" => c_49 <= c_49_48_5_False_shift;
        when others => c_49 <= c_49_37_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[744], [709], [1013]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_41 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 51 and associated fundamentals [[744], [709], [1013]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'register' in stage 7 with id 52 and associated fundamentals [[592], [33], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 53 and associated fundamentals [[592], [33], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[592], [33], [66]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 55 and associated fundamentals [[592], [33], [66]]
  c_55_resize <= c_54;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[675], [352], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_49 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 57 and associated fundamentals [[675], [352], [126]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'output' in stage 9 with id 58 and associated fundamentals [[506], [747], [450]]
  c_58_resize <= c_39;
  c_58 <= shift_left(c_58_resize, 0);
  -- node of type 'output' in stage 9 with id 59 and associated fundamentals [[59], [107], [941]]
  c_59_resize <= c_31;
  c_59 <= shift_left(c_59_resize, 0);
end architecture;

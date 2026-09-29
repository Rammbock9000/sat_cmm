library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(22 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(21 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_4_i0_resize: signed(17 downto 0);
  signal c_4_i1_resize: signed(17 downto 0);
  signal c_4_i0_shift: signed(17 downto 0);
  signal c_4_i1_shift: signed(17 downto 0);
  signal c_4_arith: signed(17 downto 0);
  signal c_4_oshift: signed(17 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_3_3_False_resize: signed(18 downto 0);
  signal c_7_3_3_False_shift: signed(18 downto 0);
  signal c_7_3_0_False_resize: signed(18 downto 0);
  signal c_7_3_0_False_shift: signed(18 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(17 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(21 downto 0);
  signal c_10_4_0_False_resize: signed(21 downto 0);
  signal c_10_4_0_False_shift: signed(21 downto 0);
  signal c_10_3_6_False_resize: signed(21 downto 0);
  signal c_10_3_6_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_3_3_False_resize: signed(22 downto 0);
  signal c_11_3_3_False_shift: signed(22 downto 0);
  signal c_11_6_0_False_resize: signed(22 downto 0);
  signal c_11_6_0_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_4_2_False_resize: signed(22 downto 0);
  signal c_13_4_2_False_shift: signed(22 downto 0);
  signal c_13_6_0_False_resize: signed(22 downto 0);
  signal c_13_6_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(17 downto 0);
  signal c_14_4_0_False_resize: signed(17 downto 0);
  signal c_14_4_0_False_shift: signed(17 downto 0);
  signal c_14_3_0_False_resize: signed(17 downto 0);
  signal c_14_3_0_False_shift: signed(17 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_16: signed(17 downto 0);
  signal c_16_4_0_False_resize: signed(17 downto 0);
  signal c_16_4_0_False_shift: signed(17 downto 0);
  signal c_16_3_2_False_resize: signed(17 downto 0);
  signal c_16_3_2_False_shift: signed(17 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_i0_resize: signed(21 downto 0);
  signal c_17_i1_resize: signed(21 downto 0);
  signal c_17_i0_shift: signed(21 downto 0);
  signal c_17_i1_shift: signed(21 downto 0);
  signal c_17_arith: signed(21 downto 0);
  signal c_17_oshift: signed(21 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(21 downto 0);
  signal c_18_5_0_False_resize: signed(21 downto 0);
  signal c_18_5_0_False_shift: signed(21 downto 0);
  signal c_18_3_6_False_resize: signed(21 downto 0);
  signal c_18_3_6_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_i0_resize: signed(22 downto 0);
  signal c_19_i1_resize: signed(22 downto 0);
  signal c_19_i0_shift: signed(22 downto 0);
  signal c_19_i1_shift: signed(22 downto 0);
  signal c_19_arith: signed(22 downto 0);
  signal c_19_oshift: signed(22 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(17 downto 0);
  signal c_20_4_0_False_resize: signed(17 downto 0);
  signal c_20_4_0_False_shift: signed(17 downto 0);
  signal c_20_3_2_False_resize: signed(17 downto 0);
  signal c_20_3_2_False_shift: signed(17 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(18 downto 0);
  signal c_21_4_1_False_resize: signed(18 downto 0);
  signal c_21_4_1_False_shift: signed(18 downto 0);
  signal c_21_3_0_False_resize: signed(18 downto 0);
  signal c_21_3_0_False_shift: signed(18 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_i0_resize: signed(22 downto 0);
  signal c_22_i1_resize: signed(22 downto 0);
  signal c_22_i0_shift: signed(22 downto 0);
  signal c_22_i1_shift: signed(22 downto 0);
  signal c_22_arith: signed(22 downto 0);
  signal c_22_oshift: signed(22 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_4_0_False_resize: signed(22 downto 0);
  signal c_23_4_0_False_shift: signed(22 downto 0);
  signal c_23_6_0_False_resize: signed(22 downto 0);
  signal c_23_6_0_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(21 downto 0);
  signal c_24_4_4_False_resize: signed(21 downto 0);
  signal c_24_4_4_False_shift: signed(21 downto 0);
  signal c_24_3_0_False_resize: signed(21 downto 0);
  signal c_24_3_0_False_shift: signed(21 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel_left: std_logic;
  signal c_25_sub_sel_right: std_logic;
  signal c_26: signed(22 downto 0);
  signal c_26_6_0_False_resize: signed(22 downto 0);
  signal c_26_6_0_False_shift: signed(22 downto 0);
  signal c_26_5_0_False_resize: signed(22 downto 0);
  signal c_26_5_0_False_shift: signed(22 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_27_3_4_False_resize: signed(19 downto 0);
  signal c_27_3_4_False_shift: signed(19 downto 0);
  signal c_27_3_0_False_resize: signed(19 downto 0);
  signal c_27_3_0_False_shift: signed(19 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_i0_resize: signed(23 downto 0);
  signal c_28_i1_resize: signed(23 downto 0);
  signal c_28_i0_shift: signed(23 downto 0);
  signal c_28_i1_shift: signed(23 downto 0);
  signal c_28_arith: signed(23 downto 0);
  signal c_28_oshift: signed(23 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(21 downto 0);
  signal c_29_5_0_False_resize: signed(21 downto 0);
  signal c_29_5_0_False_shift: signed(21 downto 0);
  signal c_29_3_2_False_resize: signed(21 downto 0);
  signal c_29_3_2_False_shift: signed(21 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(15 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_33_6_0_False_resize: signed(22 downto 0);
  signal c_33_6_0_False_shift: signed(22 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_resize: signed(22 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_41_resize: signed(22 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(21 downto 0);
  signal c_43_resize: signed(21 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 1 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 2 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 3 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 4 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 5 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 6 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 7 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 8 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 9 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_44);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 2 and associated fundamentals [[7], [7]]
  inst_adder_node_2: entity work.adder_node
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
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 3 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[3], [3]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[39], [39]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 6 and associated fundamentals [[121], [121]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 23,
      s_x_i => 7,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_2,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[8], [1]]
  c_7_3_3_False_resize <= resize(c_3, 19);
  c_7_3_3_False_shift <= shift_left(c_7_3_3_False_resize, 3);
  c_7_3_0_False_resize <= resize(c_3, 19);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_3_3_False_shift;
        when others => c_7 <= c_7_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[200], [191]]
  with config_select_4 select c_9_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 6,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_7,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[64], [3]]
  c_10_4_0_False_resize <= resize(c_4, 22);
  c_10_4_0_False_shift <= shift_left(c_10_4_0_False_resize, 0);
  c_10_3_6_False_resize <= resize(c_3, 22);
  c_10_3_6_False_shift <= shift_left(c_10_3_6_False_resize, 6);
  with config_select_3 select c_10_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_4_0_False_shift;
        when others => c_10 <= c_10_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[8], [121]]
  c_11_3_3_False_resize <= resize(c_3, 23);
  c_11_3_3_False_shift <= shift_left(c_11_3_3_False_resize, 3);
  c_11_6_0_False_resize <= c_6;
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_3_3_False_shift;
        when others => c_11 <= c_11_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[248], [133]]
  with config_select_4 select c_12_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_12_sub_sel,
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
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[12], [121]]
  c_13_4_2_False_resize <= resize(c_4, 23);
  c_13_4_2_False_shift <= shift_left(c_13_4_2_False_resize, 2);
  c_13_6_0_False_resize <= c_6;
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_4_2_False_shift;
        when others => c_13 <= c_13_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[3], [1]]
  c_14_4_0_False_resize <= c_4;
  c_14_4_0_False_shift <= shift_left(c_14_4_0_False_resize, 0);
  c_14_3_0_False_resize <= resize(c_3, 18);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_4_0_False_shift;
        when others => c_14 <= c_14_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 15 and associated fundamentals [[204], [185]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[4], [3]]
  c_16_4_0_False_resize <= c_4;
  c_16_4_0_False_shift <= shift_left(c_16_4_0_False_resize, 0);
  c_16_3_2_False_resize <= resize(c_3, 18);
  c_16_3_2_False_shift <= shift_left(c_16_3_2_False_resize, 2);
  with config_select_3 select c_16_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_4_0_False_shift;
        when others => c_16 <= c_16_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[61], [49]]
  with config_select_4 select c_17_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 22,
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
      sub_i => c_17_sub_sel,
      x_i => c_16,
      y_i => c_14,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[39], [64]]
  c_18_5_0_False_resize <= c_5;
  c_18_5_0_False_shift <= shift_left(c_18_5_0_False_resize, 0);
  c_18_3_6_False_resize <= resize(c_3, 22);
  c_18_3_6_False_shift <= shift_left(c_18_3_6_False_resize, 6);
  with config_select_3 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_5_0_False_shift;
        when others => c_18 <= c_18_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 19 and associated fundamentals [[81], [127]]
  with config_select_4 select c_19_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 18,
      w_o => 23,
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
      sub_i => c_19_sub_sel,
      x_i => c_18,
      y_i => c_14,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[3], [4]]
  c_20_4_0_False_resize <= c_4;
  c_20_4_0_False_shift <= shift_left(c_20_4_0_False_resize, 0);
  c_20_3_2_False_resize <= resize(c_3, 18);
  c_20_3_2_False_shift <= shift_left(c_20_3_2_False_resize, 2);
  with config_select_3 select c_20_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_4_0_False_shift;
        when others => c_20 <= c_20_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[6], [1]]
  c_21_4_1_False_resize <= resize(c_4, 19);
  c_21_4_1_False_shift <= shift_left(c_21_4_1_False_resize, 1);
  c_21_3_0_False_resize <= resize(c_3, 19);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_4_1_False_shift;
        when others => c_21 <= c_21_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 22 and associated fundamentals [[99], [20]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 19,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[121], [3]]
  c_23_4_0_False_resize <= resize(c_4, 23);
  c_23_4_0_False_shift <= shift_left(c_23_4_0_False_resize, 0);
  c_23_6_0_False_resize <= c_6;
  c_23_6_0_False_shift <= shift_left(c_23_6_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_4_0_False_shift;
        when others => c_23 <= c_23_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[1], [48]]
  c_24_4_4_False_resize <= resize(c_4, 22);
  c_24_4_4_False_shift <= shift_left(c_24_4_4_False_resize, 4);
  c_24_3_0_False_resize <= resize(c_3, 22);
  c_24_3_0_False_shift <= shift_left(c_24_3_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_4_4_False_shift;
        when others => c_24 <= c_24_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 25 and associated fundamentals [[117], [189]]
  with config_select_4 select c_25_sub_sel_left <= 
    '0' when "0",
    '1' when others;
  with config_select_4 select c_25_sub_sel_right <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
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
      is_double_add_sub => True,
      sub => False
    )
    port map (
      sub_a_i => c_25_sub_sel_left,
      sub_b_i => c_25_sub_sel_right,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[121], [39]]
  c_26_6_0_False_resize <= c_6;
  c_26_6_0_False_shift <= shift_left(c_26_6_0_False_resize, 0);
  c_26_5_0_False_resize <= resize(c_5, 23);
  c_26_5_0_False_shift <= shift_left(c_26_5_0_False_resize, 0);
  with config_select_3 select c_26_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_6_0_False_shift;
        when others => c_26 <= c_26_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[1], [16]]
  c_27_3_4_False_resize <= resize(c_3, 20);
  c_27_3_4_False_shift <= shift_left(c_27_3_4_False_resize, 4);
  c_27_3_0_False_resize <= resize(c_3, 20);
  c_27_3_0_False_shift <= shift_left(c_27_3_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_3_4_False_shift;
        when others => c_27 <= c_27_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 28 and associated fundamentals [[238], [142]]
  with config_select_4 select c_28_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_28_sub_sel,
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[4], [39]]
  c_29_5_0_False_resize <= c_5;
  c_29_5_0_False_shift <= shift_left(c_29_5_0_False_resize, 0);
  c_29_3_2_False_resize <= resize(c_3, 22);
  c_29_3_2_False_shift <= shift_left(c_29_3_2_False_resize, 2);
  with config_select_3 select c_29_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_5_0_False_shift;
        when others => c_29 <= c_29_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 30 and associated fundamentals [[121], [121]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 31 and associated fundamentals [[246], [203]]
  with config_select_4 select c_31_sub_sel <= 
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
      x_i => c_30,
      y_i => c_29,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 32 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[121], [0]]
  c_33_6_0_False_resize <= c_6;
  c_33_6_0_False_shift <= shift_left(c_33_6_0_False_resize, 0);
  with config_select_3 select c_33_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_6_0_False_shift;
        when others => c_33 <= to_signed(0, 23);
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 34 and associated fundamentals [[153], [32]]
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 23,
      w_o => 24,
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
      x_i => c_32,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 35 and associated fundamentals [[81], [127]]
  c_35_resize <= c_19;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'output' in stage 4 with id 36 and associated fundamentals [[117], [189]]
  c_36_resize <= c_25;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'output' in stage 4 with id 37 and associated fundamentals [[248], [133]]
  c_37_resize <= c_12;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'output' in stage 4 with id 38 and associated fundamentals [[153], [32]]
  c_38_resize <= c_34;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[246], [203]]
  c_39_resize <= c_31;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 4 with id 40 and associated fundamentals [[200], [191]]
  c_40_resize <= c_9;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[99], [20]]
  c_41_resize <= c_22;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[238], [142]]
  c_42_resize <= c_28;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[61], [49]]
  c_43_resize <= c_17;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[204], [185]]
  c_44_resize <= c_15;
  c_44 <= shift_left(c_44_resize, 0);
end architecture;

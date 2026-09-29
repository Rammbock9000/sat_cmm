library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(22 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(21 downto 0);
    y_6: out std_logic_vector(23 downto 0);
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
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(19 downto 0);
  signal c_3_1_4_False_resize: signed(19 downto 0);
  signal c_3_1_4_False_shift: signed(19 downto 0);
  signal c_3_2_0_False_resize: signed(19 downto 0);
  signal c_3_2_0_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_1_0_False_resize: signed(18 downto 0);
  signal c_4_1_0_False_shift: signed(18 downto 0);
  signal c_4_2_0_False_resize: signed(18 downto 0);
  signal c_4_2_0_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_i0_resize: signed(20 downto 0);
  signal c_5_i1_resize: signed(20 downto 0);
  signal c_5_i0_shift: signed(20 downto 0);
  signal c_5_i1_shift: signed(20 downto 0);
  signal c_5_arith: signed(20 downto 0);
  signal c_5_oshift: signed(20 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_0_5_False_resize: signed(20 downto 0);
  signal c_6_0_5_False_shift: signed(20 downto 0);
  signal c_6_0_0_False_resize: signed(20 downto 0);
  signal c_6_0_0_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_8_1_0_False_resize: signed(18 downto 0);
  signal c_8_1_0_False_shift: signed(18 downto 0);
  signal c_8_2_1_False_resize: signed(18 downto 0);
  signal c_8_2_1_False_shift: signed(18 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_10_1_5_False_resize: signed(20 downto 0);
  signal c_10_1_5_False_shift: signed(20 downto 0);
  signal c_10_1_0_False_resize: signed(20 downto 0);
  signal c_10_1_0_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(17 downto 0);
  signal c_11_1_0_False_resize: signed(17 downto 0);
  signal c_11_1_0_False_shift: signed(17 downto 0);
  signal c_11_2_0_False_resize: signed(17 downto 0);
  signal c_11_2_0_False_shift: signed(17 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_i0_resize: signed(21 downto 0);
  signal c_12_i1_resize: signed(21 downto 0);
  signal c_12_i0_shift: signed(21 downto 0);
  signal c_12_i1_shift: signed(21 downto 0);
  signal c_12_arith: signed(21 downto 0);
  signal c_12_oshift: signed(21 downto 0);
  signal c_13: signed(18 downto 0);
  signal c_13_2_1_False_resize: signed(18 downto 0);
  signal c_13_2_1_False_shift: signed(18 downto 0);
  signal c_13_2_0_False_resize: signed(18 downto 0);
  signal c_13_2_0_False_shift: signed(18 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(18 downto 0);
  signal c_14_1_3_False_resize: signed(18 downto 0);
  signal c_14_1_3_False_shift: signed(18 downto 0);
  signal c_14_2_0_False_resize: signed(18 downto 0);
  signal c_14_2_0_False_shift: signed(18 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(16 downto 0);
  signal c_16_1_0_False_resize: signed(16 downto 0);
  signal c_16_1_0_False_shift: signed(16 downto 0);
  signal c_16_1_1_False_resize: signed(16 downto 0);
  signal c_16_1_1_False_shift: signed(16 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(15 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_i0_resize: signed(22 downto 0);
  signal c_19_i1_resize: signed(22 downto 0);
  signal c_19_i0_shift: signed(22 downto 0);
  signal c_19_i1_shift: signed(22 downto 0);
  signal c_19_arith: signed(22 downto 0);
  signal c_19_oshift: signed(22 downto 0);
  signal c_20: signed(18 downto 0);
  signal c_20_1_2_False_resize: signed(18 downto 0);
  signal c_20_1_2_False_shift: signed(18 downto 0);
  signal c_20_2_0_False_resize: signed(18 downto 0);
  signal c_20_2_0_False_shift: signed(18 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_i0_resize: signed(23 downto 0);
  signal c_21_i1_resize: signed(23 downto 0);
  signal c_21_i0_shift: signed(23 downto 0);
  signal c_21_i1_shift: signed(23 downto 0);
  signal c_21_arith: signed(23 downto 0);
  signal c_21_oshift: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(22 downto 0);
  signal c_23_i0_resize: signed(22 downto 0);
  signal c_23_i1_resize: signed(22 downto 0);
  signal c_23_i0_shift: signed(22 downto 0);
  signal c_23_i1_shift: signed(22 downto 0);
  signal c_23_arith: signed(22 downto 0);
  signal c_23_oshift: signed(22 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_9_0_False_resize: signed(23 downto 0);
  signal c_25_9_0_False_shift: signed(23 downto 0);
  signal c_25_23_1_False_resize: signed(23 downto 0);
  signal c_25_23_1_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_resize: signed(23 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_5_2_False_resize: signed(22 downto 0);
  signal c_27_5_2_False_shift: signed(22 downto 0);
  signal c_27_19_0_False_resize: signed(22 downto 0);
  signal c_27_19_0_False_shift: signed(22 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_resize: signed(22 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_23_1_False_resize: signed(23 downto 0);
  signal c_29_23_1_False_shift: signed(23 downto 0);
  signal c_29_15_0_False_resize: signed(23 downto 0);
  signal c_29_15_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_resize: signed(23 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_21_0_False_resize: signed(22 downto 0);
  signal c_31_21_0_False_shift: signed(22 downto 0);
  signal c_31_12_5_False_resize: signed(22 downto 0);
  signal c_31_12_5_False_shift: signed(22 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_resize: signed(22 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_9_0_False_resize: signed(23 downto 0);
  signal c_33_9_0_False_shift: signed(23 downto 0);
  signal c_33_19_2_False_resize: signed(23 downto 0);
  signal c_33_19_2_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_resize: signed(23 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_35_5_1_False_resize: signed(21 downto 0);
  signal c_35_5_1_False_shift: signed(21 downto 0);
  signal c_35_17_0_False_resize: signed(21 downto 0);
  signal c_35_17_0_False_shift: signed(21 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_36_resize: signed(21 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_15_0_False_resize: signed(23 downto 0);
  signal c_38_15_0_False_shift: signed(23 downto 0);
  signal c_38_21_0_False_resize: signed(23 downto 0);
  signal c_38_21_0_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_40_12_0_False_resize: signed(21 downto 0);
  signal c_40_12_0_False_shift: signed(21 downto 0);
  signal c_40_5_0_False_resize: signed(21 downto 0);
  signal c_40_5_0_False_shift: signed(21 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(21 downto 0);
  signal c_41_resize: signed(21 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
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
  -- output node 0 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 1 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 2 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 3 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 4 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_34);
    end if;
  end process;
  -- output node 5 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 6 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 7 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 8 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 9 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_42);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[3], [5]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "0",
    '0' when others;
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
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[3], [16]]
  c_3_1_4_False_resize <= resize(c_1, 20);
  c_3_1_4_False_shift <= shift_left(c_3_1_4_False_resize, 4);
  c_3_2_0_False_resize <= resize(c_2, 20);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_4_False_shift;
        when others => c_3 <= c_3_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[1], [5]]
  c_4_1_0_False_resize <= resize(c_1, 19);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_2_0_False_resize <= c_2;
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_0_False_shift;
        when others => c_4 <= c_4_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 5 and associated fundamentals [[5], [27]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 21,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[1], [32]]
  c_6_0_5_False_resize <= resize(c_0, 21);
  c_6_0_5_False_shift <= shift_left(c_6_0_5_False_resize, 5);
  c_6_0_0_False_resize <= resize(c_0, 21);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  with config_select_1 select c_6_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_0_5_False_shift;
        when others => c_6 <= c_6_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 7 and associated fundamentals [[5], [129]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[6], [1]]
  c_8_1_0_False_resize <= resize(c_1, 19);
  c_8_1_0_False_shift <= shift_left(c_8_1_0_False_resize, 0);
  c_8_2_1_False_resize <= c_2;
  c_8_2_1_False_shift <= shift_left(c_8_2_1_False_resize, 1);
  with config_select_2 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_1_0_False_shift;
        when others => c_8 <= c_8_2_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 9 and associated fundamentals [[187], [-97]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
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
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[32], [1]]
  c_10_1_5_False_resize <= resize(c_1, 21);
  c_10_1_5_False_shift <= shift_left(c_10_1_5_False_resize, 5);
  c_10_1_0_False_resize <= resize(c_1, 21);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_1_5_False_shift;
        when others => c_10 <= c_10_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[3], [1]]
  c_11_1_0_False_resize <= resize(c_1, 18);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_2_0_False_resize <= c_2(17 downto 0);
  c_11_2_0_False_shift <= shift_left(c_11_2_0_False_resize, 0);
  with config_select_2 select c_11_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_1_0_False_shift;
        when others => c_11 <= c_11_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 12 and associated fundamentals [[35], [2]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 18,
      w_o => 22,
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
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[6], [5]]
  c_13_2_1_False_resize <= c_2;
  c_13_2_1_False_shift <= shift_left(c_13_2_1_False_resize, 1);
  c_13_2_0_False_resize <= c_2;
  c_13_2_0_False_shift <= shift_left(c_13_2_0_False_resize, 0);
  with config_select_2 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_2_1_False_shift;
        when others => c_13 <= c_13_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[3], [8]]
  c_14_1_3_False_resize <= resize(c_1, 19);
  c_14_1_3_False_shift <= shift_left(c_14_1_3_False_resize, 3);
  c_14_2_0_False_resize <= c_2;
  c_14_2_0_False_shift <= shift_left(c_14_2_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_1_3_False_shift;
        when others => c_14 <= c_14_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[189], [168]]
  with config_select_3 select c_15_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 24,
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
      sub_i => c_15_sub_sel,
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
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[1], [2]]
  c_16_1_0_False_resize <= resize(c_1, 17);
  c_16_1_0_False_shift <= shift_left(c_16_1_0_False_resize, 0);
  c_16_1_1_False_resize <= resize(c_1, 17);
  c_16_1_1_False_shift <= shift_left(c_16_1_1_False_resize, 1);
  with config_select_2 select c_16_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_1_0_False_shift;
        when others => c_16 <= c_16_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 17 and associated fundamentals [[33], [158]]
  with config_select_3 select c_17_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 17,
      w_o => 24,
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
      sub_i => c_17_sub_sel,
      x_i => c_4,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 18 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_1 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 19 and associated fundamentals [[-59], [65]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_7,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 20 and associated fundamentals [[4], [5]]
  c_20_1_2_False_resize <= resize(c_1, 19);
  c_20_1_2_False_shift <= shift_left(c_20_1_2_False_resize, 2);
  c_20_2_0_False_resize <= c_2;
  c_20_2_0_False_shift <= shift_left(c_20_2_0_False_resize, 0);
  with config_select_2 select c_20_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_1_2_False_shift;
        when others => c_20 <= c_20_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 21 and associated fundamentals [[127], [159]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_20,
      y_i => c_18,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 22 and associated fundamentals [[162], [114]]
  with config_select_4 select c_22_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_22_sub_sel,
      x_i => c_19,
      y_i => c_12,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 23 and associated fundamentals [[21], [109]]
  with config_select_3 select c_23_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 19,
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
      sub_i => c_23_sub_sel,
      x_i => c_7,
      y_i => c_20,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 24 and associated fundamentals [[38], [185]]
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
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
      x_i => c_5,
      y_i => c_17,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[187], [218]]
  c_25_9_0_False_resize <= c_9;
  c_25_9_0_False_shift <= shift_left(c_25_9_0_False_resize, 0);
  c_25_23_1_False_resize <= resize(c_23, 24);
  c_25_23_1_False_shift <= shift_left(c_25_23_1_False_resize, 1);
  with config_select_4 select c_25_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_9_0_False_shift;
        when others => c_25 <= c_25_23_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[187], [218]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[20], [65]]
  c_27_5_2_False_resize <= resize(c_5, 23);
  c_27_5_2_False_shift <= shift_left(c_27_5_2_False_resize, 2);
  c_27_19_0_False_resize <= c_19;
  c_27_19_0_False_shift <= shift_left(c_27_19_0_False_resize, 0);
  with config_select_4 select c_27_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_5_2_False_shift;
        when others => c_27 <= c_27_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 28 and associated fundamentals [[20], [65]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[42], [168]]
  c_29_23_1_False_resize <= resize(c_23, 24);
  c_29_23_1_False_shift <= shift_left(c_29_23_1_False_resize, 1);
  c_29_15_0_False_resize <= c_15;
  c_29_15_0_False_shift <= shift_left(c_29_15_0_False_resize, 0);
  with config_select_4 select c_29_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_23_1_False_shift;
        when others => c_29 <= c_29_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 30 and associated fundamentals [[42], [168]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 4 with id 31 and associated fundamentals [[127], [64]]
  c_31_21_0_False_resize <= c_21(22 downto 0);
  c_31_21_0_False_shift <= shift_left(c_31_21_0_False_resize, 0);
  c_31_12_5_False_resize <= resize(c_12, 23);
  c_31_12_5_False_shift <= shift_left(c_31_12_5_False_resize, 5);
  with config_select_4 select c_31_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_21_0_False_shift;
        when others => c_31 <= c_31_12_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 32 and associated fundamentals [[127], [64]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 4 with id 33 and associated fundamentals [[-236], [-97]]
  c_33_9_0_False_resize <= c_9;
  c_33_9_0_False_shift <= shift_left(c_33_9_0_False_resize, 0);
  c_33_19_2_False_resize <= resize(c_19, 24);
  c_33_19_2_False_shift <= shift_left(c_33_19_2_False_resize, 2);
  with config_select_4 select c_33_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_9_0_False_shift;
        when others => c_33 <= c_33_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 34 and associated fundamentals [[236], [97]]
  c_34_resize <= c_33;
  c_34 <= -shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 4 with id 35 and associated fundamentals [[33], [54]]
  c_35_5_1_False_resize <= resize(c_5, 22);
  c_35_5_1_False_shift <= shift_left(c_35_5_1_False_resize, 1);
  c_35_17_0_False_resize <= c_17(21 downto 0);
  c_35_17_0_False_shift <= shift_left(c_35_17_0_False_resize, 0);
  with config_select_4 select c_35_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_5_1_False_shift;
        when others => c_35 <= c_35_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 36 and associated fundamentals [[33], [54]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'output' in stage 4 with id 37 and associated fundamentals [[162], [114]]
  c_37_resize <= c_22;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 4 with id 38 and associated fundamentals [[189], [159]]
  c_38_15_0_False_resize <= c_15;
  c_38_15_0_False_shift <= shift_left(c_38_15_0_False_resize, 0);
  c_38_21_0_False_resize <= c_21;
  c_38_21_0_False_shift <= shift_left(c_38_21_0_False_resize, 0);
  with config_select_4 select c_38_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_15_0_False_shift;
        when others => c_38 <= c_38_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[189], [159]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[35], [27]]
  c_40_12_0_False_resize <= c_12;
  c_40_12_0_False_shift <= shift_left(c_40_12_0_False_resize, 0);
  c_40_5_0_False_resize <= resize(c_5, 22);
  c_40_5_0_False_shift <= shift_left(c_40_5_0_False_resize, 0);
  with config_select_4 select c_40_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_12_0_False_shift;
        when others => c_40 <= c_40_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[35], [27]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[38], [185]]
  c_42_resize <= c_24;
  c_42 <= shift_left(c_42_resize, 0);
end architecture;

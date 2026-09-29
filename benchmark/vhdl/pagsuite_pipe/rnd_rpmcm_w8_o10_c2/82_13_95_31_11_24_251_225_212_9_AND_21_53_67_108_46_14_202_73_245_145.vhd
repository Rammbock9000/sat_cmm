library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(21 downto 0);
    y_2: out std_logic_vector(22 downto 0);
    y_3: out std_logic_vector(22 downto 0);
    y_4: out std_logic_vector(21 downto 0);
    y_5: out std_logic_vector(20 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_2_0_0_False_resize: signed(15 downto 0);
  signal c_2_0_0_False_shift: signed(15 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_i0_resize: signed(17 downto 0);
  signal c_3_i1_resize: signed(17 downto 0);
  signal c_3_i0_shift: signed(17 downto 0);
  signal c_3_i1_shift: signed(17 downto 0);
  signal c_3_arith: signed(17 downto 0);
  signal c_3_oshift: signed(17 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_4_0_0_False_resize: signed(15 downto 0);
  signal c_4_0_0_False_shift: signed(15 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_i0_resize: signed(17 downto 0);
  signal c_5_i1_resize: signed(17 downto 0);
  signal c_5_i0_shift: signed(17 downto 0);
  signal c_5_i1_shift: signed(17 downto 0);
  signal c_5_arith: signed(17 downto 0);
  signal c_5_oshift: signed(17 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_i0_resize: signed(18 downto 0);
  signal c_6_i1_resize: signed(18 downto 0);
  signal c_6_i0_shift: signed(18 downto 0);
  signal c_6_i1_shift: signed(18 downto 0);
  signal c_6_arith: signed(18 downto 0);
  signal c_6_oshift: signed(18 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_i0_resize: signed(18 downto 0);
  signal c_7_i1_resize: signed(18 downto 0);
  signal c_7_i0_shift: signed(18 downto 0);
  signal c_7_i1_shift: signed(18 downto 0);
  signal c_7_arith: signed(18 downto 0);
  signal c_7_oshift: signed(18 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_8_i0_resize: signed(19 downto 0);
  signal c_8_i1_resize: signed(19 downto 0);
  signal c_8_i0_shift: signed(19 downto 0);
  signal c_8_i1_shift: signed(19 downto 0);
  signal c_8_arith: signed(19 downto 0);
  signal c_8_oshift: signed(19 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_5_2_False_resize: signed(19 downto 0);
  signal c_9_5_2_False_shift: signed(19 downto 0);
  signal c_9_7_0_False_resize: signed(19 downto 0);
  signal c_9_7_0_False_shift: signed(19 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_11_3_0_False_resize: signed(19 downto 0);
  signal c_11_3_0_False_shift: signed(19 downto 0);
  signal c_11_8_0_False_resize: signed(19 downto 0);
  signal c_11_8_0_False_shift: signed(19 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_12_3_0_False_resize: signed(20 downto 0);
  signal c_12_3_0_False_shift: signed(20 downto 0);
  signal c_12_6_2_False_resize: signed(20 downto 0);
  signal c_12_6_2_False_shift: signed(20 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(18 downto 0);
  signal c_14_3_1_False_resize: signed(18 downto 0);
  signal c_14_3_1_False_shift: signed(18 downto 0);
  signal c_14_3_0_False_resize: signed(18 downto 0);
  signal c_14_3_0_False_shift: signed(18 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(17 downto 0);
  signal c_15_5_1_False_resize: signed(17 downto 0);
  signal c_15_5_1_False_shift: signed(17 downto 0);
  signal c_15_5_0_False_resize: signed(17 downto 0);
  signal c_15_5_0_False_shift: signed(17 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_i0_resize: signed(21 downto 0);
  signal c_16_i1_resize: signed(21 downto 0);
  signal c_16_i0_shift: signed(21 downto 0);
  signal c_16_i1_shift: signed(21 downto 0);
  signal c_16_arith: signed(21 downto 0);
  signal c_16_oshift: signed(21 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(18 downto 0);
  signal c_17_3_0_False_resize: signed(18 downto 0);
  signal c_17_3_0_False_shift: signed(18 downto 0);
  signal c_17_6_0_False_resize: signed(18 downto 0);
  signal c_17_6_0_False_shift: signed(18 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_18_5_0_False_resize: signed(19 downto 0);
  signal c_18_5_0_False_shift: signed(19 downto 0);
  signal c_18_3_2_False_resize: signed(19 downto 0);
  signal c_18_3_2_False_shift: signed(19 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_i0_resize: signed(21 downto 0);
  signal c_19_i1_resize: signed(21 downto 0);
  signal c_19_i0_shift: signed(21 downto 0);
  signal c_19_i1_shift: signed(21 downto 0);
  signal c_19_arith: signed(21 downto 0);
  signal c_19_oshift: signed(21 downto 0);
  signal c_20: signed(17 downto 0);
  signal c_20_5_2_False_resize: signed(17 downto 0);
  signal c_20_5_2_False_shift: signed(17 downto 0);
  signal c_20_3_0_False_resize: signed(17 downto 0);
  signal c_20_3_0_False_shift: signed(17 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_i0_resize: signed(22 downto 0);
  signal c_21_i1_resize: signed(22 downto 0);
  signal c_21_i0_shift: signed(22 downto 0);
  signal c_21_i1_shift: signed(22 downto 0);
  signal c_21_arith: signed(22 downto 0);
  signal c_21_oshift: signed(22 downto 0);
  signal c_22: signed(16 downto 0);
  signal c_22_5_0_False_resize: signed(16 downto 0);
  signal c_22_5_0_False_shift: signed(16 downto 0);
  signal c_22_3_1_False_resize: signed(16 downto 0);
  signal c_22_3_1_False_shift: signed(16 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_23_6_2_False_resize: signed(20 downto 0);
  signal c_23_6_2_False_shift: signed(20 downto 0);
  signal c_23_6_0_False_resize: signed(20 downto 0);
  signal c_23_6_0_False_shift: signed(20 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_i0_resize: signed(22 downto 0);
  signal c_24_i1_resize: signed(22 downto 0);
  signal c_24_i0_shift: signed(22 downto 0);
  signal c_24_i1_shift: signed(22 downto 0);
  signal c_24_arith: signed(22 downto 0);
  signal c_24_oshift: signed(22 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_5_6_False_resize: signed(23 downto 0);
  signal c_25_5_6_False_shift: signed(23 downto 0);
  signal c_25_6_0_False_resize: signed(23 downto 0);
  signal c_25_6_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_26_8_2_False_resize: signed(21 downto 0);
  signal c_26_8_2_False_shift: signed(21 downto 0);
  signal c_26_6_0_False_resize: signed(21 downto 0);
  signal c_26_6_0_False_shift: signed(21 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_28: signed(17 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_i0_resize: signed(22 downto 0);
  signal c_29_i1_resize: signed(22 downto 0);
  signal c_29_i0_shift: signed(22 downto 0);
  signal c_29_i1_shift: signed(22 downto 0);
  signal c_29_arith: signed(22 downto 0);
  signal c_29_oshift: signed(22 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(18 downto 0);
  signal c_30_7_0_False_resize: signed(18 downto 0);
  signal c_30_7_0_False_shift: signed(18 downto 0);
  signal c_30_3_0_False_resize: signed(18 downto 0);
  signal c_30_3_0_False_shift: signed(18 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_31_7_1_False_resize: signed(19 downto 0);
  signal c_31_7_1_False_shift: signed(19 downto 0);
  signal c_31_6_0_False_resize: signed(19 downto 0);
  signal c_31_6_0_False_shift: signed(19 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_i0_resize: signed(23 downto 0);
  signal c_32_i1_resize: signed(23 downto 0);
  signal c_32_i0_shift: signed(23 downto 0);
  signal c_32_i1_shift: signed(23 downto 0);
  signal c_32_arith: signed(23 downto 0);
  signal c_32_oshift: signed(23 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(17 downto 0);
  signal c_33_3_0_False_resize: signed(17 downto 0);
  signal c_33_3_0_False_shift: signed(17 downto 0);
  signal c_33_3_2_False_resize: signed(17 downto 0);
  signal c_33_3_2_False_shift: signed(17 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(19 downto 0);
  signal c_34_6_0_False_resize: signed(19 downto 0);
  signal c_34_6_0_False_shift: signed(19 downto 0);
  signal c_34_6_1_False_resize: signed(19 downto 0);
  signal c_34_6_1_False_shift: signed(19 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_i0_resize: signed(23 downto 0);
  signal c_35_i1_resize: signed(23 downto 0);
  signal c_35_i0_shift: signed(23 downto 0);
  signal c_35_i1_shift: signed(23 downto 0);
  signal c_35_arith: signed(23 downto 0);
  signal c_35_oshift: signed(23 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(22 downto 0);
  signal c_36_resize: signed(22 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_37_resize: signed(21 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_38_resize: signed(22 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_39_resize: signed(22 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_40_resize: signed(21 downto 0);
  signal c_41: signed(20 downto 0);
  signal c_41_resize: signed(20 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_resize: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
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
  -- output node 0 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 1 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 2 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 3 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 4 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 5 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 6 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 7 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 8 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 9 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_45);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0], [1]]
  c_2_0_0_False_resize <= c_0;
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[1], [3]]
  inst_adder_node_3: entity work.adder_node
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
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [0]]
  c_4_0_0_False_resize <= c_0;
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[3], [1]]
  inst_adder_node_5: entity work.adder_node
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
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[5], [5]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      y_i => c_1,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 7 and associated fundamentals [[7], [7]]
  inst_adder_node_7: entity work.adder_node
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 8 and associated fundamentals [[15], [15]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[12], [7]]
  c_9_5_2_False_resize <= resize(c_5, 20);
  c_9_5_2_False_shift <= shift_left(c_9_5_2_False_resize, 2);
  c_9_7_0_False_resize <= resize(c_7, 20);
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_5_2_False_shift;
        when others => c_9 <= c_9_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[24], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "0";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[1], [15]]
  c_11_3_0_False_resize <= resize(c_3, 20);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  c_11_8_0_False_resize <= c_8;
  c_11_8_0_False_shift <= shift_left(c_11_8_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_3_0_False_shift;
        when others => c_11 <= c_11_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[1], [20]]
  c_12_3_0_False_resize <= resize(c_3, 21);
  c_12_3_0_False_shift <= shift_left(c_12_3_0_False_resize, 0);
  c_12_6_2_False_resize <= resize(c_6, 21);
  c_12_6_2_False_shift <= shift_left(c_12_6_2_False_resize, 2);
  with config_select_3 select c_12_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_3_0_False_shift;
        when others => c_12 <= c_12_6_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[9], [145]]
  with config_select_4 select c_13_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
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
      sub_i => c_13_sub_sel,
      x_i => c_12,
      y_i => c_11,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[1], [6]]
  c_14_3_1_False_resize <= resize(c_3, 19);
  c_14_3_1_False_shift <= shift_left(c_14_3_1_False_resize, 1);
  c_14_3_0_False_resize <= resize(c_3, 19);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_3_1_False_shift;
        when others => c_14 <= c_14_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[3], [2]]
  c_15_5_1_False_resize <= c_5;
  c_15_5_1_False_shift <= shift_left(c_15_5_1_False_resize, 1);
  c_15_5_0_False_resize <= c_5;
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_5_1_False_shift;
        when others => c_15 <= c_15_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 16 and associated fundamentals [[11], [46]]
  with config_select_4 select c_16_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[1], [5]]
  c_17_3_0_False_resize <= resize(c_3, 19);
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  c_17_6_0_False_resize <= c_6;
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  with config_select_3 select c_17_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_3_0_False_shift;
        when others => c_17 <= c_17_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[3], [12]]
  c_18_5_0_False_resize <= resize(c_5, 20);
  c_18_5_0_False_shift <= shift_left(c_18_5_0_False_resize, 0);
  c_18_3_2_False_resize <= resize(c_3, 20);
  c_18_3_2_False_shift <= shift_left(c_18_3_2_False_resize, 2);
  with config_select_3 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_5_0_False_shift;
        when others => c_18 <= c_18_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 19 and associated fundamentals [[13], [53]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
      w_o => 22,
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
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[1], [4]]
  c_20_5_2_False_resize <= c_5;
  c_20_5_2_False_shift <= shift_left(c_20_5_2_False_resize, 2);
  c_20_3_0_False_resize <= c_3;
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_5_2_False_shift;
        when others => c_20 <= c_20_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 21 and associated fundamentals [[31], [108]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 21,
      w_o => 23,
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
      y_i => c_12,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[2], [1]]
  c_22_5_0_False_resize <= c_5(16 downto 0);
  c_22_5_0_False_shift <= shift_left(c_22_5_0_False_resize, 0);
  c_22_3_1_False_resize <= c_3(16 downto 0);
  c_22_3_1_False_shift <= shift_left(c_22_3_1_False_resize, 1);
  with config_select_3 select c_22_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_5_0_False_shift;
        when others => c_22 <= c_22_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[20], [5]]
  c_23_6_2_False_resize <= resize(c_6, 21);
  c_23_6_2_False_shift <= shift_left(c_23_6_2_False_resize, 2);
  c_23_6_0_False_resize <= resize(c_6, 21);
  c_23_6_0_False_shift <= shift_left(c_23_6_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_6_2_False_shift;
        when others => c_23 <= c_23_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 24 and associated fundamentals [[82], [21]]
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 21,
      w_o => 23,
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
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[192], [5]]
  c_25_5_6_False_resize <= resize(c_5, 24);
  c_25_5_6_False_shift <= shift_left(c_25_5_6_False_resize, 6);
  c_25_6_0_False_resize <= resize(c_6, 24);
  c_25_6_0_False_shift <= shift_left(c_25_6_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_5_6_False_shift;
        when others => c_25 <= c_25_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[5], [60]]
  c_26_8_2_False_resize <= resize(c_8, 22);
  c_26_8_2_False_shift <= shift_left(c_26_8_2_False_resize, 2);
  c_26_6_0_False_resize <= resize(c_6, 22);
  c_26_6_0_False_shift <= shift_left(c_26_6_0_False_resize, 0);
  with config_select_3 select c_26_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_8_2_False_shift;
        when others => c_26 <= c_26_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 27 and associated fundamentals [[212], [245]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 28 and associated fundamentals [[1], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 29 and associated fundamentals [[95], [67]]
  with config_select_4 select c_29_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 23,
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
      sub_i => c_29_sub_sel,
      x_i => c_15,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[1], [7]]
  c_30_7_0_False_resize <= c_7;
  c_30_7_0_False_shift <= shift_left(c_30_7_0_False_resize, 0);
  c_30_3_0_False_resize <= resize(c_3, 19);
  c_30_3_0_False_shift <= shift_left(c_30_3_0_False_resize, 0);
  with config_select_3 select c_30_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_7_0_False_shift;
        when others => c_30 <= c_30_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[14], [5]]
  c_31_7_1_False_resize <= resize(c_7, 20);
  c_31_7_1_False_shift <= shift_left(c_31_7_1_False_resize, 1);
  c_31_6_0_False_resize <= resize(c_6, 20);
  c_31_6_0_False_shift <= shift_left(c_31_6_0_False_resize, 0);
  with config_select_3 select c_31_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_7_1_False_shift;
        when others => c_31 <= c_31_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 32 and associated fundamentals [[225], [73]]
  with config_select_4 select c_32_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 24,
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
      sub_i => c_32_sub_sel,
      x_i => c_31,
      y_i => c_30,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[4], [3]]
  c_33_3_0_False_resize <= c_3;
  c_33_3_0_False_shift <= shift_left(c_33_3_0_False_resize, 0);
  c_33_3_2_False_resize <= c_3;
  c_33_3_2_False_shift <= shift_left(c_33_3_2_False_resize, 2);
  with config_select_3 select c_33_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_3_0_False_shift;
        when others => c_33 <= c_33_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[5], [10]]
  c_34_6_0_False_resize <= resize(c_6, 20);
  c_34_6_0_False_shift <= shift_left(c_34_6_0_False_resize, 0);
  c_34_6_1_False_resize <= resize(c_6, 20);
  c_34_6_1_False_shift <= shift_left(c_34_6_1_False_resize, 1);
  with config_select_3 select c_34_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_6_0_False_shift;
        when others => c_34 <= c_34_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 35 and associated fundamentals [[251], [202]]
  with config_select_4 select c_35_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 20,
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
      sub_i => c_35_sub_sel,
      x_i => c_33,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 36 and associated fundamentals [[82], [21]]
  c_36_resize <= c_24;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'output' in stage 4 with id 37 and associated fundamentals [[13], [53]]
  c_37_resize <= c_19;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'output' in stage 4 with id 38 and associated fundamentals [[95], [67]]
  c_38_resize <= c_29;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[31], [108]]
  c_39_resize <= c_21;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 4 with id 40 and associated fundamentals [[11], [46]]
  c_40_resize <= c_16;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[24], [14]]
  c_41_resize <= c_10;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[251], [202]]
  c_42_resize <= c_35;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[225], [73]]
  c_43_resize <= c_32;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[212], [245]]
  c_44_resize <= c_27;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[9], [145]]
  c_45_resize <= c_13;
  c_45 <= shift_left(c_45_resize, 0);
end architecture;

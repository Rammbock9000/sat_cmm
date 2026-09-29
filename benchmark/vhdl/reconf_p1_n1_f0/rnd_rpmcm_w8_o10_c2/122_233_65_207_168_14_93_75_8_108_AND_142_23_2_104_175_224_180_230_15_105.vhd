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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_0_5_False_resize: signed(20 downto 0);
  signal c_1_0_5_False_shift: signed(20 downto 0);
  signal c_1_0_0_False_resize: signed(20 downto 0);
  signal c_1_0_0_False_shift: signed(20 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_4: signed(16 downto 0);
  signal c_4_0_1_False_resize: signed(16 downto 0);
  signal c_4_0_1_False_shift: signed(16 downto 0);
  signal c_4_0_0_False_resize: signed(16 downto 0);
  signal c_4_0_0_False_shift: signed(16 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_0_0_False_resize: signed(21 downto 0);
  signal c_5_0_0_False_shift: signed(21 downto 0);
  signal c_5_0_6_False_resize: signed(21 downto 0);
  signal c_5_0_6_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(15 downto 0);
  signal c_8: signed(17 downto 0);
  signal c_8_0_0_False_resize: signed(17 downto 0);
  signal c_8_0_0_False_shift: signed(17 downto 0);
  signal c_8_0_2_False_resize: signed(17 downto 0);
  signal c_8_0_2_False_shift: signed(17 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_i0_resize: signed(19 downto 0);
  signal c_9_i1_resize: signed(19 downto 0);
  signal c_9_i0_shift: signed(19 downto 0);
  signal c_9_i1_shift: signed(19 downto 0);
  signal c_9_arith: signed(19 downto 0);
  signal c_9_oshift: signed(19 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_10_i0_resize: signed(18 downto 0);
  signal c_10_i1_resize: signed(18 downto 0);
  signal c_10_i0_shift: signed(18 downto 0);
  signal c_10_i1_shift: signed(18 downto 0);
  signal c_10_arith: signed(18 downto 0);
  signal c_10_oshift: signed(18 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(19 downto 0);
  signal c_11_i0_resize: signed(19 downto 0);
  signal c_11_i1_resize: signed(19 downto 0);
  signal c_11_i0_shift: signed(19 downto 0);
  signal c_11_i1_shift: signed(19 downto 0);
  signal c_11_arith: signed(19 downto 0);
  signal c_11_oshift: signed(19 downto 0);
  signal c_12: signed(18 downto 0);
  signal c_12_10_0_False_resize: signed(18 downto 0);
  signal c_12_10_0_False_shift: signed(18 downto 0);
  signal c_12_10_1_False_resize: signed(18 downto 0);
  signal c_12_10_1_False_shift: signed(18 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_11_0_False_resize: signed(20 downto 0);
  signal c_13_11_0_False_shift: signed(20 downto 0);
  signal c_13_10_3_False_resize: signed(20 downto 0);
  signal c_13_10_3_False_shift: signed(20 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(21 downto 0);
  signal c_15_11_0_False_resize: signed(21 downto 0);
  signal c_15_11_0_False_shift: signed(21 downto 0);
  signal c_15_11_2_False_resize: signed(21 downto 0);
  signal c_15_11_2_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_i0_resize: signed(22 downto 0);
  signal c_16_i1_resize: signed(22 downto 0);
  signal c_16_i0_shift: signed(22 downto 0);
  signal c_16_i1_shift: signed(22 downto 0);
  signal c_16_arith: signed(22 downto 0);
  signal c_16_oshift: signed(22 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_17_i0_resize: signed(19 downto 0);
  signal c_17_i1_resize: signed(19 downto 0);
  signal c_17_i0_shift: signed(19 downto 0);
  signal c_17_i1_shift: signed(19 downto 0);
  signal c_17_arith: signed(19 downto 0);
  signal c_17_oshift: signed(19 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_18_10_0_False_resize: signed(21 downto 0);
  signal c_18_10_0_False_shift: signed(21 downto 0);
  signal c_18_11_2_False_resize: signed(21 downto 0);
  signal c_18_11_2_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(22 downto 0);
  signal c_20_i0_resize: signed(22 downto 0);
  signal c_20_i1_resize: signed(22 downto 0);
  signal c_20_i0_shift: signed(22 downto 0);
  signal c_20_i1_shift: signed(22 downto 0);
  signal c_20_arith: signed(22 downto 0);
  signal c_20_oshift: signed(22 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(23 downto 0);
  signal c_21_11_4_False_resize: signed(23 downto 0);
  signal c_21_11_4_False_shift: signed(23 downto 0);
  signal c_21_11_0_False_resize: signed(23 downto 0);
  signal c_21_11_0_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_22_11_1_False_resize: signed(20 downto 0);
  signal c_22_11_1_False_shift: signed(20 downto 0);
  signal c_22_10_0_False_resize: signed(20 downto 0);
  signal c_22_10_0_False_shift: signed(20 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(22 downto 0);
  signal c_24_11_3_False_resize: signed(22 downto 0);
  signal c_24_11_3_False_shift: signed(22 downto 0);
  signal c_24_10_0_False_resize: signed(22 downto 0);
  signal c_24_10_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_resize: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_resize: signed(23 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_6_0_False_resize: signed(22 downto 0);
  signal c_29_6_0_False_shift: signed(22 downto 0);
  signal c_29_6_1_False_resize: signed(22 downto 0);
  signal c_29_6_1_False_shift: signed(22 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_30_resize: signed(22 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_26_0_False_resize: signed(23 downto 0);
  signal c_31_26_0_False_shift: signed(23 downto 0);
  signal c_31_17_3_False_resize: signed(23 downto 0);
  signal c_31_17_3_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_resize: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_resize: signed(23 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_3_1_False_resize: signed(22 downto 0);
  signal c_34_3_1_False_shift: signed(22 downto 0);
  signal c_34_17_0_False_resize: signed(22 downto 0);
  signal c_34_17_0_False_shift: signed(22 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_resize: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(19 downto 0);
  signal c_38_9_0_False_resize: signed(19 downto 0);
  signal c_38_9_0_False_shift: signed(19 downto 0);
  signal c_38_3_3_False_resize: signed(19 downto 0);
  signal c_38_3_3_False_shift: signed(19 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(19 downto 0);
  signal c_39_resize: signed(19 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_40_resize: signed(22 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_27);
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
  -- output node 4 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 5 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 6 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 7 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 8 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 9 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_40);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [32]]
  c_1_0_5_False_resize <= resize(c_0, 21);
  c_1_0_5_False_shift <= shift_left(c_1_0_5_False_resize, 5);
  c_1_0_0_False_resize <= resize(c_0, 21);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_5_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [8]]
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_3_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[1], [56]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 22,
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [2]]
  c_4_0_1_False_resize <= resize(c_0, 17);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  c_4_0_0_False_resize <= resize(c_0, 17);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_1_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[64], [1]]
  c_5_0_0_False_resize <= resize(c_0, 22);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_6_False_resize <= resize(c_0, 22);
  c_5_0_6_False_shift <= shift_left(c_5_0_6_False_resize, 6);
  with config_select_1 select c_5_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[65], [1]]
  with config_select_2 select c_6_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 7 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[4], [1]]
  c_8_0_0_False_resize <= resize(c_0, 18);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_2_False_resize <= resize(c_0, 18);
  c_8_0_2_False_shift <= shift_left(c_8_0_2_False_resize, 2);
  with config_select_1 select c_8_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_0_0_False_shift;
        when others => c_8 <= c_8_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 9 and associated fundamentals [[12], [15]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
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
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 10 and associated fundamentals [[3], [5]]
  with config_select_1 select c_10_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
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
      sub_i => c_10_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 11 and associated fundamentals [[15], [15]]
  inst_adder_node_11: entity work.adder_node
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 12 and associated fundamentals [[6], [5]]
  c_12_10_0_False_resize <= c_10;
  c_12_10_0_False_shift <= shift_left(c_12_10_0_False_resize, 0);
  c_12_10_1_False_resize <= c_10;
  c_12_10_1_False_shift <= shift_left(c_12_10_1_False_resize, 1);
  with config_select_2 select c_12_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_10_0_False_shift;
        when others => c_12 <= c_12_10_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[24], [15]]
  c_13_11_0_False_resize <= resize(c_11, 21);
  c_13_11_0_False_shift <= shift_left(c_13_11_0_False_resize, 0);
  c_13_10_3_False_resize <= resize(c_10, 21);
  c_13_10_3_False_shift <= shift_left(c_13_10_3_False_resize, 3);
  with config_select_2 select c_13_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_11_0_False_shift;
        when others => c_13 <= c_13_10_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 14 and associated fundamentals [[168], [175]]
  with config_select_3 select c_14_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[60], [15]]
  c_15_11_0_False_resize <= resize(c_11, 22);
  c_15_11_0_False_shift <= shift_left(c_15_11_0_False_resize, 0);
  c_15_11_2_False_resize <= resize(c_11, 22);
  c_15_11_2_False_shift <= shift_left(c_15_11_2_False_resize, 2);
  with config_select_2 select c_15_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_11_0_False_shift;
        when others => c_15 <= c_15_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 16 and associated fundamentals [[61], [71]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 23,
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
      x_i => c_3,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 17 and associated fundamentals [[7], [13]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 19,
      w_o => 20,
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
      x_i => c_4,
      y_i => c_10,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[3], [60]]
  c_18_10_0_False_resize <= resize(c_10, 22);
  c_18_10_0_False_shift <= shift_left(c_18_10_0_False_resize, 0);
  c_18_11_2_False_resize <= resize(c_11, 22);
  c_18_11_2_False_shift <= shift_left(c_18_11_2_False_resize, 2);
  with config_select_2 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_10_0_False_shift;
        when others => c_18 <= c_18_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[93], [180]]
  with config_select_3 select c_19_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
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
      sub_i => c_19_sub_sel,
      x_i => c_9,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 20 and associated fundamentals [[108], [105]]
  with config_select_3 select c_20_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_20_sub_sel,
      x_i => c_9,
      y_i => c_9,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 21 and associated fundamentals [[15], [240]]
  c_21_11_4_False_resize <= resize(c_11, 24);
  c_21_11_4_False_shift <= shift_left(c_21_11_4_False_resize, 4);
  c_21_11_0_False_resize <= resize(c_11, 24);
  c_21_11_0_False_shift <= shift_left(c_21_11_0_False_resize, 0);
  with config_select_2 select c_21_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_11_4_False_shift;
        when others => c_21 <= c_21_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 22 and associated fundamentals [[30], [5]]
  c_22_11_1_False_resize <= resize(c_11, 21);
  c_22_11_1_False_shift <= shift_left(c_22_11_1_False_resize, 1);
  c_22_10_0_False_resize <= resize(c_10, 21);
  c_22_10_0_False_shift <= shift_left(c_22_10_0_False_resize, 0);
  with config_select_2 select c_22_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_11_1_False_shift;
        when others => c_22 <= c_22_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 23 and associated fundamentals [[75], [230]]
  with config_select_3 select c_23_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
      w_o => 24,
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
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 24 and associated fundamentals [[120], [5]]
  c_24_11_3_False_resize <= resize(c_11, 23);
  c_24_11_3_False_shift <= shift_left(c_24_11_3_False_resize, 3);
  c_24_10_0_False_resize <= resize(c_10, 23);
  c_24_10_0_False_shift <= shift_left(c_24_10_0_False_resize, 0);
  with config_select_2 select c_24_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_11_3_False_shift;
        when others => c_24 <= c_24_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 25 and associated fundamentals [[233], [23]]
  with config_select_3 select c_25_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
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
      sub_i => c_25_sub_sel,
      x_i => c_24,
      y_i => c_17,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 26 and associated fundamentals [[207], [335]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
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
      x_i => c_11,
      y_i => c_10,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 27 and associated fundamentals [[122], [142]]
  c_27_resize <= resize(c_16, 24);
  c_27 <= shift_left(c_27_resize, 1);
  -- node of type 'output' in stage 3 with id 28 and associated fundamentals [[233], [23]]
  c_28_resize <= c_25;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[65], [2]]
  c_29_6_0_False_resize <= c_6;
  c_29_6_0_False_shift <= shift_left(c_29_6_0_False_resize, 0);
  c_29_6_1_False_resize <= c_6;
  c_29_6_1_False_shift <= shift_left(c_29_6_1_False_resize, 1);
  with config_select_3 select c_29_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_6_0_False_shift;
        when others => c_29 <= c_29_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 30 and associated fundamentals [[65], [2]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[207], [104]]
  c_31_26_0_False_resize <= c_26;
  c_31_26_0_False_shift <= shift_left(c_31_26_0_False_resize, 0);
  c_31_17_3_False_resize <= resize(c_17, 24);
  c_31_17_3_False_shift <= shift_left(c_31_17_3_False_resize, 3);
  with config_select_3 select c_31_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_26_0_False_shift;
        when others => c_31 <= c_31_17_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 32 and associated fundamentals [[207], [104]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'output' in stage 3 with id 33 and associated fundamentals [[168], [175]]
  c_33_resize <= c_14;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[7], [112]]
  c_34_3_1_False_resize <= resize(c_3, 23);
  c_34_3_1_False_shift <= shift_left(c_34_3_1_False_resize, 1);
  c_34_17_0_False_resize <= resize(c_17, 23);
  c_34_17_0_False_shift <= shift_left(c_34_17_0_False_resize, 0);
  with config_select_3 select c_34_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_3_1_False_shift;
        when others => c_34 <= c_34_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 35 and associated fundamentals [[14], [224]]
  c_35_resize <= resize(c_34, 24);
  c_35 <= shift_left(c_35_resize, 1);
  -- node of type 'output' in stage 3 with id 36 and associated fundamentals [[93], [180]]
  c_36_resize <= c_19;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'output' in stage 3 with id 37 and associated fundamentals [[75], [230]]
  c_37_resize <= c_23;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 3 with id 38 and associated fundamentals [[8], [15]]
  c_38_9_0_False_resize <= c_9;
  c_38_9_0_False_shift <= shift_left(c_38_9_0_False_resize, 0);
  c_38_3_3_False_resize <= c_3(19 downto 0);
  c_38_3_3_False_shift <= shift_left(c_38_3_3_False_resize, 3);
  with config_select_3 select c_38_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_9_0_False_shift;
        when others => c_38 <= c_38_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 3 with id 39 and associated fundamentals [[8], [15]]
  c_39_resize <= c_38;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 3 with id 40 and associated fundamentals [[108], [105]]
  c_40_resize <= c_20;
  c_40 <= shift_left(c_40_resize, 0);
end architecture;

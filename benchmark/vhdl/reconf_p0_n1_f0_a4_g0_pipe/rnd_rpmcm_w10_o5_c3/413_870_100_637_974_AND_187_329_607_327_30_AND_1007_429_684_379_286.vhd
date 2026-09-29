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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(22 downto 0);
  signal c_4_2_7_False_resize: signed(22 downto 0);
  signal c_4_2_7_False_shift: signed(22 downto 0);
  signal c_4_1_0_False_resize: signed(22 downto 0);
  signal c_4_1_0_False_shift: signed(22 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_i0_resize: signed(24 downto 0);
  signal c_5_i1_resize: signed(24 downto 0);
  signal c_5_i0_shift: signed(24 downto 0);
  signal c_5_i1_shift: signed(24 downto 0);
  signal c_5_arith: signed(24 downto 0);
  signal c_5_oshift: signed(24 downto 0);
  signal c_6: signed(17 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(16 downto 0);
  signal c_8_0_1_False_resize: signed(16 downto 0);
  signal c_8_0_1_False_shift: signed(16 downto 0);
  signal c_8_0_0_False_resize: signed(16 downto 0);
  signal c_8_0_0_False_shift: signed(16 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_i0_resize: signed(19 downto 0);
  signal c_9_i1_resize: signed(19 downto 0);
  signal c_9_i0_shift: signed(19 downto 0);
  signal c_9_i1_shift: signed(19 downto 0);
  signal c_9_arith: signed(19 downto 0);
  signal c_9_oshift: signed(19 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(20 downto 0);
  signal c_10_i0_resize: signed(20 downto 0);
  signal c_10_i1_resize: signed(20 downto 0);
  signal c_10_i0_shift: signed(20 downto 0);
  signal c_10_i1_shift: signed(20 downto 0);
  signal c_10_arith: signed(20 downto 0);
  signal c_10_oshift: signed(20 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(20 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_7_5_False_resize: signed(23 downto 0);
  signal c_12_7_5_False_shift: signed(23 downto 0);
  signal c_12_11_0_False_resize: signed(23 downto 0);
  signal c_12_11_0_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(25 downto 0);
  signal c_15_10_5_False_resize: signed(25 downto 0);
  signal c_15_10_5_False_shift: signed(25 downto 0);
  signal c_15_3_0_False_resize: signed(25 downto 0);
  signal c_15_3_0_False_shift: signed(25 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_9_0_False_resize: signed(23 downto 0);
  signal c_16_9_0_False_shift: signed(23 downto 0);
  signal c_16_9_4_False_resize: signed(23 downto 0);
  signal c_16_9_4_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(15 downto 0);
  signal c_19: signed(15 downto 0);
  signal c_20: signed(17 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_20_5_False_resize: signed(23 downto 0);
  signal c_21_20_5_False_shift: signed(23 downto 0);
  signal c_21_19_8_False_resize: signed(23 downto 0);
  signal c_21_19_8_False_shift: signed(23 downto 0);
  signal c_21_7_0_False_resize: signed(23 downto 0);
  signal c_21_7_0_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_23_22_0_False_resize: signed(20 downto 0);
  signal c_23_22_0_False_shift: signed(20 downto 0);
  signal c_23_5_0_False_resize: signed(20 downto 0);
  signal c_23_5_0_False_shift: signed(20 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(24 downto 0);
  signal c_25_i0_resize: signed(24 downto 0);
  signal c_25_i1_resize: signed(24 downto 0);
  signal c_25_i0_shift: signed(24 downto 0);
  signal c_25_i1_shift: signed(24 downto 0);
  signal c_25_arith: signed(24 downto 0);
  signal c_25_oshift: signed(24 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_24_0_False_resize: signed(24 downto 0);
  signal c_28_24_0_False_shift: signed(24 downto 0);
  signal c_28_27_0_False_resize: signed(24 downto 0);
  signal c_28_27_0_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(19 downto 0);
  signal c_29_9_0_False_resize: signed(19 downto 0);
  signal c_29_9_0_False_shift: signed(19 downto 0);
  signal c_29_6_2_False_resize: signed(19 downto 0);
  signal c_29_6_2_False_shift: signed(19 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(25 downto 0);
  signal c_33_i1_resize: signed(25 downto 0);
  signal c_33_i0_shift: signed(25 downto 0);
  signal c_33_i1_shift: signed(25 downto 0);
  signal c_33_arith: signed(25 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(19 downto 0);
  signal c_35: signed(19 downto 0);
  signal c_36: signed(19 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_37_14_0_False_resize: signed(24 downto 0);
  signal c_37_14_0_False_shift: signed(24 downto 0);
  signal c_37_36_6_False_resize: signed(24 downto 0);
  signal c_37_36_6_False_shift: signed(24 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_39_38_0_False_resize: signed(24 downto 0);
  signal c_39_38_0_False_shift: signed(24 downto 0);
  signal c_39_14_1_False_resize: signed(24 downto 0);
  signal c_39_14_1_False_shift: signed(24 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_i0_resize: signed(25 downto 0);
  signal c_40_i1_resize: signed(25 downto 0);
  signal c_40_i0_shift: signed(25 downto 0);
  signal c_40_i1_shift: signed(25 downto 0);
  signal c_40_arith: signed(25 downto 0);
  signal c_40_oshift: signed(25 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_resize: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_resize: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_resize: signed(25 downto 0);
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
  -- output node 1 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 2 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 3 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 4 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_52);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [-1], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-29], [31], [-29]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[128], [-1], [3]]
  c_4_2_7_False_resize <= resize(c_2, 23);
  c_4_2_7_False_shift <= shift_left(c_4_2_7_False_resize, 7);
  c_4_1_0_False_resize <= resize(c_1, 23);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_2_7_False_shift;
        when others => c_4 <= c_4_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[483], [27], [-17]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[3], [-1], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[-53], [39], [-5]]
  with config_select_3 select c_7_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 18,
      w_o => 22,
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
      sub_i => c_7_sub_sel,
      x_i => c_3,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[1], [2], [2]]
  c_8_0_1_False_resize <= resize(c_0, 17);
  c_8_0_1_False_shift <= shift_left(c_8_0_1_False_resize, 1);
  c_8_0_0_False_resize <= resize(c_0, 17);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  with config_select_1 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_0_1_False_shift;
        when others => c_8 <= c_8_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[7], [-9], [11]]
  with config_select_2 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 17,
      w_o => 20,
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
      sub_i => c_9_sub_sel,
      x_i => c_1,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 10 and associated fundamentals [[4], [-12], [20]]
  with config_select_2 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 2,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_10_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[4], [-12], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[4], [-12], [-160]]
  c_12_7_5_False_resize <= resize(c_7, 24);
  c_12_7_5_False_shift <= shift_left(c_12_7_5_False_resize, 5);
  c_12_11_0_False_resize <= resize(c_11, 24);
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  with config_select_4 select c_12_sel <= 
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_7_5_False_shift;
        when others => c_12 <= c_12_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[483], [27], [-17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 14 and associated fundamentals [[487], [15], [143]]
  with config_select_5 select c_14_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_14_sub_sel,
      x_i => c_13,
      y_i => c_12,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[128], [31], [640]]
  c_15_10_5_False_resize <= resize(c_10, 26);
  c_15_10_5_False_shift <= shift_left(c_15_10_5_False_resize, 5);
  c_15_3_0_False_resize <= resize(c_3, 26);
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_10_5_False_shift;
        when others => c_15 <= c_15_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[7], [-144], [11]]
  c_16_9_0_False_resize <= resize(c_9, 24);
  c_16_9_0_False_shift <= shift_left(c_16_9_0_False_resize, 0);
  c_16_9_4_False_resize <= resize(c_9, 24);
  c_16_9_4_False_shift <= shift_left(c_16_9_4_False_resize, 4);
  with config_select_3 select c_16_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_9_0_False_shift;
        when others => c_16 <= c_16_9_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[100], [607], [684]]
  with config_select_4 select c_17_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 18 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[3], [-1], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 21 and associated fundamentals [[96], [39], [256]]
  c_21_20_5_False_resize <= resize(c_20, 24);
  c_21_20_5_False_shift <= shift_left(c_21_20_5_False_resize, 5);
  c_21_19_8_False_resize <= resize(c_19, 24);
  c_21_19_8_False_shift <= shift_left(c_21_19_8_False_resize, 8);
  c_21_7_0_False_resize <= resize(c_7, 24);
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  with config_select_4 select c_21_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_20_5_False_shift;
        when "01" => c_21 <= c_21_19_8_False_shift;
        when others => c_21 <= c_21_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 22 and associated fundamentals [[-29], [31], [-29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[-29], [31], [-17]]
  c_23_22_0_False_resize <= c_22;
  c_23_22_0_False_shift <= shift_left(c_23_22_0_False_resize, 0);
  c_23_5_0_False_resize <= c_5(20 downto 0);
  c_23_5_0_False_shift <= shift_left(c_23_5_0_False_resize, 0);
  with config_select_4 select c_23_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_22_0_False_shift;
        when others => c_23 <= c_23_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 24 and associated fundamentals [[413], [187], [1007]]
  with config_select_5 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_24_sub_sel,
      x_i => c_21,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 25 and associated fundamentals [[-422], [314], [-38]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_19,
      y_i => c_7,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[-53], [39], [-5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[-53], [39], [-5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 28 and associated fundamentals [[413], [39], [-5]]
  c_28_24_0_False_resize <= c_24(24 downto 0);
  c_28_24_0_False_shift <= shift_left(c_28_24_0_False_resize, 0);
  c_28_27_0_False_resize <= resize(c_27, 25);
  c_28_27_0_False_shift <= shift_left(c_28_27_0_False_resize, 0);
  with config_select_6 select c_28_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_24_0_False_shift;
        when others => c_28 <= c_28_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[7], [-9], [12]]
  c_29_9_0_False_resize <= c_9;
  c_29_9_0_False_shift <= shift_left(c_29_9_0_False_resize, 0);
  c_29_6_2_False_resize <= resize(c_6, 20);
  c_29_6_2_False_shift <= shift_left(c_29_6_2_False_resize, 2);
  with config_select_3 select c_29_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_9_0_False_shift;
        when others => c_29 <= c_29_6_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[7], [-9], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[7], [-9], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[7], [-9], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 33 and associated fundamentals [[637], [327], [379]]
  with config_select_7 select c_33_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
      w_o => 26,
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
      sub_i => c_33_sub_sel,
      x_i => c_28,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 34 and associated fundamentals [[7], [-9], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 35 and associated fundamentals [[7], [-9], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 36 and associated fundamentals [[7], [-9], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 37 and associated fundamentals [[448], [15], [143]]
  c_37_14_0_False_resize <= c_14;
  c_37_14_0_False_shift <= shift_left(c_37_14_0_False_resize, 0);
  c_37_36_6_False_resize <= resize(c_36, 25);
  c_37_36_6_False_shift <= shift_left(c_37_36_6_False_resize, 6);
  with config_select_6 select c_37_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_14_0_False_shift;
        when others => c_37 <= c_37_36_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 38 and associated fundamentals [[-422], [314], [-38]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_25 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 39 and associated fundamentals [[-422], [314], [286]]
  c_39_38_0_False_resize <= c_38;
  c_39_38_0_False_shift <= shift_left(c_39_38_0_False_resize, 0);
  c_39_14_1_False_resize <= c_14;
  c_39_14_1_False_shift <= shift_left(c_39_14_1_False_resize, 1);
  with config_select_6 select c_39_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_38_0_False_shift;
        when others => c_39 <= c_39_14_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 40 and associated fundamentals [[870], [329], [429]]
  with config_select_7 select c_40_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_40_sub_sel,
      x_i => c_37,
      y_i => c_39,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 41 and associated fundamentals [[413], [187], [1007]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[413], [187], [1007]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 43 and associated fundamentals [[413], [187], [1007]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 7 with id 44 and associated fundamentals [[870], [329], [429]]
  c_44_resize <= c_40;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'register' in stage 5 with id 45 and associated fundamentals [[100], [607], [684]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 46 and associated fundamentals [[100], [607], [684]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[100], [607], [684]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 48 and associated fundamentals [[100], [607], [684]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 7 with id 49 and associated fundamentals [[637], [327], [379]]
  c_49_resize <= c_33;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'register' in stage 6 with id 50 and associated fundamentals [[487], [15], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 51 and associated fundamentals [[487], [15], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 52 and associated fundamentals [[974], [30], [286]]
  c_52_resize <= resize(c_51, 26);
  c_52 <= shift_left(c_52_resize, 1);
end architecture;

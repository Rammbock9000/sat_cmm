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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(24 downto 0);
  signal c_3_0_0_False_resize: signed(24 downto 0);
  signal c_3_0_0_False_shift: signed(24 downto 0);
  signal c_3_0_9_False_resize: signed(24 downto 0);
  signal c_3_0_9_False_shift: signed(24 downto 0);
  signal c_3_0_1_False_resize: signed(24 downto 0);
  signal c_3_0_1_False_shift: signed(24 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(26 downto 0);
  signal c_4_i0_resize: signed(26 downto 0);
  signal c_4_i1_resize: signed(26 downto 0);
  signal c_4_i0_shift: signed(26 downto 0);
  signal c_4_i1_shift: signed(26 downto 0);
  signal c_4_arith: signed(26 downto 0);
  signal c_4_oshift: signed(26 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(15 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_i0_resize: signed(20 downto 0);
  signal c_7_i1_resize: signed(20 downto 0);
  signal c_7_i0_shift: signed(20 downto 0);
  signal c_7_i1_shift: signed(20 downto 0);
  signal c_7_arith: signed(20 downto 0);
  signal c_7_oshift: signed(20 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(26 downto 0);
  signal c_9_4_0_False_resize: signed(26 downto 0);
  signal c_9_4_0_False_shift: signed(26 downto 0);
  signal c_9_8_2_False_resize: signed(26 downto 0);
  signal c_9_8_2_False_shift: signed(26 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(26 downto 0);
  signal c_12_i0_resize: signed(26 downto 0);
  signal c_12_i1_resize: signed(26 downto 0);
  signal c_12_i0_shift: signed(26 downto 0);
  signal c_12_i1_shift: signed(26 downto 0);
  signal c_12_arith: signed(26 downto 0);
  signal c_12_oshift: signed(26 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_7_0_False_resize: signed(23 downto 0);
  signal c_14_7_0_False_shift: signed(23 downto 0);
  signal c_14_13_2_False_resize: signed(23 downto 0);
  signal c_14_13_2_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_15_7_0_False_resize: signed(20 downto 0);
  signal c_15_7_0_False_shift: signed(20 downto 0);
  signal c_15_10_1_False_resize: signed(20 downto 0);
  signal c_15_10_1_False_shift: signed(20 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(21 downto 0);
  signal c_17_5_0_False_resize: signed(21 downto 0);
  signal c_17_5_0_False_shift: signed(21 downto 0);
  signal c_17_1_0_False_resize: signed(21 downto 0);
  signal c_17_1_0_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(19 downto 0);
  signal c_21_8_1_False_resize: signed(19 downto 0);
  signal c_21_8_1_False_shift: signed(19 downto 0);
  signal c_21_8_4_False_resize: signed(19 downto 0);
  signal c_21_8_4_False_shift: signed(19 downto 0);
  signal c_21_7_0_False_resize: signed(19 downto 0);
  signal c_21_7_0_False_shift: signed(19 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(20 downto 0);
  signal c_25: signed(20 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_12_0_False_resize: signed(24 downto 0);
  signal c_26_12_0_False_shift: signed(24 downto 0);
  signal c_26_25_4_False_resize: signed(24 downto 0);
  signal c_26_25_4_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_28: signed(19 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_i0_resize: signed(25 downto 0);
  signal c_29_i1_resize: signed(25 downto 0);
  signal c_29_i0_shift: signed(25 downto 0);
  signal c_29_i1_shift: signed(25 downto 0);
  signal c_29_arith: signed(25 downto 0);
  signal c_29_oshift: signed(24 downto 0);
  signal c_30: signed(26 downto 0);
  signal c_31: signed(26 downto 0);
  signal c_32: signed(26 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(25 downto 0);
  signal c_33_i1_resize: signed(25 downto 0);
  signal c_33_i0_shift: signed(25 downto 0);
  signal c_33_i1_shift: signed(25 downto 0);
  signal c_33_arith: signed(25 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(26 downto 0);
  signal c_34_25_2_False_resize: signed(26 downto 0);
  signal c_34_25_2_False_shift: signed(26 downto 0);
  signal c_34_12_0_False_resize: signed(26 downto 0);
  signal c_34_12_0_False_shift: signed(26 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_i0_resize: signed(25 downto 0);
  signal c_36_i1_resize: signed(25 downto 0);
  signal c_36_i0_shift: signed(25 downto 0);
  signal c_36_i1_shift: signed(25 downto 0);
  signal c_36_arith: signed(25 downto 0);
  signal c_36_oshift: signed(25 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(26 downto 0);
  signal c_38: signed(26 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_38_0_False_resize: signed(25 downto 0);
  signal c_39_38_0_False_shift: signed(25 downto 0);
  signal c_39_27_0_False_resize: signed(25 downto 0);
  signal c_39_27_0_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_40_1_False_resize: signed(25 downto 0);
  signal c_41_40_1_False_shift: signed(25 downto 0);
  signal c_41_36_0_False_resize: signed(25 downto 0);
  signal c_41_36_0_False_shift: signed(25 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_43_42_0_False_resize: signed(24 downto 0);
  signal c_43_42_0_False_shift: signed(24 downto 0);
  signal c_43_27_1_False_resize: signed(24 downto 0);
  signal c_43_27_1_False_shift: signed(24 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_44_0_False_resize: signed(25 downto 0);
  signal c_45_44_0_False_shift: signed(25 downto 0);
  signal c_45_36_0_False_resize: signed(25 downto 0);
  signal c_45_36_0_False_shift: signed(25 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_50_resize: signed(24 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_resize: signed(25 downto 0);
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
  -- output node 0 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 1 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 2 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 3 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 4 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_51);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[10], [6], [10]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 3,
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
      c_1 <= c_1_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [64], [64]]
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_6_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[512], [1], [2]]
  c_3_0_0_False_resize <= resize(c_0, 25);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_9_False_resize <= resize(c_0, 25);
  c_3_0_9_False_shift <= shift_left(c_3_0_9_False_resize, 9);
  c_3_0_1_False_resize <= resize(c_0, 25);
  c_3_0_1_False_shift <= shift_left(c_3_0_1_False_resize, 1);
  with config_select_1 select c_3_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_0_0_False_shift;
        when "01" => c_3 <= c_3_0_9_False_shift;
        when others => c_3 <= c_3_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[1025], [62], [60]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 27,
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
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 5 and associated fundamentals [[36], [36], [28]]
  with config_select_1 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 5,
      s_y_i => 2,
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
      c_5 <= c_5_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 7 and associated fundamentals [[19], [13], [21]]
  with config_select_2 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_7_sub_sel,
      x_i => c_1,
      y_i => c_6,
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
      c_8 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[1025], [62], [4]]
  c_9_4_0_False_resize <= c_4;
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  c_9_8_2_False_resize <= resize(c_8, 27);
  c_9_8_2_False_shift <= shift_left(c_9_8_2_False_resize, 2);
  with config_select_3 select c_9_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_4_0_False_shift;
        when others => c_9 <= c_9_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 10 and associated fundamentals [[10], [6], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[10], [6], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 12 and associated fundamentals [[-255], [-706], [-1276]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 20,
      w_o => 27,
      s_x_i => 0,
      s_y_i => 7,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_9,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 13 and associated fundamentals [[36], [36], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_5 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[144], [13], [21]]
  c_14_7_0_False_resize <= resize(c_7, 24);
  c_14_7_0_False_shift <= shift_left(c_14_7_0_False_resize, 0);
  c_14_13_2_False_resize <= resize(c_13, 24);
  c_14_13_2_False_shift <= shift_left(c_14_13_2_False_resize, 2);
  with config_select_3 select c_14_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_7_0_False_shift;
        when others => c_14 <= c_14_13_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[20], [13], [21]]
  c_15_7_0_False_resize <= c_7;
  c_15_7_0_False_shift <= shift_left(c_15_7_0_False_resize, 0);
  c_15_10_1_False_resize <= resize(c_10, 21);
  c_15_10_1_False_shift <= shift_left(c_15_10_1_False_resize, 1);
  with config_select_3 select c_15_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_7_0_False_shift;
        when others => c_15 <= c_15_10_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 16 and associated fundamentals [[-496], [-403], [693]]
  with config_select_4 select c_16_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
      sub_i => c_16_sub_sel,
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[36], [36], [10]]
  c_17_5_0_False_resize <= c_5;
  c_17_5_0_False_shift <= shift_left(c_17_5_0_False_resize, 0);
  c_17_1_0_False_resize <= resize(c_1, 22);
  c_17_1_0_False_shift <= shift_left(c_17_1_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_5_0_False_shift;
        when others => c_17 <= c_17_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[36], [36], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[36], [36], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 20 and associated fundamentals [[-424], [-331], [673]]
  with config_select_5 select c_20_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
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
      sub_i => c_20_sub_sel,
      x_i => c_16,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[2], [13], [16]]
  c_21_8_1_False_resize <= resize(c_8, 20);
  c_21_8_1_False_shift <= shift_left(c_21_8_1_False_resize, 1);
  c_21_8_4_False_resize <= resize(c_8, 20);
  c_21_8_4_False_shift <= shift_left(c_21_8_4_False_resize, 4);
  c_21_7_0_False_resize <= c_7(19 downto 0);
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_8_1_False_shift;
        when "01" => c_21 <= c_21_8_4_False_shift;
        when others => c_21 <= c_21_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 22 and associated fundamentals [[36], [36], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 23 and associated fundamentals [[-16], [976], [912]]
  with config_select_4 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 6,
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
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 24 and associated fundamentals [[19], [13], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[19], [13], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 26 and associated fundamentals [[-255], [208], [336]]
  c_26_12_0_False_resize <= c_12(24 downto 0);
  c_26_12_0_False_shift <= shift_left(c_26_12_0_False_resize, 0);
  c_26_25_4_False_resize <= resize(c_25, 25);
  c_26_25_4_False_shift <= shift_left(c_26_25_4_False_resize, 4);
  with config_select_5 select c_26_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_12_0_False_shift;
        when others => c_26 <= c_26_25_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 27 and associated fundamentals [[169], [539], [-337]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_26,
      y_i => c_20,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 28 and associated fundamentals [[10], [6], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 29 and associated fundamentals [[-3], [491], [461]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_23,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 30 and associated fundamentals [[1025], [62], [60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 31 and associated fundamentals [[1025], [62], [60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[1025], [62], [60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 33 and associated fundamentals [[1022], [429], [521]]
  with config_select_6 select c_33_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
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
      sub_i => c_33_sub_sel,
      x_i => c_29,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 34 and associated fundamentals [[76], [52], [-1276]]
  c_34_25_2_False_resize <= resize(c_25, 27);
  c_34_25_2_False_shift <= shift_left(c_34_25_2_False_resize, 2);
  c_34_12_0_False_resize <= c_12;
  c_34_12_0_False_shift <= shift_left(c_34_12_0_False_resize, 0);
  with config_select_5 select c_34_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_25_2_False_shift;
        when others => c_34 <= c_34_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[-496], [-403], [693]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 36 and associated fundamentals [[572], [455], [-583]]
  with config_select_6 select c_36_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_36_sub_sel,
      x_i => c_34,
      y_i => c_35,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 37 and associated fundamentals [[-255], [-706], [-1276]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[-255], [-706], [-1276]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 39 and associated fundamentals [[-255], [-706], [-337]]
  c_39_38_0_False_resize <= c_38(25 downto 0);
  c_39_38_0_False_shift <= shift_left(c_39_38_0_False_resize, 0);
  c_39_27_0_False_resize <= c_27;
  c_39_27_0_False_shift <= shift_left(c_39_27_0_False_resize, 0);
  with config_select_7 select c_39_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_38_0_False_shift;
        when others => c_39 <= c_39_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[-424], [-331], [673]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 41 and associated fundamentals [[-848], [-662], [-583]]
  c_41_40_1_False_resize <= c_40;
  c_41_40_1_False_shift <= shift_left(c_41_40_1_False_resize, 1);
  c_41_36_0_False_resize <= c_36;
  c_41_36_0_False_shift <= shift_left(c_41_36_0_False_resize, 0);
  with config_select_7 select c_41_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_40_1_False_shift;
        when others => c_41 <= c_41_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 42 and associated fundamentals [[-3], [491], [461]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 43 and associated fundamentals [[338], [491], [461]]
  c_43_42_0_False_resize <= c_42;
  c_43_42_0_False_shift <= shift_left(c_43_42_0_False_resize, 0);
  c_43_27_1_False_resize <= c_27(24 downto 0);
  c_43_27_1_False_shift <= shift_left(c_43_27_1_False_resize, 1);
  with config_select_7 select c_43_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_42_0_False_shift;
        when others => c_43 <= c_43_27_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 44 and associated fundamentals [[-496], [-403], [693]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_35 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 45 and associated fundamentals [[572], [455], [693]]
  c_45_44_0_False_resize <= c_44;
  c_45_44_0_False_shift <= shift_left(c_45_44_0_False_resize, 0);
  c_45_36_0_False_resize <= c_36;
  c_45_36_0_False_shift <= shift_left(c_45_36_0_False_resize, 0);
  with config_select_7 select c_45_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_44_0_False_shift;
        when others => c_45 <= c_45_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 46 and associated fundamentals [[255], [706], [337]]
  c_46_resize <= c_39;
  c_46 <= -shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 7 with id 47 and associated fundamentals [[848], [662], [583]]
  c_47_resize <= c_41;
  c_47 <= -shift_left(c_47_resize, 0);
  -- node of type 'register' in stage 7 with id 48 and associated fundamentals [[1022], [429], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_33 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 49 and associated fundamentals [[1022], [429], [521]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 7 with id 50 and associated fundamentals [[338], [491], [461]]
  c_50_resize <= c_43;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 7 with id 51 and associated fundamentals [[572], [455], [693]]
  c_51_resize <= c_45;
  c_51 <= shift_left(c_51_resize, 0);
end architecture;

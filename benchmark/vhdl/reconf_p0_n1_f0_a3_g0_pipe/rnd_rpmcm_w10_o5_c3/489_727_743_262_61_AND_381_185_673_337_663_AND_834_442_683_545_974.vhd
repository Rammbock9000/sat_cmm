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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_3_0_False_resize: signed(22 downto 0);
  signal c_5_3_0_False_shift: signed(22 downto 0);
  signal c_5_4_2_False_resize: signed(22 downto 0);
  signal c_5_4_2_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_i0_resize: signed(24 downto 0);
  signal c_7_i1_resize: signed(24 downto 0);
  signal c_7_i0_shift: signed(24 downto 0);
  signal c_7_i1_shift: signed(24 downto 0);
  signal c_7_arith: signed(24 downto 0);
  signal c_7_oshift: signed(24 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(18 downto 0);
  signal c_8_0_0_False_resize: signed(18 downto 0);
  signal c_8_0_0_False_shift: signed(18 downto 0);
  signal c_8_0_3_False_resize: signed(18 downto 0);
  signal c_8_0_3_False_shift: signed(18 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(25 downto 0);
  signal c_10_0_0_False_resize: signed(25 downto 0);
  signal c_10_0_0_False_shift: signed(25 downto 0);
  signal c_10_0_10_False_resize: signed(25 downto 0);
  signal c_10_0_10_False_shift: signed(25 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(26 downto 0);
  signal c_11_i0_resize: signed(26 downto 0);
  signal c_11_i1_resize: signed(26 downto 0);
  signal c_11_i0_shift: signed(26 downto 0);
  signal c_11_i1_shift: signed(26 downto 0);
  signal c_11_arith: signed(26 downto 0);
  signal c_11_oshift: signed(26 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(19 downto 0);
  signal c_12_4_0_False_resize: signed(19 downto 0);
  signal c_12_4_0_False_shift: signed(19 downto 0);
  signal c_12_9_0_False_resize: signed(19 downto 0);
  signal c_12_9_0_False_shift: signed(19 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(21 downto 0);
  signal c_15_14_0_False_resize: signed(21 downto 0);
  signal c_15_14_0_False_shift: signed(21 downto 0);
  signal c_15_7_1_False_resize: signed(21 downto 0);
  signal c_15_7_1_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(15 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(23 downto 0);
  signal c_19_9_0_False_resize: signed(23 downto 0);
  signal c_19_9_0_False_shift: signed(23 downto 0);
  signal c_19_11_6_False_resize: signed(23 downto 0);
  signal c_19_11_6_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(17 downto 0);
  signal c_20_11_0_False_resize: signed(17 downto 0);
  signal c_20_11_0_False_shift: signed(17 downto 0);
  signal c_20_4_0_False_resize: signed(17 downto 0);
  signal c_20_4_0_False_shift: signed(17 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_i0_resize: signed(24 downto 0);
  signal c_21_i1_resize: signed(24 downto 0);
  signal c_21_i0_shift: signed(24 downto 0);
  signal c_21_i1_shift: signed(24 downto 0);
  signal c_21_arith: signed(24 downto 0);
  signal c_21_oshift: signed(24 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(24 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_18_0_False_resize: signed(25 downto 0);
  signal c_24_18_0_False_shift: signed(25 downto 0);
  signal c_24_23_4_False_resize: signed(25 downto 0);
  signal c_24_23_4_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(26 downto 0);
  signal c_30: signed(26 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_i0_resize: signed(25 downto 0);
  signal c_31_i1_resize: signed(25 downto 0);
  signal c_31_i0_shift: signed(25 downto 0);
  signal c_31_i1_shift: signed(25 downto 0);
  signal c_31_arith: signed(25 downto 0);
  signal c_31_oshift: signed(25 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_7_0_False_resize: signed(24 downto 0);
  signal c_32_7_0_False_shift: signed(24 downto 0);
  signal c_32_30_5_False_resize: signed(24 downto 0);
  signal c_32_30_5_False_shift: signed(24 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_i0_resize: signed(25 downto 0);
  signal c_34_i1_resize: signed(25 downto 0);
  signal c_34_i0_shift: signed(25 downto 0);
  signal c_34_i1_shift: signed(25 downto 0);
  signal c_34_arith: signed(25 downto 0);
  signal c_34_oshift: signed(25 downto 0);
  signal c_35: signed(20 downto 0);
  signal c_35_4_4_False_resize: signed(20 downto 0);
  signal c_35_4_4_False_shift: signed(20 downto 0);
  signal c_35_3_0_False_resize: signed(20 downto 0);
  signal c_35_3_0_False_shift: signed(20 downto 0);
  signal c_35_11_0_False_resize: signed(20 downto 0);
  signal c_35_11_0_False_shift: signed(20 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(20 downto 0);
  signal c_37: signed(20 downto 0);
  signal c_38: signed(20 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_i0_resize: signed(25 downto 0);
  signal c_39_i1_resize: signed(25 downto 0);
  signal c_39_i0_shift: signed(25 downto 0);
  signal c_39_i1_shift: signed(25 downto 0);
  signal c_39_arith: signed(25 downto 0);
  signal c_39_oshift: signed(25 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_40_1_False_resize: signed(25 downto 0);
  signal c_41_40_1_False_shift: signed(25 downto 0);
  signal c_41_27_0_False_resize: signed(25 downto 0);
  signal c_41_27_0_False_shift: signed(25 downto 0);
  signal c_41_39_0_False_resize: signed(25 downto 0);
  signal c_41_39_0_False_shift: signed(25 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_39_0_False_resize: signed(25 downto 0);
  signal c_45_39_0_False_shift: signed(25 downto 0);
  signal c_45_44_0_False_resize: signed(25 downto 0);
  signal c_45_44_0_False_shift: signed(25 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_resize: signed(25 downto 0);
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
  -- output node 4 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_54);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "1" when "00",
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[66], [30], [66]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 5,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[66], [4], [66]]
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_4_2_False_resize <= resize(c_4, 23);
  c_5_4_2_False_shift <= shift_left(c_5_4_2_False_resize, 2);
  with config_select_3 select c_5_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_3_0_False_shift;
        when others => c_5 <= c_5_4_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[262], [18], [266]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 25,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[8], [1], [1]]
  c_8_0_0_False_resize <= resize(c_0, 19);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_3_False_resize <= resize(c_0, 19);
  c_8_0_3_False_shift <= shift_left(c_8_0_3_False_resize, 3);
  with config_select_1 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_0_0_False_shift;
        when others => c_8 <= c_8_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[62], [10], [6]]
  with config_select_2 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_2,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[1], [1], [1024]]
  c_10_0_0_False_resize <= resize(c_0, 26);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_0_10_False_resize <= resize(c_0, 26);
  c_10_0_10_False_shift <= shift_left(c_10_0_10_False_resize, 10);
  with config_select_1 select c_10_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_0_0_False_shift;
        when others => c_10 <= c_10_0_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 11 and associated fundamentals [[1], [3], [1026]]
  with config_select_2 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 26,
      w_o => 27,
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
      sub_i => c_11_sub_sel,
      x_i => c_2,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[1], [10], [1]]
  c_12_4_0_False_resize <= resize(c_4, 20);
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_9_0_False_resize <= c_9(19 downto 0);
  c_12_9_0_False_shift <= shift_left(c_12_9_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_4_0_False_shift;
        when others => c_12 <= c_12_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[62], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_9 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[30], [330], [-26]]
  with config_select_4 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 25,
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
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[30], [36], [-26]]
  c_15_14_0_False_resize <= c_14(21 downto 0);
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  c_15_7_1_False_resize <= c_7(21 downto 0);
  c_15_7_1_False_shift <= shift_left(c_15_7_1_False_resize, 1);
  with config_select_5 select c_15_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_14_0_False_shift;
        when others => c_15 <= c_15_7_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 18 and associated fundamentals [[481], [577], [417]]
  with config_select_6 select c_18_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_18_sub_sel,
      x_i => c_17,
      y_i => c_15,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[62], [192], [6]]
  c_19_9_0_False_resize <= resize(c_9, 24);
  c_19_9_0_False_shift <= shift_left(c_19_9_0_False_resize, 0);
  c_19_11_6_False_resize <= c_11(23 downto 0);
  c_19_11_6_False_shift <= shift_left(c_19_11_6_False_resize, 6);
  with config_select_3 select c_19_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_9_0_False_shift;
        when others => c_19 <= c_19_11_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[1], [3], [1]]
  c_20_11_0_False_resize <= c_11(17 downto 0);
  c_20_11_0_False_shift <= shift_left(c_20_11_0_False_resize, 0);
  c_20_4_0_False_resize <= resize(c_4, 18);
  c_20_4_0_False_shift <= shift_left(c_20_4_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_11_0_False_shift;
        when others => c_20 <= c_20_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[123], [381], [13]]
  with config_select_4 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 18,
      w_o => 25,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[30], [330], [-26]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[30], [330], [-26]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 24 and associated fundamentals [[481], [577], [-416]]
  c_24_18_0_False_resize <= c_18;
  c_24_18_0_False_shift <= shift_left(c_24_18_0_False_resize, 0);
  c_24_23_4_False_resize <= resize(c_23, 26);
  c_24_23_4_False_shift <= shift_left(c_24_23_4_False_resize, 4);
  with config_select_7 select c_24_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_18_0_False_shift;
        when others => c_24 <= c_24_23_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[123], [381], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[123], [381], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[123], [381], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 28 and associated fundamentals [[727], [185], [442]]
  with config_select_8 select c_28_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
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
      sub_i => c_28_sub_sel,
      x_i => c_27,
      y_i => c_24,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 29 and associated fundamentals [[1], [3], [1026]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[1], [3], [1026]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add' in stage 5 with id 31 and associated fundamentals [[61], [663], [974]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_30,
      y_i => c_14,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 32 and associated fundamentals [[262], [96], [266]]
  c_32_7_0_False_resize <= c_7;
  c_32_7_0_False_shift <= shift_left(c_32_7_0_False_resize, 0);
  c_32_30_5_False_resize <= c_30(24 downto 0);
  c_32_30_5_False_shift <= shift_left(c_32_30_5_False_resize, 5);
  with config_select_5 select c_32_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_7_0_False_shift;
        when others => c_32 <= c_32_30_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[262], [96], [266]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 34 and associated fundamentals [[743], [673], [683]]
  inst_adder_node_34: entity work.adder_node
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
      sub => False
    )
    port map (
      x_i => c_33,
      y_i => c_18,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[1], [30], [16]]
  c_35_4_4_False_resize <= resize(c_4, 21);
  c_35_4_4_False_shift <= shift_left(c_35_4_4_False_resize, 4);
  c_35_3_0_False_resize <= c_3(20 downto 0);
  c_35_3_0_False_shift <= shift_left(c_35_3_0_False_resize, 0);
  c_35_11_0_False_resize <= c_11(20 downto 0);
  c_35_11_0_False_shift <= shift_left(c_35_11_0_False_resize, 0);
  with config_select_3 select c_35_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_4_4_False_shift;
        when "01" => c_35 <= c_35_3_0_False_shift;
        when others => c_35 <= c_35_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 36 and associated fundamentals [[1], [30], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 37 and associated fundamentals [[1], [30], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[1], [30], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 39 and associated fundamentals [[489], [337], [545]]
  with config_select_7 select c_39_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
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
      sub_i => c_39_sub_sel,
      x_i => c_18,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[481], [577], [417]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 41 and associated fundamentals [[489], [381], [834]]
  c_41_40_1_False_resize <= c_40;
  c_41_40_1_False_shift <= shift_left(c_41_40_1_False_resize, 1);
  c_41_27_0_False_resize <= resize(c_27, 26);
  c_41_27_0_False_shift <= shift_left(c_41_27_0_False_resize, 0);
  c_41_39_0_False_resize <= c_39;
  c_41_39_0_False_shift <= shift_left(c_41_39_0_False_resize, 0);
  with config_select_8 select c_41_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_40_1_False_shift;
        when "01" => c_41 <= c_41_27_0_False_shift;
        when others => c_41 <= c_41_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 42 and associated fundamentals [[262], [18], [266]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[262], [18], [266]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[262], [18], [266]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 45 and associated fundamentals [[262], [337], [545]]
  c_45_39_0_False_resize <= c_39;
  c_45_39_0_False_shift <= shift_left(c_45_39_0_False_resize, 0);
  c_45_44_0_False_resize <= resize(c_44, 26);
  c_45_44_0_False_shift <= shift_left(c_45_44_0_False_resize, 0);
  with config_select_8 select c_45_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_39_0_False_shift;
        when others => c_45 <= c_45_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 46 and associated fundamentals [[489], [381], [834]]
  c_46_resize <= c_41;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 8 with id 47 and associated fundamentals [[727], [185], [442]]
  c_47_resize <= c_28;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[743], [673], [683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_34 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 49 and associated fundamentals [[743], [673], [683]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 8 with id 50 and associated fundamentals [[262], [337], [545]]
  c_50_resize <= c_45;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'register' in stage 6 with id 51 and associated fundamentals [[61], [663], [974]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 52 and associated fundamentals [[61], [663], [974]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 53 and associated fundamentals [[61], [663], [974]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 54 and associated fundamentals [[61], [663], [974]]
  c_54_resize <= c_53;
  c_54 <= shift_left(c_54_resize, 0);
end architecture;

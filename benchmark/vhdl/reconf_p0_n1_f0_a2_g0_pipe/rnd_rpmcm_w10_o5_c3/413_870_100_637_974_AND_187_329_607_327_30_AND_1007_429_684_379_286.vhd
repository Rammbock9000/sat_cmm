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
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
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
  signal c_4: signed(20 downto 0);
  signal c_4_i0_resize: signed(20 downto 0);
  signal c_4_i1_resize: signed(20 downto 0);
  signal c_4_i0_shift: signed(20 downto 0);
  signal c_4_i1_shift: signed(20 downto 0);
  signal c_4_arith: signed(20 downto 0);
  signal c_4_oshift: signed(20 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(20 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_5_3_False_resize: signed(23 downto 0);
  signal c_6_5_3_False_shift: signed(23 downto 0);
  signal c_6_3_0_False_resize: signed(23 downto 0);
  signal c_6_3_0_False_shift: signed(23 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_3_0_False_resize: signed(22 downto 0);
  signal c_8_3_0_False_shift: signed(22 downto 0);
  signal c_8_7_0_False_resize: signed(22 downto 0);
  signal c_8_7_0_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_i0_resize: signed(25 downto 0);
  signal c_9_i1_resize: signed(25 downto 0);
  signal c_9_i0_shift: signed(25 downto 0);
  signal c_9_i1_shift: signed(25 downto 0);
  signal c_9_arith: signed(25 downto 0);
  signal c_9_oshift: signed(25 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(25 downto 0);
  signal c_11_5_5_False_resize: signed(25 downto 0);
  signal c_11_5_5_False_shift: signed(25 downto 0);
  signal c_11_10_0_False_resize: signed(25 downto 0);
  signal c_11_10_0_False_shift: signed(25 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(27 downto 0);
  signal c_13_i0_resize: signed(27 downto 0);
  signal c_13_i1_resize: signed(27 downto 0);
  signal c_13_i0_shift: signed(27 downto 0);
  signal c_13_i1_shift: signed(27 downto 0);
  signal c_13_arith: signed(27 downto 0);
  signal c_13_oshift: signed(27 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(23 downto 0);
  signal c_14_10_1_False_resize: signed(23 downto 0);
  signal c_14_10_1_False_shift: signed(23 downto 0);
  signal c_14_3_0_False_resize: signed(23 downto 0);
  signal c_14_3_0_False_shift: signed(23 downto 0);
  signal c_14_7_8_False_resize: signed(23 downto 0);
  signal c_14_7_8_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(20 downto 0);
  signal c_18: signed(20 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(27 downto 0);
  signal c_19_i1_resize: signed(27 downto 0);
  signal c_19_i0_shift: signed(27 downto 0);
  signal c_19_i1_shift: signed(27 downto 0);
  signal c_19_arith: signed(27 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_20_5_1_False_resize: signed(21 downto 0);
  signal c_20_5_1_False_shift: signed(21 downto 0);
  signal c_20_10_0_False_resize: signed(21 downto 0);
  signal c_20_10_0_False_shift: signed(21 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_9_0_False_resize: signed(24 downto 0);
  signal c_23_9_0_False_shift: signed(24 downto 0);
  signal c_23_22_0_False_resize: signed(24 downto 0);
  signal c_23_22_0_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(21 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_i0_resize: signed(24 downto 0);
  signal c_26_i1_resize: signed(24 downto 0);
  signal c_26_i0_shift: signed(24 downto 0);
  signal c_26_i1_shift: signed(24 downto 0);
  signal c_26_arith: signed(24 downto 0);
  signal c_26_oshift: signed(24 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(23 downto 0);
  signal c_27_10_1_False_resize: signed(23 downto 0);
  signal c_27_10_1_False_shift: signed(23 downto 0);
  signal c_27_5_0_False_resize: signed(23 downto 0);
  signal c_27_5_0_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_7_0_False_resize: signed(22 downto 0);
  signal c_28_7_0_False_shift: signed(22 downto 0);
  signal c_28_10_0_False_resize: signed(22 downto 0);
  signal c_28_10_0_False_shift: signed(22 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_i0_resize: signed(25 downto 0);
  signal c_29_i1_resize: signed(25 downto 0);
  signal c_29_i0_shift: signed(25 downto 0);
  signal c_29_i1_shift: signed(25 downto 0);
  signal c_29_arith: signed(25 downto 0);
  signal c_29_oshift: signed(25 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(15 downto 0);
  signal c_31: signed(15 downto 0);
  signal c_32: signed(15 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_26_0_False_resize: signed(24 downto 0);
  signal c_33_26_0_False_shift: signed(24 downto 0);
  signal c_33_32_2_False_resize: signed(24 downto 0);
  signal c_33_32_2_False_shift: signed(24 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_35_0_False_resize: signed(24 downto 0);
  signal c_36_35_0_False_shift: signed(24 downto 0);
  signal c_36_26_1_False_resize: signed(24 downto 0);
  signal c_36_26_1_False_shift: signed(24 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_resize: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_resize: signed(25 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 1 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_42);
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
  -- output node 4 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_54);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [4], [4]]
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_2_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[15], [65], [63]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 23,
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
  -- node of type 'add_sub' in stage 1 with id 4 and associated fundamentals [[12], [20], [20]]
  with config_select_1 select c_4_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 4,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_4_sub_sel,
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
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[12], [20], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[96], [65], [160]]
  c_6_5_3_False_resize <= resize(c_5, 24);
  c_6_5_3_False_shift <= shift_left(c_6_5_3_False_resize, 3);
  c_6_3_0_False_resize <= resize(c_3, 24);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_5_3_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[1], [65], [63]]
  c_8_3_0_False_resize <= c_3;
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  c_8_7_0_False_resize <= resize(c_7, 23);
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_3_0_False_shift;
        when others => c_8 <= c_8_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[383], [325], [703]]
  with config_select_4 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_9_sub_sel,
      x_i => c_6,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 10 and associated fundamentals [[52], [76], [76]]
  with config_select_2 select c_10_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 2,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_10_sub_sel,
      x_i => c_4,
      y_i => c_2,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[384], [76], [640]]
  c_11_5_5_False_resize <= resize(c_5, 26);
  c_11_5_5_False_shift <= shift_left(c_11_5_5_False_resize, 5);
  c_11_10_0_False_resize <= resize(c_10, 26);
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_5_5_False_shift;
        when others => c_11 <= c_11_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[2560], [1328], [1536]]
  with config_select_4 select c_13_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 16,
      w_o => 28,
      s_x_i => 2,
      s_y_i => 10,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[15], [256], [152]]
  c_14_10_1_False_resize <= resize(c_10, 24);
  c_14_10_1_False_shift <= shift_left(c_14_10_1_False_resize, 1);
  c_14_3_0_False_resize <= resize(c_3, 24);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  c_14_7_8_False_resize <= resize(c_7, 24);
  c_14_7_8_False_shift <= shift_left(c_14_7_8_False_resize, 8);
  with config_select_3 select c_14_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_10_1_False_shift;
        when "01" => c_14 <= c_14_3_0_False_shift;
        when others => c_14 <= c_14_7_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[15], [256], [152]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 16 and associated fundamentals [[413], [187], [1007]]
  with config_select_5 select c_16_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_16_sub_sel,
      x_i => c_15,
      y_i => c_9,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 17 and associated fundamentals [[12], [20], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[12], [20], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 19 and associated fundamentals [[637], [327], [379]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 2,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_13,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[52], [40], [40]]
  c_20_5_1_False_resize <= resize(c_5, 22);
  c_20_5_1_False_shift <= shift_left(c_20_5_1_False_resize, 1);
  c_20_10_0_False_resize <= c_10(21 downto 0);
  c_20_10_0_False_shift <= shift_left(c_20_10_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_5_1_False_shift;
        when others => c_20 <= c_20_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 21 and associated fundamentals [[15], [65], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[15], [65], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 23 and associated fundamentals [[383], [65], [63]]
  c_23_9_0_False_resize <= c_9(24 downto 0);
  c_23_9_0_False_shift <= shift_left(c_23_9_0_False_resize, 0);
  c_23_22_0_False_resize <= resize(c_22, 25);
  c_23_22_0_False_shift <= shift_left(c_23_22_0_False_resize, 0);
  with config_select_5 select c_23_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_9_0_False_shift;
        when others => c_23 <= c_23_22_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[52], [40], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[52], [40], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 26 and associated fundamentals [[487], [15], [143]]
  with config_select_6 select c_26_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
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
      sub_i => c_26_sub_sel,
      x_i => c_25,
      y_i => c_23,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[12], [152], [152]]
  c_27_10_1_False_resize <= resize(c_10, 24);
  c_27_10_1_False_shift <= shift_left(c_27_10_1_False_resize, 1);
  c_27_5_0_False_resize <= resize(c_5, 24);
  c_27_5_0_False_shift <= shift_left(c_27_5_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_10_1_False_shift;
        when others => c_27 <= c_27_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[52], [1], [76]]
  c_28_7_0_False_resize <= resize(c_7, 23);
  c_28_7_0_False_shift <= shift_left(c_28_7_0_False_resize, 0);
  c_28_10_0_False_resize <= c_10;
  c_28_10_0_False_shift <= shift_left(c_28_10_0_False_resize, 0);
  with config_select_3 select c_28_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_7_0_False_shift;
        when others => c_28 <= c_28_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 29 and associated fundamentals [[100], [607], [684]]
  with config_select_4 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_29_sub_sel,
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 33 and associated fundamentals [[487], [4], [143]]
  c_33_26_0_False_resize <= c_26;
  c_33_26_0_False_shift <= shift_left(c_33_26_0_False_resize, 0);
  c_33_32_2_False_resize <= resize(c_32, 25);
  c_33_32_2_False_shift <= shift_left(c_33_32_2_False_resize, 2);
  with config_select_7 select c_33_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_26_0_False_shift;
        when others => c_33 <= c_33_32_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 34 and associated fundamentals [[383], [325], [703]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[383], [325], [703]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 36 and associated fundamentals [[383], [325], [286]]
  c_36_35_0_False_resize <= c_35(24 downto 0);
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  c_36_26_1_False_resize <= c_26;
  c_36_26_1_False_shift <= shift_left(c_36_26_1_False_resize, 1);
  with config_select_7 select c_36_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_35_0_False_shift;
        when others => c_36 <= c_36_26_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 37 and associated fundamentals [[870], [329], [429]]
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[413], [187], [1007]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[413], [187], [1007]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[413], [187], [1007]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 41 and associated fundamentals [[413], [187], [1007]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 8 with id 42 and associated fundamentals [[870], [329], [429]]
  c_42_resize <= c_37;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'register' in stage 5 with id 43 and associated fundamentals [[100], [607], [684]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 44 and associated fundamentals [[100], [607], [684]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[100], [607], [684]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[100], [607], [684]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 47 and associated fundamentals [[100], [607], [684]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'register' in stage 6 with id 48 and associated fundamentals [[637], [327], [379]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[637], [327], [379]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[637], [327], [379]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 51 and associated fundamentals [[637], [327], [379]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'register' in stage 7 with id 52 and associated fundamentals [[487], [15], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 53 and associated fundamentals [[487], [15], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 54 and associated fundamentals [[974], [30], [286]]
  c_54_resize <= resize(c_53, 26);
  c_54 <= shift_left(c_54_resize, 1);
end architecture;

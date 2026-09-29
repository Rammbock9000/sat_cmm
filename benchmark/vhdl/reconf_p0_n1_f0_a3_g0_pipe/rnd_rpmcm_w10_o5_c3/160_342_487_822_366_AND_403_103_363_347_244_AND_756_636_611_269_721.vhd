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
  signal c_3: signed(18 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(18 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_4_0_False_resize: signed(21 downto 0);
  signal c_5_4_0_False_shift: signed(21 downto 0);
  signal c_5_3_3_False_resize: signed(21 downto 0);
  signal c_5_3_3_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_1_0_False_resize: signed(18 downto 0);
  signal c_6_1_0_False_shift: signed(18 downto 0);
  signal c_6_2_3_False_resize: signed(18 downto 0);
  signal c_6_2_3_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(17 downto 0);
  signal c_10_2_0_False_resize: signed(17 downto 0);
  signal c_10_2_0_False_shift: signed(17 downto 0);
  signal c_10_1_0_False_resize: signed(17 downto 0);
  signal c_10_1_0_False_shift: signed(17 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_8_1_False_resize: signed(21 downto 0);
  signal c_13_8_1_False_shift: signed(21 downto 0);
  signal c_13_12_0_False_resize: signed(21 downto 0);
  signal c_13_12_0_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(17 downto 0);
  signal c_15: signed(17 downto 0);
  signal c_16: signed(17 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_i0_resize: signed(22 downto 0);
  signal c_17_i1_resize: signed(22 downto 0);
  signal c_17_i0_shift: signed(22 downto 0);
  signal c_17_i1_shift: signed(22 downto 0);
  signal c_17_arith: signed(22 downto 0);
  signal c_17_oshift: signed(22 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_19: signed(18 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_19_5_False_resize: signed(23 downto 0);
  signal c_20_19_5_False_shift: signed(23 downto 0);
  signal c_20_8_0_False_resize: signed(23 downto 0);
  signal c_20_8_0_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(18 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(23 downto 0);
  signal c_23_9_0_False_resize: signed(23 downto 0);
  signal c_23_9_0_False_shift: signed(23 downto 0);
  signal c_23_9_1_False_resize: signed(23 downto 0);
  signal c_23_9_1_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_i0_resize: signed(24 downto 0);
  signal c_27_i1_resize: signed(24 downto 0);
  signal c_27_i0_shift: signed(24 downto 0);
  signal c_27_i1_shift: signed(24 downto 0);
  signal c_27_arith: signed(24 downto 0);
  signal c_27_oshift: signed(24 downto 0);
  signal c_28: signed(18 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_22_1_False_resize: signed(23 downto 0);
  signal c_29_22_1_False_shift: signed(23 downto 0);
  signal c_29_28_0_False_resize: signed(23 downto 0);
  signal c_29_28_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_27_0_False_resize: signed(24 downto 0);
  signal c_30_27_0_False_shift: signed(24 downto 0);
  signal c_30_27_2_False_resize: signed(24 downto 0);
  signal c_30_27_2_False_shift: signed(24 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_i0_resize: signed(25 downto 0);
  signal c_32_i1_resize: signed(25 downto 0);
  signal c_32_i0_shift: signed(25 downto 0);
  signal c_32_i1_shift: signed(25 downto 0);
  signal c_32_arith: signed(25 downto 0);
  signal c_32_oshift: signed(25 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(18 downto 0);
  signal c_34: signed(18 downto 0);
  signal c_35: signed(18 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_8_1_False_resize: signed(23 downto 0);
  signal c_36_8_1_False_shift: signed(23 downto 0);
  signal c_36_35_0_False_resize: signed(23 downto 0);
  signal c_36_35_0_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_i0_resize: signed(25 downto 0);
  signal c_38_i1_resize: signed(25 downto 0);
  signal c_38_i0_shift: signed(25 downto 0);
  signal c_38_i1_shift: signed(25 downto 0);
  signal c_38_arith: signed(25 downto 0);
  signal c_38_oshift: signed(25 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(22 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_41_22_0_False_resize: signed(24 downto 0);
  signal c_41_22_0_False_shift: signed(24 downto 0);
  signal c_41_22_1_False_resize: signed(24 downto 0);
  signal c_41_22_1_False_shift: signed(24 downto 0);
  signal c_41_40_2_False_resize: signed(24 downto 0);
  signal c_41_40_2_False_shift: signed(24 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_i0_resize: signed(25 downto 0);
  signal c_42_i1_resize: signed(25 downto 0);
  signal c_42_i0_shift: signed(25 downto 0);
  signal c_42_i1_shift: signed(25 downto 0);
  signal c_42_arith: signed(25 downto 0);
  signal c_42_oshift: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_i0_resize: signed(25 downto 0);
  signal c_43_i1_resize: signed(25 downto 0);
  signal c_43_i0_shift: signed(25 downto 0);
  signal c_43_i1_shift: signed(25 downto 0);
  signal c_43_arith: signed(25 downto 0);
  signal c_43_oshift: signed(25 downto 0);
  signal c_43_sub_sel: std_logic;
  signal c_44: signed(25 downto 0);
  signal c_44_27_2_False_resize: signed(25 downto 0);
  signal c_44_27_2_False_shift: signed(25 downto 0);
  signal c_44_27_0_False_resize: signed(25 downto 0);
  signal c_44_27_0_False_shift: signed(25 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_resize: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_resize: signed(25 downto 0);
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
  -- output node 0 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 1 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 2 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 3 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 4 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_56);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [3], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[6], [4], [-2]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 19,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[48], [1], [1]]
  c_5_4_0_False_resize <= resize(c_4, 22);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_3_3_False_resize <= resize(c_3, 22);
  c_5_3_3_False_shift <= shift_left(c_5_3_3_False_resize, 3);
  with config_select_3 select c_5_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_4_0_False_shift;
        when others => c_5 <= c_5_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[5], [3], [8]]
  c_6_1_0_False_resize <= c_1;
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  c_6_2_3_False_resize <= resize(c_2, 19);
  c_6_2_3_False_shift <= shift_left(c_6_2_3_False_resize, 3);
  with config_select_2 select c_6_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_1_0_False_shift;
        when others => c_6 <= c_6_2_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[5], [3], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[16], [50], [-126]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 23,
      s_x_i => 1,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_8_sub_sel,
      x_i => c_5,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[69], [61], [61]]
  with config_select_2 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 23,
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
      x_i => c_2,
      y_i => c_1,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[1], [3], [1]]
  c_10_2_0_False_resize <= resize(c_2, 18);
  c_10_2_0_False_shift <= shift_left(c_10_2_0_False_resize, 0);
  c_10_1_0_False_resize <= c_1(17 downto 0);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_2_0_False_shift;
        when others => c_10 <= c_10_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[69], [61], [61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[69], [61], [61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[32], [61], [61]]
  c_13_8_1_False_resize <= c_8(21 downto 0);
  c_13_8_1_False_shift <= shift_left(c_13_8_1_False_resize, 1);
  c_13_12_0_False_resize <= c_12(21 downto 0);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  with config_select_5 select c_13_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_8_1_False_shift;
        when others => c_13 <= c_13_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[1], [3], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[1], [3], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[1], [3], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 17 and associated fundamentals [[65], [125], [123]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 22,
      w_o => 23,
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
      x_i => c_16,
      y_i => c_13,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[6], [4], [-2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[6], [4], [-2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[192], [50], [-126]]
  c_20_19_5_False_resize <= resize(c_19, 24);
  c_20_19_5_False_shift <= shift_left(c_20_19_5_False_resize, 5);
  c_20_8_0_False_resize <= resize(c_8, 24);
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  with config_select_5 select c_20_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_19_5_False_shift;
        when others => c_20 <= c_20_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[6], [4], [-2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_19 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 22 and associated fundamentals [[240], [82], [110]]
  with config_select_6 select c_22_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
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
      sub_i => c_22_sub_sel,
      x_i => c_21,
      y_i => c_20,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[138], [61], [61]]
  c_23_9_0_False_resize <= resize(c_9, 24);
  c_23_9_0_False_shift <= shift_left(c_23_9_0_False_resize, 0);
  c_23_9_1_False_resize <= resize(c_9, 24);
  c_23_9_1_False_shift <= shift_left(c_23_9_1_False_resize, 1);
  with config_select_3 select c_23_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_9_0_False_shift;
        when others => c_23 <= c_23_9_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[138], [61], [61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[138], [61], [61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[138], [61], [61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 7 with id 27 and associated fundamentals [[-342], [-103], [-159]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_26,
      y_i => c_22,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[6], [4], [-2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[6], [164], [220]]
  c_29_22_1_False_resize <= c_22;
  c_29_22_1_False_shift <= shift_left(c_29_22_1_False_resize, 1);
  c_29_28_0_False_resize <= resize(c_28, 24);
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  with config_select_7 select c_29_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_22_1_False_shift;
        when others => c_29 <= c_29_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 30 and associated fundamentals [[-342], [-412], [-159]]
  c_30_27_0_False_resize <= c_27;
  c_30_27_0_False_shift <= shift_left(c_30_27_0_False_resize, 0);
  c_30_27_2_False_resize <= c_27;
  c_30_27_2_False_shift <= shift_left(c_30_27_2_False_resize, 2);
  with config_select_8 select c_30_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_27_0_False_shift;
        when others => c_30 <= c_30_27_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 31 and associated fundamentals [[6], [164], [220]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 32 and associated fundamentals [[366], [244], [721]]
  with config_select_9 select c_32_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
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
      sub_i => c_32_sub_sel,
      x_i => c_31,
      y_i => c_30,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 33 and associated fundamentals [[5], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 34 and associated fundamentals [[5], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 35 and associated fundamentals [[5], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 36 and associated fundamentals [[32], [3], [-252]]
  c_36_8_1_False_resize <= resize(c_8, 24);
  c_36_8_1_False_shift <= shift_left(c_36_8_1_False_resize, 1);
  c_36_35_0_False_resize <= resize(c_35, 24);
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  with config_select_5 select c_36_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_8_1_False_shift;
        when others => c_36 <= c_36_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 37 and associated fundamentals [[16], [50], [-126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 38 and associated fundamentals [[160], [403], [756]]
  with config_select_6 select c_38_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_38_sub_sel,
      x_i => c_36,
      y_i => c_37,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 39 and associated fundamentals [[69], [61], [61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[69], [61], [61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 41 and associated fundamentals [[480], [244], [110]]
  c_41_22_0_False_resize <= resize(c_22, 25);
  c_41_22_0_False_shift <= shift_left(c_41_22_0_False_resize, 0);
  c_41_22_1_False_resize <= resize(c_22, 25);
  c_41_22_1_False_shift <= shift_left(c_41_22_1_False_resize, 1);
  c_41_40_2_False_resize <= resize(c_40, 25);
  c_41_40_2_False_shift <= shift_left(c_41_40_2_False_resize, 2);
  with config_select_7 select c_41_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_22_0_False_shift;
        when "01" => c_41 <= c_41_22_1_False_shift;
        when others => c_41 <= c_41_40_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 42 and associated fundamentals [[-822], [-347], [-269]]
  inst_adder_node_42: entity work.adder_node
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
      sub => True
    )
    port map (
      x_i => c_27,
      y_i => c_41,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 43 and associated fundamentals [[487], [363], [611]]
  with config_select_7 select c_43_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_43: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_43_sub_sel,
      x_i => c_40,
      y_i => c_17,
      z_o => c_43_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_43_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 44 and associated fundamentals [[-342], [-103], [-636]]
  c_44_27_2_False_resize <= resize(c_27, 26);
  c_44_27_2_False_shift <= shift_left(c_44_27_2_False_resize, 2);
  c_44_27_0_False_resize <= resize(c_27, 26);
  c_44_27_0_False_shift <= shift_left(c_44_27_0_False_resize, 0);
  with config_select_8 select c_44_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_27_2_False_shift;
        when others => c_44 <= c_44_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[160], [403], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[160], [403], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[160], [403], [756]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 48 and associated fundamentals [[160], [403], [756]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[-342], [-103], [-636]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_44 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 50 and associated fundamentals [[342], [103], [636]]
  c_50_resize <= c_49;
  c_50 <= -shift_left(c_50_resize, 0);
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[487], [363], [611]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[487], [363], [611]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 53 and associated fundamentals [[487], [363], [611]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[-822], [-347], [-269]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_42 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 55 and associated fundamentals [[822], [347], [269]]
  c_55_resize <= c_54;
  c_55 <= -shift_left(c_55_resize, 0);
  -- node of type 'output' in stage 9 with id 56 and associated fundamentals [[366], [244], [721]]
  c_56_resize <= c_32;
  c_56 <= shift_left(c_56_resize, 0);
end architecture;

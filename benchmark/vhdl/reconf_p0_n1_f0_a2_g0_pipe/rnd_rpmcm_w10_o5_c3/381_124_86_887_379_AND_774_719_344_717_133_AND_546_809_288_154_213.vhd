library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(24 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(24 downto 0);
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
  signal config_select_12: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_1_0_False_resize: signed(20 downto 0);
  signal c_3_1_0_False_shift: signed(20 downto 0);
  signal c_3_2_5_False_resize: signed(20 downto 0);
  signal c_3_2_5_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_7_0_False_resize: signed(22 downto 0);
  signal c_9_7_0_False_shift: signed(22 downto 0);
  signal c_9_8_3_False_resize: signed(22 downto 0);
  signal c_9_8_3_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(15 downto 0);
  signal c_17: signed(15 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_17_8_False_resize: signed(23 downto 0);
  signal c_20_17_8_False_shift: signed(23 downto 0);
  signal c_20_19_1_False_resize: signed(23 downto 0);
  signal c_20_19_1_False_shift: signed(23 downto 0);
  signal c_20_14_0_False_resize: signed(23 downto 0);
  signal c_20_14_0_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(26 downto 0);
  signal c_25_i0_resize: signed(26 downto 0);
  signal c_25_i1_resize: signed(26 downto 0);
  signal c_25_i0_shift: signed(26 downto 0);
  signal c_25_i1_shift: signed(26 downto 0);
  signal c_25_arith: signed(26 downto 0);
  signal c_25_oshift: signed(26 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(24 downto 0);
  signal c_26_22_0_False_resize: signed(24 downto 0);
  signal c_26_22_0_False_shift: signed(24 downto 0);
  signal c_26_15_1_False_resize: signed(24 downto 0);
  signal c_26_15_1_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_27_5_1_False_resize: signed(22 downto 0);
  signal c_27_5_1_False_shift: signed(22 downto 0);
  signal c_27_5_0_False_resize: signed(22 downto 0);
  signal c_27_5_0_False_shift: signed(22 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_i0_resize: signed(25 downto 0);
  signal c_30_i1_resize: signed(25 downto 0);
  signal c_30_i0_shift: signed(25 downto 0);
  signal c_30_i1_shift: signed(25 downto 0);
  signal c_30_arith: signed(25 downto 0);
  signal c_30_oshift: signed(25 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(26 downto 0);
  signal c_33_i1_resize: signed(26 downto 0);
  signal c_33_i0_shift: signed(26 downto 0);
  signal c_33_i1_shift: signed(26 downto 0);
  signal c_33_arith: signed(26 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_36_0_False_resize: signed(25 downto 0);
  signal c_37_36_0_False_shift: signed(25 downto 0);
  signal c_37_33_0_False_resize: signed(25 downto 0);
  signal c_37_33_0_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_16_0_False_resize: signed(25 downto 0);
  signal c_38_16_0_False_shift: signed(25 downto 0);
  signal c_38_16_1_False_resize: signed(25 downto 0);
  signal c_38_16_1_False_shift: signed(25 downto 0);
  signal c_38_15_2_False_resize: signed(25 downto 0);
  signal c_38_15_2_False_shift: signed(25 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_i0_resize: signed(25 downto 0);
  signal c_43_i1_resize: signed(25 downto 0);
  signal c_43_i0_shift: signed(25 downto 0);
  signal c_43_i1_shift: signed(25 downto 0);
  signal c_43_arith: signed(25 downto 0);
  signal c_43_oshift: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_30_0_False_resize: signed(25 downto 0);
  signal c_44_30_0_False_shift: signed(25 downto 0);
  signal c_44_30_1_False_resize: signed(25 downto 0);
  signal c_44_30_1_False_shift: signed(25 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(24 downto 0);
  signal c_45_14_1_False_resize: signed(24 downto 0);
  signal c_45_14_1_False_shift: signed(24 downto 0);
  signal c_45_14_0_False_resize: signed(24 downto 0);
  signal c_45_14_0_False_shift: signed(24 downto 0);
  signal c_45_14_2_False_resize: signed(24 downto 0);
  signal c_45_14_2_False_shift: signed(24 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_55_resize: signed(24 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_resize: signed(25 downto 0);
  signal c_59: signed(24 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_61: signed(24 downto 0);
  signal c_62: signed(24 downto 0);
  signal c_63: signed(24 downto 0);
  signal c_64: signed(24 downto 0);
  signal c_65: signed(24 downto 0);
  signal c_65_resize: signed(24 downto 0);
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
      config_select_12 <= config_select_11;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 1 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 2 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 3 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_58);
    end if;
  end process;
  -- output node 4 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_65);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[10], [10], [10]]
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
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[32], [32], [10]]
  c_3_1_0_False_resize <= resize(c_1, 21);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_5_False_resize <= resize(c_2, 21);
  c_3_2_5_False_shift <= shift_left(c_3_2_5_False_resize, 5);
  with config_select_2 select c_3_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_2_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 5 and associated fundamentals [[-127], [-127], [-39]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[-123], [-123], [43]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 23,
      w_o => 23,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_5,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 9 and associated fundamentals [[-123], [-123], [8]]
  c_9_7_0_False_resize <= c_7;
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  c_9_8_3_False_resize <= resize(c_8, 23);
  c_9_8_3_False_shift <= shift_left(c_9_8_3_False_resize, 3);
  with config_select_5 select c_9_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_7_0_False_shift;
        when others => c_9 <= c_9_8_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 10 and associated fundamentals [[10], [10], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[10], [10], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[10], [10], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[10], [10], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 14 and associated fundamentals [[-86], [-86], [-144]]
  with config_select_6 select c_14_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_14_sub_sel,
      x_i => c_9,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 15 and associated fundamentals [[379], [133], [213]]
  with config_select_5 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 8,
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
      x_i => c_8,
      y_i => c_7,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[-123], [-123], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[-123], [-123], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[-86], [256], [86]]
  c_20_17_8_False_resize <= resize(c_17, 24);
  c_20_17_8_False_shift <= shift_left(c_20_17_8_False_resize, 8);
  c_20_19_1_False_resize <= resize(c_19, 24);
  c_20_19_1_False_shift <= shift_left(c_20_19_1_False_resize, 1);
  c_20_14_0_False_resize <= c_14;
  c_20_14_0_False_shift <= shift_left(c_20_14_0_False_resize, 0);
  with config_select_7 select c_20_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_17_8_False_shift;
        when "01" => c_20 <= c_20_19_1_False_shift;
        when others => c_20 <= c_20_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[-127], [-127], [-39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[-127], [-127], [-39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[-127], [-127], [-39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 24 and associated fundamentals [[-127], [-127], [-39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 25 and associated fundamentals [[-1860], [-1520], [-452]]
  with config_select_8 select c_25_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 27,
      s_x_i => 4,
      s_y_i => 1,
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
      y_i => c_20,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 26 and associated fundamentals [[-127], [266], [-39]]
  c_26_22_0_False_resize <= resize(c_22, 25);
  c_26_22_0_False_shift <= shift_left(c_26_22_0_False_resize, 0);
  c_26_15_1_False_resize <= c_15;
  c_26_15_1_False_shift <= shift_left(c_26_15_1_False_resize, 1);
  with config_select_6 select c_26_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_22_0_False_shift;
        when others => c_26 <= c_26_15_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[-127], [-127], [-78]]
  c_27_5_1_False_resize <= c_5;
  c_27_5_1_False_shift <= shift_left(c_27_5_1_False_resize, 1);
  c_27_5_0_False_resize <= c_5;
  c_27_5_0_False_shift <= shift_left(c_27_5_0_False_resize, 0);
  with config_select_4 select c_27_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_5_1_False_shift;
        when others => c_27 <= c_27_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[-127], [-127], [-78]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[-127], [-127], [-78]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 7 with id 30 and associated fundamentals [[381], [774], [273]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_26,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[-86], [-86], [-144]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[-86], [-86], [-144]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 9 with id 33 and associated fundamentals [[-887], [-717], [-154]]
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_25,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[-123], [-123], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[-123], [-123], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 36 and associated fundamentals [[-123], [-123], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 37 and associated fundamentals [[-123], [-717], [43]]
  c_37_36_0_False_resize <= resize(c_36, 26);
  c_37_36_0_False_shift <= shift_left(c_37_36_0_False_resize, 0);
  c_37_33_0_False_resize <= c_33;
  c_37_33_0_False_shift <= shift_left(c_37_33_0_False_resize, 0);
  with config_select_10 select c_37_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_36_0_False_shift;
        when others => c_37 <= c_37_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 38 and associated fundamentals [[1], [2], [852]]
  c_38_16_0_False_resize <= resize(c_16, 26);
  c_38_16_0_False_shift <= shift_left(c_38_16_0_False_resize, 0);
  c_38_16_1_False_resize <= resize(c_16, 26);
  c_38_16_1_False_shift <= shift_left(c_38_16_1_False_resize, 1);
  c_38_15_2_False_resize <= resize(c_15, 26);
  c_38_15_2_False_shift <= shift_left(c_38_15_2_False_resize, 2);
  with config_select_6 select c_38_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_16_0_False_shift;
        when "01" => c_38 <= c_38_16_1_False_shift;
        when others => c_38 <= c_38_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[1], [2], [852]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[1], [2], [852]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[1], [2], [852]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 42 and associated fundamentals [[1], [2], [852]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 11 with id 43 and associated fundamentals [[-124], [-719], [-809]]
  inst_adder_node_43: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      x_i => c_37,
      y_i => c_42,
      z_o => c_43_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_43_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 44 and associated fundamentals [[381], [774], [546]]
  c_44_30_0_False_resize <= c_30;
  c_44_30_0_False_shift <= shift_left(c_44_30_0_False_resize, 0);
  c_44_30_1_False_resize <= c_30;
  c_44_30_1_False_shift <= shift_left(c_44_30_1_False_resize, 1);
  with config_select_8 select c_44_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_30_0_False_shift;
        when others => c_44 <= c_44_30_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 45 and associated fundamentals [[-86], [-344], [-288]]
  c_45_14_1_False_resize <= resize(c_14, 25);
  c_45_14_1_False_shift <= shift_left(c_45_14_1_False_resize, 1);
  c_45_14_0_False_resize <= resize(c_14, 25);
  c_45_14_0_False_shift <= shift_left(c_45_14_0_False_resize, 0);
  c_45_14_2_False_resize <= resize(c_14, 25);
  c_45_14_2_False_shift <= shift_left(c_45_14_2_False_resize, 2);
  with config_select_7 select c_45_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_14_1_False_shift;
        when "01" => c_45 <= c_45_14_0_False_shift;
        when others => c_45 <= c_45_14_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[381], [774], [546]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[381], [774], [546]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 48 and associated fundamentals [[381], [774], [546]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 49 and associated fundamentals [[381], [774], [546]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 11 with id 50 and associated fundamentals [[124], [719], [809]]
  c_50_resize <= c_43;
  c_50 <= -shift_left(c_50_resize, 0);
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[-86], [-344], [-288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[-86], [-344], [-288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[-86], [-344], [-288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 54 and associated fundamentals [[-86], [-344], [-288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 55 and associated fundamentals [[86], [344], [288]]
  c_55_resize <= c_54;
  c_55 <= -shift_left(c_55_resize, 0);
  -- node of type 'register' in stage 10 with id 56 and associated fundamentals [[-887], [-717], [-154]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 57 and associated fundamentals [[-887], [-717], [-154]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 58 and associated fundamentals [[887], [717], [154]]
  c_58_resize <= c_57;
  c_58 <= -shift_left(c_58_resize, 0);
  -- node of type 'register' in stage 6 with id 59 and associated fundamentals [[379], [133], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 60 and associated fundamentals [[379], [133], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 61 and associated fundamentals [[379], [133], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[379], [133], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[379], [133], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 64 and associated fundamentals [[379], [133], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 65 and associated fundamentals [[379], [133], [213]]
  c_65_resize <= c_64;
  c_65 <= shift_left(c_65_resize, 0);
end architecture;

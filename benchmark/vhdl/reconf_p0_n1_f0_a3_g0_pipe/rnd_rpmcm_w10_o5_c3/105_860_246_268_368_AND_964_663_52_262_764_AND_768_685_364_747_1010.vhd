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
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_1_0_False_resize: signed(17 downto 0);
  signal c_3_1_0_False_shift: signed(17 downto 0);
  signal c_3_2_1_False_resize: signed(17 downto 0);
  signal c_3_2_1_False_shift: signed(17 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_i0_resize: signed(20 downto 0);
  signal c_5_i1_resize: signed(20 downto 0);
  signal c_5_i0_shift: signed(20 downto 0);
  signal c_5_i1_shift: signed(20 downto 0);
  signal c_5_arith: signed(20 downto 0);
  signal c_5_oshift: signed(20 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(17 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_6_3_False_resize: signed(20 downto 0);
  signal c_7_6_3_False_shift: signed(20 downto 0);
  signal c_7_5_0_False_resize: signed(20 downto 0);
  signal c_7_5_0_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_i0_resize: signed(21 downto 0);
  signal c_11_i1_resize: signed(21 downto 0);
  signal c_11_i0_shift: signed(21 downto 0);
  signal c_11_i1_shift: signed(21 downto 0);
  signal c_11_arith: signed(21 downto 0);
  signal c_11_oshift: signed(21 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(17 downto 0);
  signal c_14: signed(17 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_11_0_False_resize: signed(22 downto 0);
  signal c_15_11_0_False_shift: signed(22 downto 0);
  signal c_15_14_5_False_resize: signed(22 downto 0);
  signal c_15_14_5_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_16_0_False_resize: signed(22 downto 0);
  signal c_17_16_0_False_shift: signed(22 downto 0);
  signal c_17_11_1_False_resize: signed(22 downto 0);
  signal c_17_11_1_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(15 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_11_0_False_resize: signed(25 downto 0);
  signal c_20_11_0_False_shift: signed(25 downto 0);
  signal c_20_19_10_False_resize: signed(25 downto 0);
  signal c_20_19_10_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(20 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(24 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(20 downto 0);
  signal c_28_9_2_False_resize: signed(20 downto 0);
  signal c_28_9_2_False_shift: signed(20 downto 0);
  signal c_28_5_0_False_resize: signed(20 downto 0);
  signal c_28_5_0_False_shift: signed(20 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_29_5_2_False_resize: signed(21 downto 0);
  signal c_29_5_2_False_shift: signed(21 downto 0);
  signal c_29_9_0_False_resize: signed(21 downto 0);
  signal c_29_9_0_False_shift: signed(21 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_i0_resize: signed(25 downto 0);
  signal c_30_i1_resize: signed(25 downto 0);
  signal c_30_i0_shift: signed(25 downto 0);
  signal c_30_i1_shift: signed(25 downto 0);
  signal c_30_arith: signed(25 downto 0);
  signal c_30_oshift: signed(25 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(17 downto 0);
  signal c_32: signed(17 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_24_6_False_resize: signed(23 downto 0);
  signal c_33_24_6_False_shift: signed(23 downto 0);
  signal c_33_18_1_False_resize: signed(23 downto 0);
  signal c_33_18_1_False_shift: signed(23 downto 0);
  signal c_33_32_0_False_resize: signed(23 downto 0);
  signal c_33_32_0_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(20 downto 0);
  signal c_39: signed(20 downto 0);
  signal c_39_38_0_False_resize: signed(20 downto 0);
  signal c_39_38_0_False_shift: signed(20 downto 0);
  signal c_39_24_2_False_resize: signed(20 downto 0);
  signal c_39_24_2_False_shift: signed(20 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(17 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_i0_resize: signed(25 downto 0);
  signal c_41_i1_resize: signed(25 downto 0);
  signal c_41_i0_shift: signed(25 downto 0);
  signal c_41_i1_shift: signed(25 downto 0);
  signal c_41_arith: signed(25 downto 0);
  signal c_41_oshift: signed(25 downto 0);
  signal c_41_sub_sel: std_logic;
  signal c_42: signed(25 downto 0);
  signal c_42_27_0_False_resize: signed(25 downto 0);
  signal c_42_27_0_False_shift: signed(25 downto 0);
  signal c_42_40_8_False_resize: signed(25 downto 0);
  signal c_42_40_8_False_shift: signed(25 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(21 downto 0);
  signal c_44: signed(21 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_18_0_False_resize: signed(23 downto 0);
  signal c_45_18_0_False_shift: signed(23 downto 0);
  signal c_45_44_1_False_resize: signed(23 downto 0);
  signal c_45_44_1_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_46_27_0_False_resize: signed(24 downto 0);
  signal c_46_27_0_False_shift: signed(24 downto 0);
  signal c_46_36_1_False_resize: signed(24 downto 0);
  signal c_46_36_1_False_shift: signed(24 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_50_resize: signed(24 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_resize: signed(25 downto 0);
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
  -- output node 0 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 1 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 2 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 3 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 4 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_52);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[1], [1], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[1], [2], [3]]
  c_3_1_0_False_resize <= c_1;
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_1_False_resize <= resize(c_2, 18);
  c_3_2_1_False_shift <= shift_left(c_3_2_1_False_resize, 1);
  with config_select_2 select c_3_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_2_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[9], [6], [21]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 21,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 7 and associated fundamentals [[8], [6], [21]]
  c_7_6_3_False_resize <= resize(c_6, 21);
  c_7_6_3_False_shift <= shift_left(c_7_6_3_False_resize, 3);
  c_7_5_0_False_resize <= c_5;
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_4 select c_7_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_6_3_False_shift;
        when others => c_7 <= c_7_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 11 and associated fundamentals [[15], [13], [43]]
  with config_select_5 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 22,
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
      x_i => c_7,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[-108], [-72], [420]]
  with config_select_4 select c_12_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_12_sub_sel,
      x_i => c_5,
      y_i => c_5,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[1], [1], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[1], [1], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 15 and associated fundamentals [[15], [13], [96]]
  c_15_11_0_False_resize <= resize(c_11, 23);
  c_15_11_0_False_shift <= shift_left(c_15_11_0_False_resize, 0);
  c_15_14_5_False_resize <= resize(c_14, 23);
  c_15_14_5_False_shift <= shift_left(c_15_14_5_False_resize, 5);
  with config_select_6 select c_15_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_11_0_False_shift;
        when others => c_15 <= c_15_14_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[-108], [-72], [420]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 17 and associated fundamentals [[-108], [-72], [86]]
  c_17_16_0_False_resize <= c_16(22 downto 0);
  c_17_16_0_False_shift <= shift_left(c_17_16_0_False_resize, 0);
  c_17_11_1_False_resize <= resize(c_11, 23);
  c_17_11_1_False_shift <= shift_left(c_17_11_1_False_resize, 1);
  with config_select_6 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_16_0_False_shift;
        when others => c_17 <= c_17_11_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 18 and associated fundamentals [[123], [-59], [182]]
  with config_select_7 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 24,
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
      sub_i => c_18_sub_sel,
      x_i => c_15,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 20 and associated fundamentals [[15], [1024], [43]]
  c_20_11_0_False_resize <= resize(c_11, 26);
  c_20_11_0_False_shift <= shift_left(c_20_11_0_False_resize, 0);
  c_20_19_10_False_resize <= resize(c_19, 26);
  c_20_19_10_False_shift <= shift_left(c_20_19_10_False_resize, 10);
  with config_select_6 select c_20_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_11_0_False_shift;
        when others => c_20 <= c_20_19_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[9], [6], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[9], [6], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[9], [6], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 24 and associated fundamentals [[-3], [1036], [85]]
  with config_select_7 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 21,
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
      sub_i => c_24_sub_sel,
      x_i => c_20,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[-108], [-72], [420]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[-108], [-72], [420]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 27 and associated fundamentals [[105], [964], [505]]
  with config_select_8 select c_27_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_27_sub_sel,
      x_i => c_24,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[4], [6], [21]]
  c_28_9_2_False_resize <= resize(c_9, 21);
  c_28_9_2_False_shift <= shift_left(c_28_9_2_False_resize, 2);
  c_28_5_0_False_resize <= c_5;
  c_28_5_0_False_shift <= shift_left(c_28_5_0_False_resize, 0);
  with config_select_4 select c_28_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_9_2_False_shift;
        when others => c_28 <= c_28_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[36], [1], [1]]
  c_29_5_2_False_resize <= resize(c_5, 22);
  c_29_5_2_False_shift <= shift_left(c_29_5_2_False_resize, 2);
  c_29_9_0_False_resize <= resize(c_9, 22);
  c_29_9_0_False_shift <= shift_left(c_29_9_0_False_resize, 0);
  with config_select_4 select c_29_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_5_2_False_shift;
        when others => c_29 <= c_29_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 30 and associated fundamentals [[92], [191], [673]]
  with config_select_5 select c_30_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 26,
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
      sub_i => c_30_sub_sel,
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[1], [1], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[1], [1], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 33 and associated fundamentals [[-192], [-118], [3]]
  c_33_24_6_False_resize <= c_24(23 downto 0);
  c_33_24_6_False_shift <= shift_left(c_33_24_6_False_resize, 6);
  c_33_18_1_False_resize <= c_18;
  c_33_18_1_False_shift <= shift_left(c_33_18_1_False_resize, 1);
  c_33_32_0_False_resize <= resize(c_32, 24);
  c_33_32_0_False_shift <= shift_left(c_33_32_0_False_resize, 0);
  with config_select_8 select c_33_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_24_6_False_shift;
        when "01" => c_33 <= c_33_18_1_False_shift;
        when others => c_33 <= c_33_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[92], [191], [673]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[92], [191], [673]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[92], [191], [673]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 37 and associated fundamentals [[860], [663], [685]]
  with config_select_9 select c_37_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_37: entity work.adder_node
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
      sub_i => c_37_sub_sel,
      x_i => c_36,
      y_i => c_33,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[9], [6], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 39 and associated fundamentals [[-12], [6], [21]]
  c_39_38_0_False_resize <= c_38;
  c_39_38_0_False_shift <= shift_left(c_39_38_0_False_resize, 0);
  c_39_24_2_False_resize <= c_24(20 downto 0);
  c_39_24_2_False_shift <= shift_left(c_39_24_2_False_resize, 2);
  with config_select_8 select c_39_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_38_0_False_shift;
        when others => c_39 <= c_39_24_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[1], [1], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 41 and associated fundamentals [[268], [262], [747]]
  with config_select_9 select c_41_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 21,
      w_o => 26,
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
      sub_i => c_41_sub_sel,
      x_i => c_40,
      y_i => c_39,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 42 and associated fundamentals [[105], [964], [768]]
  c_42_27_0_False_resize <= c_27;
  c_42_27_0_False_shift <= shift_left(c_42_27_0_False_resize, 0);
  c_42_40_8_False_resize <= resize(c_40, 26);
  c_42_40_8_False_shift <= shift_left(c_42_40_8_False_resize, 8);
  with config_select_9 select c_42_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_27_0_False_shift;
        when others => c_42 <= c_42_40_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[15], [13], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[15], [13], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 45 and associated fundamentals [[123], [26], [182]]
  c_45_18_0_False_resize <= c_18;
  c_45_18_0_False_shift <= shift_left(c_45_18_0_False_resize, 0);
  c_45_44_1_False_resize <= resize(c_44, 24);
  c_45_44_1_False_shift <= shift_left(c_45_44_1_False_resize, 1);
  with config_select_8 select c_45_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_18_0_False_shift;
        when others => c_45 <= c_45_44_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 46 and associated fundamentals [[184], [382], [505]]
  c_46_27_0_False_resize <= c_27(24 downto 0);
  c_46_27_0_False_shift <= shift_left(c_46_27_0_False_resize, 0);
  c_46_36_1_False_resize <= c_36(24 downto 0);
  c_46_36_1_False_shift <= shift_left(c_46_36_1_False_resize, 1);
  with config_select_9 select c_46_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_27_0_False_shift;
        when others => c_46 <= c_46_36_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 47 and associated fundamentals [[105], [964], [768]]
  c_47_resize <= c_42;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 9 with id 48 and associated fundamentals [[860], [663], [685]]
  c_48_resize <= c_37;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[123], [26], [182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_45 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 50 and associated fundamentals [[246], [52], [364]]
  c_50_resize <= resize(c_49, 25);
  c_50 <= shift_left(c_50_resize, 1);
  -- node of type 'output' in stage 9 with id 51 and associated fundamentals [[268], [262], [747]]
  c_51_resize <= c_41;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'output' in stage 9 with id 52 and associated fundamentals [[368], [764], [1010]]
  c_52_resize <= resize(c_46, 26);
  c_52 <= shift_left(c_52_resize, 1);
end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(29 downto 0);
    y_1: out std_logic_vector(29 downto 0);
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
  signal config_select_13: std_logic_vector(1 downto 0);
  signal c_0: signed(18 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_i0_resize: signed(21 downto 0);
  signal c_2_i1_resize: signed(21 downto 0);
  signal c_2_i0_shift: signed(21 downto 0);
  signal c_2_i1_shift: signed(21 downto 0);
  signal c_2_arith: signed(21 downto 0);
  signal c_2_oshift: signed(21 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(24 downto 0);
  signal c_3_0_0_False_resize: signed(24 downto 0);
  signal c_3_0_0_False_shift: signed(24 downto 0);
  signal c_3_0_6_False_resize: signed(24 downto 0);
  signal c_3_0_6_False_shift: signed(24 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_5: signed(26 downto 0);
  signal c_5_2_0_False_resize: signed(26 downto 0);
  signal c_5_2_0_False_shift: signed(26 downto 0);
  signal c_5_4_8_False_resize: signed(26 downto 0);
  signal c_5_4_8_False_shift: signed(26 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_7: signed(28 downto 0);
  signal c_7_i0_resize: signed(28 downto 0);
  signal c_7_i1_resize: signed(28 downto 0);
  signal c_7_i0_shift: signed(28 downto 0);
  signal c_7_i1_shift: signed(28 downto 0);
  signal c_7_arith: signed(28 downto 0);
  signal c_7_oshift: signed(28 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_10: signed(27 downto 0);
  signal c_10_7_3_False_resize: signed(27 downto 0);
  signal c_10_7_3_False_shift: signed(27 downto 0);
  signal c_10_9_1_False_resize: signed(27 downto 0);
  signal c_10_9_1_False_shift: signed(27 downto 0);
  signal c_10_7_0_False_resize: signed(27 downto 0);
  signal c_10_7_0_False_shift: signed(27 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(28 downto 0);
  signal c_12: signed(31 downto 0);
  signal c_12_i0_resize: signed(31 downto 0);
  signal c_12_i1_resize: signed(31 downto 0);
  signal c_12_i0_shift: signed(31 downto 0);
  signal c_12_i1_shift: signed(31 downto 0);
  signal c_12_arith: signed(31 downto 0);
  signal c_12_oshift: signed(31 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(18 downto 0);
  signal c_14: signed(28 downto 0);
  signal c_14_2_8_False_resize: signed(28 downto 0);
  signal c_14_2_8_False_shift: signed(28 downto 0);
  signal c_14_13_0_False_resize: signed(28 downto 0);
  signal c_14_13_0_False_shift: signed(28 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(18 downto 0);
  signal c_16: signed(29 downto 0);
  signal c_16_i0_resize: signed(29 downto 0);
  signal c_16_i1_resize: signed(29 downto 0);
  signal c_16_i0_shift: signed(29 downto 0);
  signal c_16_i1_shift: signed(29 downto 0);
  signal c_16_arith: signed(29 downto 0);
  signal c_16_oshift: signed(29 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(21 downto 0);
  signal c_17_1_3_False_resize: signed(21 downto 0);
  signal c_17_1_3_False_shift: signed(21 downto 0);
  signal c_17_1_0_False_resize: signed(21 downto 0);
  signal c_17_1_0_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_19: signed(28 downto 0);
  signal c_19_16_1_False_resize: signed(28 downto 0);
  signal c_19_16_1_False_shift: signed(28 downto 0);
  signal c_19_18_0_False_resize: signed(28 downto 0);
  signal c_19_18_0_False_shift: signed(28 downto 0);
  signal c_19_18_10_False_resize: signed(28 downto 0);
  signal c_19_18_10_False_shift: signed(28 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_23: signed(28 downto 0);
  signal c_23_i0_resize: signed(28 downto 0);
  signal c_23_i1_resize: signed(28 downto 0);
  signal c_23_i0_shift: signed(28 downto 0);
  signal c_23_i1_shift: signed(28 downto 0);
  signal c_23_arith: signed(28 downto 0);
  signal c_23_oshift: signed(28 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(29 downto 0);
  signal c_24_23_0_False_resize: signed(29 downto 0);
  signal c_24_23_0_False_shift: signed(29 downto 0);
  signal c_24_23_5_False_resize: signed(29 downto 0);
  signal c_24_23_5_False_shift: signed(29 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(31 downto 0);
  signal c_25_23_0_False_resize: signed(31 downto 0);
  signal c_25_23_0_False_shift: signed(31 downto 0);
  signal c_25_12_3_False_resize: signed(31 downto 0);
  signal c_25_12_3_False_shift: signed(31 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(32 downto 0);
  signal c_26_i0_resize: signed(32 downto 0);
  signal c_26_i1_resize: signed(32 downto 0);
  signal c_26_i0_shift: signed(32 downto 0);
  signal c_26_i1_shift: signed(32 downto 0);
  signal c_26_arith: signed(32 downto 0);
  signal c_26_oshift: signed(32 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(18 downto 0);
  signal c_28: signed(18 downto 0);
  signal c_29: signed(31 downto 0);
  signal c_29_28_13_False_resize: signed(31 downto 0);
  signal c_29_28_13_False_shift: signed(31 downto 0);
  signal c_29_12_0_False_resize: signed(31 downto 0);
  signal c_29_12_0_False_shift: signed(31 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(18 downto 0);
  signal c_31: signed(18 downto 0);
  signal c_32: signed(18 downto 0);
  signal c_33: signed(18 downto 0);
  signal c_34: signed(18 downto 0);
  signal c_35: signed(18 downto 0);
  signal c_36: signed(28 downto 0);
  signal c_37: signed(28 downto 0);
  signal c_38: signed(31 downto 0);
  signal c_38_37_0_False_resize: signed(31 downto 0);
  signal c_38_37_0_False_shift: signed(31 downto 0);
  signal c_38_35_13_False_resize: signed(31 downto 0);
  signal c_38_35_13_False_shift: signed(31 downto 0);
  signal c_38_26_0_False_resize: signed(31 downto 0);
  signal c_38_26_0_False_shift: signed(31 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(31 downto 0);
  signal c_40: signed(31 downto 0);
  signal c_41: signed(32 downto 0);
  signal c_41_i0_resize: signed(32 downto 0);
  signal c_41_i1_resize: signed(32 downto 0);
  signal c_41_i0_shift: signed(32 downto 0);
  signal c_41_i1_shift: signed(32 downto 0);
  signal c_41_arith: signed(32 downto 0);
  signal c_41_oshift: signed(32 downto 0);
  signal c_41_sub_sel: std_logic;
  signal c_42: signed(18 downto 0);
  signal c_43: signed(18 downto 0);
  signal c_44: signed(18 downto 0);
  signal c_45: signed(18 downto 0);
  signal c_46: signed(31 downto 0);
  signal c_47: signed(31 downto 0);
  signal c_48: signed(31 downto 0);
  signal c_49: signed(31 downto 0);
  signal c_50: signed(31 downto 0);
  signal c_50_49_0_False_resize: signed(31 downto 0);
  signal c_50_49_0_False_shift: signed(31 downto 0);
  signal c_50_45_13_False_resize: signed(31 downto 0);
  signal c_50_45_13_False_shift: signed(31 downto 0);
  signal c_50_41_0_False_resize: signed(31 downto 0);
  signal c_50_41_0_False_shift: signed(31 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(29 downto 0);
  signal c_52: signed(29 downto 0);
  signal c_53: signed(29 downto 0);
  signal c_54: signed(29 downto 0);
  signal c_55: signed(31 downto 0);
  signal c_55_26_0_False_resize: signed(31 downto 0);
  signal c_55_26_0_False_shift: signed(31 downto 0);
  signal c_55_54_1_False_resize: signed(31 downto 0);
  signal c_55_54_1_False_shift: signed(31 downto 0);
  signal c_55_sel: std_logic_vector(0 downto 0);
  signal c_56: signed(31 downto 0);
  signal c_57: signed(31 downto 0);
  signal c_58: signed(32 downto 0);
  signal c_58_i0_resize: signed(32 downto 0);
  signal c_58_i1_resize: signed(32 downto 0);
  signal c_58_i0_shift: signed(32 downto 0);
  signal c_58_i1_shift: signed(32 downto 0);
  signal c_58_arith: signed(32 downto 0);
  signal c_58_oshift: signed(32 downto 0);
  signal c_58_sub_sel: std_logic;
  signal c_59: signed(32 downto 0);
  signal c_60: signed(32 downto 0);
  signal c_61: signed(32 downto 0);
  signal c_61_60_0_False_resize: signed(32 downto 0);
  signal c_61_60_0_False_shift: signed(32 downto 0);
  signal c_61_41_0_False_resize: signed(32 downto 0);
  signal c_61_41_0_False_shift: signed(32 downto 0);
  signal c_61_sel: std_logic_vector(0 downto 0);
  signal c_62: signed(32 downto 0);
  signal c_63: signed(32 downto 0);
  signal c_63_resize: signed(32 downto 0);
  signal c_64: signed(32 downto 0);
  signal c_64_resize: signed(32 downto 0);
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
      config_select_13 <= config_select_12;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0 & "000");
    end if;
  end process;
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1 & "000");
    end if;
  end process;
  -- output node 0 with id 63
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_63(32 downto 3));
    end if;
  end process;
  -- output node 1 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_64(32 downto 3));
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[24, 0], [24, 0], [40, 0]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 22,
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
      c_2 <= c_2_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[8, 0], [8, 0], [512, 0]]
  c_3_0_0_False_resize <= resize(c_0, 25);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_6_False_resize <= resize(c_0, 25);
  c_3_0_6_False_shift <= shift_left(c_3_0_6_False_resize, 6);
  with config_select_1 select c_3_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_0_0_False_shift;
        when others => c_3 <= c_3_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 4 and associated fundamentals [[8, 0], [8, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[24, 0], [2048, 0], [40, 0]]
  c_5_2_0_False_resize <= resize(c_2, 27);
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  c_5_4_8_False_resize <= resize(c_4, 27);
  c_5_4_8_False_shift <= shift_left(c_5_4_8_False_resize, 8);
  with config_select_2 select c_5_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_2_0_False_shift;
        when others => c_5 <= c_5_4_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[8, 0], [8, 0], [512, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_3 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 7 and associated fundamentals [[-88, 0], [-8184, 0], [352, 0]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
      w_o => 29,
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
      x_i => c_6,
      y_i => c_5,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[24, 0], [24, 0], [40, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[24, 0], [24, 0], [40, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[-88, 0], [48, 0], [2816, 0]]
  c_10_7_3_False_resize <= c_7(27 downto 0);
  c_10_7_3_False_shift <= shift_left(c_10_7_3_False_resize, 3);
  c_10_9_1_False_resize <= resize(c_9, 28);
  c_10_9_1_False_shift <= shift_left(c_10_9_1_False_resize, 1);
  c_10_7_0_False_resize <= c_7(27 downto 0);
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  with config_select_4 select c_10_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_7_3_False_shift;
        when "01" => c_10 <= c_10_9_1_False_shift;
        when others => c_10 <= c_10_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[-88, 0], [-8184, 0], [352, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[-1320, 0], [-7416, 0], [45408, 0]]
  with config_select_5 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 29,
      w_o => 32,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 13 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[6144, 0], [6144, 0], [0, 8]]
  c_14_2_8_False_resize <= resize(c_2, 29);
  c_14_2_8_False_shift <= shift_left(c_14_2_8_False_resize, 8);
  c_14_13_0_False_resize <= resize(c_13, 29);
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_2_8_False_shift;
        when others => c_14 <= c_14_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 15 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 16 and associated fundamentals [[12288, 32], [-12288, 32], [0, 48]]
  with config_select_3 select c_16_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 29,
      w_o => 30,
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
      sub_i => c_16_sub_sel,
      x_i => c_15,
      y_i => c_14,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 17 and associated fundamentals [[0, 8], [0, 64], [0, 8]]
  c_17_1_3_False_resize <= resize(c_1, 22);
  c_17_1_3_False_shift <= shift_left(c_17_1_3_False_resize, 3);
  c_17_1_0_False_resize <= resize(c_1, 22);
  c_17_1_0_False_shift <= shift_left(c_17_1_0_False_resize, 0);
  with config_select_1 select c_17_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_1_3_False_shift;
        when others => c_17 <= c_17_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 19 and associated fundamentals [[0, 8], [0, 8192], [0, 96]]
  c_19_16_1_False_resize <= c_16(28 downto 0);
  c_19_16_1_False_shift <= shift_left(c_19_16_1_False_resize, 1);
  c_19_18_0_False_resize <= resize(c_18, 29);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  c_19_18_10_False_resize <= resize(c_18, 29);
  c_19_18_10_False_shift <= shift_left(c_19_18_10_False_resize, 10);
  with config_select_4 select c_19_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_16_1_False_shift;
        when "01" => c_19 <= c_19_18_0_False_shift;
        when others => c_19 <= c_19_18_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 20 and associated fundamentals [[0, 8], [0, 64], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 21 and associated fundamentals [[0, 8], [0, 64], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[0, 8], [0, 64], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 23 and associated fundamentals [[0, 264], [0, -6144], [0, 352]]
  with config_select_5 select c_23_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 29,
      w_o => 29,
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_19,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 24 and associated fundamentals [[0, 264], [0, -6144], [0, 11264]]
  c_24_23_0_False_resize <= resize(c_23, 30);
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  c_24_23_5_False_resize <= resize(c_23, 30);
  c_24_23_5_False_shift <= shift_left(c_24_23_5_False_resize, 5);
  with config_select_6 select c_24_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_23_0_False_shift;
        when others => c_24 <= c_24_23_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 25 and associated fundamentals [[0, 264], [-59328, 0], [0, 352]]
  c_25_23_0_False_resize <= resize(c_23, 32);
  c_25_23_0_False_shift <= shift_left(c_25_23_0_False_resize, 0);
  c_25_12_3_False_resize <= c_12;
  c_25_12_3_False_shift <= shift_left(c_25_12_3_False_resize, 3);
  with config_select_6 select c_25_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_23_0_False_shift;
        when others => c_25 <= c_25_12_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 26 and associated fundamentals [[0, 1320], [59328, -24576], [0, 45408]]
  with config_select_7 select c_26_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 32,
      w_o => 33,
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 27 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 29 and associated fundamentals [[-1320, 0], [0, 65536], [45408, 0]]
  c_29_28_13_False_resize <= resize(c_28, 32);
  c_29_28_13_False_shift <= shift_left(c_29_28_13_False_resize, 13);
  c_29_12_0_False_resize <= c_12;
  c_29_12_0_False_shift <= shift_left(c_29_12_0_False_resize, 0);
  with config_select_6 select c_29_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_28_13_False_shift;
        when others => c_29 <= c_29_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 30 and associated fundamentals [[8, 0], [8, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 31 and associated fundamentals [[8, 0], [8, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 32 and associated fundamentals [[8, 0], [8, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 33 and associated fundamentals [[8, 0], [8, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[8, 0], [8, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[8, 0], [8, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[0, 264], [0, -6144], [0, 352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[0, 264], [0, -6144], [0, 352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 38 and associated fundamentals [[65536, 0], [0, -6144], [0, 45408]]
  c_38_37_0_False_resize <= resize(c_37, 32);
  c_38_37_0_False_shift <= shift_left(c_38_37_0_False_resize, 0);
  c_38_35_13_False_resize <= resize(c_35, 32);
  c_38_35_13_False_shift <= shift_left(c_38_35_13_False_resize, 13);
  c_38_26_0_False_resize <= c_26(31 downto 0);
  c_38_26_0_False_shift <= shift_left(c_38_26_0_False_resize, 0);
  with config_select_8 select c_38_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_37_0_False_shift;
        when "01" => c_38 <= c_38_35_13_False_shift;
        when others => c_38 <= c_38_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[-1320, 0], [0, 65536], [45408, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[-1320, 0], [0, 65536], [45408, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 41 and associated fundamentals [[64216, 0], [0, 59392], [45408, -45408]]
  with config_select_9 select c_41_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 32,
      w_o => 33,
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
      sub_i => c_41_sub_sel,
      x_i => c_40,
      y_i => c_38,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 42 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 46 and associated fundamentals [[-1320, 0], [-7416, 0], [45408, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[-1320, 0], [-7416, 0], [45408, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[-1320, 0], [-7416, 0], [45408, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[-1320, 0], [-7416, 0], [45408, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 50 and associated fundamentals [[0, 65536], [0, 59392], [45408, 0]]
  c_50_49_0_False_resize <= c_49;
  c_50_49_0_False_shift <= shift_left(c_50_49_0_False_resize, 0);
  c_50_45_13_False_resize <= resize(c_45, 32);
  c_50_45_13_False_shift <= shift_left(c_50_45_13_False_resize, 13);
  c_50_41_0_False_resize <= c_41(31 downto 0);
  c_50_41_0_False_shift <= shift_left(c_50_41_0_False_resize, 0);
  with config_select_10 select c_50_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_49_0_False_shift;
        when "01" => c_50 <= c_50_45_13_False_shift;
        when others => c_50 <= c_50_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 51 and associated fundamentals [[12288, 32], [-12288, 32], [0, 48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 52 and associated fundamentals [[12288, 32], [-12288, 32], [0, 48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 53 and associated fundamentals [[12288, 32], [-12288, 32], [0, 48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 54 and associated fundamentals [[12288, 32], [-12288, 32], [0, 48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 55 and associated fundamentals [[0, 1320], [-24576, 64], [0, 45408]]
  c_55_26_0_False_resize <= c_26(31 downto 0);
  c_55_26_0_False_shift <= shift_left(c_55_26_0_False_resize, 0);
  c_55_54_1_False_resize <= resize(c_54, 32);
  c_55_54_1_False_shift <= shift_left(c_55_54_1_False_resize, 1);
  with config_select_8 select c_55_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "0" => c_55 <= c_55_26_0_False_shift;
        when others => c_55 <= c_55_54_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[0, 1320], [-24576, 64], [0, 45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[0, 1320], [-24576, 64], [0, 45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 58 and associated fundamentals [[0, 64216], [24576, 59328], [45408, 45408]]
  with config_select_11 select c_58_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_58: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 32,
      w_o => 33,
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
      sub_i => c_58_sub_sel,
      x_i => c_50,
      y_i => c_57,
      z_o => c_58_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_58_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 59 and associated fundamentals [[0, 1320], [59328, -24576], [0, 45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 60 and associated fundamentals [[0, 1320], [59328, -24576], [0, 45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 61 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  c_61_60_0_False_resize <= c_60;
  c_61_60_0_False_shift <= shift_left(c_61_60_0_False_resize, 0);
  c_61_41_0_False_resize <= c_41;
  c_61_41_0_False_shift <= shift_left(c_61_41_0_False_resize, 0);
  with config_select_10 select c_61_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "0" => c_61 <= c_61_60_0_False_shift;
        when others => c_61 <= c_61_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 62 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 63 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  c_63_resize <= c_62;
  c_63 <= shift_left(c_63_resize, 0);
  -- node of type 'output' in stage 11 with id 64 and associated fundamentals [[0, 64216], [24576, 59328], [45408, 45408]]
  c_64_resize <= c_58;
  c_64 <= shift_left(c_64_resize, 0);
end architecture;

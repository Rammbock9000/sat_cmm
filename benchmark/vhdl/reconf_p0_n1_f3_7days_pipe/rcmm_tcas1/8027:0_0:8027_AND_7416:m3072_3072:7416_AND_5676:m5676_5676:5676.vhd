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
  signal c_2: signed(20 downto 0);
  signal c_2_1_0_False_resize: signed(20 downto 0);
  signal c_2_1_0_False_shift: signed(20 downto 0);
  signal c_2_1_2_False_resize: signed(20 downto 0);
  signal c_2_1_2_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_4: signed(26 downto 0);
  signal c_4_i0_resize: signed(26 downto 0);
  signal c_4_i1_resize: signed(26 downto 0);
  signal c_4_i0_shift: signed(26 downto 0);
  signal c_4_i1_shift: signed(26 downto 0);
  signal c_4_arith: signed(26 downto 0);
  signal c_4_oshift: signed(26 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(18 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_9: signed(28 downto 0);
  signal c_9_4_0_False_resize: signed(28 downto 0);
  signal c_9_4_0_False_shift: signed(28 downto 0);
  signal c_9_7_2_False_resize: signed(28 downto 0);
  signal c_9_7_2_False_shift: signed(28 downto 0);
  signal c_9_8_8_False_resize: signed(28 downto 0);
  signal c_9_8_8_False_shift: signed(28 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(26 downto 0);
  signal c_10_3_8_False_resize: signed(26 downto 0);
  signal c_10_3_8_False_shift: signed(26 downto 0);
  signal c_10_5_0_False_resize: signed(26 downto 0);
  signal c_10_5_0_False_shift: signed(26 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(26 downto 0);
  signal c_12: signed(30 downto 0);
  signal c_12_i0_resize: signed(30 downto 0);
  signal c_12_i1_resize: signed(30 downto 0);
  signal c_12_i0_shift: signed(30 downto 0);
  signal c_12_i1_shift: signed(30 downto 0);
  signal c_12_arith: signed(30 downto 0);
  signal c_12_oshift: signed(30 downto 0);
  signal c_13: signed(18 downto 0);
  signal c_14: signed(18 downto 0);
  signal c_15: signed(18 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_15_3_False_resize: signed(24 downto 0);
  signal c_16_15_3_False_shift: signed(24 downto 0);
  signal c_16_12_0_False_resize: signed(24 downto 0);
  signal c_16_12_0_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(30 downto 0);
  signal c_18: signed(31 downto 0);
  signal c_18_i0_resize: signed(31 downto 0);
  signal c_18_i1_resize: signed(31 downto 0);
  signal c_18_i0_shift: signed(31 downto 0);
  signal c_18_i1_shift: signed(31 downto 0);
  signal c_18_arith: signed(31 downto 0);
  signal c_18_oshift: signed(31 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(21 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_23: signed(31 downto 0);
  signal c_23_22_0_False_resize: signed(31 downto 0);
  signal c_23_22_0_False_shift: signed(31 downto 0);
  signal c_23_18_0_False_resize: signed(31 downto 0);
  signal c_23_18_0_False_shift: signed(31 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(28 downto 0);
  signal c_24_7_0_False_resize: signed(28 downto 0);
  signal c_24_7_0_False_shift: signed(28 downto 0);
  signal c_24_8_2_False_resize: signed(28 downto 0);
  signal c_24_8_2_False_shift: signed(28 downto 0);
  signal c_24_4_2_False_resize: signed(28 downto 0);
  signal c_24_4_2_False_shift: signed(28 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(28 downto 0);
  signal c_26: signed(28 downto 0);
  signal c_27: signed(28 downto 0);
  signal c_28: signed(28 downto 0);
  signal c_29: signed(32 downto 0);
  signal c_29_i0_resize: signed(32 downto 0);
  signal c_29_i1_resize: signed(32 downto 0);
  signal c_29_i0_shift: signed(32 downto 0);
  signal c_29_i1_shift: signed(32 downto 0);
  signal c_29_arith: signed(32 downto 0);
  signal c_29_oshift: signed(32 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(27 downto 0);
  signal c_30_13_8_False_resize: signed(27 downto 0);
  signal c_30_13_8_False_shift: signed(27 downto 0);
  signal c_30_4_0_False_resize: signed(27 downto 0);
  signal c_30_4_0_False_shift: signed(27 downto 0);
  signal c_30_4_1_False_resize: signed(27 downto 0);
  signal c_30_4_1_False_shift: signed(27 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(26 downto 0);
  signal c_32: signed(28 downto 0);
  signal c_32_i0_resize: signed(28 downto 0);
  signal c_32_i1_resize: signed(28 downto 0);
  signal c_32_i0_shift: signed(28 downto 0);
  signal c_32_i1_shift: signed(28 downto 0);
  signal c_32_arith: signed(28 downto 0);
  signal c_32_oshift: signed(28 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(18 downto 0);
  signal c_34: signed(18 downto 0);
  signal c_35: signed(30 downto 0);
  signal c_35_32_0_False_resize: signed(30 downto 0);
  signal c_35_32_0_False_shift: signed(30 downto 0);
  signal c_35_34_12_False_resize: signed(30 downto 0);
  signal c_35_34_12_False_shift: signed(30 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(30 downto 0);
  signal c_37: signed(30 downto 0);
  signal c_38: signed(30 downto 0);
  signal c_39: signed(32 downto 0);
  signal c_39_i0_resize: signed(32 downto 0);
  signal c_39_i1_resize: signed(32 downto 0);
  signal c_39_i0_shift: signed(32 downto 0);
  signal c_39_i1_shift: signed(32 downto 0);
  signal c_39_arith: signed(32 downto 0);
  signal c_39_oshift: signed(32 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(30 downto 0);
  signal c_41: signed(31 downto 0);
  signal c_41_40_1_False_resize: signed(31 downto 0);
  signal c_41_40_1_False_shift: signed(31 downto 0);
  signal c_41_18_0_False_resize: signed(31 downto 0);
  signal c_41_18_0_False_shift: signed(31 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(28 downto 0);
  signal c_43: signed(28 downto 0);
  signal c_44: signed(28 downto 0);
  signal c_45: signed(28 downto 0);
  signal c_46: signed(28 downto 0);
  signal c_47: signed(32 downto 0);
  signal c_47_46_0_False_resize: signed(32 downto 0);
  signal c_47_46_0_False_shift: signed(32 downto 0);
  signal c_47_39_0_False_resize: signed(32 downto 0);
  signal c_47_39_0_False_shift: signed(32 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(31 downto 0);
  signal c_49: signed(31 downto 0);
  signal c_50: signed(31 downto 0);
  signal c_51: signed(32 downto 0);
  signal c_51_i0_resize: signed(32 downto 0);
  signal c_51_i1_resize: signed(32 downto 0);
  signal c_51_i0_shift: signed(32 downto 0);
  signal c_51_i1_shift: signed(32 downto 0);
  signal c_51_arith: signed(32 downto 0);
  signal c_51_oshift: signed(32 downto 0);
  signal c_51_sub_sel: std_logic;
  signal c_52: signed(32 downto 0);
  signal c_53: signed(32 downto 0);
  signal c_54: signed(32 downto 0);
  signal c_54_resize: signed(32 downto 0);
  signal c_55: signed(32 downto 0);
  signal c_55_resize: signed(32 downto 0);
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
  -- output node 0 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_54(32 downto 3));
    end if;
  end process;
  -- output node 1 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_55(32 downto 3));
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0, 8], [0, 32], [0, 32]]
  c_2_1_0_False_resize <= resize(c_1, 21);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  c_2_1_2_False_resize <= resize(c_1, 21);
  c_2_1_2_False_shift <= shift_left(c_2_1_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_1_0_False_shift;
        when others => c_2 <= c_2_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[0, 264], [0, 1032], [0, 1032]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 27,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
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
  -- node of type 'add_sub' in stage 1 with id 5 and associated fundamentals [[40, 0], [24, 0], [40, 0]]
  with config_select_1 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
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
  -- node of type 'register' in stage 1 with id 6 and associated fundamentals [[8, 0], [8, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[8, 0], [8, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[40, 0], [24, 0], [40, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_5 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[0, 264], [6144, 0], [32, 0]]
  c_9_4_0_False_resize <= resize(c_4, 29);
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  c_9_7_2_False_resize <= resize(c_7, 29);
  c_9_7_2_False_shift <= shift_left(c_9_7_2_False_resize, 2);
  c_9_8_8_False_resize <= resize(c_8, 29);
  c_9_8_8_False_shift <= shift_left(c_9_8_8_False_resize, 8);
  with config_select_3 select c_9_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_4_0_False_shift;
        when "01" => c_9 <= c_9_7_2_False_shift;
        when others => c_9 <= c_9_8_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[0, 2048], [0, 2048], [40, 0]]
  c_10_3_8_False_resize <= resize(c_3, 27);
  c_10_3_8_False_shift <= shift_left(c_10_3_8_False_resize, 8);
  c_10_5_0_False_resize <= resize(c_5, 27);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_3_8_False_shift;
        when others => c_10 <= c_10_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[0, 2048], [0, 2048], [40, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 12 and associated fundamentals [[0, 16648], [6144, 16384], [352, 0]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 27,
      w_o => 31,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_9,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(30 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 13 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[0, 64], [0, 64], [352, 0]]
  c_16_15_3_False_resize <= resize(c_15, 25);
  c_16_15_3_False_shift <= shift_left(c_16_15_3_False_resize, 3);
  c_16_12_0_False_resize <= c_12(24 downto 0);
  c_16_12_0_False_shift <= shift_left(c_16_12_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_15_3_False_shift;
        when others => c_16 <= c_16_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[0, 16648], [6144, 16384], [352, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_12 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 18 and associated fundamentals [[0, -8456], [6144, 24576], [45408, 0]]
  with config_select_6 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 31,
      w_o => 32,
      s_x_i => 7,
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
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[40, 0], [24, 0], [40, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[40, 0], [24, 0], [40, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[40, 0], [24, 0], [40, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[40, 0], [24, 0], [40, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[40, 0], [6144, 24576], [45408, 0]]
  c_23_22_0_False_resize <= resize(c_22, 32);
  c_23_22_0_False_shift <= shift_left(c_23_22_0_False_resize, 0);
  c_23_18_0_False_resize <= c_18;
  c_23_18_0_False_shift <= shift_left(c_23_18_0_False_resize, 0);
  with config_select_7 select c_23_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_22_0_False_shift;
        when others => c_23 <= c_23_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[160, 0], [8, 0], [0, 4128]]
  c_24_7_0_False_resize <= resize(c_7, 29);
  c_24_7_0_False_shift <= shift_left(c_24_7_0_False_resize, 0);
  c_24_8_2_False_resize <= resize(c_8, 29);
  c_24_8_2_False_shift <= shift_left(c_24_8_2_False_resize, 2);
  c_24_4_2_False_resize <= resize(c_4, 29);
  c_24_4_2_False_shift <= shift_left(c_24_4_2_False_resize, 2);
  with config_select_3 select c_24_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_7_0_False_shift;
        when "01" => c_24 <= c_24_8_2_False_shift;
        when others => c_24 <= c_24_4_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[160, 0], [8, 0], [0, 4128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[160, 0], [8, 0], [0, 4128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[160, 0], [8, 0], [0, 4128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[160, 0], [8, 0], [0, 4128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 29 and associated fundamentals [[1320, 0], [6208, 24576], [45408, -33024]]
  with config_select_8 select c_29_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 29,
      w_o => 33,
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
      sub_i => c_29_sub_sel,
      x_i => c_23,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[0, 264], [0, 2048], [0, 2064]]
  c_30_13_8_False_resize <= resize(c_13, 28);
  c_30_13_8_False_shift <= shift_left(c_30_13_8_False_resize, 8);
  c_30_4_0_False_resize <= resize(c_4, 28);
  c_30_4_0_False_shift <= shift_left(c_30_4_0_False_resize, 0);
  c_30_4_1_False_resize <= resize(c_4, 28);
  c_30_4_1_False_shift <= shift_left(c_30_4_1_False_resize, 1);
  with config_select_3 select c_30_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_13_8_False_shift;
        when "01" => c_30 <= c_30_4_0_False_shift;
        when others => c_30 <= c_30_4_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 31 and associated fundamentals [[0, 264], [0, 1032], [0, 1032]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 32 and associated fundamentals [[0, 2376], [0, -6208], [0, -6192]]
  with config_select_4 select c_32_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 27,
      w_o => 29,
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
      sub_i => c_32_sub_sel,
      x_i => c_30,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 33 and associated fundamentals [[8, 0], [8, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 34 and associated fundamentals [[8, 0], [8, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 35 and associated fundamentals [[32768, 0], [32768, 0], [0, -6192]]
  c_35_32_0_False_resize <= resize(c_32, 31);
  c_35_32_0_False_shift <= shift_left(c_35_32_0_False_resize, 0);
  c_35_34_12_False_resize <= resize(c_34, 31);
  c_35_34_12_False_shift <= shift_left(c_35_34_12_False_resize, 12);
  with config_select_5 select c_35_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_32_0_False_shift;
        when others => c_35 <= c_35_34_12_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[32768, 0], [32768, 0], [0, -6192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[32768, 0], [32768, 0], [0, -6192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[32768, 0], [32768, 0], [0, -6192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 39 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  with config_select_9 select c_39_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 31,
      w_y_i => 33,
      w_o => 33,
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
      sub_i => c_39_sub_sel,
      x_i => c_38,
      y_i => c_29,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[0, 16648], [6144, 16384], [352, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 41 and associated fundamentals [[0, 33296], [12288, 32768], [45408, 0]]
  c_41_40_1_False_resize <= resize(c_40, 32);
  c_41_40_1_False_shift <= shift_left(c_41_40_1_False_resize, 1);
  c_41_18_0_False_resize <= c_18;
  c_41_18_0_False_shift <= shift_left(c_41_18_0_False_resize, 0);
  with config_select_7 select c_41_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_40_1_False_shift;
        when others => c_41 <= c_41_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 42 and associated fundamentals [[0, 2376], [0, -6208], [0, -6192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[0, 2376], [0, -6208], [0, -6192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[0, 2376], [0, -6208], [0, -6192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[0, 2376], [0, -6208], [0, -6192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[0, 2376], [0, -6208], [0, -6192]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 47 and associated fundamentals [[0, 2376], [0, -6208], [45408, -45408]]
  c_47_46_0_False_resize <= resize(c_46, 33);
  c_47_46_0_False_shift <= shift_left(c_47_46_0_False_resize, 0);
  c_47_39_0_False_resize <= c_39;
  c_47_39_0_False_shift <= shift_left(c_47_39_0_False_resize, 0);
  with config_select_10 select c_47_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_46_0_False_shift;
        when others => c_47 <= c_47_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[0, 33296], [12288, 32768], [45408, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[0, 33296], [12288, 32768], [45408, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 50 and associated fundamentals [[0, 33296], [12288, 32768], [45408, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 51 and associated fundamentals [[0, 64216], [24576, 59328], [45408, 45408]]
  with config_select_11 select c_51_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_51: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 33,
      w_o => 33,
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
      sub_i => c_51_sub_sel,
      x_i => c_50,
      y_i => c_47,
      z_o => c_51_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_51_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 53 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 54 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  c_54_resize <= c_53;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'output' in stage 11 with id 55 and associated fundamentals [[0, 64216], [24576, 59328], [45408, 45408]]
  c_55_resize <= c_51;
  c_55 <= shift_left(c_55_resize, 0);
end architecture;

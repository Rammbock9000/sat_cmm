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
  signal config_select_13: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_i0_resize: signed(17 downto 0);
  signal c_3_i1_resize: signed(17 downto 0);
  signal c_3_i0_shift: signed(17 downto 0);
  signal c_3_i1_shift: signed(17 downto 0);
  signal c_3_arith: signed(17 downto 0);
  signal c_3_oshift: signed(17 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_5_3_0_False_resize: signed(18 downto 0);
  signal c_5_3_0_False_shift: signed(18 downto 0);
  signal c_5_4_3_False_resize: signed(18 downto 0);
  signal c_5_4_3_False_shift: signed(18 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_i0_resize: signed(20 downto 0);
  signal c_7_i1_resize: signed(20 downto 0);
  signal c_7_i0_shift: signed(20 downto 0);
  signal c_7_i1_shift: signed(20 downto 0);
  signal c_7_arith: signed(20 downto 0);
  signal c_7_oshift: signed(20 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_7_0_False_resize: signed(20 downto 0);
  signal c_9_7_0_False_shift: signed(20 downto 0);
  signal c_9_8_0_False_resize: signed(20 downto 0);
  signal c_9_8_0_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(17 downto 0);
  signal c_13: signed(17 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(18 downto 0);
  signal c_15_0_0_False_resize: signed(18 downto 0);
  signal c_15_0_0_False_shift: signed(18 downto 0);
  signal c_15_0_3_False_resize: signed(18 downto 0);
  signal c_15_0_3_False_shift: signed(18 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_17: signed(20 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_17_5_False_resize: signed(24 downto 0);
  signal c_18_17_5_False_shift: signed(24 downto 0);
  signal c_18_11_0_False_resize: signed(24 downto 0);
  signal c_18_11_0_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(18 downto 0);
  signal c_20: signed(18 downto 0);
  signal c_21: signed(18 downto 0);
  signal c_22: signed(18 downto 0);
  signal c_23: signed(18 downto 0);
  signal c_24: signed(18 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_i0_resize: signed(24 downto 0);
  signal c_25_i1_resize: signed(24 downto 0);
  signal c_25_i0_shift: signed(24 downto 0);
  signal c_25_i1_shift: signed(24 downto 0);
  signal c_25_arith: signed(24 downto 0);
  signal c_25_oshift: signed(24 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(21 downto 0);
  signal c_26_7_1_False_resize: signed(21 downto 0);
  signal c_26_7_1_False_shift: signed(21 downto 0);
  signal c_26_13_0_False_resize: signed(21 downto 0);
  signal c_26_13_0_False_shift: signed(21 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(17 downto 0);
  signal c_28: signed(17 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_11_1_False_resize: signed(22 downto 0);
  signal c_29_11_1_False_shift: signed(22 downto 0);
  signal c_29_28_0_False_resize: signed(22 downto 0);
  signal c_29_28_0_False_shift: signed(22 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_i0_resize: signed(22 downto 0);
  signal c_32_i1_resize: signed(22 downto 0);
  signal c_32_i0_shift: signed(22 downto 0);
  signal c_32_i1_shift: signed(22 downto 0);
  signal c_32_arith: signed(22 downto 0);
  signal c_32_oshift: signed(22 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(24 downto 0);
  signal c_33_i0_resize: signed(24 downto 0);
  signal c_33_i1_resize: signed(24 downto 0);
  signal c_33_i0_shift: signed(24 downto 0);
  signal c_33_i1_shift: signed(24 downto 0);
  signal c_33_arith: signed(24 downto 0);
  signal c_33_oshift: signed(24 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(22 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_37_0_False_resize: signed(25 downto 0);
  signal c_39_37_0_False_shift: signed(25 downto 0);
  signal c_39_38_3_False_resize: signed(25 downto 0);
  signal c_39_38_3_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(15 downto 0);
  signal c_41: signed(15 downto 0);
  signal c_42: signed(15 downto 0);
  signal c_43: signed(15 downto 0);
  signal c_44: signed(15 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(23 downto 0);
  signal c_46_41_0_False_resize: signed(23 downto 0);
  signal c_46_41_0_False_shift: signed(23 downto 0);
  signal c_46_33_0_False_resize: signed(23 downto 0);
  signal c_46_33_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(17 downto 0);
  signal c_47_4_2_False_resize: signed(17 downto 0);
  signal c_47_4_2_False_shift: signed(17 downto 0);
  signal c_47_3_0_False_resize: signed(17 downto 0);
  signal c_47_3_0_False_shift: signed(17 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(17 downto 0);
  signal c_49: signed(17 downto 0);
  signal c_50: signed(17 downto 0);
  signal c_51: signed(17 downto 0);
  signal c_52: signed(17 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_i0_resize: signed(23 downto 0);
  signal c_53_i1_resize: signed(23 downto 0);
  signal c_53_i0_shift: signed(23 downto 0);
  signal c_53_i1_shift: signed(23 downto 0);
  signal c_53_arith: signed(23 downto 0);
  signal c_53_oshift: signed(23 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_38_1_False_resize: signed(25 downto 0);
  signal c_54_38_1_False_shift: signed(25 downto 0);
  signal c_54_37_0_False_resize: signed(25 downto 0);
  signal c_54_37_0_False_shift: signed(25 downto 0);
  signal c_54_sel: std_logic_vector(0 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_i0_resize: signed(25 downto 0);
  signal c_56_i1_resize: signed(25 downto 0);
  signal c_56_i0_shift: signed(25 downto 0);
  signal c_56_i1_shift: signed(25 downto 0);
  signal c_56_arith: signed(25 downto 0);
  signal c_56_oshift: signed(25 downto 0);
  signal c_56_sub_sel: std_logic;
  signal c_57: signed(20 downto 0);
  signal c_58: signed(20 downto 0);
  signal c_59: signed(20 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_37_0_False_resize: signed(25 downto 0);
  signal c_60_37_0_False_shift: signed(25 downto 0);
  signal c_60_59_2_False_resize: signed(25 downto 0);
  signal c_60_59_2_False_shift: signed(25 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_resize: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_resize: signed(25 downto 0);
  signal c_64: signed(24 downto 0);
  signal c_65: signed(24 downto 0);
  signal c_66: signed(24 downto 0);
  signal c_67: signed(24 downto 0);
  signal c_67_resize: signed(24 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_68_resize: signed(25 downto 0);
  signal c_69: signed(24 downto 0);
  signal c_70: signed(24 downto 0);
  signal c_71: signed(24 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_73_resize: signed(24 downto 0);
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
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 61
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_61);
    end if;
  end process;
  -- output node 1 with id 63
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_63);
    end if;
  end process;
  -- output node 2 with id 67
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_67);
    end if;
  end process;
  -- output node 3 with id 68
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_68);
    end if;
  end process;
  -- output node 4 with id 73
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_73);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-3], [3], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[8], [3], [3]]
  c_5_3_0_False_resize <= resize(c_3, 19);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_4_3_False_resize <= resize(c_4, 19);
  c_5_4_3_False_shift <= shift_left(c_5_4_3_False_resize, 3);
  with config_select_3 select c_5_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_3_0_False_shift;
        when others => c_5 <= c_5_4_3_False_shift;
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
  -- node of type 'sub' in stage 4 with id 7 and associated fundamentals [[-31], [-11], [-11]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 19,
      w_o => 21,
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
      c_7 <= c_7_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 9 and associated fundamentals [[-31], [1], [-11]]
  c_9_7_0_False_resize <= c_7;
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  c_9_8_0_False_resize <= resize(c_8, 21);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_5 select c_9_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_7_0_False_shift;
        when others => c_9 <= c_9_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 10 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 11 and associated fundamentals [[94], [34], [54]]
  with config_select_6 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
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
      sub_i => c_11_sub_sel,
      x_i => c_10,
      y_i => c_9,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[-3], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[-3], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 14 and associated fundamentals [[-415], [395], [395]]
  with config_select_5 select c_14_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 21,
      w_o => 25,
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
      sub_i => c_14_sub_sel,
      x_i => c_13,
      y_i => c_7,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 15 and associated fundamentals [[1], [1], [8]]
  c_15_0_0_False_resize <= resize(c_0, 19);
  c_15_0_0_False_shift <= shift_left(c_15_0_0_False_resize, 0);
  c_15_0_3_False_resize <= resize(c_0, 19);
  c_15_0_3_False_shift <= shift_left(c_15_0_3_False_resize, 3);
  with config_select_1 select c_15_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_0_0_False_shift;
        when others => c_15 <= c_15_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[-31], [-11], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[-31], [-11], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 18 and associated fundamentals [[94], [-352], [-352]]
  c_18_17_5_False_resize <= resize(c_17, 25);
  c_18_17_5_False_shift <= shift_left(c_18_17_5_False_resize, 5);
  c_18_11_0_False_resize <= resize(c_11, 25);
  c_18_11_0_False_shift <= shift_left(c_18_11_0_False_resize, 0);
  with config_select_7 select c_18_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_17_5_False_shift;
        when others => c_18 <= c_18_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 19 and associated fundamentals [[1], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[1], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[1], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[1], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[1], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 24 and associated fundamentals [[1], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 25 and associated fundamentals [[-86], [-344], [-288]]
  with config_select_8 select c_25_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 25,
      w_o => 25,
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
      sub_i => c_25_sub_sel,
      x_i => c_24,
      y_i => c_18,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 26 and associated fundamentals [[-62], [3], [-22]]
  c_26_7_1_False_resize <= resize(c_7, 22);
  c_26_7_1_False_shift <= shift_left(c_26_7_1_False_resize, 1);
  c_26_13_0_False_resize <= resize(c_13, 22);
  c_26_13_0_False_shift <= shift_left(c_26_13_0_False_resize, 0);
  with config_select_5 select c_26_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_7_1_False_shift;
        when others => c_26 <= c_26_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[-3], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[-3], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[-3], [68], [3]]
  c_29_11_1_False_resize <= c_11;
  c_29_11_1_False_shift <= shift_left(c_29_11_1_False_resize, 1);
  c_29_28_0_False_resize <= resize(c_28, 23);
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  with config_select_7 select c_29_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_11_1_False_shift;
        when others => c_29 <= c_29_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[-62], [3], [-22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[-62], [3], [-22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 32 and associated fundamentals [[-59], [71], [-19]]
  with config_select_8 select c_32_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_32_sub_sel,
      x_i => c_31,
      y_i => c_29,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 7 with id 33 and associated fundamentals [[-379], [-133], [-213]]
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_28,
      y_i => c_11,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[-415], [395], [395]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[-415], [395], [395]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[-415], [395], [395]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 37 and associated fundamentals [[-889], [-719], [-809]]
  with config_select_9 select c_37_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
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
      sub_i => c_37_sub_sel,
      x_i => c_32,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 38 and associated fundamentals [[-59], [71], [-19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 39 and associated fundamentals [[-889], [-719], [-152]]
  c_39_37_0_False_resize <= c_37;
  c_39_37_0_False_shift <= shift_left(c_39_37_0_False_resize, 0);
  c_39_38_3_False_resize <= resize(c_38, 26);
  c_39_38_3_False_shift <= shift_left(c_39_38_3_False_resize, 3);
  with config_select_10 select c_39_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_37_0_False_shift;
        when others => c_39 <= c_39_38_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 44 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 45 and associated fundamentals [[-887], [-717], [-154]]
  with config_select_11 select c_45_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 16,
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
      sub_i => c_45_sub_sel,
      x_i => c_39,
      y_i => c_44,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 46 and associated fundamentals [[1], [-133], [1]]
  c_46_41_0_False_resize <= resize(c_41, 24);
  c_46_41_0_False_shift <= shift_left(c_46_41_0_False_resize, 0);
  c_46_33_0_False_resize <= c_33(23 downto 0);
  c_46_33_0_False_shift <= shift_left(c_46_33_0_False_resize, 0);
  with config_select_8 select c_46_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_41_0_False_shift;
        when others => c_46 <= c_46_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 47 and associated fundamentals [[4], [3], [4]]
  c_47_4_2_False_resize <= resize(c_4, 18);
  c_47_4_2_False_shift <= shift_left(c_47_4_2_False_resize, 2);
  c_47_3_0_False_resize <= c_3;
  c_47_3_0_False_shift <= shift_left(c_47_3_0_False_resize, 0);
  with config_select_3 select c_47_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_4_2_False_shift;
        when others => c_47 <= c_47_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 48 and associated fundamentals [[4], [3], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 49 and associated fundamentals [[4], [3], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 50 and associated fundamentals [[4], [3], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 51 and associated fundamentals [[4], [3], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 52 and associated fundamentals [[4], [3], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 9 with id 53 and associated fundamentals [[-127], [-229], [-127]]
  inst_adder_node_53: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_46,
      y_i => c_52,
      z_o => c_53_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_53_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 54 and associated fundamentals [[-889], [142], [-38]]
  c_54_38_1_False_resize <= resize(c_38, 26);
  c_54_38_1_False_shift <= shift_left(c_54_38_1_False_resize, 1);
  c_54_37_0_False_resize <= c_37;
  c_54_37_0_False_shift <= shift_left(c_54_37_0_False_resize, 0);
  with config_select_10 select c_54_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "0" => c_54 <= c_54_38_1_False_shift;
        when others => c_54 <= c_54_37_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 55 and associated fundamentals [[-127], [-229], [-127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_53 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 56 and associated fundamentals [[-381], [-774], [-546]]
  with config_select_11 select c_56_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_56: entity work.adder_node
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
      sub_i => c_56_sub_sel,
      x_i => c_54,
      y_i => c_55,
      z_o => c_56_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_56_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 57 and associated fundamentals [[-31], [-11], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 58 and associated fundamentals [[-31], [-11], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[-31], [-11], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 60 and associated fundamentals [[-124], [-719], [-809]]
  c_60_37_0_False_resize <= c_37;
  c_60_37_0_False_shift <= shift_left(c_60_37_0_False_resize, 0);
  c_60_59_2_False_resize <= resize(c_59, 26);
  c_60_59_2_False_shift <= shift_left(c_60_59_2_False_resize, 2);
  with config_select_10 select c_60_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_37_0_False_shift;
        when others => c_60 <= c_60_59_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 61 and associated fundamentals [[381], [774], [546]]
  c_61_resize <= c_56;
  c_61 <= -shift_left(c_61_resize, 0);
  -- node of type 'register' in stage 11 with id 62 and associated fundamentals [[-124], [-719], [-809]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_60 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 63 and associated fundamentals [[124], [719], [809]]
  c_63_resize <= c_62;
  c_63 <= -shift_left(c_63_resize, 0);
  -- node of type 'register' in stage 9 with id 64 and associated fundamentals [[-86], [-344], [-288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 65 and associated fundamentals [[-86], [-344], [-288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 66 and associated fundamentals [[-86], [-344], [-288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 67 and associated fundamentals [[86], [344], [288]]
  c_67_resize <= c_66;
  c_67 <= -shift_left(c_67_resize, 0);
  -- node of type 'output' in stage 11 with id 68 and associated fundamentals [[887], [717], [154]]
  c_68_resize <= c_45;
  c_68 <= -shift_left(c_68_resize, 0);
  -- node of type 'register' in stage 8 with id 69 and associated fundamentals [[-379], [-133], [-213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 70 and associated fundamentals [[-379], [-133], [-213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 71 and associated fundamentals [[-379], [-133], [-213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 72 and associated fundamentals [[-379], [-133], [-213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 73 and associated fundamentals [[379], [133], [213]]
  c_73_resize <= c_72;
  c_73 <= -shift_left(c_73_resize, 0);
end architecture;

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
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(17 downto 0);
  signal c_4_0_2_False_resize: signed(17 downto 0);
  signal c_4_0_2_False_shift: signed(17 downto 0);
  signal c_4_0_0_False_resize: signed(17 downto 0);
  signal c_4_0_0_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(20 downto 0);
  signal c_10_i0_resize: signed(20 downto 0);
  signal c_10_i1_resize: signed(20 downto 0);
  signal c_10_i0_shift: signed(20 downto 0);
  signal c_10_i1_shift: signed(20 downto 0);
  signal c_10_arith: signed(20 downto 0);
  signal c_10_oshift: signed(20 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_9_0_False_resize: signed(24 downto 0);
  signal c_12_9_0_False_shift: signed(24 downto 0);
  signal c_12_11_2_False_resize: signed(24 downto 0);
  signal c_12_11_2_False_shift: signed(24 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_10_0_False_resize: signed(22 downto 0);
  signal c_13_10_0_False_shift: signed(22 downto 0);
  signal c_13_10_2_False_resize: signed(22 downto 0);
  signal c_13_10_2_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_23_0_False_resize: signed(24 downto 0);
  signal c_24_23_0_False_shift: signed(24 downto 0);
  signal c_24_21_1_False_resize: signed(24 downto 0);
  signal c_24_21_1_False_shift: signed(24 downto 0);
  signal c_24_17_0_False_resize: signed(24 downto 0);
  signal c_24_17_0_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(20 downto 0);
  signal c_26: signed(20 downto 0);
  signal c_27: signed(20 downto 0);
  signal c_28: signed(20 downto 0);
  signal c_29: signed(20 downto 0);
  signal c_30: signed(20 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_i0_resize: signed(24 downto 0);
  signal c_31_i1_resize: signed(24 downto 0);
  signal c_31_i0_shift: signed(24 downto 0);
  signal c_31_i1_shift: signed(24 downto 0);
  signal c_31_arith: signed(24 downto 0);
  signal c_31_oshift: signed(24 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(24 downto 0);
  signal c_32_31_2_False_resize: signed(24 downto 0);
  signal c_32_31_2_False_shift: signed(24 downto 0);
  signal c_32_31_0_False_resize: signed(24 downto 0);
  signal c_32_31_0_False_shift: signed(24 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_9_0_False_resize: signed(24 downto 0);
  signal c_33_9_0_False_shift: signed(24 downto 0);
  signal c_33_27_2_False_resize: signed(24 downto 0);
  signal c_33_27_2_False_shift: signed(24 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_i0_resize: signed(25 downto 0);
  signal c_38_i1_resize: signed(25 downto 0);
  signal c_38_i0_shift: signed(25 downto 0);
  signal c_38_i1_shift: signed(25 downto 0);
  signal c_38_arith: signed(25 downto 0);
  signal c_38_oshift: signed(25 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(25 downto 0);
  signal c_39_6_4_False_resize: signed(25 downto 0);
  signal c_39_6_4_False_shift: signed(25 downto 0);
  signal c_39_18_0_False_resize: signed(25 downto 0);
  signal c_39_18_0_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_i0_resize: signed(25 downto 0);
  signal c_44_i1_resize: signed(25 downto 0);
  signal c_44_i0_shift: signed(25 downto 0);
  signal c_44_i1_shift: signed(25 downto 0);
  signal c_44_arith: signed(25 downto 0);
  signal c_44_oshift: signed(25 downto 0);
  signal c_44_sub_sel: std_logic;
  signal c_45: signed(21 downto 0);
  signal c_46: signed(21 downto 0);
  signal c_47: signed(21 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_44_0_False_resize: signed(25 downto 0);
  signal c_48_44_0_False_shift: signed(25 downto 0);
  signal c_48_47_5_False_resize: signed(25 downto 0);
  signal c_48_47_5_False_shift: signed(25 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(20 downto 0);
  signal c_50: signed(20 downto 0);
  signal c_51: signed(20 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_i0_resize: signed(25 downto 0);
  signal c_52_i1_resize: signed(25 downto 0);
  signal c_52_i0_shift: signed(25 downto 0);
  signal c_52_i1_shift: signed(25 downto 0);
  signal c_52_arith: signed(25 downto 0);
  signal c_52_oshift: signed(25 downto 0);
  signal c_52_sub_sel: std_logic;
  signal c_53: signed(25 downto 0);
  signal c_53_9_0_False_resize: signed(25 downto 0);
  signal c_53_9_0_False_shift: signed(25 downto 0);
  signal c_53_9_1_False_resize: signed(25 downto 0);
  signal c_53_9_1_False_shift: signed(25 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_38_4_False_resize: signed(25 downto 0);
  signal c_55_38_4_False_shift: signed(25 downto 0);
  signal c_55_38_1_False_resize: signed(25 downto 0);
  signal c_55_38_1_False_shift: signed(25 downto 0);
  signal c_55_54_0_False_resize: signed(25 downto 0);
  signal c_55_54_0_False_shift: signed(25 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_57: signed(24 downto 0);
  signal c_58: signed(24 downto 0);
  signal c_59: signed(24 downto 0);
  signal c_59_58_0_False_resize: signed(24 downto 0);
  signal c_59_58_0_False_shift: signed(24 downto 0);
  signal c_59_44_0_False_resize: signed(24 downto 0);
  signal c_59_44_0_False_shift: signed(24 downto 0);
  signal c_59_sel: std_logic_vector(0 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_61: signed(24 downto 0);
  signal c_62: signed(24 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_38_0_False_resize: signed(25 downto 0);
  signal c_63_38_0_False_shift: signed(25 downto 0);
  signal c_63_62_0_False_resize: signed(25 downto 0);
  signal c_63_62_0_False_shift: signed(25 downto 0);
  signal c_63_60_1_False_resize: signed(25 downto 0);
  signal c_63_60_1_False_shift: signed(25 downto 0);
  signal c_63_sel: std_logic_vector(1 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_resize: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_resize: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_72_resize: signed(25 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_74_resize: signed(24 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_75_resize: signed(25 downto 0);
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
  -- output node 0 with id 70
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_70);
    end if;
  end process;
  -- output node 1 with id 71
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_71);
    end if;
  end process;
  -- output node 2 with id 72
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_72);
    end if;
  end process;
  -- output node 3 with id 74
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_74);
    end if;
  end process;
  -- output node 4 with id 75
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_75);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[30], [36], [34]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
      w_o => 22,
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
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [4], [4]]
  c_4_0_2_False_resize <= resize(c_0, 18);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  c_4_0_0_False_resize <= resize(c_0, 18);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_2_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 6 and associated fundamentals [[32], [44], [42]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 22,
      w_o => 22,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_5,
      y_i => c_3,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[255], [353], [337]]
  with config_select_4 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
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
      sub_i => c_9_sub_sel,
      x_i => c_6,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 10 and associated fundamentals [[-31], [-31], [-31]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[32], [44], [42]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[255], [176], [337]]
  c_12_9_0_False_resize <= c_9;
  c_12_9_0_False_shift <= shift_left(c_12_9_0_False_resize, 0);
  c_12_11_2_False_resize <= resize(c_11, 25);
  c_12_11_2_False_shift <= shift_left(c_12_11_2_False_resize, 2);
  with config_select_5 select c_12_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_9_0_False_shift;
        when others => c_12 <= c_12_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[-31], [-31], [-124]]
  c_13_10_0_False_resize <= resize(c_10, 23);
  c_13_10_0_False_shift <= shift_left(c_13_10_0_False_resize, 0);
  c_13_10_2_False_resize <= resize(c_10, 23);
  c_13_10_2_False_shift <= shift_left(c_13_10_2_False_resize, 2);
  with config_select_2 select c_13_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_10_0_False_shift;
        when others => c_13 <= c_13_10_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[-31], [-31], [-124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[-31], [-31], [-124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[-31], [-31], [-124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 17 and associated fundamentals [[286], [207], [461]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_12,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[30], [36], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[30], [36], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[30], [36], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[30], [36], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[255], [353], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[255], [353], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 24 and associated fundamentals [[60], [207], [337]]
  c_24_23_0_False_resize <= c_23;
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  c_24_21_1_False_resize <= resize(c_21, 25);
  c_24_21_1_False_shift <= shift_left(c_24_21_1_False_resize, 1);
  c_24_17_0_False_resize <= c_17;
  c_24_17_0_False_shift <= shift_left(c_24_17_0_False_resize, 0);
  with config_select_7 select c_24_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_23_0_False_shift;
        when "01" => c_24 <= c_24_21_1_False_shift;
        when others => c_24 <= c_24_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 25 and associated fundamentals [[-31], [-31], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 26 and associated fundamentals [[-31], [-31], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 27 and associated fundamentals [[-31], [-31], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[-31], [-31], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[-31], [-31], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[-31], [-31], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 31 and associated fundamentals [[308], [455], [89]]
  with config_select_8 select c_31_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 25,
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
      sub_i => c_31_sub_sel,
      x_i => c_24,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 32 and associated fundamentals [[308], [455], [356]]
  c_32_31_2_False_resize <= c_31;
  c_32_31_2_False_shift <= shift_left(c_32_31_2_False_resize, 2);
  c_32_31_0_False_resize <= c_31;
  c_32_31_0_False_shift <= shift_left(c_32_31_0_False_resize, 0);
  with config_select_9 select c_32_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_31_2_False_shift;
        when others => c_32 <= c_32_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 33 and associated fundamentals [[255], [-124], [337]]
  c_33_9_0_False_resize <= c_9;
  c_33_9_0_False_shift <= shift_left(c_33_9_0_False_resize, 0);
  c_33_27_2_False_resize <= resize(c_27, 25);
  c_33_27_2_False_shift <= shift_left(c_33_27_2_False_resize, 2);
  with config_select_5 select c_33_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_9_0_False_shift;
        when others => c_33 <= c_33_27_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[255], [-124], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[255], [-124], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[255], [-124], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 37 and associated fundamentals [[255], [-124], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 38 and associated fundamentals [[53], [331], [693]]
  with config_select_10 select c_38_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_38: entity work.adder_node
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
      sub_i => c_38_sub_sel,
      x_i => c_32,
      y_i => c_37,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 39 and associated fundamentals [[30], [36], [672]]
  c_39_6_4_False_resize <= resize(c_6, 26);
  c_39_6_4_False_shift <= shift_left(c_39_6_4_False_resize, 4);
  c_39_18_0_False_resize <= resize(c_18, 26);
  c_39_18_0_False_shift <= shift_left(c_39_18_0_False_resize, 0);
  with config_select_4 select c_39_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_6_4_False_shift;
        when others => c_39 <= c_39_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 40 and associated fundamentals [[30], [36], [672]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 41 and associated fundamentals [[30], [36], [672]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[30], [36], [672]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[30], [36], [672]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 44 and associated fundamentals [[338], [491], [583]]
  with config_select_9 select c_44_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_44: entity work.adder_node
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
      sub_i => c_44_sub_sel,
      x_i => c_43,
      y_i => c_31,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[30], [36], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[30], [36], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[30], [36], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 48 and associated fundamentals [[960], [491], [583]]
  c_48_44_0_False_resize <= c_44;
  c_48_44_0_False_shift <= shift_left(c_48_44_0_False_resize, 0);
  c_48_47_5_False_resize <= resize(c_47, 26);
  c_48_47_5_False_shift <= shift_left(c_48_47_5_False_resize, 5);
  with config_select_10 select c_48_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_44_0_False_shift;
        when others => c_48 <= c_48_47_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[-31], [-31], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[-31], [-31], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 51 and associated fundamentals [[-31], [-31], [-31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 52 and associated fundamentals [[1022], [429], [521]]
  with config_select_11 select c_52_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_52: entity work.adder_node
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
      sub_i => c_52_sub_sel,
      x_i => c_48,
      y_i => c_51,
      z_o => c_52_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_52_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 53 and associated fundamentals [[255], [706], [337]]
  c_53_9_0_False_resize <= resize(c_9, 26);
  c_53_9_0_False_shift <= shift_left(c_53_9_0_False_resize, 0);
  c_53_9_1_False_resize <= resize(c_9, 26);
  c_53_9_1_False_shift <= shift_left(c_53_9_1_False_resize, 1);
  with config_select_5 select c_53_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_9_0_False_shift;
        when others => c_53 <= c_53_9_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 54 and associated fundamentals [[338], [491], [583]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 55 and associated fundamentals [[848], [662], [583]]
  c_55_38_4_False_resize <= c_38;
  c_55_38_4_False_shift <= shift_left(c_55_38_4_False_resize, 4);
  c_55_38_1_False_resize <= c_38;
  c_55_38_1_False_shift <= shift_left(c_55_38_1_False_resize, 1);
  c_55_54_0_False_resize <= c_54;
  c_55_54_0_False_shift <= shift_left(c_55_54_0_False_resize, 0);
  with config_select_11 select c_55_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "00" => c_55 <= c_55_38_4_False_shift;
        when "01" => c_55 <= c_55_38_1_False_shift;
        when others => c_55 <= c_55_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 56 and associated fundamentals [[286], [207], [461]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 57 and associated fundamentals [[286], [207], [461]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[286], [207], [461]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 59 and associated fundamentals [[338], [491], [461]]
  c_59_58_0_False_resize <= c_58;
  c_59_58_0_False_shift <= shift_left(c_59_58_0_False_resize, 0);
  c_59_44_0_False_resize <= c_44(24 downto 0);
  c_59_44_0_False_shift <= shift_left(c_59_44_0_False_resize, 0);
  with config_select_10 select c_59_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "0" => c_59 <= c_59_58_0_False_shift;
        when others => c_59 <= c_59_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 60 and associated fundamentals [[286], [207], [461]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[308], [455], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 62 and associated fundamentals [[308], [455], [89]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 63 and associated fundamentals [[572], [455], [693]]
  c_63_38_0_False_resize <= c_38;
  c_63_38_0_False_shift <= shift_left(c_63_38_0_False_resize, 0);
  c_63_62_0_False_resize <= resize(c_62, 26);
  c_63_62_0_False_shift <= shift_left(c_63_62_0_False_resize, 0);
  c_63_60_1_False_resize <= resize(c_60, 26);
  c_63_60_1_False_shift <= shift_left(c_63_60_1_False_resize, 1);
  with config_select_11 select c_63_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "00" => c_63 <= c_63_38_0_False_shift;
        when "01" => c_63 <= c_63_62_0_False_shift;
        when others => c_63 <= c_63_60_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 64 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 65 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 66 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 67 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 68 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 69 and associated fundamentals [[255], [706], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 70 and associated fundamentals [[255], [706], [337]]
  c_70_resize <= c_69;
  c_70 <= shift_left(c_70_resize, 0);
  -- node of type 'output' in stage 11 with id 71 and associated fundamentals [[848], [662], [583]]
  c_71_resize <= c_55;
  c_71 <= shift_left(c_71_resize, 0);
  -- node of type 'output' in stage 11 with id 72 and associated fundamentals [[1022], [429], [521]]
  c_72_resize <= c_52;
  c_72 <= shift_left(c_72_resize, 0);
  -- node of type 'register' in stage 11 with id 73 and associated fundamentals [[338], [491], [461]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_59 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 74 and associated fundamentals [[338], [491], [461]]
  c_74_resize <= c_73;
  c_74 <= shift_left(c_74_resize, 0);
  -- node of type 'output' in stage 11 with id 75 and associated fundamentals [[572], [455], [693]]
  c_75_resize <= c_63;
  c_75 <= shift_left(c_75_resize, 0);
end architecture;

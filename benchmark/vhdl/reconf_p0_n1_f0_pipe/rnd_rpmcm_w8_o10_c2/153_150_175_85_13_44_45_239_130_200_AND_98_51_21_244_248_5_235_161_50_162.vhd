library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
    y_5: out std_logic_vector(21 downto 0);
    y_6: out std_logic_vector(23 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(23 downto 0);
    y_9: out std_logic_vector(23 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(0 downto 0);
  signal config_select_1: std_logic_vector(0 downto 0);
  signal config_select_2: std_logic_vector(0 downto 0);
  signal config_select_3: std_logic_vector(0 downto 0);
  signal config_select_4: std_logic_vector(0 downto 0);
  signal config_select_5: std_logic_vector(0 downto 0);
  signal config_select_6: std_logic_vector(0 downto 0);
  signal config_select_7: std_logic_vector(0 downto 0);
  signal config_select_8: std_logic_vector(0 downto 0);
  signal config_select_9: std_logic_vector(0 downto 0);
  signal config_select_10: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_1_0_False_resize: signed(23 downto 0);
  signal c_3_1_0_False_shift: signed(23 downto 0);
  signal c_3_2_8_False_resize: signed(23 downto 0);
  signal c_3_2_8_False_shift: signed(23 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(18 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_7_4_False_resize: signed(23 downto 0);
  signal c_8_7_4_False_shift: signed(23 downto 0);
  signal c_8_5_0_False_resize: signed(23 downto 0);
  signal c_8_5_0_False_shift: signed(23 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_9_2_2_False_resize: signed(18 downto 0);
  signal c_9_2_2_False_shift: signed(18 downto 0);
  signal c_9_1_0_False_resize: signed(18 downto 0);
  signal c_9_1_0_False_shift: signed(18 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_11: signed(18 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(18 downto 0);
  signal c_14: signed(18 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_12_0_False_resize: signed(22 downto 0);
  signal c_15_12_0_False_shift: signed(22 downto 0);
  signal c_15_14_0_False_resize: signed(22 downto 0);
  signal c_15_14_0_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(18 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_i0_resize: signed(22 downto 0);
  signal c_17_i1_resize: signed(22 downto 0);
  signal c_17_i0_shift: signed(22 downto 0);
  signal c_17_i1_shift: signed(22 downto 0);
  signal c_17_arith: signed(22 downto 0);
  signal c_17_oshift: signed(22 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(20 downto 0);
  signal c_18_1_2_False_resize: signed(20 downto 0);
  signal c_18_1_2_False_shift: signed(20 downto 0);
  signal c_18_2_0_False_resize: signed(20 downto 0);
  signal c_18_2_0_False_shift: signed(20 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_i0_resize: signed(22 downto 0);
  signal c_19_i1_resize: signed(22 downto 0);
  signal c_19_i0_shift: signed(22 downto 0);
  signal c_19_i1_shift: signed(22 downto 0);
  signal c_19_arith: signed(22 downto 0);
  signal c_19_oshift: signed(22 downto 0);
  signal c_20: signed(15 downto 0);
  signal c_21: signed(15 downto 0);
  signal c_22: signed(15 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_22_3_False_resize: signed(22 downto 0);
  signal c_23_22_3_False_shift: signed(22 downto 0);
  signal c_23_12_0_False_resize: signed(22 downto 0);
  signal c_23_12_0_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_19_0_False_resize: signed(22 downto 0);
  signal c_25_19_0_False_shift: signed(22 downto 0);
  signal c_25_5_1_False_resize: signed(22 downto 0);
  signal c_25_5_1_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_26_i0_resize: signed(22 downto 0);
  signal c_26_i1_resize: signed(22 downto 0);
  signal c_26_i0_shift: signed(22 downto 0);
  signal c_26_i1_shift: signed(22 downto 0);
  signal c_26_arith: signed(22 downto 0);
  signal c_26_oshift: signed(22 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_i0_resize: signed(23 downto 0);
  signal c_27_i1_resize: signed(23 downto 0);
  signal c_27_i0_shift: signed(23 downto 0);
  signal c_27_i1_shift: signed(23 downto 0);
  signal c_27_arith: signed(23 downto 0);
  signal c_27_oshift: signed(23 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(22 downto 0);
  signal c_28_20_0_False_resize: signed(22 downto 0);
  signal c_28_20_0_False_shift: signed(22 downto 0);
  signal c_28_19_0_False_resize: signed(22 downto 0);
  signal c_28_19_0_False_shift: signed(22 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_i0_resize: signed(23 downto 0);
  signal c_33_i1_resize: signed(23 downto 0);
  signal c_33_i0_shift: signed(23 downto 0);
  signal c_33_i1_shift: signed(23 downto 0);
  signal c_33_arith: signed(23 downto 0);
  signal c_33_oshift: signed(23 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(15 downto 0);
  signal c_35: signed(15 downto 0);
  signal c_36: signed(20 downto 0);
  signal c_36_24_0_False_resize: signed(20 downto 0);
  signal c_36_24_0_False_shift: signed(20 downto 0);
  signal c_36_35_4_False_resize: signed(20 downto 0);
  signal c_36_35_4_False_shift: signed(20 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_24_0_False_resize: signed(23 downto 0);
  signal c_37_24_0_False_shift: signed(23 downto 0);
  signal c_37_32_0_False_resize: signed(23 downto 0);
  signal c_37_32_0_False_shift: signed(23 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_i0_resize: signed(23 downto 0);
  signal c_38_i1_resize: signed(23 downto 0);
  signal c_38_i0_shift: signed(23 downto 0);
  signal c_38_i1_shift: signed(23 downto 0);
  signal c_38_arith: signed(23 downto 0);
  signal c_38_oshift: signed(23 downto 0);
  signal c_39: signed(21 downto 0);
  signal c_39_26_1_False_resize: signed(21 downto 0);
  signal c_39_26_1_False_shift: signed(21 downto 0);
  signal c_39_14_0_False_resize: signed(21 downto 0);
  signal c_39_14_0_False_shift: signed(21 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_resize: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_resize: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_60_resize: signed(23 downto 0);
  signal c_61: signed(21 downto 0);
  signal c_62: signed(21 downto 0);
  signal c_63: signed(21 downto 0);
  signal c_64: signed(21 downto 0);
  signal c_64_resize: signed(21 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_68_resize: signed(23 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_69_resize: signed(23 downto 0);
  signal c_70: signed(22 downto 0);
  signal c_71: signed(22 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_72_resize: signed(23 downto 0);
  signal c_73: signed(22 downto 0);
  signal c_74: signed(22 downto 0);
  signal c_75: signed(22 downto 0);
  signal c_76: signed(22 downto 0);
  signal c_77: signed(22 downto 0);
  signal c_78: signed(22 downto 0);
  signal c_79: signed(23 downto 0);
  signal c_79_resize: signed(23 downto 0);
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
  -- output node 0 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 1 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 2 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 3 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 4 with id 60
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_60);
    end if;
  end process;
  -- output node 5 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_64);
    end if;
  end process;
  -- output node 6 with id 68
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_68);
    end if;
  end process;
  -- output node 7 with id 69
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_69);
    end if;
  end process;
  -- output node 8 with id 72
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_72);
    end if;
  end process;
  -- output node 9 with id 79
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_79);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[5], [5]]
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
      c_1 <= c_1_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[5], [256]]
  c_3_1_0_False_resize <= resize(c_1, 24);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_8_False_resize <= resize(c_2, 24);
  c_3_2_8_False_shift <= shift_left(c_3_2_8_False_resize, 8);
  with config_select_2 select c_3_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_2_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[13], [248]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
      w_o => 24,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[80], [248]]
  c_8_7_4_False_resize <= resize(c_7, 24);
  c_8_7_4_False_shift <= shift_left(c_8_7_4_False_resize, 4);
  c_8_5_0_False_resize <= c_5;
  c_8_5_0_False_shift <= shift_left(c_8_5_0_False_resize, 0);
  with config_select_4 select c_8_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_7_4_False_shift;
        when others => c_8 <= c_8_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[5], [4]]
  c_9_2_2_False_resize <= resize(c_2, 19);
  c_9_2_2_False_shift <= shift_left(c_9_2_2_False_resize, 2);
  c_9_1_0_False_resize <= c_1;
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_2_2_False_shift;
        when others => c_9 <= c_9_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[5], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[5], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[85], [244]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 19,
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
      sub_i => c_12_sub_sel,
      x_i => c_8,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 15 and associated fundamentals [[85], [5]]
  c_15_12_0_False_resize <= c_12(22 downto 0);
  c_15_12_0_False_shift <= shift_left(c_15_12_0_False_resize, 0);
  c_15_14_0_False_resize <= resize(c_14, 23);
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  with config_select_6 select c_15_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_12_0_False_shift;
        when others => c_15 <= c_15_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 16 and associated fundamentals [[5], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 17 and associated fundamentals [[65], [25]]
  with config_select_7 select c_17_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
      w_o => 23,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[20], [1]]
  c_18_1_2_False_resize <= resize(c_1, 21);
  c_18_1_2_False_shift <= shift_left(c_18_1_2_False_resize, 2);
  c_18_2_0_False_resize <= resize(c_2, 21);
  c_18_2_0_False_shift <= shift_left(c_18_2_0_False_resize, 0);
  with config_select_2 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_1_2_False_shift;
        when others => c_18 <= c_18_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 19 and associated fundamentals [[100], [81]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_18,
      y_i => c_6,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 23 and associated fundamentals [[85], [8]]
  c_23_22_3_False_resize <= resize(c_22, 23);
  c_23_22_3_False_shift <= shift_left(c_23_22_3_False_resize, 3);
  c_23_12_0_False_resize <= c_12(22 downto 0);
  c_23_12_0_False_shift <= shift_left(c_23_12_0_False_resize, 0);
  with config_select_6 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_22_3_False_shift;
        when others => c_23 <= c_23_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 24 and associated fundamentals [[175], [21]]
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
      w_o => 24,
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
      x_i => c_23,
      y_i => c_16,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[26], [81]]
  c_25_19_0_False_resize <= c_19;
  c_25_19_0_False_shift <= shift_left(c_25_19_0_False_resize, 0);
  c_25_5_1_False_resize <= c_5(22 downto 0);
  c_25_5_1_False_shift <= shift_left(c_25_5_1_False_resize, 1);
  with config_select_4 select c_25_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_19_0_False_shift;
        when others => c_25 <= c_25_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 26 and associated fundamentals [[22], [77]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
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
      x_i => c_25,
      y_i => c_21,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 27 and associated fundamentals [[150], [51]]
  with config_select_6 select c_27_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 23,
      w_o => 24,
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
      sub_i => c_27_sub_sel,
      x_i => c_22,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[1], [81]]
  c_28_20_0_False_resize <= resize(c_20, 23);
  c_28_20_0_False_shift <= shift_left(c_28_20_0_False_resize, 0);
  c_28_19_0_False_resize <= c_19;
  c_28_19_0_False_shift <= shift_left(c_28_19_0_False_resize, 0);
  with config_select_4 select c_28_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_20_0_False_shift;
        when others => c_28 <= c_28_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[1], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 30 and associated fundamentals [[45], [235]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 24,
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
      x_i => c_26,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[22], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[22], [77]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 33 and associated fundamentals [[153], [98]]
  with config_select_8 select c_33_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_33_sub_sel,
      x_i => c_24,
      y_i => c_32,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 36 and associated fundamentals [[16], [21]]
  c_36_24_0_False_resize <= c_24(20 downto 0);
  c_36_24_0_False_shift <= shift_left(c_36_24_0_False_resize, 0);
  c_36_35_4_False_resize <= resize(c_35, 21);
  c_36_35_4_False_shift <= shift_left(c_36_35_4_False_resize, 4);
  with config_select_8 select c_36_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_24_0_False_shift;
        when others => c_36 <= c_36_35_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 37 and associated fundamentals [[175], [77]]
  c_37_24_0_False_resize <= c_24;
  c_37_24_0_False_shift <= shift_left(c_37_24_0_False_resize, 0);
  c_37_32_0_False_resize <= resize(c_32, 24);
  c_37_32_0_False_shift <= shift_left(c_37_32_0_False_resize, 0);
  with config_select_8 select c_37_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_24_0_False_shift;
        when others => c_37 <= c_37_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 9 with id 38 and associated fundamentals [[239], [161]]
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_36,
      y_i => c_37,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 39 and associated fundamentals [[44], [5]]
  c_39_26_1_False_resize <= c_26(21 downto 0);
  c_39_26_1_False_shift <= shift_left(c_39_26_1_False_resize, 1);
  c_39_14_0_False_resize <= resize(c_14, 22);
  c_39_14_0_False_shift <= shift_left(c_39_14_0_False_resize, 0);
  with config_select_6 select c_39_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_26_1_False_shift;
        when others => c_39 <= c_39_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[153], [98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_33 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 41 and associated fundamentals [[153], [98]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[150], [51]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[150], [51]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[150], [51]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 45 and associated fundamentals [[150], [51]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[175], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[175], [21]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 48 and associated fundamentals [[175], [21]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'register' in stage 6 with id 49 and associated fundamentals [[85], [244]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 50 and associated fundamentals [[85], [244]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[85], [244]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[85], [244]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 53 and associated fundamentals [[85], [244]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'register' in stage 4 with id 54 and associated fundamentals [[13], [248]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 55 and associated fundamentals [[13], [248]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 56 and associated fundamentals [[13], [248]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 57 and associated fundamentals [[13], [248]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 58 and associated fundamentals [[13], [248]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 59 and associated fundamentals [[13], [248]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 60 and associated fundamentals [[13], [248]]
  c_60_resize <= c_59;
  c_60 <= shift_left(c_60_resize, 0);
  -- node of type 'register' in stage 7 with id 61 and associated fundamentals [[44], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 62 and associated fundamentals [[44], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 63 and associated fundamentals [[44], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 64 and associated fundamentals [[44], [5]]
  c_64_resize <= c_63;
  c_64 <= shift_left(c_64_resize, 0);
  -- node of type 'register' in stage 7 with id 65 and associated fundamentals [[45], [235]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 66 and associated fundamentals [[45], [235]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 67 and associated fundamentals [[45], [235]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 68 and associated fundamentals [[45], [235]]
  c_68_resize <= c_67;
  c_68 <= shift_left(c_68_resize, 0);
  -- node of type 'output' in stage 9 with id 69 and associated fundamentals [[239], [161]]
  c_69_resize <= c_38;
  c_69 <= shift_left(c_69_resize, 0);
  -- node of type 'register' in stage 8 with id 70 and associated fundamentals [[65], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 71 and associated fundamentals [[65], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 72 and associated fundamentals [[130], [50]]
  c_72_resize <= resize(c_71, 24);
  c_72 <= shift_left(c_72_resize, 1);
  -- node of type 'register' in stage 4 with id 73 and associated fundamentals [[100], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 74 and associated fundamentals [[100], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_73 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 75 and associated fundamentals [[100], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 76 and associated fundamentals [[100], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_75 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 77 and associated fundamentals [[100], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 78 and associated fundamentals [[100], [81]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 79 and associated fundamentals [[200], [162]]
  c_79_resize <= resize(c_78, 24);
  c_79 <= shift_left(c_79_resize, 1);
end architecture;

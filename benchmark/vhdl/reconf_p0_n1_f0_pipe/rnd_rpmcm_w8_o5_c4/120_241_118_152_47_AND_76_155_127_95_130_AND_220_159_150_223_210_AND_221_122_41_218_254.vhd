library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
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
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_0_2_False_resize: signed(18 downto 0);
  signal c_1_0_2_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(18 downto 0);
  signal c_4_i0_resize: signed(18 downto 0);
  signal c_4_i1_resize: signed(18 downto 0);
  signal c_4_i0_shift: signed(18 downto 0);
  signal c_4_i1_shift: signed(18 downto 0);
  signal c_4_arith: signed(18 downto 0);
  signal c_4_oshift: signed(18 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(18 downto 0);
  signal c_5_2_2_False_resize: signed(18 downto 0);
  signal c_5_2_2_False_shift: signed(18 downto 0);
  signal c_5_4_0_False_resize: signed(18 downto 0);
  signal c_5_4_0_False_shift: signed(18 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_2_0_False_resize: signed(19 downto 0);
  signal c_6_2_0_False_shift: signed(19 downto 0);
  signal c_6_4_1_False_resize: signed(19 downto 0);
  signal c_6_4_1_False_shift: signed(19 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_8_4_0_False_resize: signed(18 downto 0);
  signal c_8_4_0_False_shift: signed(18 downto 0);
  signal c_8_2_1_False_resize: signed(18 downto 0);
  signal c_8_2_1_False_shift: signed(18 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_11_0_False_resize: signed(23 downto 0);
  signal c_12_11_0_False_shift: signed(23 downto 0);
  signal c_12_10_3_False_resize: signed(23 downto 0);
  signal c_12_10_3_False_shift: signed(23 downto 0);
  signal c_12_7_0_False_resize: signed(23 downto 0);
  signal c_12_7_0_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(18 downto 0);
  signal c_14: signed(18 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(18 downto 0);
  signal c_16_2_1_False_resize: signed(18 downto 0);
  signal c_16_2_1_False_shift: signed(18 downto 0);
  signal c_16_4_0_False_resize: signed(18 downto 0);
  signal c_16_4_0_False_shift: signed(18 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(18 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_18_i0_resize: signed(22 downto 0);
  signal c_18_i1_resize: signed(22 downto 0);
  signal c_18_i0_shift: signed(22 downto 0);
  signal c_18_i1_shift: signed(22 downto 0);
  signal c_18_arith: signed(22 downto 0);
  signal c_18_oshift: signed(22 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(18 downto 0);
  signal c_20: signed(18 downto 0);
  signal c_21: signed(18 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_21_5_False_resize: signed(23 downto 0);
  signal c_24_21_5_False_shift: signed(23 downto 0);
  signal c_24_23_1_False_resize: signed(23 downto 0);
  signal c_24_23_1_False_shift: signed(23 downto 0);
  signal c_24_15_0_False_resize: signed(23 downto 0);
  signal c_24_15_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_3_2_False_resize: signed(21 downto 0);
  signal c_25_3_2_False_shift: signed(21 downto 0);
  signal c_25_17_0_False_resize: signed(21 downto 0);
  signal c_25_17_0_False_shift: signed(21 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(22 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_33_0_False_resize: signed(23 downto 0);
  signal c_34_33_0_False_shift: signed(23 downto 0);
  signal c_34_29_0_False_resize: signed(23 downto 0);
  signal c_34_29_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(19 downto 0);
  signal c_35_4_1_False_resize: signed(19 downto 0);
  signal c_35_4_1_False_shift: signed(19 downto 0);
  signal c_35_2_0_False_resize: signed(19 downto 0);
  signal c_35_2_0_False_shift: signed(19 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(19 downto 0);
  signal c_37: signed(19 downto 0);
  signal c_38: signed(19 downto 0);
  signal c_39: signed(19 downto 0);
  signal c_40: signed(19 downto 0);
  signal c_41: signed(19 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_i0_resize: signed(23 downto 0);
  signal c_42_i1_resize: signed(23 downto 0);
  signal c_42_i0_shift: signed(23 downto 0);
  signal c_42_i1_shift: signed(23 downto 0);
  signal c_42_arith: signed(23 downto 0);
  signal c_42_oshift: signed(23 downto 0);
  signal c_42_sub_sel: std_logic;
  signal c_43: signed(22 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_42_0_False_resize: signed(23 downto 0);
  signal c_51_42_0_False_shift: signed(23 downto 0);
  signal c_51_50_0_False_resize: signed(23 downto 0);
  signal c_51_50_0_False_shift: signed(23 downto 0);
  signal c_51_48_3_False_resize: signed(23 downto 0);
  signal c_51_48_3_False_shift: signed(23 downto 0);
  signal c_51_sel: std_logic_vector(1 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_29_0_False_resize: signed(23 downto 0);
  signal c_54_29_0_False_shift: signed(23 downto 0);
  signal c_54_53_0_False_resize: signed(23 downto 0);
  signal c_54_53_0_False_shift: signed(23 downto 0);
  signal c_54_sel: std_logic_vector(0 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(22 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_58_1_False_resize: signed(23 downto 0);
  signal c_59_58_1_False_shift: signed(23 downto 0);
  signal c_59_42_0_False_resize: signed(23 downto 0);
  signal c_59_42_0_False_shift: signed(23 downto 0);
  signal c_59_56_0_False_resize: signed(23 downto 0);
  signal c_59_56_0_False_shift: signed(23 downto 0);
  signal c_59_sel: std_logic_vector(1 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_60_42_0_False_resize: signed(23 downto 0);
  signal c_60_42_0_False_shift: signed(23 downto 0);
  signal c_60_48_1_False_resize: signed(23 downto 0);
  signal c_60_48_1_False_shift: signed(23 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(23 downto 0);
  signal c_61_resize: signed(23 downto 0);
  signal c_62: signed(23 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_64_resize: signed(23 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_65_resize: signed(23 downto 0);
  signal c_66: signed(23 downto 0);
  signal c_67: signed(23 downto 0);
  signal c_68: signed(23 downto 0);
  signal c_69: signed(23 downto 0);
  signal c_70: signed(23 downto 0);
  signal c_71: signed(23 downto 0);
  signal c_71_resize: signed(23 downto 0);
  signal c_72: signed(23 downto 0);
  signal c_72_resize: signed(23 downto 0);
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
  -- output node 0 with id 61
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_61);
    end if;
  end process;
  -- output node 1 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_64);
    end if;
  end process;
  -- output node 2 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_65);
    end if;
  end process;
  -- output node 3 with id 71
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_71);
    end if;
  end process;
  -- output node 4 with id 72
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_72);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [4], [1], [8]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  c_1_0_2_False_resize <= resize(c_0, 19);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_0_False_shift;
        when "01" => c_1 <= c_1_0_3_False_shift;
        when others => c_1 <= c_1_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[15], [65], [15], [127]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
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
  -- node of type 'add_sub' in stage 1 with id 4 and associated fundamentals [[5], [5], [5], [3]]
  with config_select_1 select c_4_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
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
      sub_i => c_4_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[4], [4], [5], [4]]
  c_5_2_2_False_resize <= resize(c_2, 19);
  c_5_2_2_False_shift <= shift_left(c_5_2_2_False_resize, 2);
  c_5_4_0_False_resize <= c_4;
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_2_2_False_shift;
        when others => c_5 <= c_5_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[10], [1], [1], [6]]
  c_6_2_0_False_resize <= resize(c_2, 20);
  c_6_2_0_False_shift <= shift_left(c_6_2_0_False_resize, 0);
  c_6_4_1_False_resize <= resize(c_4, 20);
  c_6_4_1_False_shift <= shift_left(c_6_4_1_False_resize, 1);
  with config_select_2 select c_6_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_2_0_False_shift;
        when others => c_6 <= c_6_4_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 7 and associated fundamentals [[118], [127], [159], [122]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[5], [5], [2], [3]]
  c_8_4_0_False_resize <= c_4;
  c_8_4_0_False_shift <= shift_left(c_8_4_0_False_resize, 0);
  c_8_2_1_False_resize <= resize(c_2, 19);
  c_8_2_1_False_shift <= shift_left(c_8_2_1_False_resize, 1);
  with config_select_2 select c_8_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_4_0_False_shift;
        when others => c_8 <= c_8_2_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 9 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[15], [65], [15], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 12 and associated fundamentals [[8], [65], [159], [122]]
  c_12_11_0_False_resize <= resize(c_11, 24);
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  c_12_10_3_False_resize <= resize(c_10, 24);
  c_12_10_3_False_shift <= shift_left(c_12_10_3_False_resize, 3);
  c_12_7_0_False_resize <= c_7;
  c_12_7_0_False_shift <= shift_left(c_12_7_0_False_resize, 0);
  with config_select_4 select c_12_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_11_0_False_shift;
        when "01" => c_12 <= c_12_10_3_False_shift;
        when others => c_12 <= c_12_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[5], [5], [2], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[5], [5], [2], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 15 and associated fundamentals [[152], [95], [223], [218]]
  with config_select_5 select c_15_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_12,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[2], [5], [5], [2]]
  c_16_2_1_False_resize <= resize(c_2, 19);
  c_16_2_1_False_shift <= shift_left(c_16_2_1_False_resize, 1);
  c_16_4_0_False_resize <= c_4;
  c_16_4_0_False_shift <= shift_left(c_16_4_0_False_resize, 0);
  with config_select_2 select c_16_sel <= 
    "0" when "11",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_2_1_False_shift;
        when others => c_16 <= c_16_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 17 and associated fundamentals [[5], [5], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 18 and associated fundamentals [[37], [75], [75], [35]]
  with config_select_3 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[5], [5], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[5], [5], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[5], [5], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[118], [127], [159], [122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[118], [127], [159], [122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 24 and associated fundamentals [[236], [160], [160], [218]]
  c_24_21_5_False_resize <= resize(c_21, 24);
  c_24_21_5_False_shift <= shift_left(c_24_21_5_False_resize, 5);
  c_24_23_1_False_resize <= c_23;
  c_24_23_1_False_shift <= shift_left(c_24_23_1_False_resize, 1);
  c_24_15_0_False_resize <= c_15;
  c_24_15_0_False_shift <= shift_left(c_24_15_0_False_resize, 0);
  with config_select_6 select c_24_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_21_5_False_shift;
        when "01" => c_24 <= c_24_23_1_False_shift;
        when others => c_24 <= c_24_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[5], [5], [60], [3]]
  c_25_3_2_False_resize <= c_3(21 downto 0);
  c_25_3_2_False_shift <= shift_left(c_25_3_2_False_resize, 2);
  c_25_17_0_False_resize <= resize(c_17, 22);
  c_25_17_0_False_shift <= shift_left(c_25_17_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_3_2_False_shift;
        when others => c_25 <= c_25_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[5], [5], [60], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[5], [5], [60], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[5], [5], [60], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 29 and associated fundamentals [[241], [155], [220], [221]]
  with config_select_7 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_29_sub_sel,
      x_i => c_24,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[37], [75], [75], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[37], [75], [75], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[37], [75], [75], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[37], [75], [75], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 34 and associated fundamentals [[37], [75], [220], [35]]
  c_34_33_0_False_resize <= resize(c_33, 24);
  c_34_33_0_False_shift <= shift_left(c_34_33_0_False_resize, 0);
  c_34_29_0_False_resize <= c_29;
  c_34_29_0_False_shift <= shift_left(c_34_29_0_False_resize, 0);
  with config_select_8 select c_34_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_33_0_False_shift;
        when others => c_34 <= c_34_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 35 and associated fundamentals [[10], [1], [10], [6]]
  c_35_4_1_False_resize <= resize(c_4, 20);
  c_35_4_1_False_shift <= shift_left(c_35_4_1_False_resize, 1);
  c_35_2_0_False_resize <= resize(c_2, 20);
  c_35_2_0_False_shift <= shift_left(c_35_2_0_False_resize, 0);
  with config_select_2 select c_35_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_4_1_False_shift;
        when others => c_35 <= c_35_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 36 and associated fundamentals [[10], [1], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 37 and associated fundamentals [[10], [1], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 38 and associated fundamentals [[10], [1], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[10], [1], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[10], [1], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[10], [1], [10], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 42 and associated fundamentals [[47], [76], [210], [41]]
  with config_select_9 select c_42_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
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
      sub_i => c_42_sub_sel,
      x_i => c_34,
      y_i => c_41,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 43 and associated fundamentals [[15], [65], [15], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 44 and associated fundamentals [[15], [65], [15], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 45 and associated fundamentals [[15], [65], [15], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 46 and associated fundamentals [[15], [65], [15], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[15], [65], [15], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[15], [65], [15], [127]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[241], [155], [220], [221]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[241], [155], [220], [221]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 51 and associated fundamentals [[120], [76], [220], [221]]
  c_51_42_0_False_resize <= c_42;
  c_51_42_0_False_shift <= shift_left(c_51_42_0_False_resize, 0);
  c_51_50_0_False_resize <= c_50;
  c_51_50_0_False_shift <= shift_left(c_51_50_0_False_resize, 0);
  c_51_48_3_False_resize <= resize(c_48, 24);
  c_51_48_3_False_shift <= shift_left(c_51_48_3_False_resize, 3);
  with config_select_10 select c_51_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "00" => c_51 <= c_51_42_0_False_shift;
        when "01" => c_51 <= c_51_50_0_False_shift;
        when others => c_51 <= c_51_48_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 52 and associated fundamentals [[118], [127], [159], [122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 53 and associated fundamentals [[118], [127], [159], [122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 54 and associated fundamentals [[241], [155], [159], [122]]
  c_54_29_0_False_resize <= c_29;
  c_54_29_0_False_shift <= shift_left(c_54_29_0_False_resize, 0);
  c_54_53_0_False_resize <= c_53;
  c_54_53_0_False_shift <= shift_left(c_54_53_0_False_resize, 0);
  with config_select_8 select c_54_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "0" => c_54 <= c_54_29_0_False_shift;
        when others => c_54 <= c_54_53_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[118], [127], [159], [122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[118], [127], [159], [122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 57 and associated fundamentals [[37], [75], [75], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[37], [75], [75], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 59 and associated fundamentals [[118], [127], [150], [41]]
  c_59_58_1_False_resize <= resize(c_58, 24);
  c_59_58_1_False_shift <= shift_left(c_59_58_1_False_resize, 1);
  c_59_42_0_False_resize <= c_42;
  c_59_42_0_False_shift <= shift_left(c_59_42_0_False_resize, 0);
  c_59_56_0_False_resize <= c_56;
  c_59_56_0_False_shift <= shift_left(c_59_56_0_False_resize, 0);
  with config_select_10 select c_59_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "00" => c_59 <= c_59_58_1_False_shift;
        when "01" => c_59 <= c_59_42_0_False_shift;
        when others => c_59 <= c_59_56_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 60 and associated fundamentals [[47], [130], [210], [254]]
  c_60_42_0_False_resize <= c_42;
  c_60_42_0_False_shift <= shift_left(c_60_42_0_False_resize, 0);
  c_60_48_1_False_resize <= resize(c_48, 24);
  c_60_48_1_False_shift <= shift_left(c_60_48_1_False_resize, 1);
  with config_select_10 select c_60_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_42_0_False_shift;
        when others => c_60 <= c_60_48_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 61 and associated fundamentals [[120], [76], [220], [221]]
  c_61_resize <= c_51;
  c_61 <= shift_left(c_61_resize, 0);
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[241], [155], [159], [122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[241], [155], [159], [122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 64 and associated fundamentals [[241], [155], [159], [122]]
  c_64_resize <= c_63;
  c_64 <= shift_left(c_64_resize, 0);
  -- node of type 'output' in stage 10 with id 65 and associated fundamentals [[118], [127], [150], [41]]
  c_65_resize <= c_59;
  c_65 <= shift_left(c_65_resize, 0);
  -- node of type 'register' in stage 6 with id 66 and associated fundamentals [[152], [95], [223], [218]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 67 and associated fundamentals [[152], [95], [223], [218]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 68 and associated fundamentals [[152], [95], [223], [218]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 69 and associated fundamentals [[152], [95], [223], [218]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 70 and associated fundamentals [[152], [95], [223], [218]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 71 and associated fundamentals [[152], [95], [223], [218]]
  c_71_resize <= c_70;
  c_71 <= shift_left(c_71_resize, 0);
  -- node of type 'output' in stage 10 with id 72 and associated fundamentals [[47], [130], [210], [254]]
  c_72_resize <= c_60;
  c_72 <= shift_left(c_72_resize, 0);
end architecture;

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
  signal config_select_13: std_logic_vector(1 downto 0);
  signal config_select_14: std_logic_vector(1 downto 0);
  signal config_select_15: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_4_4_False_resize: signed(19 downto 0);
  signal c_5_4_4_False_shift: signed(19 downto 0);
  signal c_5_3_0_False_resize: signed(19 downto 0);
  signal c_5_3_0_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_4_0_False_resize: signed(18 downto 0);
  signal c_6_4_0_False_shift: signed(18 downto 0);
  signal c_6_3_0_False_resize: signed(18 downto 0);
  signal c_6_3_0_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_7_0_False_resize: signed(22 downto 0);
  signal c_10_7_0_False_shift: signed(22 downto 0);
  signal c_10_9_6_False_resize: signed(22 downto 0);
  signal c_10_9_6_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_14_0_False_resize: signed(22 downto 0);
  signal c_15_14_0_False_shift: signed(22 downto 0);
  signal c_15_12_0_False_resize: signed(22 downto 0);
  signal c_15_12_0_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_20: signed(19 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_21_i0_resize: signed(22 downto 0);
  signal c_21_i1_resize: signed(22 downto 0);
  signal c_21_i0_shift: signed(22 downto 0);
  signal c_21_i1_shift: signed(22 downto 0);
  signal c_21_arith: signed(22 downto 0);
  signal c_21_oshift: signed(21 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(22 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_23_0_False_resize: signed(22 downto 0);
  signal c_24_23_0_False_shift: signed(22 downto 0);
  signal c_24_21_0_False_resize: signed(22 downto 0);
  signal c_24_21_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_25_4_0_False_resize: signed(21 downto 0);
  signal c_25_4_0_False_shift: signed(21 downto 0);
  signal c_25_3_3_False_resize: signed(21 downto 0);
  signal c_25_3_3_False_shift: signed(21 downto 0);
  signal c_25_4_5_False_resize: signed(21 downto 0);
  signal c_25_4_5_False_shift: signed(21 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_i0_resize: signed(23 downto 0);
  signal c_32_i1_resize: signed(23 downto 0);
  signal c_32_i0_shift: signed(23 downto 0);
  signal c_32_i1_shift: signed(23 downto 0);
  signal c_32_arith: signed(23 downto 0);
  signal c_32_oshift: signed(23 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_34_0_False_resize: signed(22 downto 0);
  signal c_35_34_0_False_shift: signed(22 downto 0);
  signal c_35_32_0_False_resize: signed(22 downto 0);
  signal c_35_32_0_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(19 downto 0);
  signal c_37: signed(19 downto 0);
  signal c_38: signed(19 downto 0);
  signal c_39: signed(19 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_i0_resize: signed(23 downto 0);
  signal c_40_i1_resize: signed(23 downto 0);
  signal c_40_i0_shift: signed(23 downto 0);
  signal c_40_i1_shift: signed(23 downto 0);
  signal c_40_arith: signed(23 downto 0);
  signal c_40_oshift: signed(23 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(23 downto 0);
  signal c_41_21_0_False_resize: signed(23 downto 0);
  signal c_41_21_0_False_shift: signed(23 downto 0);
  signal c_41_23_1_False_resize: signed(23 downto 0);
  signal c_41_23_1_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(19 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_42_2_False_resize: signed(23 downto 0);
  signal c_43_42_2_False_shift: signed(23 downto 0);
  signal c_43_40_0_False_resize: signed(23 downto 0);
  signal c_43_40_0_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_46_45_1_False_resize: signed(22 downto 0);
  signal c_46_45_1_False_shift: signed(22 downto 0);
  signal c_46_21_0_False_resize: signed(22 downto 0);
  signal c_46_21_0_False_shift: signed(22 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_48_1_False_resize: signed(23 downto 0);
  signal c_49_48_1_False_shift: signed(23 downto 0);
  signal c_49_40_0_False_resize: signed(23 downto 0);
  signal c_49_40_0_False_shift: signed(23 downto 0);
  signal c_49_sel: std_logic_vector(0 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_resize: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(23 downto 0);
  signal c_58_resize: signed(23 downto 0);
  signal c_59: signed(23 downto 0);
  signal c_59_resize: signed(23 downto 0);
  signal c_60: signed(22 downto 0);
  signal c_61: signed(22 downto 0);
  signal c_62: signed(22 downto 0);
  signal c_63: signed(22 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_64_resize: signed(23 downto 0);
  signal c_65: signed(23 downto 0);
  signal c_65_resize: signed(23 downto 0);
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
      config_select_14 <= config_select_13;
      config_select_15 <= config_select_14;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 1 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_58);
    end if;
  end process;
  -- output node 2 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 3 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_64);
    end if;
  end process;
  -- output node 4 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_65);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "1" when "00",
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
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[15], [7], [15]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[15], [16], [16]]
  c_5_4_4_False_resize <= resize(c_4, 20);
  c_5_4_4_False_shift <= shift_left(c_5_4_4_False_resize, 4);
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_4_4_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [7], [1]]
  c_6_4_0_False_resize <= resize(c_4, 19);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_3_0_False_resize <= c_3(18 downto 0);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_4_0_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[59], [71], [63]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
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
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[59], [71], [64]]
  c_10_7_0_False_resize <= c_7;
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  c_10_9_6_False_resize <= resize(c_9, 23);
  c_10_9_6_False_shift <= shift_left(c_10_9_6_False_resize, 6);
  with config_select_5 select c_10_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_7_0_False_shift;
        when others => c_10 <= c_10_9_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 11 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_9 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 12 and associated fundamentals [[43], [87], [80]]
  with config_select_6 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 0,
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
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[59], [71], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 14 and associated fundamentals [[59], [71], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 15 and associated fundamentals [[43], [87], [63]]
  c_15_14_0_False_resize <= c_14;
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  c_15_12_0_False_resize <= c_12;
  c_15_12_0_False_shift <= shift_left(c_15_12_0_False_resize, 0);
  with config_select_7 select c_15_sel <= 
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_14_0_False_shift;
        when others => c_15 <= c_15_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[15], [7], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[15], [7], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[15], [7], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[15], [7], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 20 and associated fundamentals [[15], [7], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 21 and associated fundamentals [[29], [47], [24]]
  with config_select_8 select c_21_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_21_sub_sel,
      x_i => c_15,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[43], [87], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 23 and associated fundamentals [[43], [87], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 24 and associated fundamentals [[29], [87], [80]]
  c_24_23_0_False_resize <= c_23;
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  c_24_21_0_False_resize <= resize(c_21, 23);
  c_24_21_0_False_shift <= shift_left(c_24_21_0_False_resize, 0);
  with config_select_9 select c_24_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_23_0_False_shift;
        when others => c_24 <= c_24_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[32], [56], [1]]
  c_25_4_0_False_resize <= resize(c_4, 22);
  c_25_4_0_False_shift <= shift_left(c_25_4_0_False_resize, 0);
  c_25_3_3_False_resize <= resize(c_3, 22);
  c_25_3_3_False_shift <= shift_left(c_25_3_3_False_resize, 3);
  c_25_4_5_False_resize <= resize(c_4, 22);
  c_25_4_5_False_shift <= shift_left(c_25_4_5_False_resize, 5);
  with config_select_3 select c_25_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_4_0_False_shift;
        when "01" => c_25 <= c_25_3_3_False_shift;
        when others => c_25 <= c_25_4_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[32], [56], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[32], [56], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[32], [56], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[32], [56], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 30 and associated fundamentals [[32], [56], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 31 and associated fundamentals [[32], [56], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'add' in stage 10 with id 32 and associated fundamentals [[93], [199], [82]]
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 24,
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
      x_i => c_24,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 33 and associated fundamentals [[43], [87], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 34 and associated fundamentals [[43], [87], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 35 and associated fundamentals [[43], [87], [82]]
  c_35_34_0_False_resize <= c_34;
  c_35_34_0_False_shift <= shift_left(c_35_34_0_False_resize, 0);
  c_35_32_0_False_resize <= c_32(22 downto 0);
  c_35_32_0_False_shift <= shift_left(c_35_32_0_False_resize, 0);
  with config_select_11 select c_35_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_34_0_False_shift;
        when others => c_35 <= c_35_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[15], [7], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 37 and associated fundamentals [[15], [7], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 38 and associated fundamentals [[15], [7], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 39 and associated fundamentals [[15], [7], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 40 and associated fundamentals [[77], [143], [202]]
  with config_select_12 select c_40_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
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
      sub_i => c_40_sub_sel,
      x_i => c_39,
      y_i => c_35,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 41 and associated fundamentals [[29], [174], [24]]
  c_41_21_0_False_resize <= resize(c_21, 24);
  c_41_21_0_False_shift <= shift_left(c_41_21_0_False_resize, 0);
  c_41_23_1_False_resize <= resize(c_23, 24);
  c_41_23_1_False_shift <= shift_left(c_41_23_1_False_resize, 1);
  with config_select_9 select c_41_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_21_0_False_shift;
        when others => c_41 <= c_41_23_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 42 and associated fundamentals [[15], [7], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 43 and associated fundamentals [[77], [28], [202]]
  c_43_42_2_False_resize <= resize(c_42, 24);
  c_43_42_2_False_shift <= shift_left(c_43_42_2_False_resize, 2);
  c_43_40_0_False_resize <= c_40;
  c_43_40_0_False_shift <= shift_left(c_43_40_0_False_resize, 0);
  with config_select_13 select c_43_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_42_2_False_shift;
        when others => c_43 <= c_43_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[59], [71], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[59], [71], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 46 and associated fundamentals [[118], [47], [126]]
  c_46_45_1_False_resize <= c_45;
  c_46_45_1_False_shift <= shift_left(c_46_45_1_False_resize, 1);
  c_46_21_0_False_resize <= resize(c_21, 23);
  c_46_21_0_False_shift <= shift_left(c_46_21_0_False_resize, 0);
  with config_select_9 select c_46_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_45_1_False_shift;
        when others => c_46 <= c_46_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 47 and associated fundamentals [[43], [87], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 48 and associated fundamentals [[43], [87], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 49 and associated fundamentals [[86], [143], [160]]
  c_49_48_1_False_resize <= resize(c_48, 24);
  c_49_48_1_False_shift <= shift_left(c_49_48_1_False_resize, 1);
  c_49_40_0_False_resize <= c_40;
  c_49_40_0_False_shift <= shift_left(c_49_40_0_False_resize, 0);
  with config_select_13 select c_49_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "0" => c_49 <= c_49_48_1_False_shift;
        when others => c_49 <= c_49_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 50 and associated fundamentals [[29], [174], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 51 and associated fundamentals [[29], [174], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 52 and associated fundamentals [[29], [174], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 53 and associated fundamentals [[29], [174], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 54 and associated fundamentals [[29], [174], [24]]
  c_54_resize <= c_53;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'register' in stage 11 with id 55 and associated fundamentals [[93], [199], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 56 and associated fundamentals [[93], [199], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 57 and associated fundamentals [[93], [199], [82]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 58 and associated fundamentals [[93], [199], [82]]
  c_58_resize <= c_57;
  c_58 <= shift_left(c_58_resize, 0);
  -- node of type 'output' in stage 13 with id 59 and associated fundamentals [[77], [28], [202]]
  c_59_resize <= c_43;
  c_59 <= shift_left(c_59_resize, 0);
  -- node of type 'register' in stage 10 with id 60 and associated fundamentals [[118], [47], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 61 and associated fundamentals [[118], [47], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 62 and associated fundamentals [[118], [47], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 63 and associated fundamentals [[118], [47], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 64 and associated fundamentals [[236], [94], [252]]
  c_64_resize <= resize(c_63, 24);
  c_64 <= shift_left(c_64_resize, 1);
  -- node of type 'output' in stage 13 with id 65 and associated fundamentals [[86], [143], [160]]
  c_65_resize <= c_49;
  c_65 <= shift_left(c_65_resize, 0);
end architecture;

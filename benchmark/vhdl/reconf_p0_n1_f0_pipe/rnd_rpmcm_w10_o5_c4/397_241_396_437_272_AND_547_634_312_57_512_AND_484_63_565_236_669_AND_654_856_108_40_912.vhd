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
  signal c_1: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
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
  signal c_4: signed(15 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_4_5_False_resize: signed(22 downto 0);
  signal c_5_4_5_False_shift: signed(22 downto 0);
  signal c_5_3_5_False_resize: signed(22 downto 0);
  signal c_5_3_5_False_shift: signed(22 downto 0);
  signal c_5_4_6_False_resize: signed(22 downto 0);
  signal c_5_4_6_False_shift: signed(22 downto 0);
  signal c_5_3_0_False_resize: signed(22 downto 0);
  signal c_5_3_0_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_3_0_False_resize: signed(18 downto 0);
  signal c_6_3_0_False_shift: signed(18 downto 0);
  signal c_6_4_0_False_resize: signed(18 downto 0);
  signal c_6_4_0_False_shift: signed(18 downto 0);
  signal c_6_4_1_False_resize: signed(18 downto 0);
  signal c_6_4_1_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(21 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_7_0_False_resize: signed(22 downto 0);
  signal c_10_7_0_False_shift: signed(22 downto 0);
  signal c_10_7_1_False_resize: signed(22 downto 0);
  signal c_10_7_1_False_shift: signed(22 downto 0);
  signal c_10_9_3_False_resize: signed(22 downto 0);
  signal c_10_9_3_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_0_0_False_resize: signed(23 downto 0);
  signal c_11_0_0_False_shift: signed(23 downto 0);
  signal c_11_0_8_False_resize: signed(23 downto 0);
  signal c_11_0_8_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_i0_resize: signed(24 downto 0);
  signal c_16_i1_resize: signed(24 downto 0);
  signal c_16_i0_shift: signed(24 downto 0);
  signal c_16_i1_shift: signed(24 downto 0);
  signal c_16_arith: signed(24 downto 0);
  signal c_16_oshift: signed(24 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(23 downto 0);
  signal c_17_9_6_False_resize: signed(23 downto 0);
  signal c_17_9_6_False_shift: signed(23 downto 0);
  signal c_17_7_1_False_resize: signed(23 downto 0);
  signal c_17_7_1_False_shift: signed(23 downto 0);
  signal c_17_7_0_False_resize: signed(23 downto 0);
  signal c_17_7_0_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_19_0_False_resize: signed(24 downto 0);
  signal c_20_19_0_False_shift: signed(24 downto 0);
  signal c_20_16_0_False_resize: signed(24 downto 0);
  signal c_20_16_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_16_2_False_resize: signed(24 downto 0);
  signal c_26_16_2_False_shift: signed(24 downto 0);
  signal c_26_25_0_False_resize: signed(24 downto 0);
  signal c_26_25_0_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_27_4_4_False_resize: signed(21 downto 0);
  signal c_27_4_4_False_shift: signed(21 downto 0);
  signal c_27_3_0_False_resize: signed(21 downto 0);
  signal c_27_3_0_False_shift: signed(21 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_i0_resize: signed(25 downto 0);
  signal c_32_i1_resize: signed(25 downto 0);
  signal c_32_i0_shift: signed(25 downto 0);
  signal c_32_i1_shift: signed(25 downto 0);
  signal c_32_arith: signed(25 downto 0);
  signal c_32_oshift: signed(25 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(15 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(15 downto 0);
  signal c_36: signed(15 downto 0);
  signal c_37: signed(15 downto 0);
  signal c_38: signed(15 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_43_32_0_False_resize: signed(24 downto 0);
  signal c_43_32_0_False_shift: signed(24 downto 0);
  signal c_43_42_2_False_resize: signed(24 downto 0);
  signal c_43_42_2_False_shift: signed(24 downto 0);
  signal c_43_40_1_False_resize: signed(24 downto 0);
  signal c_43_40_1_False_shift: signed(24 downto 0);
  signal c_43_38_0_False_resize: signed(24 downto 0);
  signal c_43_38_0_False_shift: signed(24 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_32_1_False_resize: signed(25 downto 0);
  signal c_44_32_1_False_shift: signed(25 downto 0);
  signal c_44_42_0_False_resize: signed(25 downto 0);
  signal c_44_42_0_False_shift: signed(25 downto 0);
  signal c_44_40_2_False_resize: signed(25 downto 0);
  signal c_44_40_2_False_shift: signed(25 downto 0);
  signal c_44_23_0_False_resize: signed(25 downto 0);
  signal c_44_23_0_False_shift: signed(25 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_46_23_0_False_resize: signed(24 downto 0);
  signal c_46_23_0_False_shift: signed(24 downto 0);
  signal c_46_40_3_False_resize: signed(24 downto 0);
  signal c_46_40_3_False_shift: signed(24 downto 0);
  signal c_46_40_0_False_resize: signed(24 downto 0);
  signal c_46_40_0_False_shift: signed(24 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_47_16_1_False_resize: signed(22 downto 0);
  signal c_47_16_1_False_shift: signed(22 downto 0);
  signal c_47_19_1_False_resize: signed(22 downto 0);
  signal c_47_19_1_False_shift: signed(22 downto 0);
  signal c_47_19_0_False_resize: signed(22 downto 0);
  signal c_47_19_0_False_shift: signed(22 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_50_i0_resize: signed(24 downto 0);
  signal c_50_i1_resize: signed(24 downto 0);
  signal c_50_i0_shift: signed(24 downto 0);
  signal c_50_i1_shift: signed(24 downto 0);
  signal c_50_arith: signed(24 downto 0);
  signal c_50_oshift: signed(24 downto 0);
  signal c_50_sub_sel: std_logic;
  signal c_51: signed(24 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_52_2_False_resize: signed(25 downto 0);
  signal c_53_52_2_False_shift: signed(25 downto 0);
  signal c_53_45_0_False_resize: signed(25 downto 0);
  signal c_53_45_0_False_shift: signed(25 downto 0);
  signal c_53_sel: std_logic_vector(0 downto 0);
  signal c_54: signed(21 downto 0);
  signal c_55: signed(21 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_23_0_False_resize: signed(25 downto 0);
  signal c_56_23_0_False_shift: signed(25 downto 0);
  signal c_56_55_0_False_resize: signed(25 downto 0);
  signal c_56_55_0_False_shift: signed(25 downto 0);
  signal c_56_42_3_False_resize: signed(25 downto 0);
  signal c_56_42_3_False_shift: signed(25 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_40_2_False_resize: signed(25 downto 0);
  signal c_57_40_2_False_shift: signed(25 downto 0);
  signal c_57_32_3_False_resize: signed(25 downto 0);
  signal c_57_32_3_False_shift: signed(25 downto 0);
  signal c_57_32_0_False_resize: signed(25 downto 0);
  signal c_57_32_0_False_shift: signed(25 downto 0);
  signal c_57_sel: std_logic_vector(1 downto 0);
  signal c_58: signed(21 downto 0);
  signal c_59: signed(21 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_60_50_0_False_resize: signed(24 downto 0);
  signal c_60_50_0_False_shift: signed(24 downto 0);
  signal c_60_59_3_False_resize: signed(24 downto 0);
  signal c_60_59_3_False_shift: signed(24 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(15 downto 0);
  signal c_62: signed(15 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_50_3_False_resize: signed(25 downto 0);
  signal c_65_50_3_False_shift: signed(25 downto 0);
  signal c_65_45_0_False_resize: signed(25 downto 0);
  signal c_65_45_0_False_shift: signed(25 downto 0);
  signal c_65_62_9_False_resize: signed(25 downto 0);
  signal c_65_62_9_False_shift: signed(25 downto 0);
  signal c_65_64_2_False_resize: signed(25 downto 0);
  signal c_65_64_2_False_shift: signed(25 downto 0);
  signal c_65_sel: std_logic_vector(1 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_66_resize: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_69_resize: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_72_resize: signed(25 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_73_resize: signed(24 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_74_resize: signed(25 downto 0);
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
  -- output node 0 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_66);
    end if;
  end process;
  -- output node 1 with id 69
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_69);
    end if;
  end process;
  -- output node 2 with id 72
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_72);
    end if;
  end process;
  -- output node 3 with id 73
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_73);
    end if;
  end process;
  -- output node 4 with id 74
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_74);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [16], [1]]
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_4_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [3], [63], [5]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[96], [64], [63], [32]]
  c_5_4_5_False_resize <= resize(c_4, 23);
  c_5_4_5_False_shift <= shift_left(c_5_4_5_False_resize, 5);
  c_5_3_5_False_resize <= resize(c_3, 23);
  c_5_3_5_False_shift <= shift_left(c_5_3_5_False_resize, 5);
  c_5_4_6_False_resize <= resize(c_4, 23);
  c_5_4_6_False_shift <= shift_left(c_5_4_6_False_resize, 6);
  c_5_3_0_False_resize <= resize(c_3, 23);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_4_5_False_shift;
        when "01" => c_5 <= c_5_3_5_False_shift;
        when "10" => c_5 <= c_5_4_6_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[3], [1], [2], [5]]
  c_6_3_0_False_resize <= c_3(18 downto 0);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_4_0_False_resize <= resize(c_4, 19);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_4_1_False_resize <= resize(c_4, 19);
  c_6_4_1_False_shift <= shift_left(c_6_4_1_False_resize, 1);
  with config_select_3 select c_6_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_0_False_shift;
        when "01" => c_6 <= c_6_4_0_False_shift;
        when others => c_6 <= c_6_4_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[99], [63], [61], [27]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
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
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[3], [3], [63], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[3], [3], [63], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[24], [126], [61], [54]]
  c_10_7_0_False_resize <= c_7;
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  c_10_7_1_False_resize <= c_7;
  c_10_7_1_False_shift <= shift_left(c_10_7_1_False_resize, 1);
  c_10_9_3_False_resize <= resize(c_9, 23);
  c_10_9_3_False_shift <= shift_left(c_10_9_3_False_resize, 3);
  with config_select_5 select c_10_sel <= 
    "00" when "10",
    "01" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_7_0_False_shift;
        when "01" => c_10 <= c_10_7_1_False_shift;
        when others => c_10 <= c_10_9_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[1], [256], [1], [1]]
  c_11_0_0_False_resize <= resize(c_0, 24);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  c_11_0_8_False_resize <= resize(c_0, 24);
  c_11_0_8_False_shift <= shift_left(c_11_0_8_False_resize, 8);
  with config_select_1 select c_11_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_0_0_False_shift;
        when others => c_11 <= c_11_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[1], [256], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[1], [256], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[1], [256], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[1], [256], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 16 and associated fundamentals [[49], [508], [121], [107]]
  with config_select_6 select c_16_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_16_sub_sel,
      x_i => c_10,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[192], [126], [122], [27]]
  c_17_9_6_False_resize <= resize(c_9, 24);
  c_17_9_6_False_shift <= shift_left(c_17_9_6_False_resize, 6);
  c_17_7_1_False_resize <= resize(c_7, 24);
  c_17_7_1_False_shift <= shift_left(c_17_7_1_False_resize, 1);
  c_17_7_0_False_resize <= resize(c_7, 24);
  c_17_7_0_False_shift <= shift_left(c_17_7_0_False_resize, 0);
  with config_select_5 select c_17_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_9_6_False_shift;
        when "01" => c_17 <= c_17_7_1_False_shift;
        when others => c_17 <= c_17_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[3], [3], [63], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[3], [3], [63], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[49], [508], [63], [107]]
  c_20_19_0_False_resize <= resize(c_19, 25);
  c_20_19_0_False_shift <= shift_left(c_20_19_0_False_resize, 0);
  c_20_16_0_False_resize <= c_16;
  c_20_16_0_False_shift <= shift_left(c_20_16_0_False_resize, 0);
  with config_select_7 select c_20_sel <= 
    "0" when "10",
    "1" when "01",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_19_0_False_shift;
        when others => c_20 <= c_20_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[192], [126], [122], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[192], [126], [122], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 23 and associated fundamentals [[241], [634], [185], [134]]
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_22,
      y_i => c_20,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[99], [63], [61], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[99], [63], [61], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[196], [63], [61], [428]]
  c_26_16_2_False_resize <= c_16;
  c_26_16_2_False_shift <= shift_left(c_26_16_2_False_resize, 2);
  c_26_25_0_False_resize <= resize(c_25, 25);
  c_26_25_0_False_shift <= shift_left(c_26_25_0_False_resize, 0);
  with config_select_7 select c_26_sel <= 
    "0" when "00",
    "0" when "11",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_16_2_False_shift;
        when others => c_26 <= c_26_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[16], [3], [63], [16]]
  c_27_4_4_False_resize <= resize(c_4, 22);
  c_27_4_4_False_shift <= shift_left(c_27_4_4_False_resize, 4);
  c_27_3_0_False_resize <= c_3;
  c_27_3_0_False_shift <= shift_left(c_27_3_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "0" when "00",
    "0" when "11",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_4_4_False_shift;
        when others => c_27 <= c_27_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 28 and associated fundamentals [[16], [3], [63], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[16], [3], [63], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[16], [3], [63], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[16], [3], [63], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 32 and associated fundamentals [[68], [39], [565], [300]]
  with config_select_8 select c_32_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
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
      sub_i => c_32_sub_sel,
      x_i => c_26,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 33 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 34 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[99], [63], [61], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[99], [63], [61], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[49], [508], [121], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[49], [508], [121], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 43 and associated fundamentals [[1], [39], [484], [54]]
  c_43_32_0_False_resize <= c_32(24 downto 0);
  c_43_32_0_False_shift <= shift_left(c_43_32_0_False_resize, 0);
  c_43_42_2_False_resize <= c_42;
  c_43_42_2_False_shift <= shift_left(c_43_42_2_False_resize, 2);
  c_43_40_1_False_resize <= resize(c_40, 25);
  c_43_40_1_False_shift <= shift_left(c_43_40_1_False_resize, 1);
  c_43_38_0_False_resize <= resize(c_38, 25);
  c_43_38_0_False_shift <= shift_left(c_43_38_0_False_resize, 0);
  with config_select_9 select c_43_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_32_0_False_shift;
        when "01" => c_43 <= c_43_42_2_False_shift;
        when "10" => c_43 <= c_43_40_1_False_shift;
        when others => c_43 <= c_43_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 44 and associated fundamentals [[396], [508], [185], [600]]
  c_44_32_1_False_resize <= c_32;
  c_44_32_1_False_shift <= shift_left(c_44_32_1_False_resize, 1);
  c_44_42_0_False_resize <= resize(c_42, 26);
  c_44_42_0_False_shift <= shift_left(c_44_42_0_False_resize, 0);
  c_44_40_2_False_resize <= resize(c_40, 26);
  c_44_40_2_False_shift <= shift_left(c_44_40_2_False_resize, 2);
  c_44_23_0_False_resize <= c_23;
  c_44_23_0_False_shift <= shift_left(c_44_23_0_False_resize, 0);
  with config_select_9 select c_44_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_32_1_False_shift;
        when "01" => c_44 <= c_44_42_0_False_shift;
        when "10" => c_44 <= c_44_40_2_False_shift;
        when others => c_44 <= c_44_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 10 with id 45 and associated fundamentals [[397], [547], [669], [654]]
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_43,
      y_i => c_44,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 46 and associated fundamentals [[241], [63], [488], [134]]
  c_46_23_0_False_resize <= c_23(24 downto 0);
  c_46_23_0_False_shift <= shift_left(c_46_23_0_False_resize, 0);
  c_46_40_3_False_resize <= resize(c_40, 25);
  c_46_40_3_False_shift <= shift_left(c_46_40_3_False_resize, 3);
  c_46_40_0_False_resize <= resize(c_40, 25);
  c_46_40_0_False_shift <= shift_left(c_46_40_0_False_resize, 0);
  with config_select_9 select c_46_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_23_0_False_shift;
        when "01" => c_46 <= c_46_40_3_False_shift;
        when others => c_46 <= c_46_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 47 and associated fundamentals [[98], [3], [126], [10]]
  c_47_16_1_False_resize <= c_16(22 downto 0);
  c_47_16_1_False_shift <= shift_left(c_47_16_1_False_resize, 1);
  c_47_19_1_False_resize <= resize(c_19, 23);
  c_47_19_1_False_shift <= shift_left(c_47_19_1_False_resize, 1);
  c_47_19_0_False_resize <= resize(c_19, 23);
  c_47_19_0_False_shift <= shift_left(c_47_19_0_False_resize, 0);
  with config_select_7 select c_47_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_16_1_False_shift;
        when "01" => c_47 <= c_47_19_1_False_shift;
        when others => c_47 <= c_47_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[98], [3], [126], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[98], [3], [126], [10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 50 and associated fundamentals [[437], [57], [236], [114]]
  with config_select_10 select c_50_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_50: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
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
      sub_i => c_50_sub_sel,
      x_i => c_46,
      y_i => c_49,
      z_o => c_50_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_50_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[49], [508], [121], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[49], [508], [121], [107]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 53 and associated fundamentals [[397], [547], [484], [654]]
  c_53_52_2_False_resize <= resize(c_52, 26);
  c_53_52_2_False_shift <= shift_left(c_53_52_2_False_resize, 2);
  c_53_45_0_False_resize <= c_45;
  c_53_45_0_False_shift <= shift_left(c_53_45_0_False_resize, 0);
  with config_select_11 select c_53_sel <= 
    "0" when "10",
    "1" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "0" => c_53 <= c_53_52_2_False_shift;
        when others => c_53 <= c_53_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 54 and associated fundamentals [[3], [3], [63], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[3], [3], [63], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 56 and associated fundamentals [[241], [634], [63], [856]]
  c_56_23_0_False_resize <= c_23;
  c_56_23_0_False_shift <= shift_left(c_56_23_0_False_resize, 0);
  c_56_55_0_False_resize <= resize(c_55, 26);
  c_56_55_0_False_shift <= shift_left(c_56_55_0_False_resize, 0);
  c_56_42_3_False_resize <= resize(c_42, 26);
  c_56_42_3_False_shift <= shift_left(c_56_42_3_False_resize, 3);
  with config_select_9 select c_56_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "00" => c_56 <= c_56_23_0_False_shift;
        when "01" => c_56 <= c_56_55_0_False_shift;
        when others => c_56 <= c_56_42_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 57 and associated fundamentals [[396], [312], [565], [108]]
  c_57_40_2_False_resize <= resize(c_40, 26);
  c_57_40_2_False_shift <= shift_left(c_57_40_2_False_resize, 2);
  c_57_32_3_False_resize <= c_32;
  c_57_32_3_False_shift <= shift_left(c_57_32_3_False_resize, 3);
  c_57_32_0_False_resize <= c_32;
  c_57_32_0_False_shift <= shift_left(c_57_32_0_False_resize, 0);
  with config_select_9 select c_57_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "00" => c_57 <= c_57_40_2_False_shift;
        when "01" => c_57 <= c_57_32_3_False_shift;
        when others => c_57 <= c_57_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[3], [3], [63], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 59 and associated fundamentals [[3], [3], [63], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 60 and associated fundamentals [[437], [57], [236], [40]]
  c_60_50_0_False_resize <= c_50;
  c_60_50_0_False_shift <= shift_left(c_60_50_0_False_resize, 0);
  c_60_59_3_False_resize <= resize(c_59, 25);
  c_60_59_3_False_shift <= shift_left(c_60_59_3_False_resize, 3);
  with config_select_11 select c_60_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_50_0_False_shift;
        when others => c_60 <= c_60_59_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 62 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 63 and associated fundamentals [[68], [39], [565], [300]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 64 and associated fundamentals [[68], [39], [565], [300]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 65 and associated fundamentals [[272], [512], [669], [912]]
  c_65_50_3_False_resize <= resize(c_50, 26);
  c_65_50_3_False_shift <= shift_left(c_65_50_3_False_resize, 3);
  c_65_45_0_False_resize <= c_45;
  c_65_45_0_False_shift <= shift_left(c_65_45_0_False_resize, 0);
  c_65_62_9_False_resize <= resize(c_62, 26);
  c_65_62_9_False_shift <= shift_left(c_65_62_9_False_resize, 9);
  c_65_64_2_False_resize <= c_64;
  c_65_64_2_False_shift <= shift_left(c_65_64_2_False_resize, 2);
  with config_select_11 select c_65_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "00" => c_65 <= c_65_50_3_False_shift;
        when "01" => c_65 <= c_65_45_0_False_shift;
        when "10" => c_65 <= c_65_62_9_False_shift;
        when others => c_65 <= c_65_64_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 66 and associated fundamentals [[397], [547], [484], [654]]
  c_66_resize <= c_53;
  c_66 <= shift_left(c_66_resize, 0);
  -- node of type 'register' in stage 10 with id 67 and associated fundamentals [[241], [634], [63], [856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 68 and associated fundamentals [[241], [634], [63], [856]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 69 and associated fundamentals [[241], [634], [63], [856]]
  c_69_resize <= c_68;
  c_69 <= shift_left(c_69_resize, 0);
  -- node of type 'register' in stage 10 with id 70 and associated fundamentals [[396], [312], [565], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 71 and associated fundamentals [[396], [312], [565], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 72 and associated fundamentals [[396], [312], [565], [108]]
  c_72_resize <= c_71;
  c_72 <= shift_left(c_72_resize, 0);
  -- node of type 'output' in stage 11 with id 73 and associated fundamentals [[437], [57], [236], [40]]
  c_73_resize <= c_60;
  c_73 <= shift_left(c_73_resize, 0);
  -- node of type 'output' in stage 11 with id 74 and associated fundamentals [[272], [512], [669], [912]]
  c_74_resize <= c_65;
  c_74 <= shift_left(c_74_resize, 0);
end architecture;

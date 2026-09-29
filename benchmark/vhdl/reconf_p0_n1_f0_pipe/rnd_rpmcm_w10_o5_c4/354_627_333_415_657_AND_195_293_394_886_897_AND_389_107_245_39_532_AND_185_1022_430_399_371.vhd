library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
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
  signal config_select_12: std_logic_vector(1 downto 0);
  signal config_select_13: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_0_2_False_resize: signed(19 downto 0);
  signal c_1_0_2_False_shift: signed(19 downto 0);
  signal c_1_0_1_False_resize: signed(19 downto 0);
  signal c_1_0_1_False_shift: signed(19 downto 0);
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
  signal c_4: signed(15 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_3_2_False_resize: signed(22 downto 0);
  signal c_5_3_2_False_shift: signed(22 downto 0);
  signal c_5_4_1_False_resize: signed(22 downto 0);
  signal c_5_4_1_False_shift: signed(22 downto 0);
  signal c_5_3_0_False_resize: signed(22 downto 0);
  signal c_5_3_0_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_4_1_False_resize: signed(21 downto 0);
  signal c_6_4_1_False_shift: signed(21 downto 0);
  signal c_6_4_0_False_resize: signed(21 downto 0);
  signal c_6_4_0_False_shift: signed(21 downto 0);
  signal c_6_3_3_False_resize: signed(21 downto 0);
  signal c_6_3_3_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(23 downto 0);
  signal c_7_i1_resize: signed(23 downto 0);
  signal c_7_i0_shift: signed(23 downto 0);
  signal c_7_i1_shift: signed(23 downto 0);
  signal c_7_arith: signed(23 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_9_5_False_resize: signed(23 downto 0);
  signal c_12_9_5_False_shift: signed(23 downto 0);
  signal c_12_11_0_False_resize: signed(23 downto 0);
  signal c_12_11_0_False_shift: signed(23 downto 0);
  signal c_12_7_0_False_resize: signed(23 downto 0);
  signal c_12_7_0_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_9_2_False_resize: signed(23 downto 0);
  signal c_13_9_2_False_shift: signed(23 downto 0);
  signal c_13_7_0_False_resize: signed(23 downto 0);
  signal c_13_7_0_False_shift: signed(23 downto 0);
  signal c_13_9_5_False_resize: signed(23 downto 0);
  signal c_13_9_5_False_shift: signed(23 downto 0);
  signal c_13_9_8_False_resize: signed(23 downto 0);
  signal c_13_9_8_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(15 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_18_0_False_resize: signed(25 downto 0);
  signal c_19_18_0_False_shift: signed(25 downto 0);
  signal c_19_16_7_False_resize: signed(25 downto 0);
  signal c_19_16_7_False_shift: signed(25 downto 0);
  signal c_19_14_1_False_resize: signed(25 downto 0);
  signal c_19_14_1_False_shift: signed(25 downto 0);
  signal c_19_18_6_False_resize: signed(25 downto 0);
  signal c_19_18_6_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_4_7_False_resize: signed(22 downto 0);
  signal c_20_4_7_False_shift: signed(22 downto 0);
  signal c_20_4_0_False_resize: signed(22 downto 0);
  signal c_20_4_0_False_shift: signed(22 downto 0);
  signal c_20_3_0_False_resize: signed(22 downto 0);
  signal c_20_3_0_False_shift: signed(22 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_14_0_False_resize: signed(23 downto 0);
  signal c_26_14_0_False_shift: signed(23 downto 0);
  signal c_26_16_1_False_resize: signed(23 downto 0);
  signal c_26_16_1_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_7_0_False_resize: signed(25 downto 0);
  signal c_27_7_0_False_shift: signed(25 downto 0);
  signal c_27_7_6_False_resize: signed(25 downto 0);
  signal c_27_7_6_False_shift: signed(25 downto 0);
  signal c_27_9_10_False_resize: signed(25 downto 0);
  signal c_27_9_10_False_shift: signed(25 downto 0);
  signal c_27_9_7_False_resize: signed(25 downto 0);
  signal c_27_9_7_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_i0_resize: signed(25 downto 0);
  signal c_30_i1_resize: signed(25 downto 0);
  signal c_30_i0_shift: signed(25 downto 0);
  signal c_30_i1_shift: signed(25 downto 0);
  signal c_30_arith: signed(25 downto 0);
  signal c_30_oshift: signed(25 downto 0);
  signal c_31: signed(15 downto 0);
  signal c_32: signed(15 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_32_10_False_resize: signed(25 downto 0);
  signal c_39_32_10_False_shift: signed(25 downto 0);
  signal c_39_36_3_False_resize: signed(25 downto 0);
  signal c_39_36_3_False_shift: signed(25 downto 0);
  signal c_39_38_5_False_resize: signed(25 downto 0);
  signal c_39_38_5_False_shift: signed(25 downto 0);
  signal c_39_25_0_False_resize: signed(25 downto 0);
  signal c_39_25_0_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_9_0_False_resize: signed(23 downto 0);
  signal c_40_9_0_False_shift: signed(23 downto 0);
  signal c_40_7_1_False_resize: signed(23 downto 0);
  signal c_40_7_1_False_shift: signed(23 downto 0);
  signal c_40_11_2_False_resize: signed(23 downto 0);
  signal c_40_11_2_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_25_1_False_resize: signed(24 downto 0);
  signal c_48_25_1_False_shift: signed(24 downto 0);
  signal c_48_47_5_False_resize: signed(24 downto 0);
  signal c_48_47_5_False_shift: signed(24 downto 0);
  signal c_48_32_0_False_resize: signed(24 downto 0);
  signal c_48_32_0_False_shift: signed(24 downto 0);
  signal c_48_47_1_False_resize: signed(24 downto 0);
  signal c_48_47_1_False_shift: signed(24 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_14_0_False_resize: signed(25 downto 0);
  signal c_49_14_0_False_shift: signed(25 downto 0);
  signal c_49_16_2_False_resize: signed(25 downto 0);
  signal c_49_16_2_False_shift: signed(25 downto 0);
  signal c_49_14_2_False_resize: signed(25 downto 0);
  signal c_49_14_2_False_shift: signed(25 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_i0_resize: signed(25 downto 0);
  signal c_52_i1_resize: signed(25 downto 0);
  signal c_52_i0_shift: signed(25 downto 0);
  signal c_52_i1_shift: signed(25 downto 0);
  signal c_52_arith: signed(25 downto 0);
  signal c_52_oshift: signed(25 downto 0);
  signal c_52_sub_sel: std_logic;
  signal c_53: signed(27 downto 0);
  signal c_53_11_0_False_resize: signed(27 downto 0);
  signal c_53_11_0_False_shift: signed(27 downto 0);
  signal c_53_7_5_False_resize: signed(27 downto 0);
  signal c_53_7_5_False_shift: signed(27 downto 0);
  signal c_53_7_4_False_resize: signed(27 downto 0);
  signal c_53_7_4_False_shift: signed(27 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_54_25_0_False_resize: signed(24 downto 0);
  signal c_54_25_0_False_shift: signed(24 downto 0);
  signal c_54_36_1_False_resize: signed(24 downto 0);
  signal c_54_36_1_False_shift: signed(24 downto 0);
  signal c_54_sel: std_logic_vector(0 downto 0);
  signal c_55: signed(27 downto 0);
  signal c_56: signed(27 downto 0);
  signal c_57: signed(27 downto 0);
  signal c_58: signed(27 downto 0);
  signal c_59: signed(24 downto 0);
  signal c_59_i0_resize: signed(24 downto 0);
  signal c_59_i1_resize: signed(24 downto 0);
  signal c_59_i0_shift: signed(24 downto 0);
  signal c_59_i1_shift: signed(24 downto 0);
  signal c_59_arith: signed(24 downto 0);
  signal c_59_oshift: signed(24 downto 0);
  signal c_60: signed(23 downto 0);
  signal c_61: signed(23 downto 0);
  signal c_62: signed(24 downto 0);
  signal c_62_59_0_False_resize: signed(24 downto 0);
  signal c_62_59_0_False_shift: signed(24 downto 0);
  signal c_62_61_0_False_resize: signed(24 downto 0);
  signal c_62_61_0_False_shift: signed(24 downto 0);
  signal c_62_sel: std_logic_vector(0 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(24 downto 0);
  signal c_65_64_1_False_resize: signed(24 downto 0);
  signal c_65_64_1_False_shift: signed(24 downto 0);
  signal c_65_52_0_False_resize: signed(24 downto 0);
  signal c_65_52_0_False_shift: signed(24 downto 0);
  signal c_65_sel: std_logic_vector(0 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_66_64_2_False_resize: signed(25 downto 0);
  signal c_66_64_2_False_shift: signed(25 downto 0);
  signal c_66_64_0_False_resize: signed(25 downto 0);
  signal c_66_64_0_False_shift: signed(25 downto 0);
  signal c_66_52_0_False_resize: signed(25 downto 0);
  signal c_66_52_0_False_shift: signed(25 downto 0);
  signal c_66_sel: std_logic_vector(1 downto 0);
  signal c_67: signed(24 downto 0);
  signal c_67_resize: signed(24 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_resize: signed(25 downto 0);
  signal c_72: signed(24 downto 0);
  signal c_72_resize: signed(24 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_74_resize: signed(25 downto 0);
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
  -- output node 0 with id 67
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_67);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [16], [1], [2]]
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 20);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_1_False_resize <= resize(c_0, 20);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_4_False_shift;
        when "01" => c_1 <= c_1_0_0_False_shift;
        when "10" => c_1 <= c_1_0_2_False_shift;
        when others => c_1 <= c_1_0_1_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[17], [65], [5], [-7]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[2], [65], [20], [-7]]
  c_5_3_2_False_resize <= c_3;
  c_5_3_2_False_shift <= shift_left(c_5_3_2_False_resize, 2);
  c_5_4_1_False_resize <= resize(c_4, 23);
  c_5_4_1_False_shift <= shift_left(c_5_4_1_False_resize, 1);
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_3_2_False_shift;
        when "01" => c_5 <= c_5_4_1_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[2], [1], [1], [-56]]
  c_6_4_1_False_resize <= resize(c_4, 22);
  c_6_4_1_False_shift <= shift_left(c_6_4_1_False_resize, 1);
  c_6_4_0_False_resize <= resize(c_4, 22);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_3_3_False_resize <= c_3(21 downto 0);
  c_6_3_3_False_shift <= shift_left(c_6_3_3_False_resize, 3);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_4_1_False_shift;
        when "01" => c_6 <= c_6_4_0_False_shift;
        when others => c_6 <= c_6_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[10], [69], [16], [217]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_7_sub_sel,
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
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[17], [65], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[17], [65], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[17], [32], [5], [217]]
  c_12_9_5_False_resize <= resize(c_9, 24);
  c_12_9_5_False_shift <= shift_left(c_12_9_5_False_resize, 5);
  c_12_11_0_False_resize <= resize(c_11, 24);
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  c_12_7_0_False_resize <= c_7;
  c_12_7_0_False_shift <= shift_left(c_12_7_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_9_5_False_shift;
        when "01" => c_12 <= c_12_11_0_False_shift;
        when others => c_12 <= c_12_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[4], [256], [16], [32]]
  c_13_9_2_False_resize <= resize(c_9, 24);
  c_13_9_2_False_shift <= shift_left(c_13_9_2_False_resize, 2);
  c_13_7_0_False_resize <= c_7;
  c_13_7_0_False_shift <= shift_left(c_13_7_0_False_resize, 0);
  c_13_9_5_False_resize <= resize(c_9, 24);
  c_13_9_5_False_shift <= shift_left(c_13_9_5_False_resize, 5);
  c_13_9_8_False_resize <= resize(c_9, 24);
  c_13_9_8_False_shift <= shift_left(c_13_9_8_False_resize, 8);
  with config_select_5 select c_13_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_9_2_False_shift;
        when "01" => c_13 <= c_13_7_0_False_shift;
        when "10" => c_13 <= c_13_9_5_False_shift;
        when others => c_13 <= c_13_9_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 14 and associated fundamentals [[13], [-224], [21], [185]]
  with config_select_6 select c_14_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 16 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[10], [69], [16], [217]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[10], [69], [16], [217]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[640], [69], [128], [370]]
  c_19_18_0_False_resize <= resize(c_18, 26);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  c_19_16_7_False_resize <= resize(c_16, 26);
  c_19_16_7_False_shift <= shift_left(c_19_16_7_False_resize, 7);
  c_19_14_1_False_resize <= resize(c_14, 26);
  c_19_14_1_False_shift <= shift_left(c_19_14_1_False_resize, 1);
  c_19_18_6_False_resize <= resize(c_18, 26);
  c_19_18_6_False_shift <= shift_left(c_19_18_6_False_resize, 6);
  with config_select_7 select c_19_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_18_0_False_shift;
        when "01" => c_19 <= c_19_16_7_False_shift;
        when "10" => c_19 <= c_19_14_1_False_shift;
        when others => c_19 <= c_19_18_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[17], [128], [5], [1]]
  c_20_4_7_False_resize <= resize(c_4, 23);
  c_20_4_7_False_shift <= shift_left(c_20_4_7_False_resize, 7);
  c_20_4_0_False_resize <= resize(c_4, 23);
  c_20_4_0_False_shift <= shift_left(c_20_4_0_False_resize, 0);
  c_20_3_0_False_resize <= c_3;
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_4_7_False_shift;
        when "01" => c_20 <= c_20_4_0_False_shift;
        when others => c_20 <= c_20_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[17], [128], [5], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[17], [128], [5], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[17], [128], [5], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 24 and associated fundamentals [[17], [128], [5], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 25 and associated fundamentals [[657], [197], [133], [371]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      x_i => c_19,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[13], [-224], [21], [2]]
  c_26_14_0_False_resize <= c_14;
  c_26_14_0_False_shift <= shift_left(c_26_14_0_False_resize, 0);
  c_26_16_1_False_resize <= resize(c_16, 24);
  c_26_16_1_False_shift <= shift_left(c_26_16_1_False_resize, 1);
  with config_select_7 select c_26_sel <= 
    "0" when "10",
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_14_0_False_shift;
        when others => c_26 <= c_26_16_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 27 and associated fundamentals [[640], [69], [128], [1024]]
  c_27_7_0_False_resize <= resize(c_7, 26);
  c_27_7_0_False_shift <= shift_left(c_27_7_0_False_resize, 0);
  c_27_7_6_False_resize <= resize(c_7, 26);
  c_27_7_6_False_shift <= shift_left(c_27_7_6_False_resize, 6);
  c_27_9_10_False_resize <= resize(c_9, 26);
  c_27_9_10_False_shift <= shift_left(c_27_9_10_False_resize, 10);
  c_27_9_7_False_resize <= resize(c_9, 26);
  c_27_9_7_False_shift <= shift_left(c_27_9_7_False_resize, 7);
  with config_select_5 select c_27_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_7_0_False_shift;
        when "01" => c_27 <= c_27_7_6_False_shift;
        when "10" => c_27 <= c_27_9_10_False_shift;
        when others => c_27 <= c_27_9_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[640], [69], [128], [1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[640], [69], [128], [1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 30 and associated fundamentals [[-627], [-293], [-107], [-1022]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 24,
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
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 33 and associated fundamentals [[17], [65], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[17], [65], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[17], [65], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[17], [65], [5], [-7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[13], [-224], [21], [185]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[13], [-224], [21], [185]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 39 and associated fundamentals [[416], [1024], [40], [371]]
  c_39_32_10_False_resize <= resize(c_32, 26);
  c_39_32_10_False_shift <= shift_left(c_39_32_10_False_resize, 10);
  c_39_36_3_False_resize <= resize(c_36, 26);
  c_39_36_3_False_shift <= shift_left(c_39_36_3_False_resize, 3);
  c_39_38_5_False_resize <= resize(c_38, 26);
  c_39_38_5_False_shift <= shift_left(c_39_38_5_False_resize, 5);
  c_39_25_0_False_resize <= c_25;
  c_39_25_0_False_shift <= shift_left(c_39_25_0_False_resize, 0);
  with config_select_9 select c_39_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_32_10_False_shift;
        when "01" => c_39 <= c_39_36_3_False_shift;
        when "10" => c_39 <= c_39_38_5_False_shift;
        when others => c_39 <= c_39_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 40 and associated fundamentals [[1], [138], [1], [-28]]
  c_40_9_0_False_resize <= resize(c_9, 24);
  c_40_9_0_False_shift <= shift_left(c_40_9_0_False_resize, 0);
  c_40_7_1_False_resize <= c_7;
  c_40_7_1_False_shift <= shift_left(c_40_7_1_False_resize, 1);
  c_40_11_2_False_resize <= resize(c_11, 24);
  c_40_11_2_False_shift <= shift_left(c_40_11_2_False_resize, 2);
  with config_select_5 select c_40_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_9_0_False_shift;
        when "01" => c_40 <= c_40_7_1_False_shift;
        when others => c_40 <= c_40_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 41 and associated fundamentals [[1], [138], [1], [-28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[1], [138], [1], [-28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[1], [138], [1], [-28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[1], [138], [1], [-28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 45 and associated fundamentals [[415], [886], [39], [399]]
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
  -- node of type 'register' in stage 7 with id 46 and associated fundamentals [[10], [69], [16], [217]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[10], [69], [16], [217]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 48 and associated fundamentals [[320], [1], [266], [434]]
  c_48_25_1_False_resize <= c_25(24 downto 0);
  c_48_25_1_False_shift <= shift_left(c_48_25_1_False_resize, 1);
  c_48_47_5_False_resize <= resize(c_47, 25);
  c_48_47_5_False_shift <= shift_left(c_48_47_5_False_resize, 5);
  c_48_32_0_False_resize <= resize(c_32, 25);
  c_48_32_0_False_shift <= shift_left(c_48_32_0_False_resize, 0);
  c_48_47_1_False_resize <= resize(c_47, 25);
  c_48_47_1_False_shift <= shift_left(c_48_47_1_False_resize, 1);
  with config_select_9 select c_48_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_25_1_False_shift;
        when "01" => c_48 <= c_48_47_5_False_shift;
        when "10" => c_48 <= c_48_32_0_False_shift;
        when others => c_48 <= c_48_47_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 49 and associated fundamentals [[13], [-896], [21], [4]]
  c_49_14_0_False_resize <= resize(c_14, 26);
  c_49_14_0_False_shift <= shift_left(c_49_14_0_False_resize, 0);
  c_49_16_2_False_resize <= resize(c_16, 26);
  c_49_16_2_False_shift <= shift_left(c_49_16_2_False_resize, 2);
  c_49_14_2_False_resize <= resize(c_14, 26);
  c_49_14_2_False_shift <= shift_left(c_49_14_2_False_resize, 2);
  with config_select_7 select c_49_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_14_0_False_shift;
        when "01" => c_49 <= c_49_16_2_False_shift;
        when others => c_49 <= c_49_14_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[13], [-896], [21], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[13], [-896], [21], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 52 and associated fundamentals [[333], [897], [245], [430]]
  with config_select_10 select c_52_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_52: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
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
  -- node of type 'mux' in stage 5 with id 53 and associated fundamentals [[320], [65], [256], [3472]]
  c_53_11_0_False_resize <= resize(c_11, 28);
  c_53_11_0_False_shift <= shift_left(c_53_11_0_False_resize, 0);
  c_53_7_5_False_resize <= resize(c_7, 28);
  c_53_7_5_False_shift <= shift_left(c_53_7_5_False_resize, 5);
  c_53_7_4_False_resize <= resize(c_7, 28);
  c_53_7_4_False_shift <= shift_left(c_53_7_4_False_resize, 4);
  with config_select_5 select c_53_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "00" => c_53 <= c_53_11_0_False_shift;
        when "01" => c_53 <= c_53_7_5_False_shift;
        when others => c_53 <= c_53_7_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 54 and associated fundamentals [[34], [130], [133], [371]]
  c_54_25_0_False_resize <= c_25(24 downto 0);
  c_54_25_0_False_shift <= shift_left(c_54_25_0_False_resize, 0);
  c_54_36_1_False_resize <= resize(c_36, 25);
  c_54_36_1_False_shift <= shift_left(c_54_36_1_False_resize, 1);
  with config_select_9 select c_54_sel <= 
    "0" when "11",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "0" => c_54 <= c_54_25_0_False_shift;
        when others => c_54 <= c_54_36_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 55 and associated fundamentals [[320], [65], [256], [3472]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 56 and associated fundamentals [[320], [65], [256], [3472]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 57 and associated fundamentals [[320], [65], [256], [3472]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[320], [65], [256], [3472]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'add' in stage 10 with id 59 and associated fundamentals [[354], [195], [389], [3843]]
  inst_adder_node_59: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 25,
      w_o => 25,
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
      x_i => c_58,
      y_i => c_54,
      z_o => c_59_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_59_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 60 and associated fundamentals [[13], [-224], [21], [185]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 61 and associated fundamentals [[13], [-224], [21], [185]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 62 and associated fundamentals [[354], [195], [389], [185]]
  c_62_59_0_False_resize <= c_59;
  c_62_59_0_False_shift <= shift_left(c_62_59_0_False_resize, 0);
  c_62_61_0_False_resize <= resize(c_61, 25);
  c_62_61_0_False_shift <= shift_left(c_62_61_0_False_resize, 0);
  with config_select_11 select c_62_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_62_sel is
        when "0" => c_62 <= c_62_59_0_False_shift;
        when others => c_62 <= c_62_61_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 63 and associated fundamentals [[657], [197], [133], [371]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 64 and associated fundamentals [[657], [197], [133], [371]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 65 and associated fundamentals [[333], [394], [245], [430]]
  c_65_64_1_False_resize <= c_64(24 downto 0);
  c_65_64_1_False_shift <= shift_left(c_65_64_1_False_resize, 1);
  c_65_52_0_False_resize <= c_52(24 downto 0);
  c_65_52_0_False_shift <= shift_left(c_65_52_0_False_resize, 0);
  with config_select_11 select c_65_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "0" => c_65 <= c_65_64_1_False_shift;
        when others => c_65 <= c_65_52_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 66 and associated fundamentals [[657], [897], [532], [371]]
  c_66_64_2_False_resize <= c_64;
  c_66_64_2_False_shift <= shift_left(c_66_64_2_False_resize, 2);
  c_66_64_0_False_resize <= c_64;
  c_66_64_0_False_shift <= shift_left(c_66_64_0_False_resize, 0);
  c_66_52_0_False_resize <= c_52;
  c_66_52_0_False_shift <= shift_left(c_66_52_0_False_resize, 0);
  with config_select_11 select c_66_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_66_sel is
        when "00" => c_66 <= c_66_64_2_False_shift;
        when "01" => c_66 <= c_66_64_0_False_shift;
        when others => c_66 <= c_66_52_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 67 and associated fundamentals [[354], [195], [389], [185]]
  c_67_resize <= c_62;
  c_67 <= shift_left(c_67_resize, 0);
  -- node of type 'register' in stage 9 with id 68 and associated fundamentals [[-627], [-293], [-107], [-1022]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 69 and associated fundamentals [[-627], [-293], [-107], [-1022]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 70 and associated fundamentals [[-627], [-293], [-107], [-1022]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 71 and associated fundamentals [[627], [293], [107], [1022]]
  c_71_resize <= c_70;
  c_71 <= -shift_left(c_71_resize, 0);
  -- node of type 'output' in stage 11 with id 72 and associated fundamentals [[333], [394], [245], [430]]
  c_72_resize <= c_65;
  c_72 <= shift_left(c_72_resize, 0);
  -- node of type 'register' in stage 11 with id 73 and associated fundamentals [[415], [886], [39], [399]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_45 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 74 and associated fundamentals [[415], [886], [39], [399]]
  c_74_resize <= c_73;
  c_74 <= shift_left(c_74_resize, 0);
  -- node of type 'output' in stage 11 with id 75 and associated fundamentals [[657], [897], [532], [371]]
  c_75_resize <= c_66;
  c_75 <= shift_left(c_75_resize, 0);
end architecture;

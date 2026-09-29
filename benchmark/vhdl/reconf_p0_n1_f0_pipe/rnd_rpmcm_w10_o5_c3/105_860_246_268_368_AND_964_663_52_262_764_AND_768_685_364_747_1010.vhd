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
  signal config_select_12: std_logic_vector(1 downto 0);
  signal config_select_13: std_logic_vector(1 downto 0);
  signal config_select_14: std_logic_vector(1 downto 0);
  signal config_select_15: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_0_4_False_resize: signed(20 downto 0);
  signal c_1_0_4_False_shift: signed(20 downto 0);
  signal c_1_0_0_False_resize: signed(20 downto 0);
  signal c_1_0_0_False_shift: signed(20 downto 0);
  signal c_1_0_5_False_resize: signed(20 downto 0);
  signal c_1_0_5_False_shift: signed(20 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_5_0_False_resize: signed(21 downto 0);
  signal c_6_5_0_False_shift: signed(21 downto 0);
  signal c_6_3_0_False_resize: signed(21 downto 0);
  signal c_6_3_0_False_shift: signed(21 downto 0);
  signal c_6_3_4_False_resize: signed(21 downto 0);
  signal c_6_3_4_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_3_2_False_resize: signed(19 downto 0);
  signal c_7_3_2_False_shift: signed(19 downto 0);
  signal c_7_5_0_False_resize: signed(19 downto 0);
  signal c_7_5_0_False_shift: signed(19 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(20 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_8_1_False_resize: signed(24 downto 0);
  signal c_11_8_1_False_shift: signed(24 downto 0);
  signal c_11_10_0_False_resize: signed(24 downto 0);
  signal c_11_10_0_False_shift: signed(24 downto 0);
  signal c_11_10_1_False_resize: signed(24 downto 0);
  signal c_11_10_1_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(18 downto 0);
  signal c_14_13_1_False_resize: signed(18 downto 0);
  signal c_14_13_1_False_shift: signed(18 downto 0);
  signal c_14_8_0_False_resize: signed(18 downto 0);
  signal c_14_8_0_False_shift: signed(18 downto 0);
  signal c_14_13_2_False_resize: signed(18 downto 0);
  signal c_14_13_2_False_shift: signed(18 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(22 downto 0);
  signal c_16_8_1_False_resize: signed(22 downto 0);
  signal c_16_8_1_False_shift: signed(22 downto 0);
  signal c_16_10_2_False_resize: signed(22 downto 0);
  signal c_16_10_2_False_shift: signed(22 downto 0);
  signal c_16_10_0_False_resize: signed(22 downto 0);
  signal c_16_10_0_False_shift: signed(22 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(15 downto 0);
  signal c_18: signed(15 downto 0);
  signal c_19: signed(20 downto 0);
  signal c_20: signed(20 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_20_8_False_resize: signed(25 downto 0);
  signal c_21_20_8_False_shift: signed(25 downto 0);
  signal c_21_18_5_False_resize: signed(25 downto 0);
  signal c_21_18_5_False_shift: signed(25 downto 0);
  signal c_21_15_0_False_resize: signed(25 downto 0);
  signal c_21_15_0_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(20 downto 0);
  signal c_26: signed(20 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_26_0_False_resize: signed(25 downto 0);
  signal c_27_26_0_False_shift: signed(25 downto 0);
  signal c_27_24_0_False_resize: signed(25 downto 0);
  signal c_27_24_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_26_3_False_resize: signed(22 downto 0);
  signal c_28_26_3_False_shift: signed(22 downto 0);
  signal c_28_24_0_False_resize: signed(22 downto 0);
  signal c_28_24_0_False_shift: signed(22 downto 0);
  signal c_28_26_2_False_resize: signed(22 downto 0);
  signal c_28_26_2_False_shift: signed(22 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_i0_resize: signed(25 downto 0);
  signal c_29_i1_resize: signed(25 downto 0);
  signal c_29_i0_shift: signed(25 downto 0);
  signal c_29_i1_shift: signed(25 downto 0);
  signal c_29_arith: signed(25 downto 0);
  signal c_29_oshift: signed(25 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(15 downto 0);
  signal c_31: signed(15 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_33_1_False_resize: signed(25 downto 0);
  signal c_34_33_1_False_shift: signed(25 downto 0);
  signal c_34_31_0_False_resize: signed(25 downto 0);
  signal c_34_31_0_False_shift: signed(25 downto 0);
  signal c_34_24_0_False_resize: signed(25 downto 0);
  signal c_34_24_0_False_shift: signed(25 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_26_0_False_resize: signed(25 downto 0);
  signal c_35_26_0_False_shift: signed(25 downto 0);
  signal c_35_26_5_False_resize: signed(25 downto 0);
  signal c_35_26_5_False_shift: signed(25 downto 0);
  signal c_35_24_0_False_resize: signed(25 downto 0);
  signal c_35_24_0_False_shift: signed(25 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_i0_resize: signed(25 downto 0);
  signal c_36_i1_resize: signed(25 downto 0);
  signal c_36_i0_shift: signed(25 downto 0);
  signal c_36_i1_shift: signed(25 downto 0);
  signal c_36_arith: signed(25 downto 0);
  signal c_36_oshift: signed(25 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_42_2_False_resize: signed(25 downto 0);
  signal c_43_42_2_False_shift: signed(25 downto 0);
  signal c_43_36_0_False_resize: signed(25 downto 0);
  signal c_43_36_0_False_shift: signed(25 downto 0);
  signal c_43_42_5_False_resize: signed(25 downto 0);
  signal c_43_42_5_False_shift: signed(25 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_36_0_False_resize: signed(24 downto 0);
  signal c_44_36_0_False_shift: signed(24 downto 0);
  signal c_44_29_0_False_resize: signed(24 downto 0);
  signal c_44_29_0_False_shift: signed(24 downto 0);
  signal c_44_42_1_False_resize: signed(24 downto 0);
  signal c_44_42_1_False_shift: signed(24 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(20 downto 0);
  signal c_47: signed(20 downto 0);
  signal c_48: signed(20 downto 0);
  signal c_49: signed(20 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_45_0_False_resize: signed(25 downto 0);
  signal c_52_45_0_False_shift: signed(25 downto 0);
  signal c_52_51_1_False_resize: signed(25 downto 0);
  signal c_52_51_1_False_shift: signed(25 downto 0);
  signal c_52_49_8_False_resize: signed(25 downto 0);
  signal c_52_49_8_False_shift: signed(25 downto 0);
  signal c_52_sel: std_logic_vector(1 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_51_0_False_resize: signed(25 downto 0);
  signal c_53_51_0_False_shift: signed(25 downto 0);
  signal c_53_51_2_False_resize: signed(25 downto 0);
  signal c_53_51_2_False_shift: signed(25 downto 0);
  signal c_53_45_0_False_resize: signed(25 downto 0);
  signal c_53_45_0_False_shift: signed(25 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_56_55_0_False_resize: signed(24 downto 0);
  signal c_56_55_0_False_shift: signed(24 downto 0);
  signal c_56_55_2_False_resize: signed(24 downto 0);
  signal c_56_55_2_False_shift: signed(24 downto 0);
  signal c_56_29_1_False_resize: signed(24 downto 0);
  signal c_56_29_1_False_shift: signed(24 downto 0);
  signal c_56_sel: std_logic_vector(1 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_58_1_False_resize: signed(25 downto 0);
  signal c_59_58_1_False_shift: signed(25 downto 0);
  signal c_59_55_2_False_resize: signed(25 downto 0);
  signal c_59_55_2_False_shift: signed(25 downto 0);
  signal c_59_29_0_False_resize: signed(25 downto 0);
  signal c_59_29_0_False_shift: signed(25 downto 0);
  signal c_59_sel: std_logic_vector(1 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_63_2_False_resize: signed(25 downto 0);
  signal c_64_63_2_False_shift: signed(25 downto 0);
  signal c_64_61_2_False_resize: signed(25 downto 0);
  signal c_64_61_2_False_shift: signed(25 downto 0);
  signal c_64_45_0_False_resize: signed(25 downto 0);
  signal c_64_45_0_False_shift: signed(25 downto 0);
  signal c_64_sel: std_logic_vector(1 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_resize: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_66_resize: signed(25 downto 0);
  signal c_67: signed(24 downto 0);
  signal c_68: signed(24 downto 0);
  signal c_69: signed(24 downto 0);
  signal c_69_resize: signed(24 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_72_resize: signed(25 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_resize: signed(25 downto 0);
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
  -- output node 0 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_65);
    end if;
  end process;
  -- output node 1 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_66);
    end if;
  end process;
  -- output node 2 with id 69
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_69);
    end if;
  end process;
  -- output node 3 with id 72
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_72);
    end if;
  end process;
  -- output node 4 with id 73
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_73);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[32], [16], [1]]
  c_1_0_4_False_resize <= resize(c_0, 21);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_0_False_resize <= resize(c_0, 21);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_5_False_resize <= resize(c_0, 21);
  c_1_0_5_False_shift <= shift_left(c_1_0_5_False_resize, 5);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_4_False_shift;
        when "01" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [1], [2]]
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[31], [15], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 17,
      w_o => 21,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [15], [48]]
  c_6_5_0_False_resize <= resize(c_5, 22);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  c_6_3_0_False_resize <= resize(c_3, 22);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_3_4_False_resize <= resize(c_3, 22);
  c_6_3_4_False_shift <= shift_left(c_6_3_4_False_resize, 4);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_5_0_False_shift;
        when "01" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_3_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[1], [1], [12]]
  c_7_3_2_False_resize <= c_3(19 downto 0);
  c_7_3_2_False_shift <= shift_left(c_7_3_2_False_resize, 2);
  c_7_5_0_False_resize <= resize(c_5, 20);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_3_2_False_shift;
        when others => c_7 <= c_7_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[5], [59], [180]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[31], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[31], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[62], [15], [360]]
  c_11_8_1_False_resize <= resize(c_8, 25);
  c_11_8_1_False_shift <= shift_left(c_11_8_1_False_resize, 1);
  c_11_10_0_False_resize <= resize(c_10, 25);
  c_11_10_0_False_shift <= shift_left(c_11_10_0_False_resize, 0);
  c_11_10_1_False_resize <= resize(c_10, 25);
  c_11_10_1_False_shift <= shift_left(c_11_10_1_False_resize, 1);
  with config_select_5 select c_11_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_8_1_False_shift;
        when "01" => c_11 <= c_11_10_0_False_shift;
        when others => c_11 <= c_11_10_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[5], [2], [4]]
  c_14_13_1_False_resize <= resize(c_13, 19);
  c_14_13_1_False_shift <= shift_left(c_14_13_1_False_resize, 1);
  c_14_8_0_False_resize <= c_8(18 downto 0);
  c_14_8_0_False_shift <= shift_left(c_14_8_0_False_resize, 0);
  c_14_13_2_False_resize <= resize(c_13, 19);
  c_14_13_2_False_shift <= shift_left(c_14_13_2_False_resize, 2);
  with config_select_5 select c_14_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_13_1_False_shift;
        when "01" => c_14 <= c_14_8_0_False_shift;
        when others => c_14 <= c_14_13_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[67], [13], [364]]
  with config_select_6 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 19,
      w_o => 25,
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
      sub_i => c_15_sub_sel,
      x_i => c_11,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[124], [118], [3]]
  c_16_8_1_False_resize <= c_8(22 downto 0);
  c_16_8_1_False_shift <= shift_left(c_16_8_1_False_resize, 1);
  c_16_10_2_False_resize <= resize(c_10, 23);
  c_16_10_2_False_shift <= shift_left(c_16_10_2_False_resize, 2);
  c_16_10_0_False_resize <= resize(c_10, 23);
  c_16_10_0_False_shift <= shift_left(c_16_10_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_8_1_False_shift;
        when "01" => c_16 <= c_16_10_2_False_shift;
        when others => c_16 <= c_16_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[31], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[31], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 21 and associated fundamentals [[32], [13], [768]]
  c_21_20_8_False_resize <= resize(c_20, 26);
  c_21_20_8_False_shift <= shift_left(c_21_20_8_False_resize, 8);
  c_21_18_5_False_resize <= resize(c_18, 26);
  c_21_18_5_False_shift <= shift_left(c_21_18_5_False_resize, 5);
  c_21_15_0_False_resize <= resize(c_15, 26);
  c_21_15_0_False_shift <= shift_left(c_21_15_0_False_resize, 0);
  with config_select_7 select c_21_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_20_8_False_shift;
        when "01" => c_21 <= c_21_18_5_False_shift;
        when others => c_21 <= c_21_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[124], [118], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 23 and associated fundamentals [[124], [118], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 24 and associated fundamentals [[92], [131], [771]]
  with config_select_8 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_24_sub_sel,
      x_i => c_23,
      y_i => c_21,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 25 and associated fundamentals [[31], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 26 and associated fundamentals [[31], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 27 and associated fundamentals [[31], [131], [771]]
  c_27_26_0_False_resize <= resize(c_26, 26);
  c_27_26_0_False_shift <= shift_left(c_27_26_0_False_resize, 0);
  c_27_24_0_False_resize <= c_24;
  c_27_24_0_False_shift <= shift_left(c_27_24_0_False_resize, 0);
  with config_select_9 select c_27_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_26_0_False_shift;
        when others => c_27 <= c_27_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 28 and associated fundamentals [[92], [60], [24]]
  c_28_26_3_False_resize <= resize(c_26, 23);
  c_28_26_3_False_shift <= shift_left(c_28_26_3_False_resize, 3);
  c_28_24_0_False_resize <= c_24(22 downto 0);
  c_28_24_0_False_shift <= shift_left(c_28_24_0_False_resize, 0);
  c_28_26_2_False_resize <= resize(c_26, 23);
  c_28_26_2_False_shift <= shift_left(c_28_26_2_False_resize, 2);
  with config_select_9 select c_28_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_26_3_False_shift;
        when "01" => c_28 <= c_28_24_0_False_shift;
        when others => c_28 <= c_28_26_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 29 and associated fundamentals [[123], [191], [747]]
  with config_select_10 select c_29_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      sub_i => c_29_sub_sel,
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 31 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[67], [13], [364]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[67], [13], [364]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 34 and associated fundamentals [[92], [1], [728]]
  c_34_33_1_False_resize <= resize(c_33, 26);
  c_34_33_1_False_shift <= shift_left(c_34_33_1_False_resize, 1);
  c_34_31_0_False_resize <= resize(c_31, 26);
  c_34_31_0_False_shift <= shift_left(c_34_31_0_False_resize, 0);
  c_34_24_0_False_resize <= c_24;
  c_34_24_0_False_shift <= shift_left(c_34_24_0_False_resize, 0);
  with config_select_9 select c_34_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_33_1_False_shift;
        when "01" => c_34 <= c_34_31_0_False_shift;
        when others => c_34 <= c_34_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 35 and associated fundamentals [[31], [480], [771]]
  c_35_26_0_False_resize <= resize(c_26, 26);
  c_35_26_0_False_shift <= shift_left(c_35_26_0_False_resize, 0);
  c_35_26_5_False_resize <= resize(c_26, 26);
  c_35_26_5_False_shift <= shift_left(c_35_26_5_False_resize, 5);
  c_35_24_0_False_resize <= c_24;
  c_35_24_0_False_shift <= shift_left(c_35_24_0_False_resize, 0);
  with config_select_9 select c_35_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_26_0_False_shift;
        when "01" => c_35 <= c_35_26_5_False_shift;
        when others => c_35 <= c_35_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 36 and associated fundamentals [[215], [482], [685]]
  with config_select_10 select c_36_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 26,
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
      sub_i => c_36_sub_sel,
      x_i => c_34,
      y_i => c_35,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 37 and associated fundamentals [[5], [59], [180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[5], [59], [180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[5], [59], [180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[5], [59], [180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[5], [59], [180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 42 and associated fundamentals [[5], [59], [180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 43 and associated fundamentals [[160], [236], [685]]
  c_43_42_2_False_resize <= resize(c_42, 26);
  c_43_42_2_False_shift <= shift_left(c_43_42_2_False_resize, 2);
  c_43_36_0_False_resize <= c_36;
  c_43_36_0_False_shift <= shift_left(c_43_36_0_False_resize, 0);
  c_43_42_5_False_resize <= resize(c_42, 26);
  c_43_42_5_False_shift <= shift_left(c_43_42_5_False_resize, 5);
  with config_select_11 select c_43_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_42_2_False_shift;
        when "01" => c_43 <= c_43_36_0_False_shift;
        when others => c_43 <= c_43_42_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 44 and associated fundamentals [[215], [191], [360]]
  c_44_36_0_False_resize <= c_36(24 downto 0);
  c_44_36_0_False_shift <= shift_left(c_44_36_0_False_resize, 0);
  c_44_29_0_False_resize <= c_29(24 downto 0);
  c_44_29_0_False_shift <= shift_left(c_44_29_0_False_resize, 0);
  c_44_42_1_False_resize <= resize(c_42, 25);
  c_44_42_1_False_shift <= shift_left(c_44_42_1_False_resize, 1);
  with config_select_11 select c_44_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_36_0_False_shift;
        when "01" => c_44 <= c_44_29_0_False_shift;
        when others => c_44 <= c_44_42_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 45 and associated fundamentals [[105], [663], [1010]]
  with config_select_12 select c_45_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_45_sub_sel,
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
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[31], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[31], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 48 and associated fundamentals [[31], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 49 and associated fundamentals [[31], [15], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 50 and associated fundamentals [[215], [482], [685]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 51 and associated fundamentals [[215], [482], [685]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 52 and associated fundamentals [[105], [964], [768]]
  c_52_45_0_False_resize <= c_45;
  c_52_45_0_False_shift <= shift_left(c_52_45_0_False_resize, 0);
  c_52_51_1_False_resize <= c_51;
  c_52_51_1_False_shift <= shift_left(c_52_51_1_False_resize, 1);
  c_52_49_8_False_resize <= resize(c_49, 26);
  c_52_49_8_False_shift <= shift_left(c_52_49_8_False_resize, 8);
  with config_select_13 select c_52_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "00" => c_52 <= c_52_45_0_False_shift;
        when "01" => c_52 <= c_52_51_1_False_shift;
        when others => c_52 <= c_52_49_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 53 and associated fundamentals [[860], [663], [685]]
  c_53_51_0_False_resize <= c_51;
  c_53_51_0_False_shift <= shift_left(c_53_51_0_False_resize, 0);
  c_53_51_2_False_resize <= c_51;
  c_53_51_2_False_shift <= shift_left(c_53_51_2_False_resize, 2);
  c_53_45_0_False_resize <= c_45;
  c_53_45_0_False_shift <= shift_left(c_53_45_0_False_resize, 0);
  with config_select_13 select c_53_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "00" => c_53 <= c_53_51_0_False_shift;
        when "01" => c_53 <= c_53_51_2_False_shift;
        when others => c_53 <= c_53_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[67], [13], [364]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 55 and associated fundamentals [[67], [13], [364]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 56 and associated fundamentals [[246], [52], [364]]
  c_56_55_0_False_resize <= c_55;
  c_56_55_0_False_shift <= shift_left(c_56_55_0_False_resize, 0);
  c_56_55_2_False_resize <= c_55;
  c_56_55_2_False_shift <= shift_left(c_56_55_2_False_resize, 2);
  c_56_29_1_False_resize <= c_29(24 downto 0);
  c_56_29_1_False_shift <= shift_left(c_56_29_1_False_resize, 1);
  with config_select_11 select c_56_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "00" => c_56 <= c_56_55_0_False_shift;
        when "01" => c_56 <= c_56_55_2_False_shift;
        when others => c_56 <= c_56_29_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[92], [131], [771]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[92], [131], [771]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 59 and associated fundamentals [[268], [262], [747]]
  c_59_58_1_False_resize <= c_58;
  c_59_58_1_False_shift <= shift_left(c_59_58_1_False_resize, 1);
  c_59_55_2_False_resize <= resize(c_55, 26);
  c_59_55_2_False_shift <= shift_left(c_59_55_2_False_resize, 2);
  c_59_29_0_False_resize <= c_29;
  c_59_29_0_False_shift <= shift_left(c_59_29_0_False_resize, 0);
  with config_select_11 select c_59_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "00" => c_59 <= c_59_58_1_False_shift;
        when "01" => c_59 <= c_59_55_2_False_shift;
        when others => c_59 <= c_59_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 60 and associated fundamentals [[92], [131], [771]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 61 and associated fundamentals [[92], [131], [771]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 62 and associated fundamentals [[123], [191], [747]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 63 and associated fundamentals [[123], [191], [747]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 64 and associated fundamentals [[368], [764], [1010]]
  c_64_63_2_False_resize <= c_63;
  c_64_63_2_False_shift <= shift_left(c_64_63_2_False_resize, 2);
  c_64_61_2_False_resize <= c_61;
  c_64_61_2_False_shift <= shift_left(c_64_61_2_False_resize, 2);
  c_64_45_0_False_resize <= c_45;
  c_64_45_0_False_shift <= shift_left(c_64_45_0_False_resize, 0);
  with config_select_13 select c_64_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_64_sel is
        when "00" => c_64 <= c_64_63_2_False_shift;
        when "01" => c_64 <= c_64_61_2_False_shift;
        when others => c_64 <= c_64_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 65 and associated fundamentals [[105], [964], [768]]
  c_65_resize <= c_52;
  c_65 <= shift_left(c_65_resize, 0);
  -- node of type 'output' in stage 13 with id 66 and associated fundamentals [[860], [663], [685]]
  c_66_resize <= c_53;
  c_66 <= shift_left(c_66_resize, 0);
  -- node of type 'register' in stage 12 with id 67 and associated fundamentals [[246], [52], [364]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 68 and associated fundamentals [[246], [52], [364]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 69 and associated fundamentals [[246], [52], [364]]
  c_69_resize <= c_68;
  c_69 <= shift_left(c_69_resize, 0);
  -- node of type 'register' in stage 12 with id 70 and associated fundamentals [[268], [262], [747]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 71 and associated fundamentals [[268], [262], [747]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 72 and associated fundamentals [[268], [262], [747]]
  c_72_resize <= c_71;
  c_72 <= shift_left(c_72_resize, 0);
  -- node of type 'output' in stage 13 with id 73 and associated fundamentals [[368], [764], [1010]]
  c_73_resize <= c_64;
  c_73 <= shift_left(c_73_resize, 0);
end architecture;

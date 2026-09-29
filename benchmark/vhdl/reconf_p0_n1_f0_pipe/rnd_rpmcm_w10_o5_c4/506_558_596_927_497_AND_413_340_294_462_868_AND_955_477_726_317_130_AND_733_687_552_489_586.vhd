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
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_2_False_resize: signed(18 downto 0);
  signal c_1_0_2_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_0_0_False_resize: signed(17 downto 0);
  signal c_2_0_0_False_shift: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
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
  signal c_6: signed(20 downto 0);
  signal c_6_5_2_False_resize: signed(20 downto 0);
  signal c_6_5_2_False_shift: signed(20 downto 0);
  signal c_6_3_1_False_resize: signed(20 downto 0);
  signal c_6_3_1_False_shift: signed(20 downto 0);
  signal c_6_3_0_False_resize: signed(20 downto 0);
  signal c_6_3_0_False_shift: signed(20 downto 0);
  signal c_6_3_3_False_resize: signed(20 downto 0);
  signal c_6_3_3_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_3_3_False_resize: signed(22 downto 0);
  signal c_7_3_3_False_shift: signed(22 downto 0);
  signal c_7_5_5_False_resize: signed(22 downto 0);
  signal c_7_5_5_False_shift: signed(22 downto 0);
  signal c_7_5_0_False_resize: signed(22 downto 0);
  signal c_7_5_0_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_13_8_0_False_resize: signed(21 downto 0);
  signal c_13_8_0_False_shift: signed(21 downto 0);
  signal c_13_12_3_False_resize: signed(21 downto 0);
  signal c_13_12_3_False_shift: signed(21 downto 0);
  signal c_13_10_1_False_resize: signed(21 downto 0);
  signal c_13_10_1_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_5_9_False_resize: signed(24 downto 0);
  signal c_14_5_9_False_shift: signed(24 downto 0);
  signal c_14_3_0_False_resize: signed(24 downto 0);
  signal c_14_3_0_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(20 downto 0);
  signal c_19: signed(20 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_19_0_False_resize: signed(25 downto 0);
  signal c_22_19_0_False_shift: signed(25 downto 0);
  signal c_22_19_4_False_resize: signed(25 downto 0);
  signal c_22_19_4_False_shift: signed(25 downto 0);
  signal c_22_21_5_False_resize: signed(25 downto 0);
  signal c_22_21_5_False_shift: signed(25 downto 0);
  signal c_22_17_0_False_resize: signed(25 downto 0);
  signal c_22_17_0_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(15 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_24_7_False_resize: signed(24 downto 0);
  signal c_25_24_7_False_shift: signed(24 downto 0);
  signal c_25_19_0_False_resize: signed(24 downto 0);
  signal c_25_19_0_False_shift: signed(24 downto 0);
  signal c_25_17_0_False_resize: signed(24 downto 0);
  signal c_25_17_0_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_i0_resize: signed(25 downto 0);
  signal c_26_i1_resize: signed(25 downto 0);
  signal c_26_i0_shift: signed(25 downto 0);
  signal c_26_i1_shift: signed(25 downto 0);
  signal c_26_arith: signed(25 downto 0);
  signal c_26_oshift: signed(25 downto 0);
  signal c_27: signed(20 downto 0);
  signal c_28: signed(20 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_28_5_False_resize: signed(25 downto 0);
  signal c_29_28_5_False_shift: signed(25 downto 0);
  signal c_29_26_0_False_resize: signed(25 downto 0);
  signal c_29_26_0_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_34_31_1_False_resize: signed(24 downto 0);
  signal c_34_31_1_False_shift: signed(24 downto 0);
  signal c_34_26_0_False_resize: signed(24 downto 0);
  signal c_34_26_0_False_shift: signed(24 downto 0);
  signal c_34_28_0_False_resize: signed(24 downto 0);
  signal c_34_28_0_False_shift: signed(24 downto 0);
  signal c_34_33_1_False_resize: signed(24 downto 0);
  signal c_34_33_1_False_shift: signed(24 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_i0_resize: signed(25 downto 0);
  signal c_35_i1_resize: signed(25 downto 0);
  signal c_35_i0_shift: signed(25 downto 0);
  signal c_35_i1_shift: signed(25 downto 0);
  signal c_35_arith: signed(25 downto 0);
  signal c_35_oshift: signed(25 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_0_0_False_resize: signed(23 downto 0);
  signal c_36_0_0_False_shift: signed(23 downto 0);
  signal c_36_0_8_False_resize: signed(23 downto 0);
  signal c_36_0_8_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_37_12_0_False_resize: signed(24 downto 0);
  signal c_37_12_0_False_shift: signed(24 downto 0);
  signal c_37_8_4_False_resize: signed(24 downto 0);
  signal c_37_8_4_False_shift: signed(24 downto 0);
  signal c_37_8_3_False_resize: signed(24 downto 0);
  signal c_37_8_3_False_shift: signed(24 downto 0);
  signal c_37_10_7_False_resize: signed(24 downto 0);
  signal c_37_10_7_False_shift: signed(24 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_42_i0_resize: signed(24 downto 0);
  signal c_42_i1_resize: signed(24 downto 0);
  signal c_42_i0_shift: signed(24 downto 0);
  signal c_42_i1_shift: signed(24 downto 0);
  signal c_42_arith: signed(24 downto 0);
  signal c_42_oshift: signed(24 downto 0);
  signal c_42_sub_sel: std_logic;
  signal c_43: signed(23 downto 0);
  signal c_43_8_0_False_resize: signed(23 downto 0);
  signal c_43_8_0_False_shift: signed(23 downto 0);
  signal c_43_8_3_False_resize: signed(23 downto 0);
  signal c_43_8_3_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_12_0_False_resize: signed(24 downto 0);
  signal c_44_12_0_False_shift: signed(24 downto 0);
  signal c_44_12_4_False_resize: signed(24 downto 0);
  signal c_44_12_4_False_shift: signed(24 downto 0);
  signal c_44_8_4_False_resize: signed(24 downto 0);
  signal c_44_8_4_False_shift: signed(24 downto 0);
  signal c_44_sel: std_logic_vector(1 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_28_7_False_resize: signed(24 downto 0);
  signal c_48_28_7_False_shift: signed(24 downto 0);
  signal c_48_26_0_False_resize: signed(24 downto 0);
  signal c_48_26_0_False_shift: signed(24 downto 0);
  signal c_48_47_0_False_resize: signed(24 downto 0);
  signal c_48_47_0_False_shift: signed(24 downto 0);
  signal c_48_31_2_False_resize: signed(24 downto 0);
  signal c_48_31_2_False_shift: signed(24 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_49_24_0_False_resize: signed(24 downto 0);
  signal c_49_24_0_False_shift: signed(24 downto 0);
  signal c_49_21_4_False_resize: signed(24 downto 0);
  signal c_49_21_4_False_shift: signed(24 downto 0);
  signal c_49_42_0_False_resize: signed(24 downto 0);
  signal c_49_42_0_False_shift: signed(24 downto 0);
  signal c_49_sel: std_logic_vector(1 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_i0_resize: signed(25 downto 0);
  signal c_52_i1_resize: signed(25 downto 0);
  signal c_52_i0_shift: signed(25 downto 0);
  signal c_52_i1_shift: signed(25 downto 0);
  signal c_52_arith: signed(25 downto 0);
  signal c_52_oshift: signed(25 downto 0);
  signal c_52_sub_sel: std_logic;
  signal c_53: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_54_0_False_resize: signed(25 downto 0);
  signal c_55_54_0_False_shift: signed(25 downto 0);
  signal c_55_54_1_False_resize: signed(25 downto 0);
  signal c_55_54_1_False_shift: signed(25 downto 0);
  signal c_55_52_0_False_resize: signed(25 downto 0);
  signal c_55_52_0_False_shift: signed(25 downto 0);
  signal c_55_sel: std_logic_vector(1 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_57_2_False_resize: signed(25 downto 0);
  signal c_58_57_2_False_shift: signed(25 downto 0);
  signal c_58_35_0_False_resize: signed(25 downto 0);
  signal c_58_35_0_False_shift: signed(25 downto 0);
  signal c_58_35_1_False_resize: signed(25 downto 0);
  signal c_58_35_1_False_shift: signed(25 downto 0);
  signal c_58_54_0_False_resize: signed(25 downto 0);
  signal c_58_54_0_False_shift: signed(25 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_57_0_False_resize: signed(25 downto 0);
  signal c_59_57_0_False_shift: signed(25 downto 0);
  signal c_59_52_0_False_resize: signed(25 downto 0);
  signal c_59_52_0_False_shift: signed(25 downto 0);
  signal c_59_sel: std_logic_vector(0 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(24 downto 0);
  signal c_63: signed(24 downto 0);
  signal c_64: signed(24 downto 0);
  signal c_65: signed(24 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_66_52_0_False_resize: signed(25 downto 0);
  signal c_66_52_0_False_shift: signed(25 downto 0);
  signal c_66_65_0_False_resize: signed(25 downto 0);
  signal c_66_65_0_False_shift: signed(25 downto 0);
  signal c_66_35_0_False_resize: signed(25 downto 0);
  signal c_66_35_0_False_shift: signed(25 downto 0);
  signal c_66_61_0_False_resize: signed(25 downto 0);
  signal c_66_61_0_False_shift: signed(25 downto 0);
  signal c_66_sel: std_logic_vector(1 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_67_65_0_False_resize: signed(25 downto 0);
  signal c_67_65_0_False_shift: signed(25 downto 0);
  signal c_67_35_0_False_resize: signed(25 downto 0);
  signal c_67_35_0_False_shift: signed(25 downto 0);
  signal c_67_52_0_False_resize: signed(25 downto 0);
  signal c_67_52_0_False_shift: signed(25 downto 0);
  signal c_67_sel: std_logic_vector(1 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_68_resize: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_69_resize: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_resize: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_resize: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_72_resize: signed(25 downto 0);
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
  -- output node 0 with id 68
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_68);
    end if;
  end process;
  -- output node 1 with id 69
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_69);
    end if;
  end process;
  -- output node 2 with id 70
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_70);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [8], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 19);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_0_False_shift;
        when "01" => c_1 <= c_1_0_2_False_shift;
        when others => c_1 <= c_1_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [4], [1], [1]]
  c_2_0_0_False_resize <= resize(c_0, 18);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[15], [28], [5], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
      w_o => 21,
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
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[4], [28], [10], [24]]
  c_6_5_2_False_resize <= resize(c_5, 21);
  c_6_5_2_False_shift <= shift_left(c_6_5_2_False_resize, 2);
  c_6_3_1_False_resize <= c_3;
  c_6_3_1_False_shift <= shift_left(c_6_3_1_False_resize, 1);
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_3_3_False_resize <= c_3;
  c_6_3_3_False_shift <= shift_left(c_6_3_3_False_resize, 3);
  with config_select_3 select c_6_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_5_2_False_shift;
        when "01" => c_6 <= c_6_3_1_False_shift;
        when "10" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[120], [1], [32], [1]]
  c_7_3_3_False_resize <= resize(c_3, 23);
  c_7_3_3_False_shift <= shift_left(c_7_3_3_False_resize, 3);
  c_7_5_5_False_resize <= resize(c_5, 23);
  c_7_5_5_False_shift <= shift_left(c_7_5_5_False_resize, 5);
  c_7_5_0_False_resize <= resize(c_5, 23);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_3_3_False_shift;
        when "01" => c_7 <= c_7_5_5_False_shift;
        when others => c_7 <= c_7_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[-116], [29], [-22], [23]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[15], [28], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[15], [28], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[2], [29], [40], [23]]
  c_13_8_0_False_resize <= c_8(21 downto 0);
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  c_13_12_3_False_resize <= resize(c_12, 22);
  c_13_12_3_False_shift <= shift_left(c_13_12_3_False_resize, 3);
  c_13_10_1_False_resize <= resize(c_10, 22);
  c_13_10_1_False_shift <= shift_left(c_13_10_1_False_resize, 1);
  with config_select_5 select c_13_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_8_0_False_shift;
        when "01" => c_13 <= c_13_12_3_False_shift;
        when others => c_13 <= c_13_10_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[15], [512], [512], [512]]
  c_14_5_9_False_resize <= resize(c_5, 25);
  c_14_5_9_False_shift <= shift_left(c_14_5_9_False_resize, 9);
  c_14_3_0_False_resize <= resize(c_3, 25);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_5_9_False_shift;
        when others => c_14 <= c_14_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[15], [512], [512], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[15], [512], [512], [512]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[-13], [541], [-472], [-489]]
  with config_select_6 select c_17_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_17_sub_sel,
      x_i => c_13,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[15], [28], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[15], [28], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[-116], [29], [-22], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[-116], [29], [-22], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 22 and associated fundamentals [[240], [541], [5], [736]]
  c_22_19_0_False_resize <= resize(c_19, 26);
  c_22_19_0_False_shift <= shift_left(c_22_19_0_False_resize, 0);
  c_22_19_4_False_resize <= resize(c_19, 26);
  c_22_19_4_False_shift <= shift_left(c_22_19_4_False_resize, 4);
  c_22_21_5_False_resize <= resize(c_21, 26);
  c_22_21_5_False_shift <= shift_left(c_22_21_5_False_resize, 5);
  c_22_17_0_False_resize <= c_17;
  c_22_17_0_False_shift <= shift_left(c_22_17_0_False_resize, 0);
  with config_select_7 select c_22_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_19_0_False_shift;
        when "01" => c_22 <= c_22_19_4_False_shift;
        when "10" => c_22 <= c_22_21_5_False_shift;
        when others => c_22 <= c_22_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[-13], [128], [-472], [3]]
  c_25_24_7_False_resize <= resize(c_24, 25);
  c_25_24_7_False_shift <= shift_left(c_25_24_7_False_resize, 7);
  c_25_19_0_False_resize <= resize(c_19, 25);
  c_25_19_0_False_shift <= shift_left(c_25_19_0_False_resize, 0);
  c_25_17_0_False_resize <= c_17(24 downto 0);
  c_25_17_0_False_shift <= shift_left(c_25_17_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_24_7_False_shift;
        when "01" => c_25 <= c_25_19_0_False_shift;
        when others => c_25 <= c_25_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 26 and associated fundamentals [[253], [413], [477], [733]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      x_i => c_22,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[15], [28], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 28 and associated fundamentals [[15], [28], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 29 and associated fundamentals [[253], [896], [160], [733]]
  c_29_28_5_False_resize <= resize(c_28, 26);
  c_29_28_5_False_shift <= shift_left(c_29_28_5_False_resize, 5);
  c_29_26_0_False_resize <= c_26;
  c_29_26_0_False_shift <= shift_left(c_29_26_0_False_resize, 0);
  with config_select_9 select c_29_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_28_5_False_shift;
        when others => c_29 <= c_29_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[-116], [29], [-22], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 31 and associated fundamentals [[-116], [29], [-22], [23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[-13], [541], [-472], [-489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[-13], [541], [-472], [-489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 34 and associated fundamentals [[-26], [28], [477], [46]]
  c_34_31_1_False_resize <= resize(c_31, 25);
  c_34_31_1_False_shift <= shift_left(c_34_31_1_False_resize, 1);
  c_34_26_0_False_resize <= c_26(24 downto 0);
  c_34_26_0_False_shift <= shift_left(c_34_26_0_False_resize, 0);
  c_34_28_0_False_resize <= resize(c_28, 25);
  c_34_28_0_False_shift <= shift_left(c_34_28_0_False_resize, 0);
  c_34_33_1_False_resize <= c_33(24 downto 0);
  c_34_33_1_False_shift <= shift_left(c_34_33_1_False_resize, 1);
  with config_select_9 select c_34_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_31_1_False_shift;
        when "01" => c_34 <= c_34_26_0_False_shift;
        when "10" => c_34 <= c_34_28_0_False_shift;
        when others => c_34 <= c_34_33_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 35 and associated fundamentals [[279], [868], [-317], [687]]
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      x_i => c_29,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 36 and associated fundamentals [[256], [1], [1], [1]]
  c_36_0_0_False_resize <= resize(c_0, 24);
  c_36_0_0_False_shift <= shift_left(c_36_0_0_False_resize, 0);
  c_36_0_8_False_resize <= resize(c_0, 24);
  c_36_0_8_False_shift <= shift_left(c_36_0_8_False_resize, 8);
  with config_select_1 select c_36_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_0_0_False_shift;
        when others => c_36 <= c_36_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 37 and associated fundamentals [[15], [464], [128], [184]]
  c_37_12_0_False_resize <= resize(c_12, 25);
  c_37_12_0_False_shift <= shift_left(c_37_12_0_False_resize, 0);
  c_37_8_4_False_resize <= resize(c_8, 25);
  c_37_8_4_False_shift <= shift_left(c_37_8_4_False_resize, 4);
  c_37_8_3_False_resize <= resize(c_8, 25);
  c_37_8_3_False_shift <= shift_left(c_37_8_3_False_resize, 3);
  c_37_10_7_False_resize <= resize(c_10, 25);
  c_37_10_7_False_shift <= shift_left(c_37_10_7_False_resize, 7);
  with config_select_5 select c_37_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_12_0_False_shift;
        when "01" => c_37 <= c_37_8_4_False_shift;
        when "10" => c_37 <= c_37_8_3_False_shift;
        when others => c_37 <= c_37_10_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 38 and associated fundamentals [[256], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 39 and associated fundamentals [[256], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 40 and associated fundamentals [[256], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 41 and associated fundamentals [[256], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 42 and associated fundamentals [[497], [-462], [130], [-182]]
  with config_select_6 select c_42_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
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
      sub_i => c_42_sub_sel,
      x_i => c_41,
      y_i => c_37,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 43 and associated fundamentals [[-116], [29], [-22], [184]]
  c_43_8_0_False_resize <= resize(c_8, 24);
  c_43_8_0_False_shift <= shift_left(c_43_8_0_False_resize, 0);
  c_43_8_3_False_resize <= resize(c_8, 24);
  c_43_8_3_False_shift <= shift_left(c_43_8_3_False_resize, 3);
  with config_select_5 select c_43_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_8_0_False_shift;
        when others => c_43 <= c_43_8_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 44 and associated fundamentals [[240], [28], [-352], [368]]
  c_44_12_0_False_resize <= resize(c_12, 25);
  c_44_12_0_False_shift <= shift_left(c_44_12_0_False_resize, 0);
  c_44_12_4_False_resize <= resize(c_12, 25);
  c_44_12_4_False_shift <= shift_left(c_44_12_4_False_resize, 4);
  c_44_8_4_False_resize <= resize(c_8, 25);
  c_44_8_4_False_shift <= shift_left(c_44_8_4_False_resize, 4);
  with config_select_5 select c_44_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "00" => c_44 <= c_44_12_0_False_shift;
        when "01" => c_44 <= c_44_12_4_False_shift;
        when others => c_44 <= c_44_8_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 45 and associated fundamentals [[-596], [85], [-726], [-552]]
  with config_select_6 select c_45_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 24,
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
  -- node of type 'register' in stage 7 with id 46 and associated fundamentals [[-596], [85], [-726], [-552]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[-596], [85], [-726], [-552]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 48 and associated fundamentals [[-464], [85], [477], [384]]
  c_48_28_7_False_resize <= resize(c_28, 25);
  c_48_28_7_False_shift <= shift_left(c_48_28_7_False_resize, 7);
  c_48_26_0_False_resize <= c_26(24 downto 0);
  c_48_26_0_False_shift <= shift_left(c_48_26_0_False_resize, 0);
  c_48_47_0_False_resize <= c_47(24 downto 0);
  c_48_47_0_False_shift <= shift_left(c_48_47_0_False_resize, 0);
  c_48_31_2_False_resize <= resize(c_31, 25);
  c_48_31_2_False_shift <= shift_left(c_48_31_2_False_resize, 2);
  with config_select_9 select c_48_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_28_7_False_shift;
        when "01" => c_48 <= c_48_26_0_False_shift;
        when "10" => c_48 <= c_48_47_0_False_shift;
        when others => c_48 <= c_48_31_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 49 and associated fundamentals [[1], [464], [1], [-182]]
  c_49_24_0_False_resize <= resize(c_24, 25);
  c_49_24_0_False_shift <= shift_left(c_49_24_0_False_resize, 0);
  c_49_21_4_False_resize <= resize(c_21, 25);
  c_49_21_4_False_shift <= shift_left(c_49_21_4_False_resize, 4);
  c_49_42_0_False_resize <= c_42;
  c_49_42_0_False_shift <= shift_left(c_49_42_0_False_resize, 0);
  with config_select_7 select c_49_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_49_sel is
        when "00" => c_49 <= c_49_24_0_False_shift;
        when "01" => c_49 <= c_49_21_4_False_shift;
        when others => c_49 <= c_49_42_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[1], [464], [1], [-182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[1], [464], [1], [-182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 52 and associated fundamentals [[-927], [-294], [955], [586]]
  with config_select_10 select c_52_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_52: entity work.adder_node
    generic map (
      w_x_i => 25,
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
  -- node of type 'register' in stage 9 with id 53 and associated fundamentals [[253], [413], [477], [733]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 54 and associated fundamentals [[253], [413], [477], [733]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 55 and associated fundamentals [[506], [413], [955], [733]]
  c_55_54_0_False_resize <= c_54;
  c_55_54_0_False_shift <= shift_left(c_55_54_0_False_resize, 0);
  c_55_54_1_False_resize <= c_54;
  c_55_54_1_False_shift <= shift_left(c_55_54_1_False_resize, 1);
  c_55_52_0_False_resize <= c_52;
  c_55_52_0_False_shift <= shift_left(c_55_52_0_False_resize, 0);
  with config_select_11 select c_55_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_55_sel is
        when "00" => c_55 <= c_55_54_0_False_shift;
        when "01" => c_55 <= c_55_54_1_False_shift;
        when others => c_55 <= c_55_52_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[-596], [85], [-726], [-552]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[-596], [85], [-726], [-552]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 58 and associated fundamentals [[558], [340], [477], [687]]
  c_58_57_2_False_resize <= c_57;
  c_58_57_2_False_shift <= shift_left(c_58_57_2_False_resize, 2);
  c_58_35_0_False_resize <= c_35;
  c_58_35_0_False_shift <= shift_left(c_58_35_0_False_resize, 0);
  c_58_35_1_False_resize <= c_35;
  c_58_35_1_False_shift <= shift_left(c_58_35_1_False_resize, 1);
  c_58_54_0_False_resize <= c_54;
  c_58_54_0_False_shift <= shift_left(c_58_54_0_False_resize, 0);
  with config_select_11 select c_58_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "00" => c_58 <= c_58_57_2_False_shift;
        when "01" => c_58 <= c_58_35_0_False_shift;
        when "10" => c_58 <= c_58_35_1_False_shift;
        when others => c_58 <= c_58_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 59 and associated fundamentals [[-596], [-294], [-726], [-552]]
  c_59_57_0_False_resize <= c_57;
  c_59_57_0_False_shift <= shift_left(c_59_57_0_False_resize, 0);
  c_59_52_0_False_resize <= c_52;
  c_59_52_0_False_shift <= shift_left(c_59_52_0_False_resize, 0);
  with config_select_11 select c_59_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "0" => c_59 <= c_59_57_0_False_shift;
        when others => c_59 <= c_59_52_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 60 and associated fundamentals [[-13], [541], [-472], [-489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 61 and associated fundamentals [[-13], [541], [-472], [-489]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 62 and associated fundamentals [[497], [-462], [130], [-182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 63 and associated fundamentals [[497], [-462], [130], [-182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 64 and associated fundamentals [[497], [-462], [130], [-182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 65 and associated fundamentals [[497], [-462], [130], [-182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 66 and associated fundamentals [[-927], [-462], [-317], [-489]]
  c_66_52_0_False_resize <= c_52;
  c_66_52_0_False_shift <= shift_left(c_66_52_0_False_resize, 0);
  c_66_65_0_False_resize <= resize(c_65, 26);
  c_66_65_0_False_shift <= shift_left(c_66_65_0_False_resize, 0);
  c_66_35_0_False_resize <= c_35;
  c_66_35_0_False_shift <= shift_left(c_66_35_0_False_resize, 0);
  c_66_61_0_False_resize <= c_61;
  c_66_61_0_False_shift <= shift_left(c_66_61_0_False_resize, 0);
  with config_select_11 select c_66_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_66_sel is
        when "00" => c_66 <= c_66_52_0_False_shift;
        when "01" => c_66 <= c_66_65_0_False_shift;
        when "10" => c_66 <= c_66_35_0_False_shift;
        when others => c_66 <= c_66_61_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 67 and associated fundamentals [[497], [868], [130], [586]]
  c_67_65_0_False_resize <= resize(c_65, 26);
  c_67_65_0_False_shift <= shift_left(c_67_65_0_False_resize, 0);
  c_67_35_0_False_resize <= c_35;
  c_67_35_0_False_shift <= shift_left(c_67_35_0_False_resize, 0);
  c_67_52_0_False_resize <= c_52;
  c_67_52_0_False_shift <= shift_left(c_67_52_0_False_resize, 0);
  with config_select_11 select c_67_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_67_sel is
        when "00" => c_67 <= c_67_65_0_False_shift;
        when "01" => c_67 <= c_67_35_0_False_shift;
        when others => c_67 <= c_67_52_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 68 and associated fundamentals [[506], [413], [955], [733]]
  c_68_resize <= c_55;
  c_68 <= shift_left(c_68_resize, 0);
  -- node of type 'output' in stage 11 with id 69 and associated fundamentals [[558], [340], [477], [687]]
  c_69_resize <= c_58;
  c_69 <= shift_left(c_69_resize, 0);
  -- node of type 'output' in stage 11 with id 70 and associated fundamentals [[596], [294], [726], [552]]
  c_70_resize <= c_59;
  c_70 <= -shift_left(c_70_resize, 0);
  -- node of type 'output' in stage 11 with id 71 and associated fundamentals [[927], [462], [317], [489]]
  c_71_resize <= c_66;
  c_71 <= -shift_left(c_71_resize, 0);
  -- node of type 'output' in stage 11 with id 72 and associated fundamentals [[497], [868], [130], [586]]
  c_72_resize <= c_67;
  c_72 <= shift_left(c_72_resize, 0);
end architecture;

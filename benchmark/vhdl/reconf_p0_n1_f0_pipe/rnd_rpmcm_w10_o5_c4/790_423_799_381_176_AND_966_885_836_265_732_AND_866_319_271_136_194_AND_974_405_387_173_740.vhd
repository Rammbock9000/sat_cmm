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
  signal c_1: signed(22 downto 0);
  signal c_1_0_0_False_resize: signed(22 downto 0);
  signal c_1_0_0_False_shift: signed(22 downto 0);
  signal c_1_0_7_False_resize: signed(22 downto 0);
  signal c_1_0_7_False_shift: signed(22 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_0_1_False_resize: signed(18 downto 0);
  signal c_2_0_1_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_3_0_False_resize: signed(22 downto 0);
  signal c_6_3_0_False_shift: signed(22 downto 0);
  signal c_6_5_2_False_resize: signed(22 downto 0);
  signal c_6_5_2_False_shift: signed(22 downto 0);
  signal c_6_3_3_False_resize: signed(22 downto 0);
  signal c_6_3_3_False_shift: signed(22 downto 0);
  signal c_6_3_5_False_resize: signed(22 downto 0);
  signal c_6_3_5_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_5_0_False_resize: signed(21 downto 0);
  signal c_7_5_0_False_shift: signed(21 downto 0);
  signal c_7_3_3_False_resize: signed(21 downto 0);
  signal c_7_3_3_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_12_2_False_resize: signed(24 downto 0);
  signal c_13_12_2_False_shift: signed(24 downto 0);
  signal c_13_8_0_False_resize: signed(24 downto 0);
  signal c_13_8_0_False_shift: signed(24 downto 0);
  signal c_13_10_4_False_resize: signed(24 downto 0);
  signal c_13_10_4_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_3_6_False_resize: signed(24 downto 0);
  signal c_14_3_6_False_shift: signed(24 downto 0);
  signal c_14_3_0_False_resize: signed(24 downto 0);
  signal c_14_3_0_False_shift: signed(24 downto 0);
  signal c_14_5_0_False_resize: signed(24 downto 0);
  signal c_14_5_0_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(23 downto 0);
  signal c_18_5_2_False_resize: signed(23 downto 0);
  signal c_18_5_2_False_shift: signed(23 downto 0);
  signal c_18_3_6_False_resize: signed(23 downto 0);
  signal c_18_3_6_False_shift: signed(23 downto 0);
  signal c_18_3_0_False_resize: signed(23 downto 0);
  signal c_18_3_0_False_shift: signed(23 downto 0);
  signal c_18_5_7_False_resize: signed(23 downto 0);
  signal c_18_5_7_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_12_0_False_resize: signed(22 downto 0);
  signal c_19_12_0_False_shift: signed(22 downto 0);
  signal c_19_8_0_False_resize: signed(22 downto 0);
  signal c_19_8_0_False_shift: signed(22 downto 0);
  signal c_19_12_5_False_resize: signed(22 downto 0);
  signal c_19_12_5_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_i0_resize: signed(24 downto 0);
  signal c_22_i1_resize: signed(24 downto 0);
  signal c_22_i0_shift: signed(24 downto 0);
  signal c_22_i1_shift: signed(24 downto 0);
  signal c_22_arith: signed(24 downto 0);
  signal c_22_oshift: signed(24 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(22 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_22_0_False_resize: signed(25 downto 0);
  signal c_25_22_0_False_shift: signed(25 downto 0);
  signal c_25_24_3_False_resize: signed(25 downto 0);
  signal c_25_24_3_False_shift: signed(25 downto 0);
  signal c_25_24_6_False_resize: signed(25 downto 0);
  signal c_25_24_6_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(15 downto 0);
  signal c_27: signed(15 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_22_0_False_resize: signed(24 downto 0);
  signal c_28_22_0_False_shift: signed(24 downto 0);
  signal c_28_24_4_False_resize: signed(24 downto 0);
  signal c_28_24_4_False_shift: signed(24 downto 0);
  signal c_28_27_0_False_resize: signed(24 downto 0);
  signal c_28_27_0_False_shift: signed(24 downto 0);
  signal c_28_27_2_False_resize: signed(24 downto 0);
  signal c_28_27_2_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_i0_resize: signed(24 downto 0);
  signal c_29_i1_resize: signed(24 downto 0);
  signal c_29_i0_shift: signed(24 downto 0);
  signal c_29_i1_shift: signed(24 downto 0);
  signal c_29_arith: signed(24 downto 0);
  signal c_29_oshift: signed(24 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_29_1_False_resize: signed(24 downto 0);
  signal c_36_29_1_False_shift: signed(24 downto 0);
  signal c_36_29_0_False_resize: signed(24 downto 0);
  signal c_36_29_0_False_shift: signed(24 downto 0);
  signal c_36_33_2_False_resize: signed(24 downto 0);
  signal c_36_33_2_False_shift: signed(24 downto 0);
  signal c_36_35_0_False_resize: signed(24 downto 0);
  signal c_36_35_0_False_shift: signed(24 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_37_22_0_False_resize: signed(22 downto 0);
  signal c_37_22_0_False_shift: signed(22 downto 0);
  signal c_37_24_0_False_resize: signed(22 downto 0);
  signal c_37_24_0_False_shift: signed(22 downto 0);
  signal c_37_24_2_False_resize: signed(22 downto 0);
  signal c_37_24_2_False_shift: signed(22 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_i0_resize: signed(25 downto 0);
  signal c_40_i1_resize: signed(25 downto 0);
  signal c_40_i0_shift: signed(25 downto 0);
  signal c_40_i1_shift: signed(25 downto 0);
  signal c_40_arith: signed(25 downto 0);
  signal c_40_oshift: signed(25 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(22 downto 0);
  signal c_41_10_6_False_resize: signed(22 downto 0);
  signal c_41_10_6_False_shift: signed(22 downto 0);
  signal c_41_8_0_False_resize: signed(22 downto 0);
  signal c_41_8_0_False_shift: signed(22 downto 0);
  signal c_41_10_7_False_resize: signed(22 downto 0);
  signal c_41_10_7_False_shift: signed(22 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_31_0_False_resize: signed(25 downto 0);
  signal c_42_31_0_False_shift: signed(25 downto 0);
  signal c_42_17_1_False_resize: signed(25 downto 0);
  signal c_42_17_1_False_shift: signed(25 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(22 downto 0);
  signal c_47: signed(22 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_47_0_False_resize: signed(25 downto 0);
  signal c_50_47_0_False_shift: signed(25 downto 0);
  signal c_50_49_1_False_resize: signed(25 downto 0);
  signal c_50_49_1_False_shift: signed(25 downto 0);
  signal c_50_45_0_False_resize: signed(25 downto 0);
  signal c_50_45_0_False_shift: signed(25 downto 0);
  signal c_50_sel: std_logic_vector(1 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_51_8_3_False_resize: signed(24 downto 0);
  signal c_51_8_3_False_shift: signed(24 downto 0);
  signal c_51_12_4_False_resize: signed(24 downto 0);
  signal c_51_12_4_False_shift: signed(24 downto 0);
  signal c_51_8_0_False_resize: signed(24 downto 0);
  signal c_51_8_0_False_shift: signed(24 downto 0);
  signal c_51_sel: std_logic_vector(1 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_i0_resize: signed(25 downto 0);
  signal c_56_i1_resize: signed(25 downto 0);
  signal c_56_i0_shift: signed(25 downto 0);
  signal c_56_i1_shift: signed(25 downto 0);
  signal c_56_arith: signed(25 downto 0);
  signal c_56_oshift: signed(25 downto 0);
  signal c_56_sub_sel: std_logic;
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_58_0_False_resize: signed(25 downto 0);
  signal c_59_58_0_False_shift: signed(25 downto 0);
  signal c_59_40_0_False_resize: signed(25 downto 0);
  signal c_59_40_0_False_shift: signed(25 downto 0);
  signal c_59_sel: std_logic_vector(0 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_58_0_False_resize: signed(25 downto 0);
  signal c_60_58_0_False_shift: signed(25 downto 0);
  signal c_60_56_0_False_resize: signed(25 downto 0);
  signal c_60_56_0_False_shift: signed(25 downto 0);
  signal c_60_sel: std_logic_vector(0 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_40_1_False_resize: signed(25 downto 0);
  signal c_61_40_1_False_shift: signed(25 downto 0);
  signal c_61_56_0_False_resize: signed(25 downto 0);
  signal c_61_56_0_False_shift: signed(25 downto 0);
  signal c_61_40_0_False_resize: signed(25 downto 0);
  signal c_61_40_0_False_shift: signed(25 downto 0);
  signal c_61_sel: std_logic_vector(1 downto 0);
  signal c_62: signed(24 downto 0);
  signal c_62_35_0_False_resize: signed(24 downto 0);
  signal c_62_35_0_False_shift: signed(24 downto 0);
  signal c_62_49_3_False_resize: signed(24 downto 0);
  signal c_62_49_3_False_shift: signed(24 downto 0);
  signal c_62_29_0_False_resize: signed(24 downto 0);
  signal c_62_29_0_False_shift: signed(24 downto 0);
  signal c_62_sel: std_logic_vector(1 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_29_1_False_resize: signed(25 downto 0);
  signal c_63_29_1_False_shift: signed(25 downto 0);
  signal c_63_29_0_False_resize: signed(25 downto 0);
  signal c_63_29_0_False_shift: signed(25 downto 0);
  signal c_63_49_1_False_resize: signed(25 downto 0);
  signal c_63_49_1_False_shift: signed(25 downto 0);
  signal c_63_49_2_False_resize: signed(25 downto 0);
  signal c_63_49_2_False_shift: signed(25 downto 0);
  signal c_63_sel: std_logic_vector(1 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_resize: signed(25 downto 0);
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
  -- output node 0 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_64);
    end if;
  end process;
  -- output node 1 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_65);
    end if;
  end process;
  -- output node 2 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_66);
    end if;
  end process;
  -- output node 3 with id 69
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_69);
    end if;
  end process;
  -- output node 4 with id 72
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_72);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [128], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 23);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_7_False_resize <= resize(c_0, 23);
  c_1_0_7_False_shift <= shift_left(c_1_0_7_False_resize, 7);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [8], [1], [2]]
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_1_False_resize <= resize(c_0, 19);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_3_False_shift;
        when others => c_2 <= c_2_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [112], [3], [5]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
      w_o => 23,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[24], [4], [96], [5]]
  c_6_3_0_False_resize <= c_3;
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_2_False_resize <= resize(c_5, 23);
  c_6_5_2_False_shift <= shift_left(c_6_5_2_False_resize, 2);
  c_6_3_3_False_resize <= c_3;
  c_6_3_3_False_shift <= shift_left(c_6_3_3_False_resize, 3);
  c_6_3_5_False_resize <= c_3;
  c_6_3_5_False_shift <= shift_left(c_6_3_5_False_resize, 5);
  with config_select_3 select c_6_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_0_False_shift;
        when "01" => c_6 <= c_6_5_2_False_shift;
        when "10" => c_6 <= c_6_3_3_False_shift;
        when others => c_6 <= c_6_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[1], [1], [1], [40]]
  c_7_5_0_False_resize <= resize(c_5, 22);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_3_3_False_resize <= c_3(21 downto 0);
  c_7_3_3_False_shift <= shift_left(c_7_3_3_False_resize, 3);
  with config_select_3 select c_7_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_5_0_False_shift;
        when others => c_7 <= c_7_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[47], [9], [193], [50]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 24,
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
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[3], [112], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[3], [112], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[47], [448], [16], [50]]
  c_13_12_2_False_resize <= resize(c_12, 25);
  c_13_12_2_False_shift <= shift_left(c_13_12_2_False_resize, 2);
  c_13_8_0_False_resize <= resize(c_8, 25);
  c_13_8_0_False_shift <= shift_left(c_13_8_0_False_resize, 0);
  c_13_10_4_False_resize <= resize(c_10, 25);
  c_13_10_4_False_shift <= shift_left(c_13_10_4_False_resize, 4);
  with config_select_5 select c_13_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_12_2_False_shift;
        when "01" => c_13 <= c_13_8_0_False_shift;
        when others => c_13 <= c_13_10_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[3], [1], [1], [320]]
  c_14_3_6_False_resize <= resize(c_3, 25);
  c_14_3_6_False_shift <= shift_left(c_14_3_6_False_resize, 6);
  c_14_3_0_False_resize <= resize(c_3, 25);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  c_14_5_0_False_resize <= resize(c_5, 25);
  c_14_5_0_False_shift <= shift_left(c_14_5_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_3_6_False_shift;
        when "01" => c_14 <= c_14_3_0_False_shift;
        when others => c_14 <= c_14_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[3], [1], [1], [320]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[3], [1], [1], [320]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[44], [447], [17], [370]]
  with config_select_6 select c_17_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_17_sub_sel,
      x_i => c_13,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[192], [128], [3], [4]]
  c_18_5_2_False_resize <= resize(c_5, 24);
  c_18_5_2_False_shift <= shift_left(c_18_5_2_False_resize, 2);
  c_18_3_6_False_resize <= resize(c_3, 24);
  c_18_3_6_False_shift <= shift_left(c_18_3_6_False_resize, 6);
  c_18_3_0_False_resize <= resize(c_3, 24);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  c_18_5_7_False_resize <= resize(c_5, 24);
  c_18_5_7_False_shift <= shift_left(c_18_5_7_False_resize, 7);
  with config_select_3 select c_18_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_5_2_False_shift;
        when "01" => c_18 <= c_18_3_6_False_shift;
        when "10" => c_18 <= c_18_3_0_False_shift;
        when others => c_18 <= c_18_5_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[3], [9], [96], [5]]
  c_19_12_0_False_resize <= c_12;
  c_19_12_0_False_shift <= shift_left(c_19_12_0_False_resize, 0);
  c_19_8_0_False_resize <= c_8(22 downto 0);
  c_19_8_0_False_shift <= shift_left(c_19_8_0_False_resize, 0);
  c_19_12_5_False_resize <= c_12;
  c_19_12_5_False_shift <= shift_left(c_19_12_5_False_resize, 5);
  with config_select_5 select c_19_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_12_0_False_shift;
        when "01" => c_19 <= c_19_8_0_False_shift;
        when others => c_19 <= c_19_12_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[192], [128], [3], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[192], [128], [3], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 22 and associated fundamentals [[381], [265], [-90], [13]]
  with config_select_6 select c_22_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_22_sub_sel,
      x_i => c_21,
      y_i => c_19,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[3], [112], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[3], [112], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[381], [896], [192], [13]]
  c_25_22_0_False_resize <= resize(c_22, 26);
  c_25_22_0_False_shift <= shift_left(c_25_22_0_False_resize, 0);
  c_25_24_3_False_resize <= resize(c_24, 26);
  c_25_24_3_False_shift <= shift_left(c_25_24_3_False_resize, 3);
  c_25_24_6_False_resize <= resize(c_24, 26);
  c_25_24_6_False_shift <= shift_left(c_25_24_6_False_resize, 6);
  with config_select_7 select c_25_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_22_0_False_shift;
        when "01" => c_25 <= c_25_24_3_False_shift;
        when others => c_25 <= c_25_24_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 28 and associated fundamentals [[4], [265], [1], [80]]
  c_28_22_0_False_resize <= c_22;
  c_28_22_0_False_shift <= shift_left(c_28_22_0_False_resize, 0);
  c_28_24_4_False_resize <= resize(c_24, 25);
  c_28_24_4_False_shift <= shift_left(c_28_24_4_False_resize, 4);
  c_28_27_0_False_resize <= resize(c_27, 25);
  c_28_27_0_False_shift <= shift_left(c_28_27_0_False_resize, 0);
  c_28_27_2_False_resize <= resize(c_27, 25);
  c_28_27_2_False_shift <= shift_left(c_28_27_2_False_resize, 2);
  with config_select_7 select c_28_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_22_0_False_shift;
        when "01" => c_28 <= c_28_24_4_False_shift;
        when "10" => c_28 <= c_28_27_0_False_shift;
        when others => c_28 <= c_28_27_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 29 and associated fundamentals [[389], [366], [194], [173]]
  with config_select_8 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      sub_i => c_29_sub_sel,
      x_i => c_25,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[47], [9], [193], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[47], [9], [193], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[47], [9], [193], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[47], [9], [193], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[381], [265], [-90], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[381], [265], [-90], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 36 and associated fundamentals [[389], [265], [388], [200]]
  c_36_29_1_False_resize <= c_29;
  c_36_29_1_False_shift <= shift_left(c_36_29_1_False_resize, 1);
  c_36_29_0_False_resize <= c_29;
  c_36_29_0_False_shift <= shift_left(c_36_29_0_False_resize, 0);
  c_36_33_2_False_resize <= resize(c_33, 25);
  c_36_33_2_False_shift <= shift_left(c_36_33_2_False_resize, 2);
  c_36_35_0_False_resize <= c_35;
  c_36_35_0_False_shift <= shift_left(c_36_35_0_False_resize, 0);
  with config_select_9 select c_36_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_29_1_False_shift;
        when "01" => c_36 <= c_36_29_0_False_shift;
        when "10" => c_36 <= c_36_33_2_False_shift;
        when others => c_36 <= c_36_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 37 and associated fundamentals [[12], [112], [-90], [13]]
  c_37_22_0_False_resize <= c_22(22 downto 0);
  c_37_22_0_False_shift <= shift_left(c_37_22_0_False_resize, 0);
  c_37_24_0_False_resize <= c_24;
  c_37_24_0_False_shift <= shift_left(c_37_24_0_False_resize, 0);
  c_37_24_2_False_resize <= c_24;
  c_37_24_2_False_shift <= shift_left(c_37_24_2_False_resize, 2);
  with config_select_7 select c_37_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_22_0_False_shift;
        when "01" => c_37 <= c_37_24_0_False_shift;
        when others => c_37 <= c_37_24_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[12], [112], [-90], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 39 and associated fundamentals [[12], [112], [-90], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 40 and associated fundamentals [[790], [418], [866], [387]]
  with config_select_10 select c_40_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
      sub_i => c_40_sub_sel,
      x_i => c_36,
      y_i => c_39,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 41 and associated fundamentals [[47], [9], [64], [128]]
  c_41_10_6_False_resize <= resize(c_10, 23);
  c_41_10_6_False_shift <= shift_left(c_41_10_6_False_resize, 6);
  c_41_8_0_False_resize <= c_8(22 downto 0);
  c_41_8_0_False_shift <= shift_left(c_41_8_0_False_resize, 0);
  c_41_10_7_False_resize <= resize(c_10, 23);
  c_41_10_7_False_shift <= shift_left(c_41_10_7_False_resize, 7);
  with config_select_5 select c_41_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_10_6_False_shift;
        when "01" => c_41 <= c_41_8_0_False_shift;
        when others => c_41 <= c_41_10_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 42 and associated fundamentals [[47], [894], [193], [50]]
  c_42_31_0_False_resize <= resize(c_31, 26);
  c_42_31_0_False_shift <= shift_left(c_42_31_0_False_resize, 0);
  c_42_17_1_False_resize <= resize(c_17, 26);
  c_42_17_1_False_shift <= shift_left(c_42_17_1_False_resize, 1);
  with config_select_7 select c_42_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_31_0_False_shift;
        when others => c_42 <= c_42_17_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[47], [9], [64], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[47], [9], [64], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 45 and associated fundamentals [[423], [966], [319], [974]]
  with config_select_8 select c_45_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 26,
      w_o => 26,
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
      sub_i => c_45_sub_sel,
      x_i => c_44,
      y_i => c_42,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 46 and associated fundamentals [[3], [112], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[3], [112], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 48 and associated fundamentals [[44], [447], [17], [370]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[44], [447], [17], [370]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 50 and associated fundamentals [[423], [894], [319], [5]]
  c_50_47_0_False_resize <= resize(c_47, 26);
  c_50_47_0_False_shift <= shift_left(c_50_47_0_False_resize, 0);
  c_50_49_1_False_resize <= resize(c_49, 26);
  c_50_49_1_False_shift <= shift_left(c_50_49_1_False_resize, 1);
  c_50_45_0_False_resize <= c_45;
  c_50_45_0_False_shift <= shift_left(c_50_45_0_False_resize, 0);
  with config_select_9 select c_50_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "00" => c_50 <= c_50_47_0_False_shift;
        when "01" => c_50 <= c_50_49_1_False_shift;
        when others => c_50 <= c_50_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 51 and associated fundamentals [[376], [9], [48], [400]]
  c_51_8_3_False_resize <= resize(c_8, 25);
  c_51_8_3_False_shift <= shift_left(c_51_8_3_False_resize, 3);
  c_51_12_4_False_resize <= resize(c_12, 25);
  c_51_12_4_False_shift <= shift_left(c_51_12_4_False_resize, 4);
  c_51_8_0_False_resize <= resize(c_8, 25);
  c_51_8_0_False_shift <= shift_left(c_51_8_0_False_resize, 0);
  with config_select_5 select c_51_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "00" => c_51 <= c_51_8_3_False_shift;
        when "01" => c_51 <= c_51_12_4_False_shift;
        when others => c_51 <= c_51_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 52 and associated fundamentals [[376], [9], [48], [400]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 53 and associated fundamentals [[376], [9], [48], [400]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 54 and associated fundamentals [[376], [9], [48], [400]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 55 and associated fundamentals [[376], [9], [48], [400]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 56 and associated fundamentals [[799], [885], [271], [405]]
  with config_select_10 select c_56_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_56: entity work.adder_node
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
      sub_i => c_56_sub_sel,
      x_i => c_50,
      y_i => c_55,
      z_o => c_56_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_56_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[423], [966], [319], [974]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[423], [966], [319], [974]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 59 and associated fundamentals [[790], [966], [866], [974]]
  c_59_58_0_False_resize <= c_58;
  c_59_58_0_False_shift <= shift_left(c_59_58_0_False_resize, 0);
  c_59_40_0_False_resize <= c_40;
  c_59_40_0_False_shift <= shift_left(c_59_40_0_False_resize, 0);
  with config_select_11 select c_59_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "0" => c_59 <= c_59_58_0_False_shift;
        when others => c_59 <= c_59_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 60 and associated fundamentals [[423], [885], [319], [405]]
  c_60_58_0_False_resize <= c_58;
  c_60_58_0_False_shift <= shift_left(c_60_58_0_False_resize, 0);
  c_60_56_0_False_resize <= c_56;
  c_60_56_0_False_shift <= shift_left(c_60_56_0_False_resize, 0);
  with config_select_11 select c_60_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "0" => c_60 <= c_60_58_0_False_shift;
        when others => c_60 <= c_60_56_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 61 and associated fundamentals [[799], [836], [271], [387]]
  c_61_40_1_False_resize <= c_40;
  c_61_40_1_False_shift <= shift_left(c_61_40_1_False_resize, 1);
  c_61_56_0_False_resize <= c_56;
  c_61_56_0_False_shift <= shift_left(c_61_56_0_False_resize, 0);
  c_61_40_0_False_resize <= c_40;
  c_61_40_0_False_shift <= shift_left(c_61_40_0_False_resize, 0);
  with config_select_11 select c_61_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "00" => c_61 <= c_61_40_1_False_shift;
        when "01" => c_61 <= c_61_56_0_False_shift;
        when others => c_61 <= c_61_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 62 and associated fundamentals [[381], [265], [136], [173]]
  c_62_35_0_False_resize <= c_35;
  c_62_35_0_False_shift <= shift_left(c_62_35_0_False_resize, 0);
  c_62_49_3_False_resize <= c_49;
  c_62_49_3_False_shift <= shift_left(c_62_49_3_False_resize, 3);
  c_62_29_0_False_resize <= c_29;
  c_62_29_0_False_shift <= shift_left(c_62_29_0_False_resize, 0);
  with config_select_9 select c_62_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_62_sel is
        when "00" => c_62 <= c_62_35_0_False_shift;
        when "01" => c_62 <= c_62_49_3_False_shift;
        when others => c_62 <= c_62_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 63 and associated fundamentals [[176], [732], [194], [740]]
  c_63_29_1_False_resize <= resize(c_29, 26);
  c_63_29_1_False_shift <= shift_left(c_63_29_1_False_resize, 1);
  c_63_29_0_False_resize <= resize(c_29, 26);
  c_63_29_0_False_shift <= shift_left(c_63_29_0_False_resize, 0);
  c_63_49_1_False_resize <= resize(c_49, 26);
  c_63_49_1_False_shift <= shift_left(c_63_49_1_False_resize, 1);
  c_63_49_2_False_resize <= resize(c_49, 26);
  c_63_49_2_False_shift <= shift_left(c_63_49_2_False_resize, 2);
  with config_select_9 select c_63_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "00" => c_63 <= c_63_29_1_False_shift;
        when "01" => c_63 <= c_63_29_0_False_shift;
        when "10" => c_63 <= c_63_49_1_False_shift;
        when others => c_63 <= c_63_49_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 64 and associated fundamentals [[790], [966], [866], [974]]
  c_64_resize <= c_59;
  c_64 <= shift_left(c_64_resize, 0);
  -- node of type 'output' in stage 11 with id 65 and associated fundamentals [[423], [885], [319], [405]]
  c_65_resize <= c_60;
  c_65 <= shift_left(c_65_resize, 0);
  -- node of type 'output' in stage 11 with id 66 and associated fundamentals [[799], [836], [271], [387]]
  c_66_resize <= c_61;
  c_66 <= shift_left(c_66_resize, 0);
  -- node of type 'register' in stage 10 with id 67 and associated fundamentals [[381], [265], [136], [173]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 68 and associated fundamentals [[381], [265], [136], [173]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 69 and associated fundamentals [[381], [265], [136], [173]]
  c_69_resize <= c_68;
  c_69 <= shift_left(c_69_resize, 0);
  -- node of type 'register' in stage 10 with id 70 and associated fundamentals [[176], [732], [194], [740]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 71 and associated fundamentals [[176], [732], [194], [740]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 72 and associated fundamentals [[176], [732], [194], [740]]
  c_72_resize <= c_71;
  c_72 <= shift_left(c_72_resize, 0);
end architecture;

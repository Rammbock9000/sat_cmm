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
  signal config_select_14: std_logic_vector(1 downto 0);
  signal config_select_15: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(22 downto 0);
  signal c_1_0_7_False_resize: signed(22 downto 0);
  signal c_1_0_7_False_shift: signed(22 downto 0);
  signal c_1_0_0_False_resize: signed(22 downto 0);
  signal c_1_0_0_False_shift: signed(22 downto 0);
  signal c_1_0_6_False_resize: signed(22 downto 0);
  signal c_1_0_6_False_shift: signed(22 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(18 downto 0);
  signal c_4_0_3_False_resize: signed(18 downto 0);
  signal c_4_0_3_False_shift: signed(18 downto 0);
  signal c_4_0_0_False_resize: signed(18 downto 0);
  signal c_4_0_0_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_3_0_False_resize: signed(22 downto 0);
  signal c_7_3_0_False_shift: signed(22 downto 0);
  signal c_7_6_3_False_resize: signed(22 downto 0);
  signal c_7_6_3_False_shift: signed(22 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_10_2_False_resize: signed(22 downto 0);
  signal c_13_10_2_False_shift: signed(22 downto 0);
  signal c_13_12_4_False_resize: signed(22 downto 0);
  signal c_13_12_4_False_shift: signed(22 downto 0);
  signal c_13_10_0_False_resize: signed(22 downto 0);
  signal c_13_10_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_12_0_False_resize: signed(24 downto 0);
  signal c_14_12_0_False_shift: signed(24 downto 0);
  signal c_14_10_4_False_resize: signed(24 downto 0);
  signal c_14_10_4_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_3_7_False_resize: signed(25 downto 0);
  signal c_16_3_7_False_shift: signed(25 downto 0);
  signal c_16_6_0_False_resize: signed(25 downto 0);
  signal c_16_6_0_False_shift: signed(25 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_15_1_False_resize: signed(25 downto 0);
  signal c_23_15_1_False_shift: signed(25 downto 0);
  signal c_23_22_0_False_resize: signed(25 downto 0);
  signal c_23_22_0_False_shift: signed(25 downto 0);
  signal c_23_22_3_False_resize: signed(25 downto 0);
  signal c_23_22_3_False_shift: signed(25 downto 0);
  signal c_23_20_4_False_resize: signed(25 downto 0);
  signal c_23_20_4_False_shift: signed(25 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_29: signed(15 downto 0);
  signal c_30: signed(15 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_15_3_False_resize: signed(25 downto 0);
  signal c_31_15_3_False_shift: signed(25 downto 0);
  signal c_31_22_5_False_resize: signed(25 downto 0);
  signal c_31_22_5_False_shift: signed(25 downto 0);
  signal c_31_30_0_False_resize: signed(25 downto 0);
  signal c_31_30_0_False_shift: signed(25 downto 0);
  signal c_31_30_2_False_resize: signed(25 downto 0);
  signal c_31_30_2_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_12_9_False_resize: signed(24 downto 0);
  signal c_32_12_9_False_shift: signed(24 downto 0);
  signal c_32_10_1_False_resize: signed(24 downto 0);
  signal c_32_10_1_False_shift: signed(24 downto 0);
  signal c_32_18_0_False_resize: signed(24 downto 0);
  signal c_32_18_0_False_shift: signed(24 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_i0_resize: signed(25 downto 0);
  signal c_35_i1_resize: signed(25 downto 0);
  signal c_35_i0_shift: signed(25 downto 0);
  signal c_35_i1_shift: signed(25 downto 0);
  signal c_35_arith: signed(25 downto 0);
  signal c_35_oshift: signed(25 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(25 downto 0);
  signal c_36_22_0_False_resize: signed(25 downto 0);
  signal c_36_22_0_False_shift: signed(25 downto 0);
  signal c_36_15_0_False_resize: signed(25 downto 0);
  signal c_36_15_0_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(15 downto 0);
  signal c_38: signed(15 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_40_1_False_resize: signed(25 downto 0);
  signal c_41_40_1_False_shift: signed(25 downto 0);
  signal c_41_28_0_False_resize: signed(25 downto 0);
  signal c_41_28_0_False_shift: signed(25 downto 0);
  signal c_41_40_2_False_resize: signed(25 downto 0);
  signal c_41_40_2_False_shift: signed(25 downto 0);
  signal c_41_38_0_False_resize: signed(25 downto 0);
  signal c_41_38_0_False_shift: signed(25 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
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
  signal c_45: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_46_0_False_resize: signed(25 downto 0);
  signal c_47_46_0_False_shift: signed(25 downto 0);
  signal c_47_28_0_False_resize: signed(25 downto 0);
  signal c_47_28_0_False_shift: signed(25 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_48_10_0_False_resize: signed(22 downto 0);
  signal c_48_10_0_False_shift: signed(22 downto 0);
  signal c_48_18_3_False_resize: signed(22 downto 0);
  signal c_48_18_3_False_shift: signed(22 downto 0);
  signal c_48_18_0_False_resize: signed(22 downto 0);
  signal c_48_18_0_False_shift: signed(22 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_i0_resize: signed(25 downto 0);
  signal c_53_i1_resize: signed(25 downto 0);
  signal c_53_i0_shift: signed(25 downto 0);
  signal c_53_i1_shift: signed(25 downto 0);
  signal c_53_arith: signed(25 downto 0);
  signal c_53_oshift: signed(25 downto 0);
  signal c_53_sub_sel: std_logic;
  signal c_54: signed(15 downto 0);
  signal c_55: signed(15 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(22 downto 0);
  signal c_58_55_6_False_resize: signed(22 downto 0);
  signal c_58_55_6_False_shift: signed(22 downto 0);
  signal c_58_57_1_False_resize: signed(22 downto 0);
  signal c_58_57_1_False_shift: signed(22 downto 0);
  signal c_58_53_0_False_resize: signed(22 downto 0);
  signal c_58_53_0_False_shift: signed(22 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_44_0_False_resize: signed(25 downto 0);
  signal c_59_44_0_False_shift: signed(25 downto 0);
  signal c_59_55_1_False_resize: signed(25 downto 0);
  signal c_59_55_1_False_shift: signed(25 downto 0);
  signal c_59_sel: std_logic_vector(0 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_i0_resize: signed(25 downto 0);
  signal c_60_i1_resize: signed(25 downto 0);
  signal c_60_i0_shift: signed(25 downto 0);
  signal c_60_i1_shift: signed(25 downto 0);
  signal c_60_arith: signed(25 downto 0);
  signal c_60_oshift: signed(25 downto 0);
  signal c_60_sub_sel: std_logic;
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_62_0_False_resize: signed(25 downto 0);
  signal c_63_62_0_False_shift: signed(25 downto 0);
  signal c_63_53_0_False_resize: signed(25 downto 0);
  signal c_63_53_0_False_shift: signed(25 downto 0);
  signal c_63_sel: std_logic_vector(0 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_53_0_False_resize: signed(25 downto 0);
  signal c_64_53_0_False_shift: signed(25 downto 0);
  signal c_64_62_0_False_resize: signed(25 downto 0);
  signal c_64_62_0_False_shift: signed(25 downto 0);
  signal c_64_sel: std_logic_vector(0 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_69_68_0_False_resize: signed(25 downto 0);
  signal c_69_68_0_False_shift: signed(25 downto 0);
  signal c_69_60_0_False_resize: signed(25 downto 0);
  signal c_69_60_0_False_shift: signed(25 downto 0);
  signal c_69_sel: std_logic_vector(0 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_72_71_0_False_resize: signed(25 downto 0);
  signal c_72_71_0_False_shift: signed(25 downto 0);
  signal c_72_60_0_False_resize: signed(25 downto 0);
  signal c_72_60_0_False_shift: signed(25 downto 0);
  signal c_72_60_1_False_resize: signed(25 downto 0);
  signal c_72_60_1_False_shift: signed(25 downto 0);
  signal c_72_68_0_False_resize: signed(25 downto 0);
  signal c_72_68_0_False_shift: signed(25 downto 0);
  signal c_72_sel: std_logic_vector(1 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_60_0_False_resize: signed(25 downto 0);
  signal c_73_60_0_False_shift: signed(25 downto 0);
  signal c_73_71_0_False_resize: signed(25 downto 0);
  signal c_73_71_0_False_shift: signed(25 downto 0);
  signal c_73_sel: std_logic_vector(0 downto 0);
  signal c_74: signed(25 downto 0);
  signal c_75: signed(25 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_76_resize: signed(25 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_78: signed(25 downto 0);
  signal c_79: signed(25 downto 0);
  signal c_79_resize: signed(25 downto 0);
  signal c_80: signed(25 downto 0);
  signal c_80_resize: signed(25 downto 0);
  signal c_81: signed(25 downto 0);
  signal c_81_resize: signed(25 downto 0);
  signal c_82: signed(25 downto 0);
  signal c_82_resize: signed(25 downto 0);
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
  -- output node 0 with id 76
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_76);
    end if;
  end process;
  -- output node 1 with id 79
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_79);
    end if;
  end process;
  -- output node 2 with id 80
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_80);
    end if;
  end process;
  -- output node 3 with id 81
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_81);
    end if;
  end process;
  -- output node 4 with id 82
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_82);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[128], [64], [128], [1]]
  c_1_0_7_False_resize <= resize(c_0, 23);
  c_1_0_7_False_shift <= shift_left(c_1_0_7_False_resize, 7);
  c_1_0_0_False_resize <= resize(c_0, 23);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_6_False_resize <= resize(c_0, 23);
  c_1_0_6_False_shift <= shift_left(c_1_0_6_False_resize, 6);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_7_False_shift;
        when "01" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[8], [1], [1], [1]]
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[96], [60], [132], [5]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [8], [8], [8]]
  c_4_0_3_False_resize <= resize(c_0, 19);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  c_4_0_0_False_resize <= resize(c_0, 19);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_3_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 5 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[96], [8], [8], [5]]
  c_7_3_0_False_resize <= c_3(22 downto 0);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_6_3_False_resize <= resize(c_6, 23);
  c_7_6_3_False_shift <= shift_left(c_7_6_3_False_resize, 3);
  with config_select_3 select c_7_sel <= 
    "0" when "11",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_3_0_False_shift;
        when others => c_7 <= c_7_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [8], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [8], [8], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 10 and associated fundamentals [[-92], [24], [24], [27]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 23,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_9,
      y_i => c_7,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[16], [96], [16], [27]]
  c_13_10_2_False_resize <= c_10;
  c_13_10_2_False_shift <= shift_left(c_13_10_2_False_resize, 2);
  c_13_12_4_False_resize <= resize(c_12, 23);
  c_13_12_4_False_shift <= shift_left(c_13_12_4_False_resize, 4);
  c_13_10_0_False_resize <= c_10;
  c_13_10_0_False_shift <= shift_left(c_13_10_0_False_resize, 0);
  with config_select_5 select c_13_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_10_2_False_shift;
        when "01" => c_13 <= c_13_12_4_False_shift;
        when others => c_13 <= c_13_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[1], [1], [1], [432]]
  c_14_12_0_False_resize <= resize(c_12, 25);
  c_14_12_0_False_shift <= shift_left(c_14_12_0_False_resize, 0);
  c_14_10_4_False_resize <= resize(c_10, 25);
  c_14_10_4_False_shift <= shift_left(c_14_10_4_False_resize, 4);
  with config_select_5 select c_14_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_12_0_False_shift;
        when others => c_14 <= c_14_10_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 15 and associated fundamentals [[14], [94], [14], [-837]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[1], [1], [1], [640]]
  c_16_3_7_False_resize <= resize(c_3, 26);
  c_16_3_7_False_shift <= shift_left(c_16_3_7_False_resize, 7);
  c_16_6_0_False_resize <= resize(c_6, 26);
  c_16_6_0_False_shift <= shift_left(c_16_6_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_3_7_False_shift;
        when others => c_16 <= c_16_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 17 and associated fundamentals [[96], [60], [132], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[96], [60], [132], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[96], [60], [132], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[96], [60], [132], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[-92], [24], [24], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[-92], [24], [24], [27]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[-736], [960], [28], [27]]
  c_23_15_1_False_resize <= c_15;
  c_23_15_1_False_shift <= shift_left(c_23_15_1_False_resize, 1);
  c_23_22_0_False_resize <= resize(c_22, 26);
  c_23_22_0_False_shift <= shift_left(c_23_22_0_False_resize, 0);
  c_23_22_3_False_resize <= resize(c_22, 26);
  c_23_22_3_False_shift <= shift_left(c_23_22_3_False_resize, 3);
  c_23_20_4_False_resize <= resize(c_20, 26);
  c_23_20_4_False_shift <= shift_left(c_23_20_4_False_resize, 4);
  with config_select_7 select c_23_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_15_1_False_shift;
        when "01" => c_23 <= c_23_22_0_False_shift;
        when "10" => c_23 <= c_23_22_3_False_shift;
        when others => c_23 <= c_23_20_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[1], [1], [1], [640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[1], [1], [1], [640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[1], [1], [1], [640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[1], [1], [1], [640]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 28 and associated fundamentals [[737], [-959], [-27], [613]]
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      x_i => c_27,
      y_i => c_23,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 31 and associated fundamentals [[4], [752], [1], [864]]
  c_31_15_3_False_resize <= c_15;
  c_31_15_3_False_shift <= shift_left(c_31_15_3_False_resize, 3);
  c_31_22_5_False_resize <= resize(c_22, 26);
  c_31_22_5_False_shift <= shift_left(c_31_22_5_False_resize, 5);
  c_31_30_0_False_resize <= resize(c_30, 26);
  c_31_30_0_False_shift <= shift_left(c_31_30_0_False_resize, 0);
  c_31_30_2_False_resize <= resize(c_30, 26);
  c_31_30_2_False_shift <= shift_left(c_31_30_2_False_resize, 2);
  with config_select_7 select c_31_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_15_3_False_shift;
        when "01" => c_31 <= c_31_22_5_False_shift;
        when "10" => c_31 <= c_31_30_0_False_shift;
        when others => c_31 <= c_31_30_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 32 and associated fundamentals [[512], [60], [512], [54]]
  c_32_12_9_False_resize <= resize(c_12, 25);
  c_32_12_9_False_shift <= shift_left(c_32_12_9_False_resize, 9);
  c_32_10_1_False_resize <= resize(c_10, 25);
  c_32_10_1_False_shift <= shift_left(c_32_10_1_False_resize, 1);
  c_32_18_0_False_resize <= resize(c_18, 25);
  c_32_18_0_False_shift <= shift_left(c_32_18_0_False_resize, 0);
  with config_select_5 select c_32_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_12_9_False_shift;
        when "01" => c_32 <= c_32_10_1_False_shift;
        when others => c_32 <= c_32_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[512], [60], [512], [54]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[512], [60], [512], [54]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 35 and associated fundamentals [[516], [692], [-511], [918]]
  with config_select_8 select c_35_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
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
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_35_sub_sel,
      x_i => c_31,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 36 and associated fundamentals [[-92], [94], [14], [-837]]
  c_36_22_0_False_resize <= resize(c_22, 26);
  c_36_22_0_False_shift <= shift_left(c_36_22_0_False_resize, 0);
  c_36_15_0_False_resize <= c_15;
  c_36_15_0_False_shift <= shift_left(c_36_15_0_False_resize, 0);
  with config_select_7 select c_36_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_22_0_False_shift;
        when others => c_36 <= c_36_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[96], [60], [132], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[96], [60], [132], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 41 and associated fundamentals [[1], [-959], [528], [10]]
  c_41_40_1_False_resize <= resize(c_40, 26);
  c_41_40_1_False_shift <= shift_left(c_41_40_1_False_resize, 1);
  c_41_28_0_False_resize <= c_28;
  c_41_28_0_False_shift <= shift_left(c_41_28_0_False_resize, 0);
  c_41_40_2_False_resize <= resize(c_40, 26);
  c_41_40_2_False_shift <= shift_left(c_41_40_2_False_resize, 2);
  c_41_38_0_False_resize <= resize(c_38, 26);
  c_41_38_0_False_shift <= shift_left(c_41_38_0_False_resize, 0);
  with config_select_9 select c_41_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_40_1_False_shift;
        when "01" => c_41 <= c_41_28_0_False_shift;
        when "10" => c_41 <= c_41_40_2_False_shift;
        when others => c_41 <= c_41_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[-92], [94], [14], [-837]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[-92], [94], [14], [-837]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 44 and associated fundamentals [[-91], [-865], [-514], [-847]]
  with config_select_10 select c_44_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_44_sub_sel,
      x_i => c_43,
      y_i => c_41,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[14], [94], [14], [-837]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[14], [94], [14], [-837]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 47 and associated fundamentals [[14], [94], [-27], [-837]]
  c_47_46_0_False_resize <= c_46;
  c_47_46_0_False_shift <= shift_left(c_47_46_0_False_resize, 0);
  c_47_28_0_False_resize <= c_28;
  c_47_28_0_False_shift <= shift_left(c_47_28_0_False_resize, 0);
  with config_select_9 select c_47_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_46_0_False_shift;
        when others => c_47 <= c_47_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 48 and associated fundamentals [[96], [60], [24], [40]]
  c_48_10_0_False_resize <= c_10;
  c_48_10_0_False_shift <= shift_left(c_48_10_0_False_resize, 0);
  c_48_18_3_False_resize <= c_18(22 downto 0);
  c_48_18_3_False_shift <= shift_left(c_48_18_3_False_resize, 3);
  c_48_18_0_False_resize <= c_18(22 downto 0);
  c_48_18_0_False_shift <= shift_left(c_48_18_0_False_resize, 0);
  with config_select_5 select c_48_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_10_0_False_shift;
        when "01" => c_48 <= c_48_18_3_False_shift;
        when others => c_48 <= c_48_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 49 and associated fundamentals [[96], [60], [24], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 50 and associated fundamentals [[96], [60], [24], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[96], [60], [24], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[96], [60], [24], [40]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 53 and associated fundamentals [[-370], [334], [69], [-997]]
  with config_select_10 select c_53_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_53: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      sub_i => c_53_sub_sel,
      x_i => c_47,
      y_i => c_52,
      z_o => c_53_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_53_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 55 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[96], [60], [132], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[96], [60], [132], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 58 and associated fundamentals [[64], [120], [69], [64]]
  c_58_55_6_False_resize <= resize(c_55, 23);
  c_58_55_6_False_shift <= shift_left(c_58_55_6_False_resize, 6);
  c_58_57_1_False_resize <= c_57(22 downto 0);
  c_58_57_1_False_shift <= shift_left(c_58_57_1_False_resize, 1);
  c_58_53_0_False_resize <= c_53(22 downto 0);
  c_58_53_0_False_shift <= shift_left(c_58_53_0_False_resize, 0);
  with config_select_11 select c_58_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "00" => c_58 <= c_58_55_6_False_shift;
        when "01" => c_58 <= c_58_57_1_False_shift;
        when others => c_58 <= c_58_53_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 59 and associated fundamentals [[-91], [-865], [2], [-847]]
  c_59_44_0_False_resize <= c_44;
  c_59_44_0_False_shift <= shift_left(c_59_44_0_False_resize, 0);
  c_59_55_1_False_resize <= resize(c_55, 26);
  c_59_55_1_False_shift <= shift_left(c_59_55_1_False_resize, 1);
  with config_select_11 select c_59_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "0" => c_59 <= c_59_44_0_False_shift;
        when others => c_59 <= c_59_55_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 60 and associated fundamentals [[-27], [-745], [67], [-783]]
  with config_select_12 select c_60_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_60: entity work.adder_node
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
      sub_i => c_60_sub_sel,
      x_i => c_58,
      y_i => c_59,
      z_o => c_60_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_60_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[737], [-959], [-27], [613]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 62 and associated fundamentals [[737], [-959], [-27], [613]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 63 and associated fundamentals [[737], [334], [69], [613]]
  c_63_62_0_False_resize <= c_62;
  c_63_62_0_False_shift <= shift_left(c_63_62_0_False_resize, 0);
  c_63_53_0_False_resize <= c_53;
  c_63_53_0_False_shift <= shift_left(c_63_53_0_False_resize, 0);
  with config_select_11 select c_63_sel <= 
    "0" when "00",
    "0" when "11",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_63_sel is
        when "0" => c_63 <= c_63_62_0_False_shift;
        when others => c_63 <= c_63_53_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 64 and associated fundamentals [[-370], [-959], [-27], [-997]]
  c_64_53_0_False_resize <= c_53;
  c_64_53_0_False_shift <= shift_left(c_64_53_0_False_resize, 0);
  c_64_62_0_False_resize <= c_62;
  c_64_62_0_False_shift <= shift_left(c_64_62_0_False_resize, 0);
  with config_select_11 select c_64_sel <= 
    "0" when "00",
    "0" when "11",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_64_sel is
        when "0" => c_64 <= c_64_53_0_False_shift;
        when others => c_64 <= c_64_62_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 65 and associated fundamentals [[516], [692], [-511], [918]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 66 and associated fundamentals [[516], [692], [-511], [918]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 67 and associated fundamentals [[516], [692], [-511], [918]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 68 and associated fundamentals [[516], [692], [-511], [918]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 69 and associated fundamentals [[516], [692], [67], [918]]
  c_69_68_0_False_resize <= c_68;
  c_69_68_0_False_shift <= shift_left(c_69_68_0_False_resize, 0);
  c_69_60_0_False_resize <= c_60;
  c_69_60_0_False_shift <= shift_left(c_69_60_0_False_resize, 0);
  with config_select_13 select c_69_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_69_sel is
        when "0" => c_69 <= c_69_68_0_False_shift;
        when others => c_69 <= c_69_60_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 70 and associated fundamentals [[-91], [-865], [-514], [-847]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 71 and associated fundamentals [[-91], [-865], [-514], [-847]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 72 and associated fundamentals [[-54], [-745], [-511], [-847]]
  c_72_71_0_False_resize <= c_71;
  c_72_71_0_False_shift <= shift_left(c_72_71_0_False_resize, 0);
  c_72_60_0_False_resize <= c_60;
  c_72_60_0_False_shift <= shift_left(c_72_60_0_False_resize, 0);
  c_72_60_1_False_resize <= c_60;
  c_72_60_1_False_shift <= shift_left(c_72_60_1_False_resize, 1);
  c_72_68_0_False_resize <= c_68;
  c_72_68_0_False_shift <= shift_left(c_72_68_0_False_resize, 0);
  with config_select_13 select c_72_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "00" => c_72 <= c_72_71_0_False_shift;
        when "01" => c_72 <= c_72_60_0_False_shift;
        when "10" => c_72 <= c_72_60_1_False_shift;
        when others => c_72 <= c_72_68_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 73 and associated fundamentals [[-91], [-865], [-514], [-783]]
  c_73_60_0_False_resize <= c_60;
  c_73_60_0_False_shift <= shift_left(c_73_60_0_False_resize, 0);
  c_73_71_0_False_resize <= c_71;
  c_73_71_0_False_shift <= shift_left(c_73_71_0_False_resize, 0);
  with config_select_13 select c_73_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "0" => c_73 <= c_73_60_0_False_shift;
        when others => c_73 <= c_73_71_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 74 and associated fundamentals [[737], [334], [69], [613]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 75 and associated fundamentals [[737], [334], [69], [613]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 76 and associated fundamentals [[737], [334], [69], [613]]
  c_76_resize <= c_75;
  c_76 <= shift_left(c_76_resize, 0);
  -- node of type 'register' in stage 12 with id 77 and associated fundamentals [[-370], [-959], [-27], [-997]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 78 and associated fundamentals [[-370], [-959], [-27], [-997]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_77 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 79 and associated fundamentals [[370], [959], [27], [997]]
  c_79_resize <= c_78;
  c_79 <= -shift_left(c_79_resize, 0);
  -- node of type 'output' in stage 13 with id 80 and associated fundamentals [[516], [692], [67], [918]]
  c_80_resize <= c_69;
  c_80 <= shift_left(c_80_resize, 0);
  -- node of type 'output' in stage 13 with id 81 and associated fundamentals [[54], [745], [511], [847]]
  c_81_resize <= c_72;
  c_81 <= -shift_left(c_81_resize, 0);
  -- node of type 'output' in stage 13 with id 82 and associated fundamentals [[91], [865], [514], [783]]
  c_82_resize <= c_73;
  c_82 <= -shift_left(c_82_resize, 0);
end architecture;

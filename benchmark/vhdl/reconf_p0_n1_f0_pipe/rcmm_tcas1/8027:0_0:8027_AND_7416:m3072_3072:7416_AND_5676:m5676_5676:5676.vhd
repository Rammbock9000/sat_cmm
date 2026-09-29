library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(29 downto 0);
    y_1: out std_logic_vector(29 downto 0);
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
  signal config_select_16: std_logic_vector(1 downto 0);
  signal config_select_17: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_0_0_False_resize: signed(17 downto 0);
  signal c_3_0_0_False_shift: signed(17 downto 0);
  signal c_3_1_2_False_resize: signed(17 downto 0);
  signal c_3_1_2_False_shift: signed(17 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(15 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(26 downto 0);
  signal c_9_6_8_False_resize: signed(26 downto 0);
  signal c_9_6_8_False_shift: signed(26 downto 0);
  signal c_9_4_3_False_resize: signed(26 downto 0);
  signal c_9_4_3_False_shift: signed(26 downto 0);
  signal c_9_8_0_False_resize: signed(26 downto 0);
  signal c_9_8_0_False_shift: signed(26 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_8_6_False_resize: signed(23 downto 0);
  signal c_10_8_6_False_shift: signed(23 downto 0);
  signal c_10_8_3_False_resize: signed(23 downto 0);
  signal c_10_8_3_False_shift: signed(23 downto 0);
  signal c_10_4_0_False_resize: signed(23 downto 0);
  signal c_10_4_0_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(23 downto 0);
  signal c_12_8_0_False_resize: signed(23 downto 0);
  signal c_12_8_0_False_shift: signed(23 downto 0);
  signal c_12_4_6_False_resize: signed(23 downto 0);
  signal c_12_4_6_False_shift: signed(23 downto 0);
  signal c_12_8_6_False_resize: signed(23 downto 0);
  signal c_12_8_6_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_13_4_0_False_resize: signed(20 downto 0);
  signal c_13_4_0_False_shift: signed(20 downto 0);
  signal c_13_8_5_False_resize: signed(20 downto 0);
  signal c_13_8_5_False_shift: signed(20 downto 0);
  signal c_13_6_0_False_resize: signed(20 downto 0);
  signal c_13_6_0_False_shift: signed(20 downto 0);
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
  signal c_19: signed(24 downto 0);
  signal c_19_18_1_False_resize: signed(24 downto 0);
  signal c_19_18_1_False_shift: signed(24 downto 0);
  signal c_19_11_0_False_resize: signed(24 downto 0);
  signal c_19_11_0_False_shift: signed(24 downto 0);
  signal c_19_16_3_False_resize: signed(24 downto 0);
  signal c_19_16_3_False_shift: signed(24 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(15 downto 0);
  signal c_21: signed(15 downto 0);
  signal c_22: signed(30 downto 0);
  signal c_22_14_0_False_resize: signed(30 downto 0);
  signal c_22_14_0_False_shift: signed(30 downto 0);
  signal c_22_21_15_False_resize: signed(30 downto 0);
  signal c_22_21_15_False_shift: signed(30 downto 0);
  signal c_22_18_3_False_resize: signed(30 downto 0);
  signal c_22_18_3_False_shift: signed(30 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(31 downto 0);
  signal c_23_i0_resize: signed(31 downto 0);
  signal c_23_i1_resize: signed(31 downto 0);
  signal c_23_i0_shift: signed(31 downto 0);
  signal c_23_i1_shift: signed(31 downto 0);
  signal c_23_arith: signed(31 downto 0);
  signal c_23_oshift: signed(31 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(23 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_26: signed(26 downto 0);
  signal c_26_25_0_False_resize: signed(26 downto 0);
  signal c_26_25_0_False_shift: signed(26 downto 0);
  signal c_26_23_1_False_resize: signed(26 downto 0);
  signal c_26_23_1_False_shift: signed(26 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(15 downto 0);
  signal c_28: signed(15 downto 0);
  signal c_29: signed(26 downto 0);
  signal c_29_25_0_False_resize: signed(26 downto 0);
  signal c_29_25_0_False_shift: signed(26 downto 0);
  signal c_29_28_6_False_resize: signed(26 downto 0);
  signal c_29_28_6_False_shift: signed(26 downto 0);
  signal c_29_23_1_False_resize: signed(26 downto 0);
  signal c_29_23_1_False_shift: signed(26 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(28 downto 0);
  signal c_30_i0_resize: signed(28 downto 0);
  signal c_30_i1_resize: signed(28 downto 0);
  signal c_30_i0_shift: signed(28 downto 0);
  signal c_30_i1_shift: signed(28 downto 0);
  signal c_30_arith: signed(28 downto 0);
  signal c_30_oshift: signed(28 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_11_0_False_resize: signed(23 downto 0);
  signal c_31_11_0_False_shift: signed(23 downto 0);
  signal c_31_21_6_False_resize: signed(23 downto 0);
  signal c_31_21_6_False_shift: signed(23 downto 0);
  signal c_31_16_5_False_resize: signed(23 downto 0);
  signal c_31_16_5_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_34: signed(32 downto 0);
  signal c_34_30_0_False_resize: signed(32 downto 0);
  signal c_34_30_0_False_shift: signed(32 downto 0);
  signal c_34_33_9_False_resize: signed(32 downto 0);
  signal c_34_33_9_False_shift: signed(32 downto 0);
  signal c_34_30_3_False_resize: signed(32 downto 0);
  signal c_34_30_3_False_shift: signed(32 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_39: signed(32 downto 0);
  signal c_39_i0_resize: signed(32 downto 0);
  signal c_39_i1_resize: signed(32 downto 0);
  signal c_39_i0_shift: signed(32 downto 0);
  signal c_39_i1_shift: signed(32 downto 0);
  signal c_39_arith: signed(32 downto 0);
  signal c_39_oshift: signed(32 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_46: signed(28 downto 0);
  signal c_47: signed(28 downto 0);
  signal c_48: signed(31 downto 0);
  signal c_48_47_3_False_resize: signed(31 downto 0);
  signal c_48_47_3_False_shift: signed(31 downto 0);
  signal c_48_45_3_False_resize: signed(31 downto 0);
  signal c_48_45_3_False_shift: signed(31 downto 0);
  signal c_48_39_0_False_resize: signed(31 downto 0);
  signal c_48_39_0_False_shift: signed(31 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(31 downto 0);
  signal c_50: signed(31 downto 0);
  signal c_51: signed(29 downto 0);
  signal c_51_30_0_False_resize: signed(29 downto 0);
  signal c_51_30_0_False_shift: signed(29 downto 0);
  signal c_51_43_6_False_resize: signed(29 downto 0);
  signal c_51_43_6_False_shift: signed(29 downto 0);
  signal c_51_50_4_False_resize: signed(29 downto 0);
  signal c_51_50_4_False_shift: signed(29 downto 0);
  signal c_51_sel: std_logic_vector(1 downto 0);
  signal c_52: signed(29 downto 0);
  signal c_53: signed(29 downto 0);
  signal c_54: signed(31 downto 0);
  signal c_54_i0_resize: signed(31 downto 0);
  signal c_54_i1_resize: signed(31 downto 0);
  signal c_54_i0_shift: signed(31 downto 0);
  signal c_54_i1_shift: signed(31 downto 0);
  signal c_54_arith: signed(31 downto 0);
  signal c_54_oshift: signed(31 downto 0);
  signal c_54_sub_sel: std_logic;
  signal c_55: signed(31 downto 0);
  signal c_56: signed(31 downto 0);
  signal c_57: signed(31 downto 0);
  signal c_58: signed(31 downto 0);
  signal c_59: signed(29 downto 0);
  signal c_59_54_1_False_resize: signed(29 downto 0);
  signal c_59_54_1_False_shift: signed(29 downto 0);
  signal c_59_58_0_False_resize: signed(29 downto 0);
  signal c_59_58_0_False_shift: signed(29 downto 0);
  signal c_59_sel: std_logic_vector(0 downto 0);
  signal c_60: signed(15 downto 0);
  signal c_61: signed(15 downto 0);
  signal c_62: signed(33 downto 0);
  signal c_62_61_3_False_resize: signed(33 downto 0);
  signal c_62_61_3_False_shift: signed(33 downto 0);
  signal c_62_50_2_False_resize: signed(33 downto 0);
  signal c_62_50_2_False_shift: signed(33 downto 0);
  signal c_62_30_0_False_resize: signed(33 downto 0);
  signal c_62_30_0_False_shift: signed(33 downto 0);
  signal c_62_sel: std_logic_vector(1 downto 0);
  signal c_63: signed(33 downto 0);
  signal c_64: signed(33 downto 0);
  signal c_65: signed(33 downto 0);
  signal c_66: signed(33 downto 0);
  signal c_67: signed(29 downto 0);
  signal c_67_i0_resize: signed(29 downto 0);
  signal c_67_i1_resize: signed(29 downto 0);
  signal c_67_i0_shift: signed(29 downto 0);
  signal c_67_i1_shift: signed(29 downto 0);
  signal c_67_arith: signed(29 downto 0);
  signal c_67_oshift: signed(29 downto 0);
  signal c_67_sub_sel: std_logic;
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_70: signed(32 downto 0);
  signal c_71: signed(32 downto 0);
  signal c_72: signed(32 downto 0);
  signal c_72_69_0_False_resize: signed(32 downto 0);
  signal c_72_69_0_False_shift: signed(32 downto 0);
  signal c_72_54_0_False_resize: signed(32 downto 0);
  signal c_72_54_0_False_shift: signed(32 downto 0);
  signal c_72_71_0_False_resize: signed(32 downto 0);
  signal c_72_71_0_False_shift: signed(32 downto 0);
  signal c_72_sel: std_logic_vector(1 downto 0);
  signal c_73: signed(31 downto 0);
  signal c_73_58_0_False_resize: signed(31 downto 0);
  signal c_73_58_0_False_shift: signed(31 downto 0);
  signal c_73_71_0_False_resize: signed(31 downto 0);
  signal c_73_71_0_False_shift: signed(31 downto 0);
  signal c_73_54_0_False_resize: signed(31 downto 0);
  signal c_73_54_0_False_shift: signed(31 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(29 downto 0);
  signal c_74_i0_resize: signed(32 downto 0);
  signal c_74_i1_resize: signed(32 downto 0);
  signal c_74_i0_shift: signed(32 downto 0);
  signal c_74_i1_shift: signed(32 downto 0);
  signal c_74_arith: signed(32 downto 0);
  signal c_74_oshift: signed(29 downto 0);
  signal c_74_sub_sel: std_logic;
  signal c_75: signed(29 downto 0);
  signal c_75_67_1_False_resize: signed(29 downto 0);
  signal c_75_67_1_False_shift: signed(29 downto 0);
  signal c_75_74_2_False_resize: signed(29 downto 0);
  signal c_75_74_2_False_shift: signed(29 downto 0);
  signal c_75_74_0_False_resize: signed(29 downto 0);
  signal c_75_74_0_False_shift: signed(29 downto 0);
  signal c_75_sel: std_logic_vector(1 downto 0);
  signal c_76: signed(32 downto 0);
  signal c_77: signed(32 downto 0);
  signal c_78: signed(29 downto 0);
  signal c_78_74_0_False_resize: signed(29 downto 0);
  signal c_78_74_0_False_shift: signed(29 downto 0);
  signal c_78_67_0_False_resize: signed(29 downto 0);
  signal c_78_67_0_False_shift: signed(29 downto 0);
  signal c_78_77_0_False_resize: signed(29 downto 0);
  signal c_78_77_0_False_shift: signed(29 downto 0);
  signal c_78_sel: std_logic_vector(1 downto 0);
  signal c_79: signed(29 downto 0);
  signal c_79_resize: signed(29 downto 0);
  signal c_80: signed(29 downto 0);
  signal c_80_resize: signed(29 downto 0);
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
      config_select_16 <= config_select_15;
      config_select_17 <= config_select_16;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1);
    end if;
  end process;
  -- output node 0 with id 79
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_79);
    end if;
  end process;
  -- output node 1 with id 80
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_80);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[64, 0], [1, 0], [1, 0]]
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[1, 0], [0, 4], [1, 0]]
  c_3_0_0_False_resize <= resize(c_0, 18);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_1_2_False_resize <= resize(c_1, 18);
  c_3_1_2_False_shift <= shift_left(c_3_1_2_False_resize, 2);
  with config_select_1 select c_3_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_0_0_False_shift;
        when others => c_3 <= c_3_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[132, 0], [2, -16], [-2, 0]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 18,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 5 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 7 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[1056, 0], [256, 0], [0, 1]]
  c_9_6_8_False_resize <= resize(c_6, 27);
  c_9_6_8_False_shift <= shift_left(c_9_6_8_False_resize, 8);
  c_9_4_3_False_resize <= resize(c_4, 27);
  c_9_4_3_False_shift <= shift_left(c_9_4_3_False_resize, 3);
  c_9_8_0_False_resize <= resize(c_8, 27);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_6_8_False_shift;
        when "01" => c_9 <= c_9_4_3_False_shift;
        when others => c_9 <= c_9_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[132, 0], [0, 8], [0, 64]]
  c_10_8_6_False_resize <= resize(c_8, 24);
  c_10_8_6_False_shift <= shift_left(c_10_8_6_False_resize, 6);
  c_10_8_3_False_resize <= resize(c_8, 24);
  c_10_8_3_False_shift <= shift_left(c_10_8_3_False_resize, 3);
  c_10_4_0_False_resize <= c_4;
  c_10_4_0_False_shift <= shift_left(c_10_4_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_8_6_False_shift;
        when "01" => c_10 <= c_10_8_3_False_shift;
        when others => c_10 <= c_10_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[792, 0], [256, -16], [0, 129]]
  with config_select_4 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 24,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[0, 1], [0, 64], [-128, 0]]
  c_12_8_0_False_resize <= resize(c_8, 24);
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  c_12_4_6_False_resize <= c_4;
  c_12_4_6_False_shift <= shift_left(c_12_4_6_False_resize, 6);
  c_12_8_6_False_resize <= resize(c_8, 24);
  c_12_8_6_False_shift <= shift_left(c_12_8_6_False_resize, 6);
  with config_select_3 select c_12_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_8_0_False_shift;
        when "01" => c_12 <= c_12_4_6_False_shift;
        when others => c_12 <= c_12_8_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[0, 32], [2, -16], [1, 0]]
  c_13_4_0_False_resize <= c_4(20 downto 0);
  c_13_4_0_False_shift <= shift_left(c_13_4_0_False_resize, 0);
  c_13_8_5_False_resize <= resize(c_8, 21);
  c_13_8_5_False_shift <= shift_left(c_13_8_5_False_resize, 5);
  c_13_6_0_False_resize <= resize(c_6, 21);
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_4_0_False_shift;
        when "01" => c_13 <= c_13_8_5_False_shift;
        when others => c_13 <= c_13_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[0, 33], [2, 48], [-129, 0]]
  with config_select_4 select c_14_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 17 and associated fundamentals [[132, 0], [2, -16], [-2, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[132, 0], [2, -16], [-2, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[264, 0], [0, 8], [0, 129]]
  c_19_18_1_False_resize <= resize(c_18, 25);
  c_19_18_1_False_shift <= shift_left(c_19_18_1_False_resize, 1);
  c_19_11_0_False_resize <= c_11(24 downto 0);
  c_19_11_0_False_shift <= shift_left(c_19_11_0_False_resize, 0);
  c_19_16_3_False_resize <= resize(c_16, 25);
  c_19_16_3_False_shift <= shift_left(c_19_16_3_False_resize, 3);
  with config_select_5 select c_19_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_18_1_False_shift;
        when "01" => c_19 <= c_19_11_0_False_shift;
        when others => c_19 <= c_19_16_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[1, 0], [1, 0], [1, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 22 and associated fundamentals [[32768, 0], [16, -128], [-129, 0]]
  c_22_14_0_False_resize <= resize(c_14, 31);
  c_22_14_0_False_shift <= shift_left(c_22_14_0_False_resize, 0);
  c_22_21_15_False_resize <= resize(c_21, 31);
  c_22_21_15_False_shift <= shift_left(c_22_21_15_False_resize, 15);
  c_22_18_3_False_resize <= resize(c_18, 31);
  c_22_18_3_False_shift <= shift_left(c_22_18_3_False_resize, 3);
  with config_select_5 select c_22_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_14_0_False_shift;
        when "01" => c_22 <= c_22_21_15_False_shift;
        when others => c_22 <= c_22_18_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 23 and associated fundamentals [[-65008, 0], [32, -240], [-258, 258]]
  with config_select_6 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 31,
      w_o => 32,
      s_x_i => 1,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_23_sub_sel,
      x_i => c_19,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[0, 33], [2, 48], [-129, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[0, 33], [2, 48], [-129, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[0, 33], [2, 48], [-516, 516]]
  c_26_25_0_False_resize <= resize(c_25, 27);
  c_26_25_0_False_shift <= shift_left(c_26_25_0_False_resize, 0);
  c_26_23_1_False_resize <= c_23(26 downto 0);
  c_26_23_1_False_shift <= shift_left(c_26_23_1_False_resize, 1);
  with config_select_7 select c_26_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_25_0_False_shift;
        when others => c_26 <= c_26_23_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[0, 33], [0, 64], [-516, 516]]
  c_29_25_0_False_resize <= resize(c_25, 27);
  c_29_25_0_False_shift <= shift_left(c_29_25_0_False_resize, 0);
  c_29_28_6_False_resize <= resize(c_28, 27);
  c_29_28_6_False_shift <= shift_left(c_29_28_6_False_resize, 6);
  c_29_23_1_False_resize <= c_23(26 downto 0);
  c_29_23_1_False_shift <= shift_left(c_29_23_1_False_resize, 1);
  with config_select_7 select c_29_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_25_0_False_shift;
        when "01" => c_29 <= c_29_28_6_False_shift;
        when others => c_29 <= c_29_23_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 30 and associated fundamentals [[0, 165], [2, 304], [-2580, 2580]]
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 27,
      w_o => 29,
      s_x_i => 0,
      s_y_i => 2,
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
      c_30 <= c_30_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[0, 32], [64, 0], [0, 129]]
  c_31_11_0_False_resize <= c_11(23 downto 0);
  c_31_11_0_False_shift <= shift_left(c_31_11_0_False_resize, 0);
  c_31_21_6_False_resize <= resize(c_21, 24);
  c_31_21_6_False_shift <= shift_left(c_31_21_6_False_resize, 6);
  c_31_16_5_False_resize <= resize(c_16, 24);
  c_31_16_5_False_shift <= shift_left(c_31_16_5_False_resize, 5);
  with config_select_5 select c_31_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_11_0_False_shift;
        when "01" => c_31 <= c_31_21_6_False_shift;
        when others => c_31 <= c_31_16_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[0, 33], [2, 48], [-129, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[0, 33], [2, 48], [-129, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 34 and associated fundamentals [[0, 165], [16, 2432], [-66048, 0]]
  c_34_30_0_False_resize <= resize(c_30, 33);
  c_34_30_0_False_shift <= shift_left(c_34_30_0_False_resize, 0);
  c_34_33_9_False_resize <= resize(c_33, 33);
  c_34_33_9_False_shift <= shift_left(c_34_33_9_False_resize, 9);
  c_34_30_3_False_resize <= resize(c_30, 33);
  c_34_30_3_False_shift <= shift_left(c_34_30_3_False_resize, 3);
  with config_select_9 select c_34_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_30_0_False_shift;
        when "01" => c_34 <= c_34_33_9_False_shift;
        when others => c_34 <= c_34_30_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[0, 32], [64, 0], [0, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[0, 32], [64, 0], [0, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 37 and associated fundamentals [[0, 32], [64, 0], [0, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 38 and associated fundamentals [[0, 32], [64, 0], [0, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 10 with id 39 and associated fundamentals [[0, 8027], [16368, -2432], [66048, 33024]]
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 33,
      w_o => 33,
      s_x_i => 8,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_38,
      y_i => c_34,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 40 and associated fundamentals [[792, 0], [256, -16], [0, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 41 and associated fundamentals [[792, 0], [256, -16], [0, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[792, 0], [256, -16], [0, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[792, 0], [256, -16], [0, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[792, 0], [256, -16], [0, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 45 and associated fundamentals [[792, 0], [256, -16], [0, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[0, 165], [2, 304], [-2580, 2580]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[0, 165], [2, 304], [-2580, 2580]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 48 and associated fundamentals [[0, 8027], [2048, -128], [-20640, 20640]]
  c_48_47_3_False_resize <= resize(c_47, 32);
  c_48_47_3_False_shift <= shift_left(c_48_47_3_False_resize, 3);
  c_48_45_3_False_resize <= resize(c_45, 32);
  c_48_45_3_False_shift <= shift_left(c_48_45_3_False_resize, 3);
  c_48_39_0_False_resize <= c_39(31 downto 0);
  c_48_39_0_False_shift <= shift_left(c_48_39_0_False_resize, 0);
  with config_select_11 select c_48_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_47_3_False_shift;
        when "01" => c_48 <= c_48_45_3_False_shift;
        when others => c_48 <= c_48_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[-65008, 0], [32, -240], [-258, 258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[-65008, 0], [32, -240], [-258, 258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 51 and associated fundamentals [[0, 165], [512, -3840], [0, 8256]]
  c_51_30_0_False_resize <= resize(c_30, 30);
  c_51_30_0_False_shift <= shift_left(c_51_30_0_False_resize, 0);
  c_51_43_6_False_resize <= resize(c_43, 30);
  c_51_43_6_False_shift <= shift_left(c_51_43_6_False_resize, 6);
  c_51_50_4_False_resize <= c_50(29 downto 0);
  c_51_50_4_False_shift <= shift_left(c_51_50_4_False_resize, 4);
  with config_select_9 select c_51_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "00" => c_51 <= c_51_30_0_False_shift;
        when "01" => c_51 <= c_51_43_6_False_shift;
        when others => c_51 <= c_51_50_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[0, 165], [512, -3840], [0, 8256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 53 and associated fundamentals [[0, 165], [512, -3840], [0, 8256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 54 and associated fundamentals [[0, 8192], [1536, 3712], [-20640, 12384]]
  with config_select_12 select c_54_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_54: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 30,
      w_o => 32,
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
      sub_i => c_54_sub_sel,
      x_i => c_48,
      y_i => c_53,
      z_o => c_54_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_54_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 55 and associated fundamentals [[-65008, 0], [32, -240], [-258, 258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 56 and associated fundamentals [[-65008, 0], [32, -240], [-258, 258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 57 and associated fundamentals [[-65008, 0], [32, -240], [-258, 258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 58 and associated fundamentals [[-65008, 0], [32, -240], [-258, 258]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 59 and associated fundamentals [[0, 16384], [3072, 7424], [-258, 258]]
  c_59_54_1_False_resize <= c_54(29 downto 0);
  c_59_54_1_False_shift <= shift_left(c_59_54_1_False_resize, 1);
  c_59_58_0_False_resize <= c_58(29 downto 0);
  c_59_58_0_False_shift <= shift_left(c_59_58_0_False_resize, 0);
  with config_select_13 select c_59_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_59_sel is
        when "0" => c_59 <= c_59_54_1_False_shift;
        when others => c_59 <= c_59_58_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 60 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 61 and associated fundamentals [[0, 1], [0, 1], [0, 1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 62 and associated fundamentals [[-260032, 0], [0, 8], [-2580, 2580]]
  c_62_61_3_False_resize <= resize(c_61, 34);
  c_62_61_3_False_shift <= shift_left(c_62_61_3_False_resize, 3);
  c_62_50_2_False_resize <= resize(c_50, 34);
  c_62_50_2_False_shift <= shift_left(c_62_50_2_False_resize, 2);
  c_62_30_0_False_resize <= resize(c_30, 34);
  c_62_30_0_False_shift <= shift_left(c_62_30_0_False_resize, 0);
  with config_select_9 select c_62_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_62_sel is
        when "00" => c_62 <= c_62_61_3_False_shift;
        when "01" => c_62 <= c_62_50_2_False_shift;
        when others => c_62 <= c_62_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[-260032, 0], [0, 8], [-2580, 2580]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 64 and associated fundamentals [[-260032, 0], [0, 8], [-2580, 2580]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 65 and associated fundamentals [[-260032, 0], [0, 8], [-2580, 2580]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 66 and associated fundamentals [[-260032, 0], [0, 8], [-2580, 2580]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 67 and associated fundamentals [[-260032, 16384], [3072, 7416], [-2838, 2838]]
  with config_select_14 select c_67_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_67: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 34,
      w_o => 30,
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
      sub_i => c_67_sub_sel,
      x_i => c_59,
      y_i => c_66,
      z_o => c_67_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_67_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 68 and associated fundamentals [[792, 0], [256, -16], [0, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 69 and associated fundamentals [[792, 0], [256, -16], [0, 129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 70 and associated fundamentals [[0, 8027], [16368, -2432], [66048, 33024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 71 and associated fundamentals [[0, 8027], [16368, -2432], [66048, 33024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 72 and associated fundamentals [[792, 0], [1536, 3712], [66048, 33024]]
  c_72_69_0_False_resize <= resize(c_69, 33);
  c_72_69_0_False_shift <= shift_left(c_72_69_0_False_resize, 0);
  c_72_54_0_False_resize <= resize(c_54, 33);
  c_72_54_0_False_shift <= shift_left(c_72_54_0_False_resize, 0);
  c_72_71_0_False_resize <= c_71;
  c_72_71_0_False_shift <= shift_left(c_72_71_0_False_resize, 0);
  with config_select_13 select c_72_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_72_sel is
        when "00" => c_72 <= c_72_69_0_False_shift;
        when "01" => c_72 <= c_72_54_0_False_shift;
        when others => c_72 <= c_72_71_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 73 and associated fundamentals [[-65008, 0], [16368, -2432], [-20640, 12384]]
  c_73_58_0_False_resize <= c_58;
  c_73_58_0_False_shift <= shift_left(c_73_58_0_False_resize, 0);
  c_73_71_0_False_resize <= c_71(31 downto 0);
  c_73_71_0_False_shift <= shift_left(c_73_71_0_False_resize, 0);
  c_73_54_0_False_resize <= c_54;
  c_73_54_0_False_shift <= shift_left(c_73_54_0_False_resize, 0);
  with config_select_13 select c_73_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "00" => c_73 <= c_73_58_0_False_shift;
        when "01" => c_73 <= c_73_71_0_False_shift;
        when others => c_73 <= c_73_54_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 14 with id 74 and associated fundamentals [[-8027, 0], [-1854, 768], [5676, 5676]]
  with config_select_14 select c_74_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_74: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 32,
      w_o => 30,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 3,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_74_sub_sel,
      x_i => c_72,
      y_i => c_73,
      z_o => c_74_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_74_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 75 and associated fundamentals [[-8027, 0], [-7416, 3072], [-5676, 5676]]
  c_75_67_1_False_resize <= c_67;
  c_75_67_1_False_shift <= shift_left(c_75_67_1_False_resize, 1);
  c_75_74_2_False_resize <= c_74;
  c_75_74_2_False_shift <= shift_left(c_75_74_2_False_resize, 2);
  c_75_74_0_False_resize <= c_74;
  c_75_74_0_False_shift <= shift_left(c_75_74_0_False_resize, 0);
  with config_select_15 select c_75_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_75_sel is
        when "00" => c_75 <= c_75_67_1_False_shift;
        when "01" => c_75 <= c_75_74_2_False_shift;
        when others => c_75 <= c_75_74_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 76 and associated fundamentals [[0, 8027], [16368, -2432], [66048, 33024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_76 <= c_71 & "";
    end if;
  end process;
  -- node of type 'register' in stage 14 with id 77 and associated fundamentals [[0, 8027], [16368, -2432], [66048, 33024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_77 <= c_76 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 15 with id 78 and associated fundamentals [[0, 8027], [3072, 7416], [5676, 5676]]
  c_78_74_0_False_resize <= c_74;
  c_78_74_0_False_shift <= shift_left(c_78_74_0_False_resize, 0);
  c_78_67_0_False_resize <= c_67;
  c_78_67_0_False_shift <= shift_left(c_78_67_0_False_resize, 0);
  c_78_77_0_False_resize <= c_77(29 downto 0);
  c_78_77_0_False_shift <= shift_left(c_78_77_0_False_resize, 0);
  with config_select_15 select c_78_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_78_sel is
        when "00" => c_78 <= c_78_74_0_False_shift;
        when "01" => c_78 <= c_78_67_0_False_shift;
        when others => c_78 <= c_78_77_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 15 with id 79 and associated fundamentals [[8027, 0], [7416, -3072], [5676, -5676]]
  c_79_resize <= c_75;
  c_79 <= -shift_left(c_79_resize, 0);
  -- node of type 'output' in stage 15 with id 80 and associated fundamentals [[0, 8027], [3072, 7416], [5676, 5676]]
  c_80_resize <= c_78;
  c_80 <= shift_left(c_80_resize, 0);
end architecture;

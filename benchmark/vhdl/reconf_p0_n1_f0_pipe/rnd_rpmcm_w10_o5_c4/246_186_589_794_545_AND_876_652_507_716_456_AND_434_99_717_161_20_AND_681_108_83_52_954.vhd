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
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_0_2_False_resize: signed(18 downto 0);
  signal c_1_0_2_False_shift: signed(18 downto 0);
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
  signal c_6: signed(22 downto 0);
  signal c_6_3_1_False_resize: signed(22 downto 0);
  signal c_6_3_1_False_shift: signed(22 downto 0);
  signal c_6_3_0_False_resize: signed(22 downto 0);
  signal c_6_3_0_False_shift: signed(22 downto 0);
  signal c_6_5_3_False_resize: signed(22 downto 0);
  signal c_6_5_3_False_shift: signed(22 downto 0);
  signal c_6_5_7_False_resize: signed(22 downto 0);
  signal c_6_5_7_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(24 downto 0);
  signal c_8_i0_resize: signed(24 downto 0);
  signal c_8_i1_resize: signed(24 downto 0);
  signal c_8_i0_shift: signed(24 downto 0);
  signal c_8_i1_shift: signed(24 downto 0);
  signal c_8_arith: signed(24 downto 0);
  signal c_8_oshift: signed(24 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_9_1_False_resize: signed(22 downto 0);
  signal c_12_9_1_False_shift: signed(22 downto 0);
  signal c_12_9_7_False_resize: signed(22 downto 0);
  signal c_12_9_7_False_shift: signed(22 downto 0);
  signal c_12_11_0_False_resize: signed(22 downto 0);
  signal c_12_11_0_False_shift: signed(22 downto 0);
  signal c_12_8_2_False_resize: signed(22 downto 0);
  signal c_12_8_2_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(20 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_16_0_False_resize: signed(24 downto 0);
  signal c_17_16_0_False_shift: signed(24 downto 0);
  signal c_17_14_1_False_resize: signed(24 downto 0);
  signal c_17_14_1_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_3_5_False_resize: signed(23 downto 0);
  signal c_18_3_5_False_shift: signed(23 downto 0);
  signal c_18_5_1_False_resize: signed(23 downto 0);
  signal c_18_5_1_False_shift: signed(23 downto 0);
  signal c_18_5_5_False_resize: signed(23 downto 0);
  signal c_18_5_5_False_shift: signed(23 downto 0);
  signal c_18_3_0_False_resize: signed(23 downto 0);
  signal c_18_3_0_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_i0_resize: signed(24 downto 0);
  signal c_23_i1_resize: signed(24 downto 0);
  signal c_23_i0_shift: signed(24 downto 0);
  signal c_23_i1_shift: signed(24 downto 0);
  signal c_23_arith: signed(24 downto 0);
  signal c_23_oshift: signed(24 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(20 downto 0);
  signal c_25: signed(20 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_23_0_False_resize: signed(25 downto 0);
  signal c_28_23_0_False_shift: signed(25 downto 0);
  signal c_28_25_2_False_resize: signed(25 downto 0);
  signal c_28_25_2_False_shift: signed(25 downto 0);
  signal c_28_23_1_False_resize: signed(25 downto 0);
  signal c_28_23_1_False_shift: signed(25 downto 0);
  signal c_28_27_4_False_resize: signed(25 downto 0);
  signal c_28_27_4_False_shift: signed(25 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_29_9_0_False_resize: signed(21 downto 0);
  signal c_29_9_0_False_shift: signed(21 downto 0);
  signal c_29_9_6_False_resize: signed(21 downto 0);
  signal c_29_9_6_False_shift: signed(21 downto 0);
  signal c_29_8_0_False_resize: signed(21 downto 0);
  signal c_29_8_0_False_shift: signed(21 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_i0_resize: signed(25 downto 0);
  signal c_34_i1_resize: signed(25 downto 0);
  signal c_34_i0_shift: signed(25 downto 0);
  signal c_34_i1_shift: signed(25 downto 0);
  signal c_34_arith: signed(25 downto 0);
  signal c_34_oshift: signed(25 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(24 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_38_1_False_resize: signed(25 downto 0);
  signal c_39_38_1_False_shift: signed(25 downto 0);
  signal c_39_25_5_False_resize: signed(25 downto 0);
  signal c_39_25_5_False_shift: signed(25 downto 0);
  signal c_39_23_2_False_resize: signed(25 downto 0);
  signal c_39_23_2_False_shift: signed(25 downto 0);
  signal c_39_27_0_False_resize: signed(25 downto 0);
  signal c_39_27_0_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(20 downto 0);
  signal c_41: signed(20 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_41_1_False_resize: signed(25 downto 0);
  signal c_42_41_1_False_shift: signed(25 downto 0);
  signal c_42_34_0_False_resize: signed(25 downto 0);
  signal c_42_34_0_False_shift: signed(25 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_i0_resize: signed(25 downto 0);
  signal c_45_i1_resize: signed(25 downto 0);
  signal c_45_i0_shift: signed(25 downto 0);
  signal c_45_i1_shift: signed(25 downto 0);
  signal c_45_arith: signed(25 downto 0);
  signal c_45_oshift: signed(25 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(15 downto 0);
  signal c_47: signed(15 downto 0);
  signal c_48: signed(15 downto 0);
  signal c_49: signed(15 downto 0);
  signal c_50: signed(15 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_52_0_False_resize: signed(25 downto 0);
  signal c_53_52_0_False_shift: signed(25 downto 0);
  signal c_53_34_1_False_resize: signed(25 downto 0);
  signal c_53_34_1_False_shift: signed(25 downto 0);
  signal c_53_50_2_False_resize: signed(25 downto 0);
  signal c_53_50_2_False_shift: signed(25 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_54_14_0_False_resize: signed(24 downto 0);
  signal c_54_14_0_False_shift: signed(24 downto 0);
  signal c_54_36_4_False_resize: signed(24 downto 0);
  signal c_54_36_4_False_shift: signed(24 downto 0);
  signal c_54_16_4_False_resize: signed(24 downto 0);
  signal c_54_16_4_False_shift: signed(24 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_57: signed(24 downto 0);
  signal c_58: signed(24 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_i0_resize: signed(25 downto 0);
  signal c_59_i1_resize: signed(25 downto 0);
  signal c_59_i0_shift: signed(25 downto 0);
  signal c_59_i1_shift: signed(25 downto 0);
  signal c_59_arith: signed(25 downto 0);
  signal c_59_oshift: signed(25 downto 0);
  signal c_60: signed(24 downto 0);
  signal c_60_14_0_False_resize: signed(24 downto 0);
  signal c_60_14_0_False_shift: signed(24 downto 0);
  signal c_60_16_2_False_resize: signed(24 downto 0);
  signal c_60_16_2_False_shift: signed(24 downto 0);
  signal c_60_46_8_False_resize: signed(24 downto 0);
  signal c_60_46_8_False_shift: signed(24 downto 0);
  signal c_60_sel: std_logic_vector(1 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_3_6_False_resize: signed(25 downto 0);
  signal c_61_3_6_False_shift: signed(25 downto 0);
  signal c_61_3_0_False_resize: signed(25 downto 0);
  signal c_61_3_0_False_shift: signed(25 downto 0);
  signal c_61_sel: std_logic_vector(0 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_66_i0_resize: signed(25 downto 0);
  signal c_66_i1_resize: signed(25 downto 0);
  signal c_66_i0_shift: signed(25 downto 0);
  signal c_66_i1_shift: signed(25 downto 0);
  signal c_66_arith: signed(25 downto 0);
  signal c_66_oshift: signed(25 downto 0);
  signal c_66_sub_sel: std_logic;
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_73: signed(25 downto 0);
  signal c_73_68_1_False_resize: signed(25 downto 0);
  signal c_73_68_1_False_shift: signed(25 downto 0);
  signal c_73_72_1_False_resize: signed(25 downto 0);
  signal c_73_72_1_False_shift: signed(25 downto 0);
  signal c_73_45_0_False_resize: signed(25 downto 0);
  signal c_73_45_0_False_shift: signed(25 downto 0);
  signal c_73_sel: std_logic_vector(1 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_75: signed(24 downto 0);
  signal c_76: signed(25 downto 0);
  signal c_76_75_1_False_resize: signed(25 downto 0);
  signal c_76_75_1_False_shift: signed(25 downto 0);
  signal c_76_45_0_False_resize: signed(25 downto 0);
  signal c_76_45_0_False_shift: signed(25 downto 0);
  signal c_76_sel: std_logic_vector(0 downto 0);
  signal c_77: signed(25 downto 0);
  signal c_77_59_0_False_resize: signed(25 downto 0);
  signal c_77_59_0_False_shift: signed(25 downto 0);
  signal c_77_72_0_False_resize: signed(25 downto 0);
  signal c_77_72_0_False_shift: signed(25 downto 0);
  signal c_77_sel: std_logic_vector(0 downto 0);
  signal c_78: signed(24 downto 0);
  signal c_79: signed(24 downto 0);
  signal c_80: signed(24 downto 0);
  signal c_81: signed(24 downto 0);
  signal c_82: signed(24 downto 0);
  signal c_83: signed(24 downto 0);
  signal c_84: signed(24 downto 0);
  signal c_85: signed(24 downto 0);
  signal c_86: signed(25 downto 0);
  signal c_86_85_0_False_resize: signed(25 downto 0);
  signal c_86_85_0_False_shift: signed(25 downto 0);
  signal c_86_81_0_False_resize: signed(25 downto 0);
  signal c_86_81_0_False_shift: signed(25 downto 0);
  signal c_86_68_0_False_resize: signed(25 downto 0);
  signal c_86_68_0_False_shift: signed(25 downto 0);
  signal c_86_45_1_False_resize: signed(25 downto 0);
  signal c_86_45_1_False_shift: signed(25 downto 0);
  signal c_86_sel: std_logic_vector(1 downto 0);
  signal c_87: signed(25 downto 0);
  signal c_87_59_1_False_resize: signed(25 downto 0);
  signal c_87_59_1_False_shift: signed(25 downto 0);
  signal c_87_81_0_False_resize: signed(25 downto 0);
  signal c_87_81_0_False_shift: signed(25 downto 0);
  signal c_87_72_0_False_resize: signed(25 downto 0);
  signal c_87_72_0_False_shift: signed(25 downto 0);
  signal c_87_sel: std_logic_vector(1 downto 0);
  signal c_88: signed(25 downto 0);
  signal c_88_resize: signed(25 downto 0);
  signal c_89: signed(25 downto 0);
  signal c_89_resize: signed(25 downto 0);
  signal c_90: signed(25 downto 0);
  signal c_90_resize: signed(25 downto 0);
  signal c_91: signed(25 downto 0);
  signal c_91_resize: signed(25 downto 0);
  signal c_92: signed(25 downto 0);
  signal c_92_resize: signed(25 downto 0);
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
  -- output node 0 with id 88
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_88);
    end if;
  end process;
  -- output node 1 with id 89
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_89);
    end if;
  end process;
  -- output node 2 with id 90
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_90);
    end if;
  end process;
  -- output node 3 with id 91
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_91);
    end if;
  end process;
  -- output node 4 with id 92
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_92);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[8], [1], [8], [4]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  c_1_0_2_False_resize <= resize(c_0, 19);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "00",
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [2]]
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[31], [5], [31], [14]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 17,
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[128], [5], [8], [28]]
  c_6_3_1_False_resize <= resize(c_3, 23);
  c_6_3_1_False_shift <= shift_left(c_6_3_1_False_resize, 1);
  c_6_3_0_False_resize <= resize(c_3, 23);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_3_False_resize <= resize(c_5, 23);
  c_6_5_3_False_shift <= shift_left(c_6_5_3_False_resize, 3);
  c_6_5_7_False_resize <= resize(c_5, 23);
  c_6_5_7_False_shift <= shift_left(c_6_5_7_False_resize, 7);
  with config_select_3 select c_6_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_3_1_False_shift;
        when "01" => c_6 <= c_6_3_0_False_shift;
        when "10" => c_6 <= c_6_5_3_False_shift;
        when others => c_6 <= c_6_5_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[260], [14], [20], [52]]
  with config_select_4 select c_8_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 25,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[31], [5], [31], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[31], [5], [31], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[128], [2], [80], [14]]
  c_12_9_1_False_resize <= resize(c_9, 23);
  c_12_9_1_False_shift <= shift_left(c_12_9_1_False_resize, 1);
  c_12_9_7_False_resize <= resize(c_9, 23);
  c_12_9_7_False_shift <= shift_left(c_12_9_7_False_resize, 7);
  c_12_11_0_False_resize <= resize(c_11, 23);
  c_12_11_0_False_shift <= shift_left(c_12_11_0_False_resize, 0);
  c_12_8_2_False_resize <= c_8(22 downto 0);
  c_12_8_2_False_shift <= shift_left(c_12_8_2_False_resize, 2);
  with config_select_5 select c_12_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_9_1_False_shift;
        when "01" => c_12 <= c_12_9_7_False_shift;
        when "10" => c_12 <= c_12_11_0_False_shift;
        when others => c_12 <= c_12_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_9 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 14 and associated fundamentals [[257], [3], [161], [29]]
  with config_select_6 select c_14_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[31], [5], [31], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 16 and associated fundamentals [[31], [5], [31], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 17 and associated fundamentals [[31], [6], [322], [58]]
  c_17_16_0_False_resize <= resize(c_16, 25);
  c_17_16_0_False_shift <= shift_left(c_17_16_0_False_resize, 0);
  c_17_14_1_False_resize <= c_14;
  c_17_14_1_False_shift <= shift_left(c_17_14_1_False_resize, 1);
  with config_select_7 select c_17_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_16_0_False_shift;
        when others => c_17 <= c_17_14_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[31], [160], [32], [2]]
  c_18_3_5_False_resize <= resize(c_3, 24);
  c_18_3_5_False_shift <= shift_left(c_18_3_5_False_resize, 5);
  c_18_5_1_False_resize <= resize(c_5, 24);
  c_18_5_1_False_shift <= shift_left(c_18_5_1_False_resize, 1);
  c_18_5_5_False_resize <= resize(c_5, 24);
  c_18_5_5_False_shift <= shift_left(c_18_5_5_False_resize, 5);
  c_18_3_0_False_resize <= resize(c_3, 24);
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_3_5_False_shift;
        when "01" => c_18 <= c_18_5_1_False_shift;
        when "10" => c_18 <= c_18_5_5_False_shift;
        when others => c_18 <= c_18_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[31], [160], [32], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[31], [160], [32], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[31], [160], [32], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[31], [160], [32], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 23 and associated fundamentals [[93], [326], [258], [54]]
  with config_select_8 select c_23_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_23_sub_sel,
      x_i => c_17,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 24 and associated fundamentals [[31], [5], [31], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 25 and associated fundamentals [[31], [5], [31], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[257], [3], [161], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 27 and associated fundamentals [[257], [3], [161], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 28 and associated fundamentals [[124], [652], [258], [464]]
  c_28_23_0_False_resize <= resize(c_23, 26);
  c_28_23_0_False_shift <= shift_left(c_28_23_0_False_resize, 0);
  c_28_25_2_False_resize <= resize(c_25, 26);
  c_28_25_2_False_shift <= shift_left(c_28_25_2_False_resize, 2);
  c_28_23_1_False_resize <= resize(c_23, 26);
  c_28_23_1_False_shift <= shift_left(c_28_23_1_False_resize, 1);
  c_28_27_4_False_resize <= resize(c_27, 26);
  c_28_27_4_False_shift <= shift_left(c_28_27_4_False_resize, 4);
  with config_select_9 select c_28_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_23_0_False_shift;
        when "01" => c_28 <= c_28_25_2_False_shift;
        when "10" => c_28 <= c_28_23_1_False_shift;
        when others => c_28 <= c_28_27_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 29 and associated fundamentals [[1], [64], [20], [1]]
  c_29_9_0_False_resize <= resize(c_9, 22);
  c_29_9_0_False_shift <= shift_left(c_29_9_0_False_resize, 0);
  c_29_9_6_False_resize <= resize(c_9, 22);
  c_29_9_6_False_shift <= shift_left(c_29_9_6_False_resize, 6);
  c_29_8_0_False_resize <= c_8(21 downto 0);
  c_29_8_0_False_shift <= shift_left(c_29_8_0_False_resize, 0);
  with config_select_5 select c_29_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_9_0_False_shift;
        when "01" => c_29 <= c_29_9_6_False_shift;
        when others => c_29 <= c_29_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[1], [64], [20], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[1], [64], [20], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[1], [64], [20], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 33 and associated fundamentals [[1], [64], [20], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 34 and associated fundamentals [[123], [716], [278], [465]]
  with config_select_10 select c_34_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
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
      sub_i => c_34_sub_sel,
      x_i => c_28,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[260], [14], [20], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[260], [14], [20], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[260], [14], [20], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[260], [14], [20], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 39 and associated fundamentals [[520], [160], [161], [216]]
  c_39_38_1_False_resize <= resize(c_38, 26);
  c_39_38_1_False_shift <= shift_left(c_39_38_1_False_resize, 1);
  c_39_25_5_False_resize <= resize(c_25, 26);
  c_39_25_5_False_shift <= shift_left(c_39_25_5_False_resize, 5);
  c_39_23_2_False_resize <= resize(c_23, 26);
  c_39_23_2_False_shift <= shift_left(c_39_23_2_False_resize, 2);
  c_39_27_0_False_resize <= resize(c_27, 26);
  c_39_27_0_False_shift <= shift_left(c_39_27_0_False_resize, 0);
  with config_select_9 select c_39_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_38_1_False_shift;
        when "01" => c_39 <= c_39_25_5_False_shift;
        when "10" => c_39 <= c_39_23_2_False_shift;
        when others => c_39 <= c_39_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[31], [5], [31], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 41 and associated fundamentals [[31], [5], [31], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 42 and associated fundamentals [[123], [716], [62], [465]]
  c_42_41_1_False_resize <= resize(c_41, 26);
  c_42_41_1_False_shift <= shift_left(c_42_41_1_False_resize, 1);
  c_42_34_0_False_resize <= c_34;
  c_42_34_0_False_shift <= shift_left(c_42_34_0_False_resize, 0);
  with config_select_11 select c_42_sel <= 
    "0" when "10",
    "1" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_41_1_False_shift;
        when others => c_42 <= c_42_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 43 and associated fundamentals [[520], [160], [161], [216]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 44 and associated fundamentals [[520], [160], [161], [216]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 45 and associated fundamentals [[397], [876], [99], [681]]
  with config_select_12 select c_45_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_45: entity work.adder_node
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
  -- node of type 'register' in stage 6 with id 46 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 50 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[93], [326], [258], [54]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[93], [326], [258], [54]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 53 and associated fundamentals [[93], [4], [556], [54]]
  c_53_52_0_False_resize <= resize(c_52, 26);
  c_53_52_0_False_shift <= shift_left(c_53_52_0_False_resize, 0);
  c_53_34_1_False_resize <= c_34;
  c_53_34_1_False_shift <= shift_left(c_53_34_1_False_resize, 1);
  c_53_50_2_False_resize <= resize(c_50, 26);
  c_53_50_2_False_shift <= shift_left(c_53_50_2_False_resize, 2);
  with config_select_11 select c_53_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "00" => c_53 <= c_53_52_0_False_shift;
        when "01" => c_53 <= c_53_34_1_False_shift;
        when others => c_53 <= c_53_50_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 54 and associated fundamentals [[496], [224], [161], [29]]
  c_54_14_0_False_resize <= c_14;
  c_54_14_0_False_shift <= shift_left(c_54_14_0_False_resize, 0);
  c_54_36_4_False_resize <= c_36;
  c_54_36_4_False_shift <= shift_left(c_54_36_4_False_resize, 4);
  c_54_16_4_False_resize <= resize(c_16, 25);
  c_54_16_4_False_shift <= shift_left(c_54_16_4_False_resize, 4);
  with config_select_7 select c_54_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_14_0_False_shift;
        when "01" => c_54 <= c_54_36_4_False_shift;
        when others => c_54 <= c_54_16_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[496], [224], [161], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[496], [224], [161], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[496], [224], [161], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 58 and associated fundamentals [[496], [224], [161], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'add' in stage 12 with id 59 and associated fundamentals [[589], [228], [717], [83]]
  inst_adder_node_59: entity work.adder_node
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
      sub => False
    )
    port map (
      x_i => c_53,
      y_i => c_58,
      z_o => c_59_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_59_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 60 and associated fundamentals [[257], [256], [124], [29]]
  c_60_14_0_False_resize <= c_14;
  c_60_14_0_False_shift <= shift_left(c_60_14_0_False_resize, 0);
  c_60_16_2_False_resize <= resize(c_16, 25);
  c_60_16_2_False_shift <= shift_left(c_60_16_2_False_resize, 2);
  c_60_46_8_False_resize <= resize(c_46, 25);
  c_60_46_8_False_shift <= shift_left(c_60_46_8_False_resize, 8);
  with config_select_7 select c_60_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_60_sel is
        when "00" => c_60 <= c_60_14_0_False_shift;
        when "01" => c_60 <= c_60_16_2_False_shift;
        when others => c_60 <= c_60_46_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 61 and associated fundamentals [[31], [5], [31], [896]]
  c_61_3_6_False_resize <= resize(c_3, 26);
  c_61_3_6_False_shift <= shift_left(c_61_3_6_False_resize, 6);
  c_61_3_0_False_resize <= resize(c_3, 26);
  c_61_3_0_False_shift <= shift_left(c_61_3_0_False_resize, 0);
  with config_select_3 select c_61_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_61_sel is
        when "0" => c_61 <= c_61_3_6_False_shift;
        when others => c_61 <= c_61_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 62 and associated fundamentals [[31], [5], [31], [896]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 63 and associated fundamentals [[31], [5], [31], [896]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 64 and associated fundamentals [[31], [5], [31], [896]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 65 and associated fundamentals [[31], [5], [31], [896]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 66 and associated fundamentals [[545], [507], [217], [954]]
  with config_select_8 select c_66_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_66: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_66_sub_sel,
      x_i => c_60,
      y_i => c_65,
      z_o => c_66_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_66_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 67 and associated fundamentals [[123], [716], [278], [465]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 68 and associated fundamentals [[123], [716], [278], [465]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 69 and associated fundamentals [[545], [507], [217], [954]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 70 and associated fundamentals [[545], [507], [217], [954]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_69 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 71 and associated fundamentals [[545], [507], [217], [954]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_71 <= c_70 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 72 and associated fundamentals [[545], [507], [217], [954]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_72 <= c_71 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 73 and associated fundamentals [[246], [876], [434], [681]]
  c_73_68_1_False_resize <= c_68;
  c_73_68_1_False_shift <= shift_left(c_73_68_1_False_resize, 1);
  c_73_72_1_False_resize <= c_72;
  c_73_72_1_False_shift <= shift_left(c_73_72_1_False_resize, 1);
  c_73_45_0_False_resize <= c_45;
  c_73_45_0_False_shift <= shift_left(c_73_45_0_False_resize, 0);
  with config_select_13 select c_73_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_73_sel is
        when "00" => c_73 <= c_73_68_1_False_shift;
        when "01" => c_73 <= c_73_72_1_False_shift;
        when others => c_73 <= c_73_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 74 and associated fundamentals [[93], [326], [258], [54]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_74 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 75 and associated fundamentals [[93], [326], [258], [54]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_75 <= c_74 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 76 and associated fundamentals [[186], [652], [99], [108]]
  c_76_75_1_False_resize <= resize(c_75, 26);
  c_76_75_1_False_shift <= shift_left(c_76_75_1_False_resize, 1);
  c_76_45_0_False_resize <= c_45;
  c_76_45_0_False_shift <= shift_left(c_76_45_0_False_resize, 0);
  with config_select_13 select c_76_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_76_sel is
        when "0" => c_76 <= c_76_75_1_False_shift;
        when others => c_76 <= c_76_45_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 77 and associated fundamentals [[589], [507], [717], [83]]
  c_77_59_0_False_resize <= c_59;
  c_77_59_0_False_shift <= shift_left(c_77_59_0_False_resize, 0);
  c_77_72_0_False_resize <= c_72;
  c_77_72_0_False_shift <= shift_left(c_77_72_0_False_resize, 0);
  with config_select_13 select c_77_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_77_sel is
        when "0" => c_77 <= c_77_59_0_False_shift;
        when others => c_77 <= c_77_72_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 78 and associated fundamentals [[260], [14], [20], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_78 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 79 and associated fundamentals [[260], [14], [20], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_79 <= c_78 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 80 and associated fundamentals [[260], [14], [20], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_80 <= c_79 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 81 and associated fundamentals [[260], [14], [20], [52]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_81 <= c_80 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 82 and associated fundamentals [[257], [3], [161], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_82 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 83 and associated fundamentals [[257], [3], [161], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_83 <= c_82 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 84 and associated fundamentals [[257], [3], [161], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_84 <= c_83 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 85 and associated fundamentals [[257], [3], [161], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_85 <= c_84 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 86 and associated fundamentals [[794], [716], [161], [52]]
  c_86_85_0_False_resize <= resize(c_85, 26);
  c_86_85_0_False_shift <= shift_left(c_86_85_0_False_resize, 0);
  c_86_81_0_False_resize <= resize(c_81, 26);
  c_86_81_0_False_shift <= shift_left(c_86_81_0_False_resize, 0);
  c_86_68_0_False_resize <= c_68;
  c_86_68_0_False_shift <= shift_left(c_86_68_0_False_resize, 0);
  c_86_45_1_False_resize <= c_45;
  c_86_45_1_False_shift <= shift_left(c_86_45_1_False_resize, 1);
  with config_select_13 select c_86_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_86_sel is
        when "00" => c_86 <= c_86_85_0_False_shift;
        when "01" => c_86 <= c_86_81_0_False_shift;
        when "10" => c_86 <= c_86_68_0_False_shift;
        when others => c_86 <= c_86_45_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 87 and associated fundamentals [[545], [456], [20], [954]]
  c_87_59_1_False_resize <= c_59;
  c_87_59_1_False_shift <= shift_left(c_87_59_1_False_resize, 1);
  c_87_81_0_False_resize <= resize(c_81, 26);
  c_87_81_0_False_shift <= shift_left(c_87_81_0_False_resize, 0);
  c_87_72_0_False_resize <= c_72;
  c_87_72_0_False_shift <= shift_left(c_87_72_0_False_resize, 0);
  with config_select_13 select c_87_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_87_sel is
        when "00" => c_87 <= c_87_59_1_False_shift;
        when "01" => c_87 <= c_87_81_0_False_shift;
        when others => c_87 <= c_87_72_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 88 and associated fundamentals [[246], [876], [434], [681]]
  c_88_resize <= c_73;
  c_88 <= shift_left(c_88_resize, 0);
  -- node of type 'output' in stage 13 with id 89 and associated fundamentals [[186], [652], [99], [108]]
  c_89_resize <= c_76;
  c_89 <= shift_left(c_89_resize, 0);
  -- node of type 'output' in stage 13 with id 90 and associated fundamentals [[589], [507], [717], [83]]
  c_90_resize <= c_77;
  c_90 <= shift_left(c_90_resize, 0);
  -- node of type 'output' in stage 13 with id 91 and associated fundamentals [[794], [716], [161], [52]]
  c_91_resize <= c_86;
  c_91 <= shift_left(c_91_resize, 0);
  -- node of type 'output' in stage 13 with id 92 and associated fundamentals [[545], [456], [20], [954]]
  c_92_resize <= c_87;
  c_92 <= shift_left(c_92_resize, 0);
end architecture;

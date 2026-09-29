library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(22 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(22 downto 0);
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(22 downto 0);
    y_7: out std_logic_vector(23 downto 0);
    y_8: out std_logic_vector(23 downto 0);
    y_9: out std_logic_vector(23 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_2_0_0_False_resize: signed(15 downto 0);
  signal c_2_0_0_False_shift: signed(15 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_3_i0_resize: signed(17 downto 0);
  signal c_3_i1_resize: signed(17 downto 0);
  signal c_3_i0_shift: signed(17 downto 0);
  signal c_3_i1_shift: signed(17 downto 0);
  signal c_3_arith: signed(17 downto 0);
  signal c_3_oshift: signed(17 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_4_0_0_False_resize: signed(15 downto 0);
  signal c_4_0_0_False_shift: signed(15 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_i0_resize: signed(17 downto 0);
  signal c_5_i1_resize: signed(17 downto 0);
  signal c_5_i0_shift: signed(17 downto 0);
  signal c_5_i1_shift: signed(17 downto 0);
  signal c_5_arith: signed(17 downto 0);
  signal c_5_oshift: signed(17 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_i0_resize: signed(18 downto 0);
  signal c_6_i1_resize: signed(18 downto 0);
  signal c_6_i0_shift: signed(18 downto 0);
  signal c_6_i1_shift: signed(18 downto 0);
  signal c_6_arith: signed(18 downto 0);
  signal c_6_oshift: signed(18 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_i0_resize: signed(19 downto 0);
  signal c_7_i1_resize: signed(19 downto 0);
  signal c_7_i0_shift: signed(19 downto 0);
  signal c_7_i1_shift: signed(19 downto 0);
  signal c_7_arith: signed(19 downto 0);
  signal c_7_oshift: signed(19 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_8_i0_resize: signed(19 downto 0);
  signal c_8_i1_resize: signed(19 downto 0);
  signal c_8_i0_shift: signed(19 downto 0);
  signal c_8_i1_shift: signed(19 downto 0);
  signal c_8_arith: signed(19 downto 0);
  signal c_8_oshift: signed(19 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(20 downto 0);
  signal c_9_5_4_False_resize: signed(20 downto 0);
  signal c_9_5_4_False_shift: signed(20 downto 0);
  signal c_9_6_2_False_resize: signed(20 downto 0);
  signal c_9_6_2_False_shift: signed(20 downto 0);
  signal c_9_8_0_False_resize: signed(20 downto 0);
  signal c_9_8_0_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_10_3_0_False_resize: signed(15 downto 0);
  signal c_10_3_0_False_shift: signed(15 downto 0);
  signal c_10_5_0_False_resize: signed(15 downto 0);
  signal c_10_5_0_False_shift: signed(15 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(18 downto 0);
  signal c_12_5_2_False_resize: signed(18 downto 0);
  signal c_12_5_2_False_shift: signed(18 downto 0);
  signal c_12_5_0_False_resize: signed(18 downto 0);
  signal c_12_5_0_False_shift: signed(18 downto 0);
  signal c_12_8_0_False_resize: signed(18 downto 0);
  signal c_12_8_0_False_shift: signed(18 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(18 downto 0);
  signal c_13_3_1_False_resize: signed(18 downto 0);
  signal c_13_3_1_False_shift: signed(18 downto 0);
  signal c_13_5_0_False_resize: signed(18 downto 0);
  signal c_13_5_0_False_shift: signed(18 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_i0_resize: signed(22 downto 0);
  signal c_14_i1_resize: signed(22 downto 0);
  signal c_14_i0_shift: signed(22 downto 0);
  signal c_14_i1_shift: signed(22 downto 0);
  signal c_14_arith: signed(22 downto 0);
  signal c_14_oshift: signed(22 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(19 downto 0);
  signal c_15_5_2_False_resize: signed(19 downto 0);
  signal c_15_5_2_False_shift: signed(19 downto 0);
  signal c_15_3_1_False_resize: signed(19 downto 0);
  signal c_15_3_1_False_shift: signed(19 downto 0);
  signal c_15_5_0_False_resize: signed(19 downto 0);
  signal c_15_5_0_False_shift: signed(19 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_16_7_1_False_resize: signed(19 downto 0);
  signal c_16_7_1_False_shift: signed(19 downto 0);
  signal c_16_5_0_False_resize: signed(19 downto 0);
  signal c_16_5_0_False_shift: signed(19 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(20 downto 0);
  signal c_18_5_5_False_resize: signed(20 downto 0);
  signal c_18_5_5_False_shift: signed(20 downto 0);
  signal c_18_5_0_False_resize: signed(20 downto 0);
  signal c_18_5_0_False_shift: signed(20 downto 0);
  signal c_18_6_0_False_resize: signed(20 downto 0);
  signal c_18_6_0_False_shift: signed(20 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_3_0_False_resize: signed(21 downto 0);
  signal c_19_3_0_False_shift: signed(21 downto 0);
  signal c_19_3_6_False_resize: signed(21 downto 0);
  signal c_19_3_6_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(21 downto 0);
  signal c_21_6_3_False_resize: signed(21 downto 0);
  signal c_21_6_3_False_shift: signed(21 downto 0);
  signal c_21_6_0_False_resize: signed(21 downto 0);
  signal c_21_6_0_False_shift: signed(21 downto 0);
  signal c_21_5_6_False_resize: signed(21 downto 0);
  signal c_21_5_6_False_shift: signed(21 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_22_5_4_False_resize: signed(19 downto 0);
  signal c_22_5_4_False_shift: signed(19 downto 0);
  signal c_22_5_0_False_resize: signed(19 downto 0);
  signal c_22_5_0_False_shift: signed(19 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(20 downto 0);
  signal c_24_5_2_False_resize: signed(20 downto 0);
  signal c_24_5_2_False_shift: signed(20 downto 0);
  signal c_24_8_0_False_resize: signed(20 downto 0);
  signal c_24_8_0_False_shift: signed(20 downto 0);
  signal c_24_7_2_False_resize: signed(20 downto 0);
  signal c_24_7_2_False_shift: signed(20 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(19 downto 0);
  signal c_25_8_0_False_resize: signed(19 downto 0);
  signal c_25_8_0_False_shift: signed(19 downto 0);
  signal c_25_5_0_False_resize: signed(19 downto 0);
  signal c_25_5_0_False_shift: signed(19 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_27_7_0_False_resize: signed(19 downto 0);
  signal c_27_7_0_False_shift: signed(19 downto 0);
  signal c_27_5_0_False_resize: signed(19 downto 0);
  signal c_27_5_0_False_shift: signed(19 downto 0);
  signal c_27_3_2_False_resize: signed(19 downto 0);
  signal c_27_3_2_False_shift: signed(19 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_3_6_False_resize: signed(23 downto 0);
  signal c_28_3_6_False_shift: signed(23 downto 0);
  signal c_28_5_0_False_resize: signed(23 downto 0);
  signal c_28_5_0_False_shift: signed(23 downto 0);
  signal c_28_3_5_False_resize: signed(23 downto 0);
  signal c_28_3_5_False_shift: signed(23 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(19 downto 0);
  signal c_30_3_2_False_resize: signed(19 downto 0);
  signal c_30_3_2_False_shift: signed(19 downto 0);
  signal c_30_6_0_False_resize: signed(19 downto 0);
  signal c_30_6_0_False_shift: signed(19 downto 0);
  signal c_30_3_1_False_resize: signed(19 downto 0);
  signal c_30_3_1_False_shift: signed(19 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(18 downto 0);
  signal c_31_3_0_False_resize: signed(18 downto 0);
  signal c_31_3_0_False_shift: signed(18 downto 0);
  signal c_31_6_0_False_resize: signed(18 downto 0);
  signal c_31_6_0_False_shift: signed(18 downto 0);
  signal c_31_5_1_False_resize: signed(18 downto 0);
  signal c_31_5_1_False_shift: signed(18 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_i0_resize: signed(23 downto 0);
  signal c_32_i1_resize: signed(23 downto 0);
  signal c_32_i0_shift: signed(23 downto 0);
  signal c_32_i1_shift: signed(23 downto 0);
  signal c_32_arith: signed(23 downto 0);
  signal c_32_oshift: signed(23 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(19 downto 0);
  signal c_33_5_4_False_resize: signed(19 downto 0);
  signal c_33_5_4_False_shift: signed(19 downto 0);
  signal c_33_3_2_False_resize: signed(19 downto 0);
  signal c_33_3_2_False_shift: signed(19 downto 0);
  signal c_33_5_0_False_resize: signed(19 downto 0);
  signal c_33_5_0_False_shift: signed(19 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(17 downto 0);
  signal c_34_5_0_False_resize: signed(17 downto 0);
  signal c_34_5_0_False_shift: signed(17 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_35_i0_resize: signed(22 downto 0);
  signal c_35_i1_resize: signed(22 downto 0);
  signal c_35_i0_shift: signed(22 downto 0);
  signal c_35_i1_shift: signed(22 downto 0);
  signal c_35_arith: signed(22 downto 0);
  signal c_35_oshift: signed(22 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(23 downto 0);
  signal c_36_5_7_False_resize: signed(23 downto 0);
  signal c_36_5_7_False_shift: signed(23 downto 0);
  signal c_36_6_5_False_resize: signed(23 downto 0);
  signal c_36_6_5_False_shift: signed(23 downto 0);
  signal c_36_6_0_False_resize: signed(23 downto 0);
  signal c_36_6_0_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_37_3_3_False_resize: signed(21 downto 0);
  signal c_37_3_3_False_shift: signed(21 downto 0);
  signal c_37_5_0_False_resize: signed(21 downto 0);
  signal c_37_5_0_False_shift: signed(21 downto 0);
  signal c_37_6_3_False_resize: signed(21 downto 0);
  signal c_37_6_3_False_shift: signed(21 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_i0_resize: signed(23 downto 0);
  signal c_38_i1_resize: signed(23 downto 0);
  signal c_38_i0_shift: signed(23 downto 0);
  signal c_38_i1_shift: signed(23 downto 0);
  signal c_38_arith: signed(23 downto 0);
  signal c_38_oshift: signed(23 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(22 downto 0);
  signal c_39_resize: signed(22 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_resize: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_43_resize: signed(22 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_45_resize: signed(22 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 1 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 2 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 3 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 4 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_43);
    end if;
  end process;
  -- output node 5 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 6 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 7 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 8 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 9 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_48);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 1 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0], [1], [1]]
  c_2_0_0_False_resize <= c_0;
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[1], [3], [3]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [0], [0]]
  c_4_0_0_False_resize <= c_0;
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[3], [1], [1]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      x_i => c_1,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[5], [5], [5]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_1,
      y_i => c_1,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 7 and associated fundamentals [[7], [7], [9]]
  with config_select_2 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_7_sub_sel,
      x_i => c_1,
      y_i => c_1,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[9], [7], [7]]
  with config_select_2 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_8_sub_sel,
      x_i => c_1,
      y_i => c_1,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[20], [7], [16]]
  c_9_5_4_False_resize <= resize(c_5, 21);
  c_9_5_4_False_shift <= shift_left(c_9_5_4_False_resize, 4);
  c_9_6_2_False_resize <= resize(c_6, 21);
  c_9_6_2_False_shift <= shift_left(c_9_6_2_False_resize, 2);
  c_9_8_0_False_resize <= resize(c_8, 21);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_5_4_False_shift;
        when "01" => c_9 <= c_9_6_2_False_shift;
        when others => c_9 <= c_9_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[1], [0], [1]]
  c_10_3_0_False_resize <= c_3(15 downto 0);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_5_0_False_resize <= c_5(15 downto 0);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_3_0_False_shift;
        when "01" => c_10 <= c_10_5_0_False_shift;
        when others => c_10 <= to_signed(0, 16);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[78], [28], [62]]
  with config_select_4 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 2,
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
      c_11 <= c_11_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[3], [4], [7]]
  c_12_5_2_False_resize <= resize(c_5, 19);
  c_12_5_2_False_shift <= shift_left(c_12_5_2_False_resize, 2);
  c_12_5_0_False_resize <= resize(c_5, 19);
  c_12_5_0_False_shift <= shift_left(c_12_5_0_False_resize, 0);
  c_12_8_0_False_resize <= c_8(18 downto 0);
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_5_2_False_shift;
        when "01" => c_12 <= c_12_5_0_False_shift;
        when others => c_12 <= c_12_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[3], [6], [1]]
  c_13_3_1_False_resize <= resize(c_3, 19);
  c_13_3_1_False_shift <= shift_left(c_13_3_1_False_resize, 1);
  c_13_5_0_False_resize <= resize(c_5, 19);
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_3_1_False_shift;
        when others => c_13 <= c_13_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[45], [58], [113]]
  with config_select_4 select c_14_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[12], [6], [1]]
  c_15_5_2_False_resize <= resize(c_5, 20);
  c_15_5_2_False_shift <= shift_left(c_15_5_2_False_resize, 2);
  c_15_3_1_False_resize <= resize(c_3, 20);
  c_15_3_1_False_shift <= shift_left(c_15_3_1_False_resize, 1);
  c_15_5_0_False_resize <= resize(c_5, 20);
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_5_2_False_shift;
        when "01" => c_15 <= c_15_3_1_False_shift;
        when others => c_15 <= c_15_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[14], [0], [1]]
  c_16_7_1_False_resize <= c_7;
  c_16_7_1_False_shift <= shift_left(c_16_7_1_False_resize, 1);
  c_16_5_0_False_resize <= resize(c_5, 20);
  c_16_5_0_False_shift <= shift_left(c_16_5_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_7_1_False_shift;
        when "01" => c_16 <= c_16_5_0_False_shift;
        when others => c_16 <= to_signed(0, 20);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[206], [96], [15]]
  with config_select_4 select c_17_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[3], [32], [5]]
  c_18_5_5_False_resize <= resize(c_5, 21);
  c_18_5_5_False_shift <= shift_left(c_18_5_5_False_resize, 5);
  c_18_5_0_False_resize <= resize(c_5, 21);
  c_18_5_0_False_shift <= shift_left(c_18_5_0_False_resize, 0);
  c_18_6_0_False_resize <= resize(c_6, 21);
  c_18_6_0_False_shift <= shift_left(c_18_6_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_5_5_False_shift;
        when "01" => c_18 <= c_18_5_0_False_shift;
        when others => c_18 <= c_18_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[64], [3], [0]]
  c_19_3_0_False_resize <= resize(c_3, 22);
  c_19_3_0_False_shift <= shift_left(c_19_3_0_False_resize, 0);
  c_19_3_6_False_resize <= resize(c_3, 22);
  c_19_3_6_False_shift <= shift_left(c_19_3_6_False_resize, 6);
  with config_select_3 select c_19_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_3_0_False_shift;
        when "01" => c_19 <= c_19_3_6_False_shift;
        when others => c_19 <= to_signed(0, 22);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[250], [76], [10]]
  with config_select_4 select c_20_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_20_sub_sel,
      x_i => c_19,
      y_i => c_18,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[40], [5], [64]]
  c_21_6_3_False_resize <= resize(c_6, 22);
  c_21_6_3_False_shift <= shift_left(c_21_6_3_False_resize, 3);
  c_21_6_0_False_resize <= resize(c_6, 22);
  c_21_6_0_False_shift <= shift_left(c_21_6_0_False_resize, 0);
  c_21_5_6_False_resize <= resize(c_5, 22);
  c_21_5_6_False_shift <= shift_left(c_21_5_6_False_resize, 6);
  with config_select_3 select c_21_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_6_3_False_shift;
        when "01" => c_21 <= c_21_6_0_False_shift;
        when others => c_21 <= c_21_5_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[3], [1], [16]]
  c_22_5_4_False_resize <= resize(c_5, 20);
  c_22_5_4_False_shift <= shift_left(c_22_5_4_False_resize, 4);
  c_22_5_0_False_resize <= resize(c_5, 20);
  c_22_5_0_False_shift <= shift_left(c_22_5_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_5_4_False_shift;
        when others => c_22 <= c_22_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 23 and associated fundamentals [[157], [21], [240]]
  with config_select_4 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
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
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[28], [4], [7]]
  c_24_5_2_False_resize <= resize(c_5, 21);
  c_24_5_2_False_shift <= shift_left(c_24_5_2_False_resize, 2);
  c_24_8_0_False_resize <= resize(c_8, 21);
  c_24_8_0_False_shift <= shift_left(c_24_8_0_False_resize, 0);
  c_24_7_2_False_resize <= resize(c_7, 21);
  c_24_7_2_False_shift <= shift_left(c_24_7_2_False_resize, 2);
  with config_select_3 select c_24_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_5_2_False_shift;
        when "01" => c_24 <= c_24_8_0_False_shift;
        when others => c_24 <= c_24_7_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[9], [1], [1]]
  c_25_8_0_False_resize <= c_8;
  c_25_8_0_False_shift <= shift_left(c_25_8_0_False_resize, 0);
  c_25_5_0_False_resize <= resize(c_5, 20);
  c_25_5_0_False_shift <= shift_left(c_25_5_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_8_0_False_shift;
        when others => c_25 <= c_25_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 26 and associated fundamentals [[215], [31], [55]]
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
      w_o => 24,
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
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[4], [1], [9]]
  c_27_7_0_False_resize <= c_7;
  c_27_7_0_False_shift <= shift_left(c_27_7_0_False_resize, 0);
  c_27_5_0_False_resize <= resize(c_5, 20);
  c_27_5_0_False_shift <= shift_left(c_27_5_0_False_resize, 0);
  c_27_3_2_False_resize <= resize(c_3, 20);
  c_27_3_2_False_shift <= shift_left(c_27_3_2_False_resize, 2);
  with config_select_3 select c_27_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_7_0_False_shift;
        when "01" => c_27 <= c_27_5_0_False_shift;
        when others => c_27 <= c_27_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[3], [96], [192]]
  c_28_3_6_False_resize <= resize(c_3, 24);
  c_28_3_6_False_shift <= shift_left(c_28_3_6_False_resize, 6);
  c_28_5_0_False_resize <= resize(c_5, 24);
  c_28_5_0_False_shift <= shift_left(c_28_5_0_False_resize, 0);
  c_28_3_5_False_resize <= resize(c_3, 24);
  c_28_3_5_False_shift <= shift_left(c_28_3_5_False_resize, 5);
  with config_select_3 select c_28_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_3_6_False_shift;
        when "01" => c_28 <= c_28_5_0_False_shift;
        when others => c_28 <= c_28_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 29 and associated fundamentals [[11], [98], [174]]
  with config_select_4 select c_29_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
      w_o => 24,
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
      x_i => c_28,
      y_i => c_27,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 30 and associated fundamentals [[2], [5], [12]]
  c_30_3_2_False_resize <= resize(c_3, 20);
  c_30_3_2_False_shift <= shift_left(c_30_3_2_False_resize, 2);
  c_30_6_0_False_resize <= resize(c_6, 20);
  c_30_6_0_False_shift <= shift_left(c_30_6_0_False_resize, 0);
  c_30_3_1_False_resize <= resize(c_3, 20);
  c_30_3_1_False_shift <= shift_left(c_30_3_1_False_resize, 1);
  with config_select_3 select c_30_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_3_2_False_shift;
        when "01" => c_30 <= c_30_6_0_False_shift;
        when others => c_30 <= c_30_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[6], [3], [5]]
  c_31_3_0_False_resize <= resize(c_3, 19);
  c_31_3_0_False_shift <= shift_left(c_31_3_0_False_resize, 0);
  c_31_6_0_False_resize <= c_6;
  c_31_6_0_False_shift <= shift_left(c_31_6_0_False_resize, 0);
  c_31_5_1_False_resize <= resize(c_5, 19);
  c_31_5_1_False_shift <= shift_left(c_31_5_1_False_resize, 1);
  with config_select_3 select c_31_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_3_0_False_shift;
        when "01" => c_31 <= c_31_6_0_False_shift;
        when others => c_31 <= c_31_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 32 and associated fundamentals [[38], [77], [187]]
  with config_select_4 select c_32_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 24,
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
      sub_i => c_32_sub_sel,
      x_i => c_30,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 33 and associated fundamentals [[4], [16], [1]]
  c_33_5_4_False_resize <= resize(c_5, 20);
  c_33_5_4_False_shift <= shift_left(c_33_5_4_False_resize, 4);
  c_33_3_2_False_resize <= resize(c_3, 20);
  c_33_3_2_False_shift <= shift_left(c_33_3_2_False_resize, 2);
  c_33_5_0_False_resize <= resize(c_5, 20);
  c_33_5_0_False_shift <= shift_left(c_33_5_0_False_resize, 0);
  with config_select_3 select c_33_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_5_4_False_shift;
        when "01" => c_33 <= c_33_3_2_False_shift;
        when others => c_33 <= c_33_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 34 and associated fundamentals [[3], [0], [0]]
  c_34_5_0_False_resize <= c_5;
  c_34_5_0_False_shift <= shift_left(c_34_5_0_False_resize, 0);
  with config_select_3 select c_34_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_5_0_False_shift;
        when others => c_34 <= to_signed(0, 18);
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 35 and associated fundamentals [[29], [128], [8]]
  with config_select_4 select c_35_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
      w_o => 23,
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
      sub_i => c_35_sub_sel,
      x_i => c_33,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 36 and associated fundamentals [[160], [5], [128]]
  c_36_5_7_False_resize <= resize(c_5, 24);
  c_36_5_7_False_shift <= shift_left(c_36_5_7_False_resize, 7);
  c_36_6_5_False_resize <= resize(c_6, 24);
  c_36_6_5_False_shift <= shift_left(c_36_6_5_False_resize, 5);
  c_36_6_0_False_resize <= resize(c_6, 24);
  c_36_6_0_False_shift <= shift_left(c_36_6_0_False_resize, 0);
  with config_select_3 select c_36_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_5_7_False_shift;
        when "01" => c_36 <= c_36_6_5_False_shift;
        when others => c_36 <= c_36_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 37 and associated fundamentals [[3], [40], [24]]
  c_37_3_3_False_resize <= resize(c_3, 22);
  c_37_3_3_False_shift <= shift_left(c_37_3_3_False_resize, 3);
  c_37_5_0_False_resize <= resize(c_5, 22);
  c_37_5_0_False_shift <= shift_left(c_37_5_0_False_resize, 0);
  c_37_6_3_False_resize <= resize(c_6, 22);
  c_37_6_3_False_shift <= shift_left(c_37_6_3_False_resize, 3);
  with config_select_3 select c_37_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_3_3_False_shift;
        when "01" => c_37 <= c_37_5_0_False_shift;
        when others => c_37 <= c_37_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 38 and associated fundamentals [[154], [85], [176]]
  with config_select_4 select c_38_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_38_sub_sel,
      x_i => c_36,
      y_i => c_37,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[29], [128], [8]]
  c_39_resize <= c_35;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 4 with id 40 and associated fundamentals [[11], [98], [174]]
  c_40_resize <= c_29;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[154], [85], [176]]
  c_41_resize <= c_38;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[206], [96], [15]]
  c_42_resize <= c_17;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'output' in stage 4 with id 43 and associated fundamentals [[78], [28], [62]]
  c_43_resize <= c_11;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[38], [77], [187]]
  c_44_resize <= c_32;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 4 with id 45 and associated fundamentals [[45], [58], [113]]
  c_45_resize <= c_14;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[157], [21], [240]]
  c_46_resize <= c_23;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 4 with id 47 and associated fundamentals [[215], [31], [55]]
  c_47_resize <= c_26;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[250], [76], [10]]
  c_48_resize <= c_20;
  c_48 <= shift_left(c_48_resize, 0);
end architecture;

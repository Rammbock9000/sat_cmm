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
    y_5: out std_logic_vector(23 downto 0);
    y_6: out std_logic_vector(23 downto 0);
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
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(21 downto 0);
  signal c_2_0_0_False_resize: signed(21 downto 0);
  signal c_2_0_0_False_shift: signed(21 downto 0);
  signal c_2_0_5_False_resize: signed(21 downto 0);
  signal c_2_0_5_False_shift: signed(21 downto 0);
  signal c_2_0_6_False_resize: signed(21 downto 0);
  signal c_2_0_6_False_shift: signed(21 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(17 downto 0);
  signal c_4_1_0_False_resize: signed(17 downto 0);
  signal c_4_1_0_False_shift: signed(17 downto 0);
  signal c_4_1_2_False_resize: signed(17 downto 0);
  signal c_4_1_2_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_i0_resize: signed(20 downto 0);
  signal c_5_i1_resize: signed(20 downto 0);
  signal c_5_i0_shift: signed(20 downto 0);
  signal c_5_i1_shift: signed(20 downto 0);
  signal c_5_arith: signed(20 downto 0);
  signal c_5_oshift: signed(20 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_7_i0_resize: signed(19 downto 0);
  signal c_7_i1_resize: signed(19 downto 0);
  signal c_7_i0_shift: signed(19 downto 0);
  signal c_7_i1_shift: signed(19 downto 0);
  signal c_7_arith: signed(19 downto 0);
  signal c_7_oshift: signed(19 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(20 downto 0);
  signal c_8_7_2_False_resize: signed(20 downto 0);
  signal c_8_7_2_False_shift: signed(20 downto 0);
  signal c_8_1_2_False_resize: signed(20 downto 0);
  signal c_8_1_2_False_shift: signed(20 downto 0);
  signal c_8_6_0_False_resize: signed(20 downto 0);
  signal c_8_6_0_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(18 downto 0);
  signal c_10_1_1_False_resize: signed(18 downto 0);
  signal c_10_1_1_False_shift: signed(18 downto 0);
  signal c_10_1_0_False_resize: signed(18 downto 0);
  signal c_10_1_0_False_shift: signed(18 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_11_1_0_False_resize: signed(19 downto 0);
  signal c_11_1_0_False_shift: signed(19 downto 0);
  signal c_11_6_0_False_resize: signed(19 downto 0);
  signal c_11_6_0_False_shift: signed(19 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_i0_resize: signed(21 downto 0);
  signal c_12_i1_resize: signed(21 downto 0);
  signal c_12_i0_shift: signed(21 downto 0);
  signal c_12_i1_shift: signed(21 downto 0);
  signal c_12_arith: signed(21 downto 0);
  signal c_12_oshift: signed(21 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_7_0_False_resize: signed(22 downto 0);
  signal c_13_7_0_False_shift: signed(22 downto 0);
  signal c_13_6_3_False_resize: signed(22 downto 0);
  signal c_13_6_3_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_15: signed(17 downto 0);
  signal c_15_0_0_False_resize: signed(17 downto 0);
  signal c_15_0_0_False_shift: signed(17 downto 0);
  signal c_15_0_1_False_resize: signed(17 downto 0);
  signal c_15_0_1_False_shift: signed(17 downto 0);
  signal c_15_0_2_False_resize: signed(17 downto 0);
  signal c_15_0_2_False_shift: signed(17 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_16_i0_resize: signed(22 downto 0);
  signal c_16_i1_resize: signed(22 downto 0);
  signal c_16_i0_shift: signed(22 downto 0);
  signal c_16_i1_shift: signed(22 downto 0);
  signal c_16_arith: signed(22 downto 0);
  signal c_16_oshift: signed(22 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(23 downto 0);
  signal c_17_6_0_False_resize: signed(23 downto 0);
  signal c_17_6_0_False_shift: signed(23 downto 0);
  signal c_17_6_1_False_resize: signed(23 downto 0);
  signal c_17_6_1_False_shift: signed(23 downto 0);
  signal c_17_7_5_False_resize: signed(23 downto 0);
  signal c_17_7_5_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_18_7_3_False_resize: signed(21 downto 0);
  signal c_18_7_3_False_shift: signed(21 downto 0);
  signal c_18_1_0_False_resize: signed(21 downto 0);
  signal c_18_1_0_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(19 downto 0);
  signal c_20_7_1_False_resize: signed(19 downto 0);
  signal c_20_7_1_False_shift: signed(19 downto 0);
  signal c_20_1_1_False_resize: signed(19 downto 0);
  signal c_20_1_1_False_shift: signed(19 downto 0);
  signal c_20_7_0_False_resize: signed(19 downto 0);
  signal c_20_7_0_False_shift: signed(19 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_i0_resize: signed(23 downto 0);
  signal c_21_i1_resize: signed(23 downto 0);
  signal c_21_i0_shift: signed(23 downto 0);
  signal c_21_i1_shift: signed(23 downto 0);
  signal c_21_arith: signed(23 downto 0);
  signal c_21_oshift: signed(23 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_6_0_False_resize: signed(22 downto 0);
  signal c_23_6_0_False_shift: signed(22 downto 0);
  signal c_23_1_7_False_resize: signed(22 downto 0);
  signal c_23_1_7_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_7_0_False_resize: signed(23 downto 0);
  signal c_24_7_0_False_shift: signed(23 downto 0);
  signal c_24_6_2_False_resize: signed(23 downto 0);
  signal c_24_6_2_False_shift: signed(23 downto 0);
  signal c_24_7_5_False_resize: signed(23 downto 0);
  signal c_24_7_5_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(19 downto 0);
  signal c_26_7_1_False_resize: signed(19 downto 0);
  signal c_26_7_1_False_shift: signed(19 downto 0);
  signal c_26_7_0_False_resize: signed(19 downto 0);
  signal c_26_7_0_False_shift: signed(19 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(20 downto 0);
  signal c_27_1_3_False_resize: signed(20 downto 0);
  signal c_27_1_3_False_shift: signed(20 downto 0);
  signal c_27_7_0_False_resize: signed(20 downto 0);
  signal c_27_7_0_False_shift: signed(20 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_28_i0_resize: signed(22 downto 0);
  signal c_28_i1_resize: signed(22 downto 0);
  signal c_28_i0_shift: signed(22 downto 0);
  signal c_28_i1_shift: signed(22 downto 0);
  signal c_28_arith: signed(22 downto 0);
  signal c_28_oshift: signed(22 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(23 downto 0);
  signal c_29_i0_resize: signed(23 downto 0);
  signal c_29_i1_resize: signed(23 downto 0);
  signal c_29_i0_shift: signed(23 downto 0);
  signal c_29_i1_shift: signed(23 downto 0);
  signal c_29_arith: signed(23 downto 0);
  signal c_29_oshift: signed(23 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(23 downto 0);
  signal c_30_19_1_False_resize: signed(23 downto 0);
  signal c_30_19_1_False_shift: signed(23 downto 0);
  signal c_30_28_3_False_resize: signed(23 downto 0);
  signal c_30_28_3_False_shift: signed(23 downto 0);
  signal c_30_14_0_False_resize: signed(23 downto 0);
  signal c_30_14_0_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_resize: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_12_0_False_resize: signed(23 downto 0);
  signal c_32_12_0_False_shift: signed(23 downto 0);
  signal c_32_21_2_False_resize: signed(23 downto 0);
  signal c_32_21_2_False_shift: signed(23 downto 0);
  signal c_32_14_0_False_resize: signed(23 downto 0);
  signal c_32_14_0_False_shift: signed(23 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_resize: signed(23 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_19_2_False_resize: signed(23 downto 0);
  signal c_34_19_2_False_shift: signed(23 downto 0);
  signal c_34_29_0_False_resize: signed(23 downto 0);
  signal c_34_29_0_False_shift: signed(23 downto 0);
  signal c_34_19_0_False_resize: signed(23 downto 0);
  signal c_34_19_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_resize: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_21_0_False_resize: signed(23 downto 0);
  signal c_36_21_0_False_shift: signed(23 downto 0);
  signal c_36_9_1_False_resize: signed(23 downto 0);
  signal c_36_9_1_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_12_0_False_resize: signed(23 downto 0);
  signal c_38_12_0_False_shift: signed(23 downto 0);
  signal c_38_28_1_False_resize: signed(23 downto 0);
  signal c_38_28_1_False_shift: signed(23 downto 0);
  signal c_38_19_1_False_resize: signed(23 downto 0);
  signal c_38_19_1_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_resize: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_40_5_3_False_resize: signed(23 downto 0);
  signal c_40_5_3_False_shift: signed(23 downto 0);
  signal c_40_28_0_False_resize: signed(23 downto 0);
  signal c_40_28_0_False_shift: signed(23 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_29_1_False_resize: signed(23 downto 0);
  signal c_43_29_1_False_shift: signed(23 downto 0);
  signal c_43_25_0_False_resize: signed(23 downto 0);
  signal c_43_25_0_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_resize: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_45_12_0_False_resize: signed(23 downto 0);
  signal c_45_12_0_False_shift: signed(23 downto 0);
  signal c_45_9_0_False_resize: signed(23 downto 0);
  signal c_45_9_0_False_shift: signed(23 downto 0);
  signal c_45_21_0_False_resize: signed(23 downto 0);
  signal c_45_21_0_False_shift: signed(23 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_5_3_False_resize: signed(23 downto 0);
  signal c_47_5_3_False_shift: signed(23 downto 0);
  signal c_47_29_0_False_resize: signed(23 downto 0);
  signal c_47_29_0_False_shift: signed(23 downto 0);
  signal c_47_25_0_False_resize: signed(23 downto 0);
  signal c_47_25_0_False_shift: signed(23 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
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
  -- output node 0 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 1 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 2 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 3 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 4 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_39);
    end if;
  end process;
  -- output node 5 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_5 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 6 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_6 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 7 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_7 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 8 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_8 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 9 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_9 <= std_logic_vector(c_48);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [3], [1]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[32], [1], [64]]
  c_2_0_0_False_resize <= resize(c_0, 22);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 22);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  c_2_0_6_False_resize <= resize(c_0, 22);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_5_False_shift;
        when others => c_2 <= c_2_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[67], [5], [-127]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 22,
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
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[3], [3], [4]]
  c_4_1_0_False_resize <= c_1;
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_1_2_False_resize <= c_1;
  c_4_1_2_False_shift <= shift_left(c_4_1_2_False_resize, 2);
  with config_select_2 select c_4_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_0_False_shift;
        when others => c_4 <= c_4_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[6], [18], [24]]
  with config_select_3 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 21,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 6 and associated fundamentals [[-15], [-15], [-15]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 7 and associated fundamentals [[-7], [-7], [9]]
  with config_select_1 select c_7_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_7_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[12], [-28], [-15]]
  c_8_7_2_False_resize <= resize(c_7, 21);
  c_8_7_2_False_shift <= shift_left(c_8_7_2_False_resize, 2);
  c_8_1_2_False_resize <= resize(c_1, 21);
  c_8_1_2_False_shift <= shift_left(c_8_1_2_False_resize, 2);
  c_8_6_0_False_resize <= resize(c_6, 21);
  c_8_6_0_False_shift <= shift_left(c_8_6_0_False_resize, 0);
  with config_select_2 select c_8_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_7_2_False_shift;
        when "01" => c_8 <= c_8_1_2_False_shift;
        when others => c_8 <= c_8_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[19], [117], [-187]]
  with config_select_3 select c_9_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      sub_i => c_9_sub_sel,
      x_i => c_3,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[6], [3], [2]]
  c_10_1_1_False_resize <= resize(c_1, 19);
  c_10_1_1_False_shift <= shift_left(c_10_1_1_False_resize, 1);
  c_10_1_0_False_resize <= resize(c_1, 19);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_1_1_False_shift;
        when others => c_10 <= c_10_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[-15], [3], [1]]
  c_11_1_0_False_resize <= resize(c_1, 20);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_6_0_False_resize <= c_6;
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_2 select c_11_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_1_0_False_shift;
        when others => c_11 <= c_11_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 12 and associated fundamentals [[-54], [-9], [-2]]
  with config_select_3 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
      w_o => 22,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[-120], [-120], [9]]
  c_13_7_0_False_resize <= resize(c_7, 23);
  c_13_7_0_False_shift <= shift_left(c_13_7_0_False_resize, 0);
  c_13_6_3_False_resize <= resize(c_6, 23);
  c_13_6_3_False_shift <= shift_left(c_13_6_3_False_resize, 3);
  with config_select_2 select c_13_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_7_0_False_shift;
        when others => c_13 <= c_13_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 14 and associated fundamentals [[-173], [-235], [-109]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_13,
      y_i => c_3,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 15 and associated fundamentals [[2], [1], [4]]
  c_15_0_0_False_resize <= resize(c_0, 18);
  c_15_0_0_False_shift <= shift_left(c_15_0_0_False_resize, 0);
  c_15_0_1_False_resize <= resize(c_0, 18);
  c_15_0_1_False_shift <= shift_left(c_15_0_1_False_resize, 1);
  c_15_0_2_False_resize <= resize(c_0, 18);
  c_15_0_2_False_shift <= shift_left(c_15_0_2_False_resize, 2);
  with config_select_1 select c_15_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_0_0_False_shift;
        when "01" => c_15 <= c_15_0_1_False_shift;
        when others => c_15 <= c_15_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 16 and associated fundamentals [[-116], [122], [-112]]
  with config_select_2 select c_16_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 20,
      w_o => 23,
      s_x_i => 1,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_16_sub_sel,
      x_i => c_15,
      y_i => c_6,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[-15], [-224], [-30]]
  c_17_6_0_False_resize <= resize(c_6, 24);
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  c_17_6_1_False_resize <= resize(c_6, 24);
  c_17_6_1_False_shift <= shift_left(c_17_6_1_False_resize, 1);
  c_17_7_5_False_resize <= resize(c_7, 24);
  c_17_7_5_False_shift <= shift_left(c_17_7_5_False_resize, 5);
  with config_select_2 select c_17_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_6_0_False_shift;
        when "01" => c_17 <= c_17_6_1_False_shift;
        when others => c_17 <= c_17_7_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[-56], [3], [1]]
  c_18_7_3_False_resize <= resize(c_7, 22);
  c_18_7_3_False_shift <= shift_left(c_18_7_3_False_resize, 3);
  c_18_1_0_False_resize <= resize(c_1, 22);
  c_18_1_0_False_shift <= shift_left(c_18_1_0_False_resize, 0);
  with config_select_2 select c_18_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_7_3_False_shift;
        when others => c_18 <= c_18_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[-71], [-221], [-31]]
  with config_select_3 select c_19_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 20 and associated fundamentals [[-14], [-7], [2]]
  c_20_7_1_False_resize <= c_7;
  c_20_7_1_False_shift <= shift_left(c_20_7_1_False_resize, 1);
  c_20_1_1_False_resize <= resize(c_1, 20);
  c_20_1_1_False_shift <= shift_left(c_20_1_1_False_resize, 1);
  c_20_7_0_False_resize <= c_7;
  c_20_7_0_False_shift <= shift_left(c_20_7_0_False_resize, 0);
  with config_select_2 select c_20_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_7_1_False_shift;
        when "01" => c_20 <= c_20_1_1_False_shift;
        when others => c_20 <= c_20_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 21 and associated fundamentals [[-179], [-51], [143]]
  with config_select_3 select c_21_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
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
      sub_i => c_21_sub_sel,
      x_i => c_20,
      y_i => c_3,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 22 and associated fundamentals [[-167], [-217], [-85]]
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 24,
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
      x_i => c_5,
      y_i => c_14,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 23 and associated fundamentals [[-15], [-15], [128]]
  c_23_6_0_False_resize <= resize(c_6, 23);
  c_23_6_0_False_shift <= shift_left(c_23_6_0_False_resize, 0);
  c_23_1_7_False_resize <= resize(c_1, 23);
  c_23_1_7_False_shift <= shift_left(c_23_1_7_False_resize, 7);
  with config_select_2 select c_23_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_6_0_False_shift;
        when others => c_23 <= c_23_1_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 24 and associated fundamentals [[-224], [-60], [9]]
  c_24_7_0_False_resize <= resize(c_7, 24);
  c_24_7_0_False_shift <= shift_left(c_24_7_0_False_resize, 0);
  c_24_6_2_False_resize <= resize(c_6, 24);
  c_24_6_2_False_shift <= shift_left(c_24_6_2_False_resize, 2);
  c_24_7_5_False_resize <= resize(c_7, 24);
  c_24_7_5_False_shift <= shift_left(c_24_7_5_False_resize, 5);
  with config_select_2 select c_24_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_7_0_False_shift;
        when "01" => c_24 <= c_24_6_2_False_shift;
        when others => c_24 <= c_24_7_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 25 and associated fundamentals [[209], [45], [137]]
  with config_select_3 select c_25_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_25_sub_sel,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 26 and associated fundamentals [[-7], [-14], [9]]
  c_26_7_1_False_resize <= c_7;
  c_26_7_1_False_shift <= shift_left(c_26_7_1_False_resize, 1);
  c_26_7_0_False_resize <= c_7;
  c_26_7_0_False_shift <= shift_left(c_26_7_0_False_resize, 0);
  with config_select_2 select c_26_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_7_1_False_shift;
        when others => c_26 <= c_26_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 27 and associated fundamentals [[24], [24], [9]]
  c_27_1_3_False_resize <= resize(c_1, 21);
  c_27_1_3_False_shift <= shift_left(c_27_1_3_False_resize, 3);
  c_27_7_0_False_resize <= resize(c_7, 21);
  c_27_7_0_False_shift <= shift_left(c_27_7_0_False_resize, 0);
  with config_select_2 select c_27_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_1_3_False_shift;
        when others => c_27 <= c_27_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 28 and associated fundamentals [[89], [-110], [-27]]
  with config_select_3 select c_28_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
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
      sub_i => c_28_sub_sel,
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 29 and associated fundamentals [[-183], [127], [15]]
  with config_select_3 select c_29_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_29_sub_sel,
      x_i => c_16,
      y_i => c_3,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 30 and associated fundamentals [[-142], [-235], [-216]]
  c_30_19_1_False_resize <= c_19;
  c_30_19_1_False_shift <= shift_left(c_30_19_1_False_resize, 1);
  c_30_28_3_False_resize <= resize(c_28, 24);
  c_30_28_3_False_shift <= shift_left(c_30_28_3_False_resize, 3);
  c_30_14_0_False_resize <= c_14;
  c_30_14_0_False_shift <= shift_left(c_30_14_0_False_resize, 0);
  with config_select_4 select c_30_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_19_1_False_shift;
        when "01" => c_30 <= c_30_28_3_False_shift;
        when others => c_30 <= c_30_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 31 and associated fundamentals [[142], [235], [216]]
  c_31_resize <= c_30;
  c_31 <= -shift_left(c_31_resize, 0);
  -- node of type 'mux' in stage 4 with id 32 and associated fundamentals [[-173], [-204], [-2]]
  c_32_12_0_False_resize <= resize(c_12, 24);
  c_32_12_0_False_shift <= shift_left(c_32_12_0_False_resize, 0);
  c_32_21_2_False_resize <= c_21;
  c_32_21_2_False_shift <= shift_left(c_32_21_2_False_resize, 2);
  c_32_14_0_False_resize <= c_14;
  c_32_14_0_False_shift <= shift_left(c_32_14_0_False_resize, 0);
  with config_select_4 select c_32_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_12_0_False_shift;
        when "01" => c_32 <= c_32_21_2_False_shift;
        when others => c_32 <= c_32_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 33 and associated fundamentals [[173], [204], [2]]
  c_33_resize <= c_32;
  c_33 <= -shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 4 with id 34 and associated fundamentals [[-183], [-221], [-124]]
  c_34_19_2_False_resize <= c_19;
  c_34_19_2_False_shift <= shift_left(c_34_19_2_False_resize, 2);
  c_34_29_0_False_resize <= c_29;
  c_34_29_0_False_shift <= shift_left(c_34_29_0_False_resize, 0);
  c_34_19_0_False_resize <= c_19;
  c_34_19_0_False_shift <= shift_left(c_34_19_0_False_resize, 0);
  with config_select_4 select c_34_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_19_2_False_shift;
        when "01" => c_34 <= c_34_29_0_False_shift;
        when others => c_34 <= c_34_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 35 and associated fundamentals [[183], [221], [124]]
  c_35_resize <= c_34;
  c_35 <= -shift_left(c_35_resize, 0);
  -- node of type 'mux' in stage 4 with id 36 and associated fundamentals [[38], [234], [143]]
  c_36_21_0_False_resize <= c_21;
  c_36_21_0_False_shift <= shift_left(c_36_21_0_False_resize, 0);
  c_36_9_1_False_resize <= c_9;
  c_36_9_1_False_shift <= shift_left(c_36_9_1_False_resize, 1);
  with config_select_4 select c_36_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_21_0_False_shift;
        when others => c_36 <= c_36_9_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 37 and associated fundamentals [[38], [234], [143]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'mux' in stage 4 with id 38 and associated fundamentals [[-54], [-220], [-62]]
  c_38_12_0_False_resize <= resize(c_12, 24);
  c_38_12_0_False_shift <= shift_left(c_38_12_0_False_resize, 0);
  c_38_28_1_False_resize <= resize(c_28, 24);
  c_38_28_1_False_shift <= shift_left(c_38_28_1_False_resize, 1);
  c_38_19_1_False_resize <= c_19;
  c_38_19_1_False_shift <= shift_left(c_38_19_1_False_resize, 1);
  with config_select_4 select c_38_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_12_0_False_shift;
        when "01" => c_38 <= c_38_28_1_False_shift;
        when others => c_38 <= c_38_19_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 39 and associated fundamentals [[54], [220], [62]]
  c_39_resize <= c_38;
  c_39 <= -shift_left(c_39_resize, 0);
  -- node of type 'mux' in stage 4 with id 40 and associated fundamentals [[89], [144], [192]]
  c_40_5_3_False_resize <= resize(c_5, 24);
  c_40_5_3_False_shift <= shift_left(c_40_5_3_False_resize, 3);
  c_40_28_0_False_resize <= resize(c_28, 24);
  c_40_28_0_False_shift <= shift_left(c_40_28_0_False_resize, 0);
  with config_select_4 select c_40_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_5_3_False_shift;
        when others => c_40 <= c_40_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 41 and associated fundamentals [[89], [144], [192]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 4 with id 42 and associated fundamentals [[167], [217], [85]]
  c_42_resize <= c_22;
  c_42 <= -shift_left(c_42_resize, 0);
  -- node of type 'mux' in stage 4 with id 43 and associated fundamentals [[209], [45], [30]]
  c_43_29_1_False_resize <= c_29;
  c_43_29_1_False_shift <= shift_left(c_43_29_1_False_resize, 1);
  c_43_25_0_False_resize <= c_25;
  c_43_25_0_False_shift <= shift_left(c_43_25_0_False_resize, 0);
  with config_select_4 select c_43_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_29_1_False_shift;
        when others => c_43 <= c_43_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 44 and associated fundamentals [[209], [45], [30]]
  c_44_resize <= c_43;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'mux' in stage 4 with id 45 and associated fundamentals [[-179], [-9], [-187]]
  c_45_12_0_False_resize <= resize(c_12, 24);
  c_45_12_0_False_shift <= shift_left(c_45_12_0_False_resize, 0);
  c_45_9_0_False_resize <= c_9;
  c_45_9_0_False_shift <= shift_left(c_45_9_0_False_resize, 0);
  c_45_21_0_False_resize <= c_21;
  c_45_21_0_False_shift <= shift_left(c_45_21_0_False_resize, 0);
  with config_select_4 select c_45_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_12_0_False_shift;
        when "01" => c_45 <= c_45_9_0_False_shift;
        when others => c_45 <= c_45_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 46 and associated fundamentals [[179], [9], [187]]
  c_46_resize <= c_45;
  c_46 <= -shift_left(c_46_resize, 0);
  -- node of type 'mux' in stage 4 with id 47 and associated fundamentals [[48], [127], [137]]
  c_47_5_3_False_resize <= resize(c_5, 24);
  c_47_5_3_False_shift <= shift_left(c_47_5_3_False_resize, 3);
  c_47_29_0_False_resize <= c_29;
  c_47_29_0_False_shift <= shift_left(c_47_29_0_False_resize, 0);
  c_47_25_0_False_resize <= c_25;
  c_47_25_0_False_shift <= shift_left(c_47_25_0_False_resize, 0);
  with config_select_4 select c_47_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_5_3_False_shift;
        when "01" => c_47 <= c_47_29_0_False_shift;
        when others => c_47 <= c_47_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 48 and associated fundamentals [[48], [127], [137]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
end architecture;

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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_2: signed(23 downto 0);
  signal c_2_0_0_False_resize: signed(23 downto 0);
  signal c_2_0_0_False_shift: signed(23 downto 0);
  signal c_2_0_8_False_resize: signed(23 downto 0);
  signal c_2_0_8_False_shift: signed(23 downto 0);
  signal c_2_0_3_False_resize: signed(23 downto 0);
  signal c_2_0_3_False_shift: signed(23 downto 0);
  signal c_2_0_7_False_resize: signed(23 downto 0);
  signal c_2_0_7_False_shift: signed(23 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(24 downto 0);
  signal c_4_0_0_False_resize: signed(24 downto 0);
  signal c_4_0_0_False_shift: signed(24 downto 0);
  signal c_4_0_2_False_resize: signed(24 downto 0);
  signal c_4_0_2_False_shift: signed(24 downto 0);
  signal c_4_0_9_False_resize: signed(24 downto 0);
  signal c_4_0_9_False_shift: signed(24 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_0_1_False_resize: signed(22 downto 0);
  signal c_5_0_1_False_shift: signed(22 downto 0);
  signal c_5_0_7_False_resize: signed(22 downto 0);
  signal c_5_0_7_False_shift: signed(22 downto 0);
  signal c_5_0_0_False_resize: signed(22 downto 0);
  signal c_5_0_0_False_shift: signed(22 downto 0);
  signal c_5_0_6_False_resize: signed(22 downto 0);
  signal c_5_0_6_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(24 downto 0);
  signal c_7_0_0_False_resize: signed(24 downto 0);
  signal c_7_0_0_False_shift: signed(24 downto 0);
  signal c_7_0_1_False_resize: signed(24 downto 0);
  signal c_7_0_1_False_shift: signed(24 downto 0);
  signal c_7_0_9_False_resize: signed(24 downto 0);
  signal c_7_0_9_False_shift: signed(24 downto 0);
  signal c_7_0_4_False_resize: signed(24 downto 0);
  signal c_7_0_4_False_shift: signed(24 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_0_0_False_resize: signed(21 downto 0);
  signal c_8_0_0_False_shift: signed(21 downto 0);
  signal c_8_0_6_False_resize: signed(21 downto 0);
  signal c_8_0_6_False_shift: signed(21 downto 0);
  signal c_8_0_3_False_resize: signed(21 downto 0);
  signal c_8_0_3_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(26 downto 0);
  signal c_9_i0_resize: signed(26 downto 0);
  signal c_9_i1_resize: signed(26 downto 0);
  signal c_9_i0_shift: signed(26 downto 0);
  signal c_9_i1_shift: signed(26 downto 0);
  signal c_9_arith: signed(26 downto 0);
  signal c_9_oshift: signed(26 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(24 downto 0);
  signal c_10_0_9_False_resize: signed(24 downto 0);
  signal c_10_0_9_False_shift: signed(24 downto 0);
  signal c_10_0_2_False_resize: signed(24 downto 0);
  signal c_10_0_2_False_shift: signed(24 downto 0);
  signal c_10_0_0_False_resize: signed(24 downto 0);
  signal c_10_0_0_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_0_2_False_resize: signed(22 downto 0);
  signal c_11_0_2_False_shift: signed(22 downto 0);
  signal c_11_0_7_False_resize: signed(22 downto 0);
  signal c_11_0_7_False_shift: signed(22 downto 0);
  signal c_11_0_5_False_resize: signed(22 downto 0);
  signal c_11_0_5_False_shift: signed(22 downto 0);
  signal c_11_0_0_False_resize: signed(22 downto 0);
  signal c_11_0_0_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(26 downto 0);
  signal c_12_i0_resize: signed(26 downto 0);
  signal c_12_i1_resize: signed(26 downto 0);
  signal c_12_i0_shift: signed(26 downto 0);
  signal c_12_i1_shift: signed(26 downto 0);
  signal c_12_arith: signed(26 downto 0);
  signal c_12_oshift: signed(26 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(25 downto 0);
  signal c_13_3_0_False_resize: signed(25 downto 0);
  signal c_13_3_0_False_shift: signed(25 downto 0);
  signal c_13_12_0_False_resize: signed(25 downto 0);
  signal c_13_12_0_False_shift: signed(25 downto 0);
  signal c_13_6_0_False_resize: signed(25 downto 0);
  signal c_13_6_0_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_3_6_False_resize: signed(25 downto 0);
  signal c_14_3_6_False_shift: signed(25 downto 0);
  signal c_14_9_1_False_resize: signed(25 downto 0);
  signal c_14_9_1_False_shift: signed(25 downto 0);
  signal c_14_6_0_False_resize: signed(25 downto 0);
  signal c_14_6_0_False_shift: signed(25 downto 0);
  signal c_14_12_3_False_resize: signed(25 downto 0);
  signal c_14_12_3_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(26 downto 0);
  signal c_16_12_0_False_resize: signed(26 downto 0);
  signal c_16_12_0_False_shift: signed(26 downto 0);
  signal c_16_9_0_False_resize: signed(26 downto 0);
  signal c_16_9_0_False_shift: signed(26 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_9_0_False_resize: signed(24 downto 0);
  signal c_17_9_0_False_shift: signed(24 downto 0);
  signal c_17_6_0_False_resize: signed(24 downto 0);
  signal c_17_6_0_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(26 downto 0);
  signal c_18_i1_resize: signed(26 downto 0);
  signal c_18_i0_shift: signed(26 downto 0);
  signal c_18_i1_shift: signed(26 downto 0);
  signal c_18_arith: signed(26 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(15 downto 0);
  signal c_20: signed(17 downto 0);
  signal c_20_0_0_False_resize: signed(17 downto 0);
  signal c_20_0_0_False_shift: signed(17 downto 0);
  signal c_20_0_2_False_resize: signed(17 downto 0);
  signal c_20_0_2_False_shift: signed(17 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_21_i0_resize: signed(21 downto 0);
  signal c_21_i1_resize: signed(21 downto 0);
  signal c_21_i0_shift: signed(21 downto 0);
  signal c_21_i1_shift: signed(21 downto 0);
  signal c_21_arith: signed(21 downto 0);
  signal c_21_oshift: signed(21 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(22 downto 0);
  signal c_22_21_0_False_resize: signed(22 downto 0);
  signal c_22_21_0_False_shift: signed(22 downto 0);
  signal c_22_21_2_False_resize: signed(22 downto 0);
  signal c_22_21_2_False_shift: signed(22 downto 0);
  signal c_22_6_0_False_resize: signed(22 downto 0);
  signal c_22_6_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_3_5_False_resize: signed(24 downto 0);
  signal c_23_3_5_False_shift: signed(24 downto 0);
  signal c_23_6_0_False_resize: signed(24 downto 0);
  signal c_23_6_0_False_shift: signed(24 downto 0);
  signal c_23_12_3_False_resize: signed(24 downto 0);
  signal c_23_12_3_False_shift: signed(24 downto 0);
  signal c_23_21_4_False_resize: signed(24 downto 0);
  signal c_23_21_4_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_i0_resize: signed(24 downto 0);
  signal c_24_i1_resize: signed(24 downto 0);
  signal c_24_i0_shift: signed(24 downto 0);
  signal c_24_i1_shift: signed(24 downto 0);
  signal c_24_arith: signed(24 downto 0);
  signal c_24_oshift: signed(24 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(25 downto 0);
  signal c_25_21_0_False_resize: signed(25 downto 0);
  signal c_25_21_0_False_shift: signed(25 downto 0);
  signal c_25_9_1_False_resize: signed(25 downto 0);
  signal c_25_9_1_False_shift: signed(25 downto 0);
  signal c_25_3_0_False_resize: signed(25 downto 0);
  signal c_25_3_0_False_shift: signed(25 downto 0);
  signal c_25_6_0_False_resize: signed(25 downto 0);
  signal c_25_6_0_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_21_5_False_resize: signed(25 downto 0);
  signal c_26_21_5_False_shift: signed(25 downto 0);
  signal c_26_9_2_False_resize: signed(25 downto 0);
  signal c_26_9_2_False_shift: signed(25 downto 0);
  signal c_26_21_0_False_resize: signed(25 downto 0);
  signal c_26_21_0_False_shift: signed(25 downto 0);
  signal c_26_6_0_False_resize: signed(25 downto 0);
  signal c_26_6_0_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(24 downto 0);
  signal c_28_3_2_False_resize: signed(24 downto 0);
  signal c_28_3_2_False_shift: signed(24 downto 0);
  signal c_28_3_1_False_resize: signed(24 downto 0);
  signal c_28_3_1_False_shift: signed(24 downto 0);
  signal c_28_3_0_False_resize: signed(24 downto 0);
  signal c_28_3_0_False_shift: signed(24 downto 0);
  signal c_28_9_5_False_resize: signed(24 downto 0);
  signal c_28_9_5_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_3_1_False_resize: signed(24 downto 0);
  signal c_29_3_1_False_shift: signed(24 downto 0);
  signal c_29_9_0_False_resize: signed(24 downto 0);
  signal c_29_9_0_False_shift: signed(24 downto 0);
  signal c_29_12_0_False_resize: signed(24 downto 0);
  signal c_29_12_0_False_shift: signed(24 downto 0);
  signal c_29_21_0_False_resize: signed(24 downto 0);
  signal c_29_21_0_False_shift: signed(24 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_i0_resize: signed(25 downto 0);
  signal c_30_i1_resize: signed(25 downto 0);
  signal c_30_i0_shift: signed(25 downto 0);
  signal c_30_i1_shift: signed(25 downto 0);
  signal c_30_arith: signed(25 downto 0);
  signal c_30_oshift: signed(25 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(24 downto 0);
  signal c_31_15_0_False_resize: signed(24 downto 0);
  signal c_31_15_0_False_shift: signed(24 downto 0);
  signal c_31_18_1_False_resize: signed(24 downto 0);
  signal c_31_18_1_False_shift: signed(24 downto 0);
  signal c_31_24_0_False_resize: signed(24 downto 0);
  signal c_31_24_0_False_shift: signed(24 downto 0);
  signal c_31_18_0_False_resize: signed(24 downto 0);
  signal c_31_18_0_False_shift: signed(24 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_resize: signed(24 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_27_0_False_resize: signed(25 downto 0);
  signal c_33_27_0_False_shift: signed(25 downto 0);
  signal c_33_15_0_False_resize: signed(25 downto 0);
  signal c_33_15_0_False_shift: signed(25 downto 0);
  signal c_33_27_1_False_resize: signed(25 downto 0);
  signal c_33_27_1_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_resize: signed(25 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_35_30_0_False_resize: signed(24 downto 0);
  signal c_35_30_0_False_shift: signed(24 downto 0);
  signal c_35_24_1_False_resize: signed(24 downto 0);
  signal c_35_24_1_False_shift: signed(24 downto 0);
  signal c_35_30_1_False_resize: signed(24 downto 0);
  signal c_35_30_1_False_shift: signed(24 downto 0);
  signal c_35_24_0_False_resize: signed(24 downto 0);
  signal c_35_24_0_False_shift: signed(24 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(24 downto 0);
  signal c_36_resize: signed(24 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_18_0_False_resize: signed(25 downto 0);
  signal c_37_18_0_False_shift: signed(25 downto 0);
  signal c_37_30_0_False_resize: signed(25 downto 0);
  signal c_37_30_0_False_shift: signed(25 downto 0);
  signal c_37_24_0_False_resize: signed(25 downto 0);
  signal c_37_24_0_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_resize: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_18_2_False_resize: signed(25 downto 0);
  signal c_39_18_2_False_shift: signed(25 downto 0);
  signal c_39_15_0_False_resize: signed(25 downto 0);
  signal c_39_15_0_False_shift: signed(25 downto 0);
  signal c_39_27_0_False_resize: signed(25 downto 0);
  signal c_39_27_0_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(1 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 1 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_34);
    end if;
  end process;
  -- output node 2 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 3 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 4 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_40);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[5], [5], [5], [5]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[8], [256], [1], [128]]
  c_2_0_0_False_resize <= resize(c_0, 24);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_8_False_resize <= resize(c_0, 24);
  c_2_0_8_False_shift <= shift_left(c_2_0_8_False_resize, 8);
  c_2_0_3_False_resize <= resize(c_0, 24);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_7_False_resize <= resize(c_0, 24);
  c_2_0_7_False_shift <= shift_left(c_2_0_7_False_resize, 7);
  with config_select_1 select c_2_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_8_False_shift;
        when "10" => c_2 <= c_2_0_3_False_shift;
        when others => c_2 <= c_2_0_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[13], [251], [6], [123]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 19,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [1], [4], [512]]
  c_4_0_0_False_resize <= resize(c_0, 25);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_2_False_resize <= resize(c_0, 25);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  c_4_0_9_False_resize <= resize(c_0, 25);
  c_4_0_9_False_shift <= shift_left(c_4_0_9_False_resize, 9);
  with config_select_1 select c_4_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_0_0_False_shift;
        when "01" => c_4 <= c_4_0_2_False_shift;
        when others => c_4 <= c_4_0_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[2], [128], [1], [64]]
  c_5_0_1_False_resize <= resize(c_0, 23);
  c_5_0_1_False_shift <= shift_left(c_5_0_1_False_resize, 1);
  c_5_0_7_False_resize <= resize(c_0, 23);
  c_5_0_7_False_shift <= shift_left(c_5_0_7_False_resize, 7);
  c_5_0_0_False_resize <= resize(c_0, 23);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_6_False_resize <= resize(c_0, 23);
  c_5_0_6_False_shift <= shift_left(c_5_0_6_False_resize, 6);
  with config_select_1 select c_5_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_1_False_shift;
        when "01" => c_5 <= c_5_0_7_False_shift;
        when "10" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[-1], [129], [5], [448]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[16], [2], [1], [512]]
  c_7_0_0_False_resize <= resize(c_0, 25);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_1_False_resize <= resize(c_0, 25);
  c_7_0_1_False_shift <= shift_left(c_7_0_1_False_resize, 1);
  c_7_0_9_False_resize <= resize(c_0, 25);
  c_7_0_9_False_shift <= shift_left(c_7_0_9_False_resize, 9);
  c_7_0_4_False_resize <= resize(c_0, 25);
  c_7_0_4_False_shift <= shift_left(c_7_0_4_False_resize, 4);
  with config_select_1 select c_7_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_0_False_shift;
        when "01" => c_7 <= c_7_0_1_False_shift;
        when "10" => c_7 <= c_7_0_9_False_shift;
        when others => c_7 <= c_7_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[64], [1], [8], [1]]
  c_8_0_0_False_resize <= resize(c_0, 22);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_6_False_resize <= resize(c_0, 22);
  c_8_0_6_False_shift <= shift_left(c_8_0_6_False_resize, 6);
  c_8_0_3_False_resize <= resize(c_0, 22);
  c_8_0_3_False_shift <= shift_left(c_8_0_3_False_resize, 3);
  with config_select_1 select c_8_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_0_False_shift;
        when "01" => c_8 <= c_8_0_6_False_shift;
        when others => c_8 <= c_8_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[320], [12], [-28], [2044]]
  with config_select_2 select c_9_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
      w_o => 27,
      s_x_i => 2,
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
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[4], [512], [512], [1]]
  c_10_0_9_False_resize <= resize(c_0, 25);
  c_10_0_9_False_shift <= shift_left(c_10_0_9_False_resize, 9);
  c_10_0_2_False_resize <= resize(c_0, 25);
  c_10_0_2_False_shift <= shift_left(c_10_0_2_False_resize, 2);
  c_10_0_0_False_resize <= resize(c_0, 25);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  with config_select_1 select c_10_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_0_9_False_shift;
        when "01" => c_10 <= c_10_0_2_False_shift;
        when others => c_10 <= c_10_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[128], [32], [1], [4]]
  c_11_0_2_False_resize <= resize(c_0, 23);
  c_11_0_2_False_shift <= shift_left(c_11_0_2_False_resize, 2);
  c_11_0_7_False_resize <= resize(c_0, 23);
  c_11_0_7_False_shift <= shift_left(c_11_0_7_False_resize, 7);
  c_11_0_5_False_resize <= resize(c_0, 23);
  c_11_0_5_False_shift <= shift_left(c_11_0_5_False_resize, 5);
  c_11_0_0_False_resize <= resize(c_0, 23);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  with config_select_1 select c_11_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_0_2_False_shift;
        when "01" => c_11 <= c_11_0_7_False_shift;
        when "10" => c_11 <= c_11_0_5_False_shift;
        when others => c_11 <= c_11_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 12 and associated fundamentals [[1028], [768], [504], [-31]]
  with config_select_2 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 27,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[13], [768], [5], [123]]
  c_13_3_0_False_resize <= resize(c_3, 26);
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  c_13_12_0_False_resize <= c_12(25 downto 0);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_6_0_False_resize <= resize(c_6, 26);
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_3_0_False_shift;
        when "01" => c_13 <= c_13_12_0_False_shift;
        when others => c_13 <= c_13_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[640], [129], [384], [-248]]
  c_14_3_6_False_resize <= resize(c_3, 26);
  c_14_3_6_False_shift <= shift_left(c_14_3_6_False_resize, 6);
  c_14_9_1_False_resize <= c_9(25 downto 0);
  c_14_9_1_False_shift <= shift_left(c_14_9_1_False_resize, 1);
  c_14_6_0_False_resize <= resize(c_6, 26);
  c_14_6_0_False_shift <= shift_left(c_14_6_0_False_resize, 0);
  c_14_12_3_False_resize <= c_12(25 downto 0);
  c_14_12_3_False_shift <= shift_left(c_14_12_3_False_resize, 3);
  with config_select_3 select c_14_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_3_6_False_shift;
        when "01" => c_14 <= c_14_9_1_False_shift;
        when "10" => c_14 <= c_14_6_0_False_shift;
        when others => c_14 <= c_14_12_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 15 and associated fundamentals [[-627], [897], [389], [371]]
  with config_select_4 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
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
      sub_i => c_15_sub_sel,
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
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[1028], [768], [504], [2044]]
  c_16_12_0_False_resize <= c_12;
  c_16_12_0_False_shift <= shift_left(c_16_12_0_False_resize, 0);
  c_16_9_0_False_resize <= c_9;
  c_16_9_0_False_shift <= shift_left(c_16_9_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_12_0_False_shift;
        when others => c_16 <= c_16_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[320], [12], [-28], [448]]
  c_17_9_0_False_resize <= c_9(24 downto 0);
  c_17_9_0_False_shift <= shift_left(c_17_9_0_False_resize, 0);
  c_17_6_0_False_resize <= c_6;
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  with config_select_3 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_9_0_False_shift;
        when others => c_17 <= c_17_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 18 and associated fundamentals [[177], [195], [133], [399]]
  with config_select_4 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 25,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 2,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 19 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 20 and associated fundamentals [[1], [1], [1], [4]]
  c_20_0_0_False_resize <= resize(c_0, 18);
  c_20_0_0_False_shift <= shift_left(c_20_0_0_False_resize, 0);
  c_20_0_2_False_resize <= resize(c_0, 18);
  c_20_0_2_False_shift <= shift_left(c_20_0_2_False_resize, 2);
  with config_select_1 select c_20_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_0_0_False_shift;
        when others => c_20 <= c_20_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 21 and associated fundamentals [[17], [17], [-15], [-63]]
  with config_select_2 select c_21_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[-1], [68], [5], [-63]]
  c_22_21_0_False_resize <= resize(c_21, 23);
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  c_22_21_2_False_resize <= resize(c_21, 23);
  c_22_21_2_False_shift <= shift_left(c_22_21_2_False_resize, 2);
  c_22_6_0_False_resize <= c_6(22 downto 0);
  c_22_6_0_False_shift <= shift_left(c_22_6_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_21_0_False_shift;
        when "01" => c_22 <= c_22_21_2_False_shift;
        when others => c_22 <= c_22_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[416], [129], [-240], [-248]]
  c_23_3_5_False_resize <= resize(c_3, 25);
  c_23_3_5_False_shift <= shift_left(c_23_3_5_False_resize, 5);
  c_23_6_0_False_resize <= c_6;
  c_23_6_0_False_shift <= shift_left(c_23_6_0_False_resize, 0);
  c_23_12_3_False_resize <= c_12(24 downto 0);
  c_23_12_3_False_shift <= shift_left(c_23_12_3_False_resize, 3);
  c_23_21_4_False_resize <= resize(c_21, 25);
  c_23_21_4_False_shift <= shift_left(c_23_21_4_False_resize, 4);
  with config_select_3 select c_23_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_3_5_False_shift;
        when "01" => c_23 <= c_23_6_0_False_shift;
        when "10" => c_23 <= c_23_12_3_False_shift;
        when others => c_23 <= c_23_21_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 24 and associated fundamentals [[415], [197], [245], [185]]
  with config_select_4 select c_24_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[640], [251], [5], [-63]]
  c_25_21_0_False_resize <= resize(c_21, 26);
  c_25_21_0_False_shift <= shift_left(c_25_21_0_False_resize, 0);
  c_25_9_1_False_resize <= c_9(25 downto 0);
  c_25_9_1_False_shift <= shift_left(c_25_9_1_False_resize, 1);
  c_25_3_0_False_resize <= resize(c_3, 26);
  c_25_3_0_False_shift <= shift_left(c_25_3_0_False_resize, 0);
  c_25_6_0_False_resize <= resize(c_6, 26);
  c_25_6_0_False_shift <= shift_left(c_25_6_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_21_0_False_shift;
        when "01" => c_25 <= c_25_9_1_False_shift;
        when "10" => c_25 <= c_25_3_0_False_shift;
        when others => c_25 <= c_25_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[17], [544], [-112], [448]]
  c_26_21_5_False_resize <= resize(c_21, 26);
  c_26_21_5_False_shift <= shift_left(c_26_21_5_False_resize, 5);
  c_26_9_2_False_resize <= c_9(25 downto 0);
  c_26_9_2_False_shift <= shift_left(c_26_9_2_False_resize, 2);
  c_26_21_0_False_resize <= resize(c_21, 26);
  c_26_21_0_False_shift <= shift_left(c_26_21_0_False_resize, 0);
  c_26_6_0_False_resize <= resize(c_6, 26);
  c_26_6_0_False_shift <= shift_left(c_26_6_0_False_resize, 0);
  with config_select_3 select c_26_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_21_5_False_shift;
        when "01" => c_26 <= c_26_9_2_False_shift;
        when "10" => c_26 <= c_26_21_0_False_shift;
        when others => c_26 <= c_26_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 27 and associated fundamentals [[657], [-293], [-107], [-511]]
  with config_select_4 select c_27_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
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
      sub_i => c_27_sub_sel,
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 28 and associated fundamentals [[13], [384], [24], [246]]
  c_28_3_2_False_resize <= resize(c_3, 25);
  c_28_3_2_False_shift <= shift_left(c_28_3_2_False_resize, 2);
  c_28_3_1_False_resize <= resize(c_3, 25);
  c_28_3_1_False_shift <= shift_left(c_28_3_1_False_resize, 1);
  c_28_3_0_False_resize <= resize(c_3, 25);
  c_28_3_0_False_shift <= shift_left(c_28_3_0_False_resize, 0);
  c_28_9_5_False_resize <= c_9(24 downto 0);
  c_28_9_5_False_shift <= shift_left(c_28_9_5_False_resize, 5);
  with config_select_3 select c_28_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_3_2_False_shift;
        when "01" => c_28 <= c_28_3_1_False_shift;
        when "10" => c_28 <= c_28_3_0_False_shift;
        when others => c_28 <= c_28_9_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[320], [502], [-15], [-31]]
  c_29_3_1_False_resize <= resize(c_3, 25);
  c_29_3_1_False_shift <= shift_left(c_29_3_1_False_resize, 1);
  c_29_9_0_False_resize <= c_9(24 downto 0);
  c_29_9_0_False_shift <= shift_left(c_29_9_0_False_resize, 0);
  c_29_12_0_False_resize <= c_12(24 downto 0);
  c_29_12_0_False_shift <= shift_left(c_29_12_0_False_resize, 0);
  c_29_21_0_False_resize <= resize(c_21, 25);
  c_29_21_0_False_shift <= shift_left(c_29_21_0_False_resize, 0);
  with config_select_3 select c_29_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_3_1_False_shift;
        when "01" => c_29 <= c_29_9_0_False_shift;
        when "10" => c_29 <= c_29_12_0_False_shift;
        when others => c_29 <= c_29_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 30 and associated fundamentals [[333], [886], [39], [215]]
  with config_select_4 select c_30_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_30_sub_sel,
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[354], [195], [389], [185]]
  c_31_15_0_False_resize <= c_15(24 downto 0);
  c_31_15_0_False_shift <= shift_left(c_31_15_0_False_resize, 0);
  c_31_18_1_False_resize <= c_18;
  c_31_18_1_False_shift <= shift_left(c_31_18_1_False_resize, 1);
  c_31_24_0_False_resize <= c_24;
  c_31_24_0_False_shift <= shift_left(c_31_24_0_False_resize, 0);
  c_31_18_0_False_resize <= c_18;
  c_31_18_0_False_shift <= shift_left(c_31_18_0_False_resize, 0);
  with config_select_5 select c_31_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_15_0_False_shift;
        when "01" => c_31 <= c_31_18_1_False_shift;
        when "10" => c_31 <= c_31_24_0_False_shift;
        when others => c_31 <= c_31_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[354], [195], [389], [185]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 5 with id 33 and associated fundamentals [[-627], [-293], [-107], [-1022]]
  c_33_27_0_False_resize <= c_27;
  c_33_27_0_False_shift <= shift_left(c_33_27_0_False_resize, 0);
  c_33_15_0_False_resize <= c_15;
  c_33_15_0_False_shift <= shift_left(c_33_15_0_False_resize, 0);
  c_33_27_1_False_resize <= c_27;
  c_33_27_1_False_shift <= shift_left(c_33_27_1_False_resize, 1);
  with config_select_5 select c_33_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_27_0_False_shift;
        when "01" => c_33 <= c_33_15_0_False_shift;
        when others => c_33 <= c_33_27_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 34 and associated fundamentals [[627], [293], [107], [1022]]
  c_34_resize <= c_33;
  c_34 <= -shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 5 with id 35 and associated fundamentals [[333], [394], [245], [430]]
  c_35_30_0_False_resize <= c_30(24 downto 0);
  c_35_30_0_False_shift <= shift_left(c_35_30_0_False_resize, 0);
  c_35_24_1_False_resize <= c_24;
  c_35_24_1_False_shift <= shift_left(c_35_24_1_False_resize, 1);
  c_35_30_1_False_resize <= c_30(24 downto 0);
  c_35_30_1_False_shift <= shift_left(c_35_30_1_False_resize, 1);
  c_35_24_0_False_resize <= c_24;
  c_35_24_0_False_shift <= shift_left(c_35_24_0_False_resize, 0);
  with config_select_5 select c_35_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_30_0_False_shift;
        when "01" => c_35 <= c_35_24_1_False_shift;
        when "10" => c_35 <= c_35_30_1_False_shift;
        when others => c_35 <= c_35_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 36 and associated fundamentals [[333], [394], [245], [430]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'mux' in stage 5 with id 37 and associated fundamentals [[415], [886], [39], [399]]
  c_37_18_0_False_resize <= resize(c_18, 26);
  c_37_18_0_False_shift <= shift_left(c_37_18_0_False_resize, 0);
  c_37_30_0_False_resize <= c_30;
  c_37_30_0_False_shift <= shift_left(c_37_30_0_False_resize, 0);
  c_37_24_0_False_resize <= resize(c_24, 26);
  c_37_24_0_False_shift <= shift_left(c_37_24_0_False_resize, 0);
  with config_select_5 select c_37_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_18_0_False_shift;
        when "01" => c_37 <= c_37_30_0_False_shift;
        when others => c_37 <= c_37_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 38 and associated fundamentals [[415], [886], [39], [399]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'mux' in stage 5 with id 39 and associated fundamentals [[657], [897], [532], [371]]
  c_39_18_2_False_resize <= resize(c_18, 26);
  c_39_18_2_False_shift <= shift_left(c_39_18_2_False_resize, 2);
  c_39_15_0_False_resize <= c_15;
  c_39_15_0_False_shift <= shift_left(c_39_15_0_False_resize, 0);
  c_39_27_0_False_resize <= c_27;
  c_39_27_0_False_shift <= shift_left(c_39_27_0_False_resize, 0);
  with config_select_5 select c_39_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "00" => c_39 <= c_39_18_2_False_shift;
        when "01" => c_39 <= c_39_15_0_False_shift;
        when others => c_39 <= c_39_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 40 and associated fundamentals [[657], [897], [532], [371]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
end architecture;

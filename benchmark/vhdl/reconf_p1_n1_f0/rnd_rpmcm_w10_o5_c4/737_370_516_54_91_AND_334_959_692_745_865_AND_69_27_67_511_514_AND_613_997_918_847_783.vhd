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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_2: signed(22 downto 0);
  signal c_2_0_7_False_resize: signed(22 downto 0);
  signal c_2_0_7_False_shift: signed(22 downto 0);
  signal c_2_0_0_False_resize: signed(22 downto 0);
  signal c_2_0_0_False_shift: signed(22 downto 0);
  signal c_2_0_6_False_resize: signed(22 downto 0);
  signal c_2_0_6_False_shift: signed(22 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(25 downto 0);
  signal c_3_0_0_False_resize: signed(25 downto 0);
  signal c_3_0_0_False_shift: signed(25 downto 0);
  signal c_3_0_6_False_resize: signed(25 downto 0);
  signal c_3_0_6_False_shift: signed(25 downto 0);
  signal c_3_0_10_False_resize: signed(25 downto 0);
  signal c_3_0_10_False_shift: signed(25 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(25 downto 0);
  signal c_4_i0_resize: signed(25 downto 0);
  signal c_4_i1_resize: signed(25 downto 0);
  signal c_4_i0_shift: signed(25 downto 0);
  signal c_4_i1_shift: signed(25 downto 0);
  signal c_4_arith: signed(25 downto 0);
  signal c_4_oshift: signed(25 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(18 downto 0);
  signal c_5_0_3_False_resize: signed(18 downto 0);
  signal c_5_0_3_False_shift: signed(18 downto 0);
  signal c_5_0_1_False_resize: signed(18 downto 0);
  signal c_5_0_1_False_shift: signed(18 downto 0);
  signal c_5_0_2_False_resize: signed(18 downto 0);
  signal c_5_0_2_False_shift: signed(18 downto 0);
  signal c_5_0_0_False_resize: signed(18 downto 0);
  signal c_5_0_0_False_shift: signed(18 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(21 downto 0);
  signal c_7_0_0_False_resize: signed(21 downto 0);
  signal c_7_0_0_False_shift: signed(21 downto 0);
  signal c_7_0_5_False_resize: signed(21 downto 0);
  signal c_7_0_5_False_shift: signed(21 downto 0);
  signal c_7_0_2_False_resize: signed(21 downto 0);
  signal c_7_0_2_False_shift: signed(21 downto 0);
  signal c_7_0_6_False_resize: signed(21 downto 0);
  signal c_7_0_6_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_i0_resize: signed(21 downto 0);
  signal c_8_i1_resize: signed(21 downto 0);
  signal c_8_i0_shift: signed(21 downto 0);
  signal c_8_i1_shift: signed(21 downto 0);
  signal c_8_arith: signed(21 downto 0);
  signal c_8_oshift: signed(21 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(24 downto 0);
  signal c_9_4_0_False_resize: signed(24 downto 0);
  signal c_9_4_0_False_shift: signed(24 downto 0);
  signal c_9_8_0_False_resize: signed(24 downto 0);
  signal c_9_8_0_False_shift: signed(24 downto 0);
  signal c_9_6_1_False_resize: signed(24 downto 0);
  signal c_9_6_1_False_shift: signed(24 downto 0);
  signal c_9_4_2_False_resize: signed(24 downto 0);
  signal c_9_4_2_False_shift: signed(24 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_6_10_False_resize: signed(25 downto 0);
  signal c_10_6_10_False_shift: signed(25 downto 0);
  signal c_10_4_0_False_resize: signed(25 downto 0);
  signal c_10_4_0_False_shift: signed(25 downto 0);
  signal c_10_6_0_False_resize: signed(25 downto 0);
  signal c_10_6_0_False_shift: signed(25 downto 0);
  signal c_10_6_6_False_resize: signed(25 downto 0);
  signal c_10_6_6_False_shift: signed(25 downto 0);
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
  signal c_12_0_0_False_resize: signed(23 downto 0);
  signal c_12_0_0_False_shift: signed(23 downto 0);
  signal c_12_0_1_False_resize: signed(23 downto 0);
  signal c_12_0_1_False_shift: signed(23 downto 0);
  signal c_12_0_2_False_resize: signed(23 downto 0);
  signal c_12_0_2_False_shift: signed(23 downto 0);
  signal c_12_0_8_False_resize: signed(23 downto 0);
  signal c_12_0_8_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_i0_resize: signed(24 downto 0);
  signal c_13_i1_resize: signed(24 downto 0);
  signal c_13_i0_shift: signed(24 downto 0);
  signal c_13_i1_shift: signed(24 downto 0);
  signal c_13_arith: signed(24 downto 0);
  signal c_13_oshift: signed(24 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(24 downto 0);
  signal c_14_8_1_False_resize: signed(24 downto 0);
  signal c_14_8_1_False_shift: signed(24 downto 0);
  signal c_14_13_0_False_resize: signed(24 downto 0);
  signal c_14_13_0_False_shift: signed(24 downto 0);
  signal c_14_4_1_False_resize: signed(24 downto 0);
  signal c_14_4_1_False_shift: signed(24 downto 0);
  signal c_14_8_0_False_resize: signed(24 downto 0);
  signal c_14_8_0_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_4_0_False_resize: signed(23 downto 0);
  signal c_15_4_0_False_shift: signed(23 downto 0);
  signal c_15_8_2_False_resize: signed(23 downto 0);
  signal c_15_8_2_False_shift: signed(23 downto 0);
  signal c_15_6_0_False_resize: signed(23 downto 0);
  signal c_15_6_0_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_i0_resize: signed(24 downto 0);
  signal c_16_i1_resize: signed(24 downto 0);
  signal c_16_i0_shift: signed(24 downto 0);
  signal c_16_i1_shift: signed(24 downto 0);
  signal c_16_arith: signed(24 downto 0);
  signal c_16_oshift: signed(24 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_6_0_False_resize: signed(23 downto 0);
  signal c_17_6_0_False_shift: signed(23 downto 0);
  signal c_17_8_3_False_resize: signed(23 downto 0);
  signal c_17_8_3_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_8_4_False_resize: signed(25 downto 0);
  signal c_18_8_4_False_shift: signed(25 downto 0);
  signal c_18_4_0_False_resize: signed(25 downto 0);
  signal c_18_4_0_False_shift: signed(25 downto 0);
  signal c_18_6_3_False_resize: signed(25 downto 0);
  signal c_18_6_3_False_shift: signed(25 downto 0);
  signal c_18_6_0_False_resize: signed(25 downto 0);
  signal c_18_6_0_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(15 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(24 downto 0);
  signal c_23_6_4_False_resize: signed(24 downto 0);
  signal c_23_6_4_False_shift: signed(24 downto 0);
  signal c_23_8_5_False_resize: signed(24 downto 0);
  signal c_23_8_5_False_shift: signed(24 downto 0);
  signal c_23_6_2_False_resize: signed(24 downto 0);
  signal c_23_6_2_False_shift: signed(24 downto 0);
  signal c_23_13_0_False_resize: signed(24 downto 0);
  signal c_23_13_0_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(25 downto 0);
  signal c_26_20_0_False_resize: signed(25 downto 0);
  signal c_26_20_0_False_shift: signed(25 downto 0);
  signal c_26_6_0_False_resize: signed(25 downto 0);
  signal c_26_6_0_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_4_0_False_resize: signed(23 downto 0);
  signal c_27_4_0_False_shift: signed(23 downto 0);
  signal c_27_13_1_False_resize: signed(23 downto 0);
  signal c_27_13_1_False_shift: signed(23 downto 0);
  signal c_27_4_2_False_resize: signed(23 downto 0);
  signal c_27_4_2_False_shift: signed(23 downto 0);
  signal c_27_6_0_False_resize: signed(23 downto 0);
  signal c_27_6_0_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(25 downto 0);
  signal c_29_19_0_False_resize: signed(25 downto 0);
  signal c_29_19_0_False_shift: signed(25 downto 0);
  signal c_29_28_0_False_resize: signed(25 downto 0);
  signal c_29_28_0_False_shift: signed(25 downto 0);
  signal c_29_25_0_False_resize: signed(25 downto 0);
  signal c_29_25_0_False_shift: signed(25 downto 0);
  signal c_29_25_1_False_resize: signed(25 downto 0);
  signal c_29_25_1_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_11_0_False_resize: signed(25 downto 0);
  signal c_31_11_0_False_shift: signed(25 downto 0);
  signal c_31_16_0_False_resize: signed(25 downto 0);
  signal c_31_16_0_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_28_1_False_resize: signed(25 downto 0);
  signal c_33_28_1_False_shift: signed(25 downto 0);
  signal c_33_16_1_False_resize: signed(25 downto 0);
  signal c_33_16_1_False_shift: signed(25 downto 0);
  signal c_33_28_0_False_resize: signed(25 downto 0);
  signal c_33_28_0_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_resize: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_11_0_False_resize: signed(25 downto 0);
  signal c_35_11_0_False_shift: signed(25 downto 0);
  signal c_35_19_0_False_resize: signed(25 downto 0);
  signal c_35_19_0_False_shift: signed(25 downto 0);
  signal c_35_28_0_False_resize: signed(25 downto 0);
  signal c_35_28_0_False_shift: signed(25 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_resize: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_16_0_False_resize: signed(25 downto 0);
  signal c_37_16_0_False_shift: signed(25 downto 0);
  signal c_37_25_1_False_resize: signed(25 downto 0);
  signal c_37_25_1_False_shift: signed(25 downto 0);
  signal c_37_25_0_False_resize: signed(25 downto 0);
  signal c_37_25_0_False_shift: signed(25 downto 0);
  signal c_37_19_0_False_resize: signed(25 downto 0);
  signal c_37_19_0_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_resize: signed(25 downto 0);
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
  -- output node 0 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 1 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 2 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_34);
    end if;
  end process;
  -- output node 3 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 4 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_38);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[5], [5], [5], [5]]
  inst_adder_node_1: entity work.adder_node
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [64], [128], [1]]
  c_2_0_7_False_resize <= resize(c_0, 23);
  c_2_0_7_False_shift <= shift_left(c_2_0_7_False_resize, 7);
  c_2_0_0_False_resize <= resize(c_0, 23);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_6_False_resize <= resize(c_0, 23);
  c_2_0_6_False_shift <= shift_left(c_2_0_6_False_resize, 6);
  with config_select_1 select c_2_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_7_False_shift;
        when "01" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[64], [1], [1], [1024]]
  c_3_0_0_False_resize <= resize(c_0, 26);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_6_False_resize <= resize(c_0, 26);
  c_3_0_6_False_shift <= shift_left(c_3_0_6_False_resize, 6);
  c_3_0_10_False_resize <= resize(c_0, 26);
  c_3_0_10_False_shift <= shift_left(c_3_0_10_False_resize, 10);
  with config_select_1 select c_3_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_0_0_False_shift;
        when "01" => c_3 <= c_3_0_6_False_shift;
        when others => c_3 <= c_3_0_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[-63], [65], [127], [-1023]]
  with config_select_2 select c_4_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
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
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [4], [2], [8]]
  c_5_0_3_False_resize <= resize(c_0, 19);
  c_5_0_3_False_shift <= shift_left(c_5_0_3_False_resize, 3);
  c_5_0_1_False_resize <= resize(c_0, 19);
  c_5_0_1_False_shift <= shift_left(c_5_0_1_False_resize, 1);
  c_5_0_2_False_resize <= resize(c_0, 19);
  c_5_0_2_False_shift <= shift_left(c_5_0_2_False_resize, 2);
  c_5_0_0_False_resize <= resize(c_0, 19);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "00" when "11",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_3_False_shift;
        when "01" => c_5 <= c_5_0_1_False_shift;
        when "10" => c_5 <= c_5_0_2_False_shift;
        when others => c_5 <= c_5_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[6], [1], [3], [13]]
  with config_select_2 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 20,
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
      x_i => c_1,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[4], [64], [1], [32]]
  c_7_0_0_False_resize <= resize(c_0, 22);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_5_False_resize <= resize(c_0, 22);
  c_7_0_5_False_shift <= shift_left(c_7_0_5_False_resize, 5);
  c_7_0_2_False_resize <= resize(c_0, 22);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  c_7_0_6_False_resize <= resize(c_0, 22);
  c_7_0_6_False_shift <= shift_left(c_7_0_6_False_resize, 6);
  with config_select_1 select c_7_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_0_False_shift;
        when "01" => c_7 <= c_7_0_5_False_shift;
        when "10" => c_7 <= c_7_0_2_False_shift;
        when others => c_7 <= c_7_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[14], [-54], [9], [-22]]
  with config_select_2 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 22,
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
      x_i => c_1,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[14], [65], [508], [26]]
  c_9_4_0_False_resize <= c_4(24 downto 0);
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  c_9_8_0_False_resize <= resize(c_8, 25);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  c_9_6_1_False_resize <= resize(c_6, 25);
  c_9_6_1_False_shift <= shift_left(c_9_6_1_False_resize, 1);
  c_9_4_2_False_resize <= c_4(24 downto 0);
  c_9_4_2_False_shift <= shift_left(c_9_4_2_False_resize, 2);
  with config_select_3 select c_9_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_4_0_False_shift;
        when "01" => c_9 <= c_9_8_0_False_shift;
        when "10" => c_9 <= c_9_6_1_False_shift;
        when others => c_9 <= c_9_4_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[384], [1024], [3], [-1023]]
  c_10_6_10_False_resize <= resize(c_6, 26);
  c_10_6_10_False_shift <= shift_left(c_10_6_10_False_resize, 10);
  c_10_4_0_False_resize <= c_4;
  c_10_4_0_False_shift <= shift_left(c_10_4_0_False_resize, 0);
  c_10_6_0_False_resize <= resize(c_6, 26);
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  c_10_6_6_False_resize <= resize(c_6, 26);
  c_10_6_6_False_shift <= shift_left(c_10_6_6_False_resize, 6);
  with config_select_3 select c_10_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_6_10_False_shift;
        when "01" => c_10 <= c_10_4_0_False_shift;
        when "10" => c_10 <= c_10_6_0_False_shift;
        when others => c_10 <= c_10_6_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[-370], [-959], [511], [-997]]
  with config_select_4 select c_11_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
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
  -- node of type 'mux' in stage 1 with id 12 and associated fundamentals [[2], [1], [4], [256]]
  c_12_0_0_False_resize <= resize(c_0, 24);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  c_12_0_1_False_resize <= resize(c_0, 24);
  c_12_0_1_False_shift <= shift_left(c_12_0_1_False_resize, 1);
  c_12_0_2_False_resize <= resize(c_0, 24);
  c_12_0_2_False_shift <= shift_left(c_12_0_2_False_resize, 2);
  c_12_0_8_False_resize <= resize(c_0, 24);
  c_12_0_8_False_shift <= shift_left(c_12_0_8_False_resize, 8);
  with config_select_1 select c_12_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_0_0_False_shift;
        when "01" => c_12 <= c_12_0_1_False_shift;
        when "10" => c_12 <= c_12_0_2_False_shift;
        when others => c_12 <= c_12_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 13 and associated fundamentals [[44], [-38], [-32], [472]]
  with config_select_2 select c_13_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 19,
      w_o => 25,
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
      sub_i => c_13_sub_sel,
      x_i => c_12,
      y_i => c_1,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[28], [130], [9], [472]]
  c_14_8_1_False_resize <= resize(c_8, 25);
  c_14_8_1_False_shift <= shift_left(c_14_8_1_False_resize, 1);
  c_14_13_0_False_resize <= c_13;
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  c_14_4_1_False_resize <= c_4(24 downto 0);
  c_14_4_1_False_shift <= shift_left(c_14_4_1_False_resize, 1);
  c_14_8_0_False_resize <= resize(c_8, 25);
  c_14_8_0_False_shift <= shift_left(c_14_8_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_8_1_False_shift;
        when "01" => c_14 <= c_14_13_0_False_shift;
        when "10" => c_14 <= c_14_4_1_False_shift;
        when others => c_14 <= c_14_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[-63], [-216], [36], [13]]
  c_15_4_0_False_resize <= c_4(23 downto 0);
  c_15_4_0_False_shift <= shift_left(c_15_4_0_False_resize, 0);
  c_15_8_2_False_resize <= resize(c_8, 24);
  c_15_8_2_False_shift <= shift_left(c_15_8_2_False_resize, 2);
  c_15_6_0_False_resize <= resize(c_6, 24);
  c_15_6_0_False_shift <= shift_left(c_15_6_0_False_resize, 0);
  with config_select_3 select c_15_sel <= 
    "00" when "00",
    "01" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_4_0_False_shift;
        when "01" => c_15 <= c_15_8_2_False_shift;
        when others => c_15 <= c_15_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 16 and associated fundamentals [[91], [346], [-27], [459]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
      w_o => 25,
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
      x_i => c_14,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[6], [1], [72], [-176]]
  c_17_6_0_False_resize <= resize(c_6, 24);
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  c_17_8_3_False_resize <= resize(c_8, 24);
  c_17_8_3_False_shift <= shift_left(c_17_8_3_False_resize, 3);
  with config_select_3 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_6_0_False_shift;
        when others => c_17 <= c_17_8_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[48], [-864], [3], [-1023]]
  c_18_8_4_False_resize <= resize(c_8, 26);
  c_18_8_4_False_shift <= shift_left(c_18_8_4_False_resize, 4);
  c_18_4_0_False_resize <= c_4;
  c_18_4_0_False_shift <= shift_left(c_18_4_0_False_resize, 0);
  c_18_6_3_False_resize <= resize(c_6, 26);
  c_18_6_3_False_shift <= shift_left(c_18_6_3_False_resize, 3);
  c_18_6_0_False_resize <= resize(c_6, 26);
  c_18_6_0_False_shift <= shift_left(c_18_6_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_8_4_False_shift;
        when "01" => c_18 <= c_18_4_0_False_shift;
        when "10" => c_18 <= c_18_6_3_False_shift;
        when others => c_18 <= c_18_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 19 and associated fundamentals [[54], [865], [69], [847]]
  with config_select_4 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 20 and associated fundamentals [[680], [680], [680], [600]]
  with config_select_2 select c_20_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 19,
      w_o => 26,
      s_x_i => 7,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_20_sub_sel,
      x_i => c_1,
      y_i => c_1,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 21 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 22 and associated fundamentals [[159], [159], [161], [161]]
  with config_select_2 select c_22_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 5,
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
      x_i => c_1,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[448], [4], [48], [472]]
  c_23_6_4_False_resize <= resize(c_6, 25);
  c_23_6_4_False_shift <= shift_left(c_23_6_4_False_resize, 4);
  c_23_8_5_False_resize <= resize(c_8, 25);
  c_23_8_5_False_shift <= shift_left(c_23_8_5_False_resize, 5);
  c_23_6_2_False_resize <= resize(c_6, 25);
  c_23_6_2_False_shift <= shift_left(c_23_6_2_False_resize, 2);
  c_23_13_0_False_resize <= c_13;
  c_23_13_0_False_shift <= shift_left(c_23_13_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_6_4_False_shift;
        when "01" => c_23 <= c_23_8_5_False_shift;
        when "10" => c_23 <= c_23_6_2_False_shift;
        when others => c_23 <= c_23_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 24 and associated fundamentals [[159], [159], [161], [161]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 25 and associated fundamentals [[737], [167], [257], [783]]
  with config_select_4 select c_25_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
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
      sub_i => c_25_sub_sel,
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[6], [680], [3], [600]]
  c_26_20_0_False_resize <= c_20;
  c_26_20_0_False_shift <= shift_left(c_26_20_0_False_resize, 0);
  c_26_6_0_False_resize <= resize(c_6, 26);
  c_26_6_0_False_shift <= shift_left(c_26_6_0_False_resize, 0);
  with config_select_3 select c_26_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_20_0_False_shift;
        when others => c_26 <= c_26_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[-252], [65], [-64], [13]]
  c_27_4_0_False_resize <= c_4(23 downto 0);
  c_27_4_0_False_shift <= shift_left(c_27_4_0_False_resize, 0);
  c_27_13_1_False_resize <= c_13(23 downto 0);
  c_27_13_1_False_shift <= shift_left(c_27_13_1_False_resize, 1);
  c_27_4_2_False_resize <= c_4(23 downto 0);
  c_27_4_2_False_shift <= shift_left(c_27_4_2_False_resize, 2);
  c_27_6_0_False_resize <= resize(c_6, 24);
  c_27_6_0_False_shift <= shift_left(c_27_6_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_4_0_False_shift;
        when "01" => c_27 <= c_27_13_1_False_shift;
        when "10" => c_27 <= c_27_4_2_False_shift;
        when others => c_27 <= c_27_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 28 and associated fundamentals [[258], [745], [67], [613]]
  with config_select_4 select c_28_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
      sub_i => c_28_sub_sel,
      x_i => c_26,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 29 and associated fundamentals [[737], [334], [69], [613]]
  c_29_19_0_False_resize <= c_19;
  c_29_19_0_False_shift <= shift_left(c_29_19_0_False_resize, 0);
  c_29_28_0_False_resize <= c_28;
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  c_29_25_0_False_resize <= c_25;
  c_29_25_0_False_shift <= shift_left(c_29_25_0_False_resize, 0);
  c_29_25_1_False_resize <= c_25;
  c_29_25_1_False_shift <= shift_left(c_29_25_1_False_resize, 1);
  with config_select_5 select c_29_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_19_0_False_shift;
        when "01" => c_29 <= c_29_28_0_False_shift;
        when "10" => c_29 <= c_29_25_0_False_shift;
        when others => c_29 <= c_29_25_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[737], [334], [69], [613]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[-370], [-959], [-27], [-997]]
  c_31_11_0_False_resize <= c_11;
  c_31_11_0_False_shift <= shift_left(c_31_11_0_False_resize, 0);
  c_31_16_0_False_resize <= resize(c_16, 26);
  c_31_16_0_False_shift <= shift_left(c_31_16_0_False_resize, 0);
  with config_select_5 select c_31_sel <= 
    "0" when "01",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_11_0_False_shift;
        when others => c_31 <= c_31_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[370], [959], [27], [997]]
  c_32_resize <= c_31;
  c_32 <= -shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 5 with id 33 and associated fundamentals [[516], [692], [67], [918]]
  c_33_28_1_False_resize <= c_28;
  c_33_28_1_False_shift <= shift_left(c_33_28_1_False_resize, 1);
  c_33_16_1_False_resize <= resize(c_16, 26);
  c_33_16_1_False_shift <= shift_left(c_33_16_1_False_resize, 1);
  c_33_28_0_False_resize <= c_28;
  c_33_28_0_False_shift <= shift_left(c_33_28_0_False_resize, 0);
  with config_select_5 select c_33_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_28_1_False_shift;
        when "01" => c_33 <= c_33_16_1_False_shift;
        when others => c_33 <= c_33_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 34 and associated fundamentals [[516], [692], [67], [918]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 5 with id 35 and associated fundamentals [[54], [745], [511], [847]]
  c_35_11_0_False_resize <= c_11;
  c_35_11_0_False_shift <= shift_left(c_35_11_0_False_resize, 0);
  c_35_19_0_False_resize <= c_19;
  c_35_19_0_False_shift <= shift_left(c_35_19_0_False_resize, 0);
  c_35_28_0_False_resize <= c_28;
  c_35_28_0_False_shift <= shift_left(c_35_28_0_False_resize, 0);
  with config_select_5 select c_35_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_11_0_False_shift;
        when "01" => c_35 <= c_35_19_0_False_shift;
        when others => c_35 <= c_35_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 36 and associated fundamentals [[54], [745], [511], [847]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
  -- node of type 'mux' in stage 5 with id 37 and associated fundamentals [[91], [865], [514], [783]]
  c_37_16_0_False_resize <= resize(c_16, 26);
  c_37_16_0_False_shift <= shift_left(c_37_16_0_False_resize, 0);
  c_37_25_1_False_resize <= c_25;
  c_37_25_1_False_shift <= shift_left(c_37_25_1_False_resize, 1);
  c_37_25_0_False_resize <= c_25;
  c_37_25_0_False_shift <= shift_left(c_37_25_0_False_resize, 0);
  c_37_19_0_False_resize <= c_19;
  c_37_19_0_False_shift <= shift_left(c_37_19_0_False_resize, 0);
  with config_select_5 select c_37_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_16_0_False_shift;
        when "01" => c_37 <= c_37_25_1_False_shift;
        when "10" => c_37 <= c_37_25_0_False_shift;
        when others => c_37 <= c_37_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 38 and associated fundamentals [[91], [865], [514], [783]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
end architecture;

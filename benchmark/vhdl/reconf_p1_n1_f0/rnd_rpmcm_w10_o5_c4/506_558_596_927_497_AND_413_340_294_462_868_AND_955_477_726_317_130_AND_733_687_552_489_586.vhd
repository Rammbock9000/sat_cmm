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
  signal c_1: signed(22 downto 0);
  signal c_1_i0_resize: signed(22 downto 0);
  signal c_1_i1_resize: signed(22 downto 0);
  signal c_1_i0_shift: signed(22 downto 0);
  signal c_1_i1_shift: signed(22 downto 0);
  signal c_1_arith: signed(22 downto 0);
  signal c_1_oshift: signed(22 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(20 downto 0);
  signal c_4_0_0_False_resize: signed(20 downto 0);
  signal c_4_0_0_False_shift: signed(20 downto 0);
  signal c_4_0_1_False_resize: signed(20 downto 0);
  signal c_4_0_1_False_shift: signed(20 downto 0);
  signal c_4_0_5_False_resize: signed(20 downto 0);
  signal c_4_0_5_False_shift: signed(20 downto 0);
  signal c_4_0_4_False_resize: signed(20 downto 0);
  signal c_4_0_4_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_0_0_False_resize: signed(20 downto 0);
  signal c_5_0_0_False_shift: signed(20 downto 0);
  signal c_5_0_3_False_resize: signed(20 downto 0);
  signal c_5_0_3_False_shift: signed(20 downto 0);
  signal c_5_0_5_False_resize: signed(20 downto 0);
  signal c_5_0_5_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_6_i0_resize: signed(20 downto 0);
  signal c_6_i1_resize: signed(20 downto 0);
  signal c_6_i0_shift: signed(20 downto 0);
  signal c_6_i1_shift: signed(20 downto 0);
  signal c_6_arith: signed(20 downto 0);
  signal c_6_oshift: signed(20 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(24 downto 0);
  signal c_7_6_0_False_resize: signed(24 downto 0);
  signal c_7_6_0_False_shift: signed(24 downto 0);
  signal c_7_3_3_False_resize: signed(24 downto 0);
  signal c_7_3_3_False_shift: signed(24 downto 0);
  signal c_7_6_3_False_resize: signed(24 downto 0);
  signal c_7_6_3_False_shift: signed(24 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_3_0_False_resize: signed(25 downto 0);
  signal c_8_3_0_False_shift: signed(25 downto 0);
  signal c_8_3_2_False_resize: signed(25 downto 0);
  signal c_8_3_2_False_shift: signed(25 downto 0);
  signal c_8_3_3_False_resize: signed(25 downto 0);
  signal c_8_3_3_False_shift: signed(25 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(22 downto 0);
  signal c_10_0_0_False_resize: signed(22 downto 0);
  signal c_10_0_0_False_shift: signed(22 downto 0);
  signal c_10_0_7_False_resize: signed(22 downto 0);
  signal c_10_0_7_False_shift: signed(22 downto 0);
  signal c_10_0_4_False_resize: signed(22 downto 0);
  signal c_10_0_4_False_shift: signed(22 downto 0);
  signal c_10_0_3_False_resize: signed(22 downto 0);
  signal c_10_0_3_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_0_0_False_resize: signed(21 downto 0);
  signal c_12_0_0_False_shift: signed(21 downto 0);
  signal c_12_0_2_False_resize: signed(21 downto 0);
  signal c_12_0_2_False_shift: signed(21 downto 0);
  signal c_12_0_6_False_resize: signed(21 downto 0);
  signal c_12_0_6_False_shift: signed(21 downto 0);
  signal c_12_0_1_False_resize: signed(21 downto 0);
  signal c_12_0_1_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_13_0_4_False_resize: signed(19 downto 0);
  signal c_13_0_4_False_shift: signed(19 downto 0);
  signal c_13_0_0_False_resize: signed(19 downto 0);
  signal c_13_0_0_False_shift: signed(19 downto 0);
  signal c_13_0_3_False_resize: signed(19 downto 0);
  signal c_13_0_3_False_shift: signed(19 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(27 downto 0);
  signal c_15_i0_resize: signed(27 downto 0);
  signal c_15_i1_resize: signed(27 downto 0);
  signal c_15_i0_shift: signed(27 downto 0);
  signal c_15_i1_shift: signed(27 downto 0);
  signal c_15_arith: signed(27 downto 0);
  signal c_15_oshift: signed(27 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_11_3_False_resize: signed(23 downto 0);
  signal c_16_11_3_False_shift: signed(23 downto 0);
  signal c_16_6_1_False_resize: signed(23 downto 0);
  signal c_16_6_1_False_shift: signed(23 downto 0);
  signal c_16_11_0_False_resize: signed(23 downto 0);
  signal c_16_11_0_False_shift: signed(23 downto 0);
  signal c_16_3_0_False_resize: signed(23 downto 0);
  signal c_16_3_0_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_3_1_False_resize: signed(23 downto 0);
  signal c_17_3_1_False_shift: signed(23 downto 0);
  signal c_17_14_0_False_resize: signed(23 downto 0);
  signal c_17_14_0_False_shift: signed(23 downto 0);
  signal c_17_3_0_False_resize: signed(23 downto 0);
  signal c_17_3_0_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(25 downto 0);
  signal c_19_11_2_False_resize: signed(25 downto 0);
  signal c_19_11_2_False_shift: signed(25 downto 0);
  signal c_19_14_4_False_resize: signed(25 downto 0);
  signal c_19_14_4_False_shift: signed(25 downto 0);
  signal c_19_6_0_False_resize: signed(25 downto 0);
  signal c_19_6_0_False_shift: signed(25 downto 0);
  signal c_19_14_0_False_resize: signed(25 downto 0);
  signal c_19_14_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_6_0_False_resize: signed(24 downto 0);
  signal c_20_6_0_False_shift: signed(24 downto 0);
  signal c_20_11_2_False_resize: signed(24 downto 0);
  signal c_20_11_2_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(25 downto 0);
  signal c_22_11_0_False_resize: signed(25 downto 0);
  signal c_22_11_0_False_shift: signed(25 downto 0);
  signal c_22_6_4_False_resize: signed(25 downto 0);
  signal c_22_6_4_False_shift: signed(25 downto 0);
  signal c_22_3_0_False_resize: signed(25 downto 0);
  signal c_22_3_0_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_6_4_False_resize: signed(25 downto 0);
  signal c_23_6_4_False_shift: signed(25 downto 0);
  signal c_23_11_0_False_resize: signed(25 downto 0);
  signal c_23_11_0_False_shift: signed(25 downto 0);
  signal c_23_14_0_False_resize: signed(25 downto 0);
  signal c_23_14_0_False_shift: signed(25 downto 0);
  signal c_23_11_10_False_resize: signed(25 downto 0);
  signal c_23_11_10_False_shift: signed(25 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_i0_resize: signed(27 downto 0);
  signal c_26_i1_resize: signed(27 downto 0);
  signal c_26_i0_shift: signed(27 downto 0);
  signal c_26_i1_shift: signed(27 downto 0);
  signal c_26_arith: signed(27 downto 0);
  signal c_26_oshift: signed(25 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(25 downto 0);
  signal c_27_21_0_False_resize: signed(25 downto 0);
  signal c_27_21_0_False_shift: signed(25 downto 0);
  signal c_27_9_0_False_resize: signed(25 downto 0);
  signal c_27_9_0_False_shift: signed(25 downto 0);
  signal c_27_9_1_False_resize: signed(25 downto 0);
  signal c_27_9_1_False_shift: signed(25 downto 0);
  signal c_27_24_0_False_resize: signed(25 downto 0);
  signal c_27_24_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_21_0_False_resize: signed(25 downto 0);
  signal c_29_21_0_False_shift: signed(25 downto 0);
  signal c_29_26_0_False_resize: signed(25 downto 0);
  signal c_29_26_0_False_shift: signed(25 downto 0);
  signal c_29_24_0_False_resize: signed(25 downto 0);
  signal c_29_24_0_False_shift: signed(25 downto 0);
  signal c_29_18_2_False_resize: signed(25 downto 0);
  signal c_29_18_2_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_18_1_False_resize: signed(25 downto 0);
  signal c_31_18_1_False_shift: signed(25 downto 0);
  signal c_31_18_3_False_resize: signed(25 downto 0);
  signal c_31_18_3_False_shift: signed(25 downto 0);
  signal c_31_21_0_False_resize: signed(25 downto 0);
  signal c_31_21_0_False_shift: signed(25 downto 0);
  signal c_31_26_1_False_resize: signed(25 downto 0);
  signal c_31_26_1_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_24_1_False_resize: signed(25 downto 0);
  signal c_33_24_1_False_shift: signed(25 downto 0);
  signal c_33_24_0_False_resize: signed(25 downto 0);
  signal c_33_24_0_False_shift: signed(25 downto 0);
  signal c_33_9_0_False_resize: signed(25 downto 0);
  signal c_33_9_0_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_resize: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_18_0_False_resize: signed(25 downto 0);
  signal c_35_18_0_False_shift: signed(25 downto 0);
  signal c_35_26_1_False_resize: signed(25 downto 0);
  signal c_35_26_1_False_shift: signed(25 downto 0);
  signal c_35_26_0_False_resize: signed(25 downto 0);
  signal c_35_26_0_False_shift: signed(25 downto 0);
  signal c_35_21_0_False_resize: signed(25 downto 0);
  signal c_35_21_0_False_shift: signed(25 downto 0);
  signal c_35_sel: std_logic_vector(1 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_resize: signed(25 downto 0);
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
  -- output node 0 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 1 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 2 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 3 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_34);
    end if;
  end process;
  -- output node 4 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_36);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[65], [-63], [65], [-63]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 6,
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
      c_1 <= c_1_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [2], [2], [1]]
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_1_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[67], [-59], [69], [-65]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 17,
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[16], [2], [1], [32]]
  c_4_0_0_False_resize <= resize(c_0, 21);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_1_False_resize <= resize(c_0, 21);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  c_4_0_5_False_resize <= resize(c_0, 21);
  c_4_0_5_False_shift <= shift_left(c_4_0_5_False_resize, 5);
  c_4_0_4_False_resize <= resize(c_0, 21);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  with config_select_1 select c_4_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_0_0_False_shift;
        when "01" => c_4 <= c_4_0_1_False_shift;
        when "10" => c_4 <= c_4_0_5_False_shift;
        when others => c_4 <= c_4_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [8], [32], [1]]
  c_5_0_0_False_resize <= resize(c_0, 21);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_3_False_resize <= resize(c_0, 21);
  c_5_0_3_False_shift <= shift_left(c_5_0_3_False_resize, 3);
  c_5_0_5_False_resize <= resize(c_0, 21);
  c_5_0_5_False_shift <= shift_left(c_5_0_5_False_resize, 5);
  with config_select_1 select c_5_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_0_False_shift;
        when "01" => c_5 <= c_5_0_3_False_shift;
        when others => c_5 <= c_5_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[15], [10], [-31], [31]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[15], [-472], [-248], [31]]
  c_7_6_0_False_resize <= resize(c_6, 25);
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  c_7_3_3_False_resize <= resize(c_3, 25);
  c_7_3_3_False_shift <= shift_left(c_7_3_3_False_resize, 3);
  c_7_6_3_False_resize <= resize(c_6, 25);
  c_7_6_3_False_shift <= shift_left(c_7_6_3_False_resize, 3);
  with config_select_3 select c_7_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_6_0_False_shift;
        when "01" => c_7 <= c_7_3_3_False_shift;
        when others => c_7 <= c_7_6_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[268], [-59], [69], [-520]]
  c_8_3_0_False_resize <= resize(c_3, 26);
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  c_8_3_2_False_resize <= resize(c_3, 26);
  c_8_3_2_False_shift <= shift_left(c_8_3_2_False_resize, 2);
  c_8_3_3_False_resize <= resize(c_3, 26);
  c_8_3_3_False_shift <= shift_left(c_8_3_3_False_resize, 3);
  with config_select_3 select c_8_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_3_0_False_shift;
        when "01" => c_8 <= c_8_3_2_False_shift;
        when others => c_8 <= c_8_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[-253], [-413], [-317], [-489]]
  with config_select_4 select c_9_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[128], [1], [8], [16]]
  c_10_0_0_False_resize <= resize(c_0, 23);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_0_7_False_resize <= resize(c_0, 23);
  c_10_0_7_False_shift <= shift_left(c_10_0_7_False_resize, 7);
  c_10_0_4_False_resize <= resize(c_0, 23);
  c_10_0_4_False_shift <= shift_left(c_10_0_4_False_resize, 4);
  c_10_0_3_False_resize <= resize(c_0, 23);
  c_10_0_3_False_shift <= shift_left(c_10_0_3_False_resize, 3);
  with config_select_1 select c_10_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_0_0_False_shift;
        when "01" => c_10 <= c_10_0_7_False_shift;
        when "10" => c_10 <= c_10_0_4_False_shift;
        when others => c_10 <= c_10_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 11 and associated fundamentals [[-959], [-71], [1], [-191]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 12 and associated fundamentals [[4], [1], [64], [2]]
  c_12_0_0_False_resize <= resize(c_0, 22);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  c_12_0_2_False_resize <= resize(c_0, 22);
  c_12_0_2_False_shift <= shift_left(c_12_0_2_False_resize, 2);
  c_12_0_6_False_resize <= resize(c_0, 22);
  c_12_0_6_False_shift <= shift_left(c_12_0_6_False_resize, 6);
  c_12_0_1_False_resize <= resize(c_0, 22);
  c_12_0_1_False_shift <= shift_left(c_12_0_1_False_resize, 1);
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
        when "01" => c_12 <= c_12_0_2_False_shift;
        when "10" => c_12 <= c_12_0_6_False_shift;
        when others => c_12 <= c_12_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 13 and associated fundamentals [[16], [16], [1], [8]]
  c_13_0_4_False_resize <= resize(c_0, 20);
  c_13_0_4_False_shift <= shift_left(c_13_0_4_False_resize, 4);
  c_13_0_0_False_resize <= resize(c_0, 20);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  c_13_0_3_False_resize <= resize(c_0, 20);
  c_13_0_3_False_shift <= shift_left(c_13_0_3_False_resize, 3);
  with config_select_1 select c_13_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_0_4_False_shift;
        when "01" => c_13 <= c_13_0_0_False_shift;
        when others => c_13 <= c_13_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 14 and associated fundamentals [[-32], [72], [508], [-16]]
  with config_select_2 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 25,
      s_x_i => 3,
      s_y_i => 2,
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
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[2264], [-1808], [1960], [-2328]]
  with config_select_3 select c_15_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 28,
      s_x_i => 5,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_15_sub_sel,
      x_i => c_3,
      y_i => c_6,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[30], [-59], [8], [-191]]
  c_16_11_3_False_resize <= c_11(23 downto 0);
  c_16_11_3_False_shift <= shift_left(c_16_11_3_False_resize, 3);
  c_16_6_1_False_resize <= resize(c_6, 24);
  c_16_6_1_False_shift <= shift_left(c_16_6_1_False_resize, 1);
  c_16_11_0_False_resize <= c_11(23 downto 0);
  c_16_11_0_False_shift <= shift_left(c_16_11_0_False_resize, 0);
  c_16_3_0_False_resize <= resize(c_3, 24);
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_11_3_False_shift;
        when "01" => c_16 <= c_16_6_1_False_shift;
        when "10" => c_16 <= c_16_11_0_False_shift;
        when others => c_16 <= c_16_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[134], [72], [69], [-130]]
  c_17_3_1_False_resize <= resize(c_3, 24);
  c_17_3_1_False_shift <= shift_left(c_17_3_1_False_resize, 1);
  c_17_14_0_False_resize <= c_14(23 downto 0);
  c_17_14_0_False_shift <= shift_left(c_17_14_0_False_resize, 0);
  c_17_3_0_False_resize <= resize(c_3, 24);
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  with config_select_3 select c_17_sel <= 
    "00" when "11",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_3_1_False_shift;
        when "01" => c_17 <= c_17_14_0_False_shift;
        when others => c_17 <= c_17_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 18 and associated fundamentals [[298], [85], [-130], [69]]
  with config_select_4 select c_18_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
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
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[-512], [10], [508], [-764]]
  c_19_11_2_False_resize <= c_11;
  c_19_11_2_False_shift <= shift_left(c_19_11_2_False_resize, 2);
  c_19_14_4_False_resize <= resize(c_14, 26);
  c_19_14_4_False_shift <= shift_left(c_19_14_4_False_resize, 4);
  c_19_6_0_False_resize <= resize(c_6, 26);
  c_19_6_0_False_shift <= shift_left(c_19_6_0_False_resize, 0);
  c_19_14_0_False_resize <= resize(c_14, 26);
  c_19_14_0_False_shift <= shift_left(c_19_14_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_11_2_False_shift;
        when "01" => c_19 <= c_19_14_4_False_shift;
        when "10" => c_19 <= c_19_6_0_False_shift;
        when others => c_19 <= c_19_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[15], [-284], [-31], [31]]
  c_20_6_0_False_resize <= resize(c_6, 25);
  c_20_6_0_False_shift <= shift_left(c_20_6_0_False_resize, 0);
  c_20_11_2_False_resize <= c_11(24 downto 0);
  c_20_11_2_False_shift <= shift_left(c_20_11_2_False_resize, 2);
  with config_select_3 select c_20_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_6_0_False_shift;
        when others => c_20 <= c_20_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[-497], [294], [477], [-733]]
  with config_select_4 select c_21_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[-959], [-71], [69], [496]]
  c_22_11_0_False_resize <= c_11;
  c_22_11_0_False_shift <= shift_left(c_22_11_0_False_resize, 0);
  c_22_6_4_False_resize <= resize(c_6, 26);
  c_22_6_4_False_shift <= shift_left(c_22_6_4_False_resize, 4);
  c_22_3_0_False_resize <= resize(c_3, 26);
  c_22_3_0_False_shift <= shift_left(c_22_3_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_11_0_False_shift;
        when "01" => c_22 <= c_22_6_4_False_shift;
        when others => c_22 <= c_22_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[-32], [160], [1024], [-191]]
  c_23_6_4_False_resize <= resize(c_6, 26);
  c_23_6_4_False_shift <= shift_left(c_23_6_4_False_resize, 4);
  c_23_11_0_False_resize <= c_11;
  c_23_11_0_False_shift <= shift_left(c_23_11_0_False_resize, 0);
  c_23_14_0_False_resize <= resize(c_14, 26);
  c_23_14_0_False_shift <= shift_left(c_23_14_0_False_resize, 0);
  c_23_11_10_False_resize <= c_11;
  c_23_11_10_False_shift <= shift_left(c_23_11_10_False_resize, 10);
  with config_select_3 select c_23_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_6_4_False_shift;
        when "01" => c_23 <= c_23_11_0_False_shift;
        when "10" => c_23 <= c_23_14_0_False_shift;
        when others => c_23 <= c_23_11_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 24 and associated fundamentals [[-927], [-231], [-955], [687]]
  inst_adder_node_24: entity work.adder_node
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
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 25 and associated fundamentals [[-32], [72], [508], [-16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 26 and associated fundamentals [[558], [-434], [363], [-586]]
  with config_select_4 select c_26_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_26_sub_sel,
      x_i => c_15,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 27 and associated fundamentals [[-506], [-413], [-955], [-733]]
  c_27_21_0_False_resize <= c_21;
  c_27_21_0_False_shift <= shift_left(c_27_21_0_False_resize, 0);
  c_27_9_0_False_resize <= resize(c_9, 26);
  c_27_9_0_False_shift <= shift_left(c_27_9_0_False_resize, 0);
  c_27_9_1_False_resize <= resize(c_9, 26);
  c_27_9_1_False_shift <= shift_left(c_27_9_1_False_resize, 1);
  c_27_24_0_False_resize <= c_24;
  c_27_24_0_False_shift <= shift_left(c_27_24_0_False_resize, 0);
  with config_select_5 select c_27_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_21_0_False_shift;
        when "01" => c_27 <= c_27_9_0_False_shift;
        when "10" => c_27 <= c_27_9_1_False_shift;
        when others => c_27 <= c_27_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[506], [413], [955], [733]]
  c_28_resize <= c_27;
  c_28 <= -shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 5 with id 29 and associated fundamentals [[558], [340], [477], [687]]
  c_29_21_0_False_resize <= c_21;
  c_29_21_0_False_shift <= shift_left(c_29_21_0_False_resize, 0);
  c_29_26_0_False_resize <= c_26;
  c_29_26_0_False_shift <= shift_left(c_29_26_0_False_resize, 0);
  c_29_24_0_False_resize <= c_24;
  c_29_24_0_False_shift <= shift_left(c_29_24_0_False_resize, 0);
  c_29_18_2_False_resize <= resize(c_18, 26);
  c_29_18_2_False_shift <= shift_left(c_29_18_2_False_resize, 2);
  with config_select_5 select c_29_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_21_0_False_shift;
        when "01" => c_29 <= c_29_26_0_False_shift;
        when "10" => c_29 <= c_29_24_0_False_shift;
        when others => c_29 <= c_29_18_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[558], [340], [477], [687]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[596], [294], [726], [552]]
  c_31_18_1_False_resize <= resize(c_18, 26);
  c_31_18_1_False_shift <= shift_left(c_31_18_1_False_resize, 1);
  c_31_18_3_False_resize <= resize(c_18, 26);
  c_31_18_3_False_shift <= shift_left(c_31_18_3_False_resize, 3);
  c_31_21_0_False_resize <= c_21;
  c_31_21_0_False_shift <= shift_left(c_31_21_0_False_resize, 0);
  c_31_26_1_False_resize <= c_26;
  c_31_26_1_False_shift <= shift_left(c_31_26_1_False_resize, 1);
  with config_select_5 select c_31_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_18_1_False_shift;
        when "01" => c_31 <= c_31_18_3_False_shift;
        when "10" => c_31 <= c_31_21_0_False_shift;
        when others => c_31 <= c_31_26_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[596], [294], [726], [552]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 5 with id 33 and associated fundamentals [[-927], [-462], [-317], [-489]]
  c_33_24_1_False_resize <= c_24;
  c_33_24_1_False_shift <= shift_left(c_33_24_1_False_resize, 1);
  c_33_24_0_False_resize <= c_24;
  c_33_24_0_False_shift <= shift_left(c_33_24_0_False_resize, 0);
  c_33_9_0_False_resize <= resize(c_9, 26);
  c_33_9_0_False_shift <= shift_left(c_33_9_0_False_resize, 0);
  with config_select_5 select c_33_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_24_1_False_shift;
        when "01" => c_33 <= c_33_24_0_False_shift;
        when others => c_33 <= c_33_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 34 and associated fundamentals [[927], [462], [317], [489]]
  c_34_resize <= c_33;
  c_34 <= -shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 5 with id 35 and associated fundamentals [[-497], [-868], [-130], [-586]]
  c_35_18_0_False_resize <= resize(c_18, 26);
  c_35_18_0_False_shift <= shift_left(c_35_18_0_False_resize, 0);
  c_35_26_1_False_resize <= c_26;
  c_35_26_1_False_shift <= shift_left(c_35_26_1_False_resize, 1);
  c_35_26_0_False_resize <= c_26;
  c_35_26_0_False_shift <= shift_left(c_35_26_0_False_resize, 0);
  c_35_21_0_False_resize <= c_21;
  c_35_21_0_False_shift <= shift_left(c_35_21_0_False_resize, 0);
  with config_select_5 select c_35_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_18_0_False_shift;
        when "01" => c_35 <= c_35_26_1_False_shift;
        when "10" => c_35 <= c_35_26_0_False_shift;
        when others => c_35 <= c_35_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 36 and associated fundamentals [[497], [868], [130], [586]]
  c_36_resize <= c_35;
  c_36 <= -shift_left(c_36_resize, 0);
end architecture;

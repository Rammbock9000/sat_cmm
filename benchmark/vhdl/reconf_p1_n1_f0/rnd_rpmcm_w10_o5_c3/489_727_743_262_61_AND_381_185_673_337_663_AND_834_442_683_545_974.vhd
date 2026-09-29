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
  signal c_1: signed(23 downto 0);
  signal c_1_0_0_False_resize: signed(23 downto 0);
  signal c_1_0_0_False_shift: signed(23 downto 0);
  signal c_1_0_1_False_resize: signed(23 downto 0);
  signal c_1_0_1_False_shift: signed(23 downto 0);
  signal c_1_0_8_False_resize: signed(23 downto 0);
  signal c_1_0_8_False_shift: signed(23 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_0_0_False_resize: signed(17 downto 0);
  signal c_2_0_0_False_shift: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(24 downto 0);
  signal c_3_i0_resize: signed(24 downto 0);
  signal c_3_i1_resize: signed(24 downto 0);
  signal c_3_i0_shift: signed(24 downto 0);
  signal c_3_i1_shift: signed(24 downto 0);
  signal c_3_arith: signed(24 downto 0);
  signal c_3_oshift: signed(24 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(27 downto 0);
  signal c_4_3_0_False_resize: signed(27 downto 0);
  signal c_4_3_0_False_shift: signed(27 downto 0);
  signal c_4_3_3_False_resize: signed(27 downto 0);
  signal c_4_3_3_False_shift: signed(27 downto 0);
  signal c_4_3_1_False_resize: signed(27 downto 0);
  signal c_4_3_1_False_shift: signed(27 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_3_4_False_resize: signed(24 downto 0);
  signal c_5_3_4_False_shift: signed(24 downto 0);
  signal c_5_3_7_False_resize: signed(24 downto 0);
  signal c_5_3_7_False_shift: signed(24 downto 0);
  signal c_5_3_0_False_resize: signed(24 downto 0);
  signal c_5_3_0_False_shift: signed(24 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(25 downto 0);
  signal c_6_i0_resize: signed(25 downto 0);
  signal c_6_i1_resize: signed(25 downto 0);
  signal c_6_i0_shift: signed(25 downto 0);
  signal c_6_i1_shift: signed(25 downto 0);
  signal c_6_arith: signed(25 downto 0);
  signal c_6_oshift: signed(25 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(19 downto 0);
  signal c_7_0_0_False_resize: signed(19 downto 0);
  signal c_7_0_0_False_shift: signed(19 downto 0);
  signal c_7_0_4_False_resize: signed(19 downto 0);
  signal c_7_0_4_False_shift: signed(19 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_8_0_3_False_resize: signed(18 downto 0);
  signal c_8_0_3_False_shift: signed(18 downto 0);
  signal c_8_0_0_False_resize: signed(18 downto 0);
  signal c_8_0_0_False_shift: signed(18 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_i0_resize: signed(19 downto 0);
  signal c_9_i1_resize: signed(19 downto 0);
  signal c_9_i0_shift: signed(19 downto 0);
  signal c_9_i1_shift: signed(19 downto 0);
  signal c_9_arith: signed(19 downto 0);
  signal c_9_oshift: signed(19 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(24 downto 0);
  signal c_10_9_0_False_resize: signed(24 downto 0);
  signal c_10_9_0_False_shift: signed(24 downto 0);
  signal c_10_9_1_False_resize: signed(24 downto 0);
  signal c_10_9_1_False_shift: signed(24 downto 0);
  signal c_10_3_0_False_resize: signed(24 downto 0);
  signal c_10_3_0_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_9_3_False_resize: signed(22 downto 0);
  signal c_11_9_3_False_shift: signed(22 downto 0);
  signal c_11_3_0_False_resize: signed(22 downto 0);
  signal c_11_3_0_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(21 downto 0);
  signal c_13_0_4_False_resize: signed(21 downto 0);
  signal c_13_0_4_False_shift: signed(21 downto 0);
  signal c_13_0_0_False_resize: signed(21 downto 0);
  signal c_13_0_0_False_shift: signed(21 downto 0);
  signal c_13_0_6_False_resize: signed(21 downto 0);
  signal c_13_0_6_False_shift: signed(21 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_14_0_4_False_resize: signed(19 downto 0);
  signal c_14_0_4_False_shift: signed(19 downto 0);
  signal c_14_0_0_False_resize: signed(19 downto 0);
  signal c_14_0_0_False_shift: signed(19 downto 0);
  signal c_14_0_3_False_resize: signed(19 downto 0);
  signal c_14_0_3_False_shift: signed(19 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(16 downto 0);
  signal c_17_0_1_False_resize: signed(16 downto 0);
  signal c_17_0_1_False_shift: signed(16 downto 0);
  signal c_17_0_0_False_resize: signed(16 downto 0);
  signal c_17_0_0_False_shift: signed(16 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(17 downto 0);
  signal c_18_0_0_False_resize: signed(17 downto 0);
  signal c_18_0_0_False_shift: signed(17 downto 0);
  signal c_18_0_2_False_resize: signed(17 downto 0);
  signal c_18_0_2_False_shift: signed(17 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(20 downto 0);
  signal c_19_i0_resize: signed(20 downto 0);
  signal c_19_i1_resize: signed(20 downto 0);
  signal c_19_i0_shift: signed(20 downto 0);
  signal c_19_i1_shift: signed(20 downto 0);
  signal c_19_arith: signed(20 downto 0);
  signal c_19_oshift: signed(20 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_21_9_0_False_resize: signed(21 downto 0);
  signal c_21_9_0_False_shift: signed(21 downto 0);
  signal c_21_9_2_False_resize: signed(21 downto 0);
  signal c_21_9_2_False_shift: signed(21 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(23 downto 0);
  signal c_23_19_3_False_resize: signed(23 downto 0);
  signal c_23_19_3_False_shift: signed(23 downto 0);
  signal c_23_3_0_False_resize: signed(23 downto 0);
  signal c_23_3_0_False_shift: signed(23 downto 0);
  signal c_23_19_0_False_resize: signed(23 downto 0);
  signal c_23_19_0_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(24 downto 0);
  signal c_25_9_0_False_resize: signed(24 downto 0);
  signal c_25_9_0_False_shift: signed(24 downto 0);
  signal c_25_19_3_False_resize: signed(24 downto 0);
  signal c_25_19_3_False_shift: signed(24 downto 0);
  signal c_25_15_0_False_resize: signed(24 downto 0);
  signal c_25_15_0_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_9_0_False_resize: signed(24 downto 0);
  signal c_26_9_0_False_shift: signed(24 downto 0);
  signal c_26_3_0_False_resize: signed(24 downto 0);
  signal c_26_3_0_False_shift: signed(24 downto 0);
  signal c_26_3_6_False_resize: signed(24 downto 0);
  signal c_26_3_6_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_i0_resize: signed(24 downto 0);
  signal c_27_i1_resize: signed(24 downto 0);
  signal c_27_i0_shift: signed(24 downto 0);
  signal c_27_i1_shift: signed(24 downto 0);
  signal c_27_arith: signed(24 downto 0);
  signal c_27_oshift: signed(24 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(25 downto 0);
  signal c_28_27_0_False_resize: signed(25 downto 0);
  signal c_28_27_0_False_shift: signed(25 downto 0);
  signal c_28_27_1_False_resize: signed(25 downto 0);
  signal c_28_27_1_False_shift: signed(25 downto 0);
  signal c_28_6_0_False_resize: signed(25 downto 0);
  signal c_28_6_0_False_shift: signed(25 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_12_0_False_resize: signed(25 downto 0);
  signal c_30_12_0_False_shift: signed(25 downto 0);
  signal c_30_27_0_False_resize: signed(25 downto 0);
  signal c_30_27_0_False_shift: signed(25 downto 0);
  signal c_30_24_0_False_resize: signed(25 downto 0);
  signal c_30_24_0_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(1 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_resize: signed(25 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_22_0_False_resize: signed(25 downto 0);
  signal c_32_22_0_False_shift: signed(25 downto 0);
  signal c_32_24_0_False_resize: signed(25 downto 0);
  signal c_32_24_0_False_shift: signed(25 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_resize: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_resize: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_12_0_False_resize: signed(25 downto 0);
  signal c_35_12_0_False_shift: signed(25 downto 0);
  signal c_35_22_0_False_resize: signed(25 downto 0);
  signal c_35_22_0_False_shift: signed(25 downto 0);
  signal c_35_24_1_False_resize: signed(25 downto 0);
  signal c_35_24_1_False_shift: signed(25 downto 0);
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
  -- output node 0 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 1 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 2 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_33);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[2], [1], [256]]
  c_1_0_0_False_resize <= resize(c_0, 24);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 24);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  c_1_0_8_False_resize <= resize(c_0, 24);
  c_1_0_8_False_shift <= shift_left(c_1_0_8_False_resize, 8);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_0_False_shift;
        when "01" => c_1 <= c_1_0_1_False_shift;
        when others => c_1 <= c_1_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [4], [1]]
  c_2_0_0_False_resize <= resize(c_0, 18);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[1], [-3], [257]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 18,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[2], [-3], [2056]]
  c_4_3_0_False_resize <= resize(c_3, 28);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_3_3_False_resize <= resize(c_3, 28);
  c_4_3_3_False_shift <= shift_left(c_4_3_3_False_resize, 3);
  c_4_3_1_False_resize <= resize(c_3, 28);
  c_4_3_1_False_shift <= shift_left(c_4_3_1_False_resize, 1);
  with config_select_3 select c_4_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_3_0_False_shift;
        when "01" => c_4 <= c_4_3_3_False_shift;
        when others => c_4 <= c_4_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[16], [-384], [257]]
  c_5_3_4_False_resize <= c_3;
  c_5_3_4_False_shift <= shift_left(c_5_3_4_False_resize, 4);
  c_5_3_7_False_resize <= c_3;
  c_5_3_7_False_shift <= shift_left(c_5_3_7_False_resize, 7);
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_3_4_False_shift;
        when "01" => c_5 <= c_5_3_7_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 6 and associated fundamentals [[18], [381], [2313]]
  with config_select_4 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 28,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[16], [1], [1]]
  c_7_0_0_False_resize <= resize(c_0, 20);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_4_False_resize <= resize(c_0, 20);
  c_7_0_4_False_shift <= shift_left(c_7_0_4_False_resize, 4);
  with config_select_1 select c_7_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_0_False_shift;
        when others => c_7 <= c_7_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[1], [8], [8]]
  c_8_0_3_False_resize <= resize(c_0, 19);
  c_8_0_3_False_shift <= shift_left(c_8_0_3_False_resize, 3);
  c_8_0_0_False_resize <= resize(c_0, 19);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  with config_select_1 select c_8_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_0_3_False_shift;
        when others => c_8 <= c_8_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[15], [-7], [9]]
  with config_select_2 select c_9_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[30], [-7], [257]]
  c_10_9_0_False_resize <= resize(c_9, 25);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_9_1_False_resize <= resize(c_9, 25);
  c_10_9_1_False_shift <= shift_left(c_10_9_1_False_resize, 1);
  c_10_3_0_False_resize <= c_3;
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_9_0_False_shift;
        when "01" => c_10 <= c_10_9_1_False_shift;
        when others => c_10 <= c_10_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[1], [-3], [72]]
  c_11_9_3_False_resize <= resize(c_9, 23);
  c_11_9_3_False_shift <= shift_left(c_11_9_3_False_resize, 3);
  c_11_3_0_False_resize <= c_3(22 downto 0);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_9_3_False_shift;
        when others => c_11 <= c_11_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[61], [-11], [442]]
  with config_select_4 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 13 and associated fundamentals [[64], [16], [1]]
  c_13_0_4_False_resize <= resize(c_0, 22);
  c_13_0_4_False_shift <= shift_left(c_13_0_4_False_resize, 4);
  c_13_0_0_False_resize <= resize(c_0, 22);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  c_13_0_6_False_resize <= resize(c_0, 22);
  c_13_0_6_False_shift <= shift_left(c_13_0_6_False_resize, 6);
  with config_select_1 select c_13_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_0_4_False_shift;
        when "01" => c_13 <= c_13_0_0_False_shift;
        when others => c_13 <= c_13_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[8], [16], [1]]
  c_14_0_4_False_resize <= resize(c_0, 20);
  c_14_0_4_False_shift <= shift_left(c_14_0_4_False_resize, 4);
  c_14_0_0_False_resize <= resize(c_0, 20);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_3_False_resize <= resize(c_0, 20);
  c_14_0_3_False_shift <= shift_left(c_14_0_3_False_resize, 3);
  with config_select_1 select c_14_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_0_4_False_shift;
        when "01" => c_14 <= c_14_0_0_False_shift;
        when others => c_14 <= c_14_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 15 and associated fundamentals [[504], [112], [7]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 25,
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
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 16 and associated fundamentals [[262], [337], [545]]
  with config_select_5 select c_16_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      sub_i => c_16_sub_sel,
      x_i => c_6,
      y_i => c_12,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 17 and associated fundamentals [[1], [2], [2]]
  c_17_0_1_False_resize <= resize(c_0, 17);
  c_17_0_1_False_shift <= shift_left(c_17_0_1_False_resize, 1);
  c_17_0_0_False_resize <= resize(c_0, 17);
  c_17_0_0_False_shift <= shift_left(c_17_0_0_False_resize, 0);
  with config_select_1 select c_17_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_0_1_False_shift;
        when others => c_17 <= c_17_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 18 and associated fundamentals [[1], [1], [4]]
  c_18_0_0_False_resize <= resize(c_0, 18);
  c_18_0_0_False_shift <= shift_left(c_18_0_0_False_resize, 0);
  c_18_0_2_False_resize <= resize(c_0, 18);
  c_18_0_2_False_shift <= shift_left(c_18_0_2_False_resize, 2);
  with config_select_1 select c_18_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_0_0_False_shift;
        when others => c_18 <= c_18_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 19 and associated fundamentals [[7], [17], [20]]
  with config_select_2 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 18,
      w_o => 21,
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
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 20 and associated fundamentals [[728], [656], [647]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 5,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_19,
      y_i => c_15,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[15], [-7], [36]]
  c_21_9_0_False_resize <= resize(c_9, 22);
  c_21_9_0_False_shift <= shift_left(c_21_9_0_False_resize, 0);
  c_21_9_2_False_resize <= resize(c_9, 22);
  c_21_9_2_False_shift <= shift_left(c_21_9_2_False_resize, 2);
  with config_select_3 select c_21_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_9_0_False_shift;
        when others => c_21 <= c_21_9_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 22 and associated fundamentals [[743], [663], [683]]
  with config_select_4 select c_22_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[1], [17], [160]]
  c_23_19_3_False_resize <= resize(c_19, 24);
  c_23_19_3_False_shift <= shift_left(c_23_19_3_False_resize, 3);
  c_23_3_0_False_resize <= c_3(23 downto 0);
  c_23_3_0_False_shift <= shift_left(c_23_3_0_False_resize, 0);
  c_23_19_0_False_resize <= resize(c_19, 24);
  c_23_19_0_False_shift <= shift_left(c_23_19_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_19_3_False_shift;
        when "01" => c_23 <= c_23_3_0_False_shift;
        when others => c_23 <= c_23_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 24 and associated fundamentals [[727], [673], [487]]
  with config_select_4 select c_24_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
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
      sub_i => c_24_sub_sel,
      x_i => c_20,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[504], [-7], [160]]
  c_25_9_0_False_resize <= resize(c_9, 25);
  c_25_9_0_False_shift <= shift_left(c_25_9_0_False_resize, 0);
  c_25_19_3_False_resize <= resize(c_19, 25);
  c_25_19_3_False_shift <= shift_left(c_25_19_3_False_resize, 3);
  c_25_15_0_False_resize <= c_15;
  c_25_15_0_False_shift <= shift_left(c_25_15_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_9_0_False_shift;
        when "01" => c_25 <= c_25_19_3_False_shift;
        when others => c_25 <= c_25_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 26 and associated fundamentals [[15], [-192], [257]]
  c_26_9_0_False_resize <= resize(c_9, 25);
  c_26_9_0_False_shift <= shift_left(c_26_9_0_False_resize, 0);
  c_26_3_0_False_resize <= c_3;
  c_26_3_0_False_shift <= shift_left(c_26_3_0_False_resize, 0);
  c_26_3_6_False_resize <= c_3;
  c_26_3_6_False_shift <= shift_left(c_26_3_6_False_resize, 6);
  with config_select_3 select c_26_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_9_0_False_shift;
        when "01" => c_26 <= c_26_3_0_False_shift;
        when others => c_26 <= c_26_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 27 and associated fundamentals [[489], [185], [417]]
  with config_select_4 select c_27_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
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
      sub_i => c_27_sub_sel,
      x_i => c_25,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 28 and associated fundamentals [[489], [381], [834]]
  c_28_27_0_False_resize <= resize(c_27, 26);
  c_28_27_0_False_shift <= shift_left(c_28_27_0_False_resize, 0);
  c_28_27_1_False_resize <= resize(c_27, 26);
  c_28_27_1_False_shift <= shift_left(c_28_27_1_False_resize, 1);
  c_28_6_0_False_resize <= c_6;
  c_28_6_0_False_shift <= shift_left(c_28_6_0_False_resize, 0);
  with config_select_5 select c_28_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_27_0_False_shift;
        when "01" => c_28 <= c_28_27_1_False_shift;
        when others => c_28 <= c_28_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 29 and associated fundamentals [[489], [381], [834]]
  c_29_resize <= c_28;
  c_29 <= shift_left(c_29_resize, 0);
  -- node of type 'mux' in stage 5 with id 30 and associated fundamentals [[727], [185], [442]]
  c_30_12_0_False_resize <= resize(c_12, 26);
  c_30_12_0_False_shift <= shift_left(c_30_12_0_False_resize, 0);
  c_30_27_0_False_resize <= resize(c_27, 26);
  c_30_27_0_False_shift <= shift_left(c_30_27_0_False_resize, 0);
  c_30_24_0_False_resize <= c_24;
  c_30_24_0_False_shift <= shift_left(c_30_24_0_False_resize, 0);
  with config_select_5 select c_30_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "00" => c_30 <= c_30_12_0_False_shift;
        when "01" => c_30 <= c_30_27_0_False_shift;
        when others => c_30 <= c_30_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 31 and associated fundamentals [[727], [185], [442]]
  c_31_resize <= c_30;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'mux' in stage 5 with id 32 and associated fundamentals [[743], [673], [683]]
  c_32_22_0_False_resize <= c_22;
  c_32_22_0_False_shift <= shift_left(c_32_22_0_False_resize, 0);
  c_32_24_0_False_resize <= c_24;
  c_32_24_0_False_shift <= shift_left(c_32_24_0_False_resize, 0);
  with config_select_5 select c_32_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_22_0_False_shift;
        when others => c_32 <= c_32_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 33 and associated fundamentals [[743], [673], [683]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'output' in stage 5 with id 34 and associated fundamentals [[262], [337], [545]]
  c_34_resize <= c_16;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 5 with id 35 and associated fundamentals [[61], [663], [974]]
  c_35_12_0_False_resize <= resize(c_12, 26);
  c_35_12_0_False_shift <= shift_left(c_35_12_0_False_resize, 0);
  c_35_22_0_False_resize <= c_22;
  c_35_22_0_False_shift <= shift_left(c_35_22_0_False_resize, 0);
  c_35_24_1_False_resize <= c_24;
  c_35_24_1_False_shift <= shift_left(c_35_24_1_False_resize, 1);
  with config_select_5 select c_35_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_12_0_False_shift;
        when "01" => c_35 <= c_35_22_0_False_shift;
        when others => c_35 <= c_35_24_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 36 and associated fundamentals [[61], [663], [974]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
end architecture;

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
  signal c_1: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_0_3_False_resize: signed(19 downto 0);
  signal c_1_0_3_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_0_1_False_resize: signed(18 downto 0);
  signal c_2_0_1_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(16 downto 0);
  signal c_4_0_0_False_resize: signed(16 downto 0);
  signal c_4_0_0_False_shift: signed(16 downto 0);
  signal c_4_0_1_False_resize: signed(16 downto 0);
  signal c_4_0_1_False_shift: signed(16 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_0_2_False_resize: signed(17 downto 0);
  signal c_5_0_2_False_shift: signed(17 downto 0);
  signal c_5_0_0_False_resize: signed(17 downto 0);
  signal c_5_0_0_False_shift: signed(17 downto 0);
  signal c_5_0_1_False_resize: signed(17 downto 0);
  signal c_5_0_1_False_shift: signed(17 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(17 downto 0);
  signal c_6_i0_resize: signed(17 downto 0);
  signal c_6_i1_resize: signed(17 downto 0);
  signal c_6_i0_shift: signed(17 downto 0);
  signal c_6_i1_shift: signed(17 downto 0);
  signal c_6_arith: signed(17 downto 0);
  signal c_6_oshift: signed(17 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_3_1_False_resize: signed(24 downto 0);
  signal c_7_3_1_False_shift: signed(24 downto 0);
  signal c_7_3_0_False_resize: signed(24 downto 0);
  signal c_7_3_0_False_shift: signed(24 downto 0);
  signal c_7_6_7_False_resize: signed(24 downto 0);
  signal c_7_6_7_False_shift: signed(24 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_6_6_False_resize: signed(23 downto 0);
  signal c_8_6_6_False_shift: signed(23 downto 0);
  signal c_8_3_4_False_resize: signed(23 downto 0);
  signal c_8_3_4_False_shift: signed(23 downto 0);
  signal c_8_6_0_False_resize: signed(23 downto 0);
  signal c_8_6_0_False_shift: signed(23 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_10_0_0_False_resize: signed(19 downto 0);
  signal c_10_0_0_False_shift: signed(19 downto 0);
  signal c_10_0_3_False_resize: signed(19 downto 0);
  signal c_10_0_3_False_shift: signed(19 downto 0);
  signal c_10_0_4_False_resize: signed(19 downto 0);
  signal c_10_0_4_False_shift: signed(19 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_0_5_False_resize: signed(20 downto 0);
  signal c_11_0_5_False_shift: signed(20 downto 0);
  signal c_11_0_0_False_resize: signed(20 downto 0);
  signal c_11_0_0_False_shift: signed(20 downto 0);
  signal c_11_0_2_False_resize: signed(20 downto 0);
  signal c_11_0_2_False_shift: signed(20 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_12_i0_resize: signed(20 downto 0);
  signal c_12_i1_resize: signed(20 downto 0);
  signal c_12_i0_shift: signed(20 downto 0);
  signal c_12_i1_shift: signed(20 downto 0);
  signal c_12_arith: signed(20 downto 0);
  signal c_12_oshift: signed(20 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_12_3_False_resize: signed(22 downto 0);
  signal c_13_12_3_False_shift: signed(22 downto 0);
  signal c_13_12_1_False_resize: signed(22 downto 0);
  signal c_13_12_1_False_shift: signed(22 downto 0);
  signal c_13_12_0_False_resize: signed(22 downto 0);
  signal c_13_12_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_3_0_False_resize: signed(23 downto 0);
  signal c_14_3_0_False_shift: signed(23 downto 0);
  signal c_14_12_3_False_resize: signed(23 downto 0);
  signal c_14_12_3_False_shift: signed(23 downto 0);
  signal c_14_12_5_False_resize: signed(23 downto 0);
  signal c_14_12_5_False_shift: signed(23 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(20 downto 0);
  signal c_16_3_0_False_resize: signed(20 downto 0);
  signal c_16_3_0_False_shift: signed(20 downto 0);
  signal c_16_12_0_False_resize: signed(20 downto 0);
  signal c_16_12_0_False_shift: signed(20 downto 0);
  signal c_16_6_0_False_resize: signed(20 downto 0);
  signal c_16_6_0_False_shift: signed(20 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_12_0_False_resize: signed(21 downto 0);
  signal c_17_12_0_False_shift: signed(21 downto 0);
  signal c_17_12_3_False_resize: signed(21 downto 0);
  signal c_17_12_3_False_shift: signed(21 downto 0);
  signal c_17_6_6_False_resize: signed(21 downto 0);
  signal c_17_6_6_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(22 downto 0);
  signal c_19_6_6_False_resize: signed(22 downto 0);
  signal c_19_6_6_False_shift: signed(22 downto 0);
  signal c_19_6_0_False_resize: signed(22 downto 0);
  signal c_19_6_0_False_shift: signed(22 downto 0);
  signal c_19_3_3_False_resize: signed(22 downto 0);
  signal c_19_3_3_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_12_3_False_resize: signed(22 downto 0);
  signal c_20_12_3_False_shift: signed(22 downto 0);
  signal c_20_6_0_False_resize: signed(22 downto 0);
  signal c_20_6_0_False_shift: signed(22 downto 0);
  signal c_20_12_0_False_resize: signed(22 downto 0);
  signal c_20_12_0_False_shift: signed(22 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_i0_resize: signed(23 downto 0);
  signal c_21_i1_resize: signed(23 downto 0);
  signal c_21_i0_shift: signed(23 downto 0);
  signal c_21_i1_shift: signed(23 downto 0);
  signal c_21_arith: signed(23 downto 0);
  signal c_21_oshift: signed(23 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(19 downto 0);
  signal c_22_6_1_False_resize: signed(19 downto 0);
  signal c_22_6_1_False_shift: signed(19 downto 0);
  signal c_22_3_0_False_resize: signed(19 downto 0);
  signal c_22_3_0_False_shift: signed(19 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_23_3_0_False_resize: signed(22 downto 0);
  signal c_23_3_0_False_shift: signed(22 downto 0);
  signal c_23_12_3_False_resize: signed(22 downto 0);
  signal c_23_12_3_False_shift: signed(22 downto 0);
  signal c_23_6_0_False_resize: signed(22 downto 0);
  signal c_23_6_0_False_shift: signed(22 downto 0);
  signal c_23_6_2_False_resize: signed(22 downto 0);
  signal c_23_6_2_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(23 downto 0);
  signal c_25_18_0_False_resize: signed(23 downto 0);
  signal c_25_18_0_False_shift: signed(23 downto 0);
  signal c_25_9_0_False_resize: signed(23 downto 0);
  signal c_25_9_0_False_shift: signed(23 downto 0);
  signal c_25_15_0_False_resize: signed(23 downto 0);
  signal c_25_15_0_False_shift: signed(23 downto 0);
  signal c_25_24_0_False_resize: signed(23 downto 0);
  signal c_25_24_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_resize: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_18_0_False_resize: signed(23 downto 0);
  signal c_27_18_0_False_shift: signed(23 downto 0);
  signal c_27_24_1_False_resize: signed(23 downto 0);
  signal c_27_24_1_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_resize: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_15_0_False_resize: signed(23 downto 0);
  signal c_29_15_0_False_shift: signed(23 downto 0);
  signal c_29_21_0_False_resize: signed(23 downto 0);
  signal c_29_21_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_resize: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_21_0_False_resize: signed(23 downto 0);
  signal c_31_21_0_False_shift: signed(23 downto 0);
  signal c_31_24_0_False_resize: signed(23 downto 0);
  signal c_31_24_0_False_shift: signed(23 downto 0);
  signal c_31_15_1_False_resize: signed(23 downto 0);
  signal c_31_15_1_False_shift: signed(23 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_resize: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_9_0_False_resize: signed(23 downto 0);
  signal c_33_9_0_False_shift: signed(23 downto 0);
  signal c_33_15_0_False_resize: signed(23 downto 0);
  signal c_33_15_0_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_resize: signed(23 downto 0);
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
  -- output node 0 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 1 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 2 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 3 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 4 with id 34
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_34);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [8], [16], [1]]
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 20);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_4_False_shift;
        when "01" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[8], [1], [1], [2]]
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 19);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_1_False_shift;
        when others => c_2 <= c_2_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[17], [6], [14], [-3]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 21,
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
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[2], [1], [2], [2]]
  c_4_0_0_False_resize <= resize(c_0, 17);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_1_False_resize <= resize(c_0, 17);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [2], [1], [4]]
  c_5_0_2_False_resize <= resize(c_0, 18);
  c_5_0_2_False_shift <= shift_left(c_5_0_2_False_resize, 2);
  c_5_0_0_False_resize <= resize(c_0, 18);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_1_False_resize <= resize(c_0, 18);
  c_5_0_1_False_shift <= shift_left(c_5_0_1_False_resize, 1);
  with config_select_1 select c_5_sel <= 
    "00" when "11",
    "01" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_2_False_shift;
        when "01" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 6 and associated fundamentals [[1], [-1], [1], [-2]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 18,
      w_o => 18,
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
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[17], [12], [14], [-256]]
  c_7_3_1_False_resize <= resize(c_3, 25);
  c_7_3_1_False_shift <= shift_left(c_7_3_1_False_resize, 1);
  c_7_3_0_False_resize <= resize(c_3, 25);
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_6_7_False_resize <= resize(c_6, 25);
  c_7_6_7_False_shift <= shift_left(c_7_6_7_False_resize, 7);
  with config_select_3 select c_7_sel <= 
    "00" when "01",
    "01" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_3_1_False_shift;
        when "01" => c_7 <= c_7_3_0_False_shift;
        when others => c_7 <= c_7_6_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[64], [-64], [224], [-2]]
  c_8_6_6_False_resize <= resize(c_6, 24);
  c_8_6_6_False_shift <= shift_left(c_8_6_6_False_resize, 6);
  c_8_3_4_False_resize <= resize(c_3, 24);
  c_8_3_4_False_shift <= shift_left(c_8_3_4_False_resize, 4);
  c_8_6_0_False_resize <= resize(c_6, 24);
  c_8_6_0_False_shift <= shift_left(c_8_6_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_6_6_False_shift;
        when "01" => c_8 <= c_8_3_4_False_shift;
        when others => c_8 <= c_8_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 9 and associated fundamentals [[-47], [76], [-210], [-254]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
      w_o => 24,
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
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[16], [1], [1], [8]]
  c_10_0_0_False_resize <= resize(c_0, 20);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_0_3_False_resize <= resize(c_0, 20);
  c_10_0_3_False_shift <= shift_left(c_10_0_3_False_resize, 3);
  c_10_0_4_False_resize <= resize(c_0, 20);
  c_10_0_4_False_shift <= shift_left(c_10_0_4_False_resize, 4);
  with config_select_1 select c_10_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_0_0_False_shift;
        when "01" => c_10 <= c_10_0_3_False_shift;
        when others => c_10 <= c_10_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 11 and associated fundamentals [[1], [32], [4], [1]]
  c_11_0_5_False_resize <= resize(c_0, 21);
  c_11_0_5_False_shift <= shift_left(c_11_0_5_False_resize, 5);
  c_11_0_0_False_resize <= resize(c_0, 21);
  c_11_0_0_False_shift <= shift_left(c_11_0_0_False_resize, 0);
  c_11_0_2_False_resize <= resize(c_0, 21);
  c_11_0_2_False_shift <= shift_left(c_11_0_2_False_resize, 2);
  with config_select_1 select c_11_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_0_5_False_shift;
        when "01" => c_11 <= c_11_0_0_False_shift;
        when others => c_11 <= c_11_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 12 and associated fundamentals [[15], [-31], [5], [7]]
  with config_select_2 select c_12_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      sub_i => c_12_sub_sel,
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[120], [-62], [5], [56]]
  c_13_12_3_False_resize <= resize(c_12, 23);
  c_13_12_3_False_shift <= shift_left(c_13_12_3_False_resize, 3);
  c_13_12_1_False_resize <= resize(c_12, 23);
  c_13_12_1_False_shift <= shift_left(c_13_12_1_False_resize, 1);
  c_13_12_0_False_resize <= resize(c_12, 23);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "00" when "00",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_12_3_False_shift;
        when "01" => c_13 <= c_13_12_1_False_shift;
        when others => c_13 <= c_13_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[120], [6], [160], [-3]]
  c_14_3_0_False_resize <= resize(c_3, 24);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  c_14_12_3_False_resize <= resize(c_12, 24);
  c_14_12_3_False_shift <= shift_left(c_14_12_3_False_resize, 3);
  c_14_12_5_False_resize <= resize(c_12, 24);
  c_14_12_5_False_shift <= shift_left(c_14_12_5_False_resize, 5);
  with config_select_3 select c_14_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_3_0_False_shift;
        when "01" => c_14 <= c_14_12_3_False_shift;
        when others => c_14 <= c_14_12_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 15 and associated fundamentals [[120], [-130], [-150], [109]]
  with config_select_4 select c_15_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[15], [-31], [1], [-3]]
  c_16_3_0_False_resize <= c_3;
  c_16_3_0_False_shift <= shift_left(c_16_3_0_False_resize, 0);
  c_16_12_0_False_resize <= c_12;
  c_16_12_0_False_shift <= shift_left(c_16_12_0_False_resize, 0);
  c_16_6_0_False_resize <= resize(c_6, 21);
  c_16_6_0_False_shift <= shift_left(c_16_6_0_False_resize, 0);
  with config_select_3 select c_16_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_3_0_False_shift;
        when "01" => c_16 <= c_16_12_0_False_shift;
        when others => c_16 <= c_16_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[64], [-31], [40], [56]]
  c_17_12_0_False_resize <= resize(c_12, 22);
  c_17_12_0_False_shift <= shift_left(c_17_12_0_False_resize, 0);
  c_17_12_3_False_resize <= resize(c_12, 22);
  c_17_12_3_False_shift <= shift_left(c_17_12_3_False_resize, 3);
  c_17_6_6_False_resize <= resize(c_6, 22);
  c_17_6_6_False_shift <= shift_left(c_17_6_6_False_resize, 6);
  with config_select_3 select c_17_sel <= 
    "00" when "01",
    "01" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_12_0_False_shift;
        when "01" => c_17 <= c_17_12_3_False_shift;
        when others => c_17 <= c_17_6_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 18 and associated fundamentals [[-241], [-155], [-159], [221]]
  with config_select_4 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[1], [-64], [112], [-24]]
  c_19_6_6_False_resize <= resize(c_6, 23);
  c_19_6_6_False_shift <= shift_left(c_19_6_6_False_resize, 6);
  c_19_6_0_False_resize <= resize(c_6, 23);
  c_19_6_0_False_shift <= shift_left(c_19_6_0_False_resize, 0);
  c_19_3_3_False_resize <= resize(c_3, 23);
  c_19_3_3_False_shift <= shift_left(c_19_3_3_False_resize, 3);
  with config_select_3 select c_19_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_6_6_False_shift;
        when "01" => c_19 <= c_19_6_0_False_shift;
        when others => c_19 <= c_19_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[120], [-1], [1], [7]]
  c_20_12_3_False_resize <= resize(c_12, 23);
  c_20_12_3_False_shift <= shift_left(c_20_12_3_False_resize, 3);
  c_20_6_0_False_resize <= resize(c_6, 23);
  c_20_6_0_False_shift <= shift_left(c_20_6_0_False_resize, 0);
  c_20_12_0_False_resize <= resize(c_12, 23);
  c_20_12_0_False_shift <= shift_left(c_20_12_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "00" when "00",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_12_3_False_shift;
        when "01" => c_20 <= c_20_6_0_False_shift;
        when others => c_20 <= c_20_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[-118], [-127], [223], [-41]]
  with config_select_4 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[2], [6], [14], [-4]]
  c_22_6_1_False_resize <= resize(c_6, 20);
  c_22_6_1_False_shift <= shift_left(c_22_6_1_False_resize, 1);
  c_22_3_0_False_resize <= c_3(19 downto 0);
  c_22_3_0_False_shift <= shift_left(c_22_3_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "0" when "11",
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_6_1_False_shift;
        when others => c_22 <= c_22_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[120], [-1], [4], [-3]]
  c_23_3_0_False_resize <= resize(c_3, 23);
  c_23_3_0_False_shift <= shift_left(c_23_3_0_False_resize, 0);
  c_23_12_3_False_resize <= resize(c_12, 23);
  c_23_12_3_False_shift <= shift_left(c_23_12_3_False_resize, 3);
  c_23_6_0_False_resize <= resize(c_6, 23);
  c_23_6_0_False_shift <= shift_left(c_23_6_0_False_resize, 0);
  c_23_6_2_False_resize <= resize(c_6, 23);
  c_23_6_2_False_shift <= shift_left(c_23_6_2_False_resize, 2);
  with config_select_3 select c_23_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_3_0_False_shift;
        when "01" => c_23 <= c_23_12_3_False_shift;
        when "10" => c_23 <= c_23_6_0_False_shift;
        when others => c_23 <= c_23_6_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 24 and associated fundamentals [[152], [95], [220], [-61]]
  with config_select_4 select c_24_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
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
      sub_i => c_24_sub_sel,
      x_i => c_22,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 25 and associated fundamentals [[120], [76], [220], [221]]
  c_25_18_0_False_resize <= c_18;
  c_25_18_0_False_shift <= shift_left(c_25_18_0_False_resize, 0);
  c_25_9_0_False_resize <= c_9;
  c_25_9_0_False_shift <= shift_left(c_25_9_0_False_resize, 0);
  c_25_15_0_False_resize <= c_15;
  c_25_15_0_False_shift <= shift_left(c_25_15_0_False_resize, 0);
  c_25_24_0_False_resize <= c_24;
  c_25_24_0_False_shift <= shift_left(c_25_24_0_False_resize, 0);
  with config_select_5 select c_25_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_18_0_False_shift;
        when "01" => c_25 <= c_25_9_0_False_shift;
        when "10" => c_25 <= c_25_15_0_False_shift;
        when others => c_25 <= c_25_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 26 and associated fundamentals [[120], [76], [220], [221]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'mux' in stage 5 with id 27 and associated fundamentals [[-241], [-155], [-159], [-122]]
  c_27_18_0_False_resize <= c_18;
  c_27_18_0_False_shift <= shift_left(c_27_18_0_False_resize, 0);
  c_27_24_1_False_resize <= c_24;
  c_27_24_1_False_shift <= shift_left(c_27_24_1_False_resize, 1);
  with config_select_5 select c_27_sel <= 
    "0" when "10",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_18_0_False_shift;
        when others => c_27 <= c_27_24_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[241], [155], [159], [122]]
  c_28_resize <= c_27;
  c_28 <= -shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 5 with id 29 and associated fundamentals [[-118], [-127], [-150], [-41]]
  c_29_15_0_False_resize <= c_15;
  c_29_15_0_False_shift <= shift_left(c_29_15_0_False_resize, 0);
  c_29_21_0_False_resize <= c_21;
  c_29_21_0_False_shift <= shift_left(c_29_21_0_False_resize, 0);
  with config_select_5 select c_29_sel <= 
    "0" when "10",
    "1" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_15_0_False_shift;
        when others => c_29 <= c_29_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[118], [127], [150], [41]]
  c_30_resize <= c_29;
  c_30 <= -shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[152], [95], [223], [218]]
  c_31_21_0_False_resize <= c_21;
  c_31_21_0_False_shift <= shift_left(c_31_21_0_False_resize, 0);
  c_31_24_0_False_resize <= c_24;
  c_31_24_0_False_shift <= shift_left(c_31_24_0_False_resize, 0);
  c_31_15_1_False_resize <= c_15;
  c_31_15_1_False_shift <= shift_left(c_31_15_1_False_resize, 1);
  with config_select_5 select c_31_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_21_0_False_shift;
        when "01" => c_31 <= c_31_24_0_False_shift;
        when others => c_31 <= c_31_15_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[152], [95], [223], [218]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 5 with id 33 and associated fundamentals [[-47], [-130], [-210], [-254]]
  c_33_9_0_False_resize <= c_9;
  c_33_9_0_False_shift <= shift_left(c_33_9_0_False_resize, 0);
  c_33_15_0_False_resize <= c_15;
  c_33_15_0_False_shift <= shift_left(c_33_15_0_False_resize, 0);
  with config_select_5 select c_33_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_9_0_False_shift;
        when others => c_33 <= c_33_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 34 and associated fundamentals [[47], [130], [210], [254]]
  c_34_resize <= c_33;
  c_34 <= -shift_left(c_34_resize, 0);
end architecture;

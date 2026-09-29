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
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(20 downto 0);
  signal c_2_0_0_False_resize: signed(20 downto 0);
  signal c_2_0_0_False_shift: signed(20 downto 0);
  signal c_2_0_5_False_resize: signed(20 downto 0);
  signal c_2_0_5_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(25 downto 0);
  signal c_3_i0_resize: signed(25 downto 0);
  signal c_3_i1_resize: signed(25 downto 0);
  signal c_3_i0_shift: signed(25 downto 0);
  signal c_3_i1_shift: signed(25 downto 0);
  signal c_3_arith: signed(25 downto 0);
  signal c_3_oshift: signed(25 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_i0_resize: signed(20 downto 0);
  signal c_5_i1_resize: signed(20 downto 0);
  signal c_5_i0_shift: signed(20 downto 0);
  signal c_5_i1_shift: signed(20 downto 0);
  signal c_5_arith: signed(20 downto 0);
  signal c_5_oshift: signed(20 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(20 downto 0);
  signal c_6_0_1_False_resize: signed(20 downto 0);
  signal c_6_0_1_False_shift: signed(20 downto 0);
  signal c_6_0_5_False_resize: signed(20 downto 0);
  signal c_6_0_5_False_shift: signed(20 downto 0);
  signal c_6_0_0_False_resize: signed(20 downto 0);
  signal c_6_0_0_False_shift: signed(20 downto 0);
  signal c_6_sel: std_logic_vector(1 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_0_2_False_resize: signed(20 downto 0);
  signal c_7_0_2_False_shift: signed(20 downto 0);
  signal c_7_0_0_False_resize: signed(20 downto 0);
  signal c_7_0_0_False_shift: signed(20 downto 0);
  signal c_7_0_5_False_resize: signed(20 downto 0);
  signal c_7_0_5_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_i0_resize: signed(20 downto 0);
  signal c_8_i1_resize: signed(20 downto 0);
  signal c_8_i0_shift: signed(20 downto 0);
  signal c_8_i1_shift: signed(20 downto 0);
  signal c_8_arith: signed(20 downto 0);
  signal c_8_oshift: signed(20 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(25 downto 0);
  signal c_9_8_0_False_resize: signed(25 downto 0);
  signal c_9_8_0_False_shift: signed(25 downto 0);
  signal c_9_3_0_False_resize: signed(25 downto 0);
  signal c_9_3_0_False_shift: signed(25 downto 0);
  signal c_9_5_0_False_resize: signed(25 downto 0);
  signal c_9_5_0_False_shift: signed(25 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_5_5_False_resize: signed(25 downto 0);
  signal c_10_5_5_False_shift: signed(25 downto 0);
  signal c_10_5_0_False_resize: signed(25 downto 0);
  signal c_10_5_0_False_shift: signed(25 downto 0);
  signal c_10_8_5_False_resize: signed(25 downto 0);
  signal c_10_8_5_False_shift: signed(25 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(25 downto 0);
  signal c_12_0_0_False_resize: signed(25 downto 0);
  signal c_12_0_0_False_shift: signed(25 downto 0);
  signal c_12_0_10_False_resize: signed(25 downto 0);
  signal c_12_0_10_False_shift: signed(25 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(17 downto 0);
  signal c_13_0_0_False_resize: signed(17 downto 0);
  signal c_13_0_0_False_shift: signed(17 downto 0);
  signal c_13_0_2_False_resize: signed(17 downto 0);
  signal c_13_0_2_False_shift: signed(17 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(26 downto 0);
  signal c_14_i0_resize: signed(26 downto 0);
  signal c_14_i1_resize: signed(26 downto 0);
  signal c_14_i0_shift: signed(26 downto 0);
  signal c_14_i1_shift: signed(26 downto 0);
  signal c_14_arith: signed(26 downto 0);
  signal c_14_oshift: signed(26 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_5_2_False_resize: signed(22 downto 0);
  signal c_15_5_2_False_shift: signed(22 downto 0);
  signal c_15_8_0_False_resize: signed(22 downto 0);
  signal c_15_8_0_False_shift: signed(22 downto 0);
  signal c_15_5_1_False_resize: signed(22 downto 0);
  signal c_15_5_1_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(26 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(25 downto 0);
  signal c_18_5_2_False_resize: signed(25 downto 0);
  signal c_18_5_2_False_shift: signed(25 downto 0);
  signal c_18_5_0_False_resize: signed(25 downto 0);
  signal c_18_5_0_False_shift: signed(25 downto 0);
  signal c_18_5_6_False_resize: signed(25 downto 0);
  signal c_18_5_6_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_14_4_False_resize: signed(22 downto 0);
  signal c_19_14_4_False_shift: signed(22 downto 0);
  signal c_19_14_0_False_resize: signed(22 downto 0);
  signal c_19_14_0_False_shift: signed(22 downto 0);
  signal c_19_5_0_False_resize: signed(22 downto 0);
  signal c_19_5_0_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(26 downto 0);
  signal c_21_8_6_False_resize: signed(26 downto 0);
  signal c_21_8_6_False_shift: signed(26 downto 0);
  signal c_21_3_0_False_resize: signed(26 downto 0);
  signal c_21_3_0_False_shift: signed(26 downto 0);
  signal c_21_14_0_False_resize: signed(26 downto 0);
  signal c_21_14_0_False_shift: signed(26 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(27 downto 0);
  signal c_22_8_2_False_resize: signed(27 downto 0);
  signal c_22_8_2_False_shift: signed(27 downto 0);
  signal c_22_14_1_False_resize: signed(27 downto 0);
  signal c_22_14_1_False_shift: signed(27 downto 0);
  signal c_22_8_0_False_resize: signed(27 downto 0);
  signal c_22_8_0_False_shift: signed(27 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(23 downto 0);
  signal c_24_5_4_False_resize: signed(23 downto 0);
  signal c_24_5_4_False_shift: signed(23 downto 0);
  signal c_24_8_5_False_resize: signed(23 downto 0);
  signal c_24_8_5_False_shift: signed(23 downto 0);
  signal c_24_8_0_False_resize: signed(23 downto 0);
  signal c_24_8_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_5_3_False_resize: signed(23 downto 0);
  signal c_25_5_3_False_shift: signed(23 downto 0);
  signal c_25_8_0_False_resize: signed(23 downto 0);
  signal c_25_8_0_False_shift: signed(23 downto 0);
  signal c_25_3_0_False_resize: signed(23 downto 0);
  signal c_25_3_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_i0_resize: signed(23 downto 0);
  signal c_26_i1_resize: signed(23 downto 0);
  signal c_26_i0_shift: signed(23 downto 0);
  signal c_26_i1_shift: signed(23 downto 0);
  signal c_26_arith: signed(23 downto 0);
  signal c_26_oshift: signed(23 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(25 downto 0);
  signal c_27_20_0_False_resize: signed(25 downto 0);
  signal c_27_20_0_False_shift: signed(25 downto 0);
  signal c_27_11_0_False_resize: signed(25 downto 0);
  signal c_27_11_0_False_shift: signed(25 downto 0);
  signal c_27_26_3_False_resize: signed(25 downto 0);
  signal c_27_26_3_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_17_4_False_resize: signed(25 downto 0);
  signal c_29_17_4_False_shift: signed(25 downto 0);
  signal c_29_23_0_False_resize: signed(25 downto 0);
  signal c_29_23_0_False_shift: signed(25 downto 0);
  signal c_29_17_0_False_resize: signed(25 downto 0);
  signal c_29_17_0_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_20_1_False_resize: signed(25 downto 0);
  signal c_31_20_1_False_shift: signed(25 downto 0);
  signal c_31_26_2_False_resize: signed(25 downto 0);
  signal c_31_26_2_False_shift: signed(25 downto 0);
  signal c_31_11_0_False_resize: signed(25 downto 0);
  signal c_31_11_0_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_11_0_False_resize: signed(25 downto 0);
  signal c_33_11_0_False_shift: signed(25 downto 0);
  signal c_33_23_1_False_resize: signed(25 downto 0);
  signal c_33_23_1_False_shift: signed(25 downto 0);
  signal c_33_26_1_False_resize: signed(25 downto 0);
  signal c_33_26_1_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_resize: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_23_0_False_resize: signed(25 downto 0);
  signal c_35_23_0_False_shift: signed(25 downto 0);
  signal c_35_20_0_False_resize: signed(25 downto 0);
  signal c_35_20_0_False_shift: signed(25 downto 0);
  signal c_35_17_0_False_resize: signed(25 downto 0);
  signal c_35_17_0_False_shift: signed(25 downto 0);
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
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [3], [5]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
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
      c_1 <= c_1_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[32], [1], [32]]
  c_2_0_0_False_resize <= resize(c_0, 21);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 21);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[256], [736], [256]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 26,
      s_x_i => 8,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 5 and associated fundamentals [[21], [11], [21]]
  with config_select_2 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
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
      sub_i => c_5_sub_sel,
      x_i => c_1,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[2], [32], [1]]
  c_6_0_1_False_resize <= resize(c_0, 21);
  c_6_0_1_False_shift <= shift_left(c_6_0_1_False_resize, 1);
  c_6_0_5_False_resize <= resize(c_0, 21);
  c_6_0_5_False_shift <= shift_left(c_6_0_5_False_resize, 5);
  c_6_0_0_False_resize <= resize(c_0, 21);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  with config_select_1 select c_6_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "00" => c_6 <= c_6_0_1_False_shift;
        when "01" => c_6 <= c_6_0_5_False_shift;
        when others => c_6 <= c_6_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[1], [4], [32]]
  c_7_0_2_False_resize <= resize(c_0, 21);
  c_7_0_2_False_shift <= shift_left(c_7_0_2_False_resize, 2);
  c_7_0_0_False_resize <= resize(c_0, 21);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_5_False_resize <= resize(c_0, 21);
  c_7_0_5_False_shift <= shift_left(c_7_0_5_False_resize, 5);
  with config_select_1 select c_7_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_2_False_shift;
        when "01" => c_7 <= c_7_0_0_False_shift;
        when others => c_7 <= c_7_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[3], [28], [-31]]
  with config_select_2 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[3], [736], [21]]
  c_9_8_0_False_resize <= resize(c_8, 26);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  c_9_3_0_False_resize <= c_3;
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  c_9_5_0_False_resize <= resize(c_5, 26);
  c_9_5_0_False_shift <= shift_left(c_9_5_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_8_0_False_shift;
        when "01" => c_9 <= c_9_3_0_False_shift;
        when others => c_9 <= c_9_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[672], [11], [-992]]
  c_10_5_5_False_resize <= resize(c_5, 26);
  c_10_5_5_False_shift <= shift_left(c_10_5_5_False_resize, 5);
  c_10_5_0_False_resize <= resize(c_5, 26);
  c_10_5_0_False_shift <= shift_left(c_10_5_0_False_resize, 0);
  c_10_8_5_False_resize <= resize(c_8, 26);
  c_10_8_5_False_shift <= shift_left(c_10_8_5_False_resize, 5);
  with config_select_3 select c_10_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_5_5_False_shift;
        when "01" => c_10 <= c_10_5_0_False_shift;
        when others => c_10 <= c_10_8_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[675], [747], [1013]]
  with config_select_4 select c_11_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
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
  -- node of type 'mux' in stage 1 with id 12 and associated fundamentals [[1], [1], [1024]]
  c_12_0_0_False_resize <= resize(c_0, 26);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  c_12_0_10_False_resize <= resize(c_0, 26);
  c_12_0_10_False_shift <= shift_left(c_12_0_10_False_resize, 10);
  with config_select_1 select c_12_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_0_0_False_shift;
        when others => c_12 <= c_12_0_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 13 and associated fundamentals [[4], [4], [1]]
  c_13_0_0_False_resize <= resize(c_0, 18);
  c_13_0_0_False_shift <= shift_left(c_13_0_0_False_resize, 0);
  c_13_0_2_False_resize <= resize(c_0, 18);
  c_13_0_2_False_shift <= shift_left(c_13_0_2_False_resize, 2);
  with config_select_1 select c_13_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_0_0_False_shift;
        when others => c_13 <= c_13_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 14 and associated fundamentals [[5], [5], [1025]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 18,
      w_o => 27,
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
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[42], [28], [84]]
  c_15_5_2_False_resize <= resize(c_5, 23);
  c_15_5_2_False_shift <= shift_left(c_15_5_2_False_resize, 2);
  c_15_8_0_False_resize <= resize(c_8, 23);
  c_15_8_0_False_shift <= shift_left(c_15_8_0_False_resize, 0);
  c_15_5_1_False_resize <= resize(c_5, 23);
  c_15_5_1_False_shift <= shift_left(c_15_5_1_False_resize, 1);
  with config_select_3 select c_15_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_5_2_False_shift;
        when "01" => c_15 <= c_15_8_0_False_shift;
        when others => c_15 <= c_15_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[5], [5], [1025]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[37], [33], [-941]]
  with config_select_4 select c_17_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 27,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[21], [704], [84]]
  c_18_5_2_False_resize <= resize(c_5, 26);
  c_18_5_2_False_shift <= shift_left(c_18_5_2_False_resize, 2);
  c_18_5_0_False_resize <= resize(c_5, 26);
  c_18_5_0_False_shift <= shift_left(c_18_5_0_False_resize, 0);
  c_18_5_6_False_resize <= resize(c_5, 26);
  c_18_5_6_False_shift <= shift_left(c_18_5_6_False_resize, 6);
  with config_select_3 select c_18_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_5_2_False_shift;
        when "01" => c_18 <= c_18_5_0_False_shift;
        when others => c_18 <= c_18_5_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[80], [5], [21]]
  c_19_14_4_False_resize <= c_14(22 downto 0);
  c_19_14_4_False_shift <= shift_left(c_19_14_4_False_resize, 4);
  c_19_14_0_False_resize <= c_14(22 downto 0);
  c_19_14_0_False_shift <= shift_left(c_19_14_0_False_resize, 0);
  c_19_5_0_False_resize <= resize(c_5, 23);
  c_19_5_0_False_shift <= shift_left(c_19_5_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_14_4_False_shift;
        when "01" => c_19 <= c_19_14_0_False_shift;
        when others => c_19 <= c_19_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[-59], [709], [63]]
  with config_select_4 select c_20_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      sub_i => c_20_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[256], [5], [-1984]]
  c_21_8_6_False_resize <= resize(c_8, 27);
  c_21_8_6_False_shift <= shift_left(c_21_8_6_False_resize, 6);
  c_21_3_0_False_resize <= resize(c_3, 27);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  c_21_14_0_False_resize <= c_14;
  c_21_14_0_False_shift <= shift_left(c_21_14_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_8_6_False_shift;
        when "01" => c_21 <= c_21_3_0_False_shift;
        when others => c_21 <= c_21_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[3], [112], [2050]]
  c_22_8_2_False_resize <= resize(c_8, 28);
  c_22_8_2_False_shift <= shift_left(c_22_8_2_False_resize, 2);
  c_22_14_1_False_resize <= resize(c_14, 28);
  c_22_14_1_False_shift <= shift_left(c_22_14_1_False_resize, 1);
  c_22_8_0_False_resize <= resize(c_8, 28);
  c_22_8_0_False_shift <= shift_left(c_22_8_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_8_2_False_shift;
        when "01" => c_22 <= c_22_14_1_False_shift;
        when others => c_22 <= c_22_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 23 and associated fundamentals [[253], [-107], [66]]
  with config_select_4 select c_23_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 28,
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
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[96], [176], [-31]]
  c_24_5_4_False_resize <= resize(c_5, 24);
  c_24_5_4_False_shift <= shift_left(c_24_5_4_False_resize, 4);
  c_24_8_5_False_resize <= resize(c_8, 24);
  c_24_8_5_False_shift <= shift_left(c_24_8_5_False_resize, 5);
  c_24_8_0_False_resize <= resize(c_8, 24);
  c_24_8_0_False_shift <= shift_left(c_24_8_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_5_4_False_shift;
        when "01" => c_24 <= c_24_8_5_False_shift;
        when others => c_24 <= c_24_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[3], [88], [256]]
  c_25_5_3_False_resize <= resize(c_5, 24);
  c_25_5_3_False_shift <= shift_left(c_25_5_3_False_resize, 3);
  c_25_8_0_False_resize <= resize(c_8, 24);
  c_25_8_0_False_shift <= shift_left(c_25_8_0_False_resize, 0);
  c_25_3_0_False_resize <= c_3(23 downto 0);
  c_25_3_0_False_shift <= shift_left(c_25_3_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_5_3_False_shift;
        when "01" => c_25 <= c_25_8_0_False_shift;
        when others => c_25 <= c_25_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 26 and associated fundamentals [[93], [88], [225]]
  with config_select_4 select c_26_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_26_sub_sel,
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
  -- node of type 'mux' in stage 5 with id 27 and associated fundamentals [[744], [709], [1013]]
  c_27_20_0_False_resize <= c_20;
  c_27_20_0_False_shift <= shift_left(c_27_20_0_False_resize, 0);
  c_27_11_0_False_resize <= c_11;
  c_27_11_0_False_shift <= shift_left(c_27_11_0_False_resize, 0);
  c_27_26_3_False_resize <= resize(c_26, 26);
  c_27_26_3_False_shift <= shift_left(c_27_26_3_False_resize, 3);
  with config_select_5 select c_27_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_20_0_False_shift;
        when "01" => c_27 <= c_27_11_0_False_shift;
        when others => c_27 <= c_27_26_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[744], [709], [1013]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 5 with id 29 and associated fundamentals [[592], [33], [66]]
  c_29_17_4_False_resize <= c_17;
  c_29_17_4_False_shift <= shift_left(c_29_17_4_False_resize, 4);
  c_29_23_0_False_resize <= resize(c_23, 26);
  c_29_23_0_False_shift <= shift_left(c_29_23_0_False_resize, 0);
  c_29_17_0_False_resize <= c_17;
  c_29_17_0_False_shift <= shift_left(c_29_17_0_False_resize, 0);
  with config_select_5 select c_29_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_17_4_False_shift;
        when "01" => c_29 <= c_29_23_0_False_shift;
        when others => c_29 <= c_29_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[592], [33], [66]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[675], [352], [126]]
  c_31_20_1_False_resize <= c_20;
  c_31_20_1_False_shift <= shift_left(c_31_20_1_False_resize, 1);
  c_31_26_2_False_resize <= resize(c_26, 26);
  c_31_26_2_False_shift <= shift_left(c_31_26_2_False_resize, 2);
  c_31_11_0_False_resize <= c_11;
  c_31_11_0_False_shift <= shift_left(c_31_11_0_False_resize, 0);
  with config_select_5 select c_31_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_20_1_False_shift;
        when "01" => c_31 <= c_31_26_2_False_shift;
        when others => c_31 <= c_31_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[675], [352], [126]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 5 with id 33 and associated fundamentals [[506], [747], [450]]
  c_33_11_0_False_resize <= c_11;
  c_33_11_0_False_shift <= shift_left(c_33_11_0_False_resize, 0);
  c_33_23_1_False_resize <= resize(c_23, 26);
  c_33_23_1_False_shift <= shift_left(c_33_23_1_False_resize, 1);
  c_33_26_1_False_resize <= resize(c_26, 26);
  c_33_26_1_False_shift <= shift_left(c_33_26_1_False_resize, 1);
  with config_select_5 select c_33_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_11_0_False_shift;
        when "01" => c_33 <= c_33_23_1_False_shift;
        when others => c_33 <= c_33_26_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 34 and associated fundamentals [[506], [747], [450]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 5 with id 35 and associated fundamentals [[-59], [-107], [-941]]
  c_35_23_0_False_resize <= resize(c_23, 26);
  c_35_23_0_False_shift <= shift_left(c_35_23_0_False_resize, 0);
  c_35_20_0_False_resize <= c_20;
  c_35_20_0_False_shift <= shift_left(c_35_20_0_False_resize, 0);
  c_35_17_0_False_resize <= c_17;
  c_35_17_0_False_shift <= shift_left(c_35_17_0_False_resize, 0);
  with config_select_5 select c_35_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_23_0_False_shift;
        when "01" => c_35 <= c_35_20_0_False_shift;
        when others => c_35 <= c_35_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 36 and associated fundamentals [[59], [107], [941]]
  c_36_resize <= c_35;
  c_36 <= -shift_left(c_36_resize, 0);
end architecture;

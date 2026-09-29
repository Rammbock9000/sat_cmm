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
    y_3: out std_logic_vector(24 downto 0);
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
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(23 downto 0);
  signal c_2_0_0_False_resize: signed(23 downto 0);
  signal c_2_0_0_False_shift: signed(23 downto 0);
  signal c_2_0_8_False_resize: signed(23 downto 0);
  signal c_2_0_8_False_shift: signed(23 downto 0);
  signal c_2_0_6_False_resize: signed(23 downto 0);
  signal c_2_0_6_False_shift: signed(23 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_i0_resize: signed(19 downto 0);
  signal c_4_i1_resize: signed(19 downto 0);
  signal c_4_i0_shift: signed(19 downto 0);
  signal c_4_i1_shift: signed(19 downto 0);
  signal c_4_arith: signed(19 downto 0);
  signal c_4_oshift: signed(19 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(19 downto 0);
  signal c_5_0_4_False_resize: signed(19 downto 0);
  signal c_5_0_4_False_shift: signed(19 downto 0);
  signal c_5_0_1_False_resize: signed(19 downto 0);
  signal c_5_0_1_False_shift: signed(19 downto 0);
  signal c_5_0_0_False_resize: signed(19 downto 0);
  signal c_5_0_0_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_i0_resize: signed(24 downto 0);
  signal c_7_i1_resize: signed(24 downto 0);
  signal c_7_i0_shift: signed(24 downto 0);
  signal c_7_i1_shift: signed(24 downto 0);
  signal c_7_arith: signed(24 downto 0);
  signal c_7_oshift: signed(24 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_0_0_False_resize: signed(22 downto 0);
  signal c_8_0_0_False_shift: signed(22 downto 0);
  signal c_8_0_7_False_resize: signed(22 downto 0);
  signal c_8_0_7_False_shift: signed(22 downto 0);
  signal c_8_0_5_False_resize: signed(22 downto 0);
  signal c_8_0_5_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_7_1_False_resize: signed(23 downto 0);
  signal c_10_7_1_False_shift: signed(23 downto 0);
  signal c_10_9_0_False_resize: signed(23 downto 0);
  signal c_10_9_0_False_shift: signed(23 downto 0);
  signal c_10_9_1_False_resize: signed(23 downto 0);
  signal c_10_9_1_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_7_0_False_resize: signed(24 downto 0);
  signal c_11_7_0_False_shift: signed(24 downto 0);
  signal c_11_9_0_False_resize: signed(24 downto 0);
  signal c_11_9_0_False_shift: signed(24 downto 0);
  signal c_11_3_0_False_resize: signed(24 downto 0);
  signal c_11_3_0_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(26 downto 0);
  signal c_15_14_0_False_resize: signed(26 downto 0);
  signal c_15_14_0_False_shift: signed(26 downto 0);
  signal c_15_9_6_False_resize: signed(26 downto 0);
  signal c_15_9_6_False_shift: signed(26 downto 0);
  signal c_15_9_3_False_resize: signed(26 downto 0);
  signal c_15_9_3_False_shift: signed(26 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_7_0_False_resize: signed(24 downto 0);
  signal c_16_7_0_False_shift: signed(24 downto 0);
  signal c_16_7_2_False_resize: signed(24 downto 0);
  signal c_16_7_2_False_shift: signed(24 downto 0);
  signal c_16_7_4_False_resize: signed(24 downto 0);
  signal c_16_7_4_False_shift: signed(24 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(23 downto 0);
  signal c_18_9_0_False_resize: signed(23 downto 0);
  signal c_18_9_0_False_shift: signed(23 downto 0);
  signal c_18_3_3_False_resize: signed(23 downto 0);
  signal c_18_3_3_False_shift: signed(23 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_14_0_False_resize: signed(25 downto 0);
  signal c_19_14_0_False_shift: signed(25 downto 0);
  signal c_19_3_0_False_resize: signed(25 downto 0);
  signal c_19_3_0_False_shift: signed(25 downto 0);
  signal c_19_7_0_False_resize: signed(25 downto 0);
  signal c_19_7_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(24 downto 0);
  signal c_21_7_0_False_resize: signed(24 downto 0);
  signal c_21_7_0_False_shift: signed(24 downto 0);
  signal c_21_3_0_False_resize: signed(24 downto 0);
  signal c_21_3_0_False_shift: signed(24 downto 0);
  signal c_21_13_0_False_resize: signed(24 downto 0);
  signal c_21_13_0_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_14_0_False_resize: signed(25 downto 0);
  signal c_22_14_0_False_shift: signed(25 downto 0);
  signal c_22_9_0_False_resize: signed(25 downto 0);
  signal c_22_9_0_False_shift: signed(25 downto 0);
  signal c_22_3_1_False_resize: signed(25 downto 0);
  signal c_22_3_1_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(25 downto 0);
  signal c_24_14_1_False_resize: signed(25 downto 0);
  signal c_24_14_1_False_shift: signed(25 downto 0);
  signal c_24_14_0_False_resize: signed(25 downto 0);
  signal c_24_14_0_False_shift: signed(25 downto 0);
  signal c_24_3_6_False_resize: signed(25 downto 0);
  signal c_24_3_6_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_9_0_False_resize: signed(22 downto 0);
  signal c_25_9_0_False_shift: signed(22 downto 0);
  signal c_25_7_1_False_resize: signed(22 downto 0);
  signal c_25_7_1_False_shift: signed(22 downto 0);
  signal c_25_13_2_False_resize: signed(22 downto 0);
  signal c_25_13_2_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_i0_resize: signed(25 downto 0);
  signal c_26_i1_resize: signed(25 downto 0);
  signal c_26_i0_shift: signed(25 downto 0);
  signal c_26_i1_shift: signed(25 downto 0);
  signal c_26_arith: signed(25 downto 0);
  signal c_26_oshift: signed(25 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(25 downto 0);
  signal c_27_17_0_False_resize: signed(25 downto 0);
  signal c_27_17_0_False_shift: signed(25 downto 0);
  signal c_27_23_0_False_resize: signed(25 downto 0);
  signal c_27_23_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_12_0_False_resize: signed(25 downto 0);
  signal c_29_12_0_False_shift: signed(25 downto 0);
  signal c_29_17_0_False_resize: signed(25 downto 0);
  signal c_29_17_0_False_shift: signed(25 downto 0);
  signal c_29_20_0_False_resize: signed(25 downto 0);
  signal c_29_20_0_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_26_0_False_resize: signed(25 downto 0);
  signal c_31_26_0_False_shift: signed(25 downto 0);
  signal c_31_12_0_False_resize: signed(25 downto 0);
  signal c_31_12_0_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_23_0_False_resize: signed(24 downto 0);
  signal c_33_23_0_False_shift: signed(24 downto 0);
  signal c_33_20_0_False_resize: signed(24 downto 0);
  signal c_33_20_0_False_shift: signed(24 downto 0);
  signal c_33_26_0_False_resize: signed(24 downto 0);
  signal c_33_26_0_False_shift: signed(24 downto 0);
  signal c_33_sel: std_logic_vector(1 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_34_resize: signed(24 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_12_1_False_resize: signed(25 downto 0);
  signal c_35_12_1_False_shift: signed(25 downto 0);
  signal c_35_20_0_False_resize: signed(25 downto 0);
  signal c_35_20_0_False_shift: signed(25 downto 0);
  signal c_35_23_0_False_resize: signed(25 downto 0);
  signal c_35_23_0_False_shift: signed(25 downto 0);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [8], [1]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[256], [1], [64]]
  c_2_0_0_False_resize <= resize(c_0, 24);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_8_False_resize <= resize(c_0, 24);
  c_2_0_8_False_shift <= shift_left(c_2_0_8_False_resize, 8);
  c_2_0_6_False_resize <= resize(c_0, 24);
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
        when "01" => c_2 <= c_2_0_8_False_shift;
        when others => c_2 <= c_2_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[-255], [7], [-63]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 4 and associated fundamentals [[7], [9], [9]]
  with config_select_1 select c_4_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
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
      sub_i => c_4_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [16], [2]]
  c_5_0_4_False_resize <= resize(c_0, 20);
  c_5_0_4_False_shift <= shift_left(c_5_0_4_False_resize, 4);
  c_5_0_1_False_resize <= resize(c_0, 20);
  c_5_0_1_False_shift <= shift_left(c_5_0_1_False_resize, 1);
  c_5_0_0_False_resize <= resize(c_0, 20);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_4_False_shift;
        when "01" => c_5 <= c_5_0_1_False_shift;
        when others => c_5 <= c_5_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_0 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 7 and associated fundamentals [[30], [510], [62]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 25,
      s_x_i => 5,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[32], [1], [128]]
  c_8_0_0_False_resize <= resize(c_0, 23);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_7_False_resize <= resize(c_0, 23);
  c_8_0_7_False_shift <= shift_left(c_8_0_7_False_resize, 7);
  c_8_0_5_False_resize <= resize(c_0, 23);
  c_8_0_5_False_shift <= shift_left(c_8_0_5_False_resize, 5);
  with config_select_1 select c_8_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_0_False_shift;
        when "01" => c_8 <= c_8_0_7_False_shift;
        when others => c_8 <= c_8_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 9 and associated fundamentals [[46], [19], [146]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      x_i => c_4,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[60], [38], [146]]
  c_10_7_1_False_resize <= c_7(23 downto 0);
  c_10_7_1_False_shift <= shift_left(c_10_7_1_False_resize, 1);
  c_10_9_0_False_resize <= c_9;
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_9_1_False_resize <= c_9;
  c_10_9_1_False_shift <= shift_left(c_10_9_1_False_resize, 1);
  with config_select_3 select c_10_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_7_1_False_shift;
        when "01" => c_10 <= c_10_9_0_False_shift;
        when others => c_10 <= c_10_9_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[46], [510], [-63]]
  c_11_7_0_False_resize <= c_7;
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  c_11_9_0_False_resize <= resize(c_9, 25);
  c_11_9_0_False_shift <= shift_left(c_11_9_0_False_resize, 0);
  c_11_3_0_False_resize <= resize(c_3, 25);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_7_0_False_shift;
        when "01" => c_11 <= c_11_9_0_False_shift;
        when others => c_11 <= c_11_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 12 and associated fundamentals [[286], [662], [521]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 13 and associated fundamentals [[28], [36], [108]]
  with config_select_2 select c_13_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_13_sub_sel,
      x_i => c_4,
      y_i => c_4,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 14 and associated fundamentals [[455], [-567], [585]]
  with config_select_2 select c_14_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 26,
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
      sub_i => c_14_sub_sel,
      x_i => c_4,
      y_i => c_4,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[368], [1216], [585]]
  c_15_14_0_False_resize <= resize(c_14, 27);
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  c_15_9_6_False_resize <= resize(c_9, 27);
  c_15_9_6_False_shift <= shift_left(c_15_9_6_False_resize, 6);
  c_15_9_3_False_resize <= resize(c_9, 27);
  c_15_9_3_False_shift <= shift_left(c_15_9_3_False_resize, 3);
  with config_select_3 select c_15_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_14_0_False_shift;
        when "01" => c_15 <= c_15_9_6_False_shift;
        when others => c_15 <= c_15_9_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 16 and associated fundamentals [[480], [510], [248]]
  c_16_7_0_False_resize <= c_7;
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  c_16_7_2_False_resize <= c_7;
  c_16_7_2_False_shift <= shift_left(c_16_7_2_False_resize, 2);
  c_16_7_4_False_resize <= c_7;
  c_16_7_4_False_shift <= shift_left(c_16_7_4_False_resize, 4);
  with config_select_3 select c_16_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_7_0_False_shift;
        when "01" => c_16 <= c_16_7_2_False_shift;
        when others => c_16 <= c_16_7_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[848], [706], [337]]
  with config_select_4 select c_17_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 27,
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
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[46], [56], [146]]
  c_18_9_0_False_resize <= c_9;
  c_18_9_0_False_shift <= shift_left(c_18_9_0_False_resize, 0);
  c_18_3_3_False_resize <= c_3;
  c_18_3_3_False_shift <= shift_left(c_18_3_3_False_resize, 3);
  with config_select_3 select c_18_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_9_0_False_shift;
        when others => c_18 <= c_18_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 19 and associated fundamentals [[30], [7], [585]]
  c_19_14_0_False_resize <= c_14;
  c_19_14_0_False_shift <= shift_left(c_19_14_0_False_resize, 0);
  c_19_3_0_False_resize <= resize(c_3, 26);
  c_19_3_0_False_shift <= shift_left(c_19_3_0_False_resize, 0);
  c_19_7_0_False_resize <= resize(c_7, 26);
  c_19_7_0_False_shift <= shift_left(c_19_7_0_False_resize, 0);
  with config_select_3 select c_19_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_14_0_False_shift;
        when "01" => c_19 <= c_19_3_0_False_shift;
        when others => c_19 <= c_19_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[338], [455], [583]]
  with config_select_4 select c_20_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
      w_o => 26,
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
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[-255], [510], [108]]
  c_21_7_0_False_resize <= c_7;
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  c_21_3_0_False_resize <= resize(c_3, 25);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  c_21_13_0_False_resize <= resize(c_13, 25);
  c_21_13_0_False_shift <= shift_left(c_21_13_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_7_0_False_shift;
        when "01" => c_21 <= c_21_3_0_False_shift;
        when others => c_21 <= c_21_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[-510], [19], [585]]
  c_22_14_0_False_resize <= c_14;
  c_22_14_0_False_shift <= shift_left(c_22_14_0_False_resize, 0);
  c_22_9_0_False_resize <= resize(c_9, 26);
  c_22_9_0_False_shift <= shift_left(c_22_9_0_False_resize, 0);
  c_22_3_1_False_resize <= resize(c_3, 26);
  c_22_3_1_False_shift <= shift_left(c_22_3_1_False_resize, 1);
  with config_select_3 select c_22_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_14_0_False_shift;
        when "01" => c_22 <= c_22_9_0_False_shift;
        when others => c_22 <= c_22_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 23 and associated fundamentals [[255], [491], [693]]
  with config_select_4 select c_23_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
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
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[910], [448], [585]]
  c_24_14_1_False_resize <= c_14;
  c_24_14_1_False_shift <= shift_left(c_24_14_1_False_resize, 1);
  c_24_14_0_False_resize <= c_14;
  c_24_14_0_False_shift <= shift_left(c_24_14_0_False_resize, 0);
  c_24_3_6_False_resize <= resize(c_3, 26);
  c_24_3_6_False_shift <= shift_left(c_24_3_6_False_resize, 6);
  with config_select_3 select c_24_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_14_1_False_shift;
        when "01" => c_24 <= c_24_14_0_False_shift;
        when others => c_24 <= c_24_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[112], [19], [124]]
  c_25_9_0_False_resize <= c_9(22 downto 0);
  c_25_9_0_False_shift <= shift_left(c_25_9_0_False_resize, 0);
  c_25_7_1_False_resize <= c_7(22 downto 0);
  c_25_7_1_False_shift <= shift_left(c_25_7_1_False_resize, 1);
  c_25_13_2_False_resize <= c_13;
  c_25_13_2_False_shift <= shift_left(c_25_13_2_False_resize, 2);
  with config_select_3 select c_25_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_9_0_False_shift;
        when "01" => c_25 <= c_25_7_1_False_shift;
        when others => c_25 <= c_25_13_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 26 and associated fundamentals [[1022], [429], [461]]
  with config_select_4 select c_26_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
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
      sub_i => c_26_sub_sel,
      x_i => c_24,
      y_i => c_25,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 27 and associated fundamentals [[255], [706], [337]]
  c_27_17_0_False_resize <= c_17;
  c_27_17_0_False_shift <= shift_left(c_27_17_0_False_resize, 0);
  c_27_23_0_False_resize <= c_23;
  c_27_23_0_False_shift <= shift_left(c_27_23_0_False_resize, 0);
  with config_select_5 select c_27_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_17_0_False_shift;
        when others => c_27 <= c_27_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[255], [706], [337]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 5 with id 29 and associated fundamentals [[848], [662], [583]]
  c_29_12_0_False_resize <= c_12;
  c_29_12_0_False_shift <= shift_left(c_29_12_0_False_resize, 0);
  c_29_17_0_False_resize <= c_17;
  c_29_17_0_False_shift <= shift_left(c_29_17_0_False_resize, 0);
  c_29_20_0_False_resize <= c_20;
  c_29_20_0_False_shift <= shift_left(c_29_20_0_False_resize, 0);
  with config_select_5 select c_29_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_12_0_False_shift;
        when "01" => c_29 <= c_29_17_0_False_shift;
        when others => c_29 <= c_29_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[848], [662], [583]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[1022], [429], [521]]
  c_31_26_0_False_resize <= c_26;
  c_31_26_0_False_shift <= shift_left(c_31_26_0_False_resize, 0);
  c_31_12_0_False_resize <= c_12;
  c_31_12_0_False_shift <= shift_left(c_31_12_0_False_resize, 0);
  with config_select_5 select c_31_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_26_0_False_shift;
        when others => c_31 <= c_31_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[1022], [429], [521]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 5 with id 33 and associated fundamentals [[338], [491], [461]]
  c_33_23_0_False_resize <= c_23(24 downto 0);
  c_33_23_0_False_shift <= shift_left(c_33_23_0_False_resize, 0);
  c_33_20_0_False_resize <= c_20(24 downto 0);
  c_33_20_0_False_shift <= shift_left(c_33_20_0_False_resize, 0);
  c_33_26_0_False_resize <= c_26(24 downto 0);
  c_33_26_0_False_shift <= shift_left(c_33_26_0_False_resize, 0);
  with config_select_5 select c_33_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "00" => c_33 <= c_33_23_0_False_shift;
        when "01" => c_33 <= c_33_20_0_False_shift;
        when others => c_33 <= c_33_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 34 and associated fundamentals [[338], [491], [461]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
  -- node of type 'mux' in stage 5 with id 35 and associated fundamentals [[572], [455], [693]]
  c_35_12_1_False_resize <= c_12;
  c_35_12_1_False_shift <= shift_left(c_35_12_1_False_resize, 1);
  c_35_20_0_False_resize <= c_20;
  c_35_20_0_False_shift <= shift_left(c_35_20_0_False_resize, 0);
  c_35_23_0_False_resize <= c_23;
  c_35_23_0_False_shift <= shift_left(c_35_23_0_False_resize, 0);
  with config_select_5 select c_35_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "00" => c_35 <= c_35_12_1_False_shift;
        when "01" => c_35 <= c_35_20_0_False_shift;
        when others => c_35 <= c_35_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 36 and associated fundamentals [[572], [455], [693]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
end architecture;

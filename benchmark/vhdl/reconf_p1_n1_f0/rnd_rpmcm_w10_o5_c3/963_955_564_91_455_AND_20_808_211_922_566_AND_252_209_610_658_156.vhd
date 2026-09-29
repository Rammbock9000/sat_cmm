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
  signal c_1_0_4_False_resize: signed(23 downto 0);
  signal c_1_0_4_False_shift: signed(23 downto 0);
  signal c_1_0_8_False_resize: signed(23 downto 0);
  signal c_1_0_8_False_shift: signed(23 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_0_4_False_resize: signed(20 downto 0);
  signal c_2_0_4_False_shift: signed(20 downto 0);
  signal c_2_0_0_False_resize: signed(20 downto 0);
  signal c_2_0_0_False_shift: signed(20 downto 0);
  signal c_2_0_5_False_resize: signed(20 downto 0);
  signal c_2_0_5_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_0_0_False_resize: signed(21 downto 0);
  signal c_4_0_0_False_shift: signed(21 downto 0);
  signal c_4_0_6_False_resize: signed(21 downto 0);
  signal c_4_0_6_False_shift: signed(21 downto 0);
  signal c_4_0_2_False_resize: signed(21 downto 0);
  signal c_4_0_2_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_0_0_False_resize: signed(23 downto 0);
  signal c_5_0_0_False_shift: signed(23 downto 0);
  signal c_5_0_8_False_resize: signed(23 downto 0);
  signal c_5_0_8_False_shift: signed(23 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_7_0_0_False_resize: signed(18 downto 0);
  signal c_7_0_0_False_shift: signed(18 downto 0);
  signal c_7_0_1_False_resize: signed(18 downto 0);
  signal c_7_0_1_False_shift: signed(18 downto 0);
  signal c_7_0_3_False_resize: signed(18 downto 0);
  signal c_7_0_3_False_shift: signed(18 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_0_4_False_resize: signed(22 downto 0);
  signal c_8_0_4_False_shift: signed(22 downto 0);
  signal c_8_0_7_False_resize: signed(22 downto 0);
  signal c_8_0_7_False_shift: signed(22 downto 0);
  signal c_8_0_0_False_resize: signed(22 downto 0);
  signal c_8_0_0_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(24 downto 0);
  signal c_11_6_0_False_resize: signed(24 downto 0);
  signal c_11_6_0_False_shift: signed(24 downto 0);
  signal c_11_9_1_False_resize: signed(24 downto 0);
  signal c_11_9_1_False_shift: signed(24 downto 0);
  signal c_11_3_1_False_resize: signed(24 downto 0);
  signal c_11_3_1_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_3_2_False_resize: signed(23 downto 0);
  signal c_12_3_2_False_shift: signed(23 downto 0);
  signal c_12_6_0_False_resize: signed(23 downto 0);
  signal c_12_6_0_False_shift: signed(23 downto 0);
  signal c_12_6_1_False_resize: signed(23 downto 0);
  signal c_12_6_1_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(21 downto 0);
  signal c_14_0_5_False_resize: signed(21 downto 0);
  signal c_14_0_5_False_shift: signed(21 downto 0);
  signal c_14_0_6_False_resize: signed(21 downto 0);
  signal c_14_0_6_False_shift: signed(21 downto 0);
  signal c_14_0_0_False_resize: signed(21 downto 0);
  signal c_14_0_0_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_0_0_False_resize: signed(23 downto 0);
  signal c_15_0_0_False_shift: signed(23 downto 0);
  signal c_15_0_8_False_resize: signed(23 downto 0);
  signal c_15_0_8_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_i0_resize: signed(24 downto 0);
  signal c_16_i1_resize: signed(24 downto 0);
  signal c_16_i0_shift: signed(24 downto 0);
  signal c_16_i1_shift: signed(24 downto 0);
  signal c_16_arith: signed(24 downto 0);
  signal c_16_oshift: signed(24 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(22 downto 0);
  signal c_17_3_1_False_resize: signed(22 downto 0);
  signal c_17_3_1_False_shift: signed(22 downto 0);
  signal c_17_6_0_False_resize: signed(22 downto 0);
  signal c_17_6_0_False_shift: signed(22 downto 0);
  signal c_17_6_1_False_resize: signed(22 downto 0);
  signal c_17_6_1_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_6_2_False_resize: signed(24 downto 0);
  signal c_18_6_2_False_shift: signed(24 downto 0);
  signal c_18_9_4_False_resize: signed(24 downto 0);
  signal c_18_9_4_False_shift: signed(24 downto 0);
  signal c_18_6_0_False_resize: signed(24 downto 0);
  signal c_18_6_0_False_shift: signed(24 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(24 downto 0);
  signal c_20_16_0_False_resize: signed(24 downto 0);
  signal c_20_16_0_False_shift: signed(24 downto 0);
  signal c_20_9_1_False_resize: signed(24 downto 0);
  signal c_20_9_1_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_i0_resize: signed(24 downto 0);
  signal c_21_i1_resize: signed(24 downto 0);
  signal c_21_i0_shift: signed(24 downto 0);
  signal c_21_i1_shift: signed(24 downto 0);
  signal c_21_arith: signed(24 downto 0);
  signal c_21_oshift: signed(24 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(25 downto 0);
  signal c_22_10_1_False_resize: signed(25 downto 0);
  signal c_22_10_1_False_shift: signed(25 downto 0);
  signal c_22_10_0_False_resize: signed(25 downto 0);
  signal c_22_10_0_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(26 downto 0);
  signal c_24_16_2_False_resize: signed(26 downto 0);
  signal c_24_16_2_False_shift: signed(26 downto 0);
  signal c_24_6_0_False_resize: signed(26 downto 0);
  signal c_24_6_0_False_shift: signed(26 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_3_4_False_resize: signed(24 downto 0);
  signal c_25_3_4_False_shift: signed(24 downto 0);
  signal c_25_6_0_False_resize: signed(24 downto 0);
  signal c_25_6_0_False_shift: signed(24 downto 0);
  signal c_25_3_0_False_resize: signed(24 downto 0);
  signal c_25_3_0_False_shift: signed(24 downto 0);
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
  signal c_27_26_0_False_resize: signed(25 downto 0);
  signal c_27_26_0_False_shift: signed(25 downto 0);
  signal c_27_13_0_False_resize: signed(25 downto 0);
  signal c_27_13_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_13_0_False_resize: signed(25 downto 0);
  signal c_29_13_0_False_shift: signed(25 downto 0);
  signal c_29_26_0_False_resize: signed(25 downto 0);
  signal c_29_26_0_False_shift: signed(25 downto 0);
  signal c_29_26_1_False_resize: signed(25 downto 0);
  signal c_29_26_1_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_19_0_False_resize: signed(25 downto 0);
  signal c_31_19_0_False_shift: signed(25 downto 0);
  signal c_31_21_1_False_resize: signed(25 downto 0);
  signal c_31_21_1_False_shift: signed(25 downto 0);
  signal c_31_21_0_False_resize: signed(25 downto 0);
  signal c_31_21_0_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(1 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_resize: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_21_2_False_resize: signed(25 downto 0);
  signal c_34_21_2_False_shift: signed(25 downto 0);
  signal c_34_19_0_False_resize: signed(25 downto 0);
  signal c_34_19_0_False_shift: signed(25 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_resize: signed(25 downto 0);
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
  -- output node 3 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 4 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_35);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[256], [1], [16]]
  c_1_0_0_False_resize <= resize(c_0, 24);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_4_False_resize <= resize(c_0, 24);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_8_False_resize <= resize(c_0, 24);
  c_1_0_8_False_shift <= shift_left(c_1_0_8_False_resize, 8);
  with config_select_1 select c_1_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_0_False_shift;
        when "01" => c_1 <= c_1_0_4_False_shift;
        when others => c_1 <= c_1_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [16], [32]]
  c_2_0_4_False_resize <= resize(c_0, 21);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  c_2_0_0_False_resize <= resize(c_0, 21);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 21);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_4_False_shift;
        when "01" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[255], [17], [48]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[64], [4], [1]]
  c_4_0_0_False_resize <= resize(c_0, 22);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_6_False_resize <= resize(c_0, 22);
  c_4_0_6_False_shift <= shift_left(c_4_0_6_False_resize, 6);
  c_4_0_2_False_resize <= resize(c_0, 22);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  with config_select_1 select c_4_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_0_0_False_shift;
        when "01" => c_4 <= c_4_0_6_False_shift;
        when others => c_4 <= c_4_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [1], [256]]
  c_5_0_0_False_resize <= resize(c_0, 24);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_8_False_resize <= resize(c_0, 24);
  c_5_0_8_False_shift <= shift_left(c_5_0_8_False_resize, 8);
  with config_select_1 select c_5_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 6 and associated fundamentals [[65], [5], [257]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 25,
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
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[2], [1], [8]]
  c_7_0_0_False_resize <= resize(c_0, 19);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_1_False_resize <= resize(c_0, 19);
  c_7_0_1_False_shift <= shift_left(c_7_0_1_False_resize, 1);
  c_7_0_3_False_resize <= resize(c_0, 19);
  c_7_0_3_False_shift <= shift_left(c_7_0_3_False_resize, 3);
  with config_select_1 select c_7_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_0_0_False_shift;
        when "01" => c_7 <= c_7_0_1_False_shift;
        when others => c_7 <= c_7_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[128], [16], [1]]
  c_8_0_4_False_resize <= resize(c_0, 23);
  c_8_0_4_False_shift <= shift_left(c_8_0_4_False_resize, 4);
  c_8_0_7_False_resize <= resize(c_0, 23);
  c_8_0_7_False_shift <= shift_left(c_8_0_7_False_resize, 7);
  c_8_0_0_False_resize <= resize(c_0, 23);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  with config_select_1 select c_8_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_4_False_shift;
        when "01" => c_8 <= c_8_0_7_False_shift;
        when others => c_8 <= c_8_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[132], [18], [15]]
  with config_select_2 select c_9_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
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
      sub_i => c_9_sub_sel,
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
  -- node of type 'add_sub' in stage 3 with id 10 and associated fundamentals [[546], [178], [24]]
  with config_select_3 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_3,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[510], [5], [30]]
  c_11_6_0_False_resize <= c_6;
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  c_11_9_1_False_resize <= resize(c_9, 25);
  c_11_9_1_False_shift <= shift_left(c_11_9_1_False_resize, 1);
  c_11_3_1_False_resize <= resize(c_3, 25);
  c_11_3_1_False_shift <= shift_left(c_11_3_1_False_resize, 1);
  with config_select_3 select c_11_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_6_0_False_shift;
        when "01" => c_11 <= c_11_9_1_False_shift;
        when others => c_11 <= c_11_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[65], [10], [192]]
  c_12_3_2_False_resize <= c_3;
  c_12_3_2_False_shift <= shift_left(c_12_3_2_False_resize, 2);
  c_12_6_0_False_resize <= c_6(23 downto 0);
  c_12_6_0_False_shift <= shift_left(c_12_6_0_False_resize, 0);
  c_12_6_1_False_resize <= c_6(23 downto 0);
  c_12_6_1_False_shift <= shift_left(c_12_6_1_False_resize, 1);
  with config_select_3 select c_12_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_3_2_False_shift;
        when "01" => c_12 <= c_12_6_0_False_shift;
        when others => c_12 <= c_12_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[955], [20], [252]]
  with config_select_4 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[1], [32], [64]]
  c_14_0_5_False_resize <= resize(c_0, 22);
  c_14_0_5_False_shift <= shift_left(c_14_0_5_False_resize, 5);
  c_14_0_6_False_resize <= resize(c_0, 22);
  c_14_0_6_False_shift <= shift_left(c_14_0_6_False_resize, 6);
  c_14_0_0_False_resize <= resize(c_0, 22);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  with config_select_1 select c_14_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_0_5_False_shift;
        when "01" => c_14 <= c_14_0_6_False_shift;
        when others => c_14 <= c_14_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 15 and associated fundamentals [[256], [1], [1]]
  c_15_0_0_False_resize <= resize(c_0, 24);
  c_15_0_0_False_shift <= shift_left(c_15_0_0_False_resize, 0);
  c_15_0_8_False_resize <= resize(c_0, 24);
  c_15_0_8_False_shift <= shift_left(c_15_0_8_False_resize, 8);
  with config_select_1 select c_15_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_0_0_False_shift;
        when others => c_15 <= c_15_0_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 16 and associated fundamentals [[257], [33], [63]]
  with config_select_2 select c_16_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
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
      sub_i => c_16_sub_sel,
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
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[65], [10], [96]]
  c_17_3_1_False_resize <= c_3(22 downto 0);
  c_17_3_1_False_shift <= shift_left(c_17_3_1_False_resize, 1);
  c_17_6_0_False_resize <= c_6(22 downto 0);
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  c_17_6_1_False_resize <= c_6(22 downto 0);
  c_17_6_1_False_shift <= shift_left(c_17_6_1_False_resize, 1);
  with config_select_3 select c_17_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_3_1_False_shift;
        when "01" => c_17 <= c_17_6_0_False_shift;
        when others => c_17 <= c_17_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[260], [288], [257]]
  c_18_6_2_False_resize <= c_6;
  c_18_6_2_False_shift <= shift_left(c_18_6_2_False_resize, 2);
  c_18_9_4_False_resize <= resize(c_9, 25);
  c_18_9_4_False_shift <= shift_left(c_18_9_4_False_resize, 4);
  c_18_6_0_False_resize <= c_6;
  c_18_6_0_False_shift <= shift_left(c_18_6_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_6_2_False_shift;
        when "01" => c_18 <= c_18_9_4_False_shift;
        when others => c_18 <= c_18_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 19 and associated fundamentals [[-455], [-566], [610]]
  with config_select_4 select c_19_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 26,
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
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[264], [33], [63]]
  c_20_16_0_False_resize <= c_16;
  c_20_16_0_False_shift <= shift_left(c_20_16_0_False_resize, 0);
  c_20_9_1_False_resize <= resize(c_9, 25);
  c_20_9_1_False_shift <= shift_left(c_20_9_1_False_resize, 1);
  with config_select_3 select c_20_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_16_0_False_shift;
        when others => c_20 <= c_20_9_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[282], [211], [-39]]
  with config_select_4 select c_21_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_21_sub_sel,
      x_i => c_10,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[546], [356], [48]]
  c_22_10_1_False_resize <= c_10;
  c_22_10_1_False_shift <= shift_left(c_22_10_1_False_resize, 1);
  c_22_10_0_False_resize <= c_10;
  c_22_10_0_False_shift <= shift_left(c_22_10_0_False_resize, 0);
  with config_select_4 select c_22_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_10_1_False_shift;
        when others => c_22 <= c_22_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 23 and associated fundamentals [[91], [922], [658]]
  with config_select_5 select c_23_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_19,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[1028], [132], [257]]
  c_24_16_2_False_resize <= resize(c_16, 27);
  c_24_16_2_False_shift <= shift_left(c_24_16_2_False_resize, 2);
  c_24_6_0_False_resize <= resize(c_6, 27);
  c_24_6_0_False_shift <= shift_left(c_24_6_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_16_2_False_shift;
        when others => c_24 <= c_24_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 25 and associated fundamentals [[65], [272], [48]]
  c_25_3_4_False_resize <= resize(c_3, 25);
  c_25_3_4_False_shift <= shift_left(c_25_3_4_False_resize, 4);
  c_25_6_0_False_resize <= c_6;
  c_25_6_0_False_shift <= shift_left(c_25_6_0_False_resize, 0);
  c_25_3_0_False_resize <= resize(c_3, 25);
  c_25_3_0_False_shift <= shift_left(c_25_3_0_False_resize, 0);
  with config_select_3 select c_25_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_3_4_False_shift;
        when "01" => c_25 <= c_25_6_0_False_shift;
        when others => c_25 <= c_25_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 26 and associated fundamentals [[963], [404], [209]]
  with config_select_4 select c_26_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
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
  -- node of type 'mux' in stage 5 with id 27 and associated fundamentals [[963], [20], [252]]
  c_27_26_0_False_resize <= c_26;
  c_27_26_0_False_shift <= shift_left(c_27_26_0_False_resize, 0);
  c_27_13_0_False_resize <= c_13;
  c_27_13_0_False_shift <= shift_left(c_27_13_0_False_resize, 0);
  with config_select_5 select c_27_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_26_0_False_shift;
        when others => c_27 <= c_27_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[963], [20], [252]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 5 with id 29 and associated fundamentals [[955], [808], [209]]
  c_29_13_0_False_resize <= c_13;
  c_29_13_0_False_shift <= shift_left(c_29_13_0_False_resize, 0);
  c_29_26_0_False_resize <= c_26;
  c_29_26_0_False_shift <= shift_left(c_29_26_0_False_resize, 0);
  c_29_26_1_False_resize <= c_26;
  c_29_26_1_False_shift <= shift_left(c_29_26_1_False_resize, 1);
  with config_select_5 select c_29_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_13_0_False_shift;
        when "01" => c_29 <= c_29_26_0_False_shift;
        when others => c_29 <= c_29_26_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[955], [808], [209]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[564], [211], [610]]
  c_31_19_0_False_resize <= c_19;
  c_31_19_0_False_shift <= shift_left(c_31_19_0_False_resize, 0);
  c_31_21_1_False_resize <= resize(c_21, 26);
  c_31_21_1_False_shift <= shift_left(c_31_21_1_False_resize, 1);
  c_31_21_0_False_resize <= resize(c_21, 26);
  c_31_21_0_False_shift <= shift_left(c_31_21_0_False_resize, 0);
  with config_select_5 select c_31_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "00" => c_31 <= c_31_19_0_False_shift;
        when "01" => c_31 <= c_31_21_1_False_shift;
        when others => c_31 <= c_31_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[564], [211], [610]]
  c_32_resize <= c_31;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'output' in stage 5 with id 33 and associated fundamentals [[91], [922], [658]]
  c_33_resize <= c_23;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 5 with id 34 and associated fundamentals [[-455], [-566], [-156]]
  c_34_21_2_False_resize <= resize(c_21, 26);
  c_34_21_2_False_shift <= shift_left(c_34_21_2_False_resize, 2);
  c_34_19_0_False_resize <= c_19;
  c_34_19_0_False_shift <= shift_left(c_34_19_0_False_resize, 0);
  with config_select_5 select c_34_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_21_2_False_shift;
        when others => c_34 <= c_34_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 35 and associated fundamentals [[455], [566], [156]]
  c_35_resize <= c_34;
  c_35 <= -shift_left(c_35_resize, 0);
end architecture;

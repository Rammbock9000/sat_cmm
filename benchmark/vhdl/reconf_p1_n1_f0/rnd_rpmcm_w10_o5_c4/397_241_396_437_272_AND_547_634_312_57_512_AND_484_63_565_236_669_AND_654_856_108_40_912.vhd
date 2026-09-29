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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(21 downto 0);
  signal c_3_0_0_False_resize: signed(21 downto 0);
  signal c_3_0_0_False_shift: signed(21 downto 0);
  signal c_3_0_2_False_resize: signed(21 downto 0);
  signal c_3_0_2_False_shift: signed(21 downto 0);
  signal c_3_0_6_False_resize: signed(21 downto 0);
  signal c_3_0_6_False_shift: signed(21 downto 0);
  signal c_3_0_4_False_resize: signed(21 downto 0);
  signal c_3_0_4_False_shift: signed(21 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(18 downto 0);
  signal c_5_0_3_False_resize: signed(18 downto 0);
  signal c_5_0_3_False_shift: signed(18 downto 0);
  signal c_5_0_0_False_resize: signed(18 downto 0);
  signal c_5_0_0_False_shift: signed(18 downto 0);
  signal c_5_0_2_False_resize: signed(18 downto 0);
  signal c_5_0_2_False_shift: signed(18 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(16 downto 0);
  signal c_6_0_0_False_resize: signed(16 downto 0);
  signal c_6_0_0_False_shift: signed(16 downto 0);
  signal c_6_0_1_False_resize: signed(16 downto 0);
  signal c_6_0_1_False_shift: signed(16 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(18 downto 0);
  signal c_8_0_2_False_resize: signed(18 downto 0);
  signal c_8_0_2_False_shift: signed(18 downto 0);
  signal c_8_0_3_False_resize: signed(18 downto 0);
  signal c_8_0_3_False_shift: signed(18 downto 0);
  signal c_8_0_0_False_resize: signed(18 downto 0);
  signal c_8_0_0_False_shift: signed(18 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_i0_resize: signed(25 downto 0);
  signal c_9_i1_resize: signed(25 downto 0);
  signal c_9_i0_shift: signed(25 downto 0);
  signal c_9_i1_shift: signed(25 downto 0);
  signal c_9_arith: signed(25 downto 0);
  signal c_9_oshift: signed(25 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_10_1_0_False_resize: signed(19 downto 0);
  signal c_10_1_0_False_shift: signed(19 downto 0);
  signal c_10_1_2_False_resize: signed(19 downto 0);
  signal c_10_1_2_False_shift: signed(19 downto 0);
  signal c_10_2_0_False_resize: signed(19 downto 0);
  signal c_10_2_0_False_shift: signed(19 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(26 downto 0);
  signal c_12_7_4_False_resize: signed(26 downto 0);
  signal c_12_7_4_False_shift: signed(26 downto 0);
  signal c_12_4_0_False_resize: signed(26 downto 0);
  signal c_12_4_0_False_shift: signed(26 downto 0);
  signal c_12_7_3_False_resize: signed(26 downto 0);
  signal c_12_7_3_False_shift: signed(26 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_7_2_False_resize: signed(25 downto 0);
  signal c_13_7_2_False_shift: signed(25 downto 0);
  signal c_13_4_3_False_resize: signed(25 downto 0);
  signal c_13_4_3_False_shift: signed(25 downto 0);
  signal c_13_7_3_False_resize: signed(25 downto 0);
  signal c_13_7_3_False_shift: signed(25 downto 0);
  signal c_13_9_0_False_resize: signed(25 downto 0);
  signal c_13_9_0_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(23 downto 0);
  signal c_15_2_0_False_resize: signed(23 downto 0);
  signal c_15_2_0_False_shift: signed(23 downto 0);
  signal c_15_2_5_False_resize: signed(23 downto 0);
  signal c_15_2_5_False_shift: signed(23 downto 0);
  signal c_15_1_2_False_resize: signed(23 downto 0);
  signal c_15_1_2_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_16_i0_resize: signed(23 downto 0);
  signal c_16_i1_resize: signed(23 downto 0);
  signal c_16_i0_shift: signed(23 downto 0);
  signal c_16_i1_shift: signed(23 downto 0);
  signal c_16_arith: signed(23 downto 0);
  signal c_16_oshift: signed(23 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(23 downto 0);
  signal c_17_1_0_False_resize: signed(23 downto 0);
  signal c_17_1_0_False_shift: signed(23 downto 0);
  signal c_17_1_5_False_resize: signed(23 downto 0);
  signal c_17_1_5_False_shift: signed(23 downto 0);
  signal c_17_1_1_False_resize: signed(23 downto 0);
  signal c_17_1_1_False_shift: signed(23 downto 0);
  signal c_17_2_0_False_resize: signed(23 downto 0);
  signal c_17_2_0_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(22 downto 0);
  signal c_19_1_0_False_resize: signed(22 downto 0);
  signal c_19_1_0_False_shift: signed(22 downto 0);
  signal c_19_1_4_False_resize: signed(22 downto 0);
  signal c_19_1_4_False_shift: signed(22 downto 0);
  signal c_19_2_3_False_resize: signed(22 downto 0);
  signal c_19_2_3_False_shift: signed(22 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_1_5_False_resize: signed(22 downto 0);
  signal c_20_1_5_False_shift: signed(22 downto 0);
  signal c_20_2_0_False_resize: signed(22 downto 0);
  signal c_20_2_0_False_shift: signed(22 downto 0);
  signal c_20_1_1_False_resize: signed(22 downto 0);
  signal c_20_1_1_False_shift: signed(22 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_i0_resize: signed(22 downto 0);
  signal c_21_i1_resize: signed(22 downto 0);
  signal c_21_i0_shift: signed(22 downto 0);
  signal c_21_i1_shift: signed(22 downto 0);
  signal c_21_arith: signed(22 downto 0);
  signal c_21_oshift: signed(22 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(25 downto 0);
  signal c_22_18_0_False_resize: signed(25 downto 0);
  signal c_22_18_0_False_shift: signed(25 downto 0);
  signal c_22_11_0_False_resize: signed(25 downto 0);
  signal c_22_11_0_False_shift: signed(25 downto 0);
  signal c_22_18_1_False_resize: signed(25 downto 0);
  signal c_22_18_1_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_resize: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_16_0_False_resize: signed(25 downto 0);
  signal c_24_16_0_False_shift: signed(25 downto 0);
  signal c_24_11_1_False_resize: signed(25 downto 0);
  signal c_24_11_1_False_shift: signed(25 downto 0);
  signal c_24_21_0_False_resize: signed(25 downto 0);
  signal c_24_21_0_False_shift: signed(25 downto 0);
  signal c_24_18_0_False_resize: signed(25 downto 0);
  signal c_24_18_0_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_resize: signed(25 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_21_2_False_resize: signed(25 downto 0);
  signal c_26_21_2_False_shift: signed(25 downto 0);
  signal c_26_11_0_False_resize: signed(25 downto 0);
  signal c_26_11_0_False_shift: signed(25 downto 0);
  signal c_26_21_1_False_resize: signed(25 downto 0);
  signal c_26_21_1_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_16_0_False_resize: signed(24 downto 0);
  signal c_28_16_0_False_shift: signed(24 downto 0);
  signal c_28_16_1_False_resize: signed(24 downto 0);
  signal c_28_16_1_False_shift: signed(24 downto 0);
  signal c_28_16_3_False_resize: signed(24 downto 0);
  signal c_28_16_3_False_shift: signed(24 downto 0);
  signal c_28_11_0_False_resize: signed(24 downto 0);
  signal c_28_11_0_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_resize: signed(24 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
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
  -- output node 0 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 1 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 2 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 3 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_29);
    end if;
  end process;
  -- output node 4 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_30);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [3], [5], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
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
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[7], [9], [9], [7]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
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
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[4], [64], [1], [16]]
  c_3_0_0_False_resize <= resize(c_0, 22);
  c_3_0_0_False_shift <= shift_left(c_3_0_0_False_resize, 0);
  c_3_0_2_False_resize <= resize(c_0, 22);
  c_3_0_2_False_shift <= shift_left(c_3_0_2_False_resize, 2);
  c_3_0_6_False_resize <= resize(c_0, 22);
  c_3_0_6_False_shift <= shift_left(c_3_0_6_False_resize, 6);
  c_3_0_4_False_resize <= resize(c_0, 22);
  c_3_0_4_False_shift <= shift_left(c_3_0_4_False_resize, 4);
  with config_select_1 select c_3_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_0_0_False_shift;
        when "01" => c_3 <= c_3_0_2_False_shift;
        when "10" => c_3 <= c_3_0_6_False_shift;
        when others => c_3 <= c_3_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[100], [160], [161], [80]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
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
      sub_i => c_4_sub_sel,
      x_i => c_1,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [4], [8], [1]]
  c_5_0_3_False_resize <= resize(c_0, 19);
  c_5_0_3_False_shift <= shift_left(c_5_0_3_False_resize, 3);
  c_5_0_0_False_resize <= resize(c_0, 19);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_2_False_resize <= resize(c_0, 19);
  c_5_0_2_False_shift <= shift_left(c_5_0_2_False_resize, 2);
  with config_select_1 select c_5_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_3_False_shift;
        when "01" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[1], [2], [1], [1]]
  c_6_0_0_False_resize <= resize(c_0, 17);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_1_False_resize <= resize(c_0, 17);
  c_6_0_1_False_shift <= shift_left(c_6_0_1_False_resize, 1);
  with config_select_1 select c_6_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_0_0_False_shift;
        when others => c_6 <= c_6_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 7 and associated fundamentals [[17], [66], [127], [17]]
  with config_select_2 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 17,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[1], [8], [4], [8]]
  c_8_0_2_False_resize <= resize(c_0, 19);
  c_8_0_2_False_shift <= shift_left(c_8_0_2_False_resize, 2);
  c_8_0_3_False_resize <= resize(c_0, 19);
  c_8_0_3_False_shift <= shift_left(c_8_0_3_False_resize, 3);
  c_8_0_0_False_resize <= resize(c_0, 19);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  with config_select_1 select c_8_sel <= 
    "00" when "10",
    "01" when "01",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_2_False_shift;
        when "01" => c_8 <= c_8_0_3_False_shift;
        when others => c_8 <= c_8_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 9 and associated fundamentals [[444], [544], [560], [416]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 19,
      w_o => 26,
      s_x_i => 6,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_2,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[7], [3], [5], [12]]
  c_10_1_0_False_resize <= resize(c_1, 20);
  c_10_1_0_False_shift <= shift_left(c_10_1_0_False_resize, 0);
  c_10_1_2_False_resize <= resize(c_1, 20);
  c_10_1_2_False_shift <= shift_left(c_10_1_2_False_resize, 2);
  c_10_2_0_False_resize <= c_2;
  c_10_2_0_False_shift <= shift_left(c_10_2_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_1_0_False_shift;
        when "01" => c_10 <= c_10_1_2_False_shift;
        when others => c_10 <= c_10_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 11 and associated fundamentals [[-437], [547], [565], [428]]
  with config_select_3 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      x_i => c_10,
      y_i => c_9,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[136], [1056], [161], [272]]
  c_12_7_4_False_resize <= resize(c_7, 27);
  c_12_7_4_False_shift <= shift_left(c_12_7_4_False_resize, 4);
  c_12_4_0_False_resize <= resize(c_4, 27);
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_7_3_False_resize <= resize(c_7, 27);
  c_12_7_3_False_shift <= shift_left(c_12_7_3_False_resize, 3);
  with config_select_3 select c_12_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_7_4_False_shift;
        when "01" => c_12 <= c_12_4_0_False_shift;
        when others => c_12 <= c_12_7_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[136], [544], [508], [640]]
  c_13_7_2_False_resize <= resize(c_7, 26);
  c_13_7_2_False_shift <= shift_left(c_13_7_2_False_resize, 2);
  c_13_4_3_False_resize <= resize(c_4, 26);
  c_13_4_3_False_shift <= shift_left(c_13_4_3_False_resize, 3);
  c_13_7_3_False_resize <= resize(c_7, 26);
  c_13_7_3_False_shift <= shift_left(c_13_7_3_False_resize, 3);
  c_13_9_0_False_resize <= c_9;
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "00",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_7_2_False_shift;
        when "01" => c_13 <= c_13_4_3_False_shift;
        when "10" => c_13 <= c_13_7_3_False_shift;
        when others => c_13 <= c_13_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[272], [512], [669], [912]]
  with config_select_4 select c_14_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 27,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[224], [9], [9], [12]]
  c_15_2_0_False_resize <= resize(c_2, 24);
  c_15_2_0_False_shift <= shift_left(c_15_2_0_False_resize, 0);
  c_15_2_5_False_resize <= resize(c_2, 24);
  c_15_2_5_False_shift <= shift_left(c_15_2_5_False_resize, 5);
  c_15_1_2_False_resize <= resize(c_1, 24);
  c_15_1_2_False_shift <= shift_left(c_15_1_2_False_resize, 2);
  with config_select_2 select c_15_sel <= 
    "00" when "10",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_2_0_False_shift;
        when "01" => c_15 <= c_15_2_5_False_shift;
        when others => c_15 <= c_15_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 16 and associated fundamentals [[241], [-57], [-118], [-5]]
  with config_select_3 select c_16_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_16_sub_sel,
      x_i => c_15,
      y_i => c_7,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[3], [6], [160], [7]]
  c_17_1_0_False_resize <= resize(c_1, 24);
  c_17_1_0_False_shift <= shift_left(c_17_1_0_False_resize, 0);
  c_17_1_5_False_resize <= resize(c_1, 24);
  c_17_1_5_False_shift <= shift_left(c_17_1_5_False_resize, 5);
  c_17_1_1_False_resize <= resize(c_1, 24);
  c_17_1_1_False_shift <= shift_left(c_17_1_1_False_resize, 1);
  c_17_2_0_False_resize <= resize(c_2, 24);
  c_17_2_0_False_shift <= shift_left(c_17_2_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_1_0_False_shift;
        when "01" => c_17 <= c_17_1_5_False_shift;
        when "10" => c_17 <= c_17_1_1_False_shift;
        when others => c_17 <= c_17_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 18 and associated fundamentals [[397], [634], [484], [327]]
  with config_select_3 select c_18_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_18_sub_sel,
      x_i => c_4,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 19 and associated fundamentals [[3], [72], [72], [48]]
  c_19_1_0_False_resize <= resize(c_1, 23);
  c_19_1_0_False_shift <= shift_left(c_19_1_0_False_resize, 0);
  c_19_1_4_False_resize <= resize(c_1, 23);
  c_19_1_4_False_shift <= shift_left(c_19_1_4_False_resize, 4);
  c_19_2_3_False_resize <= resize(c_2, 23);
  c_19_2_3_False_shift <= shift_left(c_19_2_3_False_resize, 3);
  with config_select_2 select c_19_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_1_0_False_shift;
        when "01" => c_19 <= c_19_1_4_False_shift;
        when others => c_19 <= c_19_2_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 20 and associated fundamentals [[96], [6], [9], [6]]
  c_20_1_5_False_resize <= resize(c_1, 23);
  c_20_1_5_False_shift <= shift_left(c_20_1_5_False_resize, 5);
  c_20_2_0_False_resize <= resize(c_2, 23);
  c_20_2_0_False_shift <= shift_left(c_20_2_0_False_resize, 0);
  c_20_1_1_False_resize <= resize(c_1, 23);
  c_20_1_1_False_shift <= shift_left(c_20_1_1_False_resize, 1);
  with config_select_2 select c_20_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_1_5_False_shift;
        when "01" => c_20 <= c_20_2_0_False_shift;
        when others => c_20 <= c_20_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 21 and associated fundamentals [[99], [78], [63], [54]]
  with config_select_3 select c_21_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 23,
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
      c_21 <= c_21_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[397], [547], [484], [654]]
  c_22_18_0_False_resize <= c_18;
  c_22_18_0_False_shift <= shift_left(c_22_18_0_False_resize, 0);
  c_22_11_0_False_resize <= c_11;
  c_22_11_0_False_shift <= shift_left(c_22_11_0_False_resize, 0);
  c_22_18_1_False_resize <= c_18;
  c_22_18_1_False_shift <= shift_left(c_22_18_1_False_resize, 1);
  with config_select_4 select c_22_sel <= 
    "00" when "10",
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_18_0_False_shift;
        when "01" => c_22 <= c_22_11_0_False_shift;
        when others => c_22 <= c_22_18_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 23 and associated fundamentals [[397], [547], [484], [654]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'mux' in stage 4 with id 24 and associated fundamentals [[241], [634], [63], [856]]
  c_24_16_0_False_resize <= resize(c_16, 26);
  c_24_16_0_False_shift <= shift_left(c_24_16_0_False_resize, 0);
  c_24_11_1_False_resize <= c_11;
  c_24_11_1_False_shift <= shift_left(c_24_11_1_False_resize, 1);
  c_24_21_0_False_resize <= resize(c_21, 26);
  c_24_21_0_False_shift <= shift_left(c_24_21_0_False_resize, 0);
  c_24_18_0_False_resize <= c_18;
  c_24_18_0_False_shift <= shift_left(c_24_18_0_False_resize, 0);
  with config_select_4 select c_24_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_16_0_False_shift;
        when "01" => c_24 <= c_24_11_1_False_shift;
        when "10" => c_24 <= c_24_21_0_False_shift;
        when others => c_24 <= c_24_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 25 and associated fundamentals [[241], [634], [63], [856]]
  c_25_resize <= c_24;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'mux' in stage 4 with id 26 and associated fundamentals [[396], [312], [565], [108]]
  c_26_21_2_False_resize <= resize(c_21, 26);
  c_26_21_2_False_shift <= shift_left(c_26_21_2_False_resize, 2);
  c_26_11_0_False_resize <= c_11;
  c_26_11_0_False_shift <= shift_left(c_26_11_0_False_resize, 0);
  c_26_21_1_False_resize <= resize(c_21, 26);
  c_26_21_1_False_shift <= shift_left(c_26_21_1_False_resize, 1);
  with config_select_4 select c_26_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_21_2_False_shift;
        when "01" => c_26 <= c_26_11_0_False_shift;
        when others => c_26 <= c_26_21_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 27 and associated fundamentals [[396], [312], [565], [108]]
  c_27_resize <= c_26;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[-437], [-57], [-236], [-40]]
  c_28_16_0_False_resize <= resize(c_16, 25);
  c_28_16_0_False_shift <= shift_left(c_28_16_0_False_resize, 0);
  c_28_16_1_False_resize <= resize(c_16, 25);
  c_28_16_1_False_shift <= shift_left(c_28_16_1_False_resize, 1);
  c_28_16_3_False_resize <= resize(c_16, 25);
  c_28_16_3_False_shift <= shift_left(c_28_16_3_False_resize, 3);
  c_28_11_0_False_resize <= c_11(24 downto 0);
  c_28_11_0_False_shift <= shift_left(c_28_11_0_False_resize, 0);
  with config_select_4 select c_28_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when "11",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_16_0_False_shift;
        when "01" => c_28 <= c_28_16_1_False_shift;
        when "10" => c_28 <= c_28_16_3_False_shift;
        when others => c_28 <= c_28_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 29 and associated fundamentals [[437], [57], [236], [40]]
  c_29_resize <= c_28;
  c_29 <= -shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 4 with id 30 and associated fundamentals [[272], [512], [669], [912]]
  c_30_resize <= c_14;
  c_30 <= shift_left(c_30_resize, 0);
end architecture;

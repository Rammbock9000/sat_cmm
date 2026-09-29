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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(17 downto 0);
  signal c_2_i0_resize: signed(17 downto 0);
  signal c_2_i1_resize: signed(17 downto 0);
  signal c_2_i0_shift: signed(17 downto 0);
  signal c_2_i1_shift: signed(17 downto 0);
  signal c_2_arith: signed(17 downto 0);
  signal c_2_oshift: signed(17 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(24 downto 0);
  signal c_3_1_6_False_resize: signed(24 downto 0);
  signal c_3_1_6_False_shift: signed(24 downto 0);
  signal c_3_2_0_False_resize: signed(24 downto 0);
  signal c_3_2_0_False_shift: signed(24 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(17 downto 0);
  signal c_4_2_0_False_resize: signed(17 downto 0);
  signal c_4_2_0_False_shift: signed(17 downto 0);
  signal c_4_1_0_False_resize: signed(17 downto 0);
  signal c_4_1_0_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_i0_resize: signed(24 downto 0);
  signal c_5_i1_resize: signed(24 downto 0);
  signal c_5_i0_shift: signed(24 downto 0);
  signal c_5_i1_shift: signed(24 downto 0);
  signal c_5_arith: signed(24 downto 0);
  signal c_5_oshift: signed(24 downto 0);
  signal c_6: signed(16 downto 0);
  signal c_6_0_1_False_resize: signed(16 downto 0);
  signal c_6_0_1_False_shift: signed(16 downto 0);
  signal c_6_0_0_False_resize: signed(16 downto 0);
  signal c_6_0_0_False_shift: signed(16 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_0_0_False_resize: signed(21 downto 0);
  signal c_8_0_0_False_shift: signed(21 downto 0);
  signal c_8_0_6_False_resize: signed(21 downto 0);
  signal c_8_0_6_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(18 downto 0);
  signal c_10_0_0_False_resize: signed(18 downto 0);
  signal c_10_0_0_False_shift: signed(18 downto 0);
  signal c_10_0_3_False_resize: signed(18 downto 0);
  signal c_10_0_3_False_shift: signed(18 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_i0_resize: signed(24 downto 0);
  signal c_11_i1_resize: signed(24 downto 0);
  signal c_11_i0_shift: signed(24 downto 0);
  signal c_11_i1_shift: signed(24 downto 0);
  signal c_11_arith: signed(24 downto 0);
  signal c_11_oshift: signed(24 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_0_0_False_resize: signed(22 downto 0);
  signal c_12_0_0_False_shift: signed(22 downto 0);
  signal c_12_0_7_False_resize: signed(22 downto 0);
  signal c_12_0_7_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_14: signed(18 downto 0);
  signal c_14_1_0_False_resize: signed(18 downto 0);
  signal c_14_1_0_False_shift: signed(18 downto 0);
  signal c_14_2_3_False_resize: signed(18 downto 0);
  signal c_14_2_3_False_shift: signed(18 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(19 downto 0);
  signal c_16_1_0_False_resize: signed(19 downto 0);
  signal c_16_1_0_False_shift: signed(19 downto 0);
  signal c_16_1_1_False_resize: signed(19 downto 0);
  signal c_16_1_1_False_shift: signed(19 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(22 downto 0);
  signal c_18_7_0_False_resize: signed(22 downto 0);
  signal c_18_7_0_False_shift: signed(22 downto 0);
  signal c_18_11_1_False_resize: signed(22 downto 0);
  signal c_18_11_1_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(18 downto 0);
  signal c_20_2_0_False_resize: signed(18 downto 0);
  signal c_20_2_0_False_shift: signed(18 downto 0);
  signal c_20_2_1_False_resize: signed(18 downto 0);
  signal c_20_2_1_False_shift: signed(18 downto 0);
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
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(25 downto 0);
  signal c_23_11_1_False_resize: signed(25 downto 0);
  signal c_23_11_1_False_shift: signed(25 downto 0);
  signal c_23_9_0_False_resize: signed(25 downto 0);
  signal c_23_9_0_False_shift: signed(25 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_7_1_False_resize: signed(23 downto 0);
  signal c_24_7_1_False_shift: signed(23 downto 0);
  signal c_24_13_0_False_resize: signed(23 downto 0);
  signal c_24_13_0_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_17_0_False_resize: signed(24 downto 0);
  signal c_31_17_0_False_shift: signed(24 downto 0);
  signal c_31_5_0_False_resize: signed(24 downto 0);
  signal c_31_5_0_False_shift: signed(24 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
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
  -- output node 0 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 1 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 2 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_28);
    end if;
  end process;
  -- output node 3 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 4 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_32);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [5], [5]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
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
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[1], [3], [1]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
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
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[192], [3], [320]]
  c_3_1_6_False_resize <= resize(c_1, 25);
  c_3_1_6_False_shift <= shift_left(c_3_1_6_False_resize, 6);
  c_3_2_0_False_resize <= resize(c_2, 25);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_6_False_shift;
        when others => c_3 <= c_3_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[3], [3], [1]]
  c_4_2_0_False_resize <= c_2;
  c_4_2_0_False_shift <= shift_left(c_4_2_0_False_resize, 0);
  c_4_1_0_False_resize <= c_1(17 downto 0);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_2_0_False_shift;
        when others => c_4 <= c_4_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[204], [15], [324]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 18,
      w_o => 25,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[1], [2], [2]]
  c_6_0_1_False_resize <= resize(c_0, 17);
  c_6_0_1_False_shift <= shift_left(c_6_0_1_False_resize, 1);
  c_6_0_0_False_resize <= resize(c_0, 17);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  with config_select_1 select c_6_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_0_1_False_shift;
        when others => c_6 <= c_6_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 7 and associated fundamentals [[38], [74], [74]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 19,
      w_o => 23,
      s_x_i => 5,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_6,
      y_i => c_1,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[64], [1], [64]]
  c_8_0_0_False_resize <= resize(c_0, 22);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_6_False_resize <= resize(c_0, 22);
  c_8_0_6_False_shift <= shift_left(c_8_0_6_False_resize, 6);
  with config_select_1 select c_8_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_0_0_False_shift;
        when others => c_8 <= c_8_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 9 and associated fundamentals [[-125], [7], [133]]
  with config_select_2 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_9_sub_sel,
      x_i => c_1,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[8], [8], [1]]
  c_10_0_0_False_resize <= resize(c_0, 19);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_0_3_False_resize <= resize(c_0, 19);
  c_10_0_3_False_shift <= shift_left(c_10_0_3_False_resize, 3);
  with config_select_1 select c_10_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_0_0_False_shift;
        when others => c_10 <= c_10_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 11 and associated fundamentals [[511], [509], [63]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
      w_o => 25,
      s_x_i => 6,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_10,
      y_i => c_2,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 12 and associated fundamentals [[128], [1], [128]]
  c_12_0_0_False_resize <= resize(c_0, 23);
  c_12_0_0_False_shift <= shift_left(c_12_0_0_False_resize, 0);
  c_12_0_7_False_resize <= resize(c_0, 23);
  c_12_0_7_False_shift <= shift_left(c_12_0_7_False_resize, 7);
  with config_select_1 select c_12_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_0_0_False_shift;
        when others => c_12 <= c_12_0_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 13 and associated fundamentals [[224], [161], [288]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 24,
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
      x_i => c_1,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[8], [5], [8]]
  c_14_1_0_False_resize <= c_1;
  c_14_1_0_False_shift <= shift_left(c_14_1_0_False_resize, 0);
  c_14_2_3_False_resize <= resize(c_2, 19);
  c_14_2_3_False_shift <= shift_left(c_14_2_3_False_resize, 3);
  with config_select_2 select c_14_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_1_0_False_shift;
        when others => c_14 <= c_14_2_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[637], [327], [379]]
  with config_select_3 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 6,
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
      x_i => c_14,
      y_i => c_9,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[3], [5], [10]]
  c_16_1_0_False_resize <= resize(c_1, 20);
  c_16_1_0_False_shift <= shift_left(c_16_1_0_False_resize, 0);
  c_16_1_1_False_resize <= resize(c_1, 20);
  c_16_1_1_False_shift <= shift_left(c_16_1_1_False_resize, 1);
  with config_select_2 select c_16_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_1_0_False_shift;
        when others => c_16 <= c_16_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 17 and associated fundamentals [[487], [469], [143]]
  with config_select_3 select c_17_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 20,
      w_o => 25,
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
      sub_i => c_17_sub_sel,
      x_i => c_11,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[38], [74], [126]]
  c_18_7_0_False_resize <= c_7;
  c_18_7_0_False_shift <= shift_left(c_18_7_0_False_resize, 0);
  c_18_11_1_False_resize <= c_11(22 downto 0);
  c_18_11_1_False_shift <= shift_left(c_18_11_1_False_resize, 1);
  with config_select_3 select c_18_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_7_0_False_shift;
        when others => c_18 <= c_18_11_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 19 and associated fundamentals [[100], [607], [684]]
  with config_select_4 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
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
      sub_i => c_19_sub_sel,
      x_i => c_18,
      y_i => c_5,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 20 and associated fundamentals [[2], [6], [1]]
  c_20_2_0_False_resize <= resize(c_2, 19);
  c_20_2_0_False_shift <= shift_left(c_20_2_0_False_resize, 0);
  c_20_2_1_False_resize <= resize(c_2, 19);
  c_20_2_1_False_shift <= shift_left(c_20_2_1_False_resize, 1);
  with config_select_2 select c_20_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_2_0_False_shift;
        when others => c_20 <= c_20_2_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 21 and associated fundamentals [[900], [656], [-1150]]
  with config_select_3 select c_21_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 2,
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
      y_i => c_13,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 22 and associated fundamentals [[-413], [-187], [-1007]]
  with config_select_4 select c_22_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
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
      sub_i => c_22_sub_sel,
      x_i => c_17,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[1022], [7], [133]]
  c_23_11_1_False_resize <= resize(c_11, 26);
  c_23_11_1_False_shift <= shift_left(c_23_11_1_False_resize, 1);
  c_23_9_0_False_resize <= resize(c_9, 26);
  c_23_9_0_False_shift <= shift_left(c_23_9_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_11_1_False_shift;
        when others => c_23 <= c_23_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[76], [161], [148]]
  c_24_7_1_False_resize <= resize(c_7, 24);
  c_24_7_1_False_shift <= shift_left(c_24_7_1_False_resize, 1);
  c_24_13_0_False_resize <= c_13;
  c_24_13_0_False_shift <= shift_left(c_24_13_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_7_1_False_shift;
        when others => c_24 <= c_24_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 25 and associated fundamentals [[870], [329], [429]]
  with config_select_4 select c_25_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
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
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[413], [187], [1007]]
  c_26_resize <= c_22;
  c_26 <= -shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 4 with id 27 and associated fundamentals [[870], [329], [429]]
  c_27_resize <= c_25;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 4 with id 28 and associated fundamentals [[100], [607], [684]]
  c_28_resize <= c_19;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'register' in stage 4 with id 29 and associated fundamentals [[637], [327], [379]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_15 & "";
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 30 and associated fundamentals [[637], [327], [379]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 4 with id 31 and associated fundamentals [[487], [15], [143]]
  c_31_17_0_False_resize <= c_17;
  c_31_17_0_False_shift <= shift_left(c_31_17_0_False_resize, 0);
  c_31_5_0_False_resize <= c_5;
  c_31_5_0_False_shift <= shift_left(c_31_5_0_False_resize, 0);
  with config_select_4 select c_31_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_17_0_False_shift;
        when others => c_31 <= c_31_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 32 and associated fundamentals [[974], [30], [286]]
  c_32_resize <= resize(c_31, 26);
  c_32 <= shift_left(c_32_resize, 1);
end architecture;

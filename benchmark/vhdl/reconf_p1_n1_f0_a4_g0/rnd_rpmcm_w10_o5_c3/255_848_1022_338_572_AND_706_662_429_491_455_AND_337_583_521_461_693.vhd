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
  signal c_1: signed(23 downto 0);
  signal c_1_i0_resize: signed(23 downto 0);
  signal c_1_i1_resize: signed(23 downto 0);
  signal c_1_i0_shift: signed(23 downto 0);
  signal c_1_i1_shift: signed(23 downto 0);
  signal c_1_arith: signed(23 downto 0);
  signal c_1_oshift: signed(23 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(18 downto 0);
  signal c_2_i0_resize: signed(18 downto 0);
  signal c_2_i1_resize: signed(18 downto 0);
  signal c_2_i0_shift: signed(18 downto 0);
  signal c_2_i1_shift: signed(18 downto 0);
  signal c_2_arith: signed(18 downto 0);
  signal c_2_oshift: signed(18 downto 0);
  signal c_3: signed(25 downto 0);
  signal c_3_i0_resize: signed(25 downto 0);
  signal c_3_i1_resize: signed(25 downto 0);
  signal c_3_i0_shift: signed(25 downto 0);
  signal c_3_i1_shift: signed(25 downto 0);
  signal c_3_arith: signed(25 downto 0);
  signal c_3_oshift: signed(25 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(19 downto 0);
  signal c_4_0_4_False_resize: signed(19 downto 0);
  signal c_4_0_4_False_shift: signed(19 downto 0);
  signal c_4_0_0_False_resize: signed(19 downto 0);
  signal c_4_0_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_0_0_False_resize: signed(17 downto 0);
  signal c_5_0_0_False_shift: signed(17 downto 0);
  signal c_5_0_2_False_resize: signed(17 downto 0);
  signal c_5_0_2_False_shift: signed(17 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(26 downto 0);
  signal c_6_i0_resize: signed(26 downto 0);
  signal c_6_i1_resize: signed(26 downto 0);
  signal c_6_i0_shift: signed(26 downto 0);
  signal c_6_i1_shift: signed(26 downto 0);
  signal c_6_arith: signed(26 downto 0);
  signal c_6_oshift: signed(26 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(21 downto 0);
  signal c_7_0_0_False_resize: signed(21 downto 0);
  signal c_7_0_0_False_shift: signed(21 downto 0);
  signal c_7_0_6_False_resize: signed(21 downto 0);
  signal c_7_0_6_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(31 downto 0);
  signal c_8_i0_resize: signed(31 downto 0);
  signal c_8_i1_resize: signed(31 downto 0);
  signal c_8_i0_shift: signed(31 downto 0);
  signal c_8_i1_shift: signed(31 downto 0);
  signal c_8_arith: signed(31 downto 0);
  signal c_8_oshift: signed(31 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(17 downto 0);
  signal c_9_i0_resize: signed(17 downto 0);
  signal c_9_i1_resize: signed(17 downto 0);
  signal c_9_i0_shift: signed(17 downto 0);
  signal c_9_i1_shift: signed(17 downto 0);
  signal c_9_arith: signed(17 downto 0);
  signal c_9_oshift: signed(17 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(25 downto 0);
  signal c_10_2_7_False_resize: signed(25 downto 0);
  signal c_10_2_7_False_shift: signed(25 downto 0);
  signal c_10_3_0_False_resize: signed(25 downto 0);
  signal c_10_3_0_False_shift: signed(25 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_2_0_False_resize: signed(25 downto 0);
  signal c_11_2_0_False_shift: signed(25 downto 0);
  signal c_11_3_1_False_resize: signed(25 downto 0);
  signal c_11_3_1_False_shift: signed(25 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(31 downto 0);
  signal c_12_i0_resize: signed(31 downto 0);
  signal c_12_i1_resize: signed(31 downto 0);
  signal c_12_i0_shift: signed(31 downto 0);
  signal c_12_i1_shift: signed(31 downto 0);
  signal c_12_arith: signed(31 downto 0);
  signal c_12_oshift: signed(31 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_i0_resize: signed(24 downto 0);
  signal c_13_i1_resize: signed(24 downto 0);
  signal c_13_i0_shift: signed(24 downto 0);
  signal c_13_i1_shift: signed(24 downto 0);
  signal c_13_arith: signed(24 downto 0);
  signal c_13_oshift: signed(24 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(25 downto 0);
  signal c_14_9_0_False_resize: signed(25 downto 0);
  signal c_14_9_0_False_shift: signed(25 downto 0);
  signal c_14_1_2_False_resize: signed(25 downto 0);
  signal c_14_1_2_False_shift: signed(25 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_i0_resize: signed(24 downto 0);
  signal c_15_i1_resize: signed(24 downto 0);
  signal c_15_i0_shift: signed(24 downto 0);
  signal c_15_i1_shift: signed(24 downto 0);
  signal c_15_arith: signed(24 downto 0);
  signal c_15_oshift: signed(24 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_1_0_False_resize: signed(23 downto 0);
  signal c_16_1_0_False_shift: signed(23 downto 0);
  signal c_16_2_2_False_resize: signed(23 downto 0);
  signal c_16_2_2_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_2_0_False_resize: signed(21 downto 0);
  signal c_17_2_0_False_shift: signed(21 downto 0);
  signal c_17_9_4_False_resize: signed(21 downto 0);
  signal c_17_9_4_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(31 downto 0);
  signal c_19_i1_resize: signed(31 downto 0);
  signal c_19_i0_shift: signed(31 downto 0);
  signal c_19_i1_shift: signed(31 downto 0);
  signal c_19_arith: signed(31 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(30 downto 0);
  signal c_20_6_0_False_resize: signed(30 downto 0);
  signal c_20_6_0_False_shift: signed(30 downto 0);
  signal c_20_8_0_False_resize: signed(30 downto 0);
  signal c_20_8_0_False_shift: signed(30 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(31 downto 0);
  signal c_21_i1_resize: signed(31 downto 0);
  signal c_21_i0_shift: signed(31 downto 0);
  signal c_21_i1_shift: signed(31 downto 0);
  signal c_21_arith: signed(31 downto 0);
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
  signal c_23: signed(26 downto 0);
  signal c_23_3_1_False_resize: signed(26 downto 0);
  signal c_23_3_1_False_shift: signed(26 downto 0);
  signal c_23_9_0_False_resize: signed(26 downto 0);
  signal c_23_9_0_False_shift: signed(26 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(19 downto 0);
  signal c_26_i0_resize: signed(19 downto 0);
  signal c_26_i1_resize: signed(19 downto 0);
  signal c_26_i0_shift: signed(19 downto 0);
  signal c_26_i1_shift: signed(19 downto 0);
  signal c_26_arith: signed(19 downto 0);
  signal c_26_oshift: signed(19 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(25 downto 0);
  signal c_28_15_0_False_resize: signed(25 downto 0);
  signal c_28_15_0_False_shift: signed(25 downto 0);
  signal c_28_25_0_False_resize: signed(25 downto 0);
  signal c_28_25_0_False_shift: signed(25 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_resize: signed(25 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_19_0_False_resize: signed(24 downto 0);
  signal c_32_19_0_False_shift: signed(24 downto 0);
  signal c_32_15_0_False_resize: signed(24 downto 0);
  signal c_32_15_0_False_shift: signed(24 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_resize: signed(24 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_27_0_False_resize: signed(25 downto 0);
  signal c_34_27_0_False_shift: signed(25 downto 0);
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
  -- output node 1 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 2 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_31);
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
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[129], [-127], [129]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 7,
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
      c_1 <= c_1_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[5], [5], [5]]
  inst_adder_node_2: entity work.adder_node
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
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 3 and associated fundamentals [[-480], [-480], [544]]
  with config_select_1 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 26,
      s_x_i => 5,
      s_y_i => 9,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_3_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[16], [16], [1]]
  c_4_0_4_False_resize <= resize(c_0, 20);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  c_4_0_0_False_resize <= resize(c_0, 20);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_4_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [4], [1]]
  c_5_0_0_False_resize <= resize(c_0, 18);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_2_False_resize <= resize(c_0, 18);
  c_5_0_2_False_shift <= shift_left(c_5_0_2_False_resize, 2);
  with config_select_1 select c_5_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[512], [-1024], [576]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 18,
      w_o => 27,
      s_x_i => 6,
      s_y_i => 9,
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
      c_6 <= c_6_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[64], [1], [64]]
  c_7_0_0_False_resize <= resize(c_0, 22);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_0_6_False_resize <= resize(c_0, 22);
  c_7_0_6_False_shift <= shift_left(c_7_0_6_False_resize, 6);
  with config_select_1 select c_7_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_0_False_shift;
        when others => c_7 <= c_7_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[37120], [-32448], [28928]]
  with config_select_2 select c_8_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 32,
      s_x_i => 8,
      s_y_i => 6,
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
      c_8 <= c_8_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 9 and associated fundamentals [[3], [3], [1]]
  with config_select_1 select c_9_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
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
      sub_i => c_9_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[-480], [640], [544]]
  c_10_2_7_False_resize <= resize(c_2, 26);
  c_10_2_7_False_shift <= shift_left(c_10_2_7_False_resize, 7);
  c_10_3_0_False_resize <= c_3;
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_2_7_False_shift;
        when others => c_10 <= c_10_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[-960], [5], [5]]
  c_11_2_0_False_resize <= resize(c_2, 26);
  c_11_2_0_False_shift <= shift_left(c_11_2_0_False_resize, 0);
  c_11_3_1_False_resize <= c_3;
  c_11_3_1_False_shift <= shift_left(c_11_3_1_False_resize, 1);
  with config_select_2 select c_11_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_2_0_False_shift;
        when others => c_11 <= c_11_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 12 and associated fundamentals [[53760], [9920], [8384]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 32,
      s_x_i => 4,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_10,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 13 and associated fundamentals [[178], [-334], [338]]
  with config_select_2 select c_13_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 19,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_13_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[516], [3], [1]]
  c_14_9_0_False_resize <= resize(c_9, 26);
  c_14_9_0_False_shift <= shift_left(c_14_9_0_False_resize, 0);
  c_14_1_2_False_resize <= resize(c_1, 26);
  c_14_1_2_False_shift <= shift_left(c_14_1_2_False_resize, 2);
  with config_select_2 select c_14_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_9_0_False_shift;
        when others => c_14 <= c_14_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 15 and associated fundamentals [[338], [-331], [-337]]
  with config_select_3 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_13,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[129], [-127], [20]]
  c_16_1_0_False_resize <= c_1;
  c_16_1_0_False_shift <= shift_left(c_16_1_0_False_resize, 0);
  c_16_2_2_False_resize <= resize(c_2, 24);
  c_16_2_2_False_shift <= shift_left(c_16_2_2_False_resize, 2);
  with config_select_2 select c_16_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_1_0_False_shift;
        when others => c_16 <= c_16_2_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[48], [48], [5]]
  c_17_2_0_False_resize <= resize(c_2, 22);
  c_17_2_0_False_shift <= shift_left(c_17_2_0_False_resize, 0);
  c_17_9_4_False_resize <= resize(c_9, 22);
  c_17_9_4_False_shift <= shift_left(c_17_9_4_False_resize, 4);
  with config_select_2 select c_17_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_2_0_False_shift;
        when others => c_17 <= c_17_9_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 18 and associated fundamentals [[225], [-31], [30]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
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
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[-572], [491], [461]]
  with config_select_3 select c_19_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 32,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 6,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_19_sub_sel,
      x_i => c_6,
      y_i => c_8,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[512], [-32448], [28928]]
  c_20_6_0_False_resize <= resize(c_6, 31);
  c_20_6_0_False_shift <= shift_left(c_20_6_0_False_resize, 0);
  c_20_8_0_False_resize <= c_8(30 downto 0);
  c_20_8_0_False_shift <= shift_left(c_20_8_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_6_0_False_shift;
        when others => c_20 <= c_20_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[848], [662], [583]]
  with config_select_4 select c_21_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 31,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 6,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_21_sub_sel,
      x_i => c_12,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 22 and associated fundamentals [[1022], [429], [521]]
  with config_select_4 select c_22_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
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
      sub_i => c_22_sub_sel,
      x_i => c_18,
      y_i => c_19,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 23 and associated fundamentals [[3], [-960], [1088]]
  c_23_3_1_False_resize <= resize(c_3, 27);
  c_23_3_1_False_shift <= shift_left(c_23_3_1_False_resize, 1);
  c_23_9_0_False_resize <= resize(c_9, 27);
  c_23_9_0_False_shift <= shift_left(c_23_9_0_False_resize, 0);
  with config_select_2 select c_23_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_3_1_False_shift;
        when others => c_23 <= c_23_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 24 and associated fundamentals [[129], [-127], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 25 and associated fundamentals [[-255], [-706], [1346]]
  with config_select_3 select c_25_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 27,
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
  -- node of type 'add_sub' in stage 2 with id 26 and associated fundamentals [[-7], [-7], [11]]
  with config_select_2 select c_26_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 19,
      w_o => 20,
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
      sub_i => c_26_sub_sel,
      x_i => c_9,
      y_i => c_2,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 27 and associated fundamentals [[-455], [-455], [-693]]
  with config_select_3 select c_27_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
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
      sub_i => c_27_sub_sel,
      x_i => c_26,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[-255], [-706], [-337]]
  c_28_15_0_False_resize <= resize(c_15, 26);
  c_28_15_0_False_shift <= shift_left(c_28_15_0_False_resize, 0);
  c_28_25_0_False_resize <= c_25;
  c_28_25_0_False_shift <= shift_left(c_28_25_0_False_resize, 0);
  with config_select_4 select c_28_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_15_0_False_shift;
        when others => c_28 <= c_28_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 29 and associated fundamentals [[255], [706], [337]]
  c_29_resize <= c_28;
  c_29 <= -shift_left(c_29_resize, 0);
  -- node of type 'output' in stage 4 with id 30 and associated fundamentals [[848], [662], [583]]
  c_30_resize <= c_21;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'output' in stage 4 with id 31 and associated fundamentals [[1022], [429], [521]]
  c_31_resize <= c_22;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'mux' in stage 4 with id 32 and associated fundamentals [[338], [491], [461]]
  c_32_19_0_False_resize <= c_19(24 downto 0);
  c_32_19_0_False_shift <= shift_left(c_32_19_0_False_resize, 0);
  c_32_15_0_False_resize <= c_15;
  c_32_15_0_False_shift <= shift_left(c_32_15_0_False_resize, 0);
  with config_select_4 select c_32_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_19_0_False_shift;
        when others => c_32 <= c_32_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 33 and associated fundamentals [[338], [491], [461]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'mux' in stage 4 with id 34 and associated fundamentals [[-572], [-455], [-693]]
  c_34_27_0_False_resize <= c_27;
  c_34_27_0_False_shift <= shift_left(c_34_27_0_False_resize, 0);
  c_34_19_0_False_resize <= c_19;
  c_34_19_0_False_shift <= shift_left(c_34_19_0_False_resize, 0);
  with config_select_4 select c_34_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_27_0_False_shift;
        when others => c_34 <= c_34_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 35 and associated fundamentals [[572], [455], [693]]
  c_35_resize <= c_34;
  c_35 <= -shift_left(c_35_resize, 0);
end architecture;

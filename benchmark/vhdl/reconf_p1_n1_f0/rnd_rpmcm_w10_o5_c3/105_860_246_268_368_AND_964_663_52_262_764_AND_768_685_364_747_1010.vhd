library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(24 downto 0);
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
  signal c_1: signed(20 downto 0);
  signal c_1_0_0_False_resize: signed(20 downto 0);
  signal c_1_0_0_False_shift: signed(20 downto 0);
  signal c_1_0_5_False_resize: signed(20 downto 0);
  signal c_1_0_5_False_shift: signed(20 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(22 downto 0);
  signal c_2_0_0_False_resize: signed(22 downto 0);
  signal c_2_0_0_False_shift: signed(22 downto 0);
  signal c_2_0_7_False_resize: signed(22 downto 0);
  signal c_2_0_7_False_shift: signed(22 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(24 downto 0);
  signal c_3_i0_resize: signed(24 downto 0);
  signal c_3_i1_resize: signed(24 downto 0);
  signal c_3_i0_shift: signed(24 downto 0);
  signal c_3_i1_shift: signed(24 downto 0);
  signal c_3_arith: signed(24 downto 0);
  signal c_3_oshift: signed(24 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(16 downto 0);
  signal c_4_0_0_False_resize: signed(16 downto 0);
  signal c_4_0_0_False_shift: signed(16 downto 0);
  signal c_4_0_1_False_resize: signed(16 downto 0);
  signal c_4_0_1_False_shift: signed(16 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(16 downto 0);
  signal c_5_0_0_False_resize: signed(16 downto 0);
  signal c_5_0_0_False_shift: signed(16 downto 0);
  signal c_5_0_1_False_resize: signed(16 downto 0);
  signal c_5_0_1_False_shift: signed(16 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(15 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_0_0_False_resize: signed(21 downto 0);
  signal c_8_0_0_False_shift: signed(21 downto 0);
  signal c_8_0_2_False_resize: signed(21 downto 0);
  signal c_8_0_2_False_shift: signed(21 downto 0);
  signal c_8_0_6_False_resize: signed(21 downto 0);
  signal c_8_0_6_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(26 downto 0);
  signal c_11_6_4_False_resize: signed(26 downto 0);
  signal c_11_6_4_False_shift: signed(26 downto 0);
  signal c_11_6_6_False_resize: signed(26 downto 0);
  signal c_11_6_6_False_shift: signed(26 downto 0);
  signal c_11_6_0_False_resize: signed(26 downto 0);
  signal c_11_6_0_False_shift: signed(26 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(26 downto 0);
  signal c_12_9_10_False_resize: signed(26 downto 0);
  signal c_12_9_10_False_shift: signed(26 downto 0);
  signal c_12_9_7_False_resize: signed(26 downto 0);
  signal c_12_9_7_False_shift: signed(26 downto 0);
  signal c_12_6_0_False_resize: signed(26 downto 0);
  signal c_12_6_0_False_shift: signed(26 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(26 downto 0);
  signal c_13_i0_resize: signed(26 downto 0);
  signal c_13_i1_resize: signed(26 downto 0);
  signal c_13_i0_shift: signed(26 downto 0);
  signal c_13_i1_shift: signed(26 downto 0);
  signal c_13_arith: signed(26 downto 0);
  signal c_13_oshift: signed(26 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(22 downto 0);
  signal c_14_9_0_False_resize: signed(22 downto 0);
  signal c_14_9_0_False_shift: signed(22 downto 0);
  signal c_14_9_6_False_resize: signed(22 downto 0);
  signal c_14_9_6_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_3_0_False_resize: signed(24 downto 0);
  signal c_15_3_0_False_shift: signed(24 downto 0);
  signal c_15_3_2_False_resize: signed(24 downto 0);
  signal c_15_3_2_False_shift: signed(24 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_i0_resize: signed(24 downto 0);
  signal c_16_i1_resize: signed(24 downto 0);
  signal c_16_i0_shift: signed(24 downto 0);
  signal c_16_i1_shift: signed(24 downto 0);
  signal c_16_arith: signed(24 downto 0);
  signal c_16_oshift: signed(24 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(24 downto 0);
  signal c_17_3_0_False_resize: signed(24 downto 0);
  signal c_17_3_0_False_shift: signed(24 downto 0);
  signal c_17_3_6_False_resize: signed(24 downto 0);
  signal c_17_3_6_False_shift: signed(24 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(20 downto 0);
  signal c_18_9_2_False_resize: signed(20 downto 0);
  signal c_18_9_2_False_shift: signed(20 downto 0);
  signal c_18_6_0_False_resize: signed(20 downto 0);
  signal c_18_6_0_False_shift: signed(20 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(24 downto 0);
  signal c_20_9_0_False_resize: signed(24 downto 0);
  signal c_20_9_0_False_shift: signed(24 downto 0);
  signal c_20_6_5_False_resize: signed(24 downto 0);
  signal c_20_6_5_False_shift: signed(24 downto 0);
  signal c_20_6_2_False_resize: signed(24 downto 0);
  signal c_20_6_2_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_9_0_False_resize: signed(22 downto 0);
  signal c_21_9_0_False_shift: signed(22 downto 0);
  signal c_21_9_3_False_resize: signed(22 downto 0);
  signal c_21_9_3_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_i0_resize: signed(24 downto 0);
  signal c_22_i1_resize: signed(24 downto 0);
  signal c_22_i0_shift: signed(24 downto 0);
  signal c_22_i1_shift: signed(24 downto 0);
  signal c_22_arith: signed(24 downto 0);
  signal c_22_oshift: signed(24 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(24 downto 0);
  signal c_23_9_1_False_resize: signed(24 downto 0);
  signal c_23_9_1_False_shift: signed(24 downto 0);
  signal c_23_3_3_False_resize: signed(24 downto 0);
  signal c_23_3_3_False_shift: signed(24 downto 0);
  signal c_23_3_0_False_resize: signed(24 downto 0);
  signal c_23_3_0_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(26 downto 0);
  signal c_25_i1_resize: signed(26 downto 0);
  signal c_25_i0_shift: signed(26 downto 0);
  signal c_25_i1_shift: signed(26 downto 0);
  signal c_25_arith: signed(26 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(25 downto 0);
  signal c_26_22_0_False_resize: signed(25 downto 0);
  signal c_26_22_0_False_shift: signed(25 downto 0);
  signal c_26_16_7_False_resize: signed(25 downto 0);
  signal c_26_16_7_False_shift: signed(25 downto 0);
  signal c_26_22_1_False_resize: signed(25 downto 0);
  signal c_26_22_1_False_shift: signed(25 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_24_0_False_resize: signed(24 downto 0);
  signal c_29_24_0_False_shift: signed(24 downto 0);
  signal c_29_22_1_False_resize: signed(24 downto 0);
  signal c_29_22_1_False_shift: signed(24 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_resize: signed(24 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_16_0_False_resize: signed(25 downto 0);
  signal c_31_16_0_False_shift: signed(25 downto 0);
  signal c_31_24_0_False_resize: signed(25 downto 0);
  signal c_31_24_0_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_19_0_False_resize: signed(25 downto 0);
  signal c_33_19_0_False_shift: signed(25 downto 0);
  signal c_33_19_2_False_resize: signed(25 downto 0);
  signal c_33_19_2_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_resize: signed(25 downto 0);
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
  -- output node 0 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_27);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[32], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 21);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_5_False_resize <= resize(c_0, 21);
  c_1_0_5_False_shift <= shift_left(c_1_0_5_False_resize, 5);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [1], [128]]
  c_2_0_0_False_resize <= resize(c_0, 23);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_7_False_resize <= resize(c_0, 23);
  c_2_0_7_False_shift <= shift_left(c_2_0_7_False_resize, 7);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[30], [3], [257]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[2], [1], [1]]
  c_4_0_0_False_resize <= resize(c_0, 17);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_1_False_resize <= resize(c_0, 17);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
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
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [1], [2]]
  c_5_0_0_False_resize <= resize(c_0, 17);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_1_False_resize <= resize(c_0, 17);
  c_5_0_1_False_shift <= shift_left(c_5_0_1_False_resize, 1);
  with config_select_1 select c_5_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[33], [15], [18]]
  with config_select_2 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 17,
      w_o => 22,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[4], [1], [64]]
  c_8_0_0_False_resize <= resize(c_0, 22);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_2_False_resize <= resize(c_0, 22);
  c_8_0_2_False_shift <= shift_left(c_8_0_2_False_resize, 2);
  c_8_0_6_False_resize <= resize(c_0, 22);
  c_8_0_6_False_shift <= shift_left(c_8_0_6_False_resize, 6);
  with config_select_1 select c_8_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_0_False_shift;
        when "01" => c_8 <= c_8_0_2_False_shift;
        when others => c_8 <= c_8_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 9 and associated fundamentals [[-7], [-1], [-127]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 1,
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
      c_9 <= c_9_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 10 and associated fundamentals [[-58], [-7], [-251]]
  with config_select_3 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 24,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_3,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[33], [240], [1152]]
  c_11_6_4_False_resize <= resize(c_6, 27);
  c_11_6_4_False_shift <= shift_left(c_11_6_4_False_resize, 4);
  c_11_6_6_False_resize <= resize(c_6, 27);
  c_11_6_6_False_shift <= shift_left(c_11_6_6_False_resize, 6);
  c_11_6_0_False_resize <= resize(c_6, 27);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_6_4_False_shift;
        when "01" => c_11 <= c_11_6_6_False_shift;
        when others => c_11 <= c_11_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[-896], [-1024], [18]]
  c_12_9_10_False_resize <= resize(c_9, 27);
  c_12_9_10_False_shift <= shift_left(c_12_9_10_False_resize, 10);
  c_12_9_7_False_resize <= resize(c_9, 27);
  c_12_9_7_False_shift <= shift_left(c_12_9_7_False_resize, 7);
  c_12_6_0_False_resize <= resize(c_6, 27);
  c_12_6_0_False_shift <= shift_left(c_12_6_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_9_10_False_shift;
        when "01" => c_12 <= c_12_9_7_False_shift;
        when others => c_12 <= c_12_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[1825], [-1808], [1188]]
  with config_select_4 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 27,
      w_o => 27,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[-7], [-64], [-127]]
  c_14_9_0_False_resize <= c_9;
  c_14_9_0_False_shift <= shift_left(c_14_9_0_False_resize, 0);
  c_14_9_6_False_resize <= c_9;
  c_14_9_6_False_shift <= shift_left(c_14_9_6_False_resize, 6);
  with config_select_3 select c_14_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_9_0_False_shift;
        when others => c_14 <= c_14_9_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[120], [3], [257]]
  c_15_3_0_False_resize <= c_3;
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  c_15_3_2_False_resize <= c_3;
  c_15_3_2_False_shift <= shift_left(c_15_3_2_False_resize, 2);
  with config_select_3 select c_15_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_3_0_False_shift;
        when others => c_15 <= c_15_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 16 and associated fundamentals [[-268], [-262], [6]]
  with config_select_4 select c_16_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 1,
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
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[30], [192], [257]]
  c_17_3_0_False_resize <= c_3;
  c_17_3_0_False_shift <= shift_left(c_17_3_0_False_resize, 0);
  c_17_3_6_False_resize <= c_3;
  c_17_3_6_False_shift <= shift_left(c_17_3_6_False_resize, 6);
  with config_select_3 select c_17_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_3_0_False_shift;
        when others => c_17 <= c_17_3_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[-28], [-4], [18]]
  c_18_9_2_False_resize <= c_9(20 downto 0);
  c_18_9_2_False_shift <= shift_left(c_18_9_2_False_resize, 2);
  c_18_6_0_False_resize <= c_6(20 downto 0);
  c_18_6_0_False_shift <= shift_left(c_18_6_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_9_2_False_shift;
        when others => c_18 <= c_18_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 19 and associated fundamentals [[92], [764], [1010]]
  with config_select_4 select c_19_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
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
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[-7], [480], [72]]
  c_20_9_0_False_resize <= resize(c_9, 25);
  c_20_9_0_False_shift <= shift_left(c_20_9_0_False_resize, 0);
  c_20_6_5_False_resize <= resize(c_6, 25);
  c_20_6_5_False_shift <= shift_left(c_20_6_5_False_resize, 5);
  c_20_6_2_False_resize <= resize(c_6, 25);
  c_20_6_2_False_shift <= shift_left(c_20_6_2_False_resize, 2);
  with config_select_3 select c_20_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_9_0_False_shift;
        when "01" => c_20 <= c_20_6_5_False_shift;
        when others => c_20 <= c_20_6_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[-56], [-1], [-127]]
  c_21_9_0_False_resize <= c_9;
  c_21_9_0_False_shift <= shift_left(c_21_9_0_False_resize, 0);
  c_21_9_3_False_resize <= c_9;
  c_21_9_3_False_shift <= shift_left(c_21_9_3_False_resize, 3);
  with config_select_3 select c_21_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_9_0_False_shift;
        when others => c_21 <= c_21_9_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 22 and associated fundamentals [[105], [482], [-182]]
  with config_select_4 select c_22_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
      sub_i => c_22_sub_sel,
      x_i => c_20,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[-14], [24], [257]]
  c_23_9_1_False_resize <= resize(c_9, 25);
  c_23_9_1_False_shift <= shift_left(c_23_9_1_False_resize, 1);
  c_23_3_3_False_resize <= c_3;
  c_23_3_3_False_shift <= shift_left(c_23_3_3_False_resize, 3);
  c_23_3_0_False_resize <= c_3;
  c_23_3_0_False_shift <= shift_left(c_23_3_0_False_resize, 0);
  with config_select_3 select c_23_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_9_1_False_shift;
        when "01" => c_23 <= c_23_3_3_False_shift;
        when others => c_23 <= c_23_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 24 and associated fundamentals [[-246], [-52], [-747]]
  with config_select_4 select c_24_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
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
      sub_i => c_24_sub_sel,
      x_i => c_10,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 25 and associated fundamentals [[-860], [-663], [-685]]
  with config_select_5 select c_25_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 27,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_25_sub_sel,
      x_i => c_22,
      y_i => c_13,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 26 and associated fundamentals [[105], [964], [768]]
  c_26_22_0_False_resize <= resize(c_22, 26);
  c_26_22_0_False_shift <= shift_left(c_26_22_0_False_resize, 0);
  c_26_16_7_False_resize <= resize(c_16, 26);
  c_26_16_7_False_shift <= shift_left(c_26_16_7_False_resize, 7);
  c_26_22_1_False_resize <= resize(c_22, 26);
  c_26_22_1_False_shift <= shift_left(c_26_22_1_False_resize, 1);
  with config_select_5 select c_26_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_22_0_False_shift;
        when "01" => c_26 <= c_26_16_7_False_shift;
        when others => c_26 <= c_26_22_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 27 and associated fundamentals [[105], [964], [768]]
  c_27_resize <= c_26;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'output' in stage 5 with id 28 and associated fundamentals [[860], [663], [685]]
  c_28_resize <= c_25;
  c_28 <= -shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 5 with id 29 and associated fundamentals [[-246], [-52], [-364]]
  c_29_24_0_False_resize <= c_24(24 downto 0);
  c_29_24_0_False_shift <= shift_left(c_29_24_0_False_resize, 0);
  c_29_22_1_False_resize <= c_22;
  c_29_22_1_False_shift <= shift_left(c_29_22_1_False_resize, 1);
  with config_select_5 select c_29_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_24_0_False_shift;
        when others => c_29 <= c_29_22_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 30 and associated fundamentals [[246], [52], [364]]
  c_30_resize <= c_29;
  c_30 <= -shift_left(c_30_resize, 0);
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[-268], [-262], [-747]]
  c_31_16_0_False_resize <= resize(c_16, 26);
  c_31_16_0_False_shift <= shift_left(c_31_16_0_False_resize, 0);
  c_31_24_0_False_resize <= c_24;
  c_31_24_0_False_shift <= shift_left(c_31_24_0_False_resize, 0);
  with config_select_5 select c_31_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_16_0_False_shift;
        when others => c_31 <= c_31_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 32 and associated fundamentals [[268], [262], [747]]
  c_32_resize <= c_31;
  c_32 <= -shift_left(c_32_resize, 0);
  -- node of type 'mux' in stage 5 with id 33 and associated fundamentals [[368], [764], [1010]]
  c_33_19_0_False_resize <= c_19;
  c_33_19_0_False_shift <= shift_left(c_33_19_0_False_resize, 0);
  c_33_19_2_False_resize <= c_19;
  c_33_19_2_False_shift <= shift_left(c_33_19_2_False_resize, 2);
  with config_select_5 select c_33_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_19_0_False_shift;
        when others => c_33 <= c_33_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 5 with id 34 and associated fundamentals [[368], [764], [1010]]
  c_34_resize <= c_33;
  c_34 <= shift_left(c_34_resize, 0);
end architecture;

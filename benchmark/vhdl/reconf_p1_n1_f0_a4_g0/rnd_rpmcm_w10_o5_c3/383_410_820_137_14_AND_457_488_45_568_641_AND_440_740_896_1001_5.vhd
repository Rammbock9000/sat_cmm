library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
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
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_0_4_False_resize: signed(19 downto 0);
  signal c_2_0_4_False_shift: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(16 downto 0);
  signal c_4_0_0_False_resize: signed(16 downto 0);
  signal c_4_0_0_False_shift: signed(16 downto 0);
  signal c_4_0_1_False_resize: signed(16 downto 0);
  signal c_4_0_1_False_shift: signed(16 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_0_0_False_resize: signed(24 downto 0);
  signal c_5_0_0_False_shift: signed(24 downto 0);
  signal c_5_0_9_False_resize: signed(24 downto 0);
  signal c_5_0_9_False_shift: signed(24 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(19 downto 0);
  signal c_7_i0_resize: signed(19 downto 0);
  signal c_7_i1_resize: signed(19 downto 0);
  signal c_7_i0_shift: signed(19 downto 0);
  signal c_7_i1_shift: signed(19 downto 0);
  signal c_7_arith: signed(19 downto 0);
  signal c_7_oshift: signed(19 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(21 downto 0);
  signal c_8_i0_resize: signed(21 downto 0);
  signal c_8_i1_resize: signed(21 downto 0);
  signal c_8_i0_shift: signed(21 downto 0);
  signal c_8_i1_shift: signed(21 downto 0);
  signal c_8_arith: signed(21 downto 0);
  signal c_8_oshift: signed(21 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(21 downto 0);
  signal c_9_0_0_False_resize: signed(21 downto 0);
  signal c_9_0_0_False_shift: signed(21 downto 0);
  signal c_9_0_6_False_resize: signed(21 downto 0);
  signal c_9_0_6_False_shift: signed(21 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(24 downto 0);
  signal c_11_8_0_False_resize: signed(24 downto 0);
  signal c_11_8_0_False_shift: signed(24 downto 0);
  signal c_11_3_5_False_resize: signed(24 downto 0);
  signal c_11_3_5_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_6_1_False_resize: signed(21 downto 0);
  signal c_12_6_1_False_shift: signed(21 downto 0);
  signal c_12_3_0_False_resize: signed(21 downto 0);
  signal c_12_3_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_i0_resize: signed(24 downto 0);
  signal c_13_i1_resize: signed(24 downto 0);
  signal c_13_i0_shift: signed(24 downto 0);
  signal c_13_i1_shift: signed(24 downto 0);
  signal c_13_arith: signed(24 downto 0);
  signal c_13_oshift: signed(24 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(21 downto 0);
  signal c_14_0_6_False_resize: signed(21 downto 0);
  signal c_14_0_6_False_shift: signed(21 downto 0);
  signal c_14_0_0_False_resize: signed(21 downto 0);
  signal c_14_0_0_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(23 downto 0);
  signal c_16_7_0_False_resize: signed(23 downto 0);
  signal c_16_7_0_False_shift: signed(23 downto 0);
  signal c_16_1_4_False_resize: signed(23 downto 0);
  signal c_16_1_4_False_shift: signed(23 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(24 downto 0);
  signal c_20_8_5_False_resize: signed(24 downto 0);
  signal c_20_8_5_False_shift: signed(24 downto 0);
  signal c_20_3_0_False_resize: signed(24 downto 0);
  signal c_20_3_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(23 downto 0);
  signal c_22_7_0_False_resize: signed(23 downto 0);
  signal c_22_7_0_False_shift: signed(23 downto 0);
  signal c_22_1_4_False_resize: signed(23 downto 0);
  signal c_22_1_4_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(24 downto 0);
  signal c_24_resize: signed(24 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_17_0_False_resize: signed(24 downto 0);
  signal c_25_17_0_False_shift: signed(24 downto 0);
  signal c_25_23_1_False_resize: signed(24 downto 0);
  signal c_25_23_1_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_17_2_False_resize: signed(25 downto 0);
  signal c_27_17_2_False_shift: signed(25 downto 0);
  signal c_27_23_0_False_resize: signed(25 downto 0);
  signal c_27_23_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_19_0_False_resize: signed(25 downto 0);
  signal c_29_19_0_False_shift: signed(25 downto 0);
  signal c_29_18_0_False_resize: signed(25 downto 0);
  signal c_29_18_0_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_resize: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_resize: signed(25 downto 0);
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
  -- output node 0 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 1 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_26);
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
  -- output node 4 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_31);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[15], [15], [15]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[16], [16], [1]]
  c_2_0_4_False_resize <= resize(c_0, 20);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_4_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[49], [79], [-11]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[2], [1], [2]]
  c_4_0_0_False_resize <= resize(c_0, 17);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_1_False_resize <= resize(c_0, 17);
  c_4_0_1_False_shift <= shift_left(c_4_0_1_False_resize, 1);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "1" when "00",
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
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[1], [1], [512]]
  c_5_0_0_False_resize <= resize(c_0, 25);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_9_False_resize <= resize(c_0, 25);
  c_5_0_9_False_shift <= shift_left(c_5_0_9_False_resize, 9);
  with config_select_1 select c_5_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[65], [31], [-448]]
  with config_select_2 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 25,
      w_o => 25,
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
      sub_i => c_6_sub_sel,
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
  -- node of type 'add_sub' in stage 1 with id 7 and associated fundamentals [[6], [6], [10]]
  with config_select_1 select c_7_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      sub_i => c_7_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[9], [39], [55]]
  with config_select_2 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 22,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_1,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 9 and associated fundamentals [[1], [64], [1]]
  c_9_0_0_False_resize <= resize(c_0, 22);
  c_9_0_0_False_shift <= shift_left(c_9_0_0_False_resize, 0);
  c_9_0_6_False_resize <= resize(c_0, 22);
  c_9_0_6_False_shift <= shift_left(c_9_0_6_False_resize, 6);
  with config_select_1 select c_9_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_0_0_False_shift;
        when others => c_9 <= c_9_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 10 and associated fundamentals [[121], [-56], [121]]
  with config_select_2 select c_10_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_1,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[9], [39], [-352]]
  c_11_8_0_False_resize <= resize(c_8, 25);
  c_11_8_0_False_shift <= shift_left(c_11_8_0_False_resize, 0);
  c_11_3_5_False_resize <= resize(c_3, 25);
  c_11_3_5_False_shift <= shift_left(c_11_3_5_False_resize, 5);
  with config_select_3 select c_11_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_8_0_False_shift;
        when others => c_11 <= c_11_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[49], [62], [-11]]
  c_12_6_1_False_resize <= c_6(21 downto 0);
  c_12_6_1_False_shift <= shift_left(c_12_6_1_False_resize, 1);
  c_12_3_0_False_resize <= c_3(21 downto 0);
  c_12_3_0_False_shift <= shift_left(c_12_3_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_6_1_False_shift;
        when others => c_12 <= c_12_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[-383], [-457], [-440]]
  with config_select_4 select c_13_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
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
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[1], [64], [64]]
  c_14_0_6_False_resize <= resize(c_0, 22);
  c_14_0_6_False_shift <= shift_left(c_14_0_6_False_resize, 6);
  c_14_0_0_False_resize <= resize(c_0, 22);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  with config_select_1 select c_14_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_0_6_False_shift;
        when others => c_14 <= c_14_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 15 and associated fundamentals [[193], [256], [-256]]
  with config_select_2 select c_15_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 5,
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
      y_i => c_7,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 16 and associated fundamentals [[6], [6], [240]]
  c_16_7_0_False_resize <= resize(c_7, 24);
  c_16_7_0_False_shift <= shift_left(c_16_7_0_False_resize, 0);
  c_16_1_4_False_resize <= resize(c_1, 24);
  c_16_1_4_False_shift <= shift_left(c_16_1_4_False_resize, 4);
  with config_select_2 select c_16_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_7_0_False_shift;
        when others => c_16 <= c_16_1_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 17 and associated fundamentals [[205], [244], [224]]
  with config_select_3 select c_17_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
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
      sub_i => c_17_sub_sel,
      x_i => c_15,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 18 and associated fundamentals [[137], [281], [-8]]
  with config_select_3 select c_18_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 25,
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
      sub_i => c_18_sub_sel,
      x_i => c_8,
      y_i => c_6,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[23], [568], [1001]]
  with config_select_3 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_19_sub_sel,
      x_i => c_8,
      y_i => c_10,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[288], [79], [-11]]
  c_20_8_5_False_resize <= resize(c_8, 25);
  c_20_8_5_False_shift <= shift_left(c_20_8_5_False_resize, 5);
  c_20_3_0_False_resize <= resize(c_3, 25);
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_8_5_False_shift;
        when others => c_20 <= c_20_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[14], [641], [5]]
  with config_select_4 select c_21_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_21_sub_sel,
      x_i => c_20,
      y_i => c_18,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 22 and associated fundamentals [[240], [6], [240]]
  c_22_7_0_False_resize <= resize(c_7, 24);
  c_22_7_0_False_shift <= shift_left(c_22_7_0_False_resize, 0);
  c_22_1_4_False_resize <= resize(c_1, 24);
  c_22_1_4_False_shift <= shift_left(c_22_1_4_False_resize, 4);
  with config_select_2 select c_22_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_7_0_False_shift;
        when others => c_22 <= c_22_1_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 23 and associated fundamentals [[231], [45], [185]]
  with config_select_3 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      x_i => c_22,
      y_i => c_8,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 24 and associated fundamentals [[383], [457], [440]]
  c_24_resize <= c_13;
  c_24 <= -shift_left(c_24_resize, 0);
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[205], [244], [370]]
  c_25_17_0_False_resize <= resize(c_17, 25);
  c_25_17_0_False_shift <= shift_left(c_25_17_0_False_resize, 0);
  c_25_23_1_False_resize <= resize(c_23, 25);
  c_25_23_1_False_shift <= shift_left(c_25_23_1_False_resize, 1);
  with config_select_4 select c_25_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_17_0_False_shift;
        when others => c_25 <= c_25_23_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[410], [488], [740]]
  c_26_resize <= resize(c_25, 26);
  c_26 <= shift_left(c_26_resize, 1);
  -- node of type 'mux' in stage 4 with id 27 and associated fundamentals [[820], [45], [896]]
  c_27_17_2_False_resize <= resize(c_17, 26);
  c_27_17_2_False_shift <= shift_left(c_27_17_2_False_resize, 2);
  c_27_23_0_False_resize <= resize(c_23, 26);
  c_27_23_0_False_shift <= shift_left(c_27_23_0_False_resize, 0);
  with config_select_4 select c_27_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_17_2_False_shift;
        when others => c_27 <= c_27_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 28 and associated fundamentals [[820], [45], [896]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[137], [568], [1001]]
  c_29_19_0_False_resize <= c_19;
  c_29_19_0_False_shift <= shift_left(c_29_19_0_False_resize, 0);
  c_29_18_0_False_resize <= resize(c_18, 26);
  c_29_18_0_False_shift <= shift_left(c_29_18_0_False_resize, 0);
  with config_select_4 select c_29_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_19_0_False_shift;
        when others => c_29 <= c_29_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 30 and associated fundamentals [[137], [568], [1001]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'output' in stage 4 with id 31 and associated fundamentals [[14], [641], [5]]
  c_31_resize <= c_21;
  c_31 <= shift_left(c_31_resize, 0);
end architecture;

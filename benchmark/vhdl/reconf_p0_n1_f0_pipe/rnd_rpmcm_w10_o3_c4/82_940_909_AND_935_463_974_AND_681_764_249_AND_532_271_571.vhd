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
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_2_7_False_resize: signed(22 downto 0);
  signal c_3_2_7_False_shift: signed(22 downto 0);
  signal c_3_1_0_False_resize: signed(22 downto 0);
  signal c_3_1_0_False_shift: signed(22 downto 0);
  signal c_3_2_6_False_resize: signed(22 downto 0);
  signal c_3_2_6_False_shift: signed(22 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(18 downto 0);
  signal c_4_1_0_False_resize: signed(18 downto 0);
  signal c_4_1_0_False_shift: signed(18 downto 0);
  signal c_4_2_2_False_resize: signed(18 downto 0);
  signal c_4_2_2_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(18 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_7_0_False_resize: signed(22 downto 0);
  signal c_8_7_0_False_shift: signed(22 downto 0);
  signal c_8_7_3_False_resize: signed(22 downto 0);
  signal c_8_7_3_False_shift: signed(22 downto 0);
  signal c_8_7_5_False_resize: signed(22 downto 0);
  signal c_8_7_5_False_shift: signed(22 downto 0);
  signal c_8_5_3_False_resize: signed(22 downto 0);
  signal c_8_5_3_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_9_2_0_False_resize: signed(18 downto 0);
  signal c_9_2_0_False_shift: signed(18 downto 0);
  signal c_9_1_0_False_resize: signed(18 downto 0);
  signal c_9_1_0_False_shift: signed(18 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_11: signed(18 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(23 downto 0);
  signal c_13_5_2_False_resize: signed(23 downto 0);
  signal c_13_5_2_False_shift: signed(23 downto 0);
  signal c_13_5_0_False_resize: signed(23 downto 0);
  signal c_13_5_0_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(15 downto 0);
  signal c_19: signed(18 downto 0);
  signal c_20: signed(18 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_18_0_False_resize: signed(23 downto 0);
  signal c_21_18_0_False_shift: signed(23 downto 0);
  signal c_21_12_0_False_resize: signed(23 downto 0);
  signal c_21_12_0_False_shift: signed(23 downto 0);
  signal c_21_20_2_False_resize: signed(23 downto 0);
  signal c_21_20_2_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_17_0_False_resize: signed(25 downto 0);
  signal c_22_17_0_False_shift: signed(25 downto 0);
  signal c_22_17_1_False_resize: signed(25 downto 0);
  signal c_22_17_1_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(23 downto 0);
  signal c_24_20_1_False_resize: signed(23 downto 0);
  signal c_24_20_1_False_shift: signed(23 downto 0);
  signal c_24_12_0_False_resize: signed(23 downto 0);
  signal c_24_12_0_False_shift: signed(23 downto 0);
  signal c_24_20_2_False_resize: signed(23 downto 0);
  signal c_24_20_2_False_shift: signed(23 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_i0_resize: signed(25 downto 0);
  signal c_26_i1_resize: signed(25 downto 0);
  signal c_26_i0_shift: signed(25 downto 0);
  signal c_26_i1_shift: signed(25 downto 0);
  signal c_26_arith: signed(25 downto 0);
  signal c_26_oshift: signed(25 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(25 downto 0);
  signal c_27_12_2_False_resize: signed(25 downto 0);
  signal c_27_12_2_False_shift: signed(25 downto 0);
  signal c_27_17_0_False_resize: signed(25 downto 0);
  signal c_27_17_0_False_shift: signed(25 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_resize: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
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
      config_select_7 <= config_select_6;
      config_select_8 <= config_select_7;
      config_select_9 <= config_select_8;
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
  -- output node 2 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_31);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [3], [3], [5]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[5], [64], [128], [128]]
  c_3_2_7_False_resize <= resize(c_2, 23);
  c_3_2_7_False_shift <= shift_left(c_3_2_7_False_resize, 7);
  c_3_1_0_False_resize <= resize(c_1, 23);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_6_False_resize <= resize(c_2, 23);
  c_3_2_6_False_shift <= shift_left(c_3_2_6_False_resize, 6);
  with config_select_2 select c_3_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_2_7_False_shift;
        when "01" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_2_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[5], [3], [3], [4]]
  c_4_1_0_False_resize <= c_1;
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  c_4_2_2_False_resize <= resize(c_2, 19);
  c_4_2_2_False_shift <= shift_left(c_4_2_2_False_resize, 2);
  with config_select_2 select c_4_sel <= 
    "0" when "10",
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_0_False_shift;
        when others => c_4 <= c_4_2_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[15], [58], [122], [136]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[5], [3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[5], [3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[120], [3], [96], [40]]
  c_8_7_0_False_resize <= resize(c_7, 23);
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  c_8_7_3_False_resize <= resize(c_7, 23);
  c_8_7_3_False_shift <= shift_left(c_8_7_3_False_resize, 3);
  c_8_7_5_False_resize <= resize(c_7, 23);
  c_8_7_5_False_shift <= shift_left(c_8_7_5_False_resize, 5);
  c_8_5_3_False_resize <= c_5(22 downto 0);
  c_8_5_3_False_shift <= shift_left(c_8_5_3_False_resize, 3);
  with config_select_4 select c_8_sel <= 
    "00" when "01",
    "01" when "11",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_7_0_False_shift;
        when "01" => c_8 <= c_8_7_3_False_shift;
        when "10" => c_8 <= c_8_7_5_False_shift;
        when others => c_8 <= c_8_5_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[5], [3], [1], [5]]
  c_9_2_0_False_resize <= resize(c_2, 19);
  c_9_2_0_False_shift <= shift_left(c_9_2_0_False_resize, 0);
  c_9_1_0_False_resize <= c_1;
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  with config_select_2 select c_9_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_2_0_False_shift;
        when others => c_9 <= c_9_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[5], [3], [1], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[5], [3], [1], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[235], [9], [191], [75]]
  with config_select_5 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
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
      sub_i => c_12_sub_sel,
      x_i => c_8,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[15], [232], [122], [136]]
  c_13_5_2_False_resize <= c_5;
  c_13_5_2_False_shift <= shift_left(c_13_5_2_False_resize, 2);
  c_13_5_0_False_resize <= c_5;
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  with config_select_4 select c_13_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_5_2_False_shift;
        when others => c_13 <= c_13_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 14 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 17 and associated fundamentals [[31], [463], [245], [271]]
  with config_select_5 select c_17_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
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
      sub_i => c_17_sub_sel,
      x_i => c_13,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[5], [3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[5], [3], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 21 and associated fundamentals [[235], [12], [1], [75]]
  c_21_18_0_False_resize <= resize(c_18, 24);
  c_21_18_0_False_shift <= shift_left(c_21_18_0_False_resize, 0);
  c_21_12_0_False_resize <= c_12;
  c_21_12_0_False_shift <= shift_left(c_21_12_0_False_resize, 0);
  c_21_20_2_False_resize <= resize(c_20, 24);
  c_21_20_2_False_shift <= shift_left(c_21_20_2_False_resize, 2);
  with config_select_6 select c_21_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_18_0_False_shift;
        when "01" => c_21 <= c_21_12_0_False_shift;
        when others => c_21 <= c_21_20_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 22 and associated fundamentals [[31], [926], [245], [271]]
  c_22_17_0_False_resize <= resize(c_17, 26);
  c_22_17_0_False_shift <= shift_left(c_22_17_0_False_resize, 0);
  c_22_17_1_False_resize <= resize(c_17, 26);
  c_22_17_1_False_shift <= shift_left(c_22_17_1_False_resize, 1);
  with config_select_6 select c_22_sel <= 
    "0" when "11",
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_17_0_False_shift;
        when others => c_22 <= c_22_17_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 23 and associated fundamentals [[909], [974], [249], [571]]
  with config_select_7 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
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
  -- node of type 'mux' in stage 6 with id 24 and associated fundamentals [[20], [9], [191], [10]]
  c_24_20_1_False_resize <= resize(c_20, 24);
  c_24_20_1_False_shift <= shift_left(c_24_20_1_False_resize, 1);
  c_24_12_0_False_resize <= c_12;
  c_24_12_0_False_shift <= shift_left(c_24_12_0_False_resize, 0);
  c_24_20_2_False_resize <= resize(c_20, 24);
  c_24_20_2_False_shift <= shift_left(c_24_20_2_False_resize, 2);
  with config_select_6 select c_24_sel <= 
    "00" when "11",
    "01" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_20_1_False_shift;
        when "01" => c_24 <= c_24_12_0_False_shift;
        when others => c_24 <= c_24_20_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[31], [463], [245], [271]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_17 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 26 and associated fundamentals [[82], [935], [681], [532]]
  with config_select_7 select c_26_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
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
      sub_i => c_26_sub_sel,
      x_i => c_25,
      y_i => c_24,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 27 and associated fundamentals [[940], [463], [764], [271]]
  c_27_12_2_False_resize <= resize(c_12, 26);
  c_27_12_2_False_shift <= shift_left(c_27_12_2_False_resize, 2);
  c_27_17_0_False_resize <= resize(c_17, 26);
  c_27_17_0_False_shift <= shift_left(c_27_17_0_False_resize, 0);
  with config_select_6 select c_27_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_12_2_False_shift;
        when others => c_27 <= c_27_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 28 and associated fundamentals [[82], [935], [681], [532]]
  c_28_resize <= c_26;
  c_28 <= shift_left(c_28_resize, 0);
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[940], [463], [764], [271]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_27 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 30 and associated fundamentals [[940], [463], [764], [271]]
  c_30_resize <= c_29;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'output' in stage 7 with id 31 and associated fundamentals [[909], [974], [249], [571]]
  c_31_resize <= c_23;
  c_31 <= shift_left(c_31_resize, 0);
end architecture;

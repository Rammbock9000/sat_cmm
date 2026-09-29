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
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_3_2_False_resize: signed(21 downto 0);
  signal c_4_3_2_False_shift: signed(21 downto 0);
  signal c_4_3_0_False_resize: signed(21 downto 0);
  signal c_4_3_0_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_8_3_0_False_resize: signed(19 downto 0);
  signal c_8_3_0_False_shift: signed(19 downto 0);
  signal c_8_5_1_False_resize: signed(19 downto 0);
  signal c_8_5_1_False_shift: signed(19 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_11_3_False_resize: signed(23 downto 0);
  signal c_12_11_3_False_shift: signed(23 downto 0);
  signal c_12_9_0_False_resize: signed(23 downto 0);
  signal c_12_9_0_False_shift: signed(23 downto 0);
  signal c_12_7_1_False_resize: signed(23 downto 0);
  signal c_12_7_1_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(1 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_i0_resize: signed(23 downto 0);
  signal c_15_i1_resize: signed(23 downto 0);
  signal c_15_i0_shift: signed(23 downto 0);
  signal c_15_i1_shift: signed(23 downto 0);
  signal c_15_arith: signed(23 downto 0);
  signal c_15_oshift: signed(23 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(19 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_18: signed(20 downto 0);
  signal c_18_17_0_False_resize: signed(20 downto 0);
  signal c_18_17_0_False_shift: signed(20 downto 0);
  signal c_18_15_2_False_resize: signed(20 downto 0);
  signal c_18_15_2_False_shift: signed(20 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_7_0_False_resize: signed(23 downto 0);
  signal c_19_7_0_False_shift: signed(23 downto 0);
  signal c_19_9_8_False_resize: signed(23 downto 0);
  signal c_19_9_8_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(19 downto 0);
  signal c_24: signed(19 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_22_0_False_resize: signed(23 downto 0);
  signal c_25_22_0_False_shift: signed(23 downto 0);
  signal c_25_24_3_False_resize: signed(23 downto 0);
  signal c_25_24_3_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_29_0_False_resize: signed(23 downto 0);
  signal c_30_29_0_False_shift: signed(23 downto 0);
  signal c_30_22_1_False_resize: signed(23 downto 0);
  signal c_30_22_1_False_shift: signed(23 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_resize: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_resize: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_resize: signed(23 downto 0);
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
      config_select_10 <= config_select_9;
      config_select_11 <= config_select_10;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 1 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 2 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_36);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[5], [-3], [-15]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
      w_o => 20,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[20], [-3], [-60]]
  c_4_3_2_False_resize <= resize(c_3, 22);
  c_4_3_2_False_shift <= shift_left(c_4_3_2_False_resize, 2);
  c_4_3_0_False_resize <= resize(c_3, 22);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_3_2_False_shift;
        when others => c_4 <= c_4_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[84], [67], [124]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_4,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[2], [-3], [-15]]
  c_8_3_0_False_resize <= c_3;
  c_8_3_0_False_shift <= shift_left(c_8_3_0_False_resize, 0);
  c_8_5_1_False_resize <= resize(c_5, 20);
  c_8_5_1_False_shift <= shift_left(c_8_5_1_False_resize, 1);
  with config_select_3 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_3_0_False_shift;
        when others => c_8 <= c_8_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[5], [-3], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[5], [-3], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[168], [1], [-120]]
  c_12_11_3_False_resize <= resize(c_11, 24);
  c_12_11_3_False_shift <= shift_left(c_12_11_3_False_resize, 3);
  c_12_9_0_False_resize <= resize(c_9, 24);
  c_12_9_0_False_shift <= shift_left(c_12_9_0_False_resize, 0);
  c_12_7_1_False_resize <= resize(c_7, 24);
  c_12_7_1_False_shift <= shift_left(c_12_7_1_False_resize, 1);
  with config_select_5 select c_12_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "00" => c_12 <= c_12_11_3_False_shift;
        when "01" => c_12 <= c_12_9_0_False_shift;
        when others => c_12 <= c_12_7_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[2], [-3], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[2], [-3], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[-164], [-7], [-150]]
  with config_select_6 select c_15_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      x_i => c_14,
      y_i => c_12,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[5], [-3], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[5], [-3], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 18 and associated fundamentals [[5], [-28], [-15]]
  c_18_17_0_False_resize <= resize(c_17, 21);
  c_18_17_0_False_shift <= shift_left(c_18_17_0_False_resize, 0);
  c_18_15_2_False_resize <= c_15(20 downto 0);
  c_18_15_2_False_shift <= shift_left(c_18_15_2_False_resize, 2);
  with config_select_7 select c_18_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_17_0_False_shift;
        when others => c_18 <= c_18_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[256], [67], [124]]
  c_19_7_0_False_resize <= resize(c_7, 24);
  c_19_7_0_False_shift <= shift_left(c_19_7_0_False_resize, 0);
  c_19_9_8_False_resize <= resize(c_9, 24);
  c_19_9_8_False_shift <= shift_left(c_19_9_8_False_resize, 8);
  with config_select_5 select c_19_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_7_0_False_shift;
        when others => c_19 <= c_19_9_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[256], [67], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 21 and associated fundamentals [[256], [67], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 22 and associated fundamentals [[-251], [-95], [109]]
  with config_select_8 select c_22_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 21,
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
      sub_i => c_22_sub_sel,
      x_i => c_18,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 23 and associated fundamentals [[5], [-3], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 24 and associated fundamentals [[5], [-3], [-15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 25 and associated fundamentals [[-251], [-95], [-120]]
  c_25_22_0_False_resize <= c_22;
  c_25_22_0_False_shift <= shift_left(c_25_22_0_False_resize, 0);
  c_25_24_3_False_resize <= resize(c_24, 24);
  c_25_24_3_False_shift <= shift_left(c_25_24_3_False_resize, 3);
  with config_select_9 select c_25_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_22_0_False_shift;
        when others => c_25 <= c_25_24_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[84], [67], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[84], [67], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[84], [67], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 29 and associated fundamentals [[84], [67], [124]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 30 and associated fundamentals [[84], [67], [218]]
  c_30_29_0_False_resize <= resize(c_29, 24);
  c_30_29_0_False_shift <= shift_left(c_30_29_0_False_resize, 0);
  c_30_22_1_False_resize <= c_22;
  c_30_22_1_False_shift <= shift_left(c_30_22_1_False_resize, 1);
  with config_select_9 select c_30_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_29_0_False_shift;
        when others => c_30 <= c_30_22_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 31 and associated fundamentals [[251], [95], [120]]
  c_31_resize <= c_25;
  c_31 <= -shift_left(c_31_resize, 0);
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[-164], [-7], [-150]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[-164], [-7], [-150]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 34 and associated fundamentals [[-164], [-7], [-150]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 35 and associated fundamentals [[164], [7], [150]]
  c_35_resize <= c_34;
  c_35 <= -shift_left(c_35_resize, 0);
  -- node of type 'output' in stage 9 with id 36 and associated fundamentals [[84], [67], [218]]
  c_36_resize <= c_30;
  c_36 <= shift_left(c_36_resize, 0);
end architecture;

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
  signal config_select_10: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_i0_resize: signed(20 downto 0);
  signal c_1_i1_resize: signed(20 downto 0);
  signal c_1_i0_shift: signed(20 downto 0);
  signal c_1_i1_shift: signed(20 downto 0);
  signal c_1_arith: signed(20 downto 0);
  signal c_1_oshift: signed(20 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_2_0_False_resize: signed(22 downto 0);
  signal c_3_2_0_False_shift: signed(22 downto 0);
  signal c_3_1_2_False_resize: signed(22 downto 0);
  signal c_3_1_2_False_shift: signed(22 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(20 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_6: signed(20 downto 0);
  signal c_7: signed(24 downto 0);
  signal c_7_6_4_False_resize: signed(24 downto 0);
  signal c_7_6_4_False_shift: signed(24 downto 0);
  signal c_7_5_0_False_resize: signed(24 downto 0);
  signal c_7_5_0_False_shift: signed(24 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_8_0_0_False_resize: signed(18 downto 0);
  signal c_8_0_0_False_shift: signed(18 downto 0);
  signal c_8_0_3_False_resize: signed(18 downto 0);
  signal c_8_0_3_False_shift: signed(18 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_11: signed(18 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_i0_resize: signed(24 downto 0);
  signal c_12_i1_resize: signed(24 downto 0);
  signal c_12_i0_shift: signed(24 downto 0);
  signal c_12_i1_shift: signed(24 downto 0);
  signal c_12_arith: signed(24 downto 0);
  signal c_12_oshift: signed(24 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_1_0_False_resize: signed(22 downto 0);
  signal c_13_1_0_False_shift: signed(22 downto 0);
  signal c_13_1_3_False_resize: signed(22 downto 0);
  signal c_13_1_3_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_20_1_False_resize: signed(24 downto 0);
  signal c_21_20_1_False_shift: signed(24 downto 0);
  signal c_21_17_0_False_resize: signed(24 downto 0);
  signal c_21_17_0_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(17 downto 0);
  signal c_22_0_0_False_resize: signed(17 downto 0);
  signal c_22_0_0_False_shift: signed(17 downto 0);
  signal c_22_0_2_False_resize: signed(17 downto 0);
  signal c_22_0_2_False_shift: signed(17 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(17 downto 0);
  signal c_24: signed(17 downto 0);
  signal c_25: signed(17 downto 0);
  signal c_26: signed(17 downto 0);
  signal c_27: signed(17 downto 0);
  signal c_28: signed(17 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_i0_resize: signed(25 downto 0);
  signal c_29_i1_resize: signed(25 downto 0);
  signal c_29_i0_shift: signed(25 downto 0);
  signal c_29_i1_shift: signed(25 downto 0);
  signal c_29_arith: signed(25 downto 0);
  signal c_29_oshift: signed(25 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(25 downto 0);
  signal c_30_17_2_False_resize: signed(25 downto 0);
  signal c_30_17_2_False_shift: signed(25 downto 0);
  signal c_30_17_0_False_resize: signed(25 downto 0);
  signal c_30_17_0_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_12_1_False_resize: signed(24 downto 0);
  signal c_31_12_1_False_shift: signed(24 downto 0);
  signal c_31_12_0_False_resize: signed(24 downto 0);
  signal c_31_12_0_False_shift: signed(24 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_resize: signed(25 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_resize: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_33);
    end if;
  end process;
  -- output node 1 with id 36
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_36);
    end if;
  end process;
  -- output node 2 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_37);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[17], [17], [15]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[68], [68], [1]]
  c_3_2_0_False_resize <= resize(c_2, 23);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  c_3_1_2_False_resize <= resize(c_1, 23);
  c_3_1_2_False_shift <= shift_left(c_3_1_2_False_resize, 2);
  with config_select_2 select c_3_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_2_0_False_shift;
        when others => c_3 <= c_3_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[17], [17], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[153], [153], [17]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[17], [17], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 7 and associated fundamentals [[153], [272], [17]]
  c_7_6_4_False_resize <= resize(c_6, 25);
  c_7_6_4_False_shift <= shift_left(c_7_6_4_False_resize, 4);
  c_7_5_0_False_resize <= resize(c_5, 25);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  with config_select_4 select c_7_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_6_4_False_shift;
        when others => c_7 <= c_7_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[8], [1], [1]]
  c_8_0_0_False_resize <= resize(c_0, 19);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_3_False_resize <= resize(c_0, 19);
  c_8_0_3_False_shift <= shift_left(c_8_0_3_False_resize, 3);
  with config_select_1 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_0_0_False_shift;
        when others => c_8 <= c_8_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 9 and associated fundamentals [[8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[185], [268], [13]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 19,
      w_o => 25,
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
      sub_i => c_12_sub_sel,
      x_i => c_7,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 13 and associated fundamentals [[17], [17], [120]]
  c_13_1_0_False_resize <= resize(c_1, 23);
  c_13_1_0_False_shift <= shift_left(c_13_1_0_False_resize, 0);
  c_13_1_3_False_resize <= resize(c_1, 23);
  c_13_1_3_False_shift <= shift_left(c_13_1_3_False_resize, 3);
  with config_select_2 select c_13_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_1_0_False_shift;
        when others => c_13 <= c_13_1_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[17], [17], [120]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[17], [17], [120]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[17], [17], [120]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 17 and associated fundamentals [[202], [285], [133]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
      x_i => c_12,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[153], [153], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[153], [153], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[153], [153], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 21 and associated fundamentals [[306], [306], [133]]
  c_21_20_1_False_resize <= resize(c_20, 25);
  c_21_20_1_False_shift <= shift_left(c_21_20_1_False_resize, 1);
  c_21_17_0_False_resize <= c_17;
  c_21_17_0_False_shift <= shift_left(c_21_17_0_False_resize, 0);
  with config_select_7 select c_21_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_20_1_False_shift;
        when others => c_21 <= c_21_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 22 and associated fundamentals [[4], [1], [4]]
  c_22_0_0_False_resize <= resize(c_0, 18);
  c_22_0_0_False_shift <= shift_left(c_22_0_0_False_resize, 0);
  c_22_0_2_False_resize <= resize(c_0, 18);
  c_22_0_2_False_shift <= shift_left(c_22_0_2_False_resize, 2);
  with config_select_1 select c_22_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_0_0_False_shift;
        when others => c_22 <= c_22_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 23 and associated fundamentals [[4], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 24 and associated fundamentals [[4], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[4], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[4], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[4], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[4], [1], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 29 and associated fundamentals [[608], [613], [262]]
  with config_select_8 select c_29_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 18,
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
      sub_i => c_29_sub_sel,
      x_i => c_21,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 30 and associated fundamentals [[202], [285], [532]]
  c_30_17_2_False_resize <= resize(c_17, 26);
  c_30_17_2_False_shift <= shift_left(c_30_17_2_False_resize, 2);
  c_30_17_0_False_resize <= resize(c_17, 26);
  c_30_17_0_False_shift <= shift_left(c_30_17_0_False_resize, 0);
  with config_select_7 select c_30_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_17_2_False_shift;
        when others => c_30 <= c_30_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 31 and associated fundamentals [[370], [268], [13]]
  c_31_12_1_False_resize <= c_12;
  c_31_12_1_False_shift <= shift_left(c_31_12_1_False_resize, 1);
  c_31_12_0_False_resize <= c_12;
  c_31_12_0_False_shift <= shift_left(c_31_12_0_False_resize, 0);
  with config_select_6 select c_31_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_12_1_False_shift;
        when others => c_31 <= c_31_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[202], [285], [532]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_30 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 33 and associated fundamentals [[202], [285], [532]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[370], [268], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[370], [268], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 36 and associated fundamentals [[740], [536], [26]]
  c_36_resize <= resize(c_35, 26);
  c_36 <= shift_left(c_36_resize, 1);
  -- node of type 'output' in stage 8 with id 37 and associated fundamentals [[608], [613], [262]]
  c_37_resize <= c_29;
  c_37 <= shift_left(c_37_resize, 0);
end architecture;

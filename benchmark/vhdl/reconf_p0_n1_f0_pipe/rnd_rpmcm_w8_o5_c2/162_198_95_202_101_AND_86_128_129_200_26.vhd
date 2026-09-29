library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(22 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(0 downto 0);
  signal config_select_1: std_logic_vector(0 downto 0);
  signal config_select_2: std_logic_vector(0 downto 0);
  signal config_select_3: std_logic_vector(0 downto 0);
  signal config_select_4: std_logic_vector(0 downto 0);
  signal config_select_5: std_logic_vector(0 downto 0);
  signal config_select_6: std_logic_vector(0 downto 0);
  signal config_select_7: std_logic_vector(0 downto 0);
  signal config_select_8: std_logic_vector(0 downto 0);
  signal config_select_9: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_1_0_False_resize: signed(19 downto 0);
  signal c_3_1_0_False_shift: signed(19 downto 0);
  signal c_3_2_1_False_resize: signed(19 downto 0);
  signal c_3_2_1_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_7_0_False_resize: signed(21 downto 0);
  signal c_11_7_0_False_shift: signed(21 downto 0);
  signal c_11_10_1_False_resize: signed(21 downto 0);
  signal c_11_10_1_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(19 downto 0);
  signal c_14_1_0_False_resize: signed(19 downto 0);
  signal c_14_1_0_False_shift: signed(19 downto 0);
  signal c_14_2_0_False_resize: signed(19 downto 0);
  signal c_14_2_0_False_shift: signed(19 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_10_3_False_resize: signed(22 downto 0);
  signal c_15_10_3_False_shift: signed(22 downto 0);
  signal c_15_7_0_False_resize: signed(22 downto 0);
  signal c_15_7_0_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_19_i0_resize: signed(22 downto 0);
  signal c_19_i1_resize: signed(22 downto 0);
  signal c_19_i0_shift: signed(22 downto 0);
  signal c_19_i1_shift: signed(22 downto 0);
  signal c_19_arith: signed(22 downto 0);
  signal c_19_oshift: signed(22 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_7_0_False_resize: signed(22 downto 0);
  signal c_21_7_0_False_shift: signed(22 downto 0);
  signal c_21_20_0_False_resize: signed(22 downto 0);
  signal c_21_20_0_False_shift: signed(22 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_10_6_False_resize: signed(22 downto 0);
  signal c_22_10_6_False_shift: signed(22 downto 0);
  signal c_22_7_0_False_resize: signed(22 downto 0);
  signal c_22_7_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_24_2_False_resize: signed(22 downto 0);
  signal c_25_24_2_False_shift: signed(22 downto 0);
  signal c_25_19_0_False_resize: signed(22 downto 0);
  signal c_25_19_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_27: signed(22 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_resize: signed(23 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_resize: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_resize: signed(23 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_resize: signed(23 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_36_resize: signed(22 downto 0);
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
  -- output node 1 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 2 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_33);
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
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[9], [9]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 0,
      s_y_i => 3,
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
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[9], [2]]
  c_3_1_0_False_resize <= c_1;
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_1_False_resize <= resize(c_2, 20);
  c_3_2_1_False_shift <= shift_left(c_3_2_1_False_resize, 1);
  with config_select_2 select c_3_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_2_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[81], [25]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 23,
      s_x_i => 3,
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
      c_5 <= c_5_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[9], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 7 and associated fundamentals [[99], [43]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 23,
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
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 11 and associated fundamentals [[2], [43]]
  c_11_7_0_False_resize <= c_7(21 downto 0);
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  c_11_10_1_False_resize <= resize(c_10, 22);
  c_11_10_1_False_shift <= shift_left(c_11_10_1_False_resize, 1);
  with config_select_5 select c_11_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_7_0_False_shift;
        when others => c_11 <= c_11_10_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 12 and associated fundamentals [[99], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 13 and associated fundamentals [[95], [129]]
  with config_select_6 select c_13_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_13_sub_sel,
      x_i => c_12,
      y_i => c_11,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[1], [9]]
  c_14_1_0_False_resize <= c_1;
  c_14_1_0_False_shift <= shift_left(c_14_1_0_False_resize, 0);
  c_14_2_0_False_resize <= resize(c_2, 20);
  c_14_2_0_False_shift <= shift_left(c_14_2_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_1_0_False_shift;
        when others => c_14 <= c_14_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[99], [8]]
  c_15_10_3_False_resize <= resize(c_10, 23);
  c_15_10_3_False_shift <= shift_left(c_15_10_3_False_resize, 3);
  c_15_7_0_False_resize <= c_7;
  c_15_7_0_False_shift <= shift_left(c_15_7_0_False_resize, 0);
  with config_select_5 select c_15_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_10_3_False_shift;
        when others => c_15 <= c_15_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[1], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[1], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[1], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 19 and associated fundamentals [[101], [26]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
      w_o => 23,
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
      x_i => c_18,
      y_i => c_15,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[81], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_5 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 21 and associated fundamentals [[81], [43]]
  c_21_7_0_False_resize <= c_7;
  c_21_7_0_False_shift <= shift_left(c_21_7_0_False_resize, 0);
  c_21_20_0_False_resize <= c_20;
  c_21_20_0_False_shift <= shift_left(c_21_20_0_False_resize, 0);
  with config_select_5 select c_21_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_7_0_False_shift;
        when others => c_21 <= c_21_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 22 and associated fundamentals [[99], [64]]
  c_22_10_6_False_resize <= resize(c_10, 23);
  c_22_10_6_False_shift <= shift_left(c_22_10_6_False_resize, 6);
  c_22_7_0_False_resize <= c_7;
  c_22_7_0_False_shift <= shift_left(c_22_7_0_False_resize, 0);
  with config_select_5 select c_22_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_10_6_False_shift;
        when others => c_22 <= c_22_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[81], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[81], [25]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[101], [100]]
  c_25_24_2_False_resize <= c_24;
  c_25_24_2_False_shift <= shift_left(c_25_24_2_False_resize, 2);
  c_25_19_0_False_resize <= c_19;
  c_25_19_0_False_shift <= shift_left(c_25_19_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_24_2_False_shift;
        when others => c_25 <= c_25_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[81], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[81], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 28 and associated fundamentals [[162], [86]]
  c_28_resize <= resize(c_27, 24);
  c_28 <= shift_left(c_28_resize, 1);
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[99], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[99], [64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 31 and associated fundamentals [[198], [128]]
  c_31_resize <= resize(c_30, 24);
  c_31 <= shift_left(c_31_resize, 1);
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[95], [129]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_13 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 33 and associated fundamentals [[95], [129]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
  -- node of type 'output' in stage 7 with id 34 and associated fundamentals [[202], [200]]
  c_34_resize <= resize(c_25, 24);
  c_34 <= shift_left(c_34_resize, 1);
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[101], [26]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_19 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 36 and associated fundamentals [[101], [26]]
  c_36_resize <= c_35;
  c_36 <= shift_left(c_36_resize, 0);
end architecture;

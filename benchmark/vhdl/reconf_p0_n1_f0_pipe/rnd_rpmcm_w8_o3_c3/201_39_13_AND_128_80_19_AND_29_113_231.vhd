library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(22 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_1_0_False_resize: signed(19 downto 0);
  signal c_3_1_0_False_shift: signed(19 downto 0);
  signal c_3_2_0_False_resize: signed(19 downto 0);
  signal c_3_2_0_False_shift: signed(19 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_i0_resize: signed(24 downto 0);
  signal c_5_i1_resize: signed(24 downto 0);
  signal c_5_i0_shift: signed(24 downto 0);
  signal c_5_i1_shift: signed(24 downto 0);
  signal c_5_arith: signed(24 downto 0);
  signal c_5_oshift: signed(24 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_1_0_False_resize: signed(21 downto 0);
  signal c_6_1_0_False_shift: signed(21 downto 0);
  signal c_6_1_3_False_resize: signed(21 downto 0);
  signal c_6_1_3_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_i0_resize: signed(22 downto 0);
  signal c_8_i1_resize: signed(22 downto 0);
  signal c_8_i0_shift: signed(22 downto 0);
  signal c_8_i1_shift: signed(22 downto 0);
  signal c_8_arith: signed(22 downto 0);
  signal c_8_oshift: signed(22 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_8_4_False_resize: signed(23 downto 0);
  signal c_10_8_4_False_shift: signed(23 downto 0);
  signal c_10_9_0_False_resize: signed(23 downto 0);
  signal c_10_9_0_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_1_0_False_resize: signed(20 downto 0);
  signal c_11_1_0_False_shift: signed(20 downto 0);
  signal c_11_1_2_False_resize: signed(20 downto 0);
  signal c_11_1_2_False_shift: signed(20 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_14_i0_resize: signed(23 downto 0);
  signal c_14_i1_resize: signed(23 downto 0);
  signal c_14_i0_shift: signed(23 downto 0);
  signal c_14_i1_shift: signed(23 downto 0);
  signal c_14_arith: signed(23 downto 0);
  signal c_14_oshift: signed(23 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(15 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_16_7_False_resize: signed(23 downto 0);
  signal c_17_16_7_False_shift: signed(23 downto 0);
  signal c_17_14_0_False_resize: signed(23 downto 0);
  signal c_17_14_0_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_22_21_0_False_resize: signed(22 downto 0);
  signal c_22_21_0_False_shift: signed(22 downto 0);
  signal c_22_14_3_False_resize: signed(22 downto 0);
  signal c_22_14_3_False_shift: signed(22 downto 0);
  signal c_22_19_0_False_resize: signed(22 downto 0);
  signal c_22_19_0_False_shift: signed(22 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_8_0_False_resize: signed(23 downto 0);
  signal c_23_8_0_False_shift: signed(23 downto 0);
  signal c_23_5_0_False_resize: signed(23 downto 0);
  signal c_23_5_0_False_shift: signed(23 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_resize: signed(23 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_resize: signed(22 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_28_resize: signed(23 downto 0);
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
  -- output node 1 with id 25
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_25);
    end if;
  end process;
  -- output node 2 with id 28
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_28);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[7], [9], [7]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
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
      sub_i => c_1_sub_sel,
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[1], [9], [7]]
  c_3_1_0_False_resize <= c_1;
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_0_False_resize <= resize(c_2, 20);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[7], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 5 and associated fundamentals [[39], [297], [231]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 25,
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
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[7], [9], [56]]
  c_6_1_0_False_resize <= resize(c_1, 22);
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  c_6_1_3_False_resize <= resize(c_1, 22);
  c_6_1_3_False_shift <= shift_left(c_6_1_3_False_resize, 3);
  with config_select_2 select c_6_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_1_0_False_shift;
        when others => c_6 <= c_6_1_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 8 and associated fundamentals [[13], [19], [113]]
  with config_select_3 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 23,
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
      sub_i => c_8_sub_sel,
      x_i => c_6,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 10 and associated fundamentals [[208], [1], [1]]
  c_10_8_4_False_resize <= resize(c_8, 24);
  c_10_8_4_False_shift <= shift_left(c_10_8_4_False_resize, 4);
  c_10_9_0_False_resize <= resize(c_9, 24);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  with config_select_4 select c_10_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_8_4_False_shift;
        when others => c_10 <= c_10_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[7], [9], [28]]
  c_11_1_0_False_resize <= resize(c_1, 21);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_1_2_False_resize <= resize(c_1, 21);
  c_11_1_2_False_shift <= shift_left(c_11_1_2_False_resize, 2);
  with config_select_2 select c_11_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_1_0_False_shift;
        when others => c_11 <= c_11_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[7], [9], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[7], [9], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 14 and associated fundamentals [[201], [10], [29]]
  with config_select_5 select c_14_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
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
      sub_i => c_14_sub_sel,
      x_i => c_10,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 17 and associated fundamentals [[201], [128], [29]]
  c_17_16_7_False_resize <= resize(c_16, 24);
  c_17_16_7_False_shift <= shift_left(c_17_16_7_False_resize, 7);
  c_17_14_0_False_resize <= c_14;
  c_17_14_0_False_shift <= shift_left(c_17_14_0_False_resize, 0);
  with config_select_6 select c_17_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_16_7_False_shift;
        when others => c_17 <= c_17_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[39], [297], [231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[39], [297], [231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[13], [19], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[13], [19], [113]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 22 and associated fundamentals [[39], [80], [113]]
  c_22_21_0_False_resize <= c_21;
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  c_22_14_3_False_resize <= c_14(22 downto 0);
  c_22_14_3_False_shift <= shift_left(c_22_14_3_False_resize, 3);
  c_22_19_0_False_resize <= c_19(22 downto 0);
  c_22_19_0_False_shift <= shift_left(c_22_19_0_False_resize, 0);
  with config_select_6 select c_22_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_21_0_False_shift;
        when "01" => c_22 <= c_22_14_3_False_shift;
        when others => c_22 <= c_22_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 23 and associated fundamentals [[13], [19], [231]]
  c_23_8_0_False_resize <= resize(c_8, 24);
  c_23_8_0_False_shift <= shift_left(c_23_8_0_False_resize, 0);
  c_23_5_0_False_resize <= c_5(23 downto 0);
  c_23_5_0_False_shift <= shift_left(c_23_5_0_False_resize, 0);
  with config_select_4 select c_23_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_8_0_False_shift;
        when others => c_23 <= c_23_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 24 and associated fundamentals [[201], [128], [29]]
  c_24_resize <= c_17;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'output' in stage 6 with id 25 and associated fundamentals [[39], [80], [113]]
  c_25_resize <= c_22;
  c_25 <= shift_left(c_25_resize, 0);
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[13], [19], [231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[13], [19], [231]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 28 and associated fundamentals [[13], [19], [231]]
  c_28_resize <= c_27;
  c_28 <= shift_left(c_28_resize, 0);
end architecture;

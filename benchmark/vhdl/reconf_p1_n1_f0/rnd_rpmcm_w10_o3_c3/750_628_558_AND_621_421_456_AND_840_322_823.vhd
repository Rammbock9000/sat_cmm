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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_i0_resize: signed(21 downto 0);
  signal c_1_i1_resize: signed(21 downto 0);
  signal c_1_i0_shift: signed(21 downto 0);
  signal c_1_i1_shift: signed(21 downto 0);
  signal c_1_arith: signed(21 downto 0);
  signal c_1_oshift: signed(21 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(20 downto 0);
  signal c_2_0_0_False_resize: signed(20 downto 0);
  signal c_2_0_0_False_shift: signed(20 downto 0);
  signal c_2_0_5_False_resize: signed(20 downto 0);
  signal c_2_0_5_False_shift: signed(20 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(23 downto 0);
  signal c_4_1_3_False_resize: signed(23 downto 0);
  signal c_4_1_3_False_shift: signed(23 downto 0);
  signal c_4_1_0_False_resize: signed(23 downto 0);
  signal c_4_1_0_False_shift: signed(23 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(28 downto 0);
  signal c_5_1_3_False_resize: signed(28 downto 0);
  signal c_5_1_3_False_shift: signed(28 downto 0);
  signal c_5_1_0_False_resize: signed(28 downto 0);
  signal c_5_1_0_False_shift: signed(28 downto 0);
  signal c_5_1_7_False_resize: signed(28 downto 0);
  signal c_5_1_7_False_shift: signed(28 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(25 downto 0);
  signal c_6_i0_resize: signed(25 downto 0);
  signal c_6_i1_resize: signed(25 downto 0);
  signal c_6_i0_shift: signed(25 downto 0);
  signal c_6_i1_shift: signed(25 downto 0);
  signal c_6_arith: signed(25 downto 0);
  signal c_6_oshift: signed(25 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(16 downto 0);
  signal c_7_0_1_False_resize: signed(16 downto 0);
  signal c_7_0_1_False_shift: signed(16 downto 0);
  signal c_7_0_0_False_resize: signed(16 downto 0);
  signal c_7_0_0_False_shift: signed(16 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(24 downto 0);
  signal c_8_i0_resize: signed(24 downto 0);
  signal c_8_i1_resize: signed(24 downto 0);
  signal c_8_i0_shift: signed(24 downto 0);
  signal c_8_i1_shift: signed(24 downto 0);
  signal c_8_arith: signed(24 downto 0);
  signal c_8_oshift: signed(24 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(25 downto 0);
  signal c_9_3_4_False_resize: signed(25 downto 0);
  signal c_9_3_4_False_shift: signed(25 downto 0);
  signal c_9_8_0_False_resize: signed(25 downto 0);
  signal c_9_8_0_False_shift: signed(25 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_8_0_False_resize: signed(24 downto 0);
  signal c_10_8_0_False_shift: signed(24 downto 0);
  signal c_10_3_0_False_resize: signed(24 downto 0);
  signal c_10_3_0_False_shift: signed(24 downto 0);
  signal c_10_3_3_False_resize: signed(24 downto 0);
  signal c_10_3_3_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(24 downto 0);
  signal c_12_8_1_False_resize: signed(24 downto 0);
  signal c_12_8_1_False_shift: signed(24 downto 0);
  signal c_12_8_0_False_resize: signed(24 downto 0);
  signal c_12_8_0_False_shift: signed(24 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_3_0_False_resize: signed(24 downto 0);
  signal c_13_3_0_False_shift: signed(24 downto 0);
  signal c_13_3_3_False_resize: signed(24 downto 0);
  signal c_13_3_3_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_14_i0_resize: signed(25 downto 0);
  signal c_14_i1_resize: signed(25 downto 0);
  signal c_14_i0_shift: signed(25 downto 0);
  signal c_14_i1_shift: signed(25 downto 0);
  signal c_14_arith: signed(25 downto 0);
  signal c_14_oshift: signed(25 downto 0);
  signal c_15: signed(26 downto 0);
  signal c_15_3_0_False_resize: signed(26 downto 0);
  signal c_15_3_0_False_shift: signed(26 downto 0);
  signal c_15_3_5_False_resize: signed(26 downto 0);
  signal c_15_3_5_False_shift: signed(26 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(25 downto 0);
  signal c_17_resize: signed(25 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_resize: signed(25 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_resize: signed(25 downto 0);
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
  -- output node 0 with id 17
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_17);
    end if;
  end process;
  -- output node 1 with id 18
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_18);
    end if;
  end process;
  -- output node 2 with id 19
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_19);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[31], [33], [33]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [32], [1]]
  c_2_0_0_False_resize <= resize(c_0, 21);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 21);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[29], [97], [35]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
      w_o => 23,
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
      c_3 <= c_3_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[248], [33], [33]]
  c_4_1_3_False_resize <= resize(c_1, 24);
  c_4_1_3_False_shift <= shift_left(c_4_1_3_False_resize, 3);
  c_4_1_0_False_resize <= resize(c_1, 24);
  c_4_1_0_False_shift <= shift_left(c_4_1_0_False_resize, 0);
  with config_select_2 select c_4_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_1_3_False_shift;
        when others => c_4 <= c_4_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[248], [33], [4224]]
  c_5_1_3_False_resize <= resize(c_1, 29);
  c_5_1_3_False_shift <= shift_left(c_5_1_3_False_resize, 3);
  c_5_1_0_False_resize <= resize(c_1, 29);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  c_5_1_7_False_resize <= resize(c_1, 29);
  c_5_1_7_False_shift <= shift_left(c_5_1_7_False_resize, 7);
  with config_select_2 select c_5_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_1_3_False_shift;
        when "01" => c_5 <= c_5_1_0_False_shift;
        when others => c_5 <= c_5_1_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[744], [33], [-4158]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 29,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[2], [2], [1]]
  c_7_0_1_False_resize <= resize(c_0, 17);
  c_7_0_1_False_shift <= shift_left(c_7_0_1_False_resize, 1);
  c_7_0_0_False_resize <= resize(c_0, 17);
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_1_False_shift;
        when others => c_7 <= c_7_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[250], [262], [263]]
  with config_select_2 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 17,
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
      sub_i => c_8_sub_sel,
      x_i => c_1,
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[250], [262], [560]]
  c_9_3_4_False_resize <= resize(c_3, 26);
  c_9_3_4_False_shift <= shift_left(c_9_3_4_False_resize, 4);
  c_9_8_0_False_resize <= resize(c_8, 26);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_3_4_False_shift;
        when others => c_9 <= c_9_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[250], [97], [280]]
  c_10_8_0_False_resize <= c_8;
  c_10_8_0_False_shift <= shift_left(c_10_8_0_False_resize, 0);
  c_10_3_0_False_resize <= resize(c_3, 25);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_3_3_False_resize <= resize(c_3, 25);
  c_10_3_3_False_shift <= shift_left(c_10_3_3_False_resize, 3);
  with config_select_3 select c_10_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_8_0_False_shift;
        when "01" => c_10 <= c_10_3_0_False_shift;
        when others => c_10 <= c_10_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[750], [621], [840]]
  with config_select_4 select c_11_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[500], [262], [263]]
  c_12_8_1_False_resize <= c_8;
  c_12_8_1_False_shift <= shift_left(c_12_8_1_False_resize, 1);
  c_12_8_0_False_resize <= c_8;
  c_12_8_0_False_shift <= shift_left(c_12_8_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_8_1_False_shift;
        when others => c_12 <= c_12_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[29], [97], [280]]
  c_13_3_0_False_resize <= resize(c_3, 25);
  c_13_3_0_False_shift <= shift_left(c_13_3_0_False_resize, 0);
  c_13_3_3_False_resize <= resize(c_3, 25);
  c_13_3_3_False_shift <= shift_left(c_13_3_3_False_resize, 3);
  with config_select_3 select c_13_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_3_0_False_shift;
        when others => c_13 <= c_13_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 14 and associated fundamentals [[558], [456], [823]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
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
  -- node of type 'mux' in stage 3 with id 15 and associated fundamentals [[29], [97], [1120]]
  c_15_3_0_False_resize <= resize(c_3, 27);
  c_15_3_0_False_shift <= shift_left(c_15_3_0_False_resize, 0);
  c_15_3_5_False_resize <= resize(c_3, 27);
  c_15_3_5_False_shift <= shift_left(c_15_3_5_False_resize, 5);
  with config_select_3 select c_15_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_3_0_False_shift;
        when others => c_15 <= c_15_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 16 and associated fundamentals [[628], [421], [322]]
  with config_select_4 select c_16_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 27,
      w_o => 26,
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
      sub_i => c_16_sub_sel,
      x_i => c_6,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 17 and associated fundamentals [[750], [621], [840]]
  c_17_resize <= c_11;
  c_17 <= shift_left(c_17_resize, 0);
  -- node of type 'output' in stage 4 with id 18 and associated fundamentals [[628], [421], [322]]
  c_18_resize <= c_16;
  c_18 <= shift_left(c_18_resize, 0);
  -- node of type 'output' in stage 4 with id 19 and associated fundamentals [[558], [456], [823]]
  c_19_resize <= c_14;
  c_19 <= shift_left(c_19_resize, 0);
end architecture;

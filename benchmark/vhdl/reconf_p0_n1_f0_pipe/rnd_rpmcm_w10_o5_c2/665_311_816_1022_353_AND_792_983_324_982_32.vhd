library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(24 downto 0);
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
  signal config_select_10: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_2: signed(22 downto 0);
  signal c_2_i0_resize: signed(22 downto 0);
  signal c_2_i1_resize: signed(22 downto 0);
  signal c_2_i0_shift: signed(22 downto 0);
  signal c_2_i1_shift: signed(22 downto 0);
  signal c_2_arith: signed(22 downto 0);
  signal c_2_oshift: signed(22 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_1_3_False_resize: signed(20 downto 0);
  signal c_3_1_3_False_shift: signed(20 downto 0);
  signal c_3_1_0_False_resize: signed(20 downto 0);
  signal c_3_1_0_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(24 downto 0);
  signal c_4_i0_resize: signed(24 downto 0);
  signal c_4_i1_resize: signed(24 downto 0);
  signal c_4_i0_shift: signed(24 downto 0);
  signal c_4_i1_shift: signed(24 downto 0);
  signal c_4_arith: signed(24 downto 0);
  signal c_4_oshift: signed(24 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(25 downto 0);
  signal c_8_i1_resize: signed(25 downto 0);
  signal c_8_i0_shift: signed(25 downto 0);
  signal c_8_i1_shift: signed(25 downto 0);
  signal c_8_arith: signed(25 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_7_9_False_resize: signed(24 downto 0);
  signal c_9_7_9_False_shift: signed(24 downto 0);
  signal c_9_4_0_False_resize: signed(24 downto 0);
  signal c_9_4_0_False_shift: signed(24 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_i0_resize: signed(24 downto 0);
  signal c_11_i1_resize: signed(24 downto 0);
  signal c_11_i0_shift: signed(24 downto 0);
  signal c_11_i1_shift: signed(24 downto 0);
  signal c_11_arith: signed(24 downto 0);
  signal c_11_oshift: signed(24 downto 0);
  signal c_12: signed(17 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_12_7_False_resize: signed(24 downto 0);
  signal c_13_12_7_False_shift: signed(24 downto 0);
  signal c_13_2_0_False_resize: signed(24 downto 0);
  signal c_13_2_0_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(22 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_19: signed(17 downto 0);
  signal c_20: signed(17 downto 0);
  signal c_21: signed(17 downto 0);
  signal c_22: signed(17 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_22_6_False_resize: signed(24 downto 0);
  signal c_23_22_6_False_shift: signed(24 downto 0);
  signal c_23_18_0_False_resize: signed(24 downto 0);
  signal c_23_18_0_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(15 downto 0);
  signal c_30: signed(15 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_18_0_False_resize: signed(24 downto 0);
  signal c_31_18_0_False_shift: signed(24 downto 0);
  signal c_31_30_5_False_resize: signed(24 downto 0);
  signal c_31_30_5_False_shift: signed(24 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_resize: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_resize: signed(25 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_45: signed(24 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_48_resize: signed(24 downto 0);
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
  -- output node 0 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 1 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 2 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 3 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 4 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_48);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[3], [3]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 2 and associated fundamentals [[108], [108]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 23,
      s_x_i => 5,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_1,
      y_i => c_1,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[3], [24]]
  c_3_1_3_False_resize <= resize(c_1, 21);
  c_3_1_3_False_shift <= shift_left(c_3_1_3_False_resize, 3);
  c_3_1_0_False_resize <= resize(c_1, 21);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_3_False_shift;
        when others => c_3 <= c_3_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 4 and associated fundamentals [[156], [492]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 5 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 8 and associated fundamentals [[-311], [-983]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 25,
      w_o => 26,
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
      y_i => c_4,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[512], [492]]
  c_9_7_9_False_resize <= resize(c_7, 25);
  c_9_7_9_False_shift <= shift_left(c_9_7_9_False_resize, 9);
  c_9_4_0_False_resize <= c_4;
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  with config_select_4 select c_9_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_7_9_False_shift;
        when others => c_9 <= c_9_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 10 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_7 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 11 and associated fundamentals [[-511], [-491]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 25,
      w_o => 25,
      s_x_i => 0,
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
      y_i => c_9,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[384], [108]]
  c_13_12_7_False_resize <= resize(c_12, 25);
  c_13_12_7_False_shift <= shift_left(c_13_12_7_False_resize, 7);
  c_13_2_0_False_resize <= resize(c_2, 25);
  c_13_2_0_False_shift <= shift_left(c_13_2_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_12_7_False_shift;
        when others => c_13 <= c_13_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[108], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 15 and associated fundamentals [[816], [324]]
  with config_select_4 select c_15_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_15_sub_sel,
      x_i => c_14,
      y_i => c_13,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[108], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[108], [108]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 18 and associated fundamentals [[353], [373]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
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
      x_i => c_11,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 23 and associated fundamentals [[353], [192]]
  c_23_22_6_False_resize <= resize(c_22, 25);
  c_23_22_6_False_shift <= shift_left(c_23_22_6_False_resize, 6);
  c_23_18_0_False_resize <= c_18;
  c_23_18_0_False_shift <= shift_left(c_23_18_0_False_resize, 0);
  with config_select_7 select c_23_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_22_6_False_shift;
        when others => c_23 <= c_23_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[156], [492]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[156], [492]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[156], [492]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[156], [492]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 28 and associated fundamentals [[665], [792]]
  with config_select_8 select c_28_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_28_sub_sel,
      x_i => c_27,
      y_i => c_23,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 31 and associated fundamentals [[353], [32]]
  c_31_18_0_False_resize <= c_18;
  c_31_18_0_False_shift <= shift_left(c_31_18_0_False_resize, 0);
  c_31_30_5_False_resize <= resize(c_30, 25);
  c_31_30_5_False_shift <= shift_left(c_31_30_5_False_resize, 5);
  with config_select_7 select c_31_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_18_0_False_shift;
        when others => c_31 <= c_31_30_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 32 and associated fundamentals [[665], [792]]
  c_32_resize <= c_28;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'register' in stage 5 with id 33 and associated fundamentals [[-311], [-983]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[-311], [-983]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[-311], [-983]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[-311], [-983]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 37 and associated fundamentals [[311], [983]]
  c_37_resize <= c_36;
  c_37 <= -shift_left(c_37_resize, 0);
  -- node of type 'register' in stage 5 with id 38 and associated fundamentals [[816], [324]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[816], [324]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[816], [324]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[816], [324]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 42 and associated fundamentals [[816], [324]]
  c_42_resize <= c_41;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[-511], [-491]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[-511], [-491]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[-511], [-491]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 46 and associated fundamentals [[1022], [982]]
  c_46_resize <= resize(c_45, 26);
  c_46 <= -shift_left(c_46_resize, 1);
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[353], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_31 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 48 and associated fundamentals [[353], [32]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
end architecture;

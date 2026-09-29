library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(24 downto 0);
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
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(22 downto 0);
  signal c_6_5_1_False_resize: signed(22 downto 0);
  signal c_6_5_1_False_shift: signed(22 downto 0);
  signal c_6_5_0_False_resize: signed(22 downto 0);
  signal c_6_5_0_False_shift: signed(22 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_7_1_False_resize: signed(21 downto 0);
  signal c_8_7_1_False_shift: signed(21 downto 0);
  signal c_8_5_0_False_resize: signed(21 downto 0);
  signal c_8_5_0_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_i0_resize: signed(25 downto 0);
  signal c_9_i1_resize: signed(25 downto 0);
  signal c_9_i0_shift: signed(25 downto 0);
  signal c_9_i1_shift: signed(25 downto 0);
  signal c_9_arith: signed(25 downto 0);
  signal c_9_oshift: signed(25 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_4_6_False_resize: signed(21 downto 0);
  signal c_10_4_6_False_shift: signed(21 downto 0);
  signal c_10_3_0_False_resize: signed(21 downto 0);
  signal c_10_3_0_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_3_5_False_resize: signed(24 downto 0);
  signal c_14_3_5_False_shift: signed(24 downto 0);
  signal c_14_3_0_False_resize: signed(24 downto 0);
  signal c_14_3_0_False_shift: signed(24 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_17: signed(20 downto 0);
  signal c_18: signed(20 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_13_0_False_resize: signed(25 downto 0);
  signal c_19_13_0_False_shift: signed(25 downto 0);
  signal c_19_18_0_False_resize: signed(25 downto 0);
  signal c_19_18_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(21 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_9_0_False_resize: signed(24 downto 0);
  signal c_27_9_0_False_shift: signed(24 downto 0);
  signal c_27_26_1_False_resize: signed(24 downto 0);
  signal c_27_26_1_False_shift: signed(24 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(15 downto 0);
  signal c_29: signed(15 downto 0);
  signal c_30: signed(15 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_30_8_False_resize: signed(25 downto 0);
  signal c_31_30_8_False_shift: signed(25 downto 0);
  signal c_31_13_0_False_resize: signed(25 downto 0);
  signal c_31_13_0_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_resize: signed(25 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_35: signed(24 downto 0);
  signal c_35_resize: signed(24 downto 0);
  signal c_36: signed(25 downto 0);
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
  -- output node 0 with id 32
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_32);
    end if;
  end process;
  -- output node 1 with id 35
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_35);
    end if;
  end process;
  -- output node 2 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_37);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_1_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[-15], [-15], [18]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 0,
      s_y_i => 4,
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
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[49], [49], [46]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 22,
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
      sub_i => c_5_sub_sel,
      x_i => c_4,
      y_i => c_3,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 6 and associated fundamentals [[49], [98], [92]]
  c_6_5_1_False_resize <= resize(c_5, 23);
  c_6_5_1_False_shift <= shift_left(c_6_5_1_False_resize, 1);
  c_6_5_0_False_resize <= resize(c_5, 23);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_4 select c_6_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_5_1_False_shift;
        when others => c_6 <= c_6_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[49], [2], [2]]
  c_8_7_1_False_resize <= resize(c_7, 22);
  c_8_7_1_False_shift <= shift_left(c_8_7_1_False_resize, 1);
  c_8_5_0_False_resize <= c_5;
  c_8_5_0_False_shift <= shift_left(c_8_5_0_False_resize, 0);
  with config_select_4 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_7_1_False_shift;
        when others => c_8 <= c_8_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 9 and associated fundamentals [[343], [782], [734]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_6,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[64], [-15], [18]]
  c_10_4_6_False_resize <= resize(c_4, 22);
  c_10_4_6_False_shift <= shift_left(c_10_4_6_False_resize, 6);
  c_10_3_0_False_resize <= resize(c_3, 22);
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_4_6_False_shift;
        when others => c_10 <= c_10_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[64], [-15], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 12 and associated fundamentals [[64], [-15], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 13 and associated fundamentals [[87], [842], [662]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_9,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[-480], [-480], [18]]
  c_14_3_5_False_resize <= resize(c_3, 25);
  c_14_3_5_False_shift <= shift_left(c_14_3_5_False_resize, 5);
  c_14_3_0_False_resize <= resize(c_3, 25);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_3_5_False_shift;
        when others => c_14 <= c_14_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[-15], [-15], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[-15], [-15], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[-15], [-15], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[-15], [-15], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[87], [-15], [662]]
  c_19_13_0_False_resize <= c_13;
  c_19_13_0_False_shift <= shift_left(c_19_13_0_False_resize, 0);
  c_19_18_0_False_resize <= resize(c_18, 26);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  with config_select_7 select c_19_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_13_0_False_shift;
        when others => c_19 <= c_19_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[-480], [-480], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[-480], [-480], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[-480], [-480], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 23 and associated fundamentals [[-480], [-480], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 24 and associated fundamentals [[-873], [-975], [-626]]
  with config_select_8 select c_24_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_24_sub_sel,
      x_i => c_23,
      y_i => c_19,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[49], [49], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[49], [49], [46]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 27 and associated fundamentals [[343], [98], [92]]
  c_27_9_0_False_resize <= c_9(24 downto 0);
  c_27_9_0_False_shift <= shift_left(c_27_9_0_False_resize, 0);
  c_27_26_1_False_resize <= resize(c_26, 25);
  c_27_26_1_False_shift <= shift_left(c_27_26_1_False_resize, 1);
  with config_select_6 select c_27_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_9_0_False_shift;
        when others => c_27 <= c_27_26_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 28 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 31 and associated fundamentals [[256], [842], [662]]
  c_31_30_8_False_resize <= resize(c_30, 26);
  c_31_30_8_False_shift <= shift_left(c_31_30_8_False_resize, 8);
  c_31_13_0_False_resize <= c_13;
  c_31_13_0_False_shift <= shift_left(c_31_13_0_False_resize, 0);
  with config_select_7 select c_31_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_30_8_False_shift;
        when others => c_31 <= c_31_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 32 and associated fundamentals [[873], [975], [626]]
  c_32_resize <= c_24;
  c_32 <= -shift_left(c_32_resize, 0);
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[343], [98], [92]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[343], [98], [92]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 35 and associated fundamentals [[343], [98], [92]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[256], [842], [662]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_31 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 37 and associated fundamentals [[256], [842], [662]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
end architecture;

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
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
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
  signal c_6: signed(18 downto 0);
  signal c_6_0_0_False_resize: signed(18 downto 0);
  signal c_6_0_0_False_shift: signed(18 downto 0);
  signal c_6_0_3_False_resize: signed(18 downto 0);
  signal c_6_0_3_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_9: signed(23 downto 0);
  signal c_9_i0_resize: signed(23 downto 0);
  signal c_9_i1_resize: signed(23 downto 0);
  signal c_9_i0_shift: signed(23 downto 0);
  signal c_9_i1_shift: signed(23 downto 0);
  signal c_9_arith: signed(23 downto 0);
  signal c_9_oshift: signed(23 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(17 downto 0);
  signal c_10_0_0_False_resize: signed(17 downto 0);
  signal c_10_0_0_False_shift: signed(17 downto 0);
  signal c_10_0_2_False_resize: signed(17 downto 0);
  signal c_10_0_2_False_shift: signed(17 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_9_0_False_resize: signed(23 downto 0);
  signal c_15_9_0_False_shift: signed(23 downto 0);
  signal c_15_12_2_False_resize: signed(23 downto 0);
  signal c_15_12_2_False_shift: signed(23 downto 0);
  signal c_15_14_1_False_resize: signed(23 downto 0);
  signal c_15_14_1_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(17 downto 0);
  signal c_17: signed(17 downto 0);
  signal c_18: signed(17 downto 0);
  signal c_19: signed(17 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_i0_resize: signed(23 downto 0);
  signal c_20_i1_resize: signed(23 downto 0);
  signal c_20_i0_shift: signed(23 downto 0);
  signal c_20_i1_shift: signed(23 downto 0);
  signal c_20_arith: signed(23 downto 0);
  signal c_20_oshift: signed(23 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(15 downto 0);
  signal c_22: signed(15 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_24: signed(21 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_24_2_False_resize: signed(23 downto 0);
  signal c_25_24_2_False_shift: signed(23 downto 0);
  signal c_25_22_8_False_resize: signed(23 downto 0);
  signal c_25_22_8_False_shift: signed(23 downto 0);
  signal c_25_20_0_False_resize: signed(23 downto 0);
  signal c_25_20_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_34_5_False_resize: signed(23 downto 0);
  signal c_35_34_5_False_shift: signed(23 downto 0);
  signal c_35_30_0_False_resize: signed(23 downto 0);
  signal c_35_30_0_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_36_30_1_False_resize: signed(23 downto 0);
  signal c_36_30_1_False_shift: signed(23 downto 0);
  signal c_36_34_2_False_resize: signed(23 downto 0);
  signal c_36_34_2_False_shift: signed(23 downto 0);
  signal c_36_34_0_False_resize: signed(23 downto 0);
  signal c_36_34_0_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(1 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_37_resize: signed(23 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_resize: signed(23 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_resize: signed(23 downto 0);
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
  -- output node 0 with id 37
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_37);
    end if;
  end process;
  -- output node 1 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 2 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_42);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [4], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "11",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[15], [15], [63], [17]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[19], [11], [59], [13]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[1], [8], [1], [1]]
  c_6_0_0_False_resize <= resize(c_0, 19);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_3_False_resize <= resize(c_0, 19);
  c_6_0_3_False_shift <= shift_left(c_6_0_3_False_resize, 3);
  with config_select_1 select c_6_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_0_0_False_shift;
        when others => c_6 <= c_6_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[3], [139], [43], [29]]
  with config_select_4 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 24,
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
      sub_i => c_9_sub_sel,
      x_i => c_5,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 10 and associated fundamentals [[4], [1], [4], [4]]
  c_10_0_0_False_resize <= resize(c_0, 18);
  c_10_0_0_False_shift <= shift_left(c_10_0_0_False_resize, 0);
  c_10_0_2_False_resize <= resize(c_0, 18);
  c_10_0_2_False_shift <= shift_left(c_10_0_2_False_resize, 2);
  with config_select_1 select c_10_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_0_0_False_shift;
        when others => c_10 <= c_10_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[15], [15], [63], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[15], [15], [63], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[3], [139], [4], [34]]
  c_15_9_0_False_resize <= c_9;
  c_15_9_0_False_shift <= shift_left(c_15_9_0_False_resize, 0);
  c_15_12_2_False_resize <= resize(c_12, 24);
  c_15_12_2_False_shift <= shift_left(c_15_12_2_False_resize, 2);
  c_15_14_1_False_resize <= resize(c_14, 24);
  c_15_14_1_False_shift <= shift_left(c_15_14_1_False_resize, 1);
  with config_select_5 select c_15_sel <= 
    "00" when "00",
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_9_0_False_shift;
        when "01" => c_15 <= c_15_12_2_False_shift;
        when others => c_15 <= c_15_14_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 16 and associated fundamentals [[4], [1], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 17 and associated fundamentals [[4], [1], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[4], [1], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[4], [1], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 20 and associated fundamentals [[131], [171], [124], [94]]
  with config_select_6 select c_20_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_20_sub_sel,
      x_i => c_19,
      y_i => c_15,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[15], [15], [63], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[15], [15], [63], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[60], [60], [256], [94]]
  c_25_24_2_False_resize <= resize(c_24, 24);
  c_25_24_2_False_shift <= shift_left(c_25_24_2_False_resize, 2);
  c_25_22_8_False_resize <= resize(c_22, 24);
  c_25_22_8_False_shift <= shift_left(c_25_22_8_False_resize, 8);
  c_25_20_0_False_resize <= c_20;
  c_25_20_0_False_shift <= shift_left(c_25_20_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "00" when "01",
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_24_2_False_shift;
        when "01" => c_25 <= c_25_22_8_False_shift;
        when others => c_25 <= c_25_20_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[19], [11], [59], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[19], [11], [59], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[19], [11], [59], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[19], [11], [59], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 30 and associated fundamentals [[79], [71], [197], [107]]
  with config_select_8 select c_30_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
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
      sub_i => c_30_sub_sel,
      x_i => c_25,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[3], [139], [43], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[3], [139], [43], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[3], [139], [43], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[3], [139], [43], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 35 and associated fundamentals [[96], [71], [197], [107]]
  c_35_34_5_False_resize <= c_34;
  c_35_34_5_False_shift <= shift_left(c_35_34_5_False_resize, 5);
  c_35_30_0_False_resize <= c_30;
  c_35_30_0_False_shift <= shift_left(c_35_30_0_False_resize, 0);
  with config_select_9 select c_35_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_34_5_False_shift;
        when others => c_35 <= c_35_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 36 and associated fundamentals [[158], [139], [43], [116]]
  c_36_30_1_False_resize <= c_30;
  c_36_30_1_False_shift <= shift_left(c_36_30_1_False_resize, 1);
  c_36_34_2_False_resize <= c_34;
  c_36_34_2_False_shift <= shift_left(c_36_34_2_False_resize, 2);
  c_36_34_0_False_resize <= c_34;
  c_36_34_0_False_shift <= shift_left(c_36_34_0_False_resize, 0);
  with config_select_9 select c_36_sel <= 
    "00" when "00",
    "01" when "11",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "00" => c_36 <= c_36_30_1_False_shift;
        when "01" => c_36 <= c_36_34_2_False_shift;
        when others => c_36 <= c_36_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 37 and associated fundamentals [[96], [71], [197], [107]]
  c_37_resize <= c_35;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'output' in stage 9 with id 38 and associated fundamentals [[158], [139], [43], [116]]
  c_38_resize <= c_36;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[131], [171], [124], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[131], [171], [124], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 41 and associated fundamentals [[131], [171], [124], [94]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 42 and associated fundamentals [[131], [171], [124], [94]]
  c_42_resize <= c_41;
  c_42 <= shift_left(c_42_resize, 0);
end architecture;

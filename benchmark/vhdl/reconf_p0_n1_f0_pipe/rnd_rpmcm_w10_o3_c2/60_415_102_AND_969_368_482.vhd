library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(24 downto 0);
    y_2: out std_logic_vector(24 downto 0);
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
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(15 downto 0);
  signal c_4: signed(22 downto 0);
  signal c_4_i0_resize: signed(22 downto 0);
  signal c_4_i1_resize: signed(22 downto 0);
  signal c_4_i0_shift: signed(22 downto 0);
  signal c_4_i1_shift: signed(22 downto 0);
  signal c_4_arith: signed(22 downto 0);
  signal c_4_oshift: signed(22 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_4_0_False_resize: signed(24 downto 0);
  signal c_6_4_0_False_shift: signed(24 downto 0);
  signal c_6_5_5_False_resize: signed(24 downto 0);
  signal c_6_5_5_False_shift: signed(24 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_9_0_False_resize: signed(23 downto 0);
  signal c_12_9_0_False_shift: signed(23 downto 0);
  signal c_12_11_4_False_resize: signed(23 downto 0);
  signal c_12_11_4_False_shift: signed(23 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_17: signed(25 downto 0);
  signal c_17_i0_resize: signed(25 downto 0);
  signal c_17_i1_resize: signed(25 downto 0);
  signal c_17_i0_shift: signed(25 downto 0);
  signal c_17_i1_shift: signed(25 downto 0);
  signal c_17_arith: signed(25 downto 0);
  signal c_17_oshift: signed(25 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_17_0_False_resize: signed(25 downto 0);
  signal c_20_17_0_False_shift: signed(25 downto 0);
  signal c_20_19_2_False_resize: signed(25 downto 0);
  signal c_20_19_2_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_23: signed(22 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_25_24_2_False_resize: signed(24 downto 0);
  signal c_25_24_2_False_shift: signed(24 downto 0);
  signal c_25_17_0_False_resize: signed(24 downto 0);
  signal c_25_17_0_False_shift: signed(24 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_resize: signed(24 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_resize: signed(24 downto 0);
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
  -- output node 0 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 1 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 2 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_31);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[15], [15]]
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
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[7], [9]]
  with config_select_1 select c_2_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_2: entity work.adder_node
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
      sub_i => c_2_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 4 and associated fundamentals [[100], [92]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 20,
      w_o => 23,
      s_x_i => 7,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_3,
      y_i => c_2,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[100], [480]]
  c_6_4_0_False_resize <= resize(c_4, 25);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  c_6_5_5_False_resize <= resize(c_5, 25);
  c_6_5_5_False_shift <= shift_left(c_6_5_5_False_resize, 5);
  with config_select_3 select c_6_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_4_0_False_shift;
        when others => c_6 <= c_6_5_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 9 and associated fundamentals [[102], [482]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 16,
      w_o => 25,
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
      x_i => c_6,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[102], [240]]
  c_12_9_0_False_resize <= c_9(23 downto 0);
  c_12_9_0_False_shift <= shift_left(c_12_9_0_False_resize, 0);
  c_12_11_4_False_resize <= resize(c_11, 24);
  c_12_11_4_False_shift <= shift_left(c_12_11_4_False_resize, 4);
  with config_select_5 select c_12_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_9_0_False_shift;
        when others => c_12 <= c_12_11_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 13 and associated fundamentals [[7], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[7], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[7], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[7], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 17 and associated fundamentals [[415], [969]]
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
      w_o => 26,
      s_x_i => 2,
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
      c_17 <= c_17_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 20 and associated fundamentals [[60], [969]]
  c_20_17_0_False_resize <= c_17;
  c_20_17_0_False_shift <= shift_left(c_20_17_0_False_resize, 0);
  c_20_19_2_False_resize <= resize(c_19, 26);
  c_20_19_2_False_shift <= shift_left(c_20_19_2_False_resize, 2);
  with config_select_7 select c_20_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_17_0_False_shift;
        when others => c_20 <= c_20_19_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 21 and associated fundamentals [[100], [92]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[100], [92]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[100], [92]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[100], [92]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[415], [368]]
  c_25_24_2_False_resize <= resize(c_24, 25);
  c_25_24_2_False_shift <= shift_left(c_25_24_2_False_resize, 2);
  c_25_17_0_False_resize <= c_17(24 downto 0);
  c_25_17_0_False_shift <= shift_left(c_25_17_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_24_2_False_shift;
        when others => c_25 <= c_25_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 26 and associated fundamentals [[60], [969]]
  c_26_resize <= c_20;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 7 with id 27 and associated fundamentals [[415], [368]]
  c_27_resize <= c_25;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[102], [482]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[102], [482]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[102], [482]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 31 and associated fundamentals [[102], [482]]
  c_31_resize <= c_30;
  c_31 <= shift_left(c_31_resize, 0);
end architecture;

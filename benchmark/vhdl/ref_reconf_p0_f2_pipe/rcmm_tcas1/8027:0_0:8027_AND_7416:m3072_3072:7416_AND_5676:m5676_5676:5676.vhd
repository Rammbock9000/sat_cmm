library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(29 downto 0);
    y_1: out std_logic_vector(29 downto 0);
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
  signal c_0: signed(17 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_2: signed(2 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(23 downto 0);
  signal c_4_3_4_False_resize: signed(23 downto 0);
  signal c_4_3_4_False_shift: signed(23 downto 0);
  signal c_4_3_0_False_resize: signed(23 downto 0);
  signal c_4_3_0_False_shift: signed(23 downto 0);
  signal c_4_3_3_False_resize: signed(23 downto 0);
  signal c_4_3_3_False_shift: signed(23 downto 0);
  signal c_4_sel: std_logic_vector(1 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_6: signed(17 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_i0_resize: signed(24 downto 0);
  signal c_7_i1_resize: signed(24 downto 0);
  signal c_7_i0_shift: signed(24 downto 0);
  signal c_7_i1_shift: signed(24 downto 0);
  signal c_7_arith: signed(24 downto 0);
  signal c_7_oshift: signed(23 downto 0);
  signal c_8: signed(19 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_10: signed(17 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_9_1_False_resize: signed(23 downto 0);
  signal c_11_9_1_False_shift: signed(23 downto 0);
  signal c_11_10_3_False_resize: signed(23 downto 0);
  signal c_11_10_3_False_shift: signed(23 downto 0);
  signal c_11_7_0_False_resize: signed(23 downto 0);
  signal c_11_7_0_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_13: signed(30 downto 0);
  signal c_13_i0_resize: signed(30 downto 0);
  signal c_13_i1_resize: signed(30 downto 0);
  signal c_13_i0_shift: signed(30 downto 0);
  signal c_13_i1_shift: signed(30 downto 0);
  signal c_13_arith: signed(30 downto 0);
  signal c_13_oshift: signed(30 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(2 downto 0);
  signal c_15: signed(2 downto 0);
  signal c_16: signed(2 downto 0);
  signal c_17: signed(2 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_20: signed(30 downto 0);
  signal c_20_19_11_False_resize: signed(30 downto 0);
  signal c_20_19_11_False_shift: signed(30 downto 0);
  signal c_20_17_0_False_resize: signed(30 downto 0);
  signal c_20_17_0_False_shift: signed(30 downto 0);
  signal c_20_13_0_False_resize: signed(30 downto 0);
  signal c_20_13_0_False_shift: signed(30 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_21_i0_resize: signed(20 downto 0);
  signal c_21_i1_resize: signed(20 downto 0);
  signal c_21_i0_shift: signed(20 downto 0);
  signal c_21_i1_shift: signed(20 downto 0);
  signal c_21_arith: signed(20 downto 0);
  signal c_21_oshift: signed(19 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(23 downto 0);
  signal c_22_21_3_False_resize: signed(23 downto 0);
  signal c_22_21_3_False_shift: signed(23 downto 0);
  signal c_22_21_0_False_resize: signed(23 downto 0);
  signal c_22_21_0_False_shift: signed(23 downto 0);
  signal c_22_21_4_False_resize: signed(23 downto 0);
  signal c_22_21_4_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(17 downto 0);
  signal c_24: signed(17 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(24 downto 0);
  signal c_25_i1_resize: signed(24 downto 0);
  signal c_25_i0_shift: signed(24 downto 0);
  signal c_25_i1_shift: signed(24 downto 0);
  signal c_25_arith: signed(24 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_26: signed(19 downto 0);
  signal c_27: signed(19 downto 0);
  signal c_28: signed(17 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_28_3_False_resize: signed(23 downto 0);
  signal c_29_28_3_False_shift: signed(23 downto 0);
  signal c_29_25_0_False_resize: signed(23 downto 0);
  signal c_29_25_0_False_shift: signed(23 downto 0);
  signal c_29_27_1_False_resize: signed(23 downto 0);
  signal c_29_27_1_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_31: signed(30 downto 0);
  signal c_31_i0_resize: signed(30 downto 0);
  signal c_31_i1_resize: signed(30 downto 0);
  signal c_31_i0_shift: signed(30 downto 0);
  signal c_31_i1_shift: signed(30 downto 0);
  signal c_31_arith: signed(30 downto 0);
  signal c_31_oshift: signed(30 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(19 downto 0);
  signal c_33: signed(19 downto 0);
  signal c_34: signed(30 downto 0);
  signal c_34_17_0_False_resize: signed(30 downto 0);
  signal c_34_17_0_False_shift: signed(30 downto 0);
  signal c_34_31_0_False_resize: signed(30 downto 0);
  signal c_34_31_0_False_shift: signed(30 downto 0);
  signal c_34_33_11_False_resize: signed(30 downto 0);
  signal c_34_33_11_False_shift: signed(30 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(30 downto 0);
  signal c_36: signed(31 downto 0);
  signal c_36_i0_resize: signed(31 downto 0);
  signal c_36_i1_resize: signed(31 downto 0);
  signal c_36_i0_shift: signed(31 downto 0);
  signal c_36_i1_shift: signed(31 downto 0);
  signal c_36_arith: signed(31 downto 0);
  signal c_36_oshift: signed(31 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(30 downto 0);
  signal c_38: signed(31 downto 0);
  signal c_38_i0_resize: signed(31 downto 0);
  signal c_38_i1_resize: signed(31 downto 0);
  signal c_38_i0_shift: signed(31 downto 0);
  signal c_38_i1_shift: signed(31 downto 0);
  signal c_38_arith: signed(31 downto 0);
  signal c_38_oshift: signed(31 downto 0);
  signal c_39: signed(31 downto 0);
  signal c_39_resize: signed(31 downto 0);
  signal c_40: signed(31 downto 0);
  signal c_40_resize: signed(31 downto 0);
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
      c_0 <= signed(x_0 & "00");
    end if;
  end process;
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1 & "00");
    end if;
  end process;
  -- output node 0 with id 39
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_39(31 downto 2));
    end if;
  end process;
  -- output node 1 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_40(31 downto 2));
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 2 and associated fundamentals [[0, 0], [0, 0], [0, 0]]
  c_2 <= (others => '0');
  -- node of type 'add_sub' in stage 1 with id 3 and associated fundamentals [[10, 0], [6, 0], [10, 0]]
  with config_select_1 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 20,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_3_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 4 and associated fundamentals [[10, 0], [48, 0], [160, 0]]
  c_4_3_4_False_resize <= resize(c_3, 24);
  c_4_3_4_False_shift <= shift_left(c_4_3_4_False_resize, 4);
  c_4_3_0_False_resize <= resize(c_3, 24);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  c_4_3_3_False_resize <= resize(c_3, 24);
  c_4_3_3_False_shift <= shift_left(c_4_3_3_False_resize, 3);
  with config_select_2 select c_4_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "00" => c_4 <= c_4_3_4_False_shift;
        when "01" => c_4 <= c_4_3_0_False_shift;
        when others => c_4 <= c_4_3_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 5 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 7 and associated fundamentals [[251, 0], [232, 0], [176, 0]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 7,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_6,
      y_i => c_4,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[10, 0], [6, 0], [10, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[10, 0], [6, 0], [10, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[20, 0], [32, 0], [176, 0]]
  c_11_9_1_False_resize <= resize(c_9, 24);
  c_11_9_1_False_shift <= shift_left(c_11_9_1_False_resize, 1);
  c_11_10_3_False_resize <= resize(c_10, 24);
  c_11_10_3_False_shift <= shift_left(c_11_10_3_False_resize, 3);
  c_11_7_0_False_resize <= c_7;
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  with config_select_4 select c_11_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_9_1_False_shift;
        when "01" => c_11 <= c_11_10_3_False_shift;
        when others => c_11 <= c_11_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[251, 0], [232, 0], [176, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 13 and associated fundamentals [[32108, 0], [29664, 0], [22704, 0]]
  with config_select_5 select c_13_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 31,
      s_x_i => 7,
      s_y_i => 0,
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
      c_13 <= c_13_oshift(30 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 14 and associated fundamentals [[0, 0], [0, 0], [0, 0]]
  c_14 <= (others => '0');
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[0, 0], [0, 0], [0, 0]]
  c_15 <= (others => '0');
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[0, 0], [0, 0], [0, 0]]
  c_16 <= (others => '0');
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[0, 0], [0, 0], [0, 0]]
  c_17 <= (others => '0');
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[10, 0], [6, 0], [10, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[10, 0], [6, 0], [10, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 20 and associated fundamentals [[0, 0], [12288, 0], [22704, 0]]
  c_20_19_11_False_resize <= resize(c_19, 31);
  c_20_19_11_False_shift <= shift_left(c_20_19_11_False_resize, 11);
  c_20_17_0_False_resize <= resize(c_17, 31);
  c_20_17_0_False_shift <= shift_left(c_20_17_0_False_resize, 0);
  c_20_13_0_False_resize <= c_13;
  c_20_13_0_False_shift <= shift_left(c_20_13_0_False_resize, 0);
  with config_select_6 select c_20_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_19_11_False_shift;
        when "01" => c_20 <= c_20_17_0_False_shift;
        when others => c_20 <= c_20_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 21 and associated fundamentals [[0, 10], [0, 6], [0, 10]]
  with config_select_1 select c_21_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 20,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_21_sub_sel,
      x_i => c_1,
      y_i => c_1,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 22 and associated fundamentals [[0, 10], [0, 48], [0, 160]]
  c_22_21_3_False_resize <= resize(c_21, 24);
  c_22_21_3_False_shift <= shift_left(c_22_21_3_False_resize, 3);
  c_22_21_0_False_resize <= resize(c_21, 24);
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  c_22_21_4_False_resize <= resize(c_21, 24);
  c_22_21_4_False_shift <= shift_left(c_22_21_4_False_resize, 4);
  with config_select_2 select c_22_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_21_3_False_shift;
        when "01" => c_22 <= c_22_21_0_False_shift;
        when others => c_22 <= c_22_21_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 23 and associated fundamentals [[0, 4], [0, 4], [0, 4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 24 and associated fundamentals [[0, 4], [0, 4], [0, 4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 25 and associated fundamentals [[0, 251], [0, 232], [0, 176]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 24,
      w_o => 24,
      s_x_i => 7,
      s_y_i => 0,
      s_o => 1,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_24,
      y_i => c_22,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 26 and associated fundamentals [[0, 10], [0, 6], [0, 10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 27 and associated fundamentals [[0, 10], [0, 6], [0, 10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 28 and associated fundamentals [[0, 4], [0, 4], [0, 4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[0, 20], [0, 32], [0, 176]]
  c_29_28_3_False_resize <= resize(c_28, 24);
  c_29_28_3_False_shift <= shift_left(c_29_28_3_False_resize, 3);
  c_29_25_0_False_resize <= c_25;
  c_29_25_0_False_shift <= shift_left(c_29_25_0_False_resize, 0);
  c_29_27_1_False_resize <= resize(c_27, 24);
  c_29_27_1_False_shift <= shift_left(c_29_27_1_False_resize, 1);
  with config_select_4 select c_29_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_28_3_False_shift;
        when "01" => c_29 <= c_29_25_0_False_shift;
        when others => c_29 <= c_29_27_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[0, 251], [0, 232], [0, 176]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 31 and associated fundamentals [[0, 32108], [0, 29664], [0, 22704]]
  with config_select_5 select c_31_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 31,
      s_x_i => 7,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_31_sub_sel,
      x_i => c_30,
      y_i => c_29,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(30 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 32 and associated fundamentals [[0, 10], [0, 6], [0, 10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 33 and associated fundamentals [[0, 10], [0, 6], [0, 10]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 34 and associated fundamentals [[0, 0], [0, 12288], [0, 22704]]
  c_34_17_0_False_resize <= resize(c_17, 31);
  c_34_17_0_False_shift <= shift_left(c_34_17_0_False_resize, 0);
  c_34_31_0_False_resize <= c_31;
  c_34_31_0_False_shift <= shift_left(c_34_31_0_False_resize, 0);
  c_34_33_11_False_resize <= resize(c_33, 31);
  c_34_33_11_False_shift <= shift_left(c_34_33_11_False_resize, 11);
  with config_select_6 select c_34_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_17_0_False_shift;
        when "01" => c_34 <= c_34_31_0_False_shift;
        when others => c_34 <= c_34_33_11_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[32108, 0], [29664, 0], [22704, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 36 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  with config_select_7 select c_36_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 31,
      w_y_i => 31,
      w_o => 32,
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
      sub_i => c_36_sub_sel,
      x_i => c_35,
      y_i => c_34,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[0, 32108], [0, 29664], [0, 22704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_31 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 38 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 31,
      w_y_i => 31,
      w_o => 32,
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
      x_i => c_37,
      y_i => c_20,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 39 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  c_39_resize <= c_36;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'output' in stage 7 with id 40 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  c_40_resize <= c_38;
  c_40 <= shift_left(c_40_resize, 0);
end architecture;

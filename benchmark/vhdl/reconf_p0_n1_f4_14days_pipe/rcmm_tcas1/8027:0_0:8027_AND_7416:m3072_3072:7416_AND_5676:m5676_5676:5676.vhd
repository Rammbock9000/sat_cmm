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
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal c_0: signed(19 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_2: signed(24 downto 0);
  signal c_2_0_0_False_resize: signed(24 downto 0);
  signal c_2_0_0_False_shift: signed(24 downto 0);
  signal c_2_0_5_False_resize: signed(24 downto 0);
  signal c_2_0_5_False_shift: signed(24 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_4: signed(25 downto 0);
  signal c_4_i0_resize: signed(25 downto 0);
  signal c_4_i1_resize: signed(25 downto 0);
  signal c_4_i0_shift: signed(25 downto 0);
  signal c_4_i1_shift: signed(25 downto 0);
  signal c_4_arith: signed(25 downto 0);
  signal c_4_oshift: signed(25 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(21 downto 0);
  signal c_5_0_0_False_resize: signed(21 downto 0);
  signal c_5_0_0_False_shift: signed(21 downto 0);
  signal c_5_1_2_False_resize: signed(21 downto 0);
  signal c_5_1_2_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_7_0_False_resize: signed(22 downto 0);
  signal c_9_7_0_False_shift: signed(22 downto 0);
  signal c_9_8_0_False_resize: signed(22 downto 0);
  signal c_9_8_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_7_0_False_resize: signed(22 downto 0);
  signal c_10_7_0_False_shift: signed(22 downto 0);
  signal c_10_7_2_False_resize: signed(22 downto 0);
  signal c_10_7_2_False_shift: signed(22 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(28 downto 0);
  signal c_11_i0_resize: signed(28 downto 0);
  signal c_11_i1_resize: signed(28 downto 0);
  signal c_11_i0_shift: signed(28 downto 0);
  signal c_11_i1_shift: signed(28 downto 0);
  signal c_11_arith: signed(28 downto 0);
  signal c_11_oshift: signed(28 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_12_0_False_resize: signed(24 downto 0);
  signal c_13_12_0_False_shift: signed(24 downto 0);
  signal c_13_8_4_False_resize: signed(24 downto 0);
  signal c_13_8_4_False_shift: signed(24 downto 0);
  signal c_13_7_3_False_resize: signed(24 downto 0);
  signal c_13_7_3_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(25 downto 0);
  signal c_15: signed(26 downto 0);
  signal c_15_i0_resize: signed(26 downto 0);
  signal c_15_i1_resize: signed(26 downto 0);
  signal c_15_i0_shift: signed(26 downto 0);
  signal c_15_i1_shift: signed(26 downto 0);
  signal c_15_arith: signed(26 downto 0);
  signal c_15_oshift: signed(26 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(25 downto 0);
  signal c_17: signed(29 downto 0);
  signal c_17_11_0_False_resize: signed(29 downto 0);
  signal c_17_11_0_False_shift: signed(29 downto 0);
  signal c_17_16_8_False_resize: signed(29 downto 0);
  signal c_17_16_8_False_shift: signed(29 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(30 downto 0);
  signal c_18_11_0_False_resize: signed(30 downto 0);
  signal c_18_11_0_False_shift: signed(30 downto 0);
  signal c_18_11_2_False_resize: signed(30 downto 0);
  signal c_18_11_2_False_shift: signed(30 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(31 downto 0);
  signal c_19_i0_resize: signed(31 downto 0);
  signal c_19_i1_resize: signed(31 downto 0);
  signal c_19_i0_shift: signed(31 downto 0);
  signal c_19_i1_shift: signed(31 downto 0);
  signal c_19_arith: signed(31 downto 0);
  signal c_19_oshift: signed(31 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(19 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_22: signed(19 downto 0);
  signal c_23: signed(19 downto 0);
  signal c_24: signed(31 downto 0);
  signal c_24_19_0_False_resize: signed(31 downto 0);
  signal c_24_19_0_False_shift: signed(31 downto 0);
  signal c_24_23_12_False_resize: signed(31 downto 0);
  signal c_24_23_12_False_shift: signed(31 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(26 downto 0);
  signal c_25_15_0_False_resize: signed(26 downto 0);
  signal c_25_15_0_False_shift: signed(26 downto 0);
  signal c_25_21_3_False_resize: signed(26 downto 0);
  signal c_25_21_3_False_shift: signed(26 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(26 downto 0);
  signal c_27: signed(26 downto 0);
  signal c_28: signed(32 downto 0);
  signal c_28_i0_resize: signed(32 downto 0);
  signal c_28_i1_resize: signed(32 downto 0);
  signal c_28_i0_shift: signed(32 downto 0);
  signal c_28_i1_shift: signed(32 downto 0);
  signal c_28_arith: signed(32 downto 0);
  signal c_28_oshift: signed(32 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(19 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_31: signed(28 downto 0);
  signal c_31_30_9_False_resize: signed(28 downto 0);
  signal c_31_30_9_False_shift: signed(28 downto 0);
  signal c_31_11_0_False_resize: signed(28 downto 0);
  signal c_31_11_0_False_shift: signed(28 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(28 downto 0);
  signal c_33: signed(28 downto 0);
  signal c_34: signed(32 downto 0);
  signal c_34_19_1_False_resize: signed(32 downto 0);
  signal c_34_19_1_False_shift: signed(32 downto 0);
  signal c_34_33_0_False_resize: signed(32 downto 0);
  signal c_34_33_0_False_shift: signed(32 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(28 downto 0);
  signal c_36: signed(28 downto 0);
  signal c_37: signed(33 downto 0);
  signal c_37_i0_resize: signed(33 downto 0);
  signal c_37_i1_resize: signed(33 downto 0);
  signal c_37_i0_shift: signed(33 downto 0);
  signal c_37_i1_shift: signed(33 downto 0);
  signal c_37_arith: signed(33 downto 0);
  signal c_37_oshift: signed(33 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(28 downto 0);
  signal c_38_15_0_False_resize: signed(28 downto 0);
  signal c_38_15_0_False_shift: signed(28 downto 0);
  signal c_38_15_2_False_resize: signed(28 downto 0);
  signal c_38_15_2_False_shift: signed(28 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(28 downto 0);
  signal c_40: signed(28 downto 0);
  signal c_41: signed(28 downto 0);
  signal c_42: signed(33 downto 0);
  signal c_42_i0_resize: signed(33 downto 0);
  signal c_42_i1_resize: signed(33 downto 0);
  signal c_42_i0_shift: signed(33 downto 0);
  signal c_42_i1_shift: signed(33 downto 0);
  signal c_42_arith: signed(33 downto 0);
  signal c_42_oshift: signed(33 downto 0);
  signal c_42_sub_sel: std_logic;
  signal c_43: signed(33 downto 0);
  signal c_43_resize: signed(33 downto 0);
  signal c_44: signed(33 downto 0);
  signal c_45: signed(33 downto 0);
  signal c_45_resize: signed(33 downto 0);
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
      c_0 <= signed(x_0 & "0000");
    end if;
  end process;
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1 & "0000");
    end if;
  end process;
  -- output node 0 with id 43
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_43(33 downto 4));
    end if;
  end process;
  -- output node 1 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_45(33 downto 4));
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[16, 0], [16, 0], [512, 0]]
  c_2_0_0_False_resize <= resize(c_0, 25);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_5_False_resize <= resize(c_0, 25);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
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
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[16, 0], [16, 0], [16, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[48, 0], [48, 0], [576, 0]]
  with config_select_2 select c_4_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
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
      sub_i => c_4_sub_sel,
      x_i => c_3,
      y_i => c_2,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[0, 64], [0, 64], [16, 0]]
  c_5_0_0_False_resize <= resize(c_0, 22);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_1_2_False_resize <= resize(c_1, 22);
  c_5_1_2_False_shift <= shift_left(c_5_1_2_False_resize, 2);
  with config_select_1 select c_5_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_1_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 6 and associated fundamentals [[0, 16], [0, 16], [0, 16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 7 and associated fundamentals [[0, 80], [0, 48], [16, 16]]
  with config_select_2 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 23,
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
      sub_i => c_7_sub_sel,
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
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[0, 16], [0, 16], [0, 16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[0, 80], [0, 16], [16, 16]]
  c_9_7_0_False_resize <= c_7;
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  c_9_8_0_False_resize <= resize(c_8, 23);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_7_0_False_shift;
        when others => c_9 <= c_9_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[0, 80], [0, 48], [64, 64]]
  c_10_7_0_False_resize <= c_7;
  c_10_7_0_False_shift <= shift_left(c_10_7_0_False_resize, 0);
  c_10_7_2_False_resize <= c_7;
  c_10_7_2_False_shift <= shift_left(c_10_7_2_False_resize, 2);
  with config_select_3 select c_10_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_7_0_False_shift;
        when others => c_10 <= c_10_7_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 11 and associated fundamentals [[0, 2640], [0, 1552], [2064, 2064]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 29,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[16, 0], [16, 0], [16, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[16, 0], [0, 384], [0, 256]]
  c_13_12_0_False_resize <= resize(c_12, 25);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_8_4_False_resize <= resize(c_8, 25);
  c_13_8_4_False_shift <= shift_left(c_13_8_4_False_resize, 4);
  c_13_7_3_False_resize <= resize(c_7, 25);
  c_13_7_3_False_shift <= shift_left(c_13_7_3_False_resize, 3);
  with config_select_3 select c_13_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_12_0_False_shift;
        when "01" => c_13 <= c_13_8_4_False_shift;
        when others => c_13 <= c_13_7_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[48, 0], [48, 0], [576, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 15 and associated fundamentals [[80, 0], [96, 384], [1152, -256]]
  with config_select_4 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 27,
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
      y_i => c_13,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[48, 0], [48, 0], [576, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[12288, 0], [12288, 0], [2064, 2064]]
  c_17_11_0_False_resize <= resize(c_11, 30);
  c_17_11_0_False_shift <= shift_left(c_17_11_0_False_resize, 0);
  c_17_16_8_False_resize <= resize(c_16, 30);
  c_17_16_8_False_shift <= shift_left(c_17_16_8_False_resize, 8);
  with config_select_5 select c_17_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_11_0_False_shift;
        when others => c_17 <= c_17_16_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[0, 2640], [0, 1552], [8256, 8256]]
  c_18_11_0_False_resize <= resize(c_11, 31);
  c_18_11_0_False_shift <= shift_left(c_18_11_0_False_resize, 0);
  c_18_11_2_False_resize <= resize(c_11, 31);
  c_18_11_2_False_shift <= shift_left(c_18_11_2_False_resize, 2);
  with config_select_5 select c_18_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_11_0_False_shift;
        when others => c_18 <= c_18_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 19 and associated fundamentals [[24576, 10560], [24576, -6208], [-28896, -28896]]
  with config_select_6 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 31,
      w_o => 32,
      s_x_i => 1,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[16, 0], [16, 0], [16, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[16, 0], [16, 0], [16, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[16, 0], [16, 0], [16, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[16, 0], [16, 0], [16, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 24 and associated fundamentals [[65536, 0], [65536, 0], [-28896, -28896]]
  c_24_19_0_False_resize <= c_19;
  c_24_19_0_False_shift <= shift_left(c_24_19_0_False_resize, 0);
  c_24_23_12_False_resize <= resize(c_23, 32);
  c_24_23_12_False_shift <= shift_left(c_24_23_12_False_resize, 12);
  with config_select_7 select c_24_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_19_0_False_shift;
        when others => c_24 <= c_24_23_12_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 25 and associated fundamentals [[80, 0], [128, 0], [1152, -256]]
  c_25_15_0_False_resize <= c_15;
  c_25_15_0_False_shift <= shift_left(c_25_15_0_False_resize, 0);
  c_25_21_3_False_resize <= resize(c_21, 27);
  c_25_21_3_False_shift <= shift_left(c_25_21_3_False_resize, 3);
  with config_select_5 select c_25_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_15_0_False_shift;
        when others => c_25 <= c_25_21_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[80, 0], [128, 0], [1152, -256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[80, 0], [128, 0], [1152, -256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 28 and associated fundamentals [[130992, 0], [130944, 0], [-56640, -58048]]
  with config_select_8 select c_28_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 27,
      w_o => 33,
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
      x_i => c_24,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 29 and associated fundamentals [[0, 16], [0, 16], [0, 16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[0, 16], [0, 16], [0, 16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[0, 8192], [0, 8192], [2064, 2064]]
  c_31_30_9_False_resize <= resize(c_30, 29);
  c_31_30_9_False_shift <= shift_left(c_31_30_9_False_resize, 9);
  c_31_11_0_False_resize <= c_11;
  c_31_11_0_False_shift <= shift_left(c_31_11_0_False_resize, 0);
  with config_select_5 select c_31_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_30_9_False_shift;
        when others => c_31 <= c_31_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[0, 2640], [0, 1552], [2064, 2064]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[0, 2640], [0, 1552], [2064, 2064]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 34 and associated fundamentals [[0, 2640], [49152, -12416], [-57792, -57792]]
  c_34_19_1_False_resize <= resize(c_19, 33);
  c_34_19_1_False_shift <= shift_left(c_34_19_1_False_resize, 1);
  c_34_33_0_False_resize <= resize(c_33, 33);
  c_34_33_0_False_shift <= shift_left(c_34_33_0_False_resize, 0);
  with config_select_7 select c_34_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_19_1_False_shift;
        when others => c_34 <= c_34_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[0, 8192], [0, 8192], [2064, 2064]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[0, 8192], [0, 8192], [2064, 2064]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 37 and associated fundamentals [[0, 128432], [49152, 118656], [90816, 90816]]
  with config_select_8 select c_37_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 33,
      w_o => 34,
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
      sub_i => c_37_sub_sel,
      x_i => c_36,
      y_i => c_34,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(33 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 38 and associated fundamentals [[80, 0], [384, 1536], [4608, -1024]]
  c_38_15_0_False_resize <= resize(c_15, 29);
  c_38_15_0_False_shift <= shift_left(c_38_15_0_False_resize, 0);
  c_38_15_2_False_resize <= resize(c_15, 29);
  c_38_15_2_False_shift <= shift_left(c_38_15_2_False_resize, 2);
  with config_select_5 select c_38_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_15_0_False_shift;
        when others => c_38 <= c_38_15_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[80, 0], [384, 1536], [4608, -1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[80, 0], [384, 1536], [4608, -1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[80, 0], [384, 1536], [4608, -1024]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 42 and associated fundamentals [[128432, 0], [118656, -49152], [90816, -90816]]
  with config_select_9 select c_42_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 29,
      w_o => 34,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_42_sub_sel,
      x_i => c_28,
      y_i => c_41,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(33 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 43 and associated fundamentals [[128432, 0], [118656, -49152], [90816, -90816]]
  c_43_resize <= c_42;
  c_43 <= shift_left(c_43_resize, 0);
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[0, 128432], [49152, 118656], [90816, 90816]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_37 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 45 and associated fundamentals [[0, 128432], [49152, 118656], [90816, 90816]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
end architecture;

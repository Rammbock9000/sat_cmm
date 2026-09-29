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
  signal c_0: signed(19 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_2: signed(24 downto 0);
  signal c_2_0_4_False_resize: signed(24 downto 0);
  signal c_2_0_4_False_shift: signed(24 downto 0);
  signal c_2_0_0_False_resize: signed(24 downto 0);
  signal c_2_0_0_False_shift: signed(24 downto 0);
  signal c_2_1_5_False_resize: signed(24 downto 0);
  signal c_2_1_5_False_shift: signed(24 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_1_0_False_resize: signed(20 downto 0);
  signal c_3_1_0_False_shift: signed(20 downto 0);
  signal c_3_0_1_False_resize: signed(20 downto 0);
  signal c_3_0_1_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(27 downto 0);
  signal c_4_i0_resize: signed(27 downto 0);
  signal c_4_i1_resize: signed(27 downto 0);
  signal c_4_i0_shift: signed(27 downto 0);
  signal c_4_i1_shift: signed(27 downto 0);
  signal c_4_arith: signed(27 downto 0);
  signal c_4_oshift: signed(27 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_1_3_False_resize: signed(22 downto 0);
  signal c_5_1_3_False_shift: signed(22 downto 0);
  signal c_5_1_0_False_resize: signed(22 downto 0);
  signal c_5_1_0_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_7: signed(29 downto 0);
  signal c_7_i0_resize: signed(29 downto 0);
  signal c_7_i1_resize: signed(29 downto 0);
  signal c_7_i0_shift: signed(29 downto 0);
  signal c_7_i1_shift: signed(29 downto 0);
  signal c_7_arith: signed(29 downto 0);
  signal c_7_oshift: signed(29 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(19 downto 0);
  signal c_9: signed(27 downto 0);
  signal c_9_7_0_False_resize: signed(27 downto 0);
  signal c_9_7_0_False_shift: signed(27 downto 0);
  signal c_9_8_6_False_resize: signed(27 downto 0);
  signal c_9_8_6_False_shift: signed(27 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_11: signed(19 downto 0);
  signal c_12: signed(27 downto 0);
  signal c_12_4_0_False_resize: signed(27 downto 0);
  signal c_12_4_0_False_shift: signed(27 downto 0);
  signal c_12_11_8_False_resize: signed(27 downto 0);
  signal c_12_11_8_False_shift: signed(27 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(30 downto 0);
  signal c_13_i0_resize: signed(30 downto 0);
  signal c_13_i1_resize: signed(30 downto 0);
  signal c_13_i0_shift: signed(30 downto 0);
  signal c_13_i1_shift: signed(30 downto 0);
  signal c_13_arith: signed(30 downto 0);
  signal c_13_oshift: signed(30 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(29 downto 0);
  signal c_15: signed(29 downto 0);
  signal c_16: signed(32 downto 0);
  signal c_16_15_3_False_resize: signed(32 downto 0);
  signal c_16_15_3_False_shift: signed(32 downto 0);
  signal c_16_13_0_False_resize: signed(32 downto 0);
  signal c_16_13_0_False_shift: signed(32 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(31 downto 0);
  signal c_19_13_1_False_resize: signed(31 downto 0);
  signal c_19_13_1_False_shift: signed(31 downto 0);
  signal c_19_18_0_False_resize: signed(31 downto 0);
  signal c_19_18_0_False_shift: signed(31 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(33 downto 0);
  signal c_20_i0_resize: signed(33 downto 0);
  signal c_20_i1_resize: signed(33 downto 0);
  signal c_20_i0_shift: signed(33 downto 0);
  signal c_20_i1_shift: signed(33 downto 0);
  signal c_20_arith: signed(33 downto 0);
  signal c_20_oshift: signed(33 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(27 downto 0);
  signal c_21_11_1_False_resize: signed(27 downto 0);
  signal c_21_11_1_False_shift: signed(27 downto 0);
  signal c_21_4_0_False_resize: signed(27 downto 0);
  signal c_21_4_0_False_shift: signed(27 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(29 downto 0);
  signal c_22_4_2_False_resize: signed(29 downto 0);
  signal c_22_4_2_False_shift: signed(29 downto 0);
  signal c_22_11_0_False_resize: signed(29 downto 0);
  signal c_22_11_0_False_shift: signed(29 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(31 downto 0);
  signal c_23_i0_resize: signed(31 downto 0);
  signal c_23_i1_resize: signed(31 downto 0);
  signal c_23_i0_shift: signed(31 downto 0);
  signal c_23_i1_shift: signed(31 downto 0);
  signal c_23_arith: signed(31 downto 0);
  signal c_23_oshift: signed(31 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(29 downto 0);
  signal c_24_11_10_False_resize: signed(29 downto 0);
  signal c_24_11_10_False_shift: signed(29 downto 0);
  signal c_24_4_0_False_resize: signed(29 downto 0);
  signal c_24_4_0_False_shift: signed(29 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(29 downto 0);
  signal c_26: signed(33 downto 0);
  signal c_26_i0_resize: signed(33 downto 0);
  signal c_26_i1_resize: signed(33 downto 0);
  signal c_26_i0_shift: signed(33 downto 0);
  signal c_26_i1_shift: signed(33 downto 0);
  signal c_26_arith: signed(33 downto 0);
  signal c_26_oshift: signed(33 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(33 downto 0);
  signal c_27_13_3_False_resize: signed(33 downto 0);
  signal c_27_13_3_False_shift: signed(33 downto 0);
  signal c_27_13_0_False_resize: signed(33 downto 0);
  signal c_27_13_0_False_shift: signed(33 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(33 downto 0);
  signal c_29: signed(33 downto 0);
  signal c_29_i0_resize: signed(33 downto 0);
  signal c_29_i1_resize: signed(33 downto 0);
  signal c_29_i0_shift: signed(33 downto 0);
  signal c_29_i1_shift: signed(33 downto 0);
  signal c_29_arith: signed(33 downto 0);
  signal c_29_oshift: signed(33 downto 0);
  signal c_29_sub_sel: std_logic;
  signal c_30: signed(19 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(19 downto 0);
  signal c_34: signed(19 downto 0);
  signal c_35: signed(31 downto 0);
  signal c_36: signed(31 downto 0);
  signal c_37: signed(31 downto 0);
  signal c_38: signed(33 downto 0);
  signal c_38_34_3_False_resize: signed(33 downto 0);
  signal c_38_34_3_False_shift: signed(33 downto 0);
  signal c_38_29_0_False_resize: signed(33 downto 0);
  signal c_38_29_0_False_shift: signed(33 downto 0);
  signal c_38_37_0_False_resize: signed(33 downto 0);
  signal c_38_37_0_False_shift: signed(33 downto 0);
  signal c_38_sel: std_logic_vector(1 downto 0);
  signal c_39: signed(33 downto 0);
  signal c_40: signed(33 downto 0);
  signal c_41: signed(33 downto 0);
  signal c_42: signed(33 downto 0);
  signal c_42_i0_resize: signed(33 downto 0);
  signal c_42_i1_resize: signed(33 downto 0);
  signal c_42_i0_shift: signed(33 downto 0);
  signal c_42_i1_shift: signed(33 downto 0);
  signal c_42_arith: signed(33 downto 0);
  signal c_42_oshift: signed(33 downto 0);
  signal c_43: signed(33 downto 0);
  signal c_43_resize: signed(33 downto 0);
  signal c_44: signed(33 downto 0);
  signal c_45: signed(33 downto 0);
  signal c_46: signed(33 downto 0);
  signal c_46_resize: signed(33 downto 0);
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
  -- output node 1 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_46(33 downto 4));
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0, 512], [256, 0], [16, 0]]
  c_2_0_4_False_resize <= resize(c_0, 25);
  c_2_0_4_False_shift <= shift_left(c_2_0_4_False_resize, 4);
  c_2_0_0_False_resize <= resize(c_0, 25);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_1_5_False_resize <= resize(c_1, 25);
  c_2_1_5_False_shift <= shift_left(c_2_1_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_4_False_shift;
        when "01" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_1_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[0, 16], [0, 16], [32, 0]]
  c_3_1_0_False_resize <= resize(c_1, 21);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_0_1_False_resize <= resize(c_0, 21);
  c_3_0_1_False_shift <= shift_left(c_3_0_1_False_resize, 1);
  with config_select_1 select c_3_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[0, 1536], [256, 1024], [2064, 0]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 28,
      s_x_i => 0,
      s_y_i => 6,
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
      c_4 <= c_4_oshift(27 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[0, 16], [0, 128], [0, 16]]
  c_5_1_3_False_resize <= resize(c_1, 23);
  c_5_1_3_False_shift <= shift_left(c_5_1_3_False_resize, 3);
  c_5_1_0_False_resize <= resize(c_1, 23);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_3_False_shift;
        when others => c_5 <= c_5_1_0_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 7 and associated fundamentals [[0, 2032], [0, 16368], [0, 2064]]
  with config_select_2 select c_7_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 30,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[0, 16], [0, 16], [0, 16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[0, 2032], [0, 1024], [0, 2064]]
  c_9_7_0_False_resize <= c_7(27 downto 0);
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  c_9_8_6_False_resize <= resize(c_8, 28);
  c_9_8_6_False_shift <= shift_left(c_9_8_6_False_resize, 6);
  with config_select_3 select c_9_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_7_0_False_shift;
        when others => c_9 <= c_9_8_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 10 and associated fundamentals [[16, 0], [16, 0], [16, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 11 and associated fundamentals [[16, 0], [16, 0], [16, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[0, 1536], [4096, 0], [2064, 0]]
  c_12_4_0_False_resize <= c_4;
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_11_8_False_resize <= resize(c_11, 28);
  c_12_11_8_False_shift <= shift_left(c_12_11_8_False_resize, 8);
  with config_select_3 select c_12_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_4_0_False_shift;
        when others => c_12 <= c_12_11_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[0, 14272], [-16384, 4096], [8256, 8256]]
  with config_select_4 select c_13_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 28,
      w_o => 31,
      s_x_i => 2,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_13_sub_sel,
      x_i => c_9,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(30 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[0, 2032], [0, 16368], [0, 2064]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[0, 2032], [0, 16368], [0, 2064]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[0, 14272], [0, 130944], [8256, 8256]]
  c_16_15_3_False_resize <= resize(c_15, 33);
  c_16_15_3_False_shift <= shift_left(c_16_15_3_False_resize, 3);
  c_16_13_0_False_resize <= resize(c_13, 33);
  c_16_13_0_False_shift <= shift_left(c_16_13_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_15_3_False_shift;
        when others => c_16 <= c_16_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 17 and associated fundamentals [[0, 16], [0, 16], [0, 16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[0, 16], [0, 16], [0, 16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[0, 16], [-32768, 8192], [16512, 16512]]
  c_19_13_1_False_resize <= resize(c_13, 32);
  c_19_13_1_False_shift <= shift_left(c_19_13_1_False_resize, 1);
  c_19_18_0_False_resize <= resize(c_18, 32);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  with config_select_5 select c_19_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_13_1_False_shift;
        when others => c_19 <= c_19_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 20 and associated fundamentals [[0, 14256], [32768, 122752], [24768, 24768]]
  with config_select_6 select c_20_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 32,
      w_o => 34,
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
      sub_i => c_20_sub_sel,
      x_i => c_16,
      y_i => c_19,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(33 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[32, 0], [256, 1024], [2064, 0]]
  c_21_11_1_False_resize <= resize(c_11, 28);
  c_21_11_1_False_shift <= shift_left(c_21_11_1_False_resize, 1);
  c_21_4_0_False_resize <= c_4;
  c_21_4_0_False_shift <= shift_left(c_21_4_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_11_1_False_shift;
        when others => c_21 <= c_21_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 22 and associated fundamentals [[16, 0], [1024, 4096], [8256, 0]]
  c_22_4_2_False_resize <= resize(c_4, 30);
  c_22_4_2_False_shift <= shift_left(c_22_4_2_False_resize, 2);
  c_22_11_0_False_resize <= resize(c_11, 30);
  c_22_11_0_False_shift <= shift_left(c_22_11_0_False_resize, 0);
  with config_select_3 select c_22_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_4_2_False_shift;
        when others => c_22 <= c_22_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 23 and associated fundamentals [[528, 0], [3072, 12288], [41280, 0]]
  with config_select_4 select c_23_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 30,
      w_o => 32,
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
      sub_i => c_23_sub_sel,
      x_i => c_21,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 24 and associated fundamentals [[16384, 0], [16384, 0], [2064, 0]]
  c_24_11_10_False_resize <= resize(c_11, 30);
  c_24_11_10_False_shift <= shift_left(c_24_11_10_False_resize, 10);
  c_24_4_0_False_resize <= resize(c_4, 30);
  c_24_4_0_False_shift <= shift_left(c_24_4_0_False_resize, 0);
  with config_select_3 select c_24_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_11_10_False_shift;
        when others => c_24 <= c_24_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[16384, 0], [16384, 0], [2064, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 26 and associated fundamentals [[128960, 0], [118784, -49152], [181632, 0]]
  with config_select_5 select c_26_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 32,
      w_o => 34,
      s_x_i => 3,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_26_sub_sel,
      x_i => c_25,
      y_i => c_23,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(33 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 27 and associated fundamentals [[0, 114176], [-16384, 4096], [66048, 66048]]
  c_27_13_3_False_resize <= resize(c_13, 34);
  c_27_13_3_False_shift <= shift_left(c_27_13_3_False_resize, 3);
  c_27_13_0_False_resize <= resize(c_13, 34);
  c_27_13_0_False_shift <= shift_left(c_27_13_0_False_resize, 0);
  with config_select_5 select c_27_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_13_3_False_shift;
        when others => c_27 <= c_27_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[0, 114176], [-16384, 4096], [66048, 66048]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 29 and associated fundamentals [[0, 128432], [49152, 118656], [90816, 90816]]
  with config_select_7 select c_29_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 34,
      w_y_i => 34,
      w_o => 34,
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
      sub_i => c_29_sub_sel,
      x_i => c_20,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(33 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 30 and associated fundamentals [[16, 0], [16, 0], [16, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 31 and associated fundamentals [[16, 0], [16, 0], [16, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[16, 0], [16, 0], [16, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[16, 0], [16, 0], [16, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[16, 0], [16, 0], [16, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[528, 0], [3072, 12288], [41280, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[528, 0], [3072, 12288], [41280, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[528, 0], [3072, 12288], [41280, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 38 and associated fundamentals [[528, 0], [128, 0], [90816, 90816]]
  c_38_34_3_False_resize <= resize(c_34, 34);
  c_38_34_3_False_shift <= shift_left(c_38_34_3_False_resize, 3);
  c_38_29_0_False_resize <= c_29;
  c_38_29_0_False_shift <= shift_left(c_38_29_0_False_resize, 0);
  c_38_37_0_False_resize <= resize(c_37, 34);
  c_38_37_0_False_shift <= shift_left(c_38_37_0_False_resize, 0);
  with config_select_8 select c_38_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "00" => c_38 <= c_38_34_3_False_shift;
        when "01" => c_38 <= c_38_29_0_False_shift;
        when others => c_38 <= c_38_37_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[128960, 0], [118784, -49152], [181632, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[128960, 0], [118784, -49152], [181632, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[128960, 0], [118784, -49152], [181632, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 9 with id 42 and associated fundamentals [[128432, 0], [118656, -49152], [90816, -90816]]
  inst_adder_node_42: entity work.adder_node
    generic map (
      w_x_i => 34,
      w_y_i => 34,
      w_o => 34,
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
      x_i => c_41,
      y_i => c_38,
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
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[0, 128432], [49152, 118656], [90816, 90816]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[0, 128432], [49152, 118656], [90816, 90816]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 46 and associated fundamentals [[0, 128432], [49152, 118656], [90816, 90816]]
  c_46_resize <= c_45;
  c_46 <= shift_left(c_46_resize, 0);
end architecture;

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
  signal c_0: signed(17 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_2: signed(20 downto 0);
  signal c_2_i0_resize: signed(20 downto 0);
  signal c_2_i1_resize: signed(20 downto 0);
  signal c_2_i0_shift: signed(20 downto 0);
  signal c_2_i1_shift: signed(20 downto 0);
  signal c_2_arith: signed(20 downto 0);
  signal c_2_oshift: signed(20 downto 0);
  signal c_2_sub_sel: std_logic;
  signal c_3: signed(22 downto 0);
  signal c_3_0_5_False_resize: signed(22 downto 0);
  signal c_3_0_5_False_shift: signed(22 downto 0);
  signal c_3_1_0_False_resize: signed(22 downto 0);
  signal c_3_1_0_False_shift: signed(22 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_0_0_False_resize: signed(23 downto 0);
  signal c_4_0_0_False_shift: signed(23 downto 0);
  signal c_4_0_6_False_resize: signed(23 downto 0);
  signal c_4_0_6_False_shift: signed(23 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(24 downto 0);
  signal c_5_i0_resize: signed(24 downto 0);
  signal c_5_i1_resize: signed(24 downto 0);
  signal c_5_i0_shift: signed(24 downto 0);
  signal c_5_i1_shift: signed(24 downto 0);
  signal c_5_arith: signed(24 downto 0);
  signal c_5_oshift: signed(24 downto 0);
  signal c_6: signed(27 downto 0);
  signal c_6_1_10_False_resize: signed(27 downto 0);
  signal c_6_1_10_False_shift: signed(27 downto 0);
  signal c_6_1_0_False_resize: signed(27 downto 0);
  signal c_6_1_0_False_shift: signed(27 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_7_0_False_resize: signed(22 downto 0);
  signal c_8_7_0_False_shift: signed(22 downto 0);
  signal c_8_2_2_False_resize: signed(22 downto 0);
  signal c_8_2_2_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(27 downto 0);
  signal c_10: signed(28 downto 0);
  signal c_10_i0_resize: signed(28 downto 0);
  signal c_10_i1_resize: signed(28 downto 0);
  signal c_10_i0_shift: signed(28 downto 0);
  signal c_10_i1_shift: signed(28 downto 0);
  signal c_10_arith: signed(28 downto 0);
  signal c_10_oshift: signed(28 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_5_0_False_resize: signed(24 downto 0);
  signal c_11_5_0_False_shift: signed(24 downto 0);
  signal c_11_5_1_False_resize: signed(24 downto 0);
  signal c_11_5_1_False_shift: signed(24 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(24 downto 0);
  signal c_13_5_0_False_resize: signed(24 downto 0);
  signal c_13_5_0_False_shift: signed(24 downto 0);
  signal c_13_12_5_False_resize: signed(24 downto 0);
  signal c_13_12_5_False_shift: signed(24 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(28 downto 0);
  signal c_14_i0_resize: signed(28 downto 0);
  signal c_14_i1_resize: signed(28 downto 0);
  signal c_14_i0_shift: signed(28 downto 0);
  signal c_14_i1_shift: signed(28 downto 0);
  signal c_14_arith: signed(28 downto 0);
  signal c_14_oshift: signed(28 downto 0);
  signal c_15: signed(20 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_17: signed(28 downto 0);
  signal c_18: signed(31 downto 0);
  signal c_18_16_0_False_resize: signed(31 downto 0);
  signal c_18_16_0_False_shift: signed(31 downto 0);
  signal c_18_14_1_False_resize: signed(31 downto 0);
  signal c_18_14_1_False_shift: signed(31 downto 0);
  signal c_18_17_9_False_resize: signed(31 downto 0);
  signal c_18_17_9_False_shift: signed(31 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(28 downto 0);
  signal c_20: signed(31 downto 0);
  signal c_20_i0_resize: signed(31 downto 0);
  signal c_20_i1_resize: signed(31 downto 0);
  signal c_20_i0_shift: signed(31 downto 0);
  signal c_20_i1_shift: signed(31 downto 0);
  signal c_20_arith: signed(31 downto 0);
  signal c_20_oshift: signed(31 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(24 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_23: signed(28 downto 0);
  signal c_23_i0_resize: signed(28 downto 0);
  signal c_23_i1_resize: signed(28 downto 0);
  signal c_23_i0_shift: signed(28 downto 0);
  signal c_23_i1_shift: signed(28 downto 0);
  signal c_23_arith: signed(28 downto 0);
  signal c_23_oshift: signed(28 downto 0);
  signal c_24: signed(28 downto 0);
  signal c_24_23_0_False_resize: signed(28 downto 0);
  signal c_24_23_0_False_shift: signed(28 downto 0);
  signal c_24_23_4_False_resize: signed(28 downto 0);
  signal c_24_23_4_False_shift: signed(28 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(17 downto 0);
  signal c_26: signed(17 downto 0);
  signal c_27: signed(17 downto 0);
  signal c_28: signed(17 downto 0);
  signal c_29: signed(17 downto 0);
  signal c_30: signed(29 downto 0);
  signal c_30_23_0_False_resize: signed(29 downto 0);
  signal c_30_23_0_False_shift: signed(29 downto 0);
  signal c_30_29_12_False_resize: signed(29 downto 0);
  signal c_30_29_12_False_shift: signed(29 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(31 downto 0);
  signal c_31_i0_resize: signed(31 downto 0);
  signal c_31_i1_resize: signed(31 downto 0);
  signal c_31_i0_shift: signed(31 downto 0);
  signal c_31_i1_shift: signed(31 downto 0);
  signal c_31_arith: signed(31 downto 0);
  signal c_31_oshift: signed(31 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(31 downto 0);
  signal c_33: signed(31 downto 0);
  signal c_33_31_0_False_resize: signed(31 downto 0);
  signal c_33_31_0_False_shift: signed(31 downto 0);
  signal c_33_32_0_False_resize: signed(31 downto 0);
  signal c_33_32_0_False_shift: signed(31 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(17 downto 0);
  signal c_35: signed(17 downto 0);
  signal c_36: signed(29 downto 0);
  signal c_36_31_0_False_resize: signed(29 downto 0);
  signal c_36_31_0_False_shift: signed(29 downto 0);
  signal c_36_35_1_False_resize: signed(29 downto 0);
  signal c_36_35_1_False_shift: signed(29 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(31 downto 0);
  signal c_37_i0_resize: signed(31 downto 0);
  signal c_37_i1_resize: signed(31 downto 0);
  signal c_37_i0_shift: signed(31 downto 0);
  signal c_37_i1_shift: signed(31 downto 0);
  signal c_37_arith: signed(31 downto 0);
  signal c_37_oshift: signed(31 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(31 downto 0);
  signal c_38_31_2_False_resize: signed(31 downto 0);
  signal c_38_31_2_False_shift: signed(31 downto 0);
  signal c_38_32_0_False_resize: signed(31 downto 0);
  signal c_38_32_0_False_shift: signed(31 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(31 downto 0);
  signal c_39_resize: signed(31 downto 0);
  signal c_40: signed(31 downto 0);
  signal c_41: signed(31 downto 0);
  signal c_41_resize: signed(31 downto 0);
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
  -- output node 1 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_41(31 downto 2));
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 2 and associated fundamentals [[0, 20], [0, 12], [0, 12]]
  with config_select_1 select c_2_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 21,
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
      sub_i => c_2_sub_sel,
      x_i => c_1,
      y_i => c_1,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[128, 0], [128, 0], [0, 4]]
  c_3_0_5_False_resize <= resize(c_0, 23);
  c_3_0_5_False_shift <= shift_left(c_3_0_5_False_resize, 5);
  c_3_1_0_False_resize <= resize(c_1, 23);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  with config_select_1 select c_3_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_0_5_False_shift;
        when others => c_3 <= c_3_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[4, 0], [256, 0], [4, 0]]
  c_4_0_0_False_resize <= resize(c_0, 24);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_6_False_resize <= resize(c_0, 24);
  c_4_0_6_False_shift <= shift_left(c_4_0_6_False_resize, 6);
  with config_select_1 select c_4_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 5 and associated fundamentals [[132, 0], [384, 0], [4, 4]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 25,
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
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[0, 4096], [0, 4096], [0, 4]]
  c_6_1_10_False_resize <= resize(c_1, 28);
  c_6_1_10_False_shift <= shift_left(c_6_1_10_False_resize, 10);
  c_6_1_0_False_resize <= resize(c_1, 28);
  c_6_1_0_False_shift <= shift_left(c_6_1_0_False_resize, 0);
  with config_select_1 select c_6_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_1_10_False_shift;
        when others => c_6 <= c_6_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 7 and associated fundamentals [[0, 4], [0, 4], [0, 4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 8 and associated fundamentals [[0, 80], [0, 4], [0, 48]]
  c_8_7_0_False_resize <= resize(c_7, 23);
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  c_8_2_2_False_resize <= resize(c_2, 23);
  c_8_2_2_False_shift <= shift_left(c_8_2_2_False_resize, 2);
  with config_select_2 select c_8_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_7_0_False_shift;
        when others => c_8 <= c_8_2_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 9 and associated fundamentals [[0, 4096], [0, 4096], [0, 4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_6 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 10 and associated fundamentals [[0, 8032], [0, 8184], [0, -88]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 28,
      w_y_i => 23,
      w_o => 29,
      s_x_i => 1,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_9,
      y_i => c_8,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[264, 0], [384, 0], [4, 4]]
  c_11_5_0_False_resize <= c_5;
  c_11_5_0_False_shift <= shift_left(c_11_5_0_False_resize, 0);
  c_11_5_1_False_resize <= c_5;
  c_11_5_1_False_shift <= shift_left(c_11_5_1_False_resize, 1);
  with config_select_3 select c_11_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_5_0_False_shift;
        when others => c_11 <= c_11_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[0, 20], [0, 12], [0, 12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[132, 0], [0, 384], [4, 4]]
  c_13_5_0_False_resize <= c_5;
  c_13_5_0_False_shift <= shift_left(c_13_5_0_False_resize, 0);
  c_13_12_5_False_resize <= resize(c_12, 25);
  c_13_12_5_False_shift <= shift_left(c_13_12_5_False_resize, 5);
  with config_select_3 select c_13_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_5_0_False_shift;
        when others => c_13 <= c_13_12_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 14 and associated fundamentals [[3696, 0], [6144, -1536], [48, 48]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 29,
      s_x_i => 4,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_11,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[0, 20], [0, 12], [0, 12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[0, 20], [0, 12], [0, 12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[0, 8032], [0, 8184], [0, -88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 18 and associated fundamentals [[0, 20], [12288, -3072], [0, -45056]]
  c_18_16_0_False_resize <= resize(c_16, 32);
  c_18_16_0_False_shift <= shift_left(c_18_16_0_False_resize, 0);
  c_18_14_1_False_resize <= resize(c_14, 32);
  c_18_14_1_False_shift <= shift_left(c_18_14_1_False_resize, 1);
  c_18_17_9_False_resize <= resize(c_17, 32);
  c_18_17_9_False_shift <= shift_left(c_18_17_9_False_resize, 9);
  with config_select_5 select c_18_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_16_0_False_shift;
        when "01" => c_18 <= c_18_14_1_False_shift;
        when others => c_18 <= c_18_17_9_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[0, 8032], [0, 8184], [0, -88]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_17 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 20 and associated fundamentals [[0, 32108], [12288, 29664], [0, -45408]]
  with config_select_6 select c_20_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 32,
      w_o => 32,
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
      sub_i => c_20_sub_sel,
      x_i => c_19,
      y_i => c_18,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 21 and associated fundamentals [[132, 0], [384, 0], [4, 4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[132, 0], [384, 0], [4, 4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 23 and associated fundamentals [[3564, 0], [5760, -1536], [44, 44]]
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 25,
      w_o => 29,
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
      x_i => c_14,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(28 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 24 and associated fundamentals [[3564, 0], [5760, -1536], [704, 704]]
  c_24_23_0_False_resize <= c_23;
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  c_24_23_4_False_resize <= c_23;
  c_24_23_4_False_shift <= shift_left(c_24_23_4_False_resize, 4);
  with config_select_6 select c_24_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_23_0_False_shift;
        when others => c_24 <= c_24_23_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 25 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 26 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 27 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 28 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 30 and associated fundamentals [[3564, 0], [16384, 0], [44, 44]]
  c_30_23_0_False_resize <= resize(c_23, 30);
  c_30_23_0_False_shift <= shift_left(c_30_23_0_False_resize, 0);
  c_30_29_12_False_resize <= resize(c_29, 30);
  c_30_29_12_False_shift <= shift_left(c_30_29_12_False_resize, 12);
  with config_select_6 select c_30_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_23_0_False_shift;
        when others => c_30 <= c_30_29_12_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 31 and associated fundamentals [[32076, 0], [29696, -12288], [5676, 5676]]
  with config_select_7 select c_31_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 30,
      w_o => 32,
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
      sub_i => c_31_sub_sel,
      x_i => c_24,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[0, 32108], [12288, 29664], [0, -45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 33 and associated fundamentals [[32076, 0], [29696, -12288], [0, -45408]]
  c_33_31_0_False_resize <= c_31;
  c_33_31_0_False_shift <= shift_left(c_33_31_0_False_resize, 0);
  c_33_32_0_False_resize <= c_32;
  c_33_32_0_False_shift <= shift_left(c_33_32_0_False_resize, 0);
  with config_select_8 select c_33_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_31_0_False_shift;
        when others => c_33 <= c_33_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 36 and associated fundamentals [[8, 0], [8, 0], [5676, 5676]]
  c_36_31_0_False_resize <= c_31(29 downto 0);
  c_36_31_0_False_shift <= shift_left(c_36_31_0_False_resize, 0);
  c_36_35_1_False_resize <= resize(c_35, 30);
  c_36_35_1_False_shift <= shift_left(c_36_35_1_False_resize, 1);
  with config_select_8 select c_36_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_31_0_False_shift;
        when others => c_36 <= c_36_35_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 37 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  with config_select_9 select c_37_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 30,
      w_o => 32,
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
      sub_i => c_37_sub_sel,
      x_i => c_33,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 38 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  c_38_31_2_False_resize <= c_31;
  c_38_31_2_False_shift <= shift_left(c_38_31_2_False_resize, 2);
  c_38_32_0_False_resize <= c_32;
  c_38_32_0_False_shift <= shift_left(c_38_32_0_False_resize, 0);
  with config_select_8 select c_38_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_31_2_False_shift;
        when others => c_38 <= c_38_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 39 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  c_39_resize <= c_37;
  c_39 <= shift_left(c_39_resize, 0);
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_38 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 41 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
end architecture;

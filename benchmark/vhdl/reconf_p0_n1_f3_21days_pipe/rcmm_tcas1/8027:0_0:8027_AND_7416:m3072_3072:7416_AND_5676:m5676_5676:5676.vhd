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
  signal config_select_12: std_logic_vector(1 downto 0);
  signal c_0: signed(18 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_2: signed(25 downto 0);
  signal c_2_0_0_False_resize: signed(25 downto 0);
  signal c_2_0_0_False_shift: signed(25 downto 0);
  signal c_2_0_7_False_resize: signed(25 downto 0);
  signal c_2_0_7_False_shift: signed(25 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_4: signed(25 downto 0);
  signal c_4_i0_resize: signed(25 downto 0);
  signal c_4_i1_resize: signed(25 downto 0);
  signal c_4_i0_shift: signed(25 downto 0);
  signal c_4_i1_shift: signed(25 downto 0);
  signal c_4_arith: signed(25 downto 0);
  signal c_4_oshift: signed(25 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(20 downto 0);
  signal c_5_1_2_False_resize: signed(20 downto 0);
  signal c_5_1_2_False_shift: signed(20 downto 0);
  signal c_5_1_0_False_resize: signed(20 downto 0);
  signal c_5_1_0_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_7: signed(26 downto 0);
  signal c_7_i0_resize: signed(26 downto 0);
  signal c_7_i1_resize: signed(26 downto 0);
  signal c_7_i0_shift: signed(26 downto 0);
  signal c_7_i1_shift: signed(26 downto 0);
  signal c_7_arith: signed(26 downto 0);
  signal c_7_oshift: signed(26 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(18 downto 0);
  signal c_9: signed(26 downto 0);
  signal c_9_7_0_False_resize: signed(26 downto 0);
  signal c_9_7_0_False_shift: signed(26 downto 0);
  signal c_9_8_7_False_resize: signed(26 downto 0);
  signal c_9_8_7_False_shift: signed(26 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_11: signed(26 downto 0);
  signal c_11_10_6_False_resize: signed(26 downto 0);
  signal c_11_10_6_False_shift: signed(26 downto 0);
  signal c_11_7_0_False_resize: signed(26 downto 0);
  signal c_11_7_0_False_shift: signed(26 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(29 downto 0);
  signal c_12_i0_resize: signed(29 downto 0);
  signal c_12_i1_resize: signed(29 downto 0);
  signal c_12_i0_shift: signed(29 downto 0);
  signal c_12_i1_shift: signed(29 downto 0);
  signal c_12_arith: signed(29 downto 0);
  signal c_12_oshift: signed(29 downto 0);
  signal c_13: signed(26 downto 0);
  signal c_14: signed(26 downto 0);
  signal c_15: signed(29 downto 0);
  signal c_15_i0_resize: signed(29 downto 0);
  signal c_15_i1_resize: signed(29 downto 0);
  signal c_15_i0_shift: signed(29 downto 0);
  signal c_15_i1_shift: signed(29 downto 0);
  signal c_15_arith: signed(29 downto 0);
  signal c_15_oshift: signed(29 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(31 downto 0);
  signal c_16_0_0_False_resize: signed(31 downto 0);
  signal c_16_0_0_False_shift: signed(31 downto 0);
  signal c_16_0_13_False_resize: signed(31 downto 0);
  signal c_16_0_13_False_shift: signed(31 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(26 downto 0);
  signal c_17_4_0_False_resize: signed(26 downto 0);
  signal c_17_4_0_False_shift: signed(26 downto 0);
  signal c_17_4_1_False_resize: signed(26 downto 0);
  signal c_17_4_1_False_shift: signed(26 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(31 downto 0);
  signal c_19: signed(31 downto 0);
  signal c_20: signed(32 downto 0);
  signal c_20_i0_resize: signed(32 downto 0);
  signal c_20_i1_resize: signed(32 downto 0);
  signal c_20_i0_shift: signed(32 downto 0);
  signal c_20_i1_shift: signed(32 downto 0);
  signal c_20_arith: signed(32 downto 0);
  signal c_20_oshift: signed(32 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(18 downto 0);
  signal c_22: signed(18 downto 0);
  signal c_23: signed(18 downto 0);
  signal c_24: signed(29 downto 0);
  signal c_24_15_0_False_resize: signed(29 downto 0);
  signal c_24_15_0_False_shift: signed(29 downto 0);
  signal c_24_23_10_False_resize: signed(29 downto 0);
  signal c_24_23_10_False_shift: signed(29 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(28 downto 0);
  signal c_25_12_0_False_resize: signed(28 downto 0);
  signal c_25_12_0_False_shift: signed(28 downto 0);
  signal c_25_20_5_False_resize: signed(28 downto 0);
  signal c_25_20_5_False_shift: signed(28 downto 0);
  signal c_25_22_4_False_resize: signed(28 downto 0);
  signal c_25_22_4_False_shift: signed(28 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(28 downto 0);
  signal c_27: signed(30 downto 0);
  signal c_27_i0_resize: signed(30 downto 0);
  signal c_27_i1_resize: signed(30 downto 0);
  signal c_27_i0_shift: signed(30 downto 0);
  signal c_27_i1_shift: signed(30 downto 0);
  signal c_27_arith: signed(30 downto 0);
  signal c_27_oshift: signed(30 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(25 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_33: signed(30 downto 0);
  signal c_33_32_5_False_resize: signed(30 downto 0);
  signal c_33_32_5_False_shift: signed(30 downto 0);
  signal c_33_27_0_False_resize: signed(30 downto 0);
  signal c_33_27_0_False_shift: signed(30 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(32 downto 0);
  signal c_35: signed(32 downto 0);
  signal c_36: signed(32 downto 0);
  signal c_37: signed(32 downto 0);
  signal c_38: signed(32 downto 0);
  signal c_38_i0_resize: signed(32 downto 0);
  signal c_38_i1_resize: signed(32 downto 0);
  signal c_38_i0_shift: signed(32 downto 0);
  signal c_38_i1_shift: signed(32 downto 0);
  signal c_38_arith: signed(32 downto 0);
  signal c_38_oshift: signed(32 downto 0);
  signal c_39: signed(30 downto 0);
  signal c_40: signed(30 downto 0);
  signal c_41: signed(32 downto 0);
  signal c_41_38_2_False_resize: signed(32 downto 0);
  signal c_41_38_2_False_shift: signed(32 downto 0);
  signal c_41_40_0_False_resize: signed(32 downto 0);
  signal c_41_40_0_False_shift: signed(32 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(29 downto 0);
  signal c_43: signed(29 downto 0);
  signal c_44: signed(29 downto 0);
  signal c_45: signed(29 downto 0);
  signal c_46: signed(29 downto 0);
  signal c_47: signed(32 downto 0);
  signal c_47_i0_resize: signed(32 downto 0);
  signal c_47_i1_resize: signed(32 downto 0);
  signal c_47_i0_shift: signed(32 downto 0);
  signal c_47_i1_shift: signed(32 downto 0);
  signal c_47_arith: signed(32 downto 0);
  signal c_47_oshift: signed(32 downto 0);
  signal c_48: signed(32 downto 0);
  signal c_48_38_0_False_resize: signed(32 downto 0);
  signal c_48_38_0_False_shift: signed(32 downto 0);
  signal c_48_38_2_False_resize: signed(32 downto 0);
  signal c_48_38_2_False_shift: signed(32 downto 0);
  signal c_48_sel: std_logic_vector(0 downto 0);
  signal c_49: signed(32 downto 0);
  signal c_50: signed(32 downto 0);
  signal c_50_resize: signed(32 downto 0);
  signal c_51: signed(32 downto 0);
  signal c_51_resize: signed(32 downto 0);
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
      config_select_12 <= config_select_11;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0 & "000");
    end if;
  end process;
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1 & "000");
    end if;
  end process;
  -- output node 0 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_50(32 downto 3));
    end if;
  end process;
  -- output node 1 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_51(32 downto 3));
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[8, 0], [1024, 0], [8, 0]]
  c_2_0_0_False_resize <= resize(c_0, 26);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_7_False_resize <= resize(c_0, 26);
  c_2_0_7_False_shift <= shift_left(c_2_0_7_False_resize, 7);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[8, 0], [8, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[40, 0], [992, 0], [40, 0]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 19,
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
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[0, 32], [0, 8], [0, 32]]
  c_5_1_2_False_resize <= resize(c_1, 21);
  c_5_1_2_False_shift <= shift_left(c_5_1_2_False_resize, 2);
  c_5_1_0_False_resize <= resize(c_1, 21);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_1_2_False_shift;
        when others => c_5 <= c_5_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 6 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 7 and associated fundamentals [[0, 1032], [0, -248], [0, 1032]]
  with config_select_2 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 27,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_5,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[8, 0], [8, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[0, 1032], [1024, 0], [0, 1032]]
  c_9_7_0_False_resize <= c_7;
  c_9_7_0_False_shift <= shift_left(c_9_7_0_False_resize, 0);
  c_9_8_7_False_resize <= resize(c_8, 27);
  c_9_8_7_False_shift <= shift_left(c_9_8_7_False_resize, 7);
  with config_select_3 select c_9_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_7_0_False_shift;
        when others => c_9 <= c_9_8_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 10 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[0, 512], [0, 512], [0, 1032]]
  c_11_10_6_False_resize <= resize(c_10, 27);
  c_11_10_6_False_shift <= shift_left(c_11_10_6_False_resize, 6);
  c_11_7_0_False_resize <= c_7;
  c_11_7_0_False_shift <= shift_left(c_11_7_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_10_6_False_shift;
        when others => c_11 <= c_11_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 12 and associated fundamentals [[0, 6160], [2048, 4096], [0, 10320]]
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 27,
      w_o => 30,
      s_x_i => 1,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_9,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[0, 1032], [0, -248], [0, 1032]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[0, 1032], [0, -248], [0, 1032]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 15 and associated fundamentals [[0, 7192], [2048, 4344], [0, 11352]]
  with config_select_5 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 27,
      w_o => 30,
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
      sub_i => c_15_sub_sel,
      x_i => c_12,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 16 and associated fundamentals [[65536, 0], [65536, 0], [8, 0]]
  c_16_0_0_False_resize <= resize(c_0, 32);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_0_13_False_resize <= resize(c_0, 32);
  c_16_0_13_False_shift <= shift_left(c_16_0_13_False_resize, 13);
  with config_select_1 select c_16_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_0_0_False_shift;
        when others => c_16 <= c_16_0_13_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[40, 0], [1984, 0], [80, 0]]
  c_17_4_0_False_resize <= resize(c_4, 27);
  c_17_4_0_False_shift <= shift_left(c_17_4_0_False_resize, 0);
  c_17_4_1_False_resize <= resize(c_4, 27);
  c_17_4_1_False_shift <= shift_left(c_17_4_1_False_resize, 1);
  with config_select_3 select c_17_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_4_0_False_shift;
        when others => c_17 <= c_17_4_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 18 and associated fundamentals [[65536, 0], [65536, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[65536, 0], [65536, 0], [8, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 20 and associated fundamentals [[65496, 0], [67520, 0], [88, 0]]
  with config_select_4 select c_20_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 27,
      w_o => 33,
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
      x_i => c_19,
      y_i => c_17,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 21 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[0, 8], [0, 8], [0, 8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 24 and associated fundamentals [[0, 7192], [0, 8192], [0, 11352]]
  c_24_15_0_False_resize <= c_15;
  c_24_15_0_False_shift <= shift_left(c_24_15_0_False_resize, 0);
  c_24_23_10_False_resize <= resize(c_23, 30);
  c_24_23_10_False_shift <= shift_left(c_24_23_10_False_resize, 10);
  with config_select_6 select c_24_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_15_0_False_shift;
        when others => c_24 <= c_24_23_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 25 and associated fundamentals [[0, 128], [2048, 4096], [2816, 0]]
  c_25_12_0_False_resize <= c_12(28 downto 0);
  c_25_12_0_False_shift <= shift_left(c_25_12_0_False_resize, 0);
  c_25_20_5_False_resize <= c_20(28 downto 0);
  c_25_20_5_False_shift <= shift_left(c_25_20_5_False_resize, 5);
  c_25_22_4_False_resize <= resize(c_22, 29);
  c_25_22_4_False_shift <= shift_left(c_25_22_4_False_resize, 4);
  with config_select_5 select c_25_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_12_0_False_shift;
        when "01" => c_25 <= c_25_20_5_False_shift;
        when others => c_25 <= c_25_22_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[0, 128], [2048, 4096], [2816, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 27 and associated fundamentals [[0, 6680], [8192, 24576], [-11264, 11352]]
  with config_select_7 select c_27_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 30,
      w_y_i => 29,
      w_o => 31,
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
      sub_i => c_27_sub_sel,
      x_i => c_24,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(30 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 28 and associated fundamentals [[40, 0], [992, 0], [40, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 29 and associated fundamentals [[40, 0], [992, 0], [40, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[40, 0], [992, 0], [40, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[40, 0], [992, 0], [40, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[40, 0], [992, 0], [40, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 33 and associated fundamentals [[1280, 0], [8192, 24576], [-11264, 11352]]
  c_33_32_5_False_resize <= resize(c_32, 31);
  c_33_32_5_False_shift <= shift_left(c_33_32_5_False_resize, 5);
  c_33_27_0_False_resize <= c_27;
  c_33_27_0_False_shift <= shift_left(c_33_27_0_False_resize, 0);
  with config_select_8 select c_33_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_32_5_False_shift;
        when others => c_33 <= c_33_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 34 and associated fundamentals [[65496, 0], [67520, 0], [88, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[65496, 0], [67520, 0], [88, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[65496, 0], [67520, 0], [88, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 37 and associated fundamentals [[65496, 0], [67520, 0], [88, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 9 with id 38 and associated fundamentals [[64216, 0], [59328, -24576], [11352, -11352]]
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 31,
      w_o => 33,
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
      x_i => c_37,
      y_i => c_33,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[0, 6680], [8192, 24576], [-11264, 11352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[0, 6680], [8192, 24576], [-11264, 11352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 41 and associated fundamentals [[0, 6680], [8192, 24576], [45408, -45408]]
  c_41_38_2_False_resize <= c_38;
  c_41_38_2_False_shift <= shift_left(c_41_38_2_False_resize, 2);
  c_41_40_0_False_resize <= resize(c_40, 33);
  c_41_40_0_False_shift <= shift_left(c_41_40_0_False_resize, 0);
  with config_select_10 select c_41_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_38_2_False_shift;
        when others => c_41 <= c_41_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 42 and associated fundamentals [[0, 7192], [2048, 4344], [0, 11352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[0, 7192], [2048, 4344], [0, 11352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[0, 7192], [2048, 4344], [0, 11352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[0, 7192], [2048, 4344], [0, 11352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 46 and associated fundamentals [[0, 7192], [2048, 4344], [0, 11352]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'add' in stage 11 with id 47 and associated fundamentals [[0, 64216], [24576, 59328], [45408, 45408]]
  inst_adder_node_47: entity work.adder_node
    generic map (
      w_x_i => 33,
      w_y_i => 30,
      w_o => 33,
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
      x_i => c_41,
      y_i => c_46,
      z_o => c_47_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_47_oshift(32 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 48 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  c_48_38_0_False_resize <= c_38;
  c_48_38_0_False_shift <= shift_left(c_48_38_0_False_resize, 0);
  c_48_38_2_False_resize <= c_38;
  c_48_38_2_False_shift <= shift_left(c_48_38_2_False_resize, 2);
  with config_select_10 select c_48_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "0" => c_48 <= c_48_38_0_False_shift;
        when others => c_48 <= c_48_38_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 49 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 50 and associated fundamentals [[64216, 0], [59328, -24576], [45408, -45408]]
  c_50_resize <= c_49;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 11 with id 51 and associated fundamentals [[0, 64216], [24576, 59328], [45408, 45408]]
  c_51_resize <= c_47;
  c_51 <= shift_left(c_51_resize, 0);
end architecture;

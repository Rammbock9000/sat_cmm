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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(18 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_5_4_0_False_resize: signed(17 downto 0);
  signal c_5_4_0_False_shift: signed(17 downto 0);
  signal c_5_3_0_False_resize: signed(17 downto 0);
  signal c_5_3_0_False_shift: signed(17 downto 0);
  signal c_5_4_1_False_resize: signed(17 downto 0);
  signal c_5_4_1_False_shift: signed(17 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(21 downto 0);
  signal c_8_0_0_False_resize: signed(21 downto 0);
  signal c_8_0_0_False_shift: signed(21 downto 0);
  signal c_8_0_6_False_resize: signed(21 downto 0);
  signal c_8_0_6_False_shift: signed(21 downto 0);
  signal c_8_0_1_False_resize: signed(21 downto 0);
  signal c_8_0_1_False_shift: signed(21 downto 0);
  signal c_8_sel: std_logic_vector(1 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_12_i0_resize: signed(23 downto 0);
  signal c_12_i1_resize: signed(23 downto 0);
  signal c_12_i0_shift: signed(23 downto 0);
  signal c_12_i1_shift: signed(23 downto 0);
  signal c_12_arith: signed(23 downto 0);
  signal c_12_oshift: signed(23 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(18 downto 0);
  signal c_14: signed(18 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_16: signed(21 downto 0);
  signal c_16_15_0_False_resize: signed(21 downto 0);
  signal c_16_15_0_False_shift: signed(21 downto 0);
  signal c_16_14_3_False_resize: signed(21 downto 0);
  signal c_16_14_3_False_shift: signed(21 downto 0);
  signal c_16_12_0_False_resize: signed(21 downto 0);
  signal c_16_12_0_False_shift: signed(21 downto 0);
  signal c_16_sel: std_logic_vector(1 downto 0);
  signal c_17: signed(18 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(15 downto 0);
  signal c_20: signed(15 downto 0);
  signal c_21: signed(15 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_14_2_False_resize: signed(23 downto 0);
  signal c_22_14_2_False_shift: signed(23 downto 0);
  signal c_22_21_0_False_resize: signed(23 downto 0);
  signal c_22_21_0_False_shift: signed(23 downto 0);
  signal c_22_12_0_False_resize: signed(23 downto 0);
  signal c_22_12_0_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(1 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_26_0_False_resize: signed(23 downto 0);
  signal c_27_26_0_False_shift: signed(23 downto 0);
  signal c_27_18_0_False_resize: signed(23 downto 0);
  signal c_27_18_0_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_18_0_False_resize: signed(23 downto 0);
  signal c_29_18_0_False_shift: signed(23 downto 0);
  signal c_29_28_0_False_resize: signed(23 downto 0);
  signal c_29_28_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_resize: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_resize: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_33_resize: signed(23 downto 0);
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
  -- output node 0 with id 30
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_30);
    end if;
  end process;
  -- output node 1 with id 31
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_31);
    end if;
  end process;
  -- output node 2 with id 33
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_33);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [1], [2]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when "01",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [6], [5], [6]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 17,
      w_o => 19,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[3], [1], [1], [2]]
  c_5_4_0_False_resize <= resize(c_4, 18);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_3_0_False_resize <= c_3(17 downto 0);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  c_5_4_1_False_resize <= resize(c_4, 18);
  c_5_4_1_False_shift <= shift_left(c_5_4_1_False_resize, 1);
  with config_select_3 select c_5_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_4_0_False_shift;
        when "01" => c_5 <= c_5_3_0_False_shift;
        when others => c_5 <= c_5_4_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[3], [6], [5], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[21], [49], [41], [50]]
  with config_select_4 select c_7_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
      w_o => 22,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_5,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[64], [1], [2], [1]]
  c_8_0_0_False_resize <= resize(c_0, 22);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_6_False_resize <= resize(c_0, 22);
  c_8_0_6_False_shift <= shift_left(c_8_0_6_False_resize, 6);
  c_8_0_1_False_resize <= resize(c_0, 22);
  c_8_0_1_False_shift <= shift_left(c_8_0_1_False_resize, 1);
  with config_select_1 select c_8_sel <= 
    "00" when "01",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "00" => c_8 <= c_8_0_0_False_shift;
        when "01" => c_8 <= c_8_0_6_False_shift;
        when others => c_8 <= c_8_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 9 and associated fundamentals [[64], [1], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[64], [1], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[64], [1], [2], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[149], [51], [37], [48]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_12_sub_sel,
      x_i => c_7,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[3], [6], [5], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[3], [6], [5], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[21], [49], [41], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 16 and associated fundamentals [[24], [51], [41], [50]]
  c_16_15_0_False_resize <= c_15;
  c_16_15_0_False_shift <= shift_left(c_16_15_0_False_resize, 0);
  c_16_14_3_False_resize <= resize(c_14, 22);
  c_16_14_3_False_shift <= shift_left(c_16_14_3_False_resize, 3);
  c_16_12_0_False_resize <= c_12(21 downto 0);
  c_16_12_0_False_shift <= shift_left(c_16_12_0_False_resize, 0);
  with config_select_6 select c_16_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "00" => c_16 <= c_16_15_0_False_shift;
        when "01" => c_16 <= c_16_14_3_False_shift;
        when others => c_16 <= c_16_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[3], [6], [5], [6]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 18 and associated fundamentals [[93], [210], [169], [194]]
  with config_select_7 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 24,
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
      sub_i => c_18_sub_sel,
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 22 and associated fundamentals [[149], [51], [20], [1]]
  c_22_14_2_False_resize <= resize(c_14, 24);
  c_22_14_2_False_shift <= shift_left(c_22_14_2_False_resize, 2);
  c_22_21_0_False_resize <= resize(c_21, 24);
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  c_22_12_0_False_resize <= c_12;
  c_22_12_0_False_shift <= shift_left(c_22_12_0_False_resize, 0);
  with config_select_6 select c_22_sel <= 
    "00" when "10",
    "01" when "11",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "00" => c_22 <= c_22_14_2_False_shift;
        when "01" => c_22 <= c_22_21_0_False_shift;
        when others => c_22 <= c_22_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[21], [49], [41], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 24 and associated fundamentals [[233], [145], [184], [199]]
  with config_select_7 select c_24_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_24_sub_sel,
      x_i => c_23,
      y_i => c_22,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[149], [51], [37], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[149], [51], [37], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 27 and associated fundamentals [[149], [210], [37], [48]]
  c_27_26_0_False_resize <= c_26;
  c_27_26_0_False_shift <= shift_left(c_27_26_0_False_resize, 0);
  c_27_18_0_False_resize <= c_18;
  c_27_18_0_False_shift <= shift_left(c_27_18_0_False_resize, 0);
  with config_select_8 select c_27_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_26_0_False_shift;
        when others => c_27 <= c_27_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[21], [49], [41], [50]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 29 and associated fundamentals [[93], [49], [169], [194]]
  c_29_18_0_False_resize <= c_18;
  c_29_18_0_False_shift <= shift_left(c_29_18_0_False_resize, 0);
  c_29_28_0_False_resize <= resize(c_28, 24);
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  with config_select_8 select c_29_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_18_0_False_shift;
        when others => c_29 <= c_29_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 30 and associated fundamentals [[149], [210], [37], [48]]
  c_30_resize <= c_27;
  c_30 <= shift_left(c_30_resize, 0);
  -- node of type 'output' in stage 8 with id 31 and associated fundamentals [[93], [49], [169], [194]]
  c_31_resize <= c_29;
  c_31 <= shift_left(c_31_resize, 0);
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[233], [145], [184], [199]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_24 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 33 and associated fundamentals [[233], [145], [184], [199]]
  c_33_resize <= c_32;
  c_33 <= shift_left(c_33_resize, 0);
end architecture;

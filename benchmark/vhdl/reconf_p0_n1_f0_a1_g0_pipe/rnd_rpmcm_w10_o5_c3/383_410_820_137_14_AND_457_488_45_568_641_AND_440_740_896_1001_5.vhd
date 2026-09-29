library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(25 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(23 downto 0);
  signal c_3_i0_resize: signed(23 downto 0);
  signal c_3_i1_resize: signed(23 downto 0);
  signal c_3_i0_shift: signed(23 downto 0);
  signal c_3_i1_shift: signed(23 downto 0);
  signal c_3_arith: signed(23 downto 0);
  signal c_3_oshift: signed(23 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(23 downto 0);
  signal c_7_6_5_False_resize: signed(23 downto 0);
  signal c_7_6_5_False_shift: signed(23 downto 0);
  signal c_7_3_0_False_resize: signed(23 downto 0);
  signal c_7_3_0_False_shift: signed(23 downto 0);
  signal c_7_3_1_False_resize: signed(23 downto 0);
  signal c_7_3_1_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(19 downto 0);
  signal c_12: signed(24 downto 0);
  signal c_12_4_0_False_resize: signed(24 downto 0);
  signal c_12_4_0_False_shift: signed(24 downto 0);
  signal c_12_11_5_False_resize: signed(24 downto 0);
  signal c_12_11_5_False_shift: signed(24 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(22 downto 0);
  signal c_14_6_4_False_resize: signed(22 downto 0);
  signal c_14_6_4_False_shift: signed(22 downto 0);
  signal c_14_3_0_False_resize: signed(22 downto 0);
  signal c_14_3_0_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_1_0_False_resize: signed(22 downto 0);
  signal c_15_1_0_False_shift: signed(22 downto 0);
  signal c_15_5_0_False_resize: signed(22 downto 0);
  signal c_15_5_0_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(22 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_i0_resize: signed(22 downto 0);
  signal c_17_i1_resize: signed(22 downto 0);
  signal c_17_i0_shift: signed(22 downto 0);
  signal c_17_i1_shift: signed(22 downto 0);
  signal c_17_arith: signed(22 downto 0);
  signal c_17_oshift: signed(22 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(22 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(23 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_22_2_False_resize: signed(24 downto 0);
  signal c_24_22_2_False_shift: signed(24 downto 0);
  signal c_24_23_0_False_resize: signed(24 downto 0);
  signal c_24_23_0_False_shift: signed(24 downto 0);
  signal c_24_19_0_False_resize: signed(24 downto 0);
  signal c_24_19_0_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(1 downto 0);
  signal c_25: signed(19 downto 0);
  signal c_26: signed(19 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_28_0_False_resize: signed(25 downto 0);
  signal c_29_28_0_False_shift: signed(25 downto 0);
  signal c_29_26_7_False_resize: signed(25 downto 0);
  signal c_29_26_7_False_shift: signed(25 downto 0);
  signal c_29_10_1_False_resize: signed(25 downto 0);
  signal c_29_10_1_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_19_0_False_resize: signed(25 downto 0);
  signal c_30_19_0_False_shift: signed(25 downto 0);
  signal c_30_22_2_False_resize: signed(25 downto 0);
  signal c_30_22_2_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_13_0_False_resize: signed(25 downto 0);
  signal c_31_13_0_False_shift: signed(25 downto 0);
  signal c_31_26_1_False_resize: signed(25 downto 0);
  signal c_31_26_1_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_resize: signed(24 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_resize: signed(25 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_resize: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_resize: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_resize: signed(25 downto 0);
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
  -- output node 3 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 4 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_40);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[7], [9], [7]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
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
      sub_i => c_1_sub_sel,
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[110], [142], [110]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 4,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[35], [45], [35]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 22,
      s_x_i => 0,
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
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 5 and associated fundamentals [[65], [65], [65]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[110], [32], [220]]
  c_7_6_5_False_resize <= resize(c_6, 24);
  c_7_6_5_False_shift <= shift_left(c_7_6_5_False_resize, 5);
  c_7_3_0_False_resize <= c_3;
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  c_7_3_1_False_resize <= c_3;
  c_7_3_1_False_shift <= shift_left(c_7_3_1_False_resize, 1);
  with config_select_3 select c_7_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_6_5_False_shift;
        when "01" => c_7 <= c_7_3_0_False_shift;
        when others => c_7 <= c_7_3_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[65], [65], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[65], [65], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[410], [488], [740]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_7,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 11 and associated fundamentals [[7], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[224], [288], [35]]
  c_12_4_0_False_resize <= resize(c_4, 25);
  c_12_4_0_False_shift <= shift_left(c_12_4_0_False_resize, 0);
  c_12_11_5_False_resize <= resize(c_11, 25);
  c_12_11_5_False_shift <= shift_left(c_12_11_5_False_resize, 5);
  with config_select_3 select c_12_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_4_0_False_shift;
        when others => c_12 <= c_12_11_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[383], [641], [5]]
  with config_select_4 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
      sub_i => c_13_sub_sel,
      x_i => c_12,
      y_i => c_9,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[16], [16], [110]]
  c_14_6_4_False_resize <= resize(c_6, 23);
  c_14_6_4_False_shift <= shift_left(c_14_6_4_False_resize, 4);
  c_14_3_0_False_resize <= c_3(22 downto 0);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_6_4_False_shift;
        when others => c_14 <= c_14_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[7], [65], [7]]
  c_15_1_0_False_resize <= resize(c_1, 23);
  c_15_1_0_False_shift <= shift_left(c_15_1_0_False_resize, 0);
  c_15_5_0_False_resize <= c_5;
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  with config_select_2 select c_15_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_1_0_False_shift;
        when others => c_15 <= c_15_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[7], [65], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[9], [-49], [117]]
  with config_select_4 select c_17_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_17_sub_sel,
      x_i => c_14,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[65], [65], [65]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_9 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 19 and associated fundamentals [[137], [457], [1001]]
  with config_select_5 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_19_sub_sel,
      x_i => c_18,
      y_i => c_17,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 20 and associated fundamentals [[110], [142], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[110], [142], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[110], [142], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[383], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 24 and associated fundamentals [[383], [457], [440]]
  c_24_22_2_False_resize <= resize(c_22, 25);
  c_24_22_2_False_shift <= shift_left(c_24_22_2_False_resize, 2);
  c_24_23_0_False_resize <= c_23(24 downto 0);
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  c_24_19_0_False_resize <= c_19(24 downto 0);
  c_24_19_0_False_shift <= shift_left(c_24_19_0_False_resize, 0);
  with config_select_6 select c_24_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "00" => c_24 <= c_24_22_2_False_shift;
        when "01" => c_24 <= c_24_23_0_False_shift;
        when others => c_24 <= c_24_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 25 and associated fundamentals [[7], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[7], [9], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 27 and associated fundamentals [[35], [45], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 28 and associated fundamentals [[35], [45], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 29 and associated fundamentals [[820], [45], [896]]
  c_29_28_0_False_resize <= resize(c_28, 26);
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  c_29_26_7_False_resize <= resize(c_26, 26);
  c_29_26_7_False_shift <= shift_left(c_29_26_7_False_resize, 7);
  c_29_10_1_False_resize <= c_10;
  c_29_10_1_False_shift <= shift_left(c_29_10_1_False_resize, 1);
  with config_select_5 select c_29_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_28_0_False_shift;
        when "01" => c_29 <= c_29_26_7_False_shift;
        when others => c_29 <= c_29_10_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 30 and associated fundamentals [[137], [568], [1001]]
  c_30_19_0_False_resize <= c_19;
  c_30_19_0_False_shift <= shift_left(c_30_19_0_False_resize, 0);
  c_30_22_2_False_resize <= resize(c_22, 26);
  c_30_22_2_False_shift <= shift_left(c_30_22_2_False_resize, 2);
  with config_select_6 select c_30_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_19_0_False_shift;
        when others => c_30 <= c_30_22_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 31 and associated fundamentals [[14], [641], [5]]
  c_31_13_0_False_resize <= c_13;
  c_31_13_0_False_shift <= shift_left(c_31_13_0_False_resize, 0);
  c_31_26_1_False_resize <= resize(c_26, 26);
  c_31_26_1_False_shift <= shift_left(c_31_26_1_False_resize, 1);
  with config_select_5 select c_31_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_13_0_False_shift;
        when others => c_31 <= c_31_26_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 32 and associated fundamentals [[383], [457], [440]]
  c_32_resize <= c_24;
  c_32 <= shift_left(c_32_resize, 0);
  -- node of type 'register' in stage 5 with id 33 and associated fundamentals [[410], [488], [740]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[410], [488], [740]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 35 and associated fundamentals [[410], [488], [740]]
  c_35_resize <= c_34;
  c_35 <= shift_left(c_35_resize, 0);
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[820], [45], [896]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_29 & "";
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 37 and associated fundamentals [[820], [45], [896]]
  c_37_resize <= c_36;
  c_37 <= shift_left(c_37_resize, 0);
  -- node of type 'output' in stage 6 with id 38 and associated fundamentals [[137], [568], [1001]]
  c_38_resize <= c_30;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[14], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_31 & "";
    end if;
  end process;
  -- node of type 'output' in stage 6 with id 40 and associated fundamentals [[14], [641], [5]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
end architecture;

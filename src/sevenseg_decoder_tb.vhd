----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2025 08:30:14 AM
-- Design Name: Seven Segment Decoder Test Bench
-- Module Name: sevenseg_decoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
--  Port ( );
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is
  component sevenseg_decoder is
	port(
	i_Hex      : in STD_LOGIC_VECTOR (3 downto 0); -- 4-bit input port
	o_seg_n    : out STD_LOGIC_VECTOR (6 downto 0)
  );
  end component;
  
  --signal declaration for UUT
  signal w_sw   : std_logic_vector(3 downto 0) := x"0";
  signal w_seg  : std_logic_vector(6 downto 0);
  
begin
--Port Maps--
    sevenseg_decoder_uut: sevenseg_decoder 
    port map (
        i_Hex   => w_sw,
        o_seg_n => w_seg
   );
   
   
   --Test Process--
   
  test_process : process
  begin
    w_sw <= x"0"; wait for 10 ns;
      assert (w_seg(3) = not '1')report "bad Zero" severity error;
    w_sw <= x"1"; wait for 10 ns;
      assert (w_seg(3) = not '0')report "bad One" severity error;
    w_sw <= x"2"; wait for 10 ns;
      assert (w_seg(3) = not '1')report "bad Two" severity error;
    w_sw <= x"3"; wait for 10 ns;
      assert (w_seg(3) = not '1')report "bad Three" severity error;
    w_sw <= x"4"; wait for 10 ns;
      assert (w_seg(3) = not '0')report "bad Four" severity error;
    w_sw <= x"5"; wait for 10 ns;
      assert (w_seg(3) = not '1')report "bad Five" severity error; 
    w_sw <= x"6"; wait for 10 ns;
      assert (w_seg(3) = not '1')report "bad Six" severity error;
    w_sw <= x"7"; wait for 10 ns;
      assert (w_seg(3) = not '0')report "bad Seven" severity error;
    w_sw <= x"8"; wait for 10 ns;
      assert (w_seg(3) = not '1')report "bad Eight" severity error;
    w_sw <= x"9"; wait for 10 ns;
      assert (w_seg(3) = not '0')report "bad Nine" severity error;
    w_sw <= x"A"; wait for 10 ns;
      assert (w_seg(3) = not '0')report "bad A" severity error;
    w_sw <= x"B"; wait for 10 ns;
      assert (w_seg(3) = not '1')report "bad B" severity error;
    w_sw <= x"C"; wait for 10 ns;
      assert (w_seg(3) = not '1')report "bad C" severity error;
    w_sw <= x"D"; wait for 10 ns;
      assert (w_seg(3) = not '1')report "bad D" severity error;      
    w_sw <= x"E"; wait for 10 ns;
      assert (w_seg(3) = not '1')report "bad E" severity error;
    w_sw <= x"F"; wait for 10 ns;
      assert (w_seg(3) = not '0')report "bad F" severity error;            
    wait; -- wait forever
  end process;

end Behavioral;

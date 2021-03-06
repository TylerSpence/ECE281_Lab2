--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Tyler Spence
--
-- Create Date:   20:51:04 02/11/2014
-- Design Name:   Final design
-- Module Name:   C:/Users/C16Tyler.Spence/Desktop/Semester 4 classes/ece 281/fourbitadder/fourbitaddertestbench.vhd
-- Project Name:  fourbitadder
-- Target Device:  NEXYS2
-- Tool versions:  n/a
-- Description:   Testbench for a fourbit adder
-- 
-- VHDL Test Bench Created by ISE for module: fourbitadder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
testbench library ieee; 
 
use ieee.std_logic_1164.all; use 
ieee.std_logic_arith.all; use 
ieee.std_logic_unsigned.all; 
 
entity tb_RCA is 
end entity tb_RCA; 
 
architecture testbench of tb_RCA is 
 
component RCA is 
 
port(A, B : in std_logic_vector(3 downto 0); 
Cout : out std_logic; 
 
sum : out std_logic_vector(3 downto 
0)); end component; 
 
signal a, b, sum : std_logic_vector(3 downto 0); 
signal cout : std_logic; 
signal incorrect : std_logic := �0?; 
signal input_vec: std_logic_vector(7 downto 0); 
 
signal test_a, test_b, test_sum: std_logic_vector(4 downto 0); 
 
begin 
 
UUT : RCA 
 
port map(a, b, cout, sum); 
 
a <= input_vec(3 downto 0); 
b <= input_vec(7 downto 4); 
 
test_a <= �0? & input_vec(3 downto 0); 
test_b <= �0? & input_vec(7 downto 4); 
test_sum <= test_a + test_b; 
 
inputs : process 
begin 
 
input_vec <= "00000000"; 
for i in 0 to 255 loop 
 
wait for 50 ns; 
 
 if (cout /= test_sum(4)) or (sum /= test_sum(3 downto 0)) then 
incorrect <= �1?; 
 
end if; 
 
Input_vec <= input_vec + 1; 
end loop; 
 
wait; 
 
end process inputs; 
 
end architecture testbench; 
 
configuration cfg_tb_RCA of tb_RCA is 
for testbench 
 
for UUT: RCA 
end for; 
 
end for; 
end cfg_tb_RCA; 

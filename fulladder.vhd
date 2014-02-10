----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:56:56 02/09/2014 
-- Design Name: 
-- Module Name:    fulladder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fulladder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end fulladder;

architecture Behavioral of fulladder is
signal A_not,B_not,Cin_not,ab,bc,ac,one,two,three,four : STD_LOGIC;
begin
A_not <= not A;
B_not <= not B;
Cin_not <= not Cin;
ab <= A and B;
bc <= B and Cin;
ac <= A and Cin;
one <= A_not and B_not and Cin;
two <= A_not and B and Cin_not;
three <= A and B and Cin;
four <=A and B_not and Cin_not;
Sum <= one or two or three or four;
Cout <= ab or bc or ac;


end Behavioral;


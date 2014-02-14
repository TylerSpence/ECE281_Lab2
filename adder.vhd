----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer:  Tyler Spence
-- 
-- Create Date:    11:12:46 02/10/2014 
-- Design Name:    final
-- Module Name:    adder - Behavioral 
-- Project Name:   single bit adder
-- Target Devices:  fpga
-- Tool versions: 
-- Description:  Component implementation using researched equations.
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

entity adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end adder;

architecture Behavioral of adder is
 component adder 
 Port   (A: in STD_LOGIC;
         B : in STD_LOGIC;
			Cin : in STD_LOGIC;
			Sum : out STD_LOGIC;
			Cout : out STD_LOGIC
			);
			End component;
begin
Sum <= A xor B xor Cin;
Cout <= (A and B) or (B and Cin) or (A and Cin);

end Behavioral;


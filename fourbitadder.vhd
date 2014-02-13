----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:44:04 02/11/2014 
-- Design Name: 
-- Module Name:    fourbitadder - Structrual 
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

entity fourbitadder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin: in STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           F : in  STD_LOGIC;
           G : in  STD_LOGIC;
           H : in  STD_LOGIC;
			  X : in  STD_LOGIC;
           O0 : out  STD_LOGIC;
           O1 : out  STD_LOGIC;
           O2 : out  STD_LOGIC;
           O3 : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end fourbitadder;

architecture Structrual of fourbitadder is
signal sig0,sig1,sig2,sig3,B1,D1,F1,H1 : STD_LOGIC;
component adder 
 Port   (A: in STD_LOGIC;
         B : in STD_LOGIC;
			Cin : in STD_LOGIC;
			Sum : out STD_LOGIC;
			Cout : out STD_LOGIC
			);
			End component;
			
component multiplexor 
 Port   (X: in STD_LOGIC;
         B : in STD_LOGIC;
			D : in STD_LOGIC;
			F : in  STD_LOGIC;
         H : in  STD_LOGIC;
			Carry : out  STD_LOGIC;
         BO : out  STD_LOGIC;
         DO : out  STD_LOGIC;
         FO : out  STD_LOGIC;
         HO : out  STD_LOGIC
			);
			End component;
begin

multiplexor_0 : multiplexor PORT MAP(
    X => X,
    B => B, 
	 D => D, 
	 F => F, 
    H => H,
	 Carry => sig0,
    BO => B1, 
    DO => D1, 
    FO => F1,
    HO => H1 
			);

adder_0 : adder PORT MAP(
  A => A,
  B => B1,
  Cin => sig0,
  Sum => O0,
  Cout => sig1
 );
 
adder_1 : adder PORT MAP(
  A => C,
  B => D1,
  Cin => sig1,
  Sum => O1,
  Cout => sig2
 );
 
 adder_2 : adder PORT MAP(
  A => E,
  B => F1,
  Cin => sig2,
  Sum => O2,
  Cout => sig3
 );
 
 adder_3 : adder PORT MAP(
  A => G,
  B => H1,
  Cin => sig3,
  Sum => O3,
  Cout => Cout
 );
 
end Structrual;


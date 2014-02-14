----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Tyler Spence
-- 
-- Create Date:    20:17:19 02/12/2014 
-- Design Name:    final
-- Module Name:    multiplexor - Behavioral 
-- Project Name:   multiplexor
-- Target Devices: fpga
-- Tool versions: 
-- Description:  Multiplexor component deffinitions
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

entity multiplexor is
    Port ( X : in  STD_LOGIC;
           B : in  STD_LOGIC;
           D : in  STD_LOGIC;
           F : in  STD_LOGIC;
           H : in  STD_LOGIC;
			  Carry : out  STD_LOGIC;
           BO : out  STD_LOGIC;
           DO : out  STD_LOGIC;
           FO : out  STD_LOGIC;
           HO : out  STD_LOGIC);
end multiplexor;

architecture Behavioral of multiplexor is
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
Begin			
 mux:process(X)
begin
 
 if(X = '1') then
	BO <= not B;
	DO <= not D;
	FO <= not F;
	HO <= not H;
	Carry <= '1';
 elsif(X = '0') then
	BO <= B;
	DO <= D;
	FO <= F;
	HO <= H;
	Carry <= '0';

end if;
end process mux;
end Behavioral;


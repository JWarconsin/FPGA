library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--half adder
	entity half_adder is
		port (
				A : in std_logic;
				B : in std_logic;
				S : out std_logic;
				C : out std_logic
				);
	end half_adder;
	
	architecture behavioral of half_adder is
	begin
		s <= A xor B;
		C <= A and B;
	end architecture;

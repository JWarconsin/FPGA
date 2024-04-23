library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--half adder
	entity full_adder is
		port (
				A : in std_logic;
				B : in std_logic;
				Cin : in std_logic;
				S : out std_logic;
				Cout : out std_logic
				);
	end full_adder;
	
	architecture behavioral of full_adder is
	
	signal S1, S2, C1, C2 : std_logic;
	
	begin
		--s <= ((A xor B) xor Cin)
		--Cout <= ((A xor B) and (Cin)) or (A and B);
		
		--half_adder1
		half_adder1 : entity work.half_adder port map(
			A=>A,
			B=>B,
			S=>S1,		
			C=>C1
		);
		
		--half_adder2
		half_adder2 : entity work.half_adder port map(
			A=>S1,
			B=>Cin,
			S=>S2,		
			C=>C2
		);
		
	S<=S2;
	Cout<=C1 or C2;
		
		
	end architecture;

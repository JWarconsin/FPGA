library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
	
	entity toplevel is 
		port ( 
					LEDR : out std_logic_vector(9 downto 0);
					LEDG : out std_logic_vector(7 downto 0);
					SW : in std_logic_vector(9 downto 0)
			);
	end entity;
	
	architecture behavioral of toplevel is
	
	
	begin
	
	full_adder4b : entity work.full_adder_4b port map (
        A => SW(3 downto 0), 
        B => SW(7 downto 4),
        Cin => SW(9),
		  Cout => LEDG(7),
        S => LEDG(3 downto 0)
	);
	
	LEDR(3 downto 0) <= SW(3 downto 0);
   LEDR(7 downto 4) <= SW(7 downto 4);
	LEDR(9) <= SW(9);
	
		
	end architecture;





library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity chenillard is
	port (
		CLK, RST : in std_logic;
		CHEN : out std_logic_vector(9 downto 0)
	);
end chenillard;


architecture behavioral of chenillard is

	signal c : std_logic_vector(9 downto 0);

begin
	process(CLK,RST)
	begin
		if(RST = '1') then
			c <= "0000001111";
		elsif (CLK'event and CLK = '1') then
			c <= c(8 downto 0) & c(9);
		end if;
	end process;
	
	CHEN <= c;
end behavioral;
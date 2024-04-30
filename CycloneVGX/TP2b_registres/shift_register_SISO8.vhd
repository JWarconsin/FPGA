Library ieee;
use ieee.std_logic_1164.all;

entity shift_register_SISO8 is
		port (
			-- Inputs
			Si : in std_logic; -- Serial in
			CLK : in std_logic; --Horloge
			SETn : in std_logic; --Preset
			RSTn : in std_logic; --Reset
			-- Outputs
			So : out std_logic --Sortie du registre

			);
end shift_register_SISO8;



architecture behavioral of shift_register_SISO8 is
signal Reg : std_logic_vector (7 downto 0);

begin
	process(CLK)
	begin
			if(RSTn = '0' and SETn = '0') then
				So <= '0';
				Reg <= "00000000";
			elsif (RSTn = '0' and SETn = '1') then
				So <= '0';
			elsif(RSTn = '1' and SETn = '0') then
				So <= '1';
			elsif(RSTn = '1' and SETn = '1') then
				if (CLK'event and CLK = '1') then 
					Reg <= Si & reg(7 downto 1);
					So <= reg(0);
				end if;
			end if;
	end process;
end behavioral;
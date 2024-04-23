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
			So : out std_logic; --Sortie du registre

			);
end shift_register_SISO8;



architecture behavioral of shift_register_SISO8 is

begin
	JK(1) <= J;
	JK(0) <= K;
	
	process(CLK)
	begin
		if(RSTn = '0' and SETn = '0') then
		Qs <= '0';
		elsif (RSTn = '0' and SETn = '1') then
		Qs <= '0';
		elsif(RSTn = '1' and SETn = '0') then
		Qs <= '1';
		elsif(RSTn = '1' and SETn = '1') then
		if (CLK'event and CLK = '1') then 
		case JK is 
			when"00" => 
				Qs <= Qs;
			when"01" =>
				Qs <= '0';
		   when"10" => 
				Qs <= '1';
			when"11" => 
				Qs <= not(Qs);
			when others =>
				Qs <= Qs;
				
		end case;
		end if;
		end if;
	end process;
			Q <= Qs;
			Qn <= not(Qs);
end behavioral;
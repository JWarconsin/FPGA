Library ieee;
use ieee.std_logic_1164.all;

entity shift_register_universal8 is
		port (
			-- Inputs
			SSR : in std_logic; 
			SSL : in std_logic;
			Pi : in std_logic_vector(7 downto 0);
			SEL : in std_logic_vector(2 downto 0);
			CLK : in std_logic; --Horloge
			SETn : in std_logic; --Preset
			RSTn : in std_logic; --Reset
			-- Outputs
			SOR : out std_logic; --Sortie du registre
			SOL : out std_logic;
			Qo  : out std_logic_vector(7 downto 0)
			);
end shift_register_universal8;



architecture behavioral of shift_register_universal8 is
signal Reg : std_logic_vector (7 downto 0);

begin
	process(CLK)
	begin
		if(SEL = "110") then
			--Rotate left

			if (CLK'event and CLK = '1') then
				Reg <= Reg(6 downto 0) & Reg(7);
			end if;
			
		elsif(SEL = "101") then
			--Rotate right
			
			if (CLK'event and CLK = '1') then
				Reg <= Reg(6 downto 0) & Reg(7);
			end if;
		
		elsif(SEL = "010") then
			--Shift left
			
			if(RSTn = '0' and SETn = '0') then
				SOL <= '0';
				Reg <= "00000000";
			elsif (RSTn = '0' and SETn = '1') then
				SOL <= '0';
			elsif(RSTn = '1' and SETn = '0') then
				SOL <= '1';
			elsif(RSTn = '1' and SETn = '1') then
				if (CLK'event and CLK = '1') then 
					Reg <=  reg(6 downto 0) & SSL;
				end if;
			end if;
		
		elsif(SEL = "001") then
			--Shift right
			
			if(RSTn = '0' and SETn = '0') then
				SOR <= '0';
				Reg <= "00000000";
			elsif (RSTn = '0' and SETn = '1') then
				SOR <= '0';
			elsif(RSTn = '1' and SETn = '0') then
				SOR <= '1';
			elsif(RSTn = '1' and SETn = '1') then
				if (CLK'event and CLK = '1') then 
					Reg <= SSR & reg(7 downto 1);
				end if;
			end if;
		
		
		elsif(SEL(1 downto 0) = "11") then
			--Parallel load
			
			Reg <= Pi;
			
		elsif(SEL(1 downto 0) = "00") then
			--Hold (Memorize)
			
			Reg <= Reg;
			
		end if;
	end process;
	SOL <= reg(7);
	Qo <= Reg;
	SOR <= reg(0);
end behavioral;
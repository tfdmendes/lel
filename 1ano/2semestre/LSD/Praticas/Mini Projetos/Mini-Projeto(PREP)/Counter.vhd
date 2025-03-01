library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all; 

entity Counter is 
	generic(N      : natural := 4); -- para contar até 4 bits
	port(clk       : in std_logic;
		  clkEn		: in std_logic; 
		  reset     : in std_logic;
		  enable    : in std_logic;
		  max       : out std_logic;
		  count     : out std_logic_vector(N-1 downto 0)); 
end Counter;
 
architecture Behavioral of Counter is 
	signal s_count : unsigned(N-1 downto 0); 
begin 
	process(clk, clkEn) 
	begin
        -- reset sincrono
		if (rising_edge(clk) and clkEn = '1') then 
			if (reset = '1') then
				s_count <= (others => '0');
			
			elsif (enable = '1') then
                -- contar apenas até 11
				if (s_count = "1011") then
					max <= '1';
					s_count <= (others => '0');
				else
					s_count <= s_count + 1;
               max <= '0';
				end if;
			end if;
		end if;
	end process; 
	count <= std_logic_vector(s_count); 
end Behavioral;

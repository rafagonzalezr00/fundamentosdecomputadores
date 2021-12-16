library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity practica5 is
    Port ( d3 : in  STD_LOGIC;
           d2 : in  STD_LOGIC;
           d1 : in  STD_LOGIC;
           d0 : in  STD_LOGIC;
           r : out  STD_LOGIC;
           t : out  STD_LOGIC;
           c : out  STD_LOGIC;
           p : out  STD_LOGIC);
end practica5;

architecture Behavioral of practica5 is
signal entrada: std_logic_vector (3 downto 0);
begin
entrada <= d3&d2&d1&d0;
r<= '1' when entrada="0100" else
	 '1' when entrada="0101" else
	 '1' when entrada="0110" else
	 '1' when entrada="0111" else
	 '1' when entrada="1000" else
	 '1' when entrada="1001" else
	 '1' when entrada="1010" else
	 '0';
	 
with entrada select 
	t<= '1' when "0011",
		 '1' when "0110",
		 '1' when "1001",
		 '1' when "1100",
		 '1' when "1111",
		 '0' when others;
		 
process(entrada)		
begin 
	if entrada="0101" then c<='1';
	elsif entrada="1010" then c<='1';
	elsif entrada="1111" then c<='1';
	else c<='0'; end if;
end process;

process(entrada)
begin
	case entrada is
	 when "0000" => p <= '1';
	 when "0011" => p <= '1';
	 when "0101" => p <= '1';
	 when "0110" => p <= '1';
	 when "1001" => p <= '1';
	 when "1010" => p <= '1';
	 when "1100" => p <= '1';
	 when "1111" => p <= '1';
	 when others => p <= '0';
	end case;
end process;
end Behavioral;


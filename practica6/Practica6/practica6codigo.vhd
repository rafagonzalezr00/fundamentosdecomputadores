library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity practica6codigo is
    Port ( d3 : in  STD_LOGIC;
           d2 : in  STD_LOGIC;
           d1 : in  STD_LOGIC;
           d0 : in  STD_LOGIC;
           p1 : in  STD_LOGIC;
           p0 : in  STD_LOGIC;
           F : out  STD_LOGIC;
           SA : out  STD_LOGIC;
           SB : out  STD_LOGIC;
           SC : out  STD_LOGIC;
           SD : out  STD_LOGIC;
           SE : out  STD_LOGIC;
           SF : out  STD_LOGIC;
			  SG : out  STD_LOGIC);
end practica6codigo;

architecture Behavioral of practica6codigo is
signal dinero: std_logic_vector (3 downto 0);
signal producto: std_logic_vector (1 downto 0);
signal precio: std_logic_vector (3 downto 0);
signal display: std_logic_vector (6 downto 0);
signal Diferencia: std_logic_vector (1 downto 0);
begin
dinero <= d3&d2&d1&d0;
producto <= p1&p0;

process(producto)		
begin 
	if producto="00" then precio<="0010";
	elsif producto="01" then precio<="0011";
	elsif producto="10" then precio<="0101";
	else precio<="0110"; end if;
end process;
process(dinero, precio)
begin
	if dinero>precio then Diferencia<= dinero - precio;
	else Diferencia<= precio - dinero; end if;
end process;

F<= '1' when dinero<precio else
	 '0';

process(Diferencia)		
begin 
	if Diferencia="0001" then display<="0000110";
	elsif Diferencia="0010" then display<="1011011";
	elsif Diferencia="0011" then display<="1001111";
	elsif Diferencia="0100" then display<="1100110";
	elsif Diferencia="0101" then display<="1101101";
	elsif Diferencia="0110" then display<="1111101";
	elsif Diferencia="0111" then display<="0000111";
	else display<="0111111"; end if;
end process;
end Behavioral;


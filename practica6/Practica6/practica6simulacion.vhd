LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY practica6simulacion IS
END practica6simulacion;
 
ARCHITECTURE behavior OF practica6simulacion IS 
 
 
    COMPONENT practica6codigo
    PORT(
         d3 : IN  std_logic;
         d2 : IN  std_logic;
         d1 : IN  std_logic;
         d0 : IN  std_logic;
         p1 : IN  std_logic;
         p0 : IN  std_logic;
         F : OUT  std_logic;
         SA : OUT  std_logic;
         SB : OUT  std_logic;
         SC : OUT  std_logic;
         SD : OUT  std_logic;
         SE : OUT  std_logic;
         SF : OUT  std_logic;
         SG : OUT  std_logic
        );
    END COMPONENT;
    

   signal d3 : std_logic := '0';
   signal d2 : std_logic := '0';
   signal d1 : std_logic := '0';
   signal d0 : std_logic := '0';
   signal p1 : std_logic := '0';
   signal p0 : std_logic := '0';

   signal F : std_logic;
   signal SA : std_logic;
   signal SB : std_logic;
   signal SC : std_logic;
   signal SD : std_logic;
   signal SE : std_logic;
   signal SF : std_logic;
   signal SG : std_logic;
 
   constant tiempo : time := 10 ns;
 
BEGIN
 
   uut: practica6codigo PORT MAP (
          d3 => d3,
          d2 => d2,
          d1 => d1,
          d0 => d0,
          p1 => p1,
          p0 => p0,
          F => F,
          SA => SA,
          SB => SB,
          SC => SC,
          SD => SD,
          SE => SE,
          SF => SF,
          SG => SG
        );

   stim_proc: process
   begin		
      -- hold reset state for 100 ns. 
	d3 <= '0'; d2 <= '0'; d1 <= '0'; d0 <= '0'; p1 <= '0'; p0 <= '0'; wait for tiempo;	
	d3 <= '0'; d2 <= '0'; d1 <= '0'; d0 <= '0'; p1 <= '0'; p0 <= '1'; wait for tiempo;	
	d3 <= '0'; d2 <= '0'; d1 <= '0'; d0 <= '0'; p1 <= '1'; p0 <= '0'; wait for tiempo;	
	d3 <= '0'; d2 <= '0'; d1 <= '0'; d0 <= '0'; p1 <= '1'; p0 <= '1'; wait for tiempo;
	d3 <= '0'; d2 <= '0'; d1 <= '1'; d0 <= '1'; p1 <= '0'; p0 <= '0'; wait for tiempo;	
	d3 <= '0'; d2 <= '0'; d1 <= '1'; d0 <= '1'; p1 <= '0'; p0 <= '1'; wait for tiempo;	
	d3 <= '0'; d2 <= '0'; d1 <= '1'; d0 <= '1'; p1 <= '1'; p0 <= '0'; wait for tiempo;	
	d3 <= '0'; d2 <= '0'; d1 <= '1'; d0 <= '1'; p1 <= '1'; p0 <= '1'; wait for tiempo;
	d3 <= '0'; d2 <= '1'; d1 <= '0'; d0 <= '1'; p1 <= '0'; p0 <= '0'; wait for tiempo;	
	d3 <= '0'; d2 <= '1'; d1 <= '0'; d0 <= '1'; p1 <= '0'; p0 <= '1'; wait for tiempo;	
	d3 <= '0'; d2 <= '1'; d1 <= '0'; d0 <= '1'; p1 <= '1'; p0 <= '0'; wait for tiempo;	
	d3 <= '0'; d2 <= '1'; d1 <= '0'; d0 <= '1'; p1 <= '1'; p0 <= '1'; wait for tiempo;
	d3 <= '1'; d2 <= '0'; d1 <= '0'; d0 <= '0'; p1 <= '0'; p0 <= '0'; wait for tiempo;	
	d3 <= '1'; d2 <= '0'; d1 <= '0'; d0 <= '0'; p1 <= '0'; p0 <= '1'; wait for tiempo;	
	d3 <= '1'; d2 <= '0'; d1 <= '0'; d0 <= '0'; p1 <= '1'; p0 <= '0'; wait for tiempo;	
	d3 <= '1'; d2 <= '0'; d1 <= '0'; d0 <= '0'; p1 <= '1'; p0 <= '1'; wait for tiempo;
      wait;
   end process;

END;

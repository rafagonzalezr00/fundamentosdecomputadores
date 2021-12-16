LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY T_p5 IS
END T_p5;
 
ARCHITECTURE behavior OF T_p5 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT practica5
    PORT(
         d3 : IN  std_logic;
         d2 : IN  std_logic;
         d1 : IN  std_logic;
         d0 : IN  std_logic;
         r : OUT  std_logic;
         t : OUT  std_logic;
         c : OUT  std_logic;
         p : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d3 : std_logic := '0';
   signal d2 : std_logic := '0';
   signal d1 : std_logic := '0';
   signal d0 : std_logic := '0';

 	--Outputs
   signal r : std_logic;
   signal t : std_logic;
   signal c : std_logic;
   signal p : std_logic;
 
   constant tiempo : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: practica5 PORT MAP (
          d3 => d3,
          d2 => d2,
          d1 => d1,
          d0 => d0,
          r => r,
          t => t,
          c => c,
          p => p
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns. 
	d3 <= '0'; d2 <= '0'; d1 <= '0'; d0 <= '0'; wait for tiempo;	
	d3 <= '0'; d2 <= '0'; d1 <= '0'; d0 <= '1'; wait for tiempo;	
	d3 <= '0'; d2 <= '0'; d1 <= '1'; d0 <= '0'; wait for tiempo;	
	d3 <= '0'; d2 <= '0'; d1 <= '1'; d0 <= '1'; wait for tiempo;	
	d3 <= '0'; d2 <= '1'; d1 <= '0'; d0 <= '0'; wait for tiempo;	
	d3 <= '0'; d2 <= '1'; d1 <= '0'; d0 <= '1'; wait for tiempo;	
	d3 <= '0'; d2 <= '1'; d1 <= '1'; d0 <= '0'; wait for tiempo;	
	d3 <= '0'; d2 <= '1'; d1 <= '1'; d0 <= '1'; wait for tiempo;	
	d3 <= '1'; d2 <= '0'; d1 <= '0'; d0 <= '0'; wait for tiempo;	
	d3 <= '1'; d2 <= '0'; d1 <= '0'; d0 <= '1'; wait for tiempo;	
	d3 <= '1'; d2 <= '0'; d1 <= '1'; d0 <= '0'; wait for tiempo;	
	d3 <= '1'; d2 <= '0'; d1 <= '1'; d0 <= '1'; wait for tiempo;	
	d3 <= '1'; d2 <= '1'; d1 <= '0'; d0 <= '0'; wait for tiempo;	
	d3 <= '1'; d2 <= '1'; d1 <= '0'; d0 <= '1'; wait for tiempo;	
	d3 <= '1'; d2 <= '1'; d1 <= '1'; d0 <= '0'; wait for tiempo;	
	d3 <= '1'; d2 <= '1'; d1 <= '1'; d0 <= '1'; wait for tiempo;	
      wait;
   end process;

END;

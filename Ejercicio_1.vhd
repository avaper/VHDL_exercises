--------------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all;

entity FUNCION is 
	port (F1, F2 : out std_logic; 
		 a, b, c : in  std_logic); 
end FUNCION;
--------------------------------------------

--------------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all;

architecture COMPORTAMIENTO of FUNCION is
begin
	F1 <= a or b;
	F2 <= (not a or not b) and c;
end COMPORTAMIENTO;
--------------------------------------------

--------------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all;

entity AND2 is 
	port (y0 : out std_logic; 
	  x0, x1 : in  std_logic); 
end AND2;
architecture AND2 of AND2 is 
begin 
	y0 <= x0 and x1; 
end AND2; 
--------------------------------------------

--------------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all;

entity OR2 is 
	port (y0 : out std_logic; 
	  x0, x1 : in  std_logic); 
end OR2;
architecture OR2 of OR2 is 
begin 
	y0 <= x0 or x1; 
end OR2;
--------------------------------------------

--------------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all;

entity NOT1 is 
	port (y0 : out std_logic; 
	  x0 : in  std_logic); 
end NOT1;
architecture NOT1 of NOT1 is 
begin 
	y0 <= not x0; 
end NOT1;
--------------------------------------------

--------------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all; 

architecture ESTRUCTURA of FUNCION is 
	signal           sN1, sN2: std_logic; 
	signal                sA1: std_logic; 
	signal           sO1, sO2: std_logic; 
-- Declaración de las clases de los componentes

	component and2 is 
	port ( y0 : out std_logic ; 
	   x0, x1 :  in std_logic); 
	end component and2; 

	component or2 is 
	port ( y0 : out std_logic; 
	   x0, x1 :  in std_logic ); 
	end component or2; 

	component not1 is 
	port ( y0 : out std_logic; 
		   x0 :  in std_logic ); 
	end component not1; 

begin 
-- Instanciación y conexión de los componentes
	N1 : component not1 port map (sN1, a); 
	N2 : component not1 port map (sN2, b); 
	A1 : component and2 port map (sA1, c, sO2); 
	O1 : component  or2 port map (sO1, a, b); 
	O2 : component  or2 port map (sO2, sN1, sN2); 
	F1 <= sO1; 
	F2 <= sA1; 

end ESTRUCTURA; 
--------------------------------------------

--------------------------------------------
-- Banco de pruebas del circuito Ejercicio 1 
library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

entity BANCO_PRUEBAS is 
	constant DELAY : time := 20 ns; -- Retardo usado en el test 
end BANCO_PRUEBAS;

architecture BANCO_PRUEBAS of BANCO_PRUEBAS is 
	signal  F1, F2 : std_logic; 
	signal a, b, c : std_logic;

	component FUNCION is 
	port (F1, F2 : out std_logic; 
		 a, b, c :  in std_logic); 
	end component FUNCION;
begin 
	UUT : component FUNCION port map (F1, F2, a, b, c);
	vec_test : process is 
	variable valor : unsigned (2 downto 0); 
	begin -- Generar todos los posibles valores de entrada 
		for i in 0 to 7 loop valor := to_unsigned(i,3); 
			a <= std_logic(valor(2)); 
			b <= std_logic(valor(1)); 
			c <= std_logic(valor(0)); 
			wait for DELAY; 
		end loop; 
		wait; -- Final de la simulación
	end process 
vec_test; 

end BANCO_PRUEBAS; 
--------------------------------------------

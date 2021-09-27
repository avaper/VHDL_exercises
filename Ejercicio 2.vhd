-----------------------------------
library IEEE; 
use IEEE.std_logic_1164.all;

entity CIRCUITO is 
    port (S1, S2 : out std_logic;
	       y : out std_logic_vector(3 downto 0); 
	   shift :  in std_logic; 
	       x :  in std_logic_vector(3 downto 0));
end CIRCUITO;

architecture COMPORTAMIENTO of CIRCUITO is 
begin 
    process (shift, x)
    begin
        if shift = '0' then
	    y <= x;
	    if x = "0000" then
	        S1 <= '0';
	        S2 <= '0';
	    elsif x = "0001" then
	        S1 <= '0';
	        S2 <= '1';
	    elsif x = "0010" then
	        S1 <= '0';
	        S2 <= '0';
	    elsif x = "0011" then
	        S1 <= '0';
	        S2 <= '1';
	    elsif x = "0100" then
	        S1 <= '0';
	        S2 <= '0';
	    elsif x = "0101" then
	        S1 <= '0';
	        S2 <= '1';
	    elsif x = "0110" then
	        S1 <= '0';
	        S2 <= '0';
	    elsif x = "0111" then
	        S1 <= '0';
	        S2 <= '1';
	    elsif x = "1000" then
	        S1 <= '0';
	        S2 <= '0';
	    elsif x = "1001" then
	        S1 <= '1';
	        S2 <= '1';
	    elsif x = "1010" then
	        S1 <= '1';
	        S2 <= '0';
	    elsif x = "1011" then
	        S1 <= '1';
	        S2 <= '1';
	    elsif x = "1100" then
	        S1 <= '1';
	        S2 <= '0';
	    elsif x = "1101" then
	        S1 <= '1';
	        S2 <= '1';
	    elsif x = "1110" then
	        S1 <= '1';
	        S2 <= '0';
	    else 
	        S1 <= '1';
	        S2 <= '1';
	    end if;
        else
	    if x = "0000" then
	        S1 <= '0';
	        S2 <= '0';
	         y <= "0000";
	    elsif x = "0001" then
	        S1 <= '0';
	        S2 <= '1';
	         y <= "1000";
	    elsif x = "0010" then
	        S1 <= '0';
	        S2 <= '0';
	         y <= "0001";
	    elsif x = "0011" then
	        S1 <= '0';
	        S2 <= '1';
	         y <= "1001";
	    elsif x = "0100" then
	        S1 <= '0';
	        S2 <= '0';
	         y <= "0010";
	    elsif x = "0101" then
	        S1 <= '0';
	        S2 <= '1';
	         y <= "1010";
	    elsif x = "0110" then
	        S1 <= '0';
	        S2 <= '0';
	         y <= "0011";
	    elsif x = "0111" then
	        S1 <= '0';
	        S2 <= '1';
	         y <= "1011";
	    elsif x = "1000" then
	        S1 <= '0';
	        S2 <= '0';
	         y <= "0100";
	    elsif x = "1001" then
	        S1 <= '1';
	        S2 <= '1';
	         y <= "1100";
	    elsif x = "1010" then
	        S1 <= '1';
	        S2 <= '0';
	         y <= "0101";
	    elsif x = "1011" then
	        S1 <= '1';
	        S2 <= '1';
	         y <= "1101";
	    elsif x = "1100" then
	        S1 <= '1';
	        S2 <= '0';
	         y <= "0110";
	    elsif x = "1101" then
	        S1 <= '1';
	        S2 <= '1';
	         y <= "1110";
	    elsif x = "1110" then
	        S1 <= '1';
	        S2 <= '0';
	         y <= "0111";
	    else 
	        S1 <= '1';
	        S2 <= '1';
	         y <= "1111";
	    end if;
        end if;
    end process;
end COMPORTAMIENTO;
-------------------------------------


-------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all;

entity and2 is 
    port (y0 : out std_logic; 
      x0, x1 :  in std_logic); 
end and2;
architecture and2 of and2 is 
begin 
    y0 <= x0 and x1; 
end and2; 
-------------------------------------
-------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all;

entity or3 is 
    port (y0 : out std_logic; 
  x0, x1, x3 :  in std_logic); 
end OR3;
architecture or3 of or3 is 
begin 
    y0 <= x0 or x1 or x3; 
end or3;
-------------------------------------
-------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity mux2a1 is
    port (y : out std_logic;
     x0, x1 :  in std_logic;
          s :  in std_logic);
end mux2a1;
architecture mux2a1 of mux2a1 is
begin
    y <= (s and x1) or (not s and x0);
end mux2a1;
-------------------------------------


-------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all; 

architecture ESTRUCTURA of CIRCUITO is 
    signal sA1, sA2, sA3, sO1:std_logic; 
    signal sM1, sM2, sM3, sM4:std_logic; 

-- Declaración de las clases de los componentes

    component and2 is 
	port (y0 : out std_logic ; 
	  x0, x1 :  in std_logic); 
    end component and2; 

    component or3 is 
	port (y0 : out std_logic; 
      x0, x1, x3 :  in std_logic); 
    end component or3; 

    component mux2a1 is 
	port (y : out std_logic;
    	 x0, x1 :  in std_logic;
       	      s :  in std_logic);
    end component mux2a1; 

begin 
-- Instanciación y conexión de los componentes
    A1 : component   and2 port map (sA1, x(3), x(0)); 
    A2 : component   and2 port map (sA2, x(3), x(1)); 
    A3 : component   and2 port map (sA3, x(3), x(2)); 
    O1 : component    or3 port map (sO1, sA1, sA2, sA3);
    M1 : component mux2a1 port map (sM1, x(0), x(1), shift);
    M2 : component mux2a1 port map (sM2, x(1), x(2), shift);
    M3 : component mux2a1 port map (sM3, x(2), x(3), shift);
    M4 : component mux2a1 port map (sM4, x(3), x(0), shift);
    S1 <= sO1;
    S2 <= x(0); 
    y(0) <= sM1;
    y(1) <= sM2;
    y(2) <= sM3;
    y(3) <= sM4;

end ESTRUCTURA; 
----------------------------------

------------------------------------------------------
-- Banco de pruebas del circuito Ejercicio 2 
library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

entity BANCO_PRUEBAS is 
	constant DELAY : time := 20 ns; -- Retardo usado en el test
end BANCO_PRUEBAS;

architecture BANCO_PRUEBAS of BANCO_PRUEBAS is 
    signal    S1, S2 : std_logic;  
    signal         y : std_logic_vector(3 downto 0);
    signal     shift : std_logic; 
    signal         x : std_logic_vector(3 downto 0);

    component CIRCUITO is 
    	port (S1, S2 : out std_logic;
	       	   y : out std_logic_vector(3 downto 0); 
	       shift : in std_logic; 
	           x : in std_logic_vector(3 downto 0));
    end component CIRCUITO;
 
procedure check_desp
   	   (x : in unsigned(3 downto 0);
     lecturay : in unsigned (3 downto 0);
   error_count: inout integer ) is

	variable  expected_y : unsigned(3 downto 0);
	variable expected_S1 : std_logic;
	variable expected_S2 : std_logic;

begin

if to_integer(x)<9 then
    expected_S1 := '0';
else
    expected_S1 := '1';
end if;

if (to_integer(x) mod 9) /= 0 then
    expected_S2 := '0';
else
    expected_S2 := '1';
end if;

expected_y  := x ror 1;

assert(expected_S1 =S1)
report"ERROR. S1 esperado: "&
      std_logic'image(expected_S1)&
      ", S1 actual: "&
      std_logic'image(S1)&
      " en el instante "&
      time'image(now);

assert(expected_S2 =S2)
report"ERROR. S2 esperado: "&
      std_logic'image(expected_S2)&
      ", S2 actual: "&
      std_logic'image(S2)&
      " en el instante "&
      time'image(now);

assert(expected_y =lecturay)
report"ERROR. Entrada X: " & integer'image(to_integer(x))&
      ", salida esperada: "&
      integer'image(to_integer(expected_y))&
      ", resultado actual: " &
      integer'image(to_integer(lecturay))&
      " en el instante "&
      time'image(now);

    if ((expected_y /= lecturay) or (expected_S1 /= S1) or (expected_S2 /= S2)) then
    	error_count := error_count + 1;
    end if;
end procedure check_desp;

begin 

    UUT : component CIRCUITO port map (S1, S2, y, shift, x);
    vec_test : process
 
	variable       valor : std_logic_vector(3 downto 0);
	variable error_count : integer := 0;

    begin -- Generar todos los posibles valores de entrada 
    for selector in std_logic range '0' to '1' loop 
	shift <= selector;
    	for i in 0 to 15 loop 
	    valor  := std_logic_vector(to_unsigned(i,4)); 
	    x <= valor(3 downto 0);    
	    wait for DELAY;
	    check_desp(unsigned(x), unsigned(y), error_count); 
    	end loop; 
    end loop;
	report"Finaliza la simulación: "& integer'image(error_count)& "errores";
    wait; -- Final de la simulación
    end process 

    vec_test;
end BANCO_PRUEBAS; 
----------------------------------------------------
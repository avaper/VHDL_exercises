--------------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all;

entity CIRCUITO is 
    port (dias28 : out std_logic;
		  dias29 : out std_logic;
		  dias30 : out std_logic;
		  dias31 : out std_logic;
		bisiesto :  in std_logic; 
			 mes :  in std_logic_vector(3 downto 0));
end CIRCUITO;
--------------------------------------------

--------------------------------------------
architecture COMPORTAMIENTO of CIRCUITO is 
begin 
	process (bisiesto, mes)
	begin
		if bisiesto = '0' then
			if mes = "0000" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '0';
			elsif mes = "0001" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "0010" then
				dias28 <= '1';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '0';
			elsif mes = "0011" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "0100" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '1';
				dias31 <= '0';
			elsif mes = "0101" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "0110" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '1';
				dias31 <= '0';
			elsif mes = "0111" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "1000" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "1001" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '1';
				dias31 <= '0';
			elsif mes = "1010" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "1011" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '1';
				dias31 <= '0';
			elsif mes = "1100" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "1101" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '0';
			elsif mes = "1110" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '0';
			else 
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '0';
			end if;
		else
			if mes = "0000" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '0';
			elsif mes = "0001" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "0010" then
				dias28 <= '0';
				dias29 <= '1';
				dias30 <= '0';
				dias31 <= '0';
			elsif mes = "0011" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "0100" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '1';
				dias31 <= '0';
			elsif mes = "0101" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "0110" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '1';
				dias31 <= '0';
			elsif mes = "0111" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "1000" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "1001" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '1';
				dias31 <= '0';
			elsif mes = "1010" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "1011" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '1';
				dias31 <= '0';
			elsif mes = "1100" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '1';
			elsif mes = "1101" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '0';
			elsif mes = "1110" then
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '0';
			else 
				dias28 <= '0';
				dias29 <= '0';
				dias30 <= '0';
				dias31 <= '0';
			end if;
		end if;
	end process;
end COMPORTAMIENTO;
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

entity and2 is 
	port (y0 : out std_logic; 
	  x0, x1 :  in std_logic); 
end and2;
architecture and2 of and2 is 
begin 
	y0 <= x0 and x1; 
end and2; 
--------------------------------------------

--------------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all;

entity and3 is 
	port (y0 : out std_logic; 
  x0, x1, x2 :  in std_logic); 
end and3;
architecture and3 of and3 is 
begin 
	y0 <= x0 and x1 and x2; 
end and3; 
--------------------------------------------

--------------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all;

entity and4 is 
	port (y0 : out std_logic; 
x0, x1, x2, x3 :  in std_logic); 
end and4;
architecture and4 of and4 is 
begin 
	y0 <= x0 and x1 and x2 and x3; 
end and4; 
--------------------------------------------

--------------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all;

entity or2 is 
	port (y0 : out std_logic; 
	  x0, x1 :  in std_logic); 
end or2;
architecture or2 of or2 is 
begin 
	y0 <= x0 or x1; 
end or2;
--------------------------------------------

--------------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all;

entity xor2 is 
	port (y0 : out std_logic; 
		x0, x1 :  in std_logic); 
end xor2;
architecture xor2 of xor2 is 
begin 
	y0 <= x0 xor x1; 
end xor2;
--------------------------------------------

--------------------------------------------
library IEEE; 
use IEEE.std_logic_1164.all; 

architecture ESTRUCTURA of CIRCUITO is 
	signal sN1, sN2, sN3, sN4:std_logic; 
	signal sA1, sA2, sA3, sA4:std_logic; 
	signal                sO1:std_logic; 
	signal                sX1:std_logic; 

-- Declaración de las clases de los componentes

	component NOT1 is 
		port (y0 : out std_logic; 
			  x0 : in  std_logic); 
	end component NOT1;

	component and2 is 
		port (y0 : out std_logic ; 
		  x0, x1 :  in std_logic); 
	end component and2;

	component and3 is 
		port (y0 : out std_logic ; 
	  x0, x1, x2 :  in std_logic); 
	end component and3; 

	component and4 is 
		port (y0 : out std_logic ; 
  x0, x1, x2, x3 :  in std_logic); 
	end component and4; 

	component or2 is 
		port (y0 : out std_logic; 
		  x0, x1 :  in std_logic); 
	end component or2; 

	component xor2 is 
		port (y0 : out std_logic; 
		  x0, x1 :  in std_logic); 
	end component xor2;

begin 
-- Instanciación y conexión de los componentes
	N1 : component   not1 port map (sN1, bisiesto);
	N2 : component   not1 port map (sN2, mes(3));
	N3 : component   not1 port map (sN3, mes(2));
	N4 : component   not1 port map (sN4, mes(0));
	A1 : component   and2 port map (sA1, mes(3), mes(0));
	A2 : component   and3 port map (sA2, sN2, sN4, mes(2));
	A3 : component   and4 port map (sA3, sN1, sN2, sN3, sN4);
	A4 : component   and4 port map (sA4, bisiesto, sN2, sN3, sN4);
	O1 : component    or2 port map (sO1, sA1, sA2);
	X1 : component   xor2 port map (sX1, mes(3), mes(0));
	dias28 <= sA3;
	dias29 <= sA4;
	dias30 <= sO1;
	dias31 <= sX1;

end ESTRUCTURA; 
--------------------------------------------

--------------------------------------------
-- Banco de pruebas del circuito Ejercicio 2 
library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

entity BANCO_PRUEBAS is 
	constant DELAY : time := 20 ns; -- Retardo usado en el test
end BANCO_PRUEBAS;

architecture BANCO_PRUEBAS of BANCO_PRUEBAS is 
	signal   dias28 : std_logic;
	signal   dias29 : std_logic;
	signal   dias30 : std_logic;
	signal   dias31 : std_logic;
	signal bisiesto : std_logic; 
	signal      mes : std_logic_vector(3 downto 0);

	component CIRCUITO is 
    port (dias28 : out std_logic;
		  dias29 : out std_logic;
		  dias30 : out std_logic;
		  dias31 : out std_logic;
		bisiesto :  in std_logic; 
			 mes :  in std_logic_vector(3 downto 0));
	end component CIRCUITO;
 
	procedure check_desp (bisies : in std_logic;
				   lecturaMES : in unsigned (3 downto 0);
				   error_count: inout integer ) is

		variable expected_dias28 : std_logic;
		variable expected_dias29 : std_logic;
		variable expected_dias30 : std_logic;
		variable expected_dias31 : std_logic;

		begin

			if (bisies = '0') then
				if lecturaMES = "0010" then
					expected_dias28 := '1';
					expected_dias29 := '0';
					expected_dias28 := '0';
					expected_dias28 := '0';
				else 
					if ((lecturaMES = "0100") or (lecturaMES = "0110") or (lecturaMES = "1001") or (lecturaMES = "1011")) then
						expected_dias28 := '0';
						expected_dias29 := '0';
						expected_dias30 := '1';
						expected_dias31 := '0';
					else
						expected_dias28 := '0';
						expected_dias29 := '0';
						expected_dias30 := '0';
						expected_dias31 := '1';
					end if;
				end if;
			else
				if lecturaMES = "0010" then
					expected_dias28 := '0';
					expected_dias29 := '1';
					expected_dias28 := '0';
					expected_dias28 := '0';
				else 
					if ((lecturaMES = "0100") or (lecturaMES = "0110") or (lecturaMES = "1001") or (lecturaMES = "1011")) then
						expected_dias28 := '0';
						expected_dias29 := '0';
						expected_dias30 := '1';
						expected_dias31 := '0';
					else
						expected_dias28 := '0';
						expected_dias29 := '0';
						expected_dias30 := '0';
						expected_dias31 := '1';
					end if;
				end if;
			end if;

			assert(expected_dias28 = dias28)
			report"ERROR. dias28 esperado: "&
				std_logic'image(expected_dias28)&
				", dias28 actual: "&
				std_logic'image(dias28)&
				" en el instante "&
				time'image(now);

			assert(expected_dias29 = dias29)
			report"ERROR. dias29 esperado: "&
				std_logic'image(expected_dias29)&
				", dias29 actual: "&
				std_logic'image(dias29)&
				" en el instante "&
				time'image(now);

			assert(expected_dias30 = dias30)
			report"ERROR. dias30 esperado: "&
				std_logic'image(expected_dias30)&
				", dias30 actual: "&
				std_logic'image(dias30)&
				" en el instante "&
				time'image(now);

			assert(expected_dias31 = dias31)
			report"ERROR. dias31 esperado: "&
				std_logic'image(expected_dias31)&
				", dias31 actual: "&
				std_logic'image(dias31)&
				" en el instante "&
				time'image(now);
				if ((expected_dias28 /= dias28) or (expected_dias29 /= dias29) or (expected_dias30 /= dias30) or (expected_dias31 /= dias31)) then
					error_count := error_count + 1;
				end if;
	end procedure check_desp;

begin 

    UUT : component CIRCUITO port map (dias28, dias29, dias30, dias31, bisiesto, mes);
    vec_test : process
 
	variable       valor : std_logic_vector(3 downto 0);
	variable error_count : integer := 0;

	begin -- Generar todos los posibles valores de entrada 
		for selector in std_logic range '0' to '1' loop 
			bisiesto <= selector;
			for i in 0 to 15 loop 
				valor  := std_logic_vector(to_unsigned(i,4)); 
				mes <= valor(3 downto 0);    
				wait for DELAY;
				check_desp(bisiesto, unsigned(mes), error_count); 
			end loop; 
		end loop;
	report"Finaliza la simulación: "& integer'image(error_count)& " errores";
	wait; -- Final de la simulaciÃ³n
	end process 

    vec_test;
end BANCO_PRUEBAS; 
--------------------------------------------


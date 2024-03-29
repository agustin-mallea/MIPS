library ieee;
use ieee.std_logic_1164.all;
------------------------------------------------------
entity signext is
	port (
		a: in std_logic_vector (15 downto 0);
		y: out std_logic_vector (31 downto 0));
end signext;
------------------------------------------------------
architecture behavioral of signext is
begin
	y <= X"0000" & a when a(15) = '0' else X"FFFF" & a;
end behavioral;
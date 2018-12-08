-- Quartus II VHDL Template
-- Signed Divisor Mod 4

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
-- use work.mips_pkg.all;
use work.pack.all;

entity div_mod4 is 
	port (
		a	   : in std_logic_vector (31 downto 0);
		res 	: out std_logic_vector (1 downto 0)
	);
end entity;

architecture rtl of div_mod4 is
	signal valor: integer;
			
begin
	valor <= to_integer(unsigned(a)) mod 4;
	res <= std_logic_vector(to_unsigned(valor, 2));

end rtl;

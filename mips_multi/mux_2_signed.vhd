library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
-- use work.mips_pkg.all;
use work.pack.all;

entity mux_2_signed is
	generic (
		SIZE : natural := 32 );
	port (
	 	in0, in1	: in std_logic_vector(SIZE-1 downto 0);
		sel		: in std_logic;
		m_out		: out std_logic_vector(SIZE-1 downto 0));
end entity;

architecture rtl of mux_2_signed is 
begin
	m_out <= std_logic_vector(signed(in0)) when (sel = '0') else std_logic_vector(unsigned(in1));
end architecture;
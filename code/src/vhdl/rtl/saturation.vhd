--  Copyright (C) 2004-2005 Digish Pandya <digish.pandya@gmail.com>

--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program; if not, write to the Free Software
--  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

-- A.9 saturation.vhd
-- saturation circuit
-- important for avoiding adverse effect of truncation

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity saturation is
    Port ( d_in : in std_logic_vector(15 downto 0);
           d_out : out std_logic_vector(15 downto 0));
end saturation;

architecture Behavioral of saturation is
begin
	process(d_in)
		variable din_s : signed(15 downto 0);
	begin
		din_s := signed(d_in);
		if din_s > to_signed(16#1000#, 16) then
			d_out <= "0001000000000000";
		elsif din_s < to_signed(-16#1000#, 16) then
			d_out <= "1111000000000000";
		else
			d_out <= d_in;
		end if;
	end process;

end Behavioral;

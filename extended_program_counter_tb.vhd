library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ExtendedProgrammeCounter_tb is
end;

architecture bench of ExtendedProgrammeCounter_tb is

  component ExtendedProgrammeCounter
  	Port(	SR_SB : in STD_LOGIC_VECTOR(5 downto 0);
  			Extend : out STD_LOGIC_VECTOR(15 downto 0)
  			);
  end component;

  signal SR_SB: STD_LOGIC_VECTOR(5 downto 0);
  signal Extend: STD_LOGIC_VECTOR(15 downto 0) ;

begin

  uut: ExtendedProgrammeCounter port map ( SR_SB  => SR_SB,
                                           Extend => Extend );

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 10ns;
		SR_SB <= "010110";
		
		wait for 10ns;
		SR_SB <= "110110";
		
      wait;
   end process;

END;
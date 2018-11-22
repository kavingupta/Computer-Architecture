library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Full_adder_tb is
end;

architecture bench of Full_adder_tb is

  component Full_adder
    Port ( In0,In1,Cin :in STD_LOGIC;
    S,Cout : out STD_LOGIC);
  end component;

  signal In0,In1,Cin: STD_LOGIC;
  signal S,Cout: STD_LOGIC;

begin

  uut: Full_adder port map ( In0  => In0,
                             In1  => In1,
                             Cin  => Cin,
                             S    => S,
                             Cout => Cout );

  stimulus: process
  begin
  
    -- Put initialisation code here
wait for 200 ns;
In0 <= '1';
In1 <= '0';
Cin <= '0';
wait for 200 ns;
In0 <= '1';
In1 <= '1';
Cin <= '0';
wait for 200 ns;



    -- Put test bench stimulus code here

    wait;
  end process;


end;
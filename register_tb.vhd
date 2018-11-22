library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity reg16_tb is
end;

architecture bench of reg16_tb is

  component reg16
  port ( D : in std_logic_vector(15 downto 0);
  load, Clk : in std_logic;
  Q : out std_logic_vector(15 downto 0));
  end component;

  signal D: std_logic_vector(15 downto 0);
  signal load, Clk: std_logic;
  signal Q: std_logic_vector(15 downto 0);

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: reg16 port map ( D    => D,
                        load => load,
                        Clk  => Clk,
                        Q    => Q );

  stimulus: process
  begin
  
    -- Put initialisation code here

    D <= x"0f0f";
    load <= '1';
    wait for 100ns;
    -- Put test bench stimulus code here

    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      Clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;

--graphs are on separate word file 

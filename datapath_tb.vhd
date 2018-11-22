library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Datapath_tb is
end;

architecture bench of Datapath_tb is

  component Datapath
  	Port(	data_in, pc_in : in STD_LOGIC_VECTOR(15 downto 0);
  			control_word : in STD_LOGIC_VECTOR(17 downto 0);
  			clk_sig, TD, TA, TB : in STD_LOGIC;
  			data_out, addr_out : out STD_LOGIC_VECTOR(15 downto 0);
  			status_out : out STD_LOGIC_VECTOR(3 downto 0)
  			);
  end component;

  signal data_in, pc_in: STD_LOGIC_VECTOR(15 downto 0);
  signal control_word: STD_LOGIC_VECTOR(17 downto 0);
  signal clk_sig, TD, TA, TB: STD_LOGIC;
  signal data_out, addr_out: STD_LOGIC_VECTOR(15 downto 0);
  signal status_out: STD_LOGIC_VECTOR(3 downto 0) ;

begin

  uut: Datapath port map ( data_in      => data_in,
                           pc_in        => pc_in,
                           control_word => control_word,
                           clk_sig      => clk_sig,
                           TD           => TD,
                           TA           => TA,
                           TB           => TB,
                           data_out     => data_out,
                           addr_out     => addr_out,
                           status_out   => status_out );
clk_prc: process
                           
                           begin
                           
                            
                           
                           Clk_sig <= '1';
                           
                           wait for 5 ns;
                           
                            
                           
                           Clk_sig <= '0';
                           
                           wait for 5 ns;
                           
                            
                           
                           end process;
                           
                            
  stimulus: process
  begin
  
 
     
  
            
    -- Put test bench stimulus code here

    wait;
  end process;


end;

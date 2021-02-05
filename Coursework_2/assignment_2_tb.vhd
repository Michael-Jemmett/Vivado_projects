library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity assignment_2_tb is
end;

architecture bench of assignment_2_tb is

  component assignment_2
      Port ( Tank_A : in STD_LOGIC;
             Tank_B : in STD_LOGIC;
             Tank_C : in STD_LOGIC;
             Q : out STD_LOGIC);
  end component;

  signal Tank_A: STD_LOGIC;
  signal Tank_B: STD_LOGIC;
  signal Tank_C: STD_LOGIC;
  signal Q: STD_LOGIC;

begin

  uut: assignment_2 port map ( Tank_A => Tank_A,
                               Tank_B => Tank_B,
                               Tank_C => Tank_C,
                               Q      => Q );

  stimulus: process
  begin
  
    -- Put initialisation code here
Tank_A <= '0';
Tank_B <= '0';
Tank_C <= '0';
wait for 100ns;
    -- Put test bench stimulus code here

Tank_A <= '0';
Tank_B <= '0';
Tank_C <= '1';
wait for 100ns;
Tank_A <= '0';
Tank_B <= '1';
Tank_C <= '0';
wait for 100ns;
Tank_A <= '0';
Tank_B <= '1';
Tank_C <= '1';
wait for 100ns;
Tank_A <= '1';
Tank_B <= '0';
Tank_C <= '0';
wait for 100ns;
Tank_A <= '1';
Tank_B <= '0';
Tank_C <= '1';
wait for 100ns;
Tank_A <= '1';
Tank_B <= '1';
Tank_C <= '0';
wait for 100ns;
Tank_A <= '1';
Tank_B <= '1';
Tank_C <= '1';

wait for 100ns;


    wait;
  end process;


end;
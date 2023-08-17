LIBRARY std;
  USE std.textio.ALL;

LIBRARY ieee;
  USE ieee.std_logic_textio.ALL;

LIBRARY Common_test;
  USE Common_test.testutils.all;

ARCHITECTURE test OF lut_tester IS

  function result_from_inputs(L: natural) return std_ulogic is
  begin
    if L = 0 then
      return('0');
    else
      return('1');
    end if;
  end function result_from_inputs;

BEGIN
  ------------------------------------------------------------------------------
  process
  begin
    -- Default values
    inputs <= (others=>'0');

    write(output,
      lf & lf & lf &
      "----------------------------------------------------------------" & lf &
      "-- Starting testbench" & lf &
      "--" &
      lf & lf
    );
    wait for 1 ns;

    for i in 0 to 2**c_lutMaxInputs - 1 loop
      write(output, lf &
        "Inputs values : " & integer'image(i) & lf
      );
      inputs <= std_ulogic_vector(to_unsigned(i, inputs'length));
      wait for 1 ns;
      for j in 1 to c_lutMaxInputs-1 loop
        if i < 2**(j+1) then
          if outputs(j) = c_lut(i) then
            write(output,
              " * Correct output " & integer'image(j) & lf
            );
          else
            write(output,
              " * Incorrect output " & integer'image(j) & lf
            );
          end if;
        end if;
      end loop;
      wait for 1 ns;
    end loop;
    
    -- End
    write(output,
      lf &
      "----------------------------------------------------------------" & lf &
      "-- Testbench end" & lf &
      "--" &
      lf & lf
    );
    wait;
  end process;

END ARCHITECTURE test;

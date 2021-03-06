--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.NUMERIC_STD.ALL;
USE ieee.MATH_REAL.ALL;



ENTITY FloatMultiplier_tb IS
END FloatMultiplier_tb;



ARCHITECTURE behavior OF FloatMultiplier_tb IS 
 
    -- Component dec_Multiplicandlaration for the Unit Under Test (UUT)
 
    COMPONENT FloatMultiplier_rounding
	 Port ( 
	       Multiplicand	: IN std_logic_vector(31 downto 0);
		   Multiplier	: IN std_logic_vector(31 downto 0);
		   Result		: OUT std_logic_vector(31 downto 0)
 		);
    END COMPONENT;    
    
    FUNCTION exponent (X : real) return real is   -- returns the real exponent value
	BEGIN
	    if abs(X) < 1.0 or (integer(X) rem 2) /= 0  then
			return floor(log2(abs(X))); 
		else
			return log2(abs(X));-- if exponent == integer number then we don't need to use floor()
		end if;

	END exponent;
	
	-- Clock signal
	signal clk : std_logic;
	
   --Inputs   
	 signal Multiplicand	: std_logic_vector(31 downto 0);
	 signal Multiplier		: std_logic_vector(31 downto 0);
	 	
 	--Outputs
	signal Result		: std_logic_vector(31 downto 0);
	
	--Dummy signals
	signal to_convert_Multiplicand : std_logic_vector(31 downto 0);
	signal to_convert_Multiplier : std_logic_vector(31 downto 0);
	signal t_Result   : std_logic_vector(31 downto 0);
	signal converted  : real;		

   -- Clock period definitions
   constant clk_period : time := 1 ns;
   
   --Constant defitions for limits with normalized and denormalized numbers.
   constant NaN : real := 2.0**130;					--max_n_m : real := 1.9999998807907104; --(2.0)**(128);
   constant neg_zero : real := -(2.0**(-150));  		--min_n_m : real := 1.0000001192092896; --(-2.0)**(128);
   constant max_d_m : real := (2.0)**(-126); 		--0.9999998807907104;
   constant min_d_m : real := -(2.0**(-126)); 		--0.0000001192092896;
   constant neg_inf : real := -(2.0**128);
   constant pos_inf : real := 2.0**128;
   --variable to be converted:  
   signal dec_Multiplicand : real := 1.257;
   signal dec_Multiplier : real := 2.3;
   signal cnt : integer := 1;
   
   -- signal powi : integer;
   -- signal powr : real;
   -- signal pre_mantissa : real;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
    uut: FloatMultiplier_rounding 
		PORT MAP (
			Multiplicand	=> Multiplicand, 
			Multiplier 		=> Multiplier,
			Result 			=> Result
	     );  
	   
   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		Multiplicand <= (others => '0');
		Multiplier <= (others => '0');
		wait for clk_period;
        
		-- if abs(dec_Multiplicand) > max_d_m then --/= 0.0 then
			-- pre_mantissa <= abs(8.0)/(2.0**integer(floor(log2(abs(8.0)))));
			-- powi <= integer(exponent(8.0));
			
		-- else
			-- pre_mantissa <= abs(dec_Multiplicand)/max_d_m;
		-- end if;
		-- wait for clk_period ;
		
		-- Real Multiplicand to IEEE 754 format conversion 
		-- sign bit:
		if dec_Multiplicand < 0.0 then
			to_convert_Multiplicand(31) <= '1';
		else
			to_convert_Multiplicand(31) <= '0';
		end if;
		
		-- This case deals with negative zero, we have used the constant neg_zero = -(2.0**150), to signal -0
		if (dec_Multiplicand = neg_zero) then
			-- to_convert_Multiplicand(30 downto 0) <= (others => '0');
		-- This case deals with NaN-s, we have used the constant NaN = (2.0)**(130), which is out of range, to signal a NaN
	    elsif(dec_Multiplicand = NaN) then 
			to_convert_Multiplicand(30 downto 23) <= (others => '1');
			to_convert_Multiplicand(22 downto 0) <= (others => '1');
		-- This case deals with the denormalized numbers that absolute value is too large. > ±2^128
		elsif(dec_Multiplicand >= pos_inf or dec_Multiplicand <= neg_inf) then--  if(dec_Multiplicand > (real(2**127) * max_n_m) or dec_Multiplicand < (real(-2**-126) * min_d_m)) then
			to_convert_Multiplicand(30 downto 23) <= (others => '1');
			to_convert_Multiplicand(22 downto 0) <= (others => '0');
		-- This case deals with the denormalized numbers that absolute value is too small. < ±2^-126.
		elsif(dec_Multiplicand = 0.0 or abs(dec_Multiplicand) <= max_d_m) then
			to_convert_Multiplicand(30 downto 23) <= (others => '0');
			to_convert_Multiplicand(22 downto 0) <= std_logic_vector(to_unsigned(integer(abs(dec_Multiplicand)/max_d_m*(2.0**23)), 23));
		-- This case deals with the normalized numbers.
		else
			to_convert_Multiplicand(30 downto 23) <= std_logic_vector(to_unsigned((integer(exponent(dec_Multiplicand)) + 127), 8));
			to_convert_Multiplicand(22 downto 0) <= std_logic_vector(to_unsigned(integer(((abs(dec_Multiplicand)/(2.0**integer(exponent(dec_Multiplicand)))) - 1.0)*(2.0**23)), 23));
		end if;
		
		-- Real Multiplier to IEEE 754 format conversion
		if dec_Multiplier < 0.0 then
			to_convert_Multiplier(31) <= '1';
		else
			to_convert_Multiplier(31) <= '0';
		end if;
		-- This case deals with negative zero, we have used the constant neg_zero = -(2.0**150), to signal -0
		if (dec_Multiplier = neg_zero) then
			-- to_convert_Multiplier(30 downto 0) <= (others => '0');
		-- This case deals with NaN-s, we have used the constant NaN = (2.0)**(130), which is out of range, to signal a NaN
	    elsif(dec_Multiplier = NaN) then 
			to_convert_Multiplier(30 downto 23) <= (others => '1');
			to_convert_Multiplier(22 downto 0) <= (others => '1');
		-- This case deals with the denormalized numbers that absolute value is too large. > ±2^128
		elsif(dec_Multiplier >= pos_inf or dec_Multiplier <= neg_inf) then--  if(dec_Multiplier > (real(2**127) * max_n_m) or dec_Multiplier < (real(-2**-126) * min_d_m)) then
			to_convert_Multiplier(30 downto 23) <= (others => '1');
			to_convert_Multiplier(22 downto 0) <= (others => '0');
		-- This case deals with the denormalized numbers that absolute value is too small. < ±2^-126.
		elsif(dec_Multiplier = 0.0 or abs(dec_Multiplier) <= max_d_m) then
			to_convert_Multiplier(30 downto 23) <= (others => '0');
			to_convert_Multiplier(22 downto 0) <= std_logic_vector(to_unsigned(integer(abs(dec_Multiplier)/max_d_m*(2.0**23)), 23));
		-- This case deals with the normalized numbers.
		else
			to_convert_Multiplier(30 downto 23) <= std_logic_vector(to_unsigned((integer(exponent(dec_Multiplier)) + 127), 8));
			to_convert_Multiplier(22 downto 0) <= std_logic_vector(to_unsigned(integer(((abs(dec_Multiplier)/(2.0**integer(exponent(dec_Multiplier)))) - 1.0)*(2.0**23)), 23));
		end if;
		


      -- pass the converted value to the dummy module:
		wait for 1*clk_period;
		Multiplicand <= to_convert_Multiplicand;
		Multiplier <= to_convert_Multiplier;
		wait for 1 * clk_period;

      -- Conversion from IEEE 754 to real
      t_Result <= Result;
		wait for clk_period;
		
		if(t_Result(30 downto 23) = x"FF") then
			if(t_Result(22 downto 0) = ("000" & x"00000")) then
				--if infinity:
				if(t_Result(31) = '1') then
					converted <= neg_inf;
				else
					converted <= pos_inf;
				end if;
			else
				-- This represents the "Not a Number" representation
				converted <= (2.0)**(130);
			end if;
		elsif(t_Result(30 downto 23)= x"00") then
		-- if format is for denormal nr.:                 
			converted <=((-1.0)**(to_integer(unsigned(t_Result(31 downto 31))))) * ((2.0)**(-149)) * real(to_integer( unsigned( t_Result( 22 downto 0)))) ;
		else
	   -- if format is for normal nr.:
			converted <=((-1.0)**(to_integer(unsigned(t_Result(31 downto 31))))) * ((2.0)**(to_integer(unsigned(t_Result(30 downto 23)))-127)) * ((real(to_integer( unsigned( t_Result( 22 downto 0)))) * ((2.0)**(-23)))+1.0) ;
		end if;
      wait for clk_period;
      
     --Changing the stimulus 
	  case cnt is
			when 1 =>  
				dec_Multiplicand <= -1.275;
				dec_Multiplier <= 2.22;
			-- values near normalised range border:
			when 2 =>  
				dec_Multiplicand <= 0.1;
				dec_Multiplier <= -1.0;
			when 3 =>  
				dec_Multiplicand <= 8.0;
				dec_Multiplier <= 3.0;
            -- other cases:
			when 4 =>  
				dec_Multiplicand <= 0.1;
				dec_Multiplier <= 0.1;
			when 5 =>  
				dec_Multiplicand <= -0.1;
				dec_Multiplier <= -0.1;
            -- zero:
			when 6 =>  
				dec_Multiplicand <= 0.0;
				dec_Multiplier <= 2.0;
			-- denormalized nr:
			-- when 7 =>  dec_Multiplicand<= -0.17 * ((2.0)**(-126));
			-- when 8 =>  dec_Multiplicand<= 0.17 * ((2.0)**(-126)); 
            -- when 9 =>  dec_Multiplicand<= (2.0)**(-149); --upper limit
			-- when 10 =>  dec_Multiplicand<= -((2.0)**(-149)); -- lower limit
            -- -- other random nr.
			-- when 11 =>  dec_Multiplicand<= 31.31;
			-- when 12 =>  dec_Multiplicand<= -64.2558;
			-- when 13 =>  dec_Multiplicand<= 128.0;
            -- -- signaling NaN
            -- when 14 =>  dec_Multiplicand<= NaN;
			-- -- values for both infinities for number which abs(nr) > 2**128 :
            -- when 15 =>  dec_Multiplicand<= 1.1 * (2.0**128);
            -- when 16 =>  dec_Multiplicand<= -1.1 * (2.0**128);
			-- -- negative zero:
			-- when 17 =>  dec_Multiplicand<= neg_zero;
		    when others => wait;
		end case ;
  
		cnt<=cnt+1;
    
   end process;


END;

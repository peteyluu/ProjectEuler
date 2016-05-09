=begin
2520 is the smallest number that can be divided by each of the numbers
from 1 to 10 without any remainder.	

What is the smallest positive number that is evenly divisible by all of
the numbers from 1 to 20?
=end

def smallest_mult(num1, num2)
	while (!no_remainder(num2))
		num2 += 10
	end
	num2
end

def no_remainder(n)
	i = 1
	while i <= 10
		if n % i != 0
			return false
		end
		i += 1
	end
	true
end			

p smallest_mult(1, 10) # == 2520
#p smallest_mult(1, 20) # == 232792560
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def largest_prime(num)
	result = []
	i = 2
	while i <= num
		if is_prime?(i)
			if num % i == 0      # Check for whole number if % by i 
				num = num / i    # Update the num
				result << i      # Add i to the array
				i = 2            # Reset i to 2	
			end	
		end
		i += 1	
	end
	result
end

def is_prime?(num)
	i = 2            # Re-call that only numbers greater than 1 can be prime
	while i < num
		if num % i == 0
			return false
		end
		i += 1
	end
	true		
end			

p largest_prime(13195)
p largest_prime(600851475143)
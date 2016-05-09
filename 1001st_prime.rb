=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
we can see that the 6th prime is 13.

What is the 10001st prime number?
=end

def nth_prime(num)
	result = []
	i = 2
	count = 0
	while count < num
		if is_prime?(i)
			count += 1
			result << i
		end
		i += 1
	end
	result.last
end

def is_prime?(n)
	i = 2
	while i < n
		if n % i == 0
			return false
		end
		i += 1
	end
	true
end

#nth_prime(6)
#nth_prime(10000)
nth_prime(10001)

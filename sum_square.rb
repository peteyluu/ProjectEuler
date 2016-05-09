=begin
The sum of the squares of the first ten natural numbers is,
	1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,
	(1 + 2 + ... + 10)^2 = 55^2 = 3025
Hence the difference b/w the sum of squares and the square of the sum is,
	3025 - 385 = 2640.
Find the difference between sum of squares of the first 100 natural numbers,
and the square of the sum.
	~ 1^2 + 2^2 + ... + 100^2 = ?
	~ (1 + 2 + ... + 100)^2 = ?
=end

def sum_of_squares(num1, num2)
	sum_sq = []
	sq_sum = []
	i = num1
	while i <= num2
		sum_sq << i * i
		sq_sum << i
		i += 1
	end
	sum1 = 0
	sum_sq.each do |digit|
		sum1 += digit
	end	
	sum2 = 0
	sq_sum.each do |digit|
		sum2 += digit
	end
	sum2 = sum2 * sum2

	diff = 0
	diff = sum2 - sum1
	puts diff
end

#sum_of_squares(1, 10)
sum_of_squares(1, 100)
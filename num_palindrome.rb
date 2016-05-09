=begin 
A palindromic number reads the same both ways.
The largest palindrome made from the product of
two 2-digit numbers is 9009 = 91 * 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

def palindromic(num1, num2)
	largest_palindrome = 0
	i = num1
	while i <= num2
		j = i
		while j <= num2
			product = i * j
			if is_palindrome?(product)
				if largest_palindrome < product
					largest_palindrome = product
				end
			end
			j += 1
		end	
		i += 1
	end
	puts largest_palindrome			
end

def is_palindrome?(product)
	product_s = product.to_s
	i = 0
	while i < product_s.length
		if product_s[i] != product_s[(product_s.length - 1) - i]
			return false
		end
		i += 1
	end
	true
end			

#palindromic(90, 99)# == 9009
palindromic(900, 999)# == 906609

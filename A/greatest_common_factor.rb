def greatest_common_factor(number1, number2)
	answer = 0
	if number1 > number2
		r = number1
	else
		r = number2
	end
	
	while r > 0  
		if (number1 % r == 0) && (number2 % r == 0) 
			return r 
		end
		r -= 1
	end

end

puts "This logic will find the greatest common factor between two numbers"
puts "Enter first number:"
a = Integer(gets)
puts "Enter second number:"
b = Integer(gets)

p greatest_common_factor(a, b)

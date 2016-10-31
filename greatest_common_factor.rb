# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
	answer = 0
	if number1 > number2
		r = number1
	else
		r = number2
	end
	
	while r > 0  
		if (number1 % r == 0) && (number2 % r == 0) 
			puts "found at #{r}"
			return r 
		end
		r -= 1
	end
	

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #greatest_commmon_factor")
puts("===============================================")
    puts(
      'greatest_common_factor(3, 9) == 3: ' +
      (greatest_common_factor(3, 9) == 3).to_s
    )
    puts(
      'greatest_common_factor(16, 24) == 8: ' +
      (greatest_common_factor(16, 24) == 8).to_s
    )
    puts(
      'greatest_common_factor(3, 5) == 1: ' +
      (greatest_common_factor(3, 5) == 1).to_s
    )
puts("===============================================")
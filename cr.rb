# Write a method crazy_nums that takes a number, max, and 
# returns an array of the integers that
def crazy_nums(max)
	answer = []
less_than_max = []
div_by_3_or_5 = []

max.times {|idx| less_than_max << max - idx }

less_than_max.each do 
	|num|
	 	if ( num % 3 == 0 && num % 5 == 0 )
	 		less_than_max.delete(num)
	 	elsif ( num % 3 == 0 ) || (num % 5 == 0)
	 		answer << num 
		end
	end
	answer.delete(max)
p answer.sort
end
# ARE less than max
# AND ARE divisible by either three or five
# BUT ARE NOT divisible by _both_ three and five
# You should return the result in increasing order.

# You may wish to use the modulo operation: 5 % 2 returns the remainder when dividing 5 by 2: 1. If num is divisible by i, then num % i == 0.

p crazy_nums(3) == []
p crazy_nums(10) == [3, 5, 6, 9]
p crazy_nums(20) == [3, 5, 6, 9, 10, 12, 18]
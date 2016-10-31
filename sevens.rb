def lucky_sevens?(numbers)
	i = (numbers.length - 1)
	answer = false
	while i >= 2
		if numbers[i] + numbers[i-1] + numbers[i - 2] == 7
			answer = true
		end
	i -= 1
	end
	answer
end

def oddball_sum(numbers)
# take in an array and then give back the sum of odd.
idx = 0
answer = 0
while idx <= numbers.length-1
	if numbers[idx].odd?
		answer = answer + numbers[idx]
	end
	idx +=1
end
answer
end

def disemvowel(string)
vowels = ['a', 'e', 'i', 'o', 'u']
idx = (string.length - 1) 
while idx>=0 
	if vowels.include?(string[idx])
		string.delete!(string[idx])
	end
	idx -= 1
end
string
end

p disemvowel("foobar")# == "fbr"
p disemvowel("ruby") #== "rby"
p disemvowel("aeiou")# == "
 
#  lucky_sevens?([2,1,5,1,0])
#  lucky_sevens?([0,-2,1,8])
#  lucky_sevens?([7,7,7,7]) 
#  lucky_sevens?([3,4,3,4])

# p oddball_sum([1,2,3,4,5])# == 9 # => 1 + 3 + 5 == 9
# p oddball_sum([0,6,4,4])# == 0
# p oddball_sum([1,2,1])# == 2
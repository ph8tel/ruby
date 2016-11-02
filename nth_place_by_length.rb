def nth_greatest(n, nums)
	answer = []
	nums.each do 
		|number|
		answer[number] = number
	end
	answer.delete(nil)
	return answer[(-1 * n)]
end


puts "This program returns the n'th value from a given array"
puts "example:"
puts "the second value of the array [2, 3, 7, 53, 543, 12345, 3345221, 235, 3]"
puts "would return:"
puts "543" 
puts "the array above will be used."
puts "enter n:"
n = Integer(gets)
p nth_greatest(n, [2, 3, 7, 53, 543, 12345, 3345221, 235, 3])
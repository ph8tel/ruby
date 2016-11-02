# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#


def most_common_letter(string)
	data = Hash.new

	idx = 0 
		while idx < string.length
		data[string[idx]] = string.count(string[idx])
		idx += 1 
	end

	r = 0
	solution = []

	data.each do
		|letter, count|
	      if count > r
	      	r = count
	      	solution[0] = letter
	      	solution[1] = count
	      end
    end
 solution

end
# or 
def most_common_letter(string)
	answer = [0, 0]
	ary = string.split('')
	ary.each do
		|letter|
		difference = string.length - string.delete(letter).length 
		if difference > answer[1]
			answer[0] = letter
			answer[1] = difference
		end
	end
answer
end

puts "This program checks a string for the most common letter"
puts "Please enter the string:"
string = gets.chomp
puts "The most common letter in the string:"
puts "#{string} is:"
puts "#{most_common_letter(string)[0]} that appears #{most_common_letter(string)[1]} times"
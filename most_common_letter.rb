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

# These are tests to check that  code is working.

puts("\nTests for #most_common_letter")
puts("===============================================")
    puts(
      'most_common_letter("abca") == ["a", 2]: ' +
      (most_common_letter('abca') == ['a', 2]).to_s
    )
    puts(
      'most_common_letter("abbab") == ["b", 3]: ' +
      (most_common_letter('abbab') == ['b', 3]).to_s
    )
puts("===============================================")
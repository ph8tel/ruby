# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
	ary = sentence.split(' ')
	longest = ''
	ary.map do
		|word|
		if word.length > longest.length
			longest = word
		end
	end

longest	
end


# def longest_word(sentence)
# 	r = 0
# 	ary = sentence.split(' ')
# 	i  = ary.length - 1 
# 	while i > 0 
# 		if 	ary[i].length > ary[i-1].length
		 
# 			r = i
# 		elsif ary[i].length < ary[i-1].length
# 			r = i - 1
# 		end
# 		i -= 1
# 	end
	
# 	answer = ary[r]
	
# 	p answer
# end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #longest_word")
puts("===============================================")
    puts(
      'longest_word("short longest") == "longest": ' +
      (longest_word('short longest') == 'longest').to_s
    )
    puts(
      'longest_word("one") == "one": ' +
      (longest_word('one') == 'one').to_s
    )
    puts(
      'longest_word("abc def abcde") == "abcde": ' +
      (longest_word('abc def abcde') == 'abcde').to_s
    )
puts("===============================================")
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

puts "This logic takes in a String and returns the longest word in it"
puts "Please provide the String to be tested:"
sentence = gets.chomp
p longest_word(sentence)

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


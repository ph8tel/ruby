def palindrome?(string)
answer = false

#Using .times to iterate through the word. 
string.length.times do 
	|idx| 
	if string[idx-1] == string[(-1 * idx)]
		answer = true 
	end
end
	answer
end

puts "Enter word for palindrome check:"
string = gets.chomp
p palindrome?(string)
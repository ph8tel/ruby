def reverse(string)
	answer = String.new
	i = string.length - 1
	while i >= 0 
	answer = answer + string[i]
	i -= 1 
end

answer
end

puts "This logic is just my version of the .reverse method"
puts "Please enter a string to reverse:"
str = gets.chomp
p reverse(str)
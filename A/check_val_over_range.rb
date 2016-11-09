def nearby_az(string)
answer = false
	(string.length - 1).times do 
		|idx|
		if string[idx] == 'a'
			if string[idx, 4].include?('z')
				answer= true
			end
		end

	end
answer
end

puts "Please enter a string: "
string = gets.chomp

puts "if the letter z appears within 3 places of an a: #{nearby_az(string)}"

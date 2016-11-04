def num_repeats(string)
ary = string.split('')
reps = []

ary.each do
	|letter|
	if ( string.delete(letter).length < ( string.length - 1 )  && !reps.include?(letter) )
		reps << letter 
	end
end

answer = reps.length		
end


# def num_repeats(string)
# ary = string.split('')
# reps = []
# ary.each do
# 	|letter|
# 	string[string.index(letter)] = '~'
# 	ary = string.split('')
# 	if ary.include?(letter)
# 		if !reps.include?(letter)
# 			reps << letter
# 		end
# 	end
# 	string.gsub!('~', letter)
	
# end
# answer = reps.length
		
# end


# def num_repeats(string)
# 	ary = []
# 	count = 0
# 	idx =  string.length - 1 
# 	while idx >= 0 
# 	  check = string[idx]
# 	  puts "before #{string}"
# 	  puts "checking #{check}"
# 	  string[idx] = '!'
# 	  puts "after #{string}"
# 	  	if ary.include?(check) 
# 	  		puts "already checked"
# 	  	elsif string.include?(check)
# 	  		puts " true"
# 	  		ary.push(check)
# 	  		count += 1
# 	  	else
# 	  		puts "false"
# 	  	end
# 	  	string[idx] = check
# 	  idx -= 1 
# 	 end
# 	 p count 
		
# end



# def num_repeats(string)
# 	ary = string.split('')
# 	count = 0
# 	ary.each do 
# 		|letter|
# 		puts "testing #{letter}"
# 		puts "#{string[string.index(letter)]} turned to ~"
	
# 			string[string.index(letter)] = nil
# 				puts "string is now #{string}"
# 			ary = string.split('')
# 			if ary.include?(letter)
# 				puts "found it"
# 				count += 1
# 			end
# 			string.gsub!(nil, letter)
# 		end
# p count
# end

puts "\nTests for how many letters that repeat in a string"
puts "Please enter the string to check: "
string = gets.chomp

p num_repeats(string)

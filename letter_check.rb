# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
	ary = []
	count = 0
	idx =  string.length - 1 
	while idx >= 0 
	  check = string[idx]
	  puts "before #{string}"
	  puts "checking #{check}"
	  string[idx] = '!'
	  puts "after #{string}"
	  	if ary.include?(check) 
	  		puts "already checked"
	  	elsif string.include?(check)
	  		puts " true"
	  		ary.push(check)
	  		count += 1
	  	else
	  		puts "false"
	  	end
	  	string[idx] = check
	  idx -= 1 
	 end
	 p count 
		
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts("\nTests for #num_repeats")
puts("===============================================")
    puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
    # one character is repeated
    puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
    puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
    puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
    puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
puts("===============================================")

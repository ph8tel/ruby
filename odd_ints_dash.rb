# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
	output = num.to_s.split('')
	idx = 0 
	while idx < output.length 
		if (idx == 0) && (output[idx].to_i.odd?)
			output[idx] = output[idx] + '-'
		elsif (idx == (output.length - 1)) && (output[idx].to_i.odd?)
			output[idx] = '-' + output[idx]
		elsif (output[idx].to_i.odd?) 
			output[idx] = '-' + output[idx] + "-"

		end
		idx += 1
	end
	answer = output.join
	answer.gsub!('--', '-')

	p answer
end
# new note
# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts "joe test #{dasherize_number(8762348273648123761823764)}"
puts("\nTests for #dasherize_number")
puts("===============================================")
    puts(
      'dasherize_number(203) == "20-3": ' +
      (dasherize_number(203) == '20-3').to_s
    )
    puts(
      'dasherize_number(303) == "3-0-3": ' +
      (dasherize_number(303) == '3-0-3').to_s
    )
    puts(
      'dasherize_number(333) == "3-3-3": ' +
      (dasherize_number(333) == '3-3-3').to_s
    )
    puts(
      'dasherize_number(3223) == "3-22-3": ' +
      (dasherize_number(3223) == '3-22-3').to_s
    )
puts("===============================================")
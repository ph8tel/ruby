def reverse(string)
	answer = String.new 
  string.length.times {|idx| idx == 0 ?	answer = answer + string[-1] : answer = answer + string[(idx * -1) - 1] }
answer
end

puts "This logic is just my version of the .reverse method"
puts "Please enter a string to reverse:"
str = gets.chomp
p reverse(str)

#or
# def reverse(string)
#   answer = String.new
#   string.length.times {|idx| idx == 0 ? answer = answer + string[-1] : answer = answer + string[(idx * -1) - 1] }
# answer
# end
#or
# def reverse(string)
#   answer = String.new
#   i = string.length - 1
#   while i >= 0 
#   answer = answer + string[i]
#   i -= 1 
# end
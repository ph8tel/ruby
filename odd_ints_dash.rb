
## keep at it
def dasherize_number(num)
  output = num.to_s.split('')
  
  output.length.times do |idx|
puts "#{idx} is"
  case idx
when (idx == 0) && (output[idx].to_i.odd?) then output[idx] = output[idx] + '-'
when (idx == (output.length - 1)) && (output[idx].to_i.odd?) then output[idx] = '-' + output[idx]
when output[idx].to_i.odd? then output[idx] = '-' + output[idx] + "-"
	end
end	
	p output
output.join.gsub!('--', '-')
end


puts "This logic places dashes around odd numbers"
puts "Please enter a number to test: "
num = Integer(gets) rescue false
while !num 
  puts "Please try again, with a NUMBER"
  num = Integer(gets) rescue false
end

p dasherize_number(num)

# def dasherize_number(num)
#   output = num.to_s.split('')
#   idx = 0 
#   while idx < output.length 
#     if (idx == 0) && (output[idx].to_i.odd?)
#       output[idx] = output[idx] + '-'
#     elsif (idx == (output.length - 1)) && (output[idx].to_i.odd?)
#       output[idx] = '-' + output[idx]
#     elsif (output[idx].to_i.odd?) 
#       output[idx] = '-' + output[idx] + "-"

#     end
#     idx += 1
#   end
#   answer = output.join
#   answer.gsub!('--', '-')

# answer
# end
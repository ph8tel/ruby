def is_power_of?(power, num)
	r = []
	answer = false
	num.times {|x| r << power**x}
	if r.include?(num)
		answer = true
	end
answer
end

puts "Number to check:"
num = Integer(gets)
puts "Check to see if #{num} is a power of:"
power = Integer(gets)
p is_power_of?(power, num)
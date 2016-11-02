def time_conversion(minutes)
	hours = minutes / 60 
	mins = minutes % 60
	if mins == 0
		mins = '00'
	end
answer = "#{hours}:#{mins}"
end

puts "Please enter number of minutes:"
minutes = Integer(gets)
p time_conversion(minutes)
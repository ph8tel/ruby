# github.com/ph8tel

def bubble_sort(arr)
	 done = false
  while !done
    done = true
    (arr.length - 1).times do |idx|
      if  arr[idx + 1] < arr[idx]
        arr[idx + 1], arr[idx] = arr[idx], arr[idx + 1] 
        done = false
      end
    end
  end
arr
end

p bubble_sort([5,4,3,2,1])

	
#--------------------------
#	arr.each do |x|
# 		arr.length.times do |idx|
# 			if x > arr[idx]
# 				puts "found #{arr[idx]} > #{arr[idx+1]}"
# 				puts "changing #{arr} to"
# 				arr[idx], arr[arr.index(x)]  = arr[arr.index(x)], arr[idx]
# 				puts " arr #{arr}"
# 			end
# 		end
# 	end
# puts "arr is #{arr}"
#-------------------------

	# arr.each do |num|
	# 	idx = arr.length - 1
	# 	puts "first off arr.length is #{arr.length} so I need #{arr.length - 1}"
		
	# 	puts "idx begin is #{idx}"
	# 	while idx >= 0
	# 		puts "num is #{num} and arr[idx] is #{arr[idx]}"
	# 		if num < arr[idx]
	# 			puts "#{num} less than #{arr[idx]} so:"
	# 			num = arr.first
	# 			puts "#{arr} is now array in the loop"
	# 		else
	# 			puts "skippered"
	# 		end
	# 	idx -= 1
	# 	end 
	# end
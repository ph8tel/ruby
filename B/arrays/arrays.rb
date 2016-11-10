
#Write a method that mimics .uniq
def my_uniq(arr)
ret = Array.new
	arr.each {|arr_item| ret << arr_item if !ret.include?(arr_item)}
	p ret
end
#my_uniq([1, 2, 1, 3, 3]) == [1, 2, 3]

#Write a method that finds if an array of numbers has a pair 
#that sums to zero. Be careful of the case
 #of zero; there need to be two zeroes in the array 
 #to make a pair that sums to zero.
def zero_sum(arr)
	r = false
 if arr.select {|x| x == 0 }.length > 1
 	puts "caught 00S"
 	return true
 end
	arr.each do |num|
		if num != 0
       b = arr.select {|x| x != num }
      		b.each { |y| r = true if (num + y) == 0 }
  	end
	end
r 
end

#p zero_sum([1, 2, 1, 3, 3])
p zero_sum([1, 2, 1, 3, 3, -1])
#p zero_sum([1, 2, 1, 3, 3, 0, 0])

#ar2 = arr

# 		arr.each do |num|
# 			puts "num is #{num} arr before and after to follow"
# 			p arr
# 			ar2.delete_at(0)
# 			p ar2
# 			 ar2.each do |x| 
# 				puts "matching #{num} + #{x} = #{num + x }"

# 	   if  (num + x) == 0 
# 				puts "zero #{num} 	+ #{x}"
# 				r = true
# 			else
# 				puts "no" 
# 			end
# 		end
# 		end

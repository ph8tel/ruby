
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
#p zero_sum([1, 2, 1, 3, 3, -1]) == true

# Keep three arrays, which represents the piles of discs.
# Pick a representation of the discs to store in the arrays;
#  maybe just a number representing their size.
# In a loop, prompt the user (using gets) and ask what pile 
# to select a disc from, and where to put it.
# After each move, check to see if they have succeeded in moving
#  all the discs, to the final pile. If so, they win!
def towers
	a = [4,3,2,1]
	b = []
	c = []
	until b.length == 4 || c.length == 4
		puts "Current: A:#{a} B:#{b} C:#{c}"
		puts "move from:"
		orig = gets.chomp
			case orig
			when 'a' 
				oVal =  !a[-1] ? 7000 : a[-1]
			when 'b' then oVal = b[-1]
				oVal =  !b[-1] ? 7000 : b[-1]
			when 'c' 
				oVal =  !c[-1] ? 7000 : c[-1]
			end
		puts "move to:"
		des = gets.chomp
			case des
			when 'a' then dVal = a[-1]
			 dVal = !a[-1] ? 7 : b[-1]
			when 'b' 
			 dVal = !b[-1] ? 7 : b[-1]
			when 'c' 
			 dVal = !c[-1] ? 7 : b[-1]
			
			end
		
			if  oVal > dVal
				puts "Illegal move"
		elsif des == 'a' && orig == 'b' 
			a << b.pop
		elsif des == 'a' && orig == 'c'
			a << c.pop
		elsif des == 'b' && orig == 'a' 
			b << a.pop
		elsif des == 'b' && orig == 'c'
			b << c.pop
		elsif des == 'c' && orig == 'a'
			c << a.pop
		elsif des == 'c' && orig == 'b'
			c << b.pop
		end
	end
	
end	
towers
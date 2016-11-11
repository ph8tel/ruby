
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
# or each move, check to see if they have succeeded in moving
#  all the discs, to the final pile. If so, they win!
def towers_oVal(orig, a, b, c)
	case orig
		when 'a' then	oVal =   a[-1]
		when 'b' then	oVal =   b[-1]
		when 'c' then	oVal =   c[-1]
		else
			return "error"
	end
oVal
end
def towers_dVal(des, a, b, c)

dVal = 0
	case des
		when 'a' then dVal = a[-1]
		when 'b' then dVal = b[-1]
		when 'c' then dVal = c[-1]
		else
			return "error"
	end
	dVal = 10 if !dVal
dVal
end

def towers_display(a, b, c, goal)
	# p a[0]
	# a.sort! {|x, y| y <=> x}
	# b.sort! {|x, y| y <=> x}
	# c.sort! {|x, y| y <=> x}
	# p a[0]
idx = goal - 1
while idx >= 0
	
     puts "#{ !a[idx] ? '|' : a[idx] } #{ !b[idx] ? '|' : b[idx] } #{ !c[idx] ? '|' : c[idx ]}" 
		idx -= 1
		end
puts "A B C"
end

def towers
puts "This is the Hanoi Towers game"
puts "Move the complete stack to another tower."
puts "The number moved can not be more than the "
puts "value it is placed on."
puts ""
puts "How difficult? 1 - ??"
goal = Integer(gets) rescue false
puts "fail" if !goal

a = (1..goal).to_a.sort {|x, y| y <=>x} 
b = Array.new
c = Array.new

	until b[goal - 1] || c[goal - 1]
		towers_display(a, b, c, goal)
puts " #{a} #{b} #{c}"
		puts "move from (a-c):"
		orig = gets.chomp
		oVal = towers_oVal(orig.downcase, a, b, c)
p oVal
		puts "move to (a-c):"
		des = gets.chomp
		dVal= towers_dVal(des.downcase, a, b, c)
p dVal
		if dVal == 'error' || oVal == 'error'
			puts "Invalid input"
		elsif  oVal < dVal
				if des == 'a' && orig == 'b' 
					a << b.pop
				elsif des == 'a' && orig == 'c'
					a << c.pop
				elsif des == 'b' && orig == 'a' 
					b << a.pop
				elsif des == 'b' && orig == 'c'
					b  << c.pop
				elsif des == 'c' && orig == 'a'
					c << a.pop
				elsif des == 'c' && orig == 'b'
					c << b.pop
				end
			else
				puts "Illegal move."
			end
	end
	towers_display(a, b, c, goal)

	puts "You won! bye"

end	

towers
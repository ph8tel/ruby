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
# 		oVal = towers_oVal(orig.downcase, a, b, c)
# p oVal
		puts "move to (a-c):"
		des = gets.chomp
# 		dVal= towers_dVal(des.downcase, a, b, c)
# p dVal
		# if dVal == 'error' || oVal == 'error'
		# 	puts "Invalid input"
		# els
		if  oVal < dVal
			case des
				when 'a' && orig == 'b'
					a << b.pop if a.last > b.last
				when 'a' && orig == 'c' 
					a << c.pop if a.last > c.last
				when 'b' && orig == 'a'
				  b << a.pop if b.last > a.last
				when 'b' && orig == 'c' 
					b << c.pop if b.last > c.last
				when 'c' && orig == 'a' 
					c << a.pop if c.last > a.last
				when 'c' && orig == 'b' then c << b.pop
				else
					puts "Bad input"
			end
		end
	end
towers_display(a, b, c, goal)
puts "You won! bye"
end	

towers
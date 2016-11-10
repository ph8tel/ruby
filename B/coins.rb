# github.com/ph8tel

# The method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.

def wonky_coins(num)
a = diver(num)
puts "a first is #{a}"

a.each {|x| a << diver(x)}
p a
 
end

def diver(int)
	arr = []
3.times do 
	|x|
	#puts "x is #{x}"
	#puts " a is #{a} x + 2 is #{x + 2}"
	 if x != 0
	 arr << ( int / (x + 2) ).to_i

	end
end
puts "returning is #{arr}"
arr
end


def an(arr)
	v = []
if !arr[-3, 3].include?(0)
	arr[-3, 3].each do 
		|num| 
	3.times {|x| v << (num / (x + 2) ).to_i if (num / (x + 2) ).to_i > 0}
	end
	puts "v is #{v}"
end
end
p wonky_coins(6)


# puts "here"
# if a[-1] > 0
# 	a << an(a)
# end
# a.length
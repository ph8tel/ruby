# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5

def wonky_coins(num)
a =[]
3.times do 
	|x|
	puts " a is #{a} x + 2 is #{x + 2}"
	 a << (num / (x + 2) ).to_i
end
puts "a is #{a}"
puts "here"
if a[-1] > 0
	a << an(a)
end
a.length
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
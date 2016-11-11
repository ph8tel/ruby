# github.com/ph8tel
# The method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
# take any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# The method `wonky_coins(n)`  returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.

def ject(ary)
r = [ary]
w = []

r.flatten.each do |y| 
	if y == 0
		w << 0
	else
		3.times {|idx| w << ( y / (idx + 2) )}
	end
end
w
end


def wonky_coins(num)
r = [num]
until r.inject(0) {|total, numb| total + numb} == 0
	r = ject(r).flatten
end
r.length
end

p wonky_coins(5)

# def wonky_coins(num)
# r = []
# r << num
# e = r

# puts "here is e before #{e}"
# p e.class
# e.each  do |num|
# 	if num > 0 
# 		r.inject(e) do 
#  			|out, x|
#  			p out.class
#  			out[0] = (x / 2).to_i
#  			out[1] = (x / 3).to_i
#  			out[2] = (x / 4).to_i
# 	 	end
# 	end
# end
# e
# end


# def wonky_coins(num)
# a = diver(num)
# puts "a first is #{a}"

# a.each {|x| a << diver(x)}
# p a
 
# end

# def diver(int)
# 	arr = []
# 3.times do 
# 	|x|
# 	#puts "x is #{x}"
# 	#puts " a is #{a} x + 2 is #{x + 2}"
# 	 if x != 0
# 	 arr << ( int / (x + 2) ).to_i

# 	end
# end
# puts "returning is #{arr}"
# arr
# end


# def an(arr)
# 	v = []
# if !arr[-3, 3].include?(0)
# 	arr[-3, 3].each do 
# 		|num| 
# 	3.times {|x| v << (num / (x + 2) ).to_i if (num / (x + 2) ).to_i > 0}
# 	end
# 	puts "v is #{v}"
# end
# end
# p wonky_coins(6)


# # puts "here"
# # if a[-1] > 0
# # 	a << an(a)
# # end
# # a.length
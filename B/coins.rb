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

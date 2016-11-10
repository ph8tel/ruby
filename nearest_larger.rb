# github.com/ph8tel

# The function `nearest_larger(arr, i)`  takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:

# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.

# In case of ties  return `nil`.
def nearest_larger(arr, idx)
  diff = 1
  while true
    left = idx - diff
    right = idx + diff

    if (left >= 0) && (arr[left] > arr[idx])
      return left
    elsif (right < arr.length) && (arr[right] > arr[idx])
      return right
    elsif (left < 0) && (right >= arr.length)
      return nil
    end

    diff += 1
  end

end

puts" #{nearest_larger([2,8,4,3], 2)} should be 1"

# arr.each do 
# 	|num|
# # puts "num is #{num} and i is #{arr[i]} "
#  r = arr[i..(arr.index(num))].select {|x| x > arr[i]}
#  puts "r is #{r}"
# # p r.length != 0
# 	if num > arr[i] && r.length != 0
# 		puts "yo"
# 		return arr.index(num)
# 	end
# end
def my_uniq(arr)
ret = Array.new
	arr.each {|arr_item| ret << arr_item if !ret.include?(arr_item)}
	p ret
end

#my_uniq([1, 2, 1, 3, 3])
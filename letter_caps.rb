def scramble_string(string, positions)
new_str = []

idx = 0
while idx <= string.length - 1 
	new_str[positions[idx]] = string[idx]
	idx += 1 
end

answer = new_str.join
answer
end
puts " testing 'abcd' assigned to positions [3, 1, 2, 0]"
p scramble_string("abcd", [3, 1, 2, 0]

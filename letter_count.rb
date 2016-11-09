def letter_count(str)
	r = Hash.new
str.delete(' ').split('').each {|letter| r[letter] == nil ? r[letter] = 1 : r[letter] += 1}
r
end
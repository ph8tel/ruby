# github.com/ph8tel

# `letter_count(str)` takes a string and returns a 
# hash mapping each letter to its frequency. Excluding
# spaces.
#
def letter_count(str)
	r = Hash.new
str.delete(' ').split('').each {|letter| r[letter] == nil ? r[letter] = 1 : r[letter] += 1}
r
end
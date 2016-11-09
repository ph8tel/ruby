# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.

def ordered_vowel_words(str)
	r = Array.new
a = str.split(' ')
a.each {|word| r << word if ordered_vowel_word?(word)}
r.join(' ')
end

def ordered_vowel_word?(word)
a = (word.split('').select { |v| v =~ /[aeiou]/ }) 
# (word.split('').select { |v| v =~ /[aeiou]/ }).sort! ? true : false

a == a.sort
end

p ordered_vowel_words('raeiou aoiurtea eio euo wert slkd')

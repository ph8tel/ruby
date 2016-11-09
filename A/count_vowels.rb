def count_vowels(string)
ary = string.split('')
vowels = ['a', 'e', 'i', 'o', 'u']
answer = 0
	ary.map do
	|letter|
		if vowels.include?(letter)
			answer += 1 
		end
	end

answer
end

puts "Please enter string for vowel count"
string = gets.chomp
puts "vowel count is #{count_vowels(string)}"
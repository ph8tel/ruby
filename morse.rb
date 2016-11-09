# github.com/ph8tel

# The function `morse_encode(str)`  takes in a string (no
# numbers or punctuation) and outputs the morse code for it with
# two spaces between words and one space between letters.
#

def translate(letter)
	morse_dict = {"a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..", "e" => ".", "f" => "..-.", "g" => "--.",	"h" => "....","i" => "..",	"j" => ".---",	"k" => "-.-",	"l" => ".-..","m" => "--",	"n" => "-.",	"o" => "---",	"p" => ".--.",	"q" => "--.-",	"r" => ".-.",	"s" => "...",	"t" => "-",	"u" => "..-",	"v" => "...-",	"w" => ".--",	"x" => "-..-",	"y" => "-.--",	"z" => "--..",	" " => " ",	"1" => ".----",	"2" => "..---",	"3" => "...--",	"4" => "....-",	"5" => ".....",	"6" => "-....",	"7" => "--...",	"8" => "---..",	"9" => "----.",	"0" => "-----"}
	morse_dict[letter]
end

def morse_encode(str)

	a = str.delete(' ').split('')
	p a

	a.map! do
		 |letter| 
		 translate(letter) + " "
		end
		p a
		 r = a.join(' ')
		 e = r[0..-2]
		 p e

end

morse_encode("the cat in the hat")
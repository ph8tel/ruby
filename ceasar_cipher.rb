def caesar_cipher(offset, string)
#this code creates an alphabet of 26 letters a-z
	alphabet = Array.new
	26.times {|idx| alphabet << (idx + 97).chr } 

	string.length.times { |idx| string[idx] = alphabet[ ( alphabet.index(string[idx]) + offset ) % alphabet.length ] }

string
end

def decrypt(offset, string)
#this code creates an alphabet of 26 letters a-z
	alphabet = Array.new
	26.times {|idx| alphabet << (idx + 97).chr } 

	string.length.times {|idx| string[idx] = alphabet[ ( alphabet.index(string[idx]) - offset ) % alphabet.length ] }

string
end
puts "This is an encryption program that shifts the values of letters"
puts "by an indicated amount. So abc entered with 3 produces def."
puts "Enter string to be encrypted"
string = gets.chomp
puts "Enter shift value:"
shift = Integer(gets)

p r = caesar_cipher(shift, string)
puts "decrypted:"
p decrypt(shift,r)

#this on is almost there
# def caesar_cipher(offset, string)
# 	if offset > 26
# 		offset = offset % 26
# 	end

# 	idx = 0
# 	while idx < string.length
# 		if ( string[idx].ord + offset ) > 122
# 			string[idx] = (string[idx].ord + (offset  - 26 ) ).chr
# 		elsif string[idx] == 32
# 			string[idx] = ' '
# 		else	
# 		   string[idx] = (string[idx].ord + offset).chr
# 		end
# 		idx += 1
# 	end

#  string
# end

# def caesar_cipher(offset, string)
# 	idx = (string.length - 1)
# 	while idx >= 0 
# 		if string[idx] == ' '
# 			string[idx] = ' '
# 		elsif string[idx].ord > (122 - offset)
# 			r = (string[idx].ord % 120) + 97
# 			string[idx] = r.chr
# 		else
# 			r = string[idx].ord + offset
# 			string[idx] = r.chr 
# 		end
# 		idx -= 1 
# 	end
# string
# end


def anagram_finder(word, dictionary)
	ag = []
dictionary.each {|x| ag << x if word.split('').sort == x.split('').sort }
ag
end

 p anagram_finder("cat", ["tic", "toc", "tac", "toe"])
def word_unscrambler(word, dictionary)
	ag = []
dictionary.each {|x| ag << x if word.split('').sort == x.split('').sort }
ag
end

 p word_unscrambler("cat", ["tic", "toc", "tac", "toe"])
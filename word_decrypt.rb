# github.com/ph8tel

# The function 'anagram_finder' takes two inputs: a scrambled
# word and a dictionary of real words and outputs all words
# that our scrambled word can unscramble to.

def anagram_finder(word, dictionary)
	ag = []
dictionary.each {|x| ag << x if word.split('').sort == x.split('').sort }
ag
end

# p anagram_finder("cat", ["tic", "toc", "tac", "toe"])
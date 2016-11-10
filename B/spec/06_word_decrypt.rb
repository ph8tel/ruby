# github.com/ph8tel

require 'rspec'
require '../word_decrypt'

# The function 'anagram_finder' takes two inputs: a scrambled
# word and a dictionary of real words and outputs all words
# that our scrambled word can unscramble to.


describe "#anagram_finder" do
  it "handles a simple word" do
    anagram_finder("cat", ["tac"]).should == ["tac"]
  end

  it "does not inappropriately choose a word" do
    anagram_finder("cat", ["tom"]).should == []
  end

  it "handles a simple word from a larger dictionary" do
    anagram_finder("cat", ["tic", "toc", "tac", "toe"])
      .should == ["tac"]
  end

  it "only handles words of the correct length" do
    anagram_finder("cat", ["scatter", "tac", "ca"] ).should == ["tac"]
  end

  it "handles multiple successful cases" do
    anagram_finder("turn", ["numb", "turn", "runt", "nurt"])
      .should == ["turn", "runt", "nurt"]
  end
end

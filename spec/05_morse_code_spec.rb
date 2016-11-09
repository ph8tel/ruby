# github.com/ph8tel

require '../morse'
require 'rspec'

# The function `morse_encode(str)`  takes in a string (no
# numbers or punctuation) and outputs the morse code for it with
# two spaces between words and one space between letters.
#

describe "#morse_encode" do
  it "should do a simple letter" do
    morse_encode("q").should == "--.-"
  end

  it "should handle a small word" do
    morse_encode("cat").should == "-.-. .- -"
  end

  it "should handle a phrase" do
    morse_encode("cat in hat").should == "-.-. .- -  .. -.  .... .- -"
  end
end

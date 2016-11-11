# github.com/ph8tel

require '../no_repeat'
require 'rspec'

#  `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.

describe "#no_repeats" do
  it "should return a no repeat year" do
    no_repeats(1234, 1234).should == [1234]
  end

  it "should not return a repeat year" do
    no_repeats(1123, 1123).should == []
  end

  it "should return only those years that have no repeated digits" do
    no_repeats(1980, 1987).should == [
      1980,
      1982,
      1983,
      1984,
      1985,
      1986,
      1987
    ]
  end
end

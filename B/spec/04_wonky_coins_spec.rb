# github.com/ph8tel

require '../coins'
require 'rspec'

# take any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# The method `wonky_coins(n)`  returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.

describe "#wonky_coins" do
  it "handles a coin of value 1" do
    wonky_coins(1).should == 3
  end

  it "handles a coin of value 5" do
    wonky_coins(5).should == 11
    # 11
    # => [2, 1, 1]
    # => [[1, 0, 0], [0, 0, 0], [0, 0, 0]]
    # => [[[0, 0, 0], 0, 0], [0, 0, 0], [0, 0, 0]]
  end

  it "handles a coin of value 6" do
    wonky_coins(6).should == 15
  end

  it "handles being given the zero coin" do
    wonky_coins(0).should == 1
  end
end

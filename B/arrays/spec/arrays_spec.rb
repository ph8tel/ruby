require '../arrays.rb'
require 'rspec'

describe "#my_uniq" do
  it "removes duplicates from array" do
    my_uniq([1, 2, 1, 3, 3]).should == [1, 2, 3]
  end

end

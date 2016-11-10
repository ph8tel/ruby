require '../arrays.rb'
require 'rspec'

describe "#my_uniq" do
  it "removes duplicates from array" do
    my_uniq([1, 2, 1, 3, 3]).should == [1, 2, 3]
  end

describe "#zero_sum" do
  it "check to see if 2 add up to 0" do
    my_uniq([1, 2, 1, 3, 3]).should == false
  end

describe "#zero_sum" do
  it "check to see if 2 add up to 0" do
    my_uniq([1, 2, 1, 3, -1]).should == true
  end

describe "#zero_sum" do
  it "check to see if 2 add up to 0" do
    my_uniq([1, 2, 1, 3, 0, 0]).should == true
  end


end

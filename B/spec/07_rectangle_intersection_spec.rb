# github.com/ph8tel

require '../area_overlap.rb'
require 'rspec'

# `rec_intersection(rect1, rect2)` and returns the
# intersection of the two rectangles.
# The rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).


describe "#rectangle_intersection" do
  it "handles a simple case" do
    rec_intersection(
      [[0, 0], [2, 1]],
      [[1, 0], [3, 1]]
    ).should == [[1, 0], [2, 1]]
  end

  it "returns the smaller rectangle if engulfed completely" do
    rec_intersection(
      [[1, 1], [2, 2]],
      [[0, 0], [5, 5]]
    ).should == [[1, 1], [2, 2]]
  end

  it "returns nil if there is no intersection" do
    rec_intersection(
      [[1, 1], [2, 2]],
      [[4, 4], [5, 5]]
    ).should == nil
  end

  it "handles a more complex case" do
    rec_intersection(
      [[1, 1], [5, 4]],
      [[2, 2], [3, 5]]
    ).should == [[2, 2], [3, 4]]
  end

end

include RSpec

require_relative 'quick_sort'

describe "#quick_sort method" do
  it "sorts an array of strings properly" do
   result = quick_sort(["C","A","B","D","E","F","G"])
   expect(result).to eq(["A", "B", "C", "D", "E", "F", "G"])
  end

  it "sorts an array of integers properly" do
    result = quick_sort([1,2,0,4,5,6,8,9])
    expect(result).to eq([0, 1, 2, 4, 5, 6, 8, 9])
  end

  it "handles negative values properly" do
    result = quick_sort([0,-1,2,3,4,5,-3])
    expect(result).to eq([-3, -1, 0, 2, 3, 4, 5])
  end

  it "returns collection if length is <= 1" do
   result = quick_sort(["A"])
   expect(result).to eq(["A"])
  end

end

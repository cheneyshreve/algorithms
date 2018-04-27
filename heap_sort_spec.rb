include RSpec

require_relative 'heap_sort'

describe "#heap_sort method" do

  it "sorts an array of integers properly" do
    result = heap_sort([10,20,30,50,90,80,70,60,40])
    expect(result).to eq([10, 20, 30, 40, 50, 60, 70, 80, 90])
  end

  it "sorts an array of integers with duplicates properly" do
    result = heap_sort([0,3,8,20,7,19,55,10001,3,17])
    expect(result).to eq([0, 3, 3, 7, 8, 17, 19, 20, 55, 10001])
  end

  it "handles negative values properly" do
    result = heap_sort([-1,20,30,-5,90,80,70,60,40])
    expect(result).to eq([-5, -1, 20, 30, 40, 60, 70, 80, 90])
  end

end

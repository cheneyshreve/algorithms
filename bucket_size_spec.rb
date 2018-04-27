include RSpec

require_relative 'bucket_sort'
require_relative 'sorting/insertion_sort'

describe "#bucket_sort method" do

  it "sorts an array of integers properly" do
    result = bucket_sort([1,2,0,4,5,6,8,9])
    expect(result).to eq([0, 1, 2, 4, 5, 6, 8, 9])
  end

  it "handles negative values properly" do
    result = bucket_sort([0,-1,2,3,4,5,-3])
    expect(result).to eq([-3, -1, 0, 2, 3, 4, 5])
  end

 it "returns nil for an empty array" do
   result = bucket_sort([], 3)
   expect(result).to be_nil
 end

end

include RSpec

require_relative 'binary_search_recursive'

describe "binary_search_recursive" do
  it "correctly returns value when item is at end of index" do
    result = binary_search_recursive([0,1,2,3,4],4,0,5)
    expect(result).to eq 4
  end

  it "correctly returns value at first position in array" do
    result = binary_search_recursive(["a","b","c"],"a",0,2)
    expect(result).to eq 0
  end

  it "gracefully handles invalid input" do
    result = binary_search_recursive([0,1,2,3,4],9,0,5)
    expect(result).to eq "Value not found."
  end
end

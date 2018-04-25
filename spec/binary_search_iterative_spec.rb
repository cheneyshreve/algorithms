include RSpec

require_relative 'binary_search_iterative'

describe "binary_search_iterative" do
  it "correctly returns value when item is at end of index" do
    result = binary_search_iterative(["a","b","c","d","e","f","g"], "g")
    expect(result).to eq 6
  end

  it "correctly returns value at first position in array" do
    result = binary_search_iterative(["a","b","c","d","e","f","g"], "a")
    expect(result).to eq 0
  end

  it "gracefully handles invalid input" do
    result = binary_search_iterative(["a","b","c","d","e","f","g"], "z")
    expect(result).to eq "Value not found."
  end
end

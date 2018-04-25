include RSpec

require_relative 'iterative_fibonnaci'

describe "iterative_fibonnaci" do

  it "calculates the fibonnaci number" do
   result = iterative_fib(0)
   expect(result).to eq 0
  end

  it "calculates the fibonnaci number" do
   result = iterative_fib(9)
   expect(result).to eq 34
  end

  it "gracefull handles invalid input" do
   result = iterative_fib(-5)
   expect(result).to be_nil
  end

end

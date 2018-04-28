include RSpec
require_relative 'improving_complexity_version_one'
require_relative 'improving_complexity_version_two'


describe "tests for improving complexity part one" do
  describe "#poorly_written_ruby" do
    it "sorts multiple input arrays and returns a single, sorted array" do
     result =  poorly_written_ruby([0,2,4],[4,8,9])
     expect(result).to eq([0, 2, 4, 4, 8, 9])
    end
  end

  describe "#poorly_written_ruby_opt" do
   it  "sorts multiple input arrays and returns a single, sorted array" do
     result =  poorly_written_ruby_opt([0,2,4],[4,8,9])
     expect(result).to eq([0, 2, 4, 4, 8, 9])
   end

  end
end

describe "tests for improving complexity part two" do
  describe "#quick_sort" do
    it "returns a sorted collection" do
      result = quick_sort([0,4,5,1])
      expect(result).to eq([0,1,4,5])
    end
  end

  describe "#poorly_written_ruby_time_opt" do
    it "returns a sorted array from multiple input arrays" do
      result = poorly_written_ruby_time_opt([0,3,4],[2,1,5])
      expect(result).to eq([0,1,2,3,4,5])
    end
  end
end

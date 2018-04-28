include RSpec
require_relative 'improving_complexity_version_one'


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

include RSpec

require_relative 'tsp_greed'

RSpec.describe Path, type: Class do
  let(:lynwood) { City.new('Lynwood') }
  let(:redmond) { City.new('Redmond') }
  let(:bellevue) { City.new('Bellevue') }
  let(:federal){ City.new('Federal Way') }
  let(:seattle){ City.new('Seattle') }
  let(:tacoma) { City.new('Tacoma')}
  let(:puyallup) { City.new('Puyallup') }
  let(:kent) { City.new('Kent') }
  let(:renton) {City.new('Renton')}
  let(:issaquah){ City.new('Issaquah')}

  before do
    lynwood.neighbors = [Neighbor.new(redmond,27), Neighbor.new(bellevue,40)]
    seattle.neighbors = [Neighbor.new(lynwood,16), Neighbor.new(bellevue,10), Neighbor.new(federal,22)]
    federal.neighbors = [Neighbor.new(seattle,22), Neighbor.new(tacoma,13), Neighbor.new(kent,17), Neighbor.new(puyallup,10)]
    tacoma.neighbors = [Neighbor.new(puyallup,10),Neighbor.new(federal,13)]
    puyallup.neighbors = [Neighbor.new(tacoma,10), Neighbor.new(federal,16), Neighbor.new(kent,17)]
    kent.neighbors = [Neighbor.new(puyallup,17), Neighbor.new(renton,9), Neighbor.new(federal,7)]
    renton.neighbors = [Neighbor.new(kent,9), Neighbor.new(seattle,12), Neighbor.new(bellevue,11), Neighbor.new(issaquah,16)]
    bellevue.neighbors = [Neighbor.new(seattle,10), Neighbor.new(renton,11), Neighbor.new(redmond,8), Neighbor.new(issaquah,12)]
    redmond.neighbors = [Neighbor.new(bellevue,8), Neighbor.new(issaquah,18)]
    issaquah.neighbors = [Neighbor.new(redmond,18), Neighbor.new(renton,16), Neighbor.new(bellevue,12)]
 end

  describe "#path" do
    it "returns the shortest path between 2 cities: test 1" do
      path_to_puyallup = Path.new
      path_to_puyallup.nearest_possible_neighbor([tacoma, federal], puyallup)
      result = path_to_puyallup.path
      expect(result).to eq("The nearest neighbor to Puyallup is Tacoma at 10 miles.")
    end

    it "returns the shortest path between 2 cities: test 2" do
      path_to_kent = Path.new
      path_to_kent.nearest_possible_neighbor([issaquah,redmond, renton], kent)
      result = path_to_kent.path
      expect(result).to eq( "The nearest neighbor to Kent is Renton at 9 miles.")
    end

    it "returns the shortest path between 2 cities: test 3" do
      path_to_tacoma = Path.new
      path_to_tacoma.nearest_possible_neighbor([puyallup, redmond,bellevue], tacoma)
      result = path_to_tacoma.path
      expect(result).to eq("The nearest neighbor to Tacoma is Puyallup at 10 miles.")
    end
  end

end

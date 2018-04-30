
class City
  attr_accessor :name, :neighbors, :visited, :city, :distance

  def initialize(name)
    @name = name
    @neighbors = nil
    @visited = false
  end

  def name
    @name
  end

  def self.neighbors(city,distance)
    @neighbors
  end

  def visited
    @visited
  end

end

class Neighbor
  attr_accessor :city, :distance, :name

  def initialize(city,distance)
    @city = city
    @distance = distance
  end

  def name
    @city.name
  end

  def city
    @city
  end

  def distance
    @distance
  end

end

class Path

  attr_accessor :path

  def initialize
    @path = []
  end

  def nearest_possible_neighbor(graph_of_cities, destination)

    cities = graph_of_cities
    cities.each do |current_city|

    while current_city.visited == false
      neighbor_cities = current_city.neighbors
      if !neighbor_cities.nil?
        next_city = neighbor_cities[0]
        for current_neighbor in neighbor_cities
          if current_neighbor.name == destination.name
            @path.push([current_city.name, current_neighbor.name, current_neighbor.distance])
          end
          if current_neighbor.distance < next_city.distance
            current_neighbor = next_city
          end
        end
      end
      current_city.visited = true
      next_city = current_city
    end
   end
  end

  def path
    if @path.nil?
      return "Sorry, destination not found."
    else

      tmp = [@path.flatten]
      shortest = tmp[0].last

      tmp.each do |route|
         d = route.last
         if d <= shortest
           shortest = d
         end
      end
      tmp.each do |route|
         d = route.last
         if d == shortest
           return "The nearest neighbor to #{route[1]}" +
            " is "+ "#{route[0]} at #{d} miles."
         end
      end
    end
  end
end

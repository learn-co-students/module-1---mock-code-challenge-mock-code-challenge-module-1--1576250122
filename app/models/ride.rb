class Ride

  attr_accessor :driver, :passenger, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance.to_f
    @@all << self
  end

  def self.average_distance
    sum_of_ride = self.all.map {|ride| ride.distance}.sum
    length_of_ride = self.all.map {|ride| ride.distance}.length
    sum_of_ride / length_of_ride
  end

def self.all
  @@all
end

end
class Passenger

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    self.rides.map {|ride| ride.driver}.uniq
  end
  # doesnt require it to be uniq. if you dont want
  # uniq then delete .uniq

  def total_distance
    self.rides.map {|ride| ride.distance}.sum
  end
  
  def distance_for_each_passenger
    self.rides.map {|ride| ride.distance}.sum
  end

  def self.premium_members
  end
  
  def self.all
    @@all
  end

end
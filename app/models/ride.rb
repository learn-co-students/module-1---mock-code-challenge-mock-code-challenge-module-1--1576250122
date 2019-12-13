class Ride
    attr_reader :driver, :passenger
    attr_accessor :distance

    @@all = []

    def initialize (driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance

        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        total_distance = @@all.reduce(0.0) {|memo, ride| memo += ride.distance }
        total_distance / @@all.size
    end

end

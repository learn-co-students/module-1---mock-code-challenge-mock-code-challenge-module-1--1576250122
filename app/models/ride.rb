require_relative "./driver"
require_relative "./passenger"

class Ride
    attr_reader :passenger, :driver, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def self.average_distance
        @@all.inject(0){|sum, ride| sum + ride.distance} / @@all.length
    end
end
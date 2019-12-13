require_relative "./ride"

class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def passenger_names
        self.rides.map{|ride| ride.passenger.name}.uniq
    end

    def rides
        Ride.all.select{|ride| ride.driver == self}
    end

    def self.mileage_cap(distance)
        @@all.filter do |driver|
            driver.rides.inject(0){|sum, ride| sum + ride.distance} > distance
        end
        # @@all.filter{|driver| driver.rides.inject(0){|sum, ride| sum + ride.distance} > distance}
    end
end

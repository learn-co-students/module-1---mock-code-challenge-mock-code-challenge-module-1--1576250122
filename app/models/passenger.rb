class Passenger
    @@all = []

    attr_reader :name, :rides, :total_distance
    attr_writer :total_distance

    def initialize(name)
        @name = name
        @@all << self
        @rides = []
        @total_distance = 0.0
    end

    def new_ride(driver, distance)
        Ride.new(driver, self, distance)
        
    end

    def ride_array(ride)
        @rides << ride
    end

    def drivers
        drivers = @rides.map do |ride|
            ride.driver
        end
    end

    def self.all
        @@all
    end

    def self.premium_members
        premiums = @@all.select do |passenger|
            passenger.total_distance > 100.0
        end
        premiums
    end
end

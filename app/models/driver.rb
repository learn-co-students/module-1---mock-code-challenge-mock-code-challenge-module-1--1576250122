class Driver

    attr_reader :name, :rides, :mileage
    attr_writer :mileage


    def initialize(name)
        @name = name
        @@all << self
        @rides = []
        @mileage = 0.0
    end

    @@all = []

    def new_ride(passenger, distance)
        Ride.new(self, passenger, distance)
    end

    def ride_array(ride)
        @rides << ride
    end

    def passenger_names
        name = @rides.map do |ride|
            ride.passenger.name
        end
        name.uniq
    end

    def self.all
        @@all
    end

    def self.mileage(mileage)
        veterans = @@all.select do |driver|
            driver.mileage > mileage
        end
        veterans
    end
end


# (driver.rides => ride.passenger => passenger.name).uniq
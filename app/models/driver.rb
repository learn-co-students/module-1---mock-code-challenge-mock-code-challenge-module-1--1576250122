class Driver

    attr_reader :name, :passenger_names

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passenger_names
        rides.map {|ride| ride.passenger}.uniq
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        #Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage cap
        
    end

end
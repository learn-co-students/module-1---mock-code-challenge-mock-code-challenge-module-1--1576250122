class Driver
    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name

        @@all << self
    end

    def passenger_names
        rides.map {|ride| ride.passenger.name}.uniq
    end

    def rides
        Ride.all.select{|ride| ride.driver == self}
    end

    def total_mileage 
        rides.reduce(0.0) { |memo, ride| memo += ride.distance } 
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        @@all.select {|driver| driver.total_mileage > distance}
    end

end

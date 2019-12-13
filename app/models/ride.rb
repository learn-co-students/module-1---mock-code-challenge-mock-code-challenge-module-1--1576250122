class Ride
    @@all = []
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
        end        

    def average_distance
        total = 0
        @@rides.each do |ride|
            total =+ ride.distance
            total / ride.distance
    end
end


end


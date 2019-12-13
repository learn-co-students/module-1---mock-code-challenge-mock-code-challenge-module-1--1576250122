class Ride
    
    attr_reader :driver, :passenger, :distance 
    @@all = []
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance 
        @@all << self 
    end

    def Ride.all 
        @@all
    end

    def Ride.average_distance 
        total_distance = 0.0 
        Ride.all.each do |ride|
            total_distance += ride.distance 
        end
        avg_distance = (total_distance / Ride.all.length)
        avg_distance
    end
end

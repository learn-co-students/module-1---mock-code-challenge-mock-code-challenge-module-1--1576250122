class Ride
    attr_accessor :driver, :passenger, :distance

    @@all = [] 

    def initialize (driver, passenger, distance)
        @distance = distance
        @@all << self 
    end 

    def passenger
        @passenger.name 
    end 
    
    def driver
        @driver.name 
    end 

    def distance 
        @distance 
    end

    def self.average_distance
        total = 0 
        @@all.each do |ride|
            total += ride.distance
        end 
        total / @@all.length
    end 
end 

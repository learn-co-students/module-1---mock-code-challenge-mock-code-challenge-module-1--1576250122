class Ride

    attr_reader :driver, :passenger
    attr_accessor :distance
    
    @@all = []
    
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        self.distance = distance.to_f
        
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        miles = 0
        Ride.all.each {|ride| miles += ride.distance} 
        miles / Ride.all.length
    end
    
end

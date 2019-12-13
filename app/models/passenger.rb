
class Passenger

    attr_reader :name
    attr_accessor :rides, :drivers

    @@all = []
    
    def initialize(name)
        @name = name
        
        @@all << self
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        rides.map {|ride| ride.driver}
    end

    def total_distance
        miles = 0
        rides.each {|ride| miles += ride.distance}
        miles
    end
    
    def self.all
        @@all
    end

    def self.premium_members
        #Returns an array of all Passengers who have travelled over 100 miles in total with the service
        Passenger.all.select {|passenger| passenger.total_distance > 100}
    end
end
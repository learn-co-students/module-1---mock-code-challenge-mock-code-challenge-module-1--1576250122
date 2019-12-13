class Ride
    @@all = []
    attr_reader :driver, :passenger, :distance

    def initialize(driver, passenger, distance)
        @driver = driver
        driver.ride_array(self)
        driver.mileage += distance
        @passenger = passenger
        passenger.ride_array(self)
        passenger.total_distance += distance
        @distance = distance
        @@all << self
    end
    def self.average_distance     # Wasn't able to get this one working,
        avg = 0.0                 # didn't have enough time to troubleshoot.
        @@all.reduce do |ride|
            avg += ride.distance
        end 
        avg / @@all.length
    end
end

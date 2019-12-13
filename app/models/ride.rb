class Ride

    attr_reader :driver, :passenger, :distance
    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
     end 

    def self.all
        @@all 
    end 


    def self.average_distance
        running_mileage_total = 0
        self.all.each do |ride|
            running_mileage_total += ride.distance
        end
        running_mileage_total /  self.all.length
    end 

end 
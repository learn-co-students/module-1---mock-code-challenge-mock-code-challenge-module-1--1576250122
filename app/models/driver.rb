class Driver

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def passenger_names
        #still need to get only unique passenger names 
        all_driver_passengers = Ride.all.select do |ride|
            ride.driver == self 
        end 
        final_array = all_driver_passengers.uniq 
        final_array
    end 

    def rides
        Ride.all.select do |ride|
            ride.driver == self
        end 
    end 

    def total_miles_by_driver
        mileage_total = 0 
        Ride.all.each do |ride|
            if ride.driver == self 
                mileage_total += ride.distance
            end 
        end 
        mileage_total
    end 

    def self.mileage_cap(miles)
        ##dont want to just list the individual rides of the driver(s) who have met the cap
        mileage_cap_drivers = []
        #may try using the empty mile_cap_drivers array and .each to add only the driver name (and add once)
        Ride.all.select do |ride|
            ride.driver.total_miles_by_driver > miles
        end 

    end 


end
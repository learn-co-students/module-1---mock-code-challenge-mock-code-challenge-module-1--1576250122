class Passenger
    
    attr_reader :name, :passenger
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def drivers
        my_array = []
        Ride.all.each do |indiv_ride|
            if indiv_ride.passenger == self
                my_array << indiv_ride.driver
            end 
        end 
    end 

    def total_distance
        running_total = 0
        Ride.all.each do |ride|
            if ride.passenger == self 
                running_total += ride.distance 
            end 
        end 
        running_total
    end 

    def total_miles_per_passenger
        mileage_total = 0
        Ride.all.each do |ride|
            if ride.passenger == self 
                mileage_total += ride.distance
            end 
        end 
        mileage_total
    end 

    def self.premium_members 
        #dont want to return the rides of the the passenger(s) that meet the mileage threshold
        premium_members = []
        #maybe use the premium_members array to add the passenger only if they have the mileage
        Ride.all.select do |ride|
             ride.passenger.total_miles_per_passenger > 100
        end 
    end 

end 
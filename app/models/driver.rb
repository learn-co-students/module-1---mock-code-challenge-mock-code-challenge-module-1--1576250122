class Driver
    attr_reader :name, :ride 

    @@all = [] 

    def initialize (name)
        @name = name 

        @@all << self 
    end 

    def name 
        @name 
    end 

    def passenger_names
        rides.select do |ride|
            ride.passenger.uniq 
    end

    def rides 
        Ride.all.select do |ride|
            ride.driver == self 
    end 

    def self.all 
        @@all 
    end 

    def self.mileage_cap(distance)

    end 
end 

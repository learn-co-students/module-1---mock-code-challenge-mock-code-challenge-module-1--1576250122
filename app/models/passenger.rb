class Passenger
    attr_reader :name, :ride 

    @@all = [] 

    def initialize (name)
        @name = name 

        @@all << self 
    end

    def name
        @name 
    end 

    def rides 
        Ride.all.select do |ride|
            ride.passenger == self 
    end 

    def drivers 
        rides.select do |ride|
            ride.driver 
    end 

    def total_distance 
            total = 0 
            rides.each do |ride|
                total += ride.distance
            end 
            total / rides.length
    end 

    def self.all
        @@all
    end 

    def self.premium_members

    end 
end 

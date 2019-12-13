class Passenger
    attr_reader :name, :drivers, :rides, :total_distance
    @@all = [] 
    @@premium_members = []

    def initialize(name)
        @name = name
        @drivers = []
        @rides = [] 
        @total_distance = 0.0 

        @@all << self 
    end

    def Passenger.all 
        @@all 
    end

    def rides  
        Ride.all.each do |ride|
            if @name == ride.passenger  
                @rides << ride 
            else 
                "This passenger has no ride history."
            end 
        end
        @rides 
    end

    def drivers
        Ride.all.each do |ride|
            if @name == ride.passenger
                @drivers << ride.driver 
            else 
                "This passenger has no driver history."
            end
        @drivers 
        end
    end

    def total_distance
        Ride.all.each do |ride|
            if @name == ride.passenger
                @total_distance += ride.distance 
            else
                "This driver has no logged distance."
            end
        end
    end

end

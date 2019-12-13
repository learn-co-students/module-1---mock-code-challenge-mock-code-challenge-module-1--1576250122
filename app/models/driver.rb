class Driver
    attr_reader :name, :passenger_names, :rides
    @@all = [] 

    def initialize(name)
        @name = name
        @passenger_names = [] 
        @rides = []

        @@all << self 
    end

    def Driver.all 
        @@all 
    end


end

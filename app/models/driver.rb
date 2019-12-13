class Driver

    @@all = []

    def initialize(name, passenger_names, rides)
        @name = name
        @passenger_names = passenger_names.uniq
        @rides = rides
        @@all << self
    end

    def self.all
        @@all
        end


    
end


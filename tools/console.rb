require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
#passengers def initialize(name, rides, drivers, total_distance)
passenger1 = Passenger.new("Kiki", 4, [driver1, driver3], 32.2)
passenger2 = Passenger.new("Mary", 15, [driver1, driver4], 124.2)
passenger3 = Passenger.new("Harry", 1, [driver4], 2.3)
passenger4 = Passenger.new("Bob", 7, [driver2, driver4], 56.3)

# drivers    def initialize(name, passenger_names, rides)
driver1 = Driver.new("Mushu", [passenger1, passenger2], 2)
driver2 = Driver.new("Cacti", [passenger2, passenger4], 2)
driver3 = Driver.new("Succulent", [passenger1], 1)
driver4 = Driver.new("Spider", [passenger2, passenger3, passenger4], 3)

#rides  def initialize(driver, passenger, distance)
ride1 = Ride.new(driver1, passenger1, 7.7)
ride2 = Ride.new(driver1, passenger2, 34.2)
ride3 = Ride.new(driver2, passenger2, 30.7)
ride4 = Ride.new(driver2, passenger4, 29.3)
ride5 = Ride.new(driver3, passenger1, 2.3)
ride7 = Ride.new(driver4, passenger2, 2.3)



binding.pry


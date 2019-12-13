require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

driver1 = Driver.new("Joey")
driver2 = Driver.new("Rachel")
driver3 = Driver.new("Monica")

passenger1 = Passenger.new("Chandler")
passenger2 = Passenger.new("Phoebe")
passenger3 = Passenger.new("Ross")

ride1 = Ride.new(driver1, passenger1, 3.5)
ride2 = Ride.new(driver2, passenger2, 5.0)
ride3 = Ride.new(driver3, passenger3, 2.0)

ride4 = Ride.new(driver2, passenger2, 100.0)

binding.pry

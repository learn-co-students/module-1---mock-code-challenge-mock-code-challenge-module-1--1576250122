require_relative '../config/environment.rb'
require_relative '../app/models/driver.rb'
require_relative '../app/models/passenger.rb'
require_relative '../app/models/ride.rb'

def reload
  load 'config/environment.rb'
end

# Put your variables here~!

passenger1 = Passenger.new("Steve")
passenger2 = Passenger.new("Kevin")
passenger3 = Passenger.new("Ben")

driver1 = Driver.new("Bob")
driver2 = Driver.new("John")

ride1 = Ride.new("Bob", "Steve", 50.0)
ride2 = Ride.new("Bob", "Kevin", 20.0)
ride3 = Ride.new("John", "Steve", 30.0)
ride4 = Ride.new("John","Ben", 15.0)

binding.pry

require_relative '../config/environment.rb'
require_relative "../app/models/driver"
require_relative "../app/models/passenger"
require_relative "../app/models/ride"

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

driver1 = Driver.new("drive1")
driver2 = Driver.new("drive2")
driver3 = Driver.new("drive3")

passenger1 = Passenger.new("passenger1")
passenger2 = Passenger.new("passenger2")
passenger3 = Passenger.new("passenger3")

ride1 = Ride.new(driver1, passenger1, 100)
ride2 = Ride.new(driver2, passenger2, 200)
ride3 = Ride.new(driver1, passenger3, 40)
ride4 = Ride.new(driver3, passenger1, 16)
ride1 = Ride.new(driver1, passenger1, 16)

binding.pry

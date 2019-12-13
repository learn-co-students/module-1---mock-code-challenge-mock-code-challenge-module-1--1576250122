require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

passenger1 = Passenger.new("Peter")
passenger2 = Passenger.new("Khaleesi")
passenger3 = Passenger.new("Satan")
passenger4 = Passenger.new("Mattisse")
passenger5 = Passenger.new("Jonathan")

driver1 = Driver.new("Steven")
driver2 = Driver.new("Ali")
driver3 = Driver.new("Kevin")
driver4 = Driver.new("Stanley the Manley")
driver5 = Driver.new("Alexander the Great")

ride1 = Ride.new(driver1, passenger1, 50.0)
ride2 = Ride.new(driver1, passenger1, 31.0)
ride3 = Ride.new(driver2, passenger3, 75.0)
ride4 = Ride.new(driver3, passenger4, 7.0)
ride5 = Ride.new(driver4, passenger1, 30.0)






binding.pry

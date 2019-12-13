require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
passenger1 = Passenger.new("Meredith")
passenger2 = Passenger.new("Bob")
passenger3 = Passenger.new("Jack")
passenger4 = Passenger.new("Susan")
passenger5 = Passenger.new("Karen")

driver1 = Driver.new("Jo")
driver2 = Driver.new("Lee")
driver3 = Driver.new("Reba")
driver4 = Driver.new("Dolly")
driver5 = Driver.new("Carl")

binding.pry

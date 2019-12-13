require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

d1 = Driver.new("eunice")
d2 = Driver.new("deborah")

p1 = Passenger.new("christine")
p2 = Passenger.new("steven")

r1 = Ride.new(d1, p1, 45)
r2 = Ride.new(d1, p2, 50)
r3 = Ride.new(d1, p1, 100)
r4 = Ride.new(d2, p2, 5)



binding.pry

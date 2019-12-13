require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Put your variables here~!
joe = Passenger.new("Joe")
alex = Driver.new("Alex")


binding.pry

require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

# Zoos
central_park = Zoo.new("New York, New York", "Central Park Zoo")
san_deigo = Zoo.new("San Diego, California", "San Diego Zoo")
beijing = Zoo.new("Beiging, China", "Beijing Zoo")

# Animals
sloth = Animal.new("sloth", 50, "Alexander", central_park)
sloth2 = Animal.new("sloth", 25, "Dwayne", central_park)
monkey = Animal.new("monkey", 40, "Koko", central_park)
snake = Animal.new("snake", 20, "Sammy", san_deigo)
seal = Animal.new("seal", 75, "Sally", beijing)

# tests
central_park.animals
central_park.animal_species
central_park.find_by_species("sloth")
central_park.animal_nicknames
Zoo.find_by_location("New York, New York")

binding.pry
puts "done"

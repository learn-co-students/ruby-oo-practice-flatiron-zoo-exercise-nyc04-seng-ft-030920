require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

manhattan = Zoo.new("Manhattan Zoo", "New York City")
bronx = Zoo.new("Bronx Zoo", "New York City")
san_diego = Zoo.new("San Diego Zoo", "San Diego")
washington_dc = Zoo.new("Smithsonian National Zoological Park", "Washington, DC")

fiona = Animal.new("Fiona", "Hippo", "13 kg")
burpy = Animal.new("Burpy", "Hippo", "250 lbs")
diego = Animal.new("Diego", "Giant Tortoise", "100 lbs")

fiona.location = bronx
diego.location = bronx
burpy.location = bronx

Animal.find_by_species("Hippo")

bronx.animal_nicknames
bronx.animal_species

Zoo.find_by_location("New York City")

binding.pry
puts "done"

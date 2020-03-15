require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

z1 = Zoo.new("Bronx Zoo", "New York City")
z2 = Zoo.new("Brookfield", "Chicago")
z3 = Zoo.new("San Diego Zoo", "San Diego")

a1 = Animal.new("Gorilla", 500, "Koko", z1)
a2 = Animal.new("Monkey", 63, "George", z1)
a3 = Animal.new("Monkey", 70, "Rafiki", z2)
a4 = Animal.new("Giraffe", 2_300, "Spot", z3)
a5 = Animal.new("Rhino", 1_400, "Spike", z1)
a6 = Animal.new("Anaconda", 350, "Ana", z1)
a7 = Animal.new("Zebra", 750, "Zelda", z3)
a8 = Animal.new("Zebra", 900, "F Scott", z3)
a9 = Animal.new("Lemur", 15, "Virginia", z3)

binding.pry
puts "done"

require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo = Zoo.new("Xavier" , "NYC")
animal = Animal.new("Dog" , "fido" , 135)

binding.pry
puts "done"

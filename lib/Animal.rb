# An animal should be instantiated with the species (e.g. "Cat", "Dog", "Rat"), a numerical weight and a nickname.
# Keep in mind that the animal's species and nickname should not be able to change, but its weight can.

class Animal

    attr_accessor :weight, :location
    attr_reader :species, :name
    @@all = []

    def initialize(name, species, weight)
        @name = name
        @species = species
        @weight = weight
        @location = location
        @@all << self
    end 

    def zoo
        self.location
    end

    def self.find_by_species(species)
        species = Animal.all.select { |animal|
            animal.species == species
        }  
    end 

    def self.all 
        @@all
    end 

    def inspect 
        "<Animal name: #{name}, Species: #{species}, Weight: #{weight}, Location: #{location}>"
    end

end

class Zoo

    attr_accessor :name, :location
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end 

    def self.all
        @@all
    end 

    def animals
        animals = Animal.all.select { |animal|
            animal.location == self
        }
    end 

    def animal_species
        species = []
        self.animals.each { |animal|
            species << animal.species
        }
        species.uniq
    end 

    def animal_nicknames
        nicknames = []
        self.animals.each { |animal|
            nicknames << animal.name
        }
        nicknames
    end 

    def self.find_by_location(location)
        locations = Zoo.all.select { |zoo|
            zoo.location == location
        }
    end 

    def inspect 
        "<Zoo name: #{name}, Location: #{location}>"
    end 

end

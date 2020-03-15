class Zoo
attr_reader :name, :location

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
        Animal.all.select {|animal| animal.zoo == self}
    end

    def animal_species
        species_array = animals.map {|animal| animal.species}
        species_array.uniq
    end

    def animal_nicknames
        nickname_array = animals.map {|animal| animal.nickname}
        nickname_array.uniq
    end

    def self.find_by_location(location)
        self.all.detect {|zoo| zoo.location == location}
    end
end

class Zoo

    attr_accessor :location, :name
    @@all = []

    def initialize(location, name)
        @location = location
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select{|animal| animal.zoo == self}
    end

    def animal_species
        animals.map(&:species).uniq
    end

    def find_by_species(species)
        requested = animals.select{|animal| animal.species == species}
    end

    def animal_nicknames
        animals.map(&:nickname)
    end

    def self.find_by_location(location_name)
        @@all.select{|zoo| zoo.location == location_name}
    end
end

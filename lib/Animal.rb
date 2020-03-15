class Animal

    attr_accessor :nickname
    attr_reader :species, :weight, :zoo
    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species
        @@all.select{|animal| animal.species == self.species}
    end

end

class Animal
attr_accessor :weight 
attr_reader :species , :nickname 

@@all = []

def initialize(species , nickname , weight )
    @species = species 
    @nickname = nickname 
    @weight = weight
    @@all << self 
end 

def self.all 
    @@all 
end 

def find_by_species(animal) 
   Animal.all.select do |animals| 
    animals.species = animal
   end 

end 

end

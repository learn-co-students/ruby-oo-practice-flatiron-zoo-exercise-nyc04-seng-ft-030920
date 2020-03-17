class Zoo
attr_accessor :name , :location 
@@all = [] 
 def initialize(name , location)
    @name = name 
    @location = location 
    @@all << self 
 end 
 
 def self.all 
   @@all 
 end 

  def animal_species 
   Animal.all.select do |animals| 
    animals.species
    # binding.pry
   end
  end 

  def find_by_species(species)
   animals = animal_species.select do |animals|
      animals.species == species
    #   binding.pry
    end.uniq
    animals
  end

   def find_by_location(same_location)
     @@all.find do |location |
        location.location == same_location
     end
    end
    def animal_nickname
        Animal.all.select do |animals| 
            animals.nickname
        end
    end
end

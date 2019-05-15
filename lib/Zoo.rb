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
        Animal.all.select do |animalObject|
            animalObject.zoo == self.name
        end
    end

    def animal_species
        speciesArr = []
        animalInZoo = self.animals
        uniqObjectArr = animalInZoo.uniq do |animalObject|
            animalObject.species
        end

        uniqObjectArr.each do |object|
            speciesArr << object.species
        end
        speciesArr
    end

    def find_by_species(species)
        animalInZoo = self.animals
        animalInZoo.select do |animal|
            animal.species == species
        end
    end

    def animal_nicknames
        animalInZoo = self.animals
        animalInZoo.map do |animalObject|
            animalObject.nickname 
        end
    end

    def self.find_by_location(location)
        self.all.select do |zooObject|
            zooObject.location == location
        end
    end
end

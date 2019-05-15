class Animal
    attr_reader :species, :nickname
    attr_accessor :zoo

    @@all = []
    def initialize(species, weight, nickname)
        @species = species
        @nickname = nickname
        if weight > 0
            @weight = weight
        else
            @weight = 1
        end
        @@all << self
    end

    def self.all
        @@all
    end

    def weight
        @@weight
    end

    def weight=(value)
        if value > 0
            @@weight = value
        end
    end

    def self.find_by_species(species)
        self.all.select do |animalObject|
            animalObject.species == species
        end
    end

end

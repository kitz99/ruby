class Animal
	attr_accessor :name
	attr_writer :color
    attr_reader :legs, :arms

    def self.all_species
    	["cat", 'cow', 'dog', 'duck', 'horse', 'pig']
    end

    def self.create_with_atributes(noise, color)
    	animal = self.new(noise)
    	animal.color = color
    	return animal
    end

    def initialize(noise=nil, legs=4, arms=0)
    	@legs = legs
    	@arms = arms
    	@noise = noise
    	puts "A new animal has been inastantiated"
    end

	def noise=(noise)
		@noise = noise
	end

	def noise
		@noise
	end

	def color
		"The color is #{@color}"
	end

end

puts Animal.all_species.inspect


cow = Animal.new("WALLLLLLLAAAAAA", 4, 0)  # se creeaza instanta
cow.name = "Mary"
puts cow.name
cow.color = "black"
puts cow.color
puts cow.noise.upcase

animal1 = Animal.create_with_atributes("wala wala wala", "red")
puts animal1.noise
puts animal1.color
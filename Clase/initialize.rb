class Animal
	attr_accessor :name
	attr_writer :color
    attr_reader :legs, :arms

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

cow = Animal.new("WALLLLLLLAAAAAA", 4, 0)  # se creeaza instanta
cow.name = "Mary"
puts cow.name
cow.color = "black"
puts cow.color
puts cow.noise.upcase

animal1 = Animal.new # alta instanta
animal1.noise = "Wala Wala!!"
puts animal1.noise
  
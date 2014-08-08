class Animal
	attr_accessor :name
	attr_writer :color
    attr_reader :legs, :arms

	def noise=(noise)
		@noise = noise
	end

	def noise
		@noise
	end

	def color
		"The color is #{@color}"
	end

	def legs=(legs)
		@legs = legs
	end
end

cow = Animal.new  # se creeaza instanta
cow.noise = "MOOOOOOOO!"
cow.name = "Mary"
puts cow.name
cow.color = "black"
puts cow.color
cow.legs = 4
puts cow.legs
puts cow.noise.upcase

animal1 = Animal.new # alta instanta
animal1.noise = "Wala Wala!!"
puts animal1.noise
  
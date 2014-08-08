class Animal
	def noise=(noise)
		@noise = noise
	end

	def noise
		@noise
	end
end

cow = Animal.new  # se creeaza instanta
cow.noise = "MOOOOOOOO!"
puts cow.noise.upcase

animal1 = Animal.new # alta instanta
animal1.noise = "Wala Wala!!"
puts animal1.noise
  
class Animal
	def set_noise(value)
		@noise = value
	end

	def make_noise
		@noise
	end
end

cow = Animal.new  # se creeaza instanta
cow.set_noise("MOOOOOOOO!")
puts cow.make_noise.upcase

animal1 = Animal.new # alta instanta
animal1.set_noise("Wala Wala!!")
puts animal1.make_noise
  
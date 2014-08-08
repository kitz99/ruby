class Animal
	def make_noise
		"Moo!!"
	end
end

cow = Animal.new  # se creeaza instanta
puts cow.make_noise.upcase

animal1 = Animal.new # alta instanta
puts animal1.make_noise
  
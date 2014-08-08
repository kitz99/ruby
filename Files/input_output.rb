input = gets.chomp
print "you just told me: "
puts input + "."

result = "";
until result == "quit"
	print "> "
	result = gets.chomp
	puts "I heard #{result}"
end
puts "Goodbye!!"
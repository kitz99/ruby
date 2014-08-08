# first way to access: using File.new

file = File.new('file1.txt', 'w')
file.puts "Ruby"
file.print "programming\n"
file.write "is "
file << "fun"
file.close

# second way - provide a file with a block of instructions

File.open('file1.txt', 'r') do |file|
	while line = file.gets
		puts "** " + line.chomp.reverse + " **"
	end
end


File.open('file1.txt', 'r') do |file|
	file.each_line{|line| puts line.upcase}
end




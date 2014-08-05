# scope of variables
$value = 7 # variabila globala

def wellcome
	puts "Hello world";
end

def add 
	puts 1 + 1
end

@words = ["apple", "pear", "banana", 'plum'] #instance variable

def longest_word
	words = ["apple", "pear", "banana", 'plum']
	longest_word = @words.inject do |memo, word| 
	   memo.length > word.length ? memo : word
	end 
	puts longest_word
end

def over_five?
	$value = 3
	puts $value > 5 ? "Over Five" : "Not over FIVE"
end

wellcome
add
longest_word
over_five?

puts $value
# puts longest_word
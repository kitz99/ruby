# metode
def wellcome
	puts "Hello world";
end

def add 
	puts 1 + 1
end

def longest_word
	words = ["apple", "pear", "banana", 'plum']
	longest_word = words.inject do |memo, word| 
	   memo.length > word.length ? memo : word
	end
	puts longest_word
end

#metodele pot avea semnul intrebarii in nume, si sunt utile pentru teste si booleene
def over_five?
	value = 3
	puts value > 5 ? "Over Five" : "Not over FIVE"
end

wellcome
add
longest_word
over_five?
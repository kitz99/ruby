# metodele cu argumente folosesc paranteze
# metodele fara, nu folosesc paranteze
# totusi, parantezele sunt optionale in ambele cazuri

def wellcome(name)
	puts "Hello #{name}!";
end

def add(n1, n2)
	puts n1 + n2
end

def longest_word(words)
	longest_word = words.inject do |memo, word| 
	   memo.length > word.length ? memo : word
	end
	puts longest_word
end

#metodele pot avea semnul intrebarii in nume, si sunt utile pentru teste si booleene
def over_five?(value)
	puts value > 5 ? "Over Five" : "Not over FIVE"
end

wellcome("John")
wellcome("Mary")
wellcome "Fred"

add(2, 2)

fruits = ["apple", "pear", "banana", 'plum']
longest_word(fruits)

over_five?(15)
over_five?(3)

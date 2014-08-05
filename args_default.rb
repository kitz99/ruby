# default arguments

def wellcome(name = "World")
	puts "Hello #{name}!";
end

def add(n1, n2 = 0)
	puts n1 + n2
end

def longest_word(words=[])
	longest_word = words.inject do |memo, word| 
	   memo.length > word.length ? memo : word
	end
	puts longest_word
end

#metodele pot avea semnul intrebarii in nume, si sunt utile pentru teste si booleene
def over_five?(value=nil)
	puts value.to_i > 5 ? "Over Five" : "Not over FIVE"
end

wellcome("John")
wellcome

add(2, 2)
add(3)

fruits = ["apple", "pear", "banana", 'plum']
longest_word(fruits)
longest_word

over_five?(15)


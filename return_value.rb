# return value

def wellcome(name = "World")
	return "Hello #{name}!";
	2 + 2
end

def add_and_substract(n1, n2 = 0)
	add = n1 + n2
	sub = n1 - n2
	return [add, sub]
end

def longest_word(words=[])
	longest_word = words.inject do |memo, word| 
	   memo.length > word.length ? memo : word
	end
	return longest_word
end

#metodele pot avea semnul intrebarii in nume, si sunt utile pentru teste si booleene
def over_five?(value=nil)
	return "Exactly 5" if value.to_i == 5
	if value.to_i > 5
		return "Over 5"
	else
		return "Under 5"
	end
end

puts wellcome("John")
returned_value = wellcome("Mary")
puts returned_value

puts add_and_substract(2, 2)
add, sub = add_and_substract(8, 2)
puts "adunare #{add} si scadere #{sub}"

fruits = ["apple", "pear", "banana", 'plum']
puts longest_word(fruits).length

puts over_five?(5)


#take name input and separate first and last name into array
#reverse array
#Make strings of vowels and consonants to use as indices. 
#Move through name and determine if each letter is a vowel or consonant.
#Pull index value for each letter from its respective index, and add 1.




	
def next_vowel(letter)
	vowel = "aeiou".index(letter)
	if vowel == 4
		vowel_adjustment = 0
	else
		vowel_adjustment = vowel + 1
	end
	letter = "aeiou"[vowel_adjustment]
	
end

def next_consonant(letter)
	consonant = "bcdfghjklmnpqrstvwxyz".index(letter)
	if consonant == 20
		consonant_adjustment = 0
	else
		consonant_adjustment = consonant + 1
	end
	letter = "bcdfghjklmnpqrstvwxyz"[consonant_adjustment]
end


puts "Please enter a name to code:"
inputted_name = gets.chomp.downcase
name_array = inputted_name.split(' ').reverse 
first_name = name_array[0].chars
last_name = name_array[1].chars
coded_first_name =[]
coded_last_name =[]
first_name.each do |letter|
	if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
		letter = next_vowel(letter)
	else 
		letter = next_consonant(letter)
	end
	coded_first_name << letter
end
last_name.each do |letter|
	if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
		letter = next_vowel(letter)
	else 
		letter = next_consonant(letter)
	end
	coded_last_name << letter
end


	puts coded_first_name
	puts coded_last_name

#reversed_order = inputted_name.split(' ').reverse
#characters = reversed_order[0].chars
#characters += reversed_order[1].chars
#characters.each do |characters|
#	next_vowel(characters)	
#end

#take name input and separate first and last name into array
#reverse array
#Make strings of vowels and consonants to use as indices. 
#Move through name and determine if each letter is a vowel or consonant.
#Pull index value for each letter from its respective index, and add 1.

def letter_adjuster (letter)
	if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
		puts "no"
	else
		puts "yes"
	end
end

def name_jumbler (inputted_name)
	reversed_order = inputted_name.split(' ').reverse
	characters = reversed_order[0].chars
	characters += reversed_order[1].chars
	characters.each do |characters|
		letter_adjuster(characters)
	end
	
end

name_jumbler ("roger clayton")




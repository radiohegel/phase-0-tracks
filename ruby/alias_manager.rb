#Take name input and make arrays of first and last names.
#reverse the arrays, so first name and last name are switched.
#define respective methods for advancing vowels and consonants.
	#use total vowel/consonant characters as strings against which to compare letters in name arrays
	#find index position of letters, and add 1 to adjust it to the following letter
#iterate through name arrays to determine if each letter is a vowel or consonant, and put it through the according method.
#store results as new variables, and convert back to strings.


	
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

name_bank = {}
loop do
	puts "Please enter a name to code:"
	inputted_name = gets.chomp.downcase
	name_array = inputted_name.split(' ').reverse 
	first_name = name_array[0].chars
	last_name = name_array[1].chars
	coded_first_name_array =[]
	coded_last_name_array =[]
	first_name.each do |letter|
		if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
			letter = next_vowel(letter)
		else 
			letter = next_consonant(letter)
		end
		coded_first_name_array << letter
	end
	last_name.each do |letter|
		if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
			letter = next_vowel(letter)
		else 
			letter = next_consonant(letter)
		end
		coded_last_name_array << letter
	end

	coded_first_name = coded_first_name_array.join('')
	coded_last_name = coded_last_name_array.join('')
	coded_name = coded_first_name + " " + coded_last_name
	puts coded_name

	
	name_bank[inputted_name] = coded_name
	


	puts "If you are finished, please type 'quit'. If you have another name to translate, please press enter."
	user_response = gets.chomp
	if user_response == "quit"
		name_bank.each do |realname, codename|
			puts "The codename for #{realname} is: #{codename}"
		end
		break
	else
	end
	
	
end	



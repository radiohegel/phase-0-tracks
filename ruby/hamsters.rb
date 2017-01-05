def hamster_form
	puts "What's your hamster's name?"
	hamster_name = gets.chomp
	puts "How loud is your hamster, on a scale from 1 to 10?"
	hamster_vol = gets.chomp.to_i
	puts "What color is your hamster?"
	hamster_color = gets.chomp
	puts "Is this hamster a good candidate for adoption? Y or N."
	hamster_adoption = gets.chomp
	puts "How old is your hamster?"
	hamster_age = gets.chomp.to_i
	puts "Hamster name: #{hamster_name}"
	puts "Hamster volume: #{hamster_vol}"
	puts "Hamster color: #{hamster_color}"
	puts "Good candidate?: #{hamster_adoption}"
	puts "Hamster age: #{hamster_age}"
end

hamster_form


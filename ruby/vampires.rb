def vampire_form
	puts "How many applicants to test?"
	applicants = gets.chomp.to_i
	counter = 0
	while counter < applicants
		

		puts "What is your name?"
		vamp_name = gets.chomp
		puts "How old are you?"
		vamp_age = gets.chomp.to_i
		puts "In what year were you born?"
		vamp_year = gets.chomp.to_i
		age_test = 2016 - vamp_year
		puts "Would you like some garlic bread from our cafeteria?"
		vamp_garlic = gets.chomp
		puts "Do you intend to enroll in company health insurance?"
		vamp_insurance = gets.chomp

		case
		when vamp_age == age_test && (vamp_garlic == "yes" || vamp_insurance == "yes")
			puts "Probably not a vampire"
		when vamp_age != age_test && (vamp_garlic == "no" || vamp_insurance == "no")
			puts "Probably a vampire"
		when vamp_age != age_test && (vamp_garlic == "no" && vamp_insurance == "no")
			puts "Almost certainly a vampire"
		when vamp_name == "Drake Cula"
			puts "Definitely a vampire"
		when vamp_name == "Tu Fang"
		puts "Definitely a vampire"
		else
		puts "results inconclusive"
		end
	#I am confused about how to make this evaluate from the latest condition matched, instead of the first. 
	#I have been researching for a while, and am not finding much, so I've decided to move on, for now.

		counter += 1

	end
	puts "done"

end

vampire_form
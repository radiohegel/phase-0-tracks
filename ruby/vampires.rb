def vampire_form
	
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


	if vamp_age == age_test && (vamp_garlic == "yes" || vamp_insurance == "yes")
		puts "Probably not a vampire"
	elsif vamp_age != age_test && (vamp_garlic == "no" || vamp_insurance == "no")
		puts "Probably a vampire"
	elsif vamp_age != age_test && (vamp_garlic == "no" && vamp_insurance == "no")
		puts "Almost certainly a vampire"
	elsif vamp_name == "Drake Cula"
		puts "Definitely a vampire"
	elsif vamp_name == "Tu Fang"
		puts "Definitely a vampire"
	else
		puts "results inconclusive"
		#I am confused about how to make this evaluate from the latest condition matched, instead of the first. 
		#I have been researching for a while, and am not finding much, so I've decided to move on, for now.
	end
		
	puts "Please list allergies. Typle 'done' once complete."
	
	while vamp_allergies = gets.chomp
		case vamp_allergies
			when "done"
				puts "thanks!"
				break
			when "sunlight"
				puts "Probably a vampire"
				break
			else
				puts "Next allergy? Type 'done' if no more."
				
		end
	end
		
end

puts "How many applicants to test?"
applicants = gets.chomp.to_i
counter = 0
while counter < applicants
	vampire_form
	counter +=1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."



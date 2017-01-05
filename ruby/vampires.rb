def vampire_form
	puts: "What is your name?"
	vamp_name = gets.chomp
	puts: "How old are you? In what year were you born?"
	vamp_age = gets.chomp.to_i
	puts: "Would you like some garlic bread from our cafeteria?"
	vamp_garlic = gets.chomp
	puts: "Do you intend to enroll in company health insurance?"
	vamp_insurance = gets.chomp
end

vampire_form
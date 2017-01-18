class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

#Instance methods: 

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
		puts @reindeer_ranking
	end

end

#Driver code

brian = Santa.new("man", "white")
brian.get_mad_at("Dancer")

brian.gender = "woman"

puts brian.age
brian.celebrate_birthday
puts brian.age

puts brian.ethnicity

puts brian.gender

brian.gender = "fluid"
puts brian.gender


#UI for registering santas, also used as driver code for testing program initially. 

# santas = []

# # loop do
# # 	puts "Do you have a santa to register? Please enter 'yes' or 'no':"
# # 	user_response = gets.chomp
# # 		if user_response == "yes"
# # 			puts "Please enter your gender:"
# # 			santa_gender = gets.chomp
# # 			puts "Please enter your ethnicity:"
# # 			santa_ethnicity = gets.chomp
# # 			santas << Santa.new(santa_gender, santa_ethnicity)
# # 		elsif user_response == "no"
# # 			break
# # 		else
# # 			puts "Sorry, I didn't catch that."
# # 		end
# # end

# p santas

# #EXAMPLES:
# #female/black; n/a/Latin@; male/Asian


# # gregory = Santa.new

# # gregory.speak
# # gregory.eat_milk_and_cookies("sugar cookie")

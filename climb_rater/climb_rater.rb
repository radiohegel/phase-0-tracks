#CLIMB-RATER:
#I have decided to build a program that could be used in a bouldering gym,
#for allowing climbers to leave and view ratings for different bouldering
#problems in the gym. My assumption is that each climb will be identified
#in the gym with a number at its start. Similarly, climbers will each be assigned
#a membership number, which they can use to leave feedback. 

require 'sqlite3'
db = SQLite3::Database.open "climb_rater.db"
#METHODS:

#Submit feedback.
#Add data to reviews table

def add_feedback(db, attempts, rating, grade, climber_id, problem_id)
	db.execute "INSERT INTO feedback VALUES (?, ?, ?, ?, ?)", [attempts, rating, grade, climber_id, problem_id]
end

# add_feedback(db, 2, 2, 2, 1, 1)
# add_feedback(db, 4, 4, 4, 2, 1)



#Calculate avg. attempts

def calculate_attempts(db, feedback)
	attempts_total = 0
	feedback.each do |response|
		attempts_total += response[0]
	end	
	avg_attempts = attempts_total/feedback.length

end

#Calculate avg. quality rating

def calculate_quality(db, feedback)
	quality_total = 0
	feedback.each do |response|
		quality_total += response[0]
	end	
	avg_quality = quality_total/feedback.length

end

#Calculate avg. grade

def calculate_grade(db, feedback)
	grade_total = 0
	feedback.each do |response|
		grade_total += response[0]
	end	
	avg_grade = grade_total/feedback.length

end
selected_problem = 2



#USER INTERFACE:

#Greet user and ask what their climber ID number is, and what climb they need to access
puts "Welcome to the climbing gym! What is your climber ID number?"
climber_id_number = gets.chomp.to_i
puts "Thanks! What is the number on the problem are you looking for?"
selected_problem = gets.chomp.to_i
feedback_array = db.execute("SELECT * FROM feedback WHERE problem_id=#{selected_problem}")

#Prompt user to choose to either leave feedback, or view avgs for the climb.
loop do
	puts "Great! Please type 'stats' to see average feedback from other climbers, or type 'fb' to leave feedback of your own!"
	user_selection = gets.chomp
	if user_selection == "stats"
		puts "On average, climbers send this problem in #{calculate_attempts(db, feedback_array)} tries, rate it #{calculate_quality(db, feedback_array)} out of 5 stars, and grade it V#{calculate_grade(db, feedback_array)}."
		break
	elsif user_selection == "fb"
		puts "How many times did it take you to climb this problem?"
		climber_attempts = gets.chomp.to_i
		puts "How many stars out of 5 would you rate this problem?"
		climber_rating = gets.chomp.to_i
		puts "What grade of difficulty would you give this problem?"
		climber_grade = gets.chomp.to_i
		add_feedback(db, climber_attempts, climber_rating, climber_grade, climber_id_number, selected_problem)
		puts "Thanks for your feedback! It has been successfully added."
		break
	else
		puts "Sorry, that wasn't a valid selection"
	end
end
	


#Prompt user for their no. of attempts, 1-5 star quality rating, and difficulty grade.

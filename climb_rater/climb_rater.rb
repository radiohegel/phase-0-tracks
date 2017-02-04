#CLIMB-RATER:
#I have decided to build a program that could be used in a bouldering gym,
#for allowing climbers to leave and view ratings for different bouldering
#problems in the gym. My assumption is that each climb will be identified
#in the gym with a number at its start. Similarly, climbers will each be assigned
#a membership number, which they can use to leave feedback. 

require 'sqlite3'
db = SQLite3::Database.open "climb_rater.db"

#METHODS:

#Collect user feedback and enter into db.

def get_feedback(db, climber_id_number, selected_problem)

	puts "How many times did it take you to climb this problem?"
	climber_attempts = gets.chomp.to_i
				
	puts "How many stars out of 5 would you rate this problem?"
	climber_rating = gets.chomp.to_i
				
	if climber_rating > 5
		climber_rating = 5
	end

	puts "What grade of difficulty would you give this problem?"
	climber_grade = gets.chomp.to_i

	db.execute "INSERT INTO feedback VALUES (#{climber_attempts}, #{climber_rating}, #{climber_grade}, #{climber_id_number}, #{selected_problem})"			

	puts "Thanks for your feedback! It has been successfully added."

end

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
		quality_total += response[1]
	end	

	avg_quality = quality_total/feedback.length

end

#Calculate avg. grade

def calculate_grade(db, feedback)

	grade_total = 0

	feedback.each do |response|
		grade_total += response[2]
	end	

	avg_grade = grade_total/feedback.length

end

#Return all feedback for a climb, identified by climber name.

def list_feedback(db, selected_problem)

	all_feedback = db.execute("SELECT feedback.attempts, feedback.rating, feedback.grade, climbers.name FROM feedback JOIN climbers ON feedback.climber_id = climbers.id WHERE problem_id=#{selected_problem};")
	
	all_feedback.each do |feedback_item|
		puts "#{feedback_item[3]} finished the problem in #{feedback_item[0]} attempts, rated it #{feedback_item[1]} out of 5 stars, and graded it V#{feedback_item[2]}."
	end

end

#USER INTERFACE:

#Greet user and ask what their climber ID number is, and what climb they need to access

puts "Welcome to the climbing gym! What is your climber ID number?"
climber_id_number = gets.chomp.to_i

loop do
	puts "What is the number on the problem are you looking for?"
	selected_problem = gets.chomp.to_i
	feedback_array = db.execute("SELECT * FROM feedback WHERE problem_id=#{selected_problem}")

	if feedback_array.length == 0
		puts "No one has entered feecback for that problem yet! Would you like to leave the first feedback for it? Please type 'yes' or 'no'."
		user_answer = gets.chomp

			if user_answer == "yes"
				get_feedback(db, climber_id_number, selected_problem)

			else
				puts "Do you want to look at a different problem?"
				user_answer = gets.chomp

					if user_answer == "yes"
						nil
					else
						puts "Happy climbing!"
						break
					end
					
			end

	else

		#Prompt user to choose to either leave feedback, or view avgs/all feedback for the climb.

		loop do
			puts "Great! Please type 'avg' to see average feedback from other climbers, type 'all' to see all feedback, or type 'fb' to leave feedback of your own!"
			user_selection = gets.chomp

			if user_selection == "avg"
				puts "On average, climbers send this problem in #{calculate_attempts(db, feedback_array)} tries, rate it #{calculate_quality(db, feedback_array)} out of 5 stars, and grade it V#{calculate_grade(db, feedback_array)}."
				break

			elsif user_selection == "all"
				list_feedback(db, selected_problem)
				break

		#Prompt user for their no. of attempts, 1-5 star quality rating, and difficulty grade.

			elsif user_selection == "fb"
				get_feedback(db, climber_id_number, selected_problem)
				break

			else
				puts "Sorry, that wasn't a valid selection"
			end	

		end

		puts "Do you have any other problems to look up? Please type 'yes' or 'no':"
		user_response = gets.chomp

		if user_response == "no"
			puts "Happy climbing!"
			break
		else
			nil
		end

	end

end	




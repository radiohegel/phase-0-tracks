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

feedback_array = db.execute("SELECT * FROM feedback")
p feedback_array
p feedback_array.class
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

p calculate_grade(db, feedback_array)
#USER INTERFACE:

#Greet user and ask what climb they need to access

#Prompt user to choose to either leave feedback, or view avgs for the climb.

#Prompt user for their no. of attempts, 1-5 star quality rating, and difficulty grade.

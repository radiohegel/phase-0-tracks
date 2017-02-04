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

def add_review(db, attempts, rating, grade, climber_id, problem_id)
	db.execute "INSERT INTO feedback VALUES (?, ?, ?, ?, ?)", [attempts, rating, grade, climber_id, problem_id]
end

add_review(db, 1, 5, 5, 1, 1)
#Calculate avg. attempts

#Calculate avg. quality rating

#Calculate avg. 

#USER INTERFACE:

#Greet user and ask what climb they need to access

#Prompt user to choose to either leave feedback, or view avgs for the climb.

#Prompt user for their no. of attempts, 1-5 star quality rating, and difficulty grade.

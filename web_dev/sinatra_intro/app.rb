# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#add a GET route that adds a contact address

get '/contact' do
  "Please send questions to 19 Nonexistent St."
end

#add a GET route that takes a name and congratulates them.

get '/great_job' do
  name = params[:name]
  if name
    "Congratulations, #{name}!"
  else
    "Congratulations!!"
  end
end

#add a GET route that takes to numbers and adds them together.

get '/return_sum' do
  num1 = params[:firstnum].to_i
  num2 = params[:secondnum].to_i

  sum = num1 + num2

  sum.to_s

end







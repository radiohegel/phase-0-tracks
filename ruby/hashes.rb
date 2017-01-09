#Prompt user for name, location, decor theme, style preference, contrast preference, and room size.
#make hash containing data drawn from variables above.
#print hash results for user. 
#prompt user for any key changes.
#print revised hash and exit.

#Client info variables:
	puts "Client name:"
	client_name = gets.chomp
	puts "Client location:"
	client_location = gets.chomp
	puts "Decor theme:"
	client_decor = gets.chomp
	puts "Style preference:"
	client_style_pref = gets.chomp
	puts "Does the client like lots of contrast? Please type 'yes' or 'no':"
	client_contrast_pref = gets.chomp
		if client_contrast_pref == "yes"
			client_contrast_pref = "high contrast"
		elsif client_contrast_pref == "no"
			client_contrast_pref = "low contrast"
		else
			client_contrast_pref = "invalid entry"
		end
	puts "Number of rooms:"
	client_rooms = gets.chomp.to_i

client_info = {
	name: client_name,
	location: client_location,
	decor: client_decor,
	style_preference: client_style_pref,
	contrast_preference: client_contrast_pref,
	rooms: client_rooms
}

puts client_info



#puts client_name 
#puts client_location
#puts client_decor
#puts client_style_pref
#puts client_contrast_pref
puts client_rooms
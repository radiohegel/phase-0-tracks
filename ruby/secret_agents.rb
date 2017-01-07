#Encrypt method:
	#take user input
	#count figures in string
	#apply .next method to each figure, with loop set = to number of figures in string
		#if figure is a space, move past it
	#print results

	puts "please enter your password"
	user_input = gets.chomp

def encrypt (user_input)
	
	input_length = user_input.length
	encrypted_input = ""
	
	counter = 0
	while counter < input_length
		encrypted_input += user_input[counter].next
		counter += 1
	end
	puts encrypted_input

end


encrypt (user_input)

#Decrypt method:
	



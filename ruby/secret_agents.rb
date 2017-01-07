#Encrypt method:
	#take user input
	#count figures in string
	#apply .next method to each figure, with loop set = to number of figures in string
		#if figure is a space, move past it
	#print results



def encrypt(user_input)
	
	input_length = user_input.length
	encrypted_input = ""
	
	counter = 0
	while counter < input_length
		encrypted_letter = user_input[counter].next
			if encrypted_letter == "aa"
				encrypted_input += "a"
			else encrypted_letter = user_input[counter].next
				encrypted_input += encrypted_letter
			end

		counter += 1
	end
	puts encrypted_input

end


#Decrypt method:
	#take encrypted string
	#call for the alphabet index value of each letter in the encrypted string.
	#subtract one from each index value returned, and store in a new variable.
	#print the new variable.



def decrypt(encrypted_input)
	encrypted_input_length = encrypted_input.length
	decrypted_password = ""

	encrypt_counter = 0
	while encrypt_counter < encrypted_input_length
		encrypted_letter = encrypted_input[encrypt_counter]
		processing_index = "abcdefghijklmnopqrstuvwxyz".index(encrypted_letter)
		decrypted_index = processing_index - 1
		decrypted_password += "abcdefghijklmnopqrstuvwxyz"[decrypted_index]
		encrypt_counter += 1
	
	end
	puts decrypted_password
end

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")
# ecrypt(encrypt("swordfish")) 
#As of now, the input doesn't seem to be 
#passing from the first method to the second in a way
#that allows the .length method to function. 
#We are going to continue researching this, to try to figure out how to fix the issue.

puts "Would you like to encrypt or decrypt a password?"
user_selection = gets.chomp
puts "please enter the password"
user_password = gets.chomp
loop do
	if user_selection == "encrypt"
		encrypt(user_password)
		break
	elsif user_selection == "decrypt"
		decrypt(user_password)
		break
	else
		puts "please type 'encrypt' or 'decrypt'"
		user_selection = gets.chomp
	end
end



	


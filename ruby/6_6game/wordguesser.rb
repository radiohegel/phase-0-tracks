# WORD GUESSING GAME

#Initialize class with word that is to be guessed, and convert to array. 
#Take length of the word and determine number of guesses relative to that length.
#Create second array for storing guessed letters and giving feedback to user. 
#Print feedback array after each guess.
#Print message congratulating winning user, or taunting losing user.

class Wordguesser
	attr_accessor :wordlength, :word, :wordarray, :guessnum, :feedback

	def initialize(word)
		@wordlength = word.length
		@wordarray = word.chars
		@guessnum = @wordlength + (@wordlength / 2)
		makefeedbackarray
		
	end

	def storeinput
		@wordarray
	end

	def guessnum
		@guessnum
	end

	def makefeedbackarray
		@feedback = []
		@wordlength.times do
			@feedback << "_"
		end
		@feedback
	end

	def checkguess(letter)
		ind = 0
		@wordlength.times do
			if letter == @wordarray[ind]
				@feedback[ind] = letter
				ind += 1
			else
				ind += 1
			end 
		end
		@feedback

	end

end

puts "Player 1, please enter your secret word:"
inputted_word = gets.chomp
word = Wordguesser.new(inputted_word)

guesscount = 0
loop do
	puts "Player 2, please enter a letter to guess"
	letter_to_check = gets.chomp
	if word.feedback.include?(letter_to_check)
		puts "you already guessed that!"
	else
		word.checkguess(letter_to_check)
		if word.feedback.include?(letter_to_check)
			puts "yep!"
			p word.feedback
			guesscount += 1
		else
			puts "that letter isn't in the word"
			guesscount += 1
		end
		if guesscount == word.guessnum
			puts "HAHA! You lose!"
			break	
		elsif word.feedback.include?("_") == false
			puts "Congratulations, you win!"
			break
		end
	end
end




# test = Wordguesser.new("testword")

# p test.wordarray
# p test.feedback

# test.checkguess("t")

# p test.wordarray
# p test.feedback
# test.checkguess("e")
# p test.feedback
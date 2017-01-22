# WORD GUESSING GAME

#Initialize class with word that is to be guessed, and convert to array. 
#Take length of the word and determine number of guesses relative to that length.
#Create second array for storing guessed letters and giving feedback to user. 
#Print feedback array after each guess.
#Print message congratulating winning user, or taunting losing user.

class Wordguesser
	def initialize(word)
		@wordlength = word.length
		@word = word
		@wordarray = word.chars
	end

	def storeinput
		@wordarray
	end

	def guessnum
		@guessnum = @wordlength + (@wordlength / 2)
		@guessnum
	end
end
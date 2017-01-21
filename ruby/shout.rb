# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + ":("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + ":)" +"It's a bright and sunny day!"
# 	end
# end

# p Shout.yell_angrily("That's it")

# p Shout.yelling_happily("That's it")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!" + " :)"
end

class Angry_Driver
	include Shout
end

class Happy_Camper
	include Shout
end

driver = Angry_Driver.new
driver.Shout("Get out of my lane")

camper = Happy_Camper.new
camper.Shout("Today is perfect")
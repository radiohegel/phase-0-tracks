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
end

class Angry_Driver
	include Shout
end

class Happy_Camper
	include Shout
end

driver = Angry_Driver.new
p driver.yell_angrily("Get out of my lane")

p driver.yelling_happily("Finally, they're off the road")

camper = Happy_Camper.new
p camper.yelling_happily("Today is perfect")

p camper.yell_angrily("I don't want to go home yet")


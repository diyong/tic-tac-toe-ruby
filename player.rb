class Player
	attr_reader :name
	attr_reader :symbol
	attr_reader :no_of_players

	@@no_of_players = 0
	def initialize(name, symbol)
		@name = name
		@symbol = symbol
		@@no_of_players += 1
	end

	def turns
	end
end

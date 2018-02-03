class Player
	attr_reader :name
	attr_reader :symbol
	attr_accessor :moves

	def initialize(name, symbol, moves = [])
		@name = name
		@symbol = symbol
		@moves = moves
	end

end

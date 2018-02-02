class Player
	attr_reader :@player_name
	attr_reader :@symbol

	def initialize(player_name, symbol)
		@player_name = player_name
		@symbol = symbol
	end

end

class Board
	attr_reader :@grid
	
	def initialize(grid = nil)
		@grid = grid
	end

end


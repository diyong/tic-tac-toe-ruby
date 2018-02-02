class Board
	attr_reader :grid

	def initialize(grid = nil)
		@grid = grid
		@board_setup = Array.new(3) { Array.new(3, default = "*") }
	end

	def cells
		if @grid == nil
			return @board_setup
		else
			return @board_setup = Array.new(@grid) { Array.new(@grid) }
		end
	end

end
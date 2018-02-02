class Visuals
	def initialize(grid_arry)
		@grid_arry = grid_arry
	end

	def graphics
		return @grid_arry.each {|x| p x}
	end
end


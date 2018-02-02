class Visuals
	def initialize(grid_arry)
		@grid_arry = grid_arry
	end

	def graphics
		counter = 0
		vis_rep = @grid_arry.map do |x|
			x.map do |y|
				y = counter
				counter += 1
			end
		end
		return vis_rep
	end
end


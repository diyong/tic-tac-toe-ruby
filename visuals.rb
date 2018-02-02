class Visuals
	def initialize(grid_arry)
		@grid_arry = grid_arry
	end

	def graphics
		counter = 1
		vis_rep = @grid_arry.each_with_index do |elem, indx|
			@grid_arry[indx].each_with_index do |y, indx|
				if counter < 10
					elem[indx] = "0#{counter.to_s}"
					counter += 1
				else
					elem[indx] = counter.to_s
					counter += 1
				end
			end
		end
		return vis_rep.map {|x| p x}
	end

end


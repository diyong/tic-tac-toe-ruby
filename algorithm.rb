class Algorithm

	def initialize(name) 
		@name = name
		@turn = true
	end

	def player_turn_first(name)
		if @turn == true
			puts "\n#{@name}, please take your turn. Input the number corresponding to the cell you wish to select."
			choice = gets.chomp.to_i
		end
	end

end

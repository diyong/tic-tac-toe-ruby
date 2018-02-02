class Algorithm

	def initialize(name) 
		@name = name
		@turn = true
	end

	def one_player
		finish = false
		while finish == false

			start = rand(0..1)

			if start == 0
				puts "Player 1 starts!"

			else
				puts "Player 2 starts!"
				@turn = false
			end

		end
	end

	def player_turn_first(name)
		if @turn == true
			puts "\n#{@name}, please take your turn. Input the number corresponding to the cell you wish to select."
			choice = gets.chomp.to_i
		end
	end

end

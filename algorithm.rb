class Algorithm
	def initialize(); end

	def self.one_player
		finish = false
		while finish == false

			start = rand(0..1)

			if start == 0
				puts "Player 1 starts!"
			else
				puts "Computer starts!"
			end

		end
	end

	def player_turns(name)
		puts "\n#{name}, please take your turn."
		choice = gets.chomp 

	end

end

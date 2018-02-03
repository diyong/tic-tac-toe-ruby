class Algorithm
	@@player_choice = ""
	@@cell_full = true
	@@win = false
	

	def initialize(visual)
		@visual = visual
		@@grid = @visual.vis_rep
	end

	def turns(player1, player2)
		loop do
			puts "\n#{player1.name}, please enter the cell number you wish to mark:"
			while @@cell_full == true
				@@player_choice = gets.chomp.to_i
				cell_check
			end
			@@cell_full = true
			player1.moves << @@player_choice

			update_grid(player1)
			puts 
			@@grid.each { |x| p x }

			win_check(player1)
			break if @@win == true

			puts "\n#{player2.name}, please enter the cell number you wish to mark:"
			while @@cell_full == true
				@@player_choice = gets.chomp.to_i
				cell_check
			end
			@@cell_full = true
			player2.moves << @@player_choice

			update_grid(player2)
			puts
			@@grid.each { |x| p x }

			win_check(player2)
			break if @@win == true
		end
	end

	private

	def update_grid(player)
		case @@grid.length
		when 3
			case player.moves[-1]
			when 1
				@@grid[0][0] = " #{player.symbol}"
			when 2
				@@grid[0][1] = " #{player.symbol}"
			when 3
				@@grid[0][2] = " #{player.symbol}"
			when 4
				@@grid[1][0] = " #{player.symbol}"
			when 5
				@@grid[1][1] = " #{player.symbol}"
			when 6
				@@grid[1][2] = " #{player.symbol}"
			when 7
				@@grid[2][0] = " #{player.symbol}"
			when 8
				@@grid[2][1] = " #{player.symbol}"
			when 9
				@@grid[2][2] = " #{player.symbol}"
			end
		when 4
			#code
		when 5
			#code
		when 6
			#code
		end
	end

	def cell_check
		case @@grid.length
		when 3
			case @@player_choice
			when 1
				if @@grid[0][0] != "01"
					puts "Cell has already been chosen! Please select a different cell"
				else
					@@cell_full = false
				end
			when 2
				if @@grid[0][1] != "02"
					puts "Cell has already been chosen! Please select a different cell"
				else
					@@cell_full = false
				end
			when 3
				if @@grid[0][2] != "03"
					puts "Cell has already been chosen! Please select a different cell"
				else
					@@cell_full = false
				end
			when 4
				if @@grid[1][0] != "04"
					puts "Cell has already been chosen! Please select a different cell"
				else
					@@cell_full = false
				end
			when 5
				if @@grid[1][1] != "05"
					puts "Cell has already been chosen! Please select a different cell"
				else
					@@cell_full = false
				end
			when 6
				if @@grid[1][2] != "06"
					puts "Cell has already been chosen! Please select a different cell"
				else
					@@cell_full = false
				end
			when 7
				if @@grid[2][0] != "07"
					puts "Cell has already been chosen! Please select a different cell"
				else
					@@cell_full = false
				end
			when 8
				if @@grid[2][1] != "08"
					puts "Cell has already been chosen! Please select a different cell"
				else
					@@cell_full = false
				end
			when 9
				if @@grid[2][2] != "09"
					puts "Cell has already been chosen! Please select a different cell"
				else
					@@cell_full = false
				end
			end
		when 4
			#code
		when 5
			#code
		when 6
			#code
		end
	end

	def win_check(player)
		case @@grid.length
		when 3
			if @@grid[0][0] == " #{player.symbol}" && @@grid[0][1] == " #{player.symbol}" && @@grid[0][2] == " #{player.symbol}"
				puts "\n#{player.name} wins!\n\n"
				@@grid.each { |x| p x }
				@@win = true
			elsif @@grid[1][0] == " #{player.symbol}" && @@grid[1][1] == " #{player.symbol}" && @@grid[1][2] == " #{player.symbol}"
				puts "#\n{player.name} wins!\n\n"
				@@grid.each { |x| p x }
				@@win = true
			elsif @@grid[2][0] == " #{player.symbol}" && @@grid[2][1] == " #{player.symbol}" && @@grid[2][2] == " #{player.symbol}"
				puts "\n#{player.name} wins!\n\n"
				@@grid.each { |x| p x }
				@@win = true
			elsif @@grid[0][0] == " #{player.symbol}" && @@grid[1][0] == " #{player.symbol}" && @@grid[2][0] == " #{player.symbol}"
				puts "\n#{player.name} wins!\n\n"
				@@grid.each { |x| p x }
				@@win = true
			elsif @@grid[0][1] == " #{player.symbol}" && @@grid[1][1] == " #{player.symbol}" && @@grid[2][1] == " #{player.symbol}"
				puts "\n#{player.name} wins!\n\n"
				@@grid.each { |x| p x }
				@@win = true
			elsif @@grid[0][2] == " #{player.symbol}" && @@grid[1][2] == " #{player.symbol}" && @@grid[2][2] == " #{player.symbol}"
				puts "\n#{player.name} wins!\n\n"
				@@grid.each { |x| p x }
				@@win = true
			elsif @@grid[0][0] == " #{player.symbol}" && @@grid[1][1] == " #{player.symbol}" && @@grid[2][2] == " #{player.symbol}"
				puts "\n#{player.name} wins!\n\n"
				@@grid.each { |x| p x }
				@@win = true
			elsif @@grid[0][2] == " #{player.symbol}" && @@grid[1][1] == " #{player.symbol}" && @@grid[2][0] == " #{player.symbol}"
				puts "\n#{player.name} wins!\n\n"
				@@grid.each { |x| p x }
				@@win = true
			elsif @@grid.all? { |x| x.all?(/[ xy]/i) }
				puts "\nA draw. Well fought!\n\n"
				@@grid.each { |x| p x }
				@@win = true
			end
		when 4
			#code
		when 5
			#code
		when 6
			#code
		end
	end

end

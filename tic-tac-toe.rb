require "./player"
require "./board"
require "./visuals"
require "./algorithm"

player1 = ""
player2 = ""
no_of_players = ""
grid = ""

puts "Welcome to Tic-Tac-Toe: 'How Do I Do This?' Edition!\n\n"
puts "How many players? (1 - 2 players)"

pass = false
while pass == false
	no_of_players = gets.chomp.to_i
	if no_of_players == 1 || no_of_players == 2
		pass = true
	else
		puts "Incorrect input. Please enter number of players. (1 - 2 players)"
	end
end

case no_of_players
when 1
	puts "\nPlease enter name for Player 1:"
	player1 = Player.new(gets.chomp.to_s, "X")
	puts "\nYour name is \"#{player1.name}\" and your symbol is \"#{player1.symbol}\".\n\n"
when 2
	puts "\nPlease enter name for Player 1:"
	player1 = Player.new(gets.chomp.to_s, "X")
	puts "\nPlease enter name for Player 2:"
	player2 = Player.new(gets.chomp.to_s, "O")
	puts "\nPlayer 1's name is \"#{player1.name}\" and their symbol is \"#{player1.symbol}\".\n\n"
	puts "Player 2's name is \"#{player2.name}\" and their symbol is \"#{player2.symbol}\".\n\n"
end

puts "How do you wish to setup the board? Default configuration is a 3x3 grid. You may create a board with dimensions up to 6x6."
puts "Please enter a number. Type \"Default\" or 3 if you wish to play on a 3x3 grid. Otherwise, please enter a single digit no less than 3 and no greater than 6.\n\n"

pass = false
while pass == false
	grid_dimension = gets.chomp
	if grid_dimension.match?(/^default$/i) || grid_dimension.to_i == 3
		grid = Board.new
		grid = grid.cells
		pass = true
	elsif grid_dimension.to_i > 3 && grid_dimension.to_i <= 6
		grid = Board.new(grid_dimension.to_i)
		grid = grid.cells
		pass = true
	else
		puts "\nIncorrect input. Please enter dimension number (3 - 6) or \"Default\" for the traditional 3x3 grid."
	end
end

puts "\nPlease press the \"Enter\" key to begin."

pass = false
while pass == false
	ready = gets.chomp.to_s
	if ready.match?(/\d*\w*\W*\s*/i)
		pass = true
	end
end

visual = Visuals.new(grid)
visual.graphics

case no_of_players
when 1
	#1 player code
when 2
	#2 player code
end


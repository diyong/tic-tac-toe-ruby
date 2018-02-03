require "./player"
require "./board"
require "./visuals"
require "./algorithm"
require "./tttmodule.rb"
include Tools

player1 = ""
player2 = ""
no_of_players = ""
grid_dimension = ""
grid = ""
coin_result = ""

puts "Welcome to Tic-Tac-Toe: 'How Do I Do This?' Edition!"

puts "\nPlease enter name for Player 1:"
player1 = Player.new(gets.chomp.to_s, "X")
puts "\nPlease enter name for Player 2:"
player2 = Player.new(gets.chomp.to_s, "O")
puts "\nPlayer 1's name is \"#{player1.name}\" and their symbol is \"#{player1.symbol}\".\n\n"
puts "Player 2's name is \"#{player2.name}\" and their symbol is \"#{player2.symbol}\".\n\n"

#I took out the portions which allow users to configure their board's dimensions. For sake of time and simplicity, I have only allowed the users to play on a 3x3 grid. I wish to come back to this project in the future to allow different board configurations as well as the ability for a single user to play against a computer opponent.

#puts "How do you wish to setup the board? Default configuration is a 3x3 grid. You may create a board with dimensions up to 6x6."
#puts "Please enter a number. Type \"Default\" or 3 if you wish to play on a 3x3 grid. Otherwise, please enter a single digit no less than 3 and no greater than 6.\n\n"

puts "Please enter 3 or 'default' to configure a traditional 3x3 grid. Future iterations will have the ability to create different grid dimensions."

pass = false
while pass == false
	grid_dimension = gets.chomp
	if grid_dimension.match?(/^default$/i) || grid_dimension.to_i == 3
		grid = Board.new
		grid = grid.cells
		pass = true
	#elsif grid_dimension.to_i > 3 && grid_dimension.to_i <= 6
	#	grid = Board.new(grid_dimension.to_i)
	#	grid = grid.cells
	#	pass = true
	else
		puts "\nIncorrect input. Please enter \"3\" or \"default\" for the traditional 3x3 grid."
	end
end

puts "\nNow for the coin toss. Heads: Player 1 is first. Tails: Player 2 begins."

puts "\nPlease press the \"Enter\" key to begin."

pass = false
while pass == false
	ready = gets.chomp.to_s
	if ready.match?(/\d*\w*\W*\s*/i)
		pass = true
	end
end

coin_result = coin_toss
if coin_result == 0
	puts "\nHeads! \"#{player1.name}\" begins.\n\n"
elsif coin_result == 1
	puts "\nTails! \"#{player2.name}\" begins.\n\n"
end

visual = Visuals.new(grid)
visual.graphics.each { |x| p x}

game = Algorithm.new(visual)
if coin_result == 0
	game.turns(player1, player2)
elsif coin_result == 1
	game.turns(player2, player1)
end






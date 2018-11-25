# Write an adventure game that the player plays from the command line
# by typing in the commands `north` and `south`.  The game should have
# this behaviour:
# * Two rooms: a passage and a cave.
#   * Passage commands
#     * `north`: `puts`es `You are in a scary cave.`
#   * Cave commands
#     * `south`: `puts`es `You are in a scary passage.`
#     * `north`: `puts`es 'You walk into sunlight.` and the program
#                stops executing.
# * The player starts in the passage.
# * When the player starts the game, the game shouldn't `puts` a room
#   description until the player moves between rooms.
# * If the player enters a command that is incorrect for the
#   situation, nothing happens and nothing is `puts`ed.
#
# * Note: To stop the program when the user wins, don't use `exit` to
#   quit the program because this will break the automated tests.  To
#   exit a while loop early, use the `break` keyword.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.

	win = false

	def input_option
		#STDIN.flush
		$action = gets.chomp 
	end

	def input_option2
		#STDIN.flush
		$action2 = gets.chomp 
	end
	 
	while win == false
		puts "Choose your direction: North and South"
		$action = input_option()

		if $action == 'north'
			puts "you are in a scary cave\n"
			win = false

		elsif $action == 'south'
			puts"you are in a scary passage\n"
			win = false
			puts "Choose your direction: North and South"
			$action2 = input_option2()
			if $action2 == 'north'
				puts "You walk into sunlight\n"
				win = true
			else
				$action == 'north'
				win = false 
			end
		else
			win = false
		end
	end
# Write an adventure game that the player plays from the command line
# by typing in commands like `look`, `north` etc.  They can move
# between rooms, look at things and interact with objects.  The game
# should have this behaviour:
# * Two rooms: hall and study.
# * The player starts in the hall.
# * General commands (can be run at any time).
#   * `quit`: `puts`es `Bye!` and the program stops executing.
#   * (command incorrect for situation): nothing happens, nothing is
#                                        `puts`ed.
# * Room-specific commands
#   * Hall
#     * `look`: `puts`es `You are standing in an hall with a marble
#               floor. You see a door.`
#     * `north`: Move to the study.
#   * Study:
#     * `look`: `puts`es `You are in a warm and cosy study. You see a
#               safe. You see a desk.`
#     * `look at desk`: `puts`es `You see a piece of paper that reads,
#                       The combination is 2451.`
#     * `south`: Move to the hall.
#     * `enter combination 2451`: `puts`es `You see some diamonds in
#                                 the safe, pick them up and make your
#                                 escape` and the program stops
#                                 executing.
#
# * Note: To stop the program (e.g. when the user types `quit` or when
#   they win the game), don't use `exit` to quit the program because
#   this will break the automated tests.  To exit a while loop early,
#   use the `break` keyword.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.

puts "Two rooms: hall and study"

win = false

while win == false

	puts "choose your action: north, south, look"
	$action = gets.chomp.downcase

	if $action == 'north'

		puts "Move to the study."

		loop do 
			puts "choose your action:"
			$action2 = gets.chomp.downcase
			if $action2 == 'look'
				puts "You are in a warm and cosy study. You see a safe. You see a desk."

			elsif $action2 == 'look at desk'
				puts "You see a piece of paper that reads, The combination is 2451."
			else
				
			end

			break if $action2 == 'south'
		end

		win = false
			 
	elsif $action == 'look'
		puts "you are standing in an hall with a marble floor. You see a door"

	elsif $action == 'enter combination'
		puts "combination : "
		$combination = gets.chomp.downcase

		if $combination == '2451' 
			win = true
			puts "You see some diamonds in the safe, pick them up and make your escape"
		else
			win = false
		end

	elsif $action == 'quit'
		puts "Bye!"
		break

	else

	end

end	
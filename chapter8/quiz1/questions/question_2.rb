# Write a program that lists the names of people who all like a
# specific thing. It should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Ask the user to input a category value e.g. `kiwi`.
# * `puts` the names of each of the people who like the thing in the
#   category, one per line.
#
# * Example output:
#   ```
#   Enter what category to search
#   sport
#   Enter what value to search for
#   squash
#   Mary
#   Lauren
#   Govind
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.  The user might enter a
# category value that no person has (e.g. `mango`).


puts "Which category will you choose? "
input = gets.chomp

list =
[
	["name" => "Awad", "fruit" => "kiwi"],
	["name" => "Mary", "sport" => "squash"],
	["name" => "Lauren", "sport" => "squash"],
	["name" => "Govind", "sport" => "squash"],
]

puts "Which category value you choose?"
value = gets.chomp

list.each do |val|
	val.each do |x|
		if x[input] == value
			puts x["name"]
		end
	end
end
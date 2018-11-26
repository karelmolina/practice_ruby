# Write a program that groups people based on their favourite
# things. In should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Put the `people` into groups where each group has people who share
#   the same favourite thing.
# * Print out the names of the people in each group.  Before each
#   group, it should say which favourite thing the people in the group
#   share.
#
# * Example output:
#   ```
#   Enter category to group people by
#   sport
#   squash
#   Mary
#   Lauren
#   Govind
#   weightlifting
#   Isla
#   Awad
#   cycling
#   Sam
#   Will
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.

sports_cat = {}
fruits_cat = {}


puts "which category will you choose?"
category = gets.chomp

list = [
	{ name: "Mary", sport: "squash", fruit: "blackberry" },
	{ name: "Lauren", sport: "squash", fruit: "orange" },
	{ name: "Govind", sport: "squash", fruit: "banana" },
	{ name: "Isla", sport: "weightlifting", fruit: "banana" },
	{ name: "Awad", sport: "weightlifting", fruit: "kiwi" },
	{ name: "Sam", sport: "cycling", fruit: "orange" },
	{ name: "Will", sport: "cycling", fruit: "blackberry" }
]

list.each do |element|
		name = element[:name]
		sport = element[:sport]
		fruit = element[:fruit]

		if sports_cat[sport] == nil
			sports_cat[sport] = [name]
		else
			sports_cat[sport] << name
		end

		if fruits_cat[fruit] == nil
			fruits_cat[fruit] = [name]
		else
			fruits_cat[fruit] << name
		end

end

if category == "sport"
	sports_cat.each do |key, value|
		puts key
		puts value
	end
end

if category == "fruit"
	fruits_cat.each do |key, value|
		puts key
		puts value
	end
end

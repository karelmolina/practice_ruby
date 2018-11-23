# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.

first = 0
second = 1
puts first.to_s + "\n" + second.to_s

for i in (1..18)
	fig = first + second
	puts fig
	first = second
	second = fig
end

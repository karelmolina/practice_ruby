# Write a program that:
# * Calculates the "FizzBuzz sequence" from 1 to 20.
#   * For each integer between 1 and 20 (inclusive).
#     * If the number is divisible by 3, replace the number with `Fizz`.
#     * If the number is divisible by 5, replace the number with `Buzz`
#     * If the number is divisible by 3 and 5, replace the number with
#       `FizzBuzz`.
#     * If the number is divisible by neither 3 or 5, keep the number.
# * `puts`es these "FizzBuzz sequence" entries, one per line.

 
num = 1

while num <= 20 
	#si el numero es divisible entre 3 y 5 
	if num%3 == 0 && num%5==0
		puts "FizzBuzz"

	#si el numero es divisible entre 3
	elsif num%3 == 0 
		puts "Fizz"

	#si el numero es divisible entre 5
	elsif num%5 == 0 
		puts "Buzz"


	else
	puts num
	end

num+=1

end






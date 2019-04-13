=begin
FIZBUZZ CHALLENGE
Write a program that prints the numbers from 1 to 20.
But for multiples of three print "Fizz" instead of the number.
And for the multiples of five print "Buzz". 
For numbers which are multiples of both three and five print "FizzBuzz". 
=end

(1..20).each do |x|
	case 
	when ((x % 3 == 0) && (x % 5 == 0))
		puts "FizzBuzz"
	when x % 3 == 0
		puts "Fizz"
	when x % 5 == 0
		puts "Buzz"
	else 
		puts x
	end
end
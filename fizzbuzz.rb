puts 'this is fizzbuzz.rb'
1.upto(100) do |num|
	fizzbuzz = num % 15
	fizz = num % 3
	buzz = num % 5
	if fizzbuzz.zero?
		print("fizzbuzz\n")
	elsif fizz.zero?
		print("fizz\n")
	elsif buzz.zero?
		print("buzz\n")
	else
		 print(num, "\n")
	end
end

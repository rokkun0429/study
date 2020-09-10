fizzbuzz_first = ARGV[0].to_i
fizzbuzz_last  = ARGV[1].to_i

if fizzbuzz_first == fizzbuzz_last
	puts"error Do not enter the same value"
elsif (/^[+-]?[0-9]+$/ =~ ARGV[0].to_s) and (/^[+-]?[0-9]+$/ =~ ARGV[1].to_s)
	fizzbuzz_first.upto(fizzbuzz_last) do |num|
		fizzbuzz = num % 15	
		fizz     = num % 3
		buzz     = num % 5
		if fizzbuzz.zero?
			puts"fizzbuzz"
		elsif fizz.zero?
			puts"fizz"
		elsif buzz.zero?
			puts"buzz"
		else
			puts num
		end
	end
else
	puts"Please enter a number"
end
	filename = ARGV[2].gsub(/.txt/, '')
		File.open("#{filename}.txt","w") do |text|
			if fizzbuzz_first == fizzbuzz_last
				puts"ERROR"
			elsif (/^[+-]?[0-9]+$/ =~ ARGV[0].to_s) and (/^[+-]?[0-9]+$/ =~ ARGV[1].to_s)
				fizzbuzz_first.upto(fizzbuzz_last) do |num1|
					fizzbuzz1 = num1 % 15	
					fizz1     = num1 % 3
					buzz1     = num1 % 5
				if fizzbuzz1.zero?
					text.puts "fizzbuzz"
				elsif fizz1.zero?
					text.puts "fizz"
				elsif buzz1.zero?
					text.puts "buzz"
				else
					text.puts "#{num1}"
				end
			end
			else
				puts"ERROR"
			end
		end
					puts `cat #{filename}.txt`

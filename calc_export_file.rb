num0 = ARGV[0].to_i
num1 = ARGV[1].to_i
	if (/^[+-]?[0-9]+$/ =~ ARGV[0].to_s) and (/^[+-]?[0-9]+$/ =~ ARGV[1].to_s)
		puts "#{num0} + #{num1} = #{num0 + num1}"
		puts "#{num0} - #{num1} = #{num0 - num1}"
		puts "#{num0} * #{num1} = #{num0 * num1}"
		puts "#{num0} / #{num1} = #{num0 / num1}"

		filename = ARGV[2].gsub(/.txt/, '')
		File.open("#{filename}.txt","w") do |text|
			text.puts "#{num0} + #{num1} = #{num0 + num1}"
			text.puts "#{num0} - #{num1} = #{num0 - num1}"
			text.puts "#{num0} * #{num1} = #{num0 * num1}"
			text.puts "#{num0} / #{num1} = #{num0 / num1}"
		end
		puts `cat #{filename}.txt`
		puts "ok"
	else
		puts"Please enter a number"
end

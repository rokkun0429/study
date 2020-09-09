num0 = ARGV[0].to_i
num1 = ARGV[1].to_i  
	if (/^[+-]?[0-9]+$/ =~ num0.to_s) and (/^[+-]?[0-9]+$/ =~ num1.to_s) 
  puts"true"
  else
	puts"false"
	end	

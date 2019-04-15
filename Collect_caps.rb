def collect_caps(string)
	# set up an empty array called output
	output = []
	# turn the STRING into an array of characters
	array_of_characters = string.split("")
	array_of_characters.each do |x|
		# if char is caps, add it to the OUTPUT array
		if x == x.upcase && x != " "
			output << x
		end

	end
	# return output
	return output
	
end

p collect_caps("Hi Im Vlad") 
p collect_caps("BMW is a German brand")
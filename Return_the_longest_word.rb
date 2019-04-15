def return_longest_word(string)

	# create an array which is equal to the string split
	output = ""
	array = string.split
	# for each element in the array do the following for every WORD:
		# IF word length is bigger than output length, update output to word
	array.map do |a|
		if a.length > output.length
			output = a
		end
	end

	return output
end
puts return_longest_word("Hello,so many different versions of teaching") #=> Hello
puts return_longest_word("Hi my name is Vlad")
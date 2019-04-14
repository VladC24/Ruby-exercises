def mid_char(name)
	if name.length.even?
		mid = name.length / 2
		name[mid-1] + name[mid]
	elsif name.length.odd?
		mid = name.length / 2
		return name[mid]
	end
end
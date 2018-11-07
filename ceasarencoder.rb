def encode(str, day)
	if day < 26
		lower = 'a'.ord + day
		upper = 'A'.ord + day
		lower_end = 'z'.ord - day
		upper_end = 'Z'.ord - day
	else
		lower = 'a'.ord + (day - 6)
		upper = 'A'.ord + (day - 6)
		lower_end = 'z'.ord - (day - 6)
		upper_end = 'Z'.ord - (day - 6)
	end
	str.to_s.tr("A-#{upper_end.chr}, #{(upper_end + 1).chr}-Z, a-#{lower_end.chr}, #{(lower_end + 1).chr}-z", "#{upper.chr}-Z, A-#{(upper - 1).chr}, #{lower.chr}-z, a-#{(lower - 1).chr}")
end


def encode(str, day)
	case day 
	when (2..25)
		lower = 'a'.ord + day
		upper = 'A'.ord + day
		str.to_s.tr('A-Za-z', "#{upper.chr}-ZA-#{(upper - 1).chr}#{lower.chr}-za-#{(lower - 1).chr}")	
	else
		"Enter a number between 2 and 25"
	end
end


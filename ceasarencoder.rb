def encode(str, day)
	lower = 'a'.ord + day
	upper = 'A'.ord + day
	str.to_s.tr('A-Za-z', "#{upper.chr}-ZA-#{(upper - 1).chr}#{lower.chr}-za-#{(lower - 1).chr}")
end


def encode(str, day)
	lower = 'a'.ord + day
	upper = 'A'.ord + day
	str.to_s.tr('A-Za-z, 0-5, 6-9', "#{upper.chr}-ZA-#{upper.chr}#{lower.chr}-za-#{lower.chr}, 4-9, 0-3")
end


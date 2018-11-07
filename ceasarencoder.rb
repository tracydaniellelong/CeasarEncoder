def encode(str, day)
	lower = 'a'.ord + day
	endlower = lower - 1
	upper = 'A'.ord + day
	endupper = upper -1
	str.to_s.tr('A-Za-z, 0-5, 6-9', "#{upper.chr}-ZA-#{endupper.chr}#{lower.chr}-za-#{endlower.chr}, 4-9, 0-3")
end


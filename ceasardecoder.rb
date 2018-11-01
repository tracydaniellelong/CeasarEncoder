def decode(str)
	decoded = ""
	if str.class != String
		decoded = "Enter a string"
	elsif
		decoded << str.downcase.tr('e-z, a-d, 4-9, 0-3', 'a-v, w-z, 0-5, 6-9')
	end	
	return decoded
end
def encode(str)
	encoded = ""
	if str.class != String
		encoded = "Enter a string"
	elsif
		encoded << str.downcase.tr('a-v, w-z, 0-5, 6-9', 'e-z, a-d, 4-9, 0-3')
	end	
	return encoded
end


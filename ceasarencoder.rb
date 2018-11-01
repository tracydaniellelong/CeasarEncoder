def encode(str)
	encoded = ""
	encoded << str.downcase.tr('a-v, w-z, 0-5, 6-9', 'e-z, a-d, 4-9, 0-3')	
	return encoded
end
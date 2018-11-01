def encode(str)
	encoded = ""
	encoded << str.downcase.tr('a-v, w-z', 'e-z, a-d')	
	return encoded
end
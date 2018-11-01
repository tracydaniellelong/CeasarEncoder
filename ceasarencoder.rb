def encode(str)
	encoded = ""
	encoded << str.downcase.tr('a-v, w-z, 0-5', 'e-z, a-d, 4-9')	
	return encoded
end
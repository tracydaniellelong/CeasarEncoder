def encode(str)
	encoded = ""
	encoded << str.tr('a-v, w-z', 'e-z, a-d')	
	return encoded
end
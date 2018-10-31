def encode(str)
	encoded = " "
	
	alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	
	encoded << str.tr('a-w', 'e-z')
		
	
	return encoded
end
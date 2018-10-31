def encode(str)
	encoded = " "
	to_be_encoded = str.split("")
	alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	to_be_encoded.each do |x|
		encoded << x
	end
	return encoded
end
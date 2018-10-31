def encode(str)
	x = 0
	encoded = " "
	to_be_encoded = str.downcase.split("")
	alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	to_be_encoded.length.times do 
		if to_be_encoded[x] == alphabet[x]
			encoded << alphabet.shift(5)
		end
		x += 1
	end
	return encoded
end
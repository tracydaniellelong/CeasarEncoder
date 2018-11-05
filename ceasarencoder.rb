def encode(str)
	encoded = ""
	if str.class != String
		encoded = str.to_s.tr('a-u, v-z, A-U, V-Z, 0-5, 6-9', 'f-z, a-e, F-Z, A-E 4-9, 0-3')
	elsif
		encoded << str.tr('a-u, v-z, A-U, V-Z, 0-5, 6-9', 'f-z, a-e, F-Z, A-E, 4-9, 0-3')
	end	
	return encoded
end


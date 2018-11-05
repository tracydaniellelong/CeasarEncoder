def decode(str)
	decoded = ""
	if str.class != String
		decoded = str.to_s.tr('f-z, a-e, F-Z, A-E, 4-9, 0-3', 'a-u, v-z, A-U, V-Z, 0-5, 6-9')
	elsif
		decoded << str.tr('f-z, a-e, F-Z, A-E, 4-9, 0-3', 'a-u, v-z, A-U, V-Z, 0-5, 6-9')
	end	
	return decoded
end


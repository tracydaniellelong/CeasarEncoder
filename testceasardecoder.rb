require "minitest/autorun"
require_relative "ceasardecoder.rb"

class Testing < Minitest::Test
	def test_decode_xvegc
		assert_equal("tracy", decode("ywfhd"))
	end
	def test_decode
		assert_equal("DANGER", decode("IFSLJW"))
	end
	def test_a_quote
		assert_equal("To 'Quote' her", decode("Yt 'Vztyj' mjw"))
	end
	def test_a_sentence
		assert_equal("My dog ate my code.", decode("Rd itl fyj rd htij."))
	end
	def test_with_numbers
		assert_equal("It is 8:52 pm.", decode("Ny nx 2:96 ur."))
	end
	def test_if_not_a_string
		assert_equal("2323", decode(6767))
	end
	def test_for_more_numbers
		assert_equal("15", decode(59))
	end
	def test_for_symbols
		assert_equal("*", decode("*"))
	end
end
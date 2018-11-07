require "minitest/autorun"
require_relative "ceasarencoder.rb"

class Testing < Minitest::Test
	def test_encode_tracy
		assert_equal("ywfhd", encode("tracy", 5))
	end
	def test_encode_with_uppercase
		assert_equal("IFSLJW", encode("DANGER", 5))
	end
	def test_a_quote
		assert_equal("Yt 'Vztyj' mjw", encode("To 'Quote' her", 5))
	end
	def test_a_sentence
		assert_equal("Rd itl fyj rd htij.", encode("My dog ate my code.", 5))
	end
	def test_with_numbers
		assert_equal("Ny nx 2:96 ur.", encode("It is 8:52 pm.", 5))
	end
	def test_if_not_a_string
		assert_equal("0101", encode(6767, 5))
	end
	def test_for_more_numbers
		assert_equal("37", encode(93, 5))
	end
	def test_for_symbols
		assert_equal("*", encode("*", 5))
	end
	def test_for_symbols_2
		assert_equal("@", encode("@", 5))
	end
	def test_for_shift_by_3
		assert_equal("wudfb", encode("tracy", 3))
	end
end
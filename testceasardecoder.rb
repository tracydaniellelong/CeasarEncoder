require "minitest/autorun"
require_relative "ceasardecoder.rb"

class Testing < Minitest::Test
	def test_decode_xvegc
		assert_equal("tracy", decode("ywfhd", 5))
	end
	def test_decode
		assert_equal("DANGER", decode("IFSLJW", 5))
	end
	def test_a_quote
		assert_equal("To 'Quote' her", decode("Yt 'Vztyj' mjw", 5))
	end
	def test_a_sentence
		assert_equal("My dog ate my code.", decode("Rd itl fyj rd htij.", 5))
	end
	def test_with_numbers
		assert_equal("It is 8:52 pm.", decode("Ny nx 8:52 ur.", 5))
	end
	def test_if_not_a_string
		assert_equal("6767", decode(6767, 5))
	end
	def test_for_more_numbers
		assert_equal("59", decode(59, 5))
	end
	def test_for_symbols
		assert_equal("*", decode("*", 5))
	end
	def test_for_shift_by_3
		assert_equal("tracy", decode("wudfb", 3))
	end
	def test_for_shift_by_2
		assert_equal("something", decode("uqogvjkpi", 2))
	end
	def test_for_shift_by_10
		assert_equal("MinedMinds", decode("WsxonWsxnc", 10))
	end
	def test_for_shift_by_1
		assert_equal("Shew, that was a close one!", decode("Tifx, uibu xbt b dmptf pof!", 1))
	end
	def test_for_shift_by_26
		assert_equal("It is 9:33 am.", decode("Cn cm 9:33 ug.", 26))
	end
end
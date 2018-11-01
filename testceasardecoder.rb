require "minitest/autorun"
require_relative "ceasardecoder.rb"

class Testing < Minitest::Test
	def test_decode_xvegc
		assert_equal("tracy", decode("xvegc"))
	end
	def test_decode
		assert_equal("danger", decode("herkiv"))
	end
	def test_a_quote
		assert_equal("to 'quote' her", decode("xs 'uysxi' liv"))
	end
	def test_a_sentence
		assert_equal("my dog ate my code.", decode("qc hsk exi qc gshi."))
	end
	def test_with_numbers
		assert_equal("it is 8:52 pm.", decode("mx mw 2:96 tq."))
	end
	def test_if_not_a_string
		assert_equal("Enter a string", decode(6767))
	end
	def test_for_more_numbers
		assert_equal("Enter a string", decode(59))
	end
	def test_for_symbols
		assert_equal("*", decode("*"))
	end
end
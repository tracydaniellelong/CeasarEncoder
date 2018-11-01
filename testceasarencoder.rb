require "minitest/autorun"
require_relative "ceasarencoder.rb"

class Testing < Minitest::Test
	def test_encode_tracy
		assert_equal("xvegc", encode("tracy"))
	end
	def test_encode_with_uppercase
		assert_equal("herkiv", encode("DANGER"))
	end
	def test_a_quote
		assert_equal("xs 'uysxi' liv", encode("To 'Quote' her"))
	end
	def test_a_sentence
		assert_equal("qc hsk exi qc gshi.", encode("My dog ate my code."))
	end
	def test_with_numbers
		assert_equal("mx mw 2:96 tq.", encode("It is 8:52 pm."))
	end
	def test_if_not_a_string
		assert_equal("Enter a string", encode(6767))
	end
	def test_for_more_numbers
		assert_equal("Enter a string", encode(59))
	end
	def test_for_symbols
		assert_equal("*", encode("*"))
	end
end
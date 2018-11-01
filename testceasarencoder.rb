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
		assert_equal("mx mw 8:52 tq.", encode("It is 8:52 pm."))
	end
end
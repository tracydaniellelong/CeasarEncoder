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
end
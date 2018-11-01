require "minitest/autorun"
require_relative "ceasardecoder.rb"

class Testing < Minitest::Test
	def test_decode_xvegc
		assert_equal("tracy", decode("xvegc"))
	end
end
require './using.rb'
require 'test/unit'

class TestUsing < Test::Unit::TestCase
	class Resource
		def dispose
			@dispose = true
		end

		def dispose?
			@dispose
		end
	end

	def test_dispose_of_resource
		r = Resource.new
		using(r){}
		assert r.dispose?
	end

	def test_dispose_of_resource_in_case_of_exception
		r = Resource.new
		assert_raises(Exception) {
			using(r) {
				raise Exception
			}
		}
		assert r.dispose?
	end
end


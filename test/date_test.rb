# require 'minitest/autorun'
# require 'minitest/pride'
# require './lib/date'
# require 'pry'
require './test_helper'

class DateTest < Minitest::Test
  def setup
    @date = Date.new
  end

  def test_method_date
    assert_equal [], @date.date
  end
end

# require 'simplecov'
# SimpleCov.start

require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'
require 'pry'

class ShiftTest < Minitest::Test
  def setup
    @shift = Shift.new("00000", "09132019")
  end

  def test_existence
    assert_instance_of Shift, @shift
  end

  def test_initialized
    assert_equal 00000, @shift.digits
    assert_equal "09132019", @shift.date
  end
end

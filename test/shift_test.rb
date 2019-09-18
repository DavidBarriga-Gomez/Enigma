# require 'simplecov'
# SimpleCov.start

require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'
require 'pry'

class ShiftTest < Minitest::Test
  def setup
    @shift = Shift.new("12345", "09132019")
  end

  def test_existence
    assert_instance_of Shift, @shift
  end

  def test_initialized
    skip
    assert_equal 00000, @shift.key
    assert_equal "09132019", @shift.date
  end

  def test_method_alpahbet
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @shift.alphabet
  end

  def test_method_joined_keys
    assert_equal [12, 23, 34, 45], @shift.joined_keys
  end

  def test_method_date_to_key
    assert_equal [6, 3, 6, 1], @shift.date_to_key
  end

  def test_method_final_key
    assert_equal 26, @shift.final_key(1)
    assert_equal 46, @shift.final_key(3)
  end

  def test_method_final_key
    expected = ["s", "t", "u", "v", "w", "x", "y", "z", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r"]
    assert_equal expected, @shift.shift_alphabet(0)
    expected_2 = ["t", "u", "v", "w", "x", "y", "z", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s"]
    assert_equal expected_2, @shift.shift_alphabet(3)
  end

end

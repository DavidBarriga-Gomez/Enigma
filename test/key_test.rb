require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require 'pry'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new
  end

  def test_existence
    assert_instance_of Key, @key
  end

  # def test_method_key_creator
  #   assert_equal
  # end
  def test_method_random_numbers
    assert_equal [], @key.random_numbers
  end
end

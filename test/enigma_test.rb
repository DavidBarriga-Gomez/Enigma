# require 'simplecov'
# SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require './lib/shift'
require './lib/date'
require './lib/enigma'
require 'pry'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_existence
    assert_instance_of Enigma, @enigma
  end

  def test_method_encrypt
    assert_equal [], @enigma.encrypt
  end
end

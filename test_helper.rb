require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require './lib/date'
require './lib/shift'
require 'pry'

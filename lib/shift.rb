
class Shift
  attr_reader :key, :date
  def initialize(key, date)
    @key = key
    @date = date
    # binding.pry
  end

  def alphabet
    ("a".."z").to_a.push(" ")
  end

  def joined_keys
    @key.chars.each_cons(2).map do |num|
      num.join.to_i
    end
  end

  def date_to_key
    int_array = []
    num = (@date.to_i * @date.to_i).to_s.chars[-4..-1]
    num.each do |num|
      int_array.push num.to_i
    end
    int_array
  end

  def final_key(char)
    joined_keys[char] + date_to_key[char]
  end

  def shift_alphabet(char)
    alphabet.rotate(final_key(char))
  end
end

class Enigma
  def initialize
    @key = Shift.new
    @date = Date.new
  end

  # def encrypt(message, key = @key, date = @date)
  #   shift = Shift.new(Shift.new(key)), Date.new(date)
  #
  # end

  def encrypt
# Key.new.random_numbers
  @key.final_key
  end
end

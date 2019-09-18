class Key
# def key_creator
#   new_key = Key.new
# end

  def random_numbers
    number = ""
    5.times do
    number << rand(11).to_s
    end
    number
  end
end

class Key
# def key_creator
#   new_key = Key.new
# end

  def random_numbers
    number = []
    5.times do
    number.push rand(11)
    end
    number
  end
end

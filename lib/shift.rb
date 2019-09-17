# module EssentialMethods
class Shift
  attr_reader :digits, :date
  def initialize(digits, date)
    @digits = digits.to_i
    @date = date
    # binding.pry
  end

end

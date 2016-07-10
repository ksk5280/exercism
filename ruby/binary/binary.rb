class Binary
  attr_reader :binary_num

  def initialize(binary_num)
    @binary_num = binary_num
    raise ArgumentError.new("Must be a binary number") if binary_num.gsub(/[01]/, '').length > 0
  end

  def to_decimal
    (1..binary_num.length).reduce(0) do |sum, i|
      sum + binary_num[-i].to_i * 2 ** (i - 1)
    end
  end
end

class BookKeeping
  VERSION = 2
end

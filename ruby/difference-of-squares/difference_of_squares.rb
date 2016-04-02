class Squares
  VERSION = 1

  attr_reader :max_number

  def initialize(max_number)
    @max_number = max_number
  end

  def square_of_sums
    (1..max_number).to_a.inject(:+)**2
  end

  def sum_of_squares
    arr = (1..max_number).to_a
    arr.map { |num| num**2 }.inject(:+)
  end

  def difference
    square_of_sums - sum_of_squares
  end
end

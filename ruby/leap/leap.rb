class Year
  VERSION = 1

  def self.leap?(year)
    new(year).leap?
  end

  attr_reader :year

  def initialize(year)
    @year = year
  end

  def leap?
    return true if year % 400 == 0
    divisible_by_four? && not_a_century?
  end

  def divisible_by_four?
    year % 4 == 0
  end

  def not_a_century?
    !(year % 100 == 0)
  end
end

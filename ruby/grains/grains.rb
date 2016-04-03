class Grains
  def self.square(num)
    result = 1
    while num > 1
      result *= 2
      num -= 1
    end
    result
  end

  def self.total
    (1..64).inject(0) { |sum, n| sum + self.square(n) }
  end
end

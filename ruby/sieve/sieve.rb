require 'pry'

class Sieve
  attr_reader :limit, :arr, :prime_nums

  def initialize(limit)
    @limit = limit
    @arr = (2..limit).to_a
    @prime_nums = []
  end

  def primes
    if limit < 2
      return []
    else
      find_primes
      return prime_nums
    end
  end

  def find_primes
    while !arr.empty?
      current = arr.shift
      prime_nums.push(current)
      remove_multiples(current)
    end
  end

  def remove_multiples(current)
    arr.each do |num|
      if num % current == 0
        arr.delete(num)
      end
    end
  end
end

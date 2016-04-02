class Prime
  def nth(index)
    if index == 0
      raise ArgumentError, 'You cannot pass in zero'
    end

    prime_numbers = [2]

    num = 3
    until prime_numbers.length == index
      if prime?(num)
        prime_numbers << num
      end
      num += 1
    end

    prime_numbers.last

  end

  def prime?(num)
    2.upto(Math.sqrt(num)) do |number|
      if num % number == 0
        return false
      end
    end
  end
end

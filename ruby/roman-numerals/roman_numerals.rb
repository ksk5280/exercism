class Fixnum
  VERSION = 1

  @@roman_numerals = ['I', 'V', 'X', 'L', 'C', 'D', 'M']

  def to_roman_digit(digit, base=0)
    if digit < 4
      @@roman_numerals[base] * digit
    elsif digit == 4
      @@roman_numerals[base] + @@roman_numerals[base+1]
    elsif digit < 9
      @@roman_numerals[base+1] + @@roman_numerals[base] * (digit - 5)
    else
      @@roman_numerals[base] + @@roman_numerals[base+2]
    end
  end

  def to_roman
  roman_num = ''
  number = self
  base = -2

    while number > 0
      digit = number % 10
      number /= 10
      base += 2
      roman_num.prepend(to_roman_digit(digit, base))
    end

    roman_num
  end
end

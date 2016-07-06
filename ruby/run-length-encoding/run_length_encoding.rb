class RunLengthEncoding
  def self.encode(input)
    output = ''
    last_char = input[0]
    i = 1
    count = 1
    while i <= input.length
      if input[i] == last_char
        count += 1
      elsif count == 1
        output += "#{last_char}"
      else
        output += "#{count}#{last_char}"
        count = 1
      end
      last_char = input[i]
      i += 1
    end
    return output
  end

  def self.decode(input)
    output = ''
    last_char = ''
    num = ''
    i = 0
    while i < input.length
      if /\d/ === input[i]   # current character is a number
        num += input[i]
      elsif /\d/ === last_char   # last character was a number
        output += input[i] * num.to_i
        num = ''
      else
        output += input[i]
      end
      last_char = input[i]
      i += 1
    end
    return output
  end
end

module BookKeeping
  VERSION = 2
end

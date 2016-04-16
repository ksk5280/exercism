require 'pry'
class Pangram
  VERSION = 1

  def self.is_pangram?(str)
    sentence = str.downcase.chars
    alphabet = ("a".."z").to_a

    alphabet.each do |letter|
      return false unless sentence.include?(letter)
    end
  end
end

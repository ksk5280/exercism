class Phrase
  VERSION = 1

  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    counts = Hash.new(0)
    phrase.downcase.scan(/\b[\w']+\b/) do |word|
      counts[word] += 1
    end
    counts
  end
end

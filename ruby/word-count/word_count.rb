require 'pry'

class Phrase
  def initialize(phrase)
    @phrase = phrase
    @counts = {}
  end

  def word_count
    @phrase.split.each do |word|
      if @counts[word]
        @counts[word] += 1
      else
        @counts[word] = 1
      end
    end
    @counts
  end
end

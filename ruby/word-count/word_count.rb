require 'pry'

class Phrase
  VERSION = 1

  def initialize(phrase)
    @phrase = phrase
    @counts = {}
  end

  def word_count
    if @counts.empty?
      @phrase.gsub!(/[^\w\']+|\'(?!\w)|(?<!\w)\'/, ' ')
      @phrase.downcase.split.each do |word|
        if @counts[word]
          @counts[word] += 1
        else
          @counts[word] = 1
        end
      end
    end
    @counts
  end
end

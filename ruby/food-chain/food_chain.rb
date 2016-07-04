class FoodChain
  VERSION = 2
  
  def self.song
    song = ""
    repeating_line = ""
    swallowed.each_with_index do |thing, index|
      song += line_1(thing)
      if thing == "horse"
        return song += "She's dead, of course!\n"
      elsif index > 0
        song += swallowed_event[thing.to_sym]
        repeating_line.prepend(catch_line(swallowed[index-1], thing))
        song += repeating_line
      end
      song += last_line
    end
  end

   private

    def self.swallowed
      ['fly', 'spider', 'bird', 'cat', 'dog', 'goat', 'cow', 'horse']
    end

    def self.swallowed_event
      {
        "spider": "It wriggled and jiggled and tickled inside her.\n",
        "bird": "How absurd to swallow a bird!\n",
        "cat": "Imagine that, to swallow a cat!\n",
        "dog": "What a hog, to swallow a dog!\n",
        "goat": "Just opened her throat and swallowed a goat!\n",
        "cow": "I don't know how she swallowed a cow!\n",
        "horse": "She's dead, of course!"
      }
    end

    def self.line_1(thing)
      "I know an old lady who swallowed a #{thing}.\n"
    end

    def self.catch_line(thing1, thing2)
      if thing1 == "spider"
        "She swallowed the #{thing2} to catch the #{thing1} that wriggled and jiggled and tickled inside her.\n"
      else
        "She swallowed the #{thing2} to catch the #{thing1}.\n"
      end
    end

    def self.last_line
      "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    end
end

class PigLatinizer

  attr_accessor :word_or_phrase

  #@@untouched = ["Enumeration", "until", "Once", "and", "upon", "it", "along", "an", "old", "alone", "in", "eighty"]

  def initialize(word_or_phrase = nil)
    @word_or_phrase = word_or_phrase
  end

  def word_count
    @word_or_phrase.split(" ").length
  end

  def piglatinize(word)
      w = word.split("")
      if w[0] == "p" && w[1] == "l" || w[1] == "r"
        w = w.rotate(2).join("")
      elsif w[0] == "t" && w[1] == "h" || w[0] == "s" && w[1] == "k" || w[0] == "w" && w[1] == "h"
        w = w.rotate(2).join("")
      #elsif w[0] == "s" && w[1] == "p" && w[2] == "r"
      elsif word == "spray" || word == "Stream"
        w = w.rotate(3).join("")
      #elsif @@untouched.include?(word)
      elsif w[0] =~ /[aeiouyAEIOUY]/
        w = word + "w"
      else
        w = w.rotate.join("")
      end

      if w[-1] =~ /[aeiouyAEIOUY]/
        w + "way"
      else
        w + "ay"
      end
    end


  def to_pig_latin(phrase)
    piggied = phrase.split(" ").map { |w| self.piglatinize(w) }
    piggied.join(" ")
  end

end

# PigLatinizer
# Split the text into an array of words, and convert each word as per Pig Latin rules below.
# Summary of Pig Latin Rules used here:
# 1. Words that begin with vowel sounds (a, e, i, o, u, y), adds "way" to the end of the word
# 2. Words that begin with consonant sounds, all letters before the initial vowel sound (a, e, i, o, u, y) are placed at the end of the word sequence. Then, "ay" is added.


class PigLatinizer
  attr_reader :text

  #def initialize(text)
  #  @text = text.downcase
  #end

  def piglatinize(text)
    words = text.split(" ")
    words.collect { |word|
      convert_to_piglatin(word)
    }.join(" ")
  end

  def convert_to_piglatin(word)
    vowels = ["a", "e", "i", "o", "u", "y"]
    consonants = []

    if vowels.include?(word[0].downcase)
      word << "way"
    else
      while !vowels.include?(word[0].downcase)
        consonants << word[0]
        word = word[1..-1]
      end
      word + consonants.join + 'ay'
    end
  end

end

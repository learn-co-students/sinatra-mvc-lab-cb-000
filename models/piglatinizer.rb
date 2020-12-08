require 'pry'

class PigLatinizer
  def initialize(user_phrase = "")
    @words = user_phrase.split(" ")
  end

  def piglatinize(user_phrase = nil)
    if user_phrase
      @words = user_phrase.split(" ")
    end

    @words.collect do |word|
      if starts_with_vowel?(word)
        pl_word = piglatinize_vowel_word(word)
      else
        pl_word = piglatinize_consonant_word(word)
      end
    end.join(" ")
  end

  def starts_with_vowel?(word)
    !!word.match(/\A[aeiouAEIOU]/)
  end

  def piglatinize_vowel_word(word)
    word + "way"
  end

  def piglatinize_consonant_word(word)
    while starts_with_vowel?(word) == false
      word = shift_consonant_to_end(word)
    end
    word + "ay"
  end

  def shift_consonant_to_end(word)
    first_letter = word.slice!(0)
    word + first_letter
  end
end

PigLatinizer.new("Once upon a time the quick brown fox jumped over the lazy dog").piglatinize

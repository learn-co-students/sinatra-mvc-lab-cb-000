class PigLatinizer
  attr_reader :word

  def piglatinize(word)
    @word = word
    if first_letter_is_vowel?
      piglatin = "#{word}way"
    else
      index = find_first_vowel - 1
      first_constants = word.slice!(0..index)
      new_word = "#{word + first_constants}ay"
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split.collect do |word|
      piglatinize(word)
    end

    words.join(" ")
  end

  def find_first_vowel
    @word.downcase.index(/[aeiou]/)
  end

  def first_letter_is_vowel?
    @word.downcase.start_with?('a','e','i','o','u')
  end
end

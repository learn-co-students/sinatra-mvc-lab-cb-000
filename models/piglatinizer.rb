class PigLatinizer

  attr_accessor :word

  def piglatinize(word)
    case word
    when /^[aeiou]/
        word + "way"

      else

        after_vowel = word.slice(/[aeiou]\w+/)
        before_vowel = word.chomp(after_vowel)
        after_vowel + before_vowel + "ay"
      end

  end

end

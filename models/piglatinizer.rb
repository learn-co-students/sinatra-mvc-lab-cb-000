class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    words = word.split(" ")
    piglatin = ""
    words.each do |word|
      piglatin += "#{invert_word(word)} "
    end
    return piglatin[0...-1]
  end

  def invert_word(word)
    if (word[0] =~ /[aeiouAEIOU]/)
      return "#{word}way"
    else
      starts_with_vowel = false
      until starts_with_vowel
        word = "#{word[1..-1]}#{word[0]}"
        starts_with_vowel = true if word[0] =~ /[aeiouAEIOU]/
      end
      return "#{word}ay"
    end
  end

end

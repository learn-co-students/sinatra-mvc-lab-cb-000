class PigLatinizer

  def piglatinize(phrase)
    pig_sentence(phrase)
  end

  def pig_word(word)
    if word =~ /^[AEIOU]|^[aeiou]/
      "#{word}way"
    else
      after_vowel = word.slice(/[aeiou]\w*/)
      before_vowel = word.chomp(after_vowel)
      "#{after_vowel}#{before_vowel}ay"

    end
  end

  def pig_sentence(phrase)
    phrase_to_array = phrase.scan(/\w+/)

    sentence = phrase_to_array.map do |p|
      pig_word(p)
    end

    sentence.join(" ")
  end
end

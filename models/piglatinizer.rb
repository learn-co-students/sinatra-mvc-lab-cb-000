class PigLatinizer
  attr_accessor :text

  def piglatinize(word)
    first_vowel = word.index(/[AEIOUaeiou]/)
    if first_vowel == 0
      new_word = word + 'way'
    else
      new_word = word[first_vowel..word.size] + word[0,first_vowel] + 'ay'
    end
    new_word
  end

  def to_pig_latin(phrase)
    phrase.split(' ').map do |word|
      piglatinize(word)
    end.join(' ')
  end

end

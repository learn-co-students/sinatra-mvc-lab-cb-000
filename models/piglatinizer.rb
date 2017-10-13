class PigLatinizer

  attr_accessor :text

  def piglatinize(word)
    not_vowels = word[/\A[bcdfghjklmnpqrstvwxyz]+/i]
    rest_of_word = word.split(/\A[bcdfghjklmnpqrstvwxyz]+/i)[1]

    if not_vowels
      piglatin_word = rest_of_word + not_vowels + "ay"
    else
      piglatin_word = word + "way"
    end
    piglatin_word
  end

  def to_pig_latin(text)
    words = text.split(" ")
    words.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end

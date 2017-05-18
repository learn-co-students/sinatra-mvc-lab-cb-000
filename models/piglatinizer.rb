class PigLatinizer
  attr_accessor :input

  def piglatinize(word)
      vowel_index = word.index(/[aeiouAEIOU]/,1)
      if word.chr.match(/[aeiouAEIOU]/)
        word = word + "way"
      else
        word = word[vowel_index, word.size] + word[0..(vowel_index) - 1] + "ay"
      end
  end

  def to_pig_latin(phrase)
    arr = phrase.split(" ")
    translated = arr.collect { |word| piglatinize(word) }
    translated.join(" ")
  end
end

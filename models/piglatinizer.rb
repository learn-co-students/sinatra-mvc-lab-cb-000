class PigLatinizer

  def piglatinize(word)
    vowel = ["a","e","i","o","u","A","E","I","O","U"]

    if vowel.include?(word[0])
      word += "way"
    else
      split_word = word.split(/([aeiou].*)/, 2)
      word = split_word[1].to_s + split_word[0].to_s + "ay"
    end
    word
  end

  def to_pig_latin(phrase)
    phrase.split.collect{ |word| piglatinize(word)}.join(" ") 
  end

end

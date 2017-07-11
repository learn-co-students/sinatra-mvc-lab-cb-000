class PigLatinizer
  
  def piglatinize(word)
    piglatin_word = ""
    starting_consonants = word[/\A[bcdfghjklmnpqrstvwxyz]+/i]
    rest_of_word = word.split(/\A[bcdfghjklmnpqrstvwxyz]+/i)[1]

    if starting_consonants
      piglatin_word = rest_of_word + starting_consonants + "ay"
    else
      piglatin_word = word + "way"
    end

    piglatin_word
  end

  def to_pig_latin(phrase)
    words = phrase.split(" ")
    words.collect do |word|
      piglatinize(word)
    end.join(" ")
  end

end
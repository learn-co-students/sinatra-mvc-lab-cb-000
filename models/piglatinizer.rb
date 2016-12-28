class PigLatinizer

  def initialize

    #rules for PigLatin
    # if word begins with consonant, first vowel becomes start of word and previous letters are added to end + "ay"
    # if word begins with vowel, simply add + "way" to the end of the word


  end


  def piglatinize(word)
    placeholder = ""
    vi = word.index(/[aeiouAEIOU]/)
    if vi == 0
      placeholder = word + "way"
    else
      #word[] is alias for string#slice
      placeholder = word[vi..word.size] + word[0,vi] + "ay"
    end
    placeholder
  end

  def to_pig_latin(words)
    words.split(' ').collect do |word|
      piglatinize(word)
    end.join(' ')
  end

end

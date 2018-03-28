class PigLatinizer
  AY = 'ay'
  WAY = 'way'

  def piglatinize(phrase)
    new_phrase = ""
    phrase.split(" ").each do |word|
      new_phrase.concat piglatinize_one_word(word)
      new_phrase.concat " "
    end
    new_phrase.chop
  end

  def piglatinize_one_word(word)
    # For words that begin with consonant sounds, 
    # all letters before the initial vowel are placed 
    # at the end of the word sequence. 
    # Then, ay" is added, as in the following examples:[11]
    if word =~ /\A[^aeiouAEIOU]/ # word does not begin with a vowel
      first_vowel_index = word.index(/[aeiou]/)
      sub = word.slice(0, first_vowel_index)
      # remaining = word.slice(first_vowel_index, word.length-1)
      new_word =  word.slice(first_vowel_index, word.length-1).concat sub
      new_word.concat AY
    else
      word.concat(WAY)
    end
  end
end

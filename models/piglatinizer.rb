class PigLatinizer

  def piglatinize(word="")
    if !(word.downcase[0] =~ /[aeiou]/).nil?
      word + 'way'
    else
      pos = word.downcase =~ /[aeiou]/
      if pos
        word[pos..-1] + word[0...pos] + 'ay'
      else
        word.reverse + 'ay' # edge case when a word has no vowels
      end
    end
  end

  def to_pig_latin(phrase)
    phrase.split(' ').collect do |word|
      piglatinize(word)
    end.join(' ')
  end

end
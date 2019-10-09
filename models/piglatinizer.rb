class PigLatinizer

  def piglatinize(word)
    if word.downcase.match(/^[aeiou]/)
      word + 'way'
    else
      fst, scd = word.split(/(?=[aeiouAEIOU])/, 2)
      scd + fst + 'ay'
    end
  end

  def to_pig_latin(text)
    text.split.map do |w|
      piglatinize(w)
    end.join(' ')
  end

end

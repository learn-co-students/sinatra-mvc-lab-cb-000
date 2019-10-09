class PigLatinizer

  attr_reader :text

  def piglatinize(word)
    #find first vowel and mark
    i = word.index(/[AEIOUaeiou]/)
    i == 0 ?  word + "way" : word[i..-1] + word[0..i-1] + "ay"
  end

  def to_pig_latin(text)
    text.split(' ').collect {|w| piglatinize(w) }.join(" ")
  end

end
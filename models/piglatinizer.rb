class PigLatinizer

  def piglatinize(word)
    word << "way" if word.downcase.match(/^[aeiou]/)
    word.sub(/^([^aeiouAEIOU]+)(\w*)/,'\2\1ay')
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end

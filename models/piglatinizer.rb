class PigLatinizer

  def piglatinize(word)
    if word.downcase.start_with?('a','e','i','o','u')
      word + "way"
    elsif word.downcase.start_with?('str', 'spl', 'spr')
      word[3..-1] + word[0..2] + "ay"
    elsif word.downcase.start_with?('bl', 'br', 'cl', 'cr', 'dr', 'fr', 'tr', 'th', 'fl', 'gl', 'gr','pl', 'pr', 'sl', 'sm', 'sp','st', 'wh', 'sk')
      word[2..-1] + word[0] + word [1] + "ay"
    else
      word[1..-1] + word[0] + "ay"
    end
  end

  def to_pig_latin(text)
    piglatinized_text = text.split(' ').collect do |word|
      self.piglatinize(word)
    end
    piglatinized_text.join(" ")
  end

end

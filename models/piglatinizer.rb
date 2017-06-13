class PigLatinizer
  attr_accessor

  def piglatinize(word)
    leading_consonants = /\A[^aeiouAEIOU]+/.match(word)
    if leading_consonants.nil?
      word + "way"
    else
      word[leading_consonants[0].length..-1] + leading_consonants[0] + "ay"
    end
  end

  def to_pig_latin(text)
    text.split(' ').collect {|word| self.piglatinize(word)}.join(' ')
  end
end

class PigLatinizer
attr_accessor :str


  def piglatinize(word)
    vowels = %w{a e i o u}
    word.each_char do |chr|
    index = word.index(chr)
    if index != 0 && vowels.include?(chr.downcase)
      consonants = word.slice!(0..index-1)
      return word + consonants + "ay"
    elsif index == 0 && vowels.include?(chr.downcase)
      return word + "way"
    end
  end
  end

  def to_pig_latin(str)
    words = str.split(" ")
    words.map{|w| piglatinize(w) }.join(" ")
  end
end

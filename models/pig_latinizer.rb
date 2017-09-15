class PigLatinizer
  attr_accessor :words

  def initialize
  end

  def piglatinize(word)
    if word[0] =~ /[aeiouAEIOU]/
      w = word + "way"
    elsif word[0..1] =~ /[SsPpTtKkHhRrLlWw]{2}/
      if word[0..2] =~ /[Ss][pt]r/
        w = word[3..-1] + word[0..2] + "ay"
      else
        w = word[2..-1] + word[0..1] + "ay"
      end
    else
      w = word[1..-1]+word[0]+"ay"
    end
    w
  end

  def to_pig_latin(phrase)
    piggy = phrase.split(" ")
    piggy = piggy.map {|w| piglatinize(w)}
    piggy.join(" ")
  end
end
